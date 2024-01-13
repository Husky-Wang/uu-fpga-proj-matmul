#ifndef __UTILS_H_
#define __UTILS_H_

#include <stdint.h>
#include "fixed_point.h"
#include "ff.h"
#include "mlp.h"

typedef struct {
    uint32_t record_size;
    uint32_t data_count;
    uint32_t *target_buffer;
    fixed_8_24_t *data_buffer;
} data_t;

int64_t millis();

int mlp_load_from_file(mlp_network_t *network, FIL *file);
int data_load_from_file(data_t *data_struct, FIL *file);
void data_free(data_t *data_struct);

#endif /* __UTILS_H_ */
