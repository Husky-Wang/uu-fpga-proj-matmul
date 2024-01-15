#include <errno.h>
#include <fcntl.h>
#include <math.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>

typedef struct {
    uint32_t layer_size;
    uint32_t input_size;
    float *weights;
    float *biases;
} mlp_layer_t;

typedef struct {
    mlp_layer_t *layers;
    uint32_t layer_count;
} mlp_network_t;

float sigmoid(float a) {
    return 1 / (1 + expf(-a));
}

void mat_mul(float *c, float *a, float *b, uint32_t a_width_b_height, uint32_t a_height, uint32_t b_width) {
    uint32_t c_height = a_height;
    uint32_t c_width = b_width;

    for (uint32_t i = 0; i < c_height; i += 1) {
        for (uint32_t j = 0; j < c_width; j += 1) {
            float sum = 0;
            for (uint32_t k = 0; k < a_width_b_height; k += 1) {
                sum += a[i * a_width_b_height + k] * b[k * b_width + j];
            }
            c[i * c_width + j] = sum;
        }
    }
}

void mat_add(float *a, float *b, uint32_t width, uint32_t height) {
    for (uint32_t i = 0; i < width * height; i += 1) {
        a[i] += b[i];
    }
}

void apply_func(float *arr, uint32_t len, float (*func)(float)) {
    for (uint32_t i = 0; i < len; i += 1) {
        arr[i] = func(arr[i]);
    }
}

