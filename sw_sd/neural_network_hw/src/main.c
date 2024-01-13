// Integer Types
#include <stdint.h>
#include "fixed_point.h"
// I/O
#include <stdio.h>
// Memory Management
#include <stdlib.h>
#include <string.h>
// File Handling
#include "ff.h"
// Error Handling
#include <errno.h> // Yeah good luck with that...
// MLP
#include "mlp.h"
// Utilities
#include "utils.h"

#include "mat_mul.h"

/* ======== Constant Definitions ======== */
static char const PATH_BASE[] = "0:/";
static char const FILENAME_MLP[] = "mlp_c.dat";
static char const FILENAME_DATA[] = "data_c.dat";

int main()
{
    printf("\nNeural Network Inference\n");

    /* ======== Initialize Matrix Multiplication ======== */
	if (mat_mul_hw_init(XPAR_AXIDMA_0_DEVICE_ID, 1024, 1024) != 0) {
		printf("mat_mul_hw_init() failed\n");
		return -1;
	}

    /* ======== Initialize FatFS ======== */
    FRESULT f_ret;
    FATFS fs;

    // Attempt to Mount
    f_ret = f_mount(&fs, PATH_BASE, 1);
    if (f_ret == FR_NO_FILESYSTEM) {
    	// If no valid file system is found
    	printf("File system not present\n");
    	return -1;
    } else if (f_ret != FR_OK) {
    	printf("Mount Failed\n");
    	return -1;
    }

    /* ======== Open Files ======== */
    FIL file_mlp, file_data;

    // Open the MLP File
    f_ret = f_open(&file_mlp, FILENAME_MLP, FA_READ | FA_OPEN_EXISTING);
    if (f_ret == FR_NO_FILE) {
    	printf("%s does not exist\n", FILENAME_MLP);
    	return -1;
    } else if (f_ret != FR_OK) {
    	printf("Failed to open %s\n", FILENAME_MLP);
    	return -1;
    }

    // Open the Data File
    f_ret = f_open(&file_data, FILENAME_DATA, FA_READ | FA_OPEN_EXISTING);
    if (f_ret == FR_NO_FILE) {
    	printf("%s does not exist\n", FILENAME_DATA);
    	return -1;
    } else if (f_ret != FR_OK) {
    	printf("Failed to open %s\n", FILENAME_DATA);
    	return -1;
    }

    /* ======== Load MLP Network ======== */
    printf("Loading Data, this can take a while...\n");
    mlp_network_t network_inst;
    if (mlp_load_from_file(&network_inst, &file_mlp) != 0) {
        printf("Failed to load MLP network\n");
        return -1;
    }

    /* ======== Load Data and Target ======== */
    data_t data_inst;
    if (data_load_from_file(&data_inst, &file_data) != 0) {
        printf("Failed to load data\n");
        return -1;
    }

    /* ======== Cleanup FatFS ======== */
    // Close MLP File
    f_ret = f_close(&file_mlp);
    if (f_ret != FR_OK) {
       	printf("Failed to close MLP file\n");
       	return -1;
    }
    // Close Data File
    f_ret = f_close(&file_data);
    if (f_ret != FR_OK) {
    	printf("Failed to close data file\n");
      	return -1;
    }
    // Unmount File System
    f_mount(NULL, PATH_BASE, 0);

    /* ======== Do Inferencing ======== */
    // Start Timing
    int64_t start_time = millis();
    printf("Start inferencing, time is %lld ms\n", start_time);

    // Inference all data
    float hits = 0.0;
    uint32_t predicted;
    float max_prob;
    for (uint32_t i = 0; i < data_inst.data_count; i++) {
        fixed_8_24_t out[10];
        if (mlp_inference_hw(&network_inst, out, &data_inst.data_buffer[i * data_inst.record_size]) < 0) {
            printf("Failed to inference data\n");
            return EFAULT;
        }

        // Calculate accuracy
        predicted = 0;
        max_prob = fixed_8_24_to_float(out[0]);
        for (int j = 1; j < 10; j++) {
            if (fixed_8_24_to_float(out[j]) > max_prob) {
                max_prob = fixed_8_24_to_float(out[j]);
                predicted = j;
            }
        }

        if (predicted == data_inst.target_buffer[i]) {
            hits += 1.0;
        }

        // Print progress so we know if we can go for fika
        if (i % 1000 == 0) {
            printf("Progress: %.3f%%\n", (float)i / (float)data_inst.data_count * 100.0);
        }
    }

    // End Timing
    int64_t finish_time = millis();
    printf("Finished inferencing, time is %lld ms\n", finish_time);

    // Calculate Speed
    int64_t run_time = finish_time - start_time;
    printf("Inferenced %ld samples in %lld ms - %f samples per second\n",
    	data_inst.data_count,
		run_time,
		((double)data_inst.data_count / (double)run_time) * 1000.0f
	);

    // Calculate Accuracy
    float accuracy = (hits / data_inst.data_count) * 100.0;
    printf("Accuracy: %.3f%%\n\n", accuracy);

    /* ======== End of Program ======== */
    // Free Data
    data_free(&data_inst);
    // Free Target
    mlp_free_network(&network_inst);
    // Infinite Loop
    while(1);
    // Should not reach
    return 0;
}
