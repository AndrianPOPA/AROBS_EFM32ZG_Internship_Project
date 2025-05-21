#include "../../STK3200_Arobs_Intership/src/CapsenseFunctions.h"
#include "../../STK3200_Arobs_Intership/src/SensorsFunctions.h"
#include "../../STK3200_Arobs_Intership/src/TimerFunctions.h"
#include "../../STK3200_Arobs_Intership/src/ProblemsFunctions.h"

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

/**
 * Array to track the two capacitive buttons
 * Stores channel number and time pressed for each button
 */
CapsenseTracker rst_CapsenseButtons[NUM_CAPSENSE] =
{
		{BUTTON0_CHANNEL, RESET_TIMER},
		{BUTTON1_CHANNEL, RESET_TIMER}
};

/**
 * @brief Checks if a capacitive button is being pressed
 * @return Enumeration indicating which button (if any) is pressed
 */
CapsenseState setCapsensePressed()
{
	/* Default state is no button pressed */
	uint8_t ret_Capsense_State = FALSE;

	/* Perform capacitive sensing */
	CAPSENSE_Sense();

	/* Check if first button is pressed (but not second) */
	if ( CAPSENSE_getPressed(rst_CapsenseButtons[CAP0].chanel)
		 && !CAPSENSE_getPressed(rst_CapsenseButtons[CAP1].chanel))
	{
		/* Increment time pressed */
		rst_CapsenseButtons[CAP0].time_pressed += CICLE_TIME;

		/* Cycle of button press detected */
		if (rst_CapsenseButtons[CAP0].time_pressed == CICLE_TIME)
		{
			ret_Capsense_State = CAP0_PRESSED;
		}
		/* Reset timer after interval to allow new input */
		else if (rst_CapsenseButtons[CAP0].time_pressed == NEW_CAPSENSE_INPUT_INTERVAL)
		{
			rst_CapsenseButtons[CAP0].time_pressed = RESET_TIMER;
		}
		else
		{
			/* MISRA */
		}
	}
	/* Check if second button is pressed (but not first) */
	else if ( CAPSENSE_getPressed(rst_CapsenseButtons[CAP1].chanel)
				&& !CAPSENSE_getPressed(rst_CapsenseButtons[CAP0].chanel))
	{
		/* Increment time pressed */
		rst_CapsenseButtons[CAP1].time_pressed += CICLE_TIME;

		/* Cycle of button press detected */
		if (rst_CapsenseButtons[CAP1].time_pressed == CICLE_TIME)
		{
			ret_Capsense_State = CAP1_PRESSED;
		}
		/*  Reset timer after interval to allow new input */
		else if (rst_CapsenseButtons[CAP1].time_pressed == NEW_CAPSENSE_INPUT_INTERVAL)
		{
			rst_CapsenseButtons[CAP1].time_pressed = RESET_TIMER;
		}
		else
		{
			/* MISRA */
		}
	}
	/* No buttons pressed or both pressed - reset timers */
	else
	{
		rst_CapsenseButtons[CAP0].time_pressed = RESET_TIMER;
		rst_CapsenseButtons[CAP1].time_pressed = RESET_TIMER;
	}

	return ret_Capsense_State;
}

/**
 * @brief Handles capacitive button presses for Problem Two (intensity control)
 * @param updateDisplay Pointer to flag for display update
 * @param intensity Pointer to intensity value being controlled
 */
void HandleCpasenseButtonsProblemTwo(bool *lb_updateDisplay, uint8_t *lui_intensity)
{
	/* Get current state of capacitive buttons */
	uint8_t lui_capsenseState = setCapsensePressed();

	/* CAP1 pressed and intensity not at maximum - increase intensity */
	if(lui_capsenseState == CAP1_PRESSED && *lui_intensity < MAX_INTENCITY)
	{
		*lui_intensity += ITERATION_INTENCITY;
		*lb_updateDisplay = true;
	}
	/* CAP0 pressed and intensity not at minimum - decrease intensity */
	else if(lui_capsenseState == CAP0_PRESSED && *lui_intensity > MIN_INTENCITY)
	{
		*lui_intensity -= ITERATION_INTENCITY;
		*lb_updateDisplay = true;
	}
	else
	{
		/* MISRA */
	}
}

/**
 * @brief Handles capacitive button presses for Problem Three (temperature/hysteresis control)
 * @param updateDisplay Pointer to flag for display update
 */
void HandleCpasenseButtonsProblemThree(bool *lb_updateDisplay)
{
	/* Get current state of capacitive buttons */
	uint8_t lui_capsenseState = setCapsensePressed();

	/* CAP1 pressed - increment selected value */
	if(lui_capsenseState == CAP1_PRESSED)
	{
		/* If in hysteresis mode and not at max, increase hysteresis */
		if (rst_Measurments.ChangingMode == CHANGING_HISTEREZIS && rst_Measurments.histerezisSeted < MAX_HIST)
		{
			rst_Measurments.histerezisSeted += ITERATION_SETTED_HIST;
		}
		/* If in temperature mode and not at max, increase temperature */
		else if(rst_Measurments.ChangingMode == CHANGING_TEMPERATURE && rst_Measurments.temperatureSeted < MAX_SET_TEMP)
		{
			rst_Measurments.temperatureSeted += ITERATION_SETTED_TEMP;
		}
		else
		{
			/* Misra */
		}
		/* Update display flag and check hysteresis conditions */
		*lb_updateDisplay = true;
		ChekingHisterezis();
	}
	/* CAP0 pressed - decrement selected value */
	else if(lui_capsenseState == CAP0_PRESSED)
	{
		/* If in hysteresis mode and not at min, decrease hysteresis */
		if (rst_Measurments.ChangingMode == CHANGING_HISTEREZIS && rst_Measurments.histerezisSeted > MIN_HIST)
		{
			rst_Measurments.histerezisSeted -= ITERATION_SETTED_HIST;
		}
		/* If in temperature mode and not at min, decrease temperature */
		else if(rst_Measurments.ChangingMode == CHANGING_TEMPERATURE && rst_Measurments.temperatureSeted > MIN_SET_TEMP)
		{
			rst_Measurments.temperatureSeted -= ITERATION_SETTED_TEMP;
		}
		else
		{
			/* Misra */
		}
		/* Update display flag and check hysteresis conditions */
		*lb_updateDisplay = true;
		ChekingHisterezis();
	}
	else
	{
		/* MISRA */
	}
}
