#include "../../STK3200_Arobs_Intership/src/TimerFunctions.h"
#include "../../STK3200_Arobs_Intership/src/SensorsFunctions.h"

#include "display.h"
#include "em_gpio.h"
#include "bsp.h"
#include "em_device.h"
#include <stdint.h>
#include "em_chip.h"
#include "em_cmu.h"
#include "capsense.h"
#include "si114x_algorithm.h"
#include "em_timer.h"
#include "i2cspm.h"
#include "si7013.h"
#include "sl_sleeptimer.h"
#include "em_adc.h"
#include "LedsFunctions.h"

/**
 * @brief Initializes the Measurments structure with default values
 * @details Contains temperature, humidity, UV data and hysteresis settings
 */
MeasurmentsTracker rst_Measurments =
{
	DEFAULT_MEASUREMENT,
	DEFAULT_MEASUREMENT,
	DEFAULT_MEASUREMENT,
	DEFAULT_SET_HIST,
	DEFAULT_SET_TEMP,
	CHANGING_HISTEREZIS
};

/**
 * @brief Initializes the timer tracker for measurements
 * @details Timer used to schedule measurements over time
 */
MeasurmentsTimerTracker rst_MeasurmentsTimer = {RESET_TIMER};

/**
 * @brief Checks if temperature is outside the hysteresis range
 * @details Turns on LED0 if temperature is above the upper limit,
 * and LED1 if below the lower limit. Clears them otherwise.
 */
void ChekingHisterezis()
{
	if(rst_Measurments.tempData > rst_Measurments.temperatureSeted + rst_Measurments.histerezisSeted)
	{
		BSP_LedSet(LED0);
	}
	else
	{
		BSP_LedClear(LED0);
	}

	if(rst_Measurments.tempData < rst_Measurments.temperatureSeted - rst_Measurments.histerezisSeted)
	{
		BSP_LedSet(LED1);
	}
	else
	{
		BSP_LedClear(LED1);
	}
}

/**
 * @brief Performs environmental measurements
 * @details Reads temperature, humidity, and UV/object detection data from sensors.
 * Converts temperature to readable format and checks hysteresis thresholds.
 */
void PerformMeasurments()
{
	int li_objectDetect;

	/* Measuring temperature and humidity */
	Si7013_MeasureRHAndTemp(I2C0, SI7013_ADDR, &rst_Measurments.rhData, &rst_Measurments.tempData);

	/* Measuring UV and object detection */
	Si1147_MeasureUVAndObjectPresent(I2C0, SI1147_ADDR, &rst_Measurments.uvData, &li_objectDetect);

	/* Scaling temperature to proper format */
	rst_Measurments.tempData /= TEMP_SCALING_FACTOR;

	/* Checking temperature against hysteresis limits */
	ChekingHisterezis();
}

/**
 * @brief Enables gesture detection mode
 * @details Configures the SI1147 sensor for gesture input and enables interrupt output
 */
void enableGestureMode(void)
{
	Si1147_ConfigureDetection(I2C0, SI1147_ADDR, false);
	Si1147_SetInterruptOutputEnable(I2C0, SI1147_ADDR, true);
}
