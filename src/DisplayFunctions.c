#include "../../STK3200_Arobs_Intership/src/DisplayFunctions.h"
#include "../../STK3200_Arobs_Intership/src/ProblemsFunctions.h"
#include "../../STK3200_Arobs_Intership/src/SensorsFunctions.h"
#include "../../STK3200_Arobs_Intership/src/CircleFunctions.h"

#include <stdio.h>
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

/* Global string buffer for display text */
char rch_str[STR_LEN];
/* Global graphics context for display control */
GLIB_Context_t rst_glibContext;
/* Rectangle for erasing specific screen areas */
GLIB_Rectangle_t rst_Erase =
{
	MIN_X_ERASE, MIN_Y_ERASE, MAX_X_ERASE, MAX_Y_ERASE
};

/**
 * @brief Displays the main menu on the screen
 * Shows available problems and navigation instructions
 */
void HandleDisplayMenu()
{
	uint8_t lui_PositionY = POZITION_DEFAULT;
	/* Clear display  */
	GLIB_clear(&rst_glibContext);

	/* Set font and draw title text */
	GLIB_setFont(&rst_glibContext, (GLIB_Font_t *)&GLIB_FontNormal8x8);
	GLIB_drawString(&rst_glibContext, "AROBS", STR_LEN, POZITION_DEFAULT, lui_PositionY, OPACITY_DEFAULT);
	GLIB_drawString(&rst_glibContext, "SOFTWARE", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_SMALL), OPACITY_DEFAULT);
	GLIB_drawString(&rst_glibContext, "INTERSHIP", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_SMALL), OPACITY_DEFAULT);

	/* Show selected problem number */
	snprintf(rch_str, STR_LEN, "Selected: P%d", ren_currentProblem + INCREMENTATION);
	GLIB_drawString(&rst_glibContext, rch_str, strlen(rch_str), POZITION_DEFAULT, (lui_PositionY += IDENTATION_LARGE), OPACITY_DEFAULT);

	/* Show navigation instructions */
	GLIB_drawString(&rst_glibContext, "Push PB1 to", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_LARGE), OPACITY_DEFAULT);
	GLIB_drawString(&rst_glibContext, "cycle problems", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_SMALL), OPACITY_DEFAULT);
	GLIB_drawString(&rst_glibContext, "Push PB0 to", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_LARGE), OPACITY_DEFAULT);
	GLIB_drawString(&rst_glibContext, "start problem", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_SMALL), OPACITY_DEFAULT);

	/* Update the physical display */
	DMD_updateDisplay();
}

/**
 * @brief Displays the Problem One interface (LED control)
 * Shows instructions for LED control using button presses
 */
void HandleDiplayProblemOne()
{
	uint8_t lui_PositionY = POZITION_DEFAULT;
	/* Clear display */
	GLIB_clear(&rst_glibContext);

	/* Set font and display problem number */
	GLIB_setFont(&rst_glibContext, (GLIB_Font_t *)&GLIB_FontNormal8x8);
	snprintf(rch_str, STR_LEN, "Selected: P%d", ren_currentProblem + INCREMENTATION);
	GLIB_drawString(&rst_glibContext, rch_str, strlen(rch_str), POZITION_DEFAULT, 5, OPACITY_DEFAULT);

	/* Switch to narrower font and display instructions */
	GLIB_setFont(&rst_glibContext, (GLIB_Font_t *)&GLIB_FontNarrow6x8);
	GLIB_drawString(&rst_glibContext, "Push PB1 to toggle", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_LARGE), OPACITY_DEFAULT);
	GLIB_drawString(&rst_glibContext, "LED1", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_SMALL), OPACITY_DEFAULT);
	GLIB_drawString(&rst_glibContext, "Double push PB1 to", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_LARGE), OPACITY_DEFAULT);
	GLIB_drawString(&rst_glibContext, "toggle blinking LED1", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_SMALL), OPACITY_DEFAULT);
	GLIB_drawString(&rst_glibContext, "Push PB0 to toggle", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_LARGE), OPACITY_DEFAULT);
	GLIB_drawString(&rst_glibContext, "LED0", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_SMALL), OPACITY_DEFAULT);
	GLIB_drawString(&rst_glibContext, "Long push PB0 to", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_LARGE), OPACITY_DEFAULT);
	GLIB_drawString(&rst_glibContext, "toggle blinking LED0", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_SMALL), OPACITY_DEFAULT);

	/* Update the physical display */
	DMD_updateDisplay();
}

