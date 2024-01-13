#ifndef __MY_LITTLE_PONY_H_
#define __MY_LITTLE_PONY_H_

#include <stdint.h>
#include "fixed_point.h"

typedef struct {
    uint32_t layer_size;
    uint32_t input_size;
    fixed_8_24_t *weights;
    fixed_8_24_t *biases;
} mlp_layer_t;

typedef struct {
    mlp_layer_t *layers;
    uint32_t layer_count;
} mlp_network_t;

/* Arithmetic Functions, May be accelerated */
fixed_8_24_t approx_sigmoid(fixed_8_24_t a);
fixed_8_24_t approx_tanh(fixed_8_24_t a);
void mat_mul(fixed_8_24_t *c, fixed_8_24_t *a, fixed_8_24_t *b, uint32_t a_width_b_height, uint32_t a_height, uint32_t b_width);
void mat_add(fixed_8_24_t *a, fixed_8_24_t *b, uint32_t width, uint32_t height);
void apply_func(fixed_8_24_t *arr, uint32_t len, fixed_8_24_t (*func)(fixed_8_24_t));
/* Utility Functions */
int mlp_create_layer(mlp_layer_t *layer, uint32_t layer_size, uint32_t input_size);
void mlp_free_layer(mlp_layer_t *layer);
void mlp_free_network(mlp_network_t *network);
void mlp_inference_layer_hw(mlp_layer_t *layer, fixed_8_24_t *output, fixed_8_24_t *input);
void mlp_inference_layer_sw(mlp_layer_t *layer, fixed_8_24_t *output, fixed_8_24_t *input);
uint32_t mlp_get_max_layer_size(mlp_network_t *network);
int mlp_inference_sw(mlp_network_t *network, fixed_8_24_t *output, fixed_8_24_t *input);
int mlp_inference_hw(mlp_network_t *network, fixed_8_24_t *output, fixed_8_24_t *input);

#endif /* __MY_LITTLE_PONY_H_ */
