
#include "mat_mul.h"
#include "fixed_point.h"
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>

#include "sleep.h"
#include "xaxidma.h"

XAxiDma dma_inst;
XAxiDma_BdRing * rx_ring;
XAxiDma_BdRing * tx_ring;
XAxiDma_Bd * rx_bd;
XAxiDma_Bd * tx_bd_head;

fixed_8_24_t * a_slice;
fixed_8_24_t * r_tmp;

typedef struct {
	uint32_t size;
	uint8_t * buffer;
} bd_pool_t;
bd_pool_t rx_bd_pool, tx_bd_pool;

int mat_mul_hw_init(uint32_t dma_id, uint32_t rx_bd_pool_size, uint32_t tx_bd_pool_size) {
	int status;

	/*--------------------------- Init DMA Hardware ---------------------------*/
	XAxiDma_Config * dma_config;
	dma_config = XAxiDma_LookupConfig(dma_id);
	if (!dma_config) {
		printf("Failed to lookup DMA config\n");
		return EINVAL;
	}

	status = XAxiDma_CfgInitialize(&dma_inst, dma_config);
	if (status != XST_SUCCESS) {
		printf("Failed to initialize DMA: %d\n", status);
		return EINVAL;
	}

	if(!XAxiDma_HasSg(&dma_inst)) {
		printf("DMA not configured as SG mode\n");
		return EINVAL;
	}

	XAxiDma_Bd bd_template;
	XAxiDma_BdClear(&bd_template);

	/*--------------------------- Init RX BD Ring ---------------------------*/
	rx_ring = XAxiDma_GetRxRing(&dma_inst);

	// Reset Interrupt Configuration, for polling operation
	XAxiDma_BdRingIntDisable(rx_ring, XAXIDMA_IRQ_ALL_MASK);
	XAxiDma_BdRingSetCoalesce(rx_ring, 1, 0);

	// Allocate RX BD space
	rx_bd_pool.size = rx_bd_pool_size;
	rx_bd_pool.buffer = malloc(rx_bd_pool.size);
	if (rx_bd_pool.buffer == NULL) {
		printf("Failed to allocate RX BD pool");
		return ENOMEM;
	}

	// Find alignment in RX BD space
	while (((uint32_t)rx_bd_pool.buffer) % XAXIDMA_BD_MINIMUM_ALIGNMENT) {
		if (rx_bd_pool.size <= 1) {
			printf("Cannot align RX BD pool");
			return ENOMEM;
		}

		rx_bd_pool.buffer += 1;
		rx_bd_pool.size -= 1;
	}

	// Setup RX BD space
	status = XAxiDma_BdRingCreate(
		rx_ring,
		(uintptr_t) rx_bd_pool.buffer,
		(uintptr_t) rx_bd_pool.buffer,
		XAXIDMA_BD_MINIMUM_ALIGNMENT,
		XAxiDma_BdRingCntCalc(XAXIDMA_BD_MINIMUM_ALIGNMENT, rx_bd_pool.size)
	);
	if (status != XST_SUCCESS) {
		printf("Failed to create RX BD ring: %d\n", status);
		return EINVAL;
	}

	// Reset all BD in the ring
	status = XAxiDma_BdRingClone(rx_ring, &bd_template);
	if (status != XST_SUCCESS) {
		printf("Failed to reset BDs in RX ring: %d\n", status);
		return EINVAL;
	}

	// Allocate 1 BD
	status = XAxiDma_BdRingAlloc(rx_ring, 1, &rx_bd);
	if (status != XST_SUCCESS) {
		printf("Failed to allocate RX BD: %d\n", status);
		return EINVAL;
	}

	// Start RX DMA channel
	status = XAxiDma_BdRingStart(rx_ring);
	if (status != XST_SUCCESS) {
		printf("Failed to start RX channel: %d\n", status);
		return EINVAL;
	}

	/*--------------------------- Init TX BD Ring ---------------------------*/
	tx_ring = XAxiDma_GetTxRing(&dma_inst);

	// Reset Interrupt Configuration, for polling operation
	XAxiDma_BdRingIntDisable(tx_ring, XAXIDMA_IRQ_ALL_MASK);
	XAxiDma_BdRingSetCoalesce(tx_ring, 1, 0);

	// Allocate TX BD space
	tx_bd_pool.size = tx_bd_pool_size;
	tx_bd_pool.buffer = malloc(tx_bd_pool.size);
	if (tx_bd_pool.buffer == NULL) {
		printf("Failed to allocate TX BD pool");
		return ENOMEM;
	}

	// Find alignment in TX BD space
	while (((uint32_t)tx_bd_pool.buffer) % XAXIDMA_BD_MINIMUM_ALIGNMENT) {
		if (tx_bd_pool.size <= 1) {
			printf("Cannot align TX BD pool");
			return ENOMEM;
		}

		tx_bd_pool.buffer += 1;
		tx_bd_pool.size -= 1;
	}

	// Setup TX BD space
	status = XAxiDma_BdRingCreate(
		tx_ring,
		(uintptr_t) tx_bd_pool.buffer,
		(uintptr_t) tx_bd_pool.buffer,
		XAXIDMA_BD_MINIMUM_ALIGNMENT,
		XAxiDma_BdRingCntCalc(XAXIDMA_BD_MINIMUM_ALIGNMENT, tx_bd_pool.size)
	);
	if (status != XST_SUCCESS) {
		printf("Failed to create TX BD ring: %d\n", status);
		return EINVAL;
	}

	// Reset all BD in the ring
	status = XAxiDma_BdRingClone(tx_ring, &bd_template);
	if (status != XST_SUCCESS) {
		printf("Failed to reset BDs in TX ring: %d\n", status);
		return EINVAL;
	}

	// Allocate 2 BD
	status = XAxiDma_BdRingAlloc(tx_ring, 2, &tx_bd_head);
	if (status != XST_SUCCESS) {
		printf("Failed to allocate TX BD: %d\n", status);
		return EINVAL;
	}

	// Start TX DMA channel
	status = XAxiDma_BdRingStart(tx_ring);
	if (status != XST_SUCCESS) {
		printf("Failed to start TX channel: %d\n", status);
		return EINVAL;
	}

	/*--------------------------- Allocate buffer for big column slicing ---------------------------*/
	// Allocate temporary buffer for a slice of apple
	a_slice = malloc(HW_MAX_ROWS * HW_MAX_COLS * sizeof(fixed_8_24_t));
	if (a_slice == NULL) {
		printf("Failed to allocate a_slice\n");
		return ENOMEM;
	}

	// Allocate temporary buffer for intermediate r
	r_tmp = malloc(HW_MAX_ROWS * sizeof(fixed_8_24_t));
	if (r_tmp == NULL) {
		printf("Failed to allocate r_tmp\n");
		return ENOMEM;
	}

	return 0;
}

