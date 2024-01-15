#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

// Fixed point, 8 decimal, 24 mantissa
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

fixed_8_24_t approx_sigmoid_ref(fixed_8_24_t a) {
    return double_to_fixed_8_24(fixed_8_24_to_double(a) / (1 + fixed_8_24_to_double(abs(a))));
}

fixed_8_24_t approx_sigmoid_dut(fixed_8_24_t a) {
    return fixed_8_24_divide(a, (1 << 24) + abs(a));
}

int main() {
    double const START = -10.0;
    double const STEP = 0.1;
    uint32_t const COUNT = 201;

    for (uint32_t index = 0; index < COUNT; index += 1) {
        fixed_8_24_t input_val = double_to_fixed_8_24(START + STEP * (double)index);
        printf(
            "Input: %f, Ref: %f, DUT: %f\n",
            fixed_8_24_to_double(input_val),
            fixed_8_24_to_double(approx_sigmoid_ref(input_val)),
            fixed_8_24_to_double(approx_sigmoid_dut(input_val))
        );
    }

    return 0;
}