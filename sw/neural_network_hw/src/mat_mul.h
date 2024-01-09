#ifndef __MAT_MUL_H_
#define __MAT_MUL_H_

#include "fixed_point.h"
#include <stdint.h>

#define HW_MAX_ROWS 128
#define HW_MAX_COLS 256

int mat_mul_hw_init(uint32_t dma_id, uint32_t rx_bd_pool_size, uint32_t tx_bd_pool_size);
int mat_mul_hw(fixed_8_24_t *r, fixed_8_24_t *a, fixed_8_24_t *b, uint32_t a_rows, uint32_t a_cols);
int mat_mul_hw_big_cols(fixed_8_24_t *r, fixed_8_24_t *a, fixed_8_24_t *b, uint32_t a_rows, uint32_t a_cols);

#endif /* __MAT_MUL_H_ */
