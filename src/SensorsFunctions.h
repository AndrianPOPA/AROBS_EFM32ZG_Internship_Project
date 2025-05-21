#ifndef SRC_SENSORSFUNCTIONS_H_
#define SRC_SENSORSFUNCTIONS_H_

#include "em_gpio.h"
#include "bsp.h"
#include <stdbool.h>
#include <stdint.h>
#include "glib.h"
#include <string.h>

#define DEFAULT_MEASUREMENT 0        // Default measurement value
#define DEFAULT_SET_HIST 10          // Default hysteresis set value
#define DEFAULT_SET_TEMP 220         // Default temperature set value
#define TEMP_SCALING_FACTOR 100      // Temperature scaling factor

typedef enum
{
	CHANGING_TEMPERATURE,  // Changing temperature mode
	CHANGING_HISTEREZIS    // Changing hysteresis mode
} ChangintModes;

typedef struct
{
	uint32_t rhData;         // Relative humidity data
	int32_t tempData;        // Temperature data
	uint16_t uvData;         // UV data
	uint16_t histerezisSeted; // Set hysteresis value
	uint16_t temperatureSeted; // Set temperature value
	uint8_t ChangingMode;    // Current changing mode (temperature or hysteresis)
} MeasurmentsTracker;

/* Global variable to hold measurement data */
extern MeasurmentsTracker rst_Measurments;

/* Function prototypes */
void PerformMeasurments();
void ChekingHisterezis();
void enableGestureMode(void);


#endif /* SRC_SENSORSFUNCTIONS_H_ */
