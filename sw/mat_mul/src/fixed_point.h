#ifndef __FIXED_POINT_H_
#define __FIXED_POINT_H_

#include <stdint.h>

/* Fixed point, 8 decimal, 24 mantissa */
typedef int32_t fixed_8_24_t;

static inline double fixed_8_24_to_double(fixed_8_24_t a) {
    return (double)a / ((double)(1 << 24));
}

static inline float fixed_8_24_to_float(fixed_8_24_t a) {
    return (float)a / ((float)(1 << 24));
}

static inline fixed_8_24_t double_to_fixed_8_24(double a) {
    return (int32_t)(a * (double)(1 << 24) + (a >= 0 ? 0.5 : -0.5));
}

static inline fixed_8_24_t float_to_fixed_8_24(float a) {
    return (int32_t)(a * (float)(1 << 24) + (a >= 0 ? 0.5 : -0.5));
}

static inline fixed_8_24_t fixed_8_24_multiply(fixed_8_24_t a, fixed_8_24_t b) {
    return (int32_t)(((int64_t)a * (int64_t)b) >> 24);
}

static inline fixed_8_24_t fixed_8_24_divide(fixed_8_24_t a, fixed_8_24_t b) {
    return (int32_t)(((int64_t)a << 24) / (int64_t)b);
}

#endif /* __FIXED_POINT_H_ */
