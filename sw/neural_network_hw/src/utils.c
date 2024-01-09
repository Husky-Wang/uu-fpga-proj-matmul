#include "utils.h"
#include "mlp.h"
#include "xtime_l.h"
#include "ff.h"
#include "fixed_point.h"
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>

int64_t millis() {
	// Get global timer ticks
	XTime ticks;
	XTime_GetTime(&ticks);

	// Convert to Milliseconds
	return ticks / (COUNTS_PER_SECOND / 1000l);
}

int mlp_load_from_file(mlp_network_t *network, FIL *file) {
	UINT bytes_to_read;
	UINT bytes_read;

    // Check minimum file size
    if (f_size(file) < 8) {
        return EINVAL;
    }

    // Check identifier "0x7F MLP"
    char ident[4];

    bytes_to_read = 4;
    if (f_read(file, ident, bytes_to_read, &bytes_read) != FR_OK) {
        return EIO;
    }
    if (bytes_read != bytes_to_read) {
    	return EINVAL;
    }

    printf("IDENT: 0x%2X %c %c %c\n", ident[0], ident[1], ident[2], ident[3]);
    if (!(ident[0] == 0x7f && ident[1] == 'M' && ident[2] == 'L' && ident[3] == 'P')) {
        return EINVAL;
    }

    // Get number of layers
    // Including Input layer
    bytes_to_read = sizeof(uint32_t);
    if (f_read(file, &network->layer_count, bytes_to_read, &bytes_read) != FR_OK) {
        return EIO;
    }
    if (bytes_read != bytes_to_read) {
    	return EINVAL;
    }

    printf("Layer Count: %ld\n", network->layer_count);
    if (network->layer_count < 2) {
    	network->layers = NULL;
        return 0;
    }

    // Read layer sizes
    // First number is input
    uint32_t *layer_sizes = (uint32_t *)malloc((network->layer_count + 1) * sizeof(uint32_t));
    if (layer_sizes == NULL) {
        return ENOMEM;
    }

    bytes_to_read = (network->layer_count + 1) * sizeof(uint32_t);
    if (f_read(file, layer_sizes, bytes_to_read, &bytes_read) != FR_OK) {
        free(layer_sizes);
        return EIO;
    }
    if (bytes_read != bytes_to_read) {
    	free(layer_sizes);
    	return EINVAL;
    }

    // Allocate memory for layer structures
    network->layers = (mlp_layer_t *)malloc(network->layer_count * sizeof(mlp_layer_t));
    if (network->layers == NULL) {
        free(layer_sizes);
        return ENOMEM;
    }

    // Create layers
    for (uint32_t index = 0; index < network->layer_count; index += 1) {
        if (mlp_create_layer(&network->layers[index], layer_sizes[index + 1], layer_sizes[index]) != 0) {
            free(layer_sizes);
            for (uint32_t index_free = 0; index_free < index; index_free += 1) {
                mlp_free_layer(&network->layers[index_free]);
            }
            free(network->layers);
            return ENOMEM;
        }
    }
    free(layer_sizes);

    // Set Weights and Biases
    // Read into file first as float
    for (uint32_t index = 0; index < network->layer_count; index += 1) {
    	bytes_to_read = network->layers[index].layer_size * network->layers[index].input_size * sizeof(fixed_8_24_t);
        if (f_read(file, network->layers[index].weights, bytes_to_read, &bytes_read) != FR_OK) {
            return EIO;
        }
        if (bytes_read != bytes_to_read) {
           	return EINVAL;
        }

        bytes_to_read = network->layers[index].layer_size * sizeof(fixed_8_24_t);
        if (f_read(file, network->layers[index].biases, bytes_to_read, &bytes_read) != FR_OK) {
            return EIO;
        }
        if (bytes_read != bytes_to_read) {
           	return EINVAL;
        }
    }

    // Convert into fixed point
    for (uint32_t index_layer = 0; index_layer < network->layer_count; index_layer += 1) {
        for (uint32_t index_weight = 0; index_weight < network->layers[index_layer].layer_size * network->layers[index_layer].input_size; index_weight += 1) {
            network->layers[index_layer].weights[index_weight] = float_to_fixed_8_24(*((float *)&network->layers[index_layer].weights[index_weight]));
        }
        for (uint32_t index_bias = 0; index_bias < network->layers[index_layer].layer_size; index_bias += 1) {
            network->layers[index_layer].biases[index_bias] = float_to_fixed_8_24(*((float *)&network->layers[index_layer].biases[index_bias]));
        }
    }

    return 0;
}

void weird_getline(char * buffer, size_t size) {
	for (size_t i = 0; i < size - 1; i += 1) {
		buffer[i] = getchar();
		if (buffer[i] == '\n' || buffer[i] == '\r' || buffer[i] == EOF) {
			buffer[i + 1] = 0;
			return;
		}
	}
	buffer[size - 1] = 0;
}