int mat_mul_hw(fixed_8_24_t *r, fixed_8_24_t *a, fixed_8_24_t *b, uint32_t a_rows, uint32_t a_cols) {
	int status;

	if (a_rows > HW_MAX_ROWS || a_cols > HW_MAX_COLS) {
		printf("Input too big\n");
		return EINVAL;
	}

	/*--------------------------- Configure RX BD ---------------------------*/
	// Set RX buffer address to vector r
	status = XAxiDma_BdSetBufAddr(rx_bd, (uintptr_t)r);
	if (status != XST_SUCCESS) {
		printf("Failed to set vector r address to BD: %d\n", status);
		return EINVAL;
	}

	// Set RX buffer length to length of vector r
	status = XAxiDma_BdSetLength(rx_bd, a_rows * sizeof(fixed_8_24_t), rx_ring->MaxTransferLen);
	if (status != XST_SUCCESS) {
		printf("Failed to set vector r length to BD: %d\n", status);
		return EINVAL;
	}

	/*--------------------------- Configure TX BD ---------------------------*/
	// Set 1st BD TX buffer address to matrix a
	status = XAxiDma_BdSetBufAddr(tx_bd_head, (uintptr_t)a);
	if (status != XST_SUCCESS) {
		printf("Failed to set matrix a address to BD: %d\n", status);
		return EINVAL;
	}

	// Set 1st BD TX buffer length to length of matrix a
	status = XAxiDma_BdSetLength(tx_bd_head, a_rows * a_cols * sizeof(fixed_8_24_t), tx_ring->MaxTransferLen);
	if (status != XST_SUCCESS) {
		printf("Failed to set matrix a length to BD: %d\n", status);
		return EINVAL;
	}

	// Set 1st BD TX APP_WORD_3 to row count
	status = XAxiDma_BdSetAppWord(tx_bd_head, 3, a_rows);
	if (status != XST_SUCCESS) {
		printf("Failed to set matrix a row count: %d\n", status);
		return EINVAL;
	}

	// Set 1st BD TX APP_WORD_4 to col count
	status = XAxiDma_BdSetAppWord(tx_bd_head, 4, a_cols);
	if (status != XST_SUCCESS) {
		printf("Failed to set matrix a col count: %d\n", status);
		return EINVAL;
	}

	// Set 1st BD TX Control Word
	XAxiDma_BdSetCtrl(tx_bd_head, XAXIDMA_BD_CTRL_TXSOF_MASK);
	XAxiDma_BdSetId(tx_bd_head, 0);

	// Go to 2nd TX BD
	tx_bd_head = (XAxiDma_Bd *)XAxiDma_BdRingNext(tx_ring, tx_bd_head);

	// Set 2nd BD TX buffer address to vector b
	status = XAxiDma_BdSetBufAddr(tx_bd_head, (uintptr_t)b);
	if (status != XST_SUCCESS) {
		printf("Failed to set vector b address to BD: %d\n", status);
		return EINVAL;
	}

	// Set 2nd BD TX buffer length to length of vector b
	status = XAxiDma_BdSetLength(tx_bd_head, a_cols * sizeof(fixed_8_24_t), tx_ring->MaxTransferLen);
	if (status != XST_SUCCESS) {
		printf("Failed to set vector b length to BD: %d\n", status);
		return EINVAL;
	}

	// Set 2nd BD TX Control Word
	XAxiDma_BdSetCtrl(tx_bd_head, XAXIDMA_BD_CTRL_TXEOF_MASK);
	XAxiDma_BdSetId(tx_bd_head, 0);

	// TRYYYYY TO ACTUALLY GO BACK TO THE FUTURE
	tx_bd_head = (XAxiDma_Bd *)XAxiDma_BdRingPrev(tx_ring, tx_bd_head);

	/*--------------------------- Start RX ---------------------------*/
	// Submit RX BD Ring to HW
	status = XAxiDma_BdRingToHw(rx_ring, 1, rx_bd);
	if (status != XST_SUCCESS) {
		printf("Failed to submit RX BD Ring to HW: %d\n", status);
		return EINVAL;
	}

	/*--------------------------- Start TX ---------------------------*/
	// Invalid DCache for TX Buffer
	//Xil_DCacheFlushRange((UINTPTR)a, a_rows * a_cols * sizeof(fixed_8_24_t));
	//Xil_DCacheFlushRange((UINTPTR)b, a_cols * sizeof(fixed_8_24_t));
	Xil_DCacheDisable();

	// Submit RX BD Ring to HW
	status = XAxiDma_BdRingToHw(tx_ring, 2, tx_bd_head);
	if (status != XST_SUCCESS) {
		printf("Failed to submit TX BD Ring to HW: %d\n", status);
		return EINVAL;
	}

	/*--------------------------- Wait for TX ---------------------------*/
	while (XAxiDma_BdRingFromHw(tx_ring, XAXIDMA_ALL_BDS, &tx_bd_head) < 2) {
		usleep(1U);
	}

	/*--------------------------- Wait for RX ---------------------------*/
	while (XAxiDma_BdRingFromHw(rx_ring, XAXIDMA_ALL_BDS, &rx_bd) < 1) {
		usleep(1U);
	}

	// Invalid DCache for RX Buffer
	//Xil_DCacheFlushRange((UINTPTR)r, a_rows * sizeof(fixed_8_24_t));
	Xil_DCacheEnable();

	/*--------------------------- Cleanup RX ---------------------------*/
	// Free all processed RX BDs
	status = XAxiDma_BdRingFree(rx_ring, 1, rx_bd);
	if (status != XST_SUCCESS) {
		printf("Failed to free RX BD: %d\r\n", status);
		return EINVAL;
	}

	// Reduce reuse recycle
	status = XAxiDma_BdRingAlloc(rx_ring, 1, &rx_bd);
	if (status != XST_SUCCESS) {
		printf("Failed to re-allocate RX BD: %d\n", status);
		return EINVAL;
	}

	/*--------------------------- Cleanup TX ---------------------------*/
	// Free all processed TX BDs
	status = XAxiDma_BdRingFree(tx_ring, 2, tx_bd_head);
	if (status != XST_SUCCESS) {
		printf("Failed to free TX BD: %d\r\n", status);
		return EINVAL;
	}

	// Reduce reuse recycle
	status = XAxiDma_BdRingAlloc(tx_ring, 2, &tx_bd_head);
	if (status != XST_SUCCESS) {
		printf("Failed to re-allocate TX BD: %d\n", status);
		return EINVAL;
	}

	return 0;
}