/**
 * @brief Updates the intensity display in Problem Two
 * @param intensity Current intensity value to display
 */
void HandleDiplayIntensityProblemTwo(char lch_intensity)
{
	/* Clear previous intensity display area */
	rst_glibContext.foregroundColor = Black;
	GLIB_drawRectFilled(&rst_glibContext,  &rst_Erase);
	rst_glibContext.foregroundColor = White;

	/* Display new intensity percentage */
	GLIB_setFont(&rst_glibContext, (GLIB_Font_t *)&GLIB_FontNormal8x8);
	snprintf(rch_str, STR_LEN, "%d%%", lch_intensity);
	GLIB_drawString(&rst_glibContext,
					rch_str,
					strlen(rch_str),
					INTENSITY_X,
					INTENSITY_Y,
					OPACITY_DEFAULT);
	/* Update the physical display */
	DMD_updateDisplay();
}

/**
 * @brief Displays the Problem Two interface (intensity control)
 * Shows instructions for intensity control using capsense
 */
void HandleDiplayProblemTwo()
{
	uint8_t lui_PositionY = POZITION_DEFAULT;
	/* Clear display */
	GLIB_clear(&rst_glibContext);

	/* Set font and display problem number and title */
	GLIB_setFont(&rst_glibContext, (GLIB_Font_t *)&GLIB_FontNormal8x8);
	snprintf(rch_str, STR_LEN, "Selected: P%d", ren_currentProblem + INCREMENTATION);
	GLIB_drawString(&rst_glibContext, rch_str, strlen(rch_str), POZITION_DEFAULT, lui_PositionY, OPACITY_DEFAULT);
	GLIB_drawString(&rst_glibContext, "Intensity:", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_LARGE), OPACITY_DEFAULT);

	/* Switch to narrower font and display instructions */
	GLIB_setFont(&rst_glibContext, (GLIB_Font_t *)&GLIB_FontNarrow6x8);
	GLIB_drawString(&rst_glibContext, "Push PB1 and PB0", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_LARGE), OPACITY_DEFAULT);
	GLIB_drawString(&rst_glibContext, "to go back to menu", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_SMALL), OPACITY_DEFAULT);
	GLIB_drawString(&rst_glibContext, "Use capsense to", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_LARGE), OPACITY_DEFAULT);
	GLIB_drawString(&rst_glibContext, "change the intensity", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_SMALL), OPACITY_DEFAULT);

	/* Update the physical display */
	DMD_updateDisplay();
}

/**
 * @brief Displays the Problem Three interface (temp/humidity/UV monitor)
 * @param updateDisplay Pointer to flag that controls when display updates occur
 */
