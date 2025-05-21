#include "../../STK3200_Arobs_Intership/src/ProblemsFunctions.h"
#include "../../STK3200_Arobs_Intership/src/DisplayFunctions.h"
#include "../../STK3200_Arobs_Intership/src/SensorsFunctions.h"
#include "../../STK3200_Arobs_Intership/src/ButtonsFunctions.h"
#include "../../STK3200_Arobs_Intership/src/LedsFunctions.h"
#include "../../STK3200_Arobs_Intership/src/CircleFunctions.h"
#include "../../STK3200_Arobs_Intership/src/TimerFunctions.h"
#include "../../STK3200_Arobs_Intership/src/CapsenseFunctions.h"

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
 * @brief Global variable tracking the current active problem state
 */
ProblemState ren_currentProblem = PROBLEM_1;

/**
 * @brief Handles execution of Problem One
 * @details Displays the problem interface and runs the main loop that processes
 *          button presses until both buttons are pressed simultaneously
 */
void Problem_One()
{
	bool ret_problem_state = false;
	/* Display problem one */
	HandleDiplayProblemOne();
	/* Looping the problem until return to menu */
	while (!ret_problem_state)
	{
		ret_problem_state = BothButtonsPressed(PB0, PB1);
		/* Get the buttons changes */
		ButtonOneHandlerP1();
		ButtonTwoHandlerP1();
		Delay(CICLE_TIME);
	}
	ResetLedsState();
}

/**
 * @brief Handles execution of Problem Two
 * @details Controls LED intensity display and updates based on capacitive
 *          button inputs. Maintains intensity value and updates display
 *          when changes occur
 */
void Problem_Two()
{
	bool lb_updateDisplay = true;
	bool ret_problem_state = false;
	HandleDiplayProblemTwo();
	uint8_t lui_intensity = MIN_DUTY_CICLE;
	/* Looping the problem until return to menu */
	while (!ret_problem_state)
	{
		ret_problem_state = setReturnToMenuState();
    	/* Get the change of the capacitative buttons */
		HandleCpasenseButtonsProblemTwo(&lb_updateDisplay, &lui_intensity);
		if (lb_updateDisplay)
		{
			/* Change intensity of the led */
			UpdateTopSet(lui_intensity);
			HandleDiplayIntensityProblemTwo(lui_intensity);
			lb_updateDisplay = false;
		}
		else
		{
			/* MISRA */
		}
		Delay(CICLE_TIME);
	}
	/* Turn off the led after the problem */
	TIMER_CompareSet(TIMER0, CHANEL_TIMER0, MIN_DUTY_CICLE);
}

/**
 * @brief Handles execution of Problem Three
 * @details Runs the main loop for problem three, processing capacitive buttons,
 *          timer events, and physical button presses, updating the display
 *          when necessary
 */
void Problem_Three()
{
    bool ret_problem_state = false;
    bool lb_updateDisplay = false;
    /* Looping the problem until return to menu */
    while (!ret_problem_state)
    {
    	ret_problem_state = setReturnToMenuState();
    	/* Get the change of the capacitative buttons */
    	HandleCpasenseButtonsProblemThree(&lb_updateDisplay);
    	/* Timer for measurements */
    	HandleProblemThreeTimer(&lb_updateDisplay);
    	/* Change the settings with the buttons */
    	HandleButtonsPromblemThree(&lb_updateDisplay);
    	/* Update the physical display */
    	HandleDiplayProblemThree(&lb_updateDisplay);
        Delay(CICLE_TIME);
    }
    ResetLedsState();
}

/**
 * @brief Handles execution of Problem Four
 * @details Initializes and controls a circle whose radius changes based on
 *          proximity readings from the Si1147 sensor. Updates circle position,
 *          direction, and display during each cycle
 */
void Problem_Four()
{
	bool ret_problem_state = false;
	InitCircle();
	/* Looping the problem until return to menu */
	while (!ret_problem_state)
	{
		ret_problem_state = setReturnToMenuState();
		/* get the distance of the object then make it as radius for circle */
		rst_Circle.radius = DISTANCE_SCALE_OFFSET-((Si1147_getDistanceFromObject())/DISTANCE_SCALE_DIVISOR);
		/* Set the direction of the circle -> updating the pozition of the circle -> displaing the circle */
		setCircleDirection();
		UpdatingCirclePosition();
		HandleDiplayProblemFour();
		Delay(CICLE_TIME);
	}
}