int mat_mul_hw_big_cols(fixed_8_24_t *r, fixed_8_24_t *a, fixed_8_24_t *b, uint32_t a_rows, uint32_t a_cols) {
	int status;

	if (a_rows > HW_MAX_ROWS) {
		printf("Input a_rows too big\n");
		return EINVAL;
	}

	// Clear final r
	memset(r, 0x00, a_rows * sizeof(fixed_8_24_t));

	uint32_t processed_cols = 0;
	while (a_cols - processed_cols >= HW_MAX_COLS) {
		// Copy a slice of matrix a
		for (uint32_t i = 0; i < a_rows; i += 1) {
			/*for (uint32_t j = processed_cols; j < HW_MAX_COLS; j += 1) {
				a_slice[i * HW_MAX_COLS + j] = a[i * a_cols + j];
			}*/

			for (uint32_t j = 0; j < HW_MAX_COLS; j += 1) {
				a_slice[i * HW_MAX_COLS + j] = a[i * a_cols + j + processed_cols];
			}
		}

		// Perform HW matrix multiplication
		status = mat_mul_hw(r_tmp, a_slice, &b[processed_cols], a_rows, HW_MAX_COLS);
		if (status != 0) {
			printf("mat_mul_hw() failed: %d\n", status);
		}

		// Accumulate r
		for (uint32_t i = 0; i < a_rows; i += 1) {
			r[i] += r_tmp[i];
		}

		// Increment processed_cols
		processed_cols += HW_MAX_COLS;
	}

	// If there is more columns left, but less than HW_MAX_COLS
	uint32_t remaining_cols = a_cols - processed_cols;
	if (remaining_cols > 0) {
		// Copy a slice of matrix a
		for (uint32_t i = 0; i < a_rows; i += 1) {
			for (uint32_t j = 0; j < remaining_cols; j += 1) {
				a_slice[i * remaining_cols + j] = a[i * a_cols + j + processed_cols];
			}
		}

		// Perform HW matrix multiplication
		status = mat_mul_hw(r_tmp, a_slice, &b[processed_cols], a_rows, remaining_cols);
		if (status != 0) {
			printf("mat_mul_hw() failed: %d\n", status);
		}

		// Accumulate r
		for (uint32_t i = 0; i < a_rows; i += 1) {
			r[i] += r_tmp[i];
		}
	}

	return 0;
}
