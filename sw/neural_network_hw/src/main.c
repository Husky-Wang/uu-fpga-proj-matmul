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
// Matrix Multiplication
#include "mat_mul.h"

int main()
{
    printf("\nNeural Network Hardware Inference\n");

    /* ======== Initialize Matrix Multiplication ======== */
	if (mat_mul_hw_init(XPAR_AXIDMA_0_DEVICE_ID, 1024, 1024) != 0) {
		printf("mat_mul_hw_init() failed\n");
		return -1;
	}

    /* ======== Load MLP Network ======== */
    printf("Loading Data, this can take a while...\n");
    printf("Now reading MLP network definition\n");
    mlp_network_t network_inst;
	if (mlp_load_from_stdin(&network_inst) != 0) {
	    printf("Failed to load MLP network\n");
	    return -1;
	}

    /* ======== Do Inferencing ======== */
	printf("Operational\n");
	while (1) {
		char text_buffer[1024];
		fixed_8_24_t data_buffer[784];

		// Get data from stdin
		for (uint32_t i = 0; i < 784; i += 1) {
			float input_float;
			weird_getline(text_buffer, 1024);
			while(sscanf(text_buffer, "%f", &input_float) <= 0);

			data_buffer[i] = float_to_fixed_8_24(input_float);
		}

		// Start Timing
		int64_t start_time = millis();

		// Do Inferencing
		fixed_8_24_t out[10];
		mlp_inference(&network_inst, out, data_buffer);

		// Interpret Result
		float max_prob;
		uint32_t predicted;
		max_prob = fixed_8_24_to_float(out[0]);
		for (int j = 1; j < 10; j++) {
			if (fixed_8_24_to_float(out[j]) > max_prob) {
				max_prob = fixed_8_24_to_float(out[j]);
				predicted = j;
			}
		}

		// Stop Timing
		int64_t finish_time = millis();
		// Return Result
		printf("%lu, %lld\n", predicted, finish_time - start_time);
	}

    // Should not reach
    return 0;
}
