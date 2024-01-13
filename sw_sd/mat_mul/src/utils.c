#include "utils.h"
#include "xtime_l.h"
#include <stdint.h>

int64_t millis() {
	// Get global timer ticks
	XTime ticks;
	XTime_GetTime(&ticks);

	// Convert to Milliseconds
	return ticks / (COUNTS_PER_SECOND / 1000l);
}