#define TEXT_BUFFER_SIZE 1024
int mlp_load_from_stdin(mlp_network_t *network) {
	char buffer[TEXT_BUFFER_SIZE];

    // Get number of layers
    // Including Input layer
	weird_getline(buffer, TEXT_BUFFER_SIZE);
	while(sscanf(buffer, "%lu", &network->layer_count) <= 0);

    printf("Layer Count: %ld\n", network->layer_count);
    if (network->layer_count < 2) {
    	network->layers = NULL;
        return 0;
    }

    // Read layer sizes
    // First number is input
    uint32_t *layer_sizes = (uint32_t *)malloc((network->layer_count + 1) * sizeof(uint32_t));
    if (layer_sizes == NULL) {
        return ENOMEM;
    }

    for (uint32_t i = 0; i < network->layer_count + 1; i += 1) {
    	weird_getline(buffer, TEXT_BUFFER_SIZE);
    	while(sscanf(buffer, "%lu", &layer_sizes[i]) <= 0);
    }

    // Allocate memory for layer structures
    network->layers = (mlp_layer_t *)malloc(network->layer_count * sizeof(mlp_layer_t));
    if (network->layers == NULL) {
        free(layer_sizes);
        return ENOMEM;
    }

    // Create layers
    for (uint32_t index = 0; index < network->layer_count; index += 1) {
        if (mlp_create_layer(&network->layers[index], layer_sizes[index + 1], layer_sizes[index]) != 0) {
            free(layer_sizes);
            for (uint32_t index_free = 0; index_free < index; index_free += 1) {
                mlp_free_layer(&network->layers[index_free]);
            }
            free(network->layers);
            return ENOMEM;
        }
    }
    free(layer_sizes);

    // Set Weights and Biases
    // Read first as float
    for (uint32_t index = 0; index < network->layer_count; index += 1) {
        for (uint32_t i = 0; i < network->layers[index].layer_size * network->layers[index].input_size; i += 1) {
			weird_getline(buffer, TEXT_BUFFER_SIZE);
			while(sscanf(buffer, "%f", (float *)&network->layers[index].weights[i]) <= 0);
		}

        for (uint32_t i = 0; i < network->layers[index].layer_size; i += 1) {
			weird_getline(buffer, TEXT_BUFFER_SIZE);
			while(sscanf(buffer, "%f", (float *)&network->layers[index].biases[i]) <= 0);
		}
    }

    // Convert into fixed point
    for (uint32_t index_layer = 0; index_layer < network->layer_count; index_layer += 1) {
        for (uint32_t index_weight = 0; index_weight < network->layers[index_layer].layer_size * network->layers[index_layer].input_size; index_weight += 1) {
            network->layers[index_layer].weights[index_weight] = float_to_fixed_8_24(*((float *)&network->layers[index_layer].weights[index_weight]));
        }
        for (uint32_t index_bias = 0; index_bias < network->layers[index_layer].layer_size; index_bias += 1) {
            network->layers[index_layer].biases[index_bias] = float_to_fixed_8_24(*((float *)&network->layers[index_layer].biases[index_bias]));
        }
    }

	return 0;
}

int data_load_from_file(data_t *data_struct, FIL *file) {
	UINT bytes_to_read;
	UINT bytes_read;

	// Check minimum file size
	if (f_size(file) < 12) {
	    return EINVAL;
	}

    // Check identifier "0x7F DAT"
    char ident[4];

    bytes_to_read = 4;
    if (f_read(file, ident, bytes_to_read, &bytes_read) != FR_OK) {
        return EIO;
    }
    if (bytes_read != bytes_to_read) {
    	return EINVAL;
    }

    printf("IDENT: 0x%2X %c %c %c\n", ident[0], ident[1], ident[2], ident[3]);
    if (!(ident[0] == 0x7f && ident[1] == 'D' && ident[2] == 'A' && ident[3] == 'T')) {
        return -EINVAL;
    }

    // Get input record size
    bytes_to_read = sizeof(uint32_t);
    if (f_read(file, &data_struct->record_size, bytes_to_read, &bytes_read) != FR_OK) {
        return EIO;
    }
    if (bytes_read != bytes_to_read) {
    	return EINVAL;
    }

    // Get number of data records
    bytes_to_read = sizeof(uint32_t);
    if (f_read(file, &data_struct->data_count, bytes_to_read, &bytes_read) != FR_OK) {
        return EIO;
    }
    if (bytes_read != bytes_to_read) {
    	return EINVAL;
    }

    printf("Record Size: %ld, Data Count: %ld\n", data_struct->record_size, data_struct->data_count);

    // Allocate memory for the target buffer
    data_struct->target_buffer = (uint32_t *)malloc(data_struct->data_count * sizeof(uint32_t));
    if (data_struct->target_buffer == NULL) {
        return ENOMEM;
    }

    // Allocate memory for the data buffer
    data_struct->data_buffer = (fixed_8_24_t *)malloc(data_struct->data_count * data_struct->record_size * sizeof(fixed_8_24_t));
    if (data_struct->data_buffer == NULL) {
        free(data_struct->target_buffer);
        return ENOMEM;
    }

    // Read into target buffer
    bytes_to_read = data_struct->data_count * sizeof(uint32_t);
    if (f_read(file, data_struct->target_buffer, bytes_to_read, &bytes_read) != FR_OK) {
        free(data_struct->target_buffer);
        free(data_struct->data_buffer);
        return EIO;
    }
    if (bytes_read != bytes_to_read) {
    	return EINVAL;
    }

    // Read into data buffer as float
    bytes_to_read = data_struct->data_count * data_struct->record_size * sizeof(fixed_8_24_t);
    if (f_read(file, data_struct->data_buffer, bytes_to_read, &bytes_read) != FR_OK) {
        free(data_struct->target_buffer);
        free(data_struct->data_buffer);
        return EIO;
    }
    if (bytes_read != bytes_to_read) {
    	return EINVAL;
    }

    // Convert data buffer into fixed point
    for (uint32_t index = 0; index < data_struct->data_count * data_struct->record_size; index += 1) {
        data_struct->data_buffer[index] = float_to_fixed_8_24(*((float *)&data_struct->data_buffer[index]));
    }

    return 0;
}

void data_free(data_t *data_struct) {
	free(data_struct->target_buffer);
	free(data_struct->data_buffer);
}
