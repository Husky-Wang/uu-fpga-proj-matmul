
#include "mat_mul.h"
#include "fixed_point.h"
#include <stdint.h>

void mat_mul_sw(fixed_8_24_t *c, fixed_8_24_t *a, fixed_8_24_t *b, uint32_t a_width_b_height, uint32_t a_height, uint32_t b_width) {
    uint32_t c_height = a_height;
    uint32_t c_width = b_width;

    for (uint32_t i = 0; i < c_height; i += 1) {
        for (uint32_t j = 0; j < c_width; j += 1) {
            fixed_8_24_t sum = 0;
            for (uint32_t k = 0; k < a_width_b_height; k += 1) {
                sum += fixed_8_24_multiply(a[i * a_width_b_height + k], b[k * b_width + j]);
            }
            c[i * c_width + j] = sum;
        }
    }
}
