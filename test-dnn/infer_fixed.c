// Integer Types
#include <stdint.h>
// I/O
#include <stdio.h>
// Memory Management
#include <stdlib.h>
#include <string.h>
// Timing
#include <time.h>
// File Handling
#include <fcntl.h>
#include <sys/stat.h>
#include <unistd.h>
// Error Handling
#include <errno.h>

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

fixed_8_24_t approx_sigmoid(fixed_8_24_t a) {
    return fixed_8_24_multiply(fixed_8_24_divide(a, (1 << 24) + abs(a)) + (1 << 24), (1 << 23));
}

fixed_8_24_t approx_tanh(fixed_8_24_t a) {
    return fixed_8_24_divide(a, (1 << 24) + abs(a));
}

void mat_mul(fixed_8_24_t *c, fixed_8_24_t *a, fixed_8_24_t *b, uint32_t a_width_b_height, uint32_t a_height, uint32_t b_width) {
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
        return -1;
    }
    layer->biases = (fixed_8_24_t *)malloc(layer->layer_size * sizeof(fixed_8_24_t));
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

void mlp_inference_layer(mlp_layer_t *layer, fixed_8_24_t *output, fixed_8_24_t *input) {
    // Weigh Input
    mat_mul(output, layer->weights, input, layer->input_size, layer->layer_size, 1);
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

int mlp_inference(mlp_network_t *network, fixed_8_24_t *output, fixed_8_24_t *input) {
    // Get the max amount of neuron in one layer
    // Create input and output buffer for layer
    fixed_8_24_t * tmp_input = malloc(mlp_get_max_layer_size(network) * sizeof(fixed_8_24_t));
    if (tmp_input == NULL) {
        return -1;
    }

    fixed_8_24_t * tmp_output = malloc(mlp_get_max_layer_size(network) * sizeof(fixed_8_24_t));
    if (tmp_output == NULL) {
        free(tmp_input);
        return -1;
    }

    // Initialize the input buffer with the input
    memcpy(tmp_input, input, network->layers[0].input_size * sizeof(fixed_8_24_t));

    // Feed forward through all layers
    for (uint32_t index = 0; index < network->layer_count; index += 1) {
        mlp_inference_layer(&network->layers[index], tmp_output, tmp_input);
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
    // Read into file first as float
    for (uint32_t index = 0; index < network->layer_count; index += 1) {
        if (read(fd, network->layers[index].weights, network->layers[index].layer_size * network->layers[index].input_size * sizeof(fixed_8_24_t)) < 0) {
            return -errno;
        }
        if (read(fd, network->layers[index].biases, network->layers[index].layer_size * sizeof(fixed_8_24_t)) < 0) {
            return -errno;
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

typedef struct {
    uint32_t record_size;
    uint32_t data_count;
    uint32_t *target_buffer;
    fixed_8_24_t *data_buffer;
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
    data_struct->data_buffer = (fixed_8_24_t *)malloc(data_struct->data_count * data_struct->record_size * sizeof(fixed_8_24_t));
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

    // Read into data buffer as float
    if (read(fd, data_struct->data_buffer, data_struct->data_count * data_struct->record_size * sizeof(fixed_8_24_t)) < 0) {
        free(data_struct->target_buffer);
        free(data_struct->data_buffer);
        return -errno;
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

int64_t millis() {
    struct timespec now;
    timespec_get(&now, TIME_UTC);
    return ((int64_t) now.tv_sec) * 1000l + ((int64_t) now.tv_nsec) / 1000000l;
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

    // Start Timing
    int64_t start_time = millis();

    // Inference all data
    float hits = 0.0;
    uint32_t predicted;
    float max_prob;
    for (uint32_t i = 0; i < data_inst.data_count; i++) {
        fixed_8_24_t out[10];
        if (mlp_inference(&network_inst, out, &data_inst.data_buffer[i * data_inst.record_size]) < 0) {
            perror("Failed to inference data");
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
    int64_t run_time = finish_time - start_time;
    printf("Inferenced %d samples in %ld ms - %f samples per second\n", data_inst.data_count, run_time, (double)data_inst.data_count / (double)run_time);

    // Calculate Accuracy
    float accuracy = (hits / data_inst.data_count) * 100.0;
    printf("Accuracy: %.3f%%\n", accuracy);

    // Free Data
    data_free(&data_inst);
    // Free Target
    mlp_free_network(&network_inst);

    return 0;
}