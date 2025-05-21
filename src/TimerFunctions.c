#include "../../STK3200_Arobs_Intership/src/SensorsFunctions.h"
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

/**
 * @brief Sets up TIMER0 for PWM generation
 * @details Enables necessary clocks, configures the GPIO pin, sets up PWM mode on TIMER0 channel,
 * and initializes the timer with default settings. Also sets the initial duty cycle.
 */
void setupTimer(void)
{
	/* Enable GPIO and TIMER0 clocks */
	CMU_ClockEnable(cmuClock_GPIO, true);
	CMU_ClockEnable(cmuClock_TIMER0, true);

	/* Set GPIO pin as push-pull output and drive it low */
    GPIO_PinModeSet(PORT_A, PIN_0, gpioModePushPull, OUT_LOW);

    /* Configure TIMER0 channel for PWM mode */
    TIMER_InitCC_TypeDef timerCC0 = TIMER_INITCC_DEFAULT;
    timerCC0.mode = timerCCModePWM;
    timerCC0.cmoa = timerOutputActionToggle;

    /* Initialize TIMER0 channel for PWM */
    TIMER_InitCC(TIMER0, CHANEL_TIMER0, &timerCC0);

    /* Configure TIMER0 basic parameters */
    TIMER_Init_TypeDef timerInit = TIMER_INIT_DEFAULT;
    timerInit.prescale = timerPrescale1;

    /* Route TIMER0 output to GPIO location */
    TIMER0->ROUTE |= TIMER_ROUTE_CC0PEN | TIMER_ROUTE_LOCATION_LOC4;

    /* Set the PWM period */
    TIMER_TopSet(TIMER0, MAX_DUTY_CICLE);

    /* Initialize TIMER0 */
    TIMER_Init(TIMER0, &timerInit);

    /* Set initial duty cycle to minimum */
    TIMER_CompareSet(TIMER0, CHANEL_TIMER0, MIN_DUTY_CICLE);
}

/**
 * @brief Updates the PWM duty cycle based on intensity
 * @param intensity Intensity percentage (0-100)
 * @details Converts intensity to a timer compare value and updates the duty cycle
 */
void UpdateTopSet(uint8_t lui_intensity)
{
	uint8_t dutyCycle = (lui_intensity * MAX_DUTY_CICLE) / PERCENT_BASE;
	TIMER_CompareSet(TIMER0, CHANEL_TIMER0, dutyCycle);
}

/**
 * @brief Handles periodic measurement scheduling using a software timer
 * @param updateDisplay Pointer to a flag indicating if the display should be updated
 * @details When the timer reaches the measurement interval, performs sensor readings and resets timer
 */
void HandleProblemThreeTimer(bool *lb_updateDisplay)
{
	if(rst_MeasurmentsTimer.periodicMesurmentTimer == MEASURING_TIME)
	{
		PerformMeasurments();
		*lb_updateDisplay = true;
		rst_MeasurmentsTimer.periodicMesurmentTimer = RESET_TIMER;
	}
	else
	{
		rst_MeasurmentsTimer.periodicMesurmentTimer += CICLE_TIME;
	}
}
