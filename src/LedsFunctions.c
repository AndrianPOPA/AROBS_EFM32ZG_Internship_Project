#include "LedsFunctions.h"
#include "../../STK3200_Arobs_Intership/src/TimerFunctions.h"
#include "em_gpio.h"

/**
 * @brief Initializes the ledTracker array with default values
 * @details Each LED starts with default states and timer reset
 */
ledTracker rst_leds[NUM_LEDS] =
{
	{DEFAULT_STATE, DEFAULT_STATE, RESET_TIMER, DEFAULT_STATE},
	{DEFAULT_STATE, DEFAULT_STATE, RESET_TIMER, DEFAULT_STATE}
};

/**
 * @brief Toggles the state of a specific LED
 * @param led The index of the LED to toggle
 * @details Inverts the current state and sets or clears the physical LED accordingly
 */
void ToggleLed(uint8_t lui_led)
{
	/* switching led state */
	rst_leds[lui_led].State = !rst_leds[lui_led].State;

	/* switching the led state */
	if (rst_leds[lui_led].State)
	{
	    BSP_LedSet(lui_led);
	}
	else
	{
	    BSP_LedClear(lui_led);
	}
}

/**
 * @brief Handles blinking behavior for a specific LED
 * @param led The index of the LED to control
 * @param frequency The blink interval in milliseconds
 * @details Toggles the LED state when the timer matches the frequency
 */
void FlashingLed(uint8_t lui_led, uint16_t lui_frequency)
{
	/* Check if the led is blinking mode */
	if (rst_leds[lui_led].isBlinking)
	{
	    /* led timer reached the frequency --> toggle led */
        if (rst_leds[lui_led].timer == lui_frequency)
        {
        	ToggleLed(lui_led);
        	rst_leds[lui_led].timer = RESET_TIMER;
	    }

        /* Timing the led state */
        rst_leds[lui_led].timer += CICLE_TIME;
	}
	else
	{
		/* MISRA */
	}
}

/**
 * @brief Resets all LEDs to their default state
 * @details Clears the physical LEDs and disables blinking mode
 */
void ResetLedsState()
{
	BSP_LedClear(LED0);
	BSP_LedClear(LED1);
	rst_leds[LED0].isBlinking = false;
	rst_leds[LED1].isBlinking = false;
}