void HandleDiplayProblemThree(bool *lb_updateDisplay)
{
	/* Only update display when flag is set */
	if (*lb_updateDisplay == true)
	{
		uint8_t lui_PositionY = POZITION_DEFAULT;
		/* Clear display */
		GLIB_clear(&rst_glibContext);
		GLIB_setFont(&rst_glibContext, (GLIB_Font_t *)&GLIB_FontNormal8x8);

		/* Display sensor readings */
		snprintf(rch_str, STR_LEN, "Humidity: %d%%", (int)rst_Measurments.rhData/RH_SCALING_FACTOR);
		GLIB_drawString(&rst_glibContext, rch_str, strlen(rch_str), POZITION_DEFAULT, POZITION_DEFAULT, OPACITY_DEFAULT);

		snprintf(rch_str, STR_LEN, "Temp: %li.%li C", rst_Measurments.tempData/TEMP_INTEGER_DIVISOR, rst_Measurments.tempData%TEMP_DECIMAL_MODULO);
		GLIB_drawString(&rst_glibContext, rch_str, strlen(rch_str), POZITION_DEFAULT, (lui_PositionY += IDENTATION_LARGE), OPACITY_DEFAULT);

		snprintf(rch_str, STR_LEN, "UV Index: %d", rst_Measurments.uvData);
		GLIB_drawString(&rst_glibContext, rch_str, strlen(rch_str), POZITION_DEFAULT, (lui_PositionY += IDENTATION_LARGE), OPACITY_DEFAULT);
		lui_PositionY += IDENTATION_SMALL;

		/* Draw dividing line */
		GLIB_drawLine(&rst_glibContext, X_SPACING_LEFT_LINE, Y_SPACING_LINE, MAX_X, Y_SPACING_LINE);

		/* Display temperature and hysteresis settings */
		GLIB_drawString(&rst_glibContext, "SET", STR_LEN, X_SPACING_LEFT_SET, (lui_PositionY += IDENTATION_SMALL), OPACITY_DEFAULT);
		GLIB_drawString(&rst_glibContext, "SET", STR_LEN, X_SPACING_RIGHT_SET, lui_PositionY, OPACITY_DEFAULT);

		GLIB_drawString(&rst_glibContext, "TEMP", STR_LEN, X_SPACING_LEFT_TEMP, (lui_PositionY += IDENTATION_SMALL), OPACITY_DEFAULT);
		GLIB_drawString(&rst_glibContext, "HIST", STR_LEN, X_SPACING_RIGHT_HIST, lui_PositionY, OPACITY_DEFAULT);

		snprintf(rch_str, STR_LEN, "%d.%d", rst_Measurments.temperatureSeted/TEMP_INTEGER_DIVISOR,rst_Measurments.temperatureSeted%TEMP_DECIMAL_MODULO);
		GLIB_drawString(&rst_glibContext, rch_str, strlen(rch_str), X_SPACING_LEFT_MESURMENT, (lui_PositionY += IDENTATION_SMALL), OPACITY_DEFAULT);

		snprintf(rch_str, STR_LEN, "%d.%d", rst_Measurments.histerezisSeted/TEMP_INTEGER_DIVISOR, rst_Measurments.histerezisSeted%TEMP_DECIMAL_MODULO);
		GLIB_drawString(&rst_glibContext, rch_str, strlen(rch_str), X_SPACING_RIGHT_MESURMENT, lui_PositionY, OPACITY_DEFAULT);

		lui_PositionY += IDENTATION_SMALL;

		/* Draw underline for currently selected parameter (temp or hysteresis) */
		if(rst_Measurments.ChangingMode == CHANGING_HISTEREZIS)
		{
			GLIB_drawLine(&rst_glibContext, X_SPACING_LEFT_SET_HIST_LINE, lui_PositionY, X_SPACING_RIGHT_SET_HIST_LINE, lui_PositionY);
		}
		else
		{
			GLIB_drawLine(&rst_glibContext, X_SPACING_LEFT_SET_TEMP_LINE, lui_PositionY, X_SPACING_RIGHT_SET_TEMP_LINE, lui_PositionY);
		}

		/* Display instructions */
		GLIB_setFont(&rst_glibContext, (GLIB_Font_t *)&GLIB_FontNarrow6x8);
		GLIB_drawString(&rst_glibContext, "Push PB1 to set temp", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_EXTRA_SMALL), OPACITY_DEFAULT);
		GLIB_drawString(&rst_glibContext, "Push PB0 to set hist", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_SMALL), OPACITY_DEFAULT);
		GLIB_drawString(&rst_glibContext, "Use capsene to change", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_SMALL), OPACITY_DEFAULT);
		GLIB_drawString(&rst_glibContext, "the slected variable", STR_LEN, POZITION_DEFAULT, (lui_PositionY += IDENTATION_SMALL), OPACITY_DEFAULT);

		DMD_updateDisplay();
		*lb_updateDisplay = false;
	}
	else
	{
		/* MISRA */
	}
}

/**
 * @brief Displays a circle at the current position in Problem Four
 * @details Clears the display, draws a circle at the stored position, and updates the physical display
 */
void HandleDiplayProblemFour()
{
    /* Displaying the circle at the current position */
    GLIB_clear(&rst_glibContext);
    GLIB_drawCircle(&rst_glibContext, rst_Circle.x_positiont, rst_Circle.y_positiont, rst_Circle.radius);
    DMD_updateDisplay();
}
