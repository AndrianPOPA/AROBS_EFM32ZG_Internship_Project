#include "../../STK3200_Arobs_Intership/src/ButtonsFunctions.h"
#include "../../STK3200_Arobs_Intership/src/LedsFunctions.h"
#include "../../STK3200_Arobs_Intership/src/SensorsFunctions.h"
#include "../../STK3200_Arobs_Intership/src/ProblemsFunctions.h"
#include "../../STK3200_Arobs_Intership/src/DisplayFunctions.h"
#include "../../STK3200_Arobs_Intership/src/TimerFunctions.h"

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
#include "ButtonsFunctions.h"

/**
 * Button tracker array initialization with default values
 */
ButtonTracker rst_buttons[NUM_BUTTONS] =
{
	{PB0_PORT, PB0_PIN, DEFAULT_BUTTON_STATE, DEFAULT_BUTTON_COUNTER_PRESS, DEFAULT_BUTTON_PRESS_TIME, DEFAULT_BUTTON_NOT_PRESS_TIME},
	{PB1_PORT, PB1_PIN, DEFAULT_BUTTON_STATE, DEFAULT_BUTTON_COUNTER_PRESS, DEFAULT_BUTTON_PRESS_TIME, DEFAULT_BUTTON_NOT_PRESS_TIME}
};


/**
 * @brief Checks if a button is validly pressed (debounced).
 * @param button Index of the button in the `buttons` array.
 * @return true if the button is pressed and the debounce time has been reached.
 */
bool DebounceButton(uint8_t lui_button)
{
	/* State of the debounce state | default is false */
	bool ret_Debounce_State = false;

	/* Check if Button is pressed and the Debounce Time is not reached yet */
	if ((GPIO_PinInGet(rst_buttons[lui_button].port,rst_buttons[lui_button].pin) == BUTTON_PRESSED_TRUE) &&
			(rst_buttons[lui_button].pressedTimer == SHORT_PRESS_TIME))
	{
        /* Debounce Time is reached --> Button has been pressed */
        ret_Debounce_State = true;
    }
	else
    {
		/* MISRA */
    }

	/* Return the debounced state of the button */
    return ret_Debounce_State;
}

/**
 * @brief Checks if a button has been long pressed.
 * @param button Index of the button in the `buttons` array.
 * @return true if the button press duration equals LONG_PRESS_TIME.
 */
bool longPress(uint8_t lui_button)
{
	/* Button pressed time is equal than the defined time for the long press --> return TRUE */
    return rst_buttons[lui_button].pressedTimer == LONG_PRESS_TIME;
}

/**
 * @brief Checks if a button has been double pressed.
 * @param button Index of the button in the `buttons` array.
 * @return true if two presses occurred within the valid double-press time.
 */
bool doublePress(uint8_t lui_button)
{
	/* Button not pressed time is equal than the defined time for the double press --> return TRUE */
    return rst_buttons[lui_button].notPressedTimer <= DOUBLE_PRESS_TIME && rst_buttons[lui_button].counterPress == 2;
}

/**
 * @brief Updates the state of a button and determines the press type (short, long, double).
 * @param button Index of the button.
 * @return State corresponding to the button press (e.g., BUTTON_SHORT_PRESSED).
 */
uint8_t SetButtonPressedState(uint8_t lui_button)
{
	/* State of the button | default is in idle */
    uint8_t ret_buttonState = BUTTON_IDLE;

    /* Check if Button is pressed*/
    if ( GPIO_PinInGet( rst_buttons[lui_button].port, rst_buttons[lui_button].pin) == BUTTON_PRESSED_TRUE )
    {
    	/* Adding 10ms to the timer of pressed state */
        rst_buttons[lui_button].pressedTimer += CICLE_TIME;

        /* Button is debounced --> register short press and incrementing press counter*/
        if (DebounceButton(lui_button))
        {
        	rst_buttons[lui_button].counterPress++;
        	ret_buttonState = BUTTON_SHORT_PRESSED;

        	/* double press --> button pressed state double press */
        	if (doublePress(lui_button))
        	{
        		ret_buttonState = BUTTON_DOUBLE_PRESSED;
        	    rst_buttons[lui_button].counterPress = RESET_PRESSES; // Reset counter after double press
        	}
        	/* Reset counter if no valid press detected (not double or long) */
        	else if (rst_buttons[lui_button].counterPress == TWO_PRESSES)
        	{
        		rst_buttons[lui_button].counterPress = RESET_TIMER;
        	}
        	else
        	{
        	   	/* MISRA */
        	}

        	/* Reseting the not pressed timer */
        	rst_buttons[lui_button].notPressedTimer = RESET_TIMER;
        }
        else
        {
        	/* is long press --> button state long press */
        	if (longPress(lui_button))
        	{
        		ret_buttonState = BUTTON_LONG_PRESSED;
        		rst_buttons[lui_button].counterPress = RESET_PRESSES;
        	}
        	else
        	{
        		/* MISRA */
        	}
        }
    }
    else
    {
    	/* Adding 10ms to the timer of not pressed state and reseting the pressed timer and the counter press */
    	rst_buttons[lui_button].notPressedTimer += CICLE_TIME;
        if (rst_buttons[lui_button].notPressedTimer == DOUBLE_PRESS_TIME)
        {
        	rst_buttons[lui_button].counterPress = RESET_PRESSES;
        }
        else
        {
        	/* MISRA */
        }
        rst_buttons[lui_button].pressedTimer = RESET_TIMER;
    }

    /* Return the button state */
    return ret_buttonState;
}

/**
 * @brief Checks if both buttons are pressed simultaneously to return to menu.
 * @return true if both buttons are pressed at the same time.
 */
bool setReturnToMenuState()
{
	/* State of the back to menu | default is false */
	bool ret_menu_state = false;

	/* button pressed -> button presed time incremented */
	if ( GPIO_PinInGet( rst_buttons[PB0].port, rst_buttons[PB0].pin) == BUTTON_PRESSED_TRUE )
	{
		/* Adding 10ms to the timer of pressed state */
		rst_buttons[PB0].pressedTimer += CICLE_TIME;
	}
	else
	{
		/* Reseting the button pressed time */
		rst_buttons[PB0].pressedTimer = RESET_TIMER;
	}

	/* button pressed -> button presed time incremented */
	if ( GPIO_PinInGet( rst_buttons[PB1].port, rst_buttons[PB1].pin) == BUTTON_PRESSED_TRUE )
	{
		/* Adding 10ms to the timer of pressed state */
		rst_buttons[PB1].pressedTimer += CICLE_TIME;
	}
	else
	{
		/* Adding 10ms to the timer of pressed state */
		rst_buttons[PB1].pressedTimer = RESET_TIMER;
	}

	/* Both buttons pressed --> return to menu true */
	ret_menu_state = BothButtonsPressed(PB0, PB1);

	/* Return the return to menu state */
	return ret_menu_state;
}

/**
 * @brief Button handler for first push button in problem 1.
 * Handles short, long, and double presses for LED0 control.
 */
void ButtonOneHandlerP1()
{
	/* Get button state */
    uint8_t lui_ButtonState = SetButtonPressedState(PB0);

    /* Perform different actions based on the button press type */
    switch (lui_ButtonState)
    {
        case BUTTON_SHORT_PRESSED:
        	/* Switch LED0 state */
        	if (!rst_leds[LED0].isBlinking)
        	{
        		ToggleLed(LED0);
        	}
        	else
        	{
        		/* MISRA */
        	}
            break;
        case BUTTON_LONG_PRESSED:
        	/* Switch blinking mode state */
        	rst_leds[LED0].isBlinking = !rst_leds[LED0].isBlinking;

            if (rst_leds[LED0].State)
            {
            	BSP_LedClear(LED0);
            }
            break;
        case BUTTON_DOUBLE_PRESSED:
        	/* No function is implemented */
        	break;
    }

    /* Blinking mode */
    FlashingLed(LED0, LED_ONE_FREQUENCY);
}

/**
 * @brief Button handler for second push button in problem 1.
 * Handles short, long, and double presses for LED1 control.
 */
void ButtonTwoHandlerP1()
{
	/* Get button state */
	uint8_t lui_ButtonState = SetButtonPressedState(PB1);

	/* Perform different actions based on the button press type */
	switch (lui_ButtonState)
	{
		case BUTTON_SHORT_PRESSED:
			/* Switch LED1 state */
			if (!rst_leds[LED1].isBlinking)
			{
				ToggleLed(LED1);
			}
			else
			{
				/* MISRA */
			}
			break;
		case BUTTON_LONG_PRESSED:
			/* No function is implemented */
			break;
		case BUTTON_DOUBLE_PRESSED:
			/* Switch blinking mode state */
			rst_leds[LED1].isBlinking = !rst_leds[LED1].isBlinking;

			if (rst_leds[LED1].State)
			{
				BSP_LedClear(LED1);
			}
			else
			{
				/* MISRA */
			}
			break;
	}

	/* Blinking Mode */
	FlashingLed(LED1, LED_TWO_FREQUENCY);
}