int mlp_create_layer(mlp_layer_t *layer, uint32_t layer_size, uint32_t input_size) {
    layer->layer_size = layer_size;
    layer->input_size = input_size;
    layer->weights = (float *)malloc(layer->layer_size * layer->input_size * sizeof(float));
    if (layer->weights == NULL) {
        return -1;
    }
    layer->biases = (float *)malloc(layer->layer_size * sizeof(float));
    if (layer->biases == NULL) {
        free(layer->weights);
        return -1;
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

int mlp_inference_layer(mlp_layer_t *layer, float *data) {
    // Allocate a buffer for calculation results
    float *tmp = malloc((layer->input_size > layer->layer_size ? layer->input_size : layer->layer_size) * sizeof(float));
    if (tmp == NULL) {
        return -1;
    }

    // Weigh Input
    mat_mul(tmp, layer->weights, data, layer->input_size, layer->layer_size, 1);
    // Add Bias
    mat_add(tmp, layer->biases, 1, layer->layer_size);
    // Apply Activation Function
    apply_func(tmp, layer->input_size, sigmoid);

    // Memcpy back to the data array
    memcpy(data, tmp, layer->layer_size * sizeof(float));

    // Un-malloc
    free(tmp);

    return 0;
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

int mlp_inference(mlp_network_t *network, float *output, float *input) {
    // Get the max amount of neuron in one layer, to create a buffer
    float *tmp = malloc(mlp_get_max_layer_size(network) * sizeof(float));
    if (tmp == NULL) {
        return -1;
    }
    // Initialize the buffer with the input
    memcpy(tmp, input, network->layers[0].input_size * sizeof(float));

    // Feed forward through all layers
    for (uint32_t index = 0; index < network->layer_count; index += 1) {
        if (mlp_inference_layer(&network->layers[index], tmp) < 0) {
            free(tmp);
            return -1;
        }
    }

    // Set output
    memcpy(output, tmp, network->layers[network->layer_count - 1].layer_size * sizeof(float));

    // Un-malloc
    free(tmp);

    return 0;
}

int mlp_load_from_file(mlp_network_t *network, int fd) {
    // Check minimum file size
    struct stat st;
    if (fstat(fd, &st) < 0) {
        return -errno;
    }
    if (st.st_size < 8) {
        return -errno;
    }

    // Check identifier "0x7F MLP"
    char ident[4];
    if (read(fd, ident, 4) < 0) {
        return -errno;
    }
    printf("IDENT: 0x%2X %c %c %c\n", ident[0], ident[1], ident[2], ident[3]);
    if (!(ident[0] == 0x7f && ident[1] == 'M' && ident[2] == 'L' && ident[3] == 'P')) {
        return -EINVAL;
    }

    // Get number of layers
    // Including Input layer
    if (read(fd, &network->layer_count, sizeof(uint32_t)) < 0) {
        return -errno;
    }
    if (network->layer_count < 2) {
        return 0;
    }
    printf("Layer Count: %d\n", network->layer_count);

    // Read layer sizes
    // First number is input
    uint32_t *layer_sizes = (uint32_t *)malloc((network->layer_count + 1) * sizeof(uint32_t));
    if (layer_sizes == NULL) {
        return -ENOMEM;
    }

    if (read(fd, layer_sizes, (network->layer_count + 1) * sizeof(uint32_t)) < 0) {
        free(layer_sizes);
        return -errno;
    }

    // Allocate memory for layer structures
    network->layers = (mlp_layer_t *)malloc(network->layer_count * sizeof(mlp_layer_t));
    if (network->layers == NULL) {
        free(layer_sizes);
        return -ENOMEM;
    }

    // Create layers
    for (uint32_t index = 0; index < network->layer_count; index += 1) {
        if (mlp_create_layer(&network->layers[index], layer_sizes[index + 1], layer_sizes[index]) < 0) {
            free(layer_sizes);
            mlp_free_network(network);
            return -ENOMEM;
        }
    }
    free(layer_sizes);

    // Set Weights and Biases
    for (uint32_t index = 0; index < network->layer_count; index += 1) {
        if (read(fd, network->layers[index].weights, network->layers[index].layer_size * network->layers[index].input_size * sizeof(float)) < 0) {
            return -errno;
        }
        if (read(fd, network->layers[index].biases, network->layers[index].layer_size * sizeof(float)) < 0) {
            return -errno;
        }
    }
    /*
        // Print
        for (uint32_t index = 0; index < network->layer_count; index += 1) {
            printf("Layer: %d, Size: %d, Input: %d\n", index, network->layers[index].layer_size, network->layers[index].input_size);
            printf("Weights: \n");
            for (uint32_t tmp = 0; tmp < network->layers[index].layer_size * network->layers[index].input_size; tmp += 1) {
                printf("%f ", network->layers[index].weights[tmp]);
            }
            printf("\nBiases: \n");
            for (uint32_t tmp = 0; tmp < network->layers[index].layer_size; tmp += 1) {
                printf("%f ", network->layers[index].biases[tmp]);
            }
            printf("\n");
        }
    */
    return 0;
}

typedef struct {
    uint32_t record_size;
    uint32_t data_count;
    uint32_t *target_buffer;
    float *data_buffer;
} data_t;

int data_load_from_file(data_t *data_struct, int fd) {
    // Check minimum file size
    struct stat st;
    if (fstat(fd, &st) < 0) {
        return -errno;
    }
    if (st.st_size < 12) {
        return -errno;
    }

    // Check identifier "0x7F DAT"
    char ident[4];
    if (read(fd, ident, 4) < 0) {
        return -errno;
    }
    printf("IDENT: 0x%2X %c %c %c\n", ident[0], ident[1], ident[2], ident[3]);
    if (!(ident[0] == 0x7f && ident[1] == 'D' && ident[2] == 'A' && ident[3] == 'T')) {
        return -EINVAL;
    }

    // Get input record size
    if (read(fd, &data_struct->record_size, sizeof(uint32_t)) < 0) {
        return -errno;
    }
    // Get number of data records
    if (read(fd, &data_struct->data_count, sizeof(uint32_t)) < 0) {
        return -errno;
    }

    printf("Record Size: %d, Data Count: %d\n", data_struct->record_size, data_struct->data_count);

    // Allocate memory for the target buffer
    data_struct->target_buffer = (uint32_t *)malloc(data_struct->data_count * sizeof(uint32_t));
    if (data_struct->target_buffer == NULL) {
        return -ENOMEM;
    }

    // Allocate memory for the data buffer
    data_struct->data_buffer = (float *)malloc(data_struct->data_count * data_struct->record_size * sizeof(float));
    if (data_struct->data_buffer == NULL) {
        free(data_struct->target_buffer);
        return -ENOMEM;
    }

    // Read into target buffer
    if (read(fd, data_struct->target_buffer, data_struct->data_count * sizeof(uint32_t)) < 0) {
        free(data_struct->target_buffer);
        free(data_struct->data_buffer);
        return -errno;
    }

    // Read into data buffer
    if (read(fd, data_struct->data_buffer, data_struct->data_count * data_struct->record_size * sizeof(uint32_t)) < 0) {
        free(data_struct->target_buffer);
        free(data_struct->data_buffer);
        return -errno;
    }

    return 0;
}

void data_free(data_t *data_struct) {
    free(data_struct->target_buffer);
    free(data_struct->data_buffer);
}

int main(int argc, char *argv[]) {
    (void)argc;
    (void)argv;

    // Load MLP Network
    printf("Loading MLP Network\n");
    int mlp_fd = open("./mlp_c.dat", O_RDONLY);
    if (mlp_fd < 0) {
        perror("Failed to open MLP network file");
        return errno;
    }

    mlp_network_t network_inst;
    if (mlp_load_from_file(&network_inst, mlp_fd) < 0) {
        perror("Failed to load MLP network");
        close(mlp_fd);
        return EFAULT;
    }
    close(mlp_fd);

    // Load Data and Target
    printf("Loading Data\n");
    int data_fd = open("./data_c.dat", O_RDONLY);
    if (data_fd < 0) {
        perror("Failed to open data file");
        return errno;
    }

    data_t data_inst;
    if (data_load_from_file(&data_inst, data_fd) < 0) {
        perror("Failed to load data");
        close(data_fd);
        return EFAULT;
    }
    close(data_fd);

    // Try to inference all data
    float hits = 0.0;
    uint32_t predicted;
    float max_prob;
    for (uint32_t i = 0; i < data_inst.data_count; i++) {
        float out[10];
        if (mlp_inference(&network_inst, out, &data_inst.data_buffer[i * data_inst.record_size]) < 0) {
            perror("Failed to inference data");
            return EFAULT;
        }

        // Calculate accuracy
        predicted = 0;
        max_prob = out[0];
        for (int j = 1; j < 10; j++) {
            if (out[j] > max_prob) {
                max_prob = out[j];
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

    float accuracy = (hits / data_inst.data_count) * 100.0;
    printf("Accuracy: %.3f%%\n", accuracy);

    // Free Data
    data_free(&data_inst);
    // Free Target
    mlp_free_network(&network_inst);

    return 0;
}