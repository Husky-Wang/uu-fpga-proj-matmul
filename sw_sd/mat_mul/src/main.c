#include "fixed_point.h"
#include "mat_mul.h"
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

#include "xparameters.h"

#define a_rows 123
#define a_cols 456

int run_test() {
	int status;

	/*--------------------------- Prepare Matrix ---------------------------*/
	fixed_8_24_t * a;
	fixed_8_24_t * b;
	fixed_8_24_t * r;
	fixed_8_24_t * r_ref;

	a = malloc(a_rows * a_cols * sizeof(fixed_8_24_t) * 2);
	b = malloc(a_cols * sizeof(fixed_8_24_t) * 2);
	r = malloc(a_rows * sizeof(fixed_8_24_t) * 2);
	r_ref = malloc(a_rows * sizeof(fixed_8_24_t) * 2);
	if (a == NULL || b == NULL || r == NULL || r_ref == NULL) {
		printf("run_test() malloc failed\n");
		return ENOMEM;
	}

	for (int i = 0; i < a_rows * a_cols; i += 1) {
		((fixed_8_24_t *)a)[i] = float_to_fixed_8_24(((float)(rand() % 1000 - 2000)) / 1000.0f);
		//((fixed_8_24_t *)a)[i] = float_to_fixed_8_24(1.0f);
	}
	for (int i = 0; i < a_cols; i += 1) {
		((fixed_8_24_t *)b)[i] = float_to_fixed_8_24(((float)(rand() % 1000 - 2000)) / 1000.0f);
		//((fixed_8_24_t *)b)[i] = float_to_fixed_8_24(10.0f);
	}
	for (int i = 0; i < a_rows; i += 1) {
		((fixed_8_24_t *)r)[i] = float_to_fixed_8_24(123.0f);
	}
	for (int i = 0; i < a_rows; i += 1) {
		((fixed_8_24_t *)r_ref)[i] = float_to_fixed_8_24(-123.0f);
	}

	/*--------------------------- Exec Calculation ---------------------------*/
	status = mat_mul_hw_big_cols(r, a, b, a_rows, a_cols);
	//status = mat_mul_hw(r, a, b, a_rows, a_cols);
	if (status != 0) {
		printf("mat_mul_hw() failed: %d\n", status);
		return status;
	}
	/*printf("Results:\n");
	for (int j = 0; j < a_rows; j += 1) {
		printf("%f\n", fixed_8_24_to_float(r[j]));
	}*/

	/*--------------------------- Exec Reference ---------------------------*/
	// Calculate Reference
	mat_mul_sw(r_ref, a, b, a_cols, a_rows, 1);

	// Compare Data
	for (uint32_t i = 0; i < a_rows; i += 1) {
		if (r_ref[i] != r[i]) {
			printf("Mismatch [%lu], Expected: %f, Actual: %f\n",
				i,
				fixed_8_24_to_float(r_ref[i]),
				fixed_8_24_to_float(r[i])
			);
		}
	}

	/*--------------------------- Cleanup ---------------------------*/
	free(a);
	free(b);
	free(r);

	return 0;
}

int main() {
	int status;

	printf("\nSTART\n");

	// Initialize mat mul hw
	status = mat_mul_hw_init(XPAR_AXIDMA_0_DEVICE_ID, 1024, 1024);
	if (status != 0) {
		printf("mat_mul_hw_init() failed: %d\n", status);
		return status;
	}

	for (int i = 0; i < 100; i += 1) {
		printf("\nIteration %d\n", i);
		if (run_test()) {
			printf("mat_mul_hw() failed\n");
			break;
		}
	}

	printf("\nSLUT\n");

	return 0;
}
