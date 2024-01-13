#include "mlp.h"
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <errno.h>
#include "fixed_point.h"
#include "mat_mul.h"

fixed_8_24_t approx_sigmoid(fixed_8_24_t a) {
    return fixed_8_24_multiply(fixed_8_24_divide(a, (1 << 24) + abs(a)) + (1 << 24), (1 << 23));
}

fixed_8_24_t approx_tanh(fixed_8_24_t a) {
    return fixed_8_24_divide(a, (1 << 24) + abs(a));
}

void mat_add(fixed_8_24_t *a, fixed_8_24_t *b, uint32_t width, uint32_t height) {
    for (uint32_t i = 0; i < width * height; i += 1) {
        a[i] += b[i];
    }
}

void apply_func(fixed_8_24_t *arr, uint32_t len, fixed_8_24_t (*func)(fixed_8_24_t)) {
    for (uint32_t i = 0; i < len; i += 1) {
        arr[i] = func(arr[i]);
    }
}

int mlp_create_layer(mlp_layer_t *layer, uint32_t layer_size, uint32_t input_size) {
    layer->layer_size = layer_size;
    layer->input_size = input_size;
    layer->weights = (fixed_8_24_t *)malloc(layer->layer_size * layer->input_size * sizeof(fixed_8_24_t));
    if (layer->weights == NULL) {
        return ENOMEM;
    }
    layer->biases = (fixed_8_24_t *)malloc(layer->layer_size * sizeof(fixed_8_24_t));
    if (layer->biases == NULL) {
        free(layer->weights);
        return ENOMEM;
    }
    return 0;
}

void mlp_free_layer(mlp_layer_t *layer) {
    free(layer->weights);
    free(layer->biases);
}

void mlp_free_network(mlp_network_t *network) {
    for (uint32_t index = 0; index < network->layer_count; index += 1) {
        mlp_free_layer(&network->layers[index]);
    }
    free(network->layers);
}

void mlp_inference_layer_hw(mlp_layer_t *layer, fixed_8_24_t *output, fixed_8_24_t *input) {
    // Weigh Input
	mat_mul_hw_big_cols(output, layer->weights, input, layer->layer_size, layer->input_size);
    // Add Bias
    mat_add(output, layer->biases, 1, layer->layer_size);
    // Apply Activation Function
    apply_func(output, layer->input_size, approx_sigmoid);
}

void mlp_inference_layer_sw(mlp_layer_t *layer, fixed_8_24_t *output, fixed_8_24_t *input) {
    // Weigh Input
	mat_mul_sw(output, layer->weights, input, layer->input_size, layer->layer_size, 1);
    // Add Bias
    mat_add(output, layer->biases, 1, layer->layer_size);
    // Apply Activation Function
    apply_func(output, layer->input_size, approx_sigmoid);
}
uint32_t mlp_get_max_layer_size(mlp_network_t *network) {
    uint32_t max = 0;
    for (uint32_t index = 0; index < network->layer_count; index += 1) {
        if (network->layers[index].input_size > max) {
            max = network->layers[index].input_size;
        }

        if (network->layers[index].layer_size > max) {
            max = network->layers[index].layer_size;
        }
    }
    return max;
}

int mlp_inference_hw(mlp_network_t *network, fixed_8_24_t *output, fixed_8_24_t *input) {
    // Get the max amount of neuron in one layer
    // Create input and output buffer for layer
    fixed_8_24_t * tmp_input = malloc(mlp_get_max_layer_size(network) * sizeof(fixed_8_24_t));
    if (tmp_input == NULL) {
        return ENOMEM;
    }

    fixed_8_24_t * tmp_output = malloc(mlp_get_max_layer_size(network) * sizeof(fixed_8_24_t));
    if (tmp_output == NULL) {
        free(tmp_input);
        return ENOMEM;
    }

    // Initialize the input buffer with the input
    memcpy(tmp_input, input, network->layers[0].input_size * sizeof(fixed_8_24_t));

    // Feed forward through all layers
    for (uint32_t index = 0; index < network->layer_count; index += 1) {
        mlp_inference_layer_hw(&network->layers[index], tmp_output, tmp_input);
        // Swap pointers
        fixed_8_24_t * tmp = tmp_input;
        tmp_input = tmp_output;
        tmp_output = tmp;
    }

    // Set output
    // Copy from tmp_input, because pointers are swapped
    memcpy(output, tmp_input, network->layers[network->layer_count - 1].layer_size * sizeof(fixed_8_24_t));

    // Un-malloc
    free(tmp_input);
    free(tmp_output);

    return 0;
}

int mlp_inference_sw(mlp_network_t *network, fixed_8_24_t *output, fixed_8_24_t *input) {
    // Get the max amount of neuron in one layer
    // Create input and output buffer for layer
    fixed_8_24_t * tmp_input = malloc(mlp_get_max_layer_size(network) * sizeof(fixed_8_24_t));
    if (tmp_input == NULL) {
        return ENOMEM;
    }

    fixed_8_24_t * tmp_output = malloc(mlp_get_max_layer_size(network) * sizeof(fixed_8_24_t));
    if (tmp_output == NULL) {
        free(tmp_input);
        return ENOMEM;
    }

    // Initialize the input buffer with the input
    memcpy(tmp_input, input, network->layers[0].input_size * sizeof(fixed_8_24_t));

    // Feed forward through all layers
    for (uint32_t index = 0; index < network->layer_count; index += 1) {
        mlp_inference_layer_sw(&network->layers[index], tmp_output, tmp_input);
        // Swap pointers
        fixed_8_24_t * tmp = tmp_input;
        tmp_input = tmp_output;
        tmp_output = tmp;
    }

    // Set output
    // Copy from tmp_input, because pointers are swapped
    memcpy(output, tmp_input, network->layers[network->layer_count - 1].layer_size * sizeof(fixed_8_24_t));

    // Un-malloc
    free(tmp_input);
    free(tmp_output);

    return 0;
}