/**
 * @brief Button handler for menu navigation through the first push button.
 * Cycles through available problems.
 */
void ButtonOneHandlerMenu()
{
	/* Get button state */
	uint8_t lui_ButtonState = SetButtonPressedState(PB1);

	/* Perform different actions based on the button press type */
	switch (lui_ButtonState)
	{
		case BUTTON_SHORT_PRESSED:
			ren_currentProblem = (ren_currentProblem + INCREMENTATION) % NUM_PROBLEMS;
			HandleDisplayMenu();
		    break;
		case BUTTON_LONG_PRESSED:
			/* No function is implemented */
		    break;
		case BUTTON_DOUBLE_PRESSED:
			/* Switch blinking mode state */
		   	break;
	}
}

/**
 * @brief Button handler for menu selection through the second push button.
 * Runs the selected problem when pressed.
 */
void ButtonTwoHandlerMenu()
{
	    /* Get button state for PB0 */
	    uint8_t lui_ButtonState = SetButtonPressedState(PB0);

	    /* Perform different actions based on the button press type */
	    switch (lui_ButtonState)
	    {
	        case BUTTON_SHORT_PRESSED:
	            /* Run the selected problem */
	            switch (ren_currentProblem)
	            {
	                case PROBLEM_1:
	                    /* Call the mainP1 function */
	                	Problem_One();
	                	/* Return to menu */
	                	HandleDisplayMenu();
	                    break;

	                case PROBLEM_2:
	                	Problem_Two();
	                	/* Return to menu */
	                	HandleDisplayMenu();
	                    break;

	                case PROBLEM_3:
	                	Problem_Three();
						HandleDisplayMenu();
	                	break;
	                case PROBLEM_4:
	                	Problem_Four();
	                	HandleDisplayMenu();
	                	break;
	                case NUM_PROBLEMS:
	                	break;
	            }
	            break;

	        case BUTTON_LONG_PRESSED:
	            /* No function implemented */
	            break;

	        case BUTTON_DOUBLE_PRESSED:
	            /* No function implemented */
	            break;
	}
}

/**
 * @brief Checks if both buttons are pressed simultaneously within a time window.
 * @param lui_buttonOne Index of the first button
 * @param lui_buttonTwo Index of the second button
 * @return true if both buttons are pressed within the time window
 */
bool BothButtonsPressed(uint8_t lui_buttonOne, uint8_t lui_buttonTwo)
{
	/* State of the both button pressed boolean | default is false */
	bool ret_both_buttons_pressed_state = false;

	/* Check if both buttons are short pressed at the same time */
	if (((rst_buttons[lui_buttonOne].pressedTimer >= SHORT_PRESS_TIME) &&
	    (rst_buttons[lui_buttonTwo].pressedTimer >= SHORT_PRESS_TIME)) &&
		(abs(rst_buttons[lui_buttonOne].pressedTimer - rst_buttons[lui_buttonTwo].pressedTimer) <= TWO_BUTTONS_PRESSED_TIME))
	{
		ret_both_buttons_pressed_state = true;
	}
	else
	{
		/* MISRA */
	}

	/* return the state of both buttons pressed */
	return ret_both_buttons_pressed_state;
}

/**
 * @brief Handles button presses for problem three (temperature control).
 * @param updateDisplay Pointer to update display flag
 */
void HandleButtonsPromblemThree(bool *lb_updateDisplay)
{
	/* PB1 pressed --> set changing mode to changing temperature */
	if (rst_buttons[PB1].pressedTimer == SHORT_PRESS_TIME)
	{
		rst_Measurments.ChangingMode = CHANGING_TEMPERATURE;
		*lb_updateDisplay = true;
	}
	else
	{
		/* MISRA */
	}

	/* PB0 pressed --> set changing mode to changing histerezis */
	if (rst_buttons[PB0].pressedTimer == SHORT_PRESS_TIME)
	{
		rst_Measurments.ChangingMode = CHANGING_HISTEREZIS;
		*lb_updateDisplay = true;
	}
	else
	{
		/* MISRA */
	}
}


