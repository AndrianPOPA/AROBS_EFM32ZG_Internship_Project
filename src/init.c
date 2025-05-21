#include "../../STK3200_Arobs_Intership/src/init.h"
#include "../../STK3200_Arobs_Intership/src/DisplayFunctions.h"
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
#include "ButtonsFunctions.h"

/**
 * @brief SysTick interrupt handler
 * @details Increments the millisecond tick counter used for timing operations
 */
void SysTick_Handler(void)
{
  rui_msTicks++;       /* increment counter necessary in Delay()*/
}

/**
 * @brief Creates a delay for the specified number of milliseconds
 * @param dlyTicks Number of milliseconds to delay
 */
void Delay(uint32_t lui_dlyTicks)
{
  uint32_t lui_curTicks;
  lui_curTicks = rui_msTicks;
  while ((rui_msTicks - lui_curTicks) < lui_dlyTicks) ;
}

/**
 * @brief Initializes all hardware peripherals and system components
 * @details Sets up the system clock, display, GPIO buttons, timers, I2C,
 *          sleeptimer, Si1147 sensor, and capacitive sensing
 */
void InitSetup(void)
{
	/* Chip errata */
	CHIP_Init();
	BSP_LedsInit();
	I2CSPM_Init_TypeDef i2cInit = I2CSPM_INIT_DEFAULT;
	/* Setup SysTick Timer for 1 msec interrupts  */
	if (SysTick_Config(CMU_ClockFreqGet(cmuClock_CORE) / SYSTICK_FREQUENCY_HZ))
	{
		while (1) ;
	}
	/* Initialize the display module. */
	DISPLAY_Init();
	DMD_init(0);
	GLIB_contextInit(&rst_glibContext);
	/* Configure PB0 as input and enable interrupt  */
	GPIO_PinModeSet(BSP_GPIO_PB0_PORT, BSP_GPIO_PB0_PIN, gpioModeInputPull, HIGH);
	GPIO_IntConfig(BSP_GPIO_PB0_PORT, BSP_GPIO_PB0_PIN, false, true, true);
	// Configure PB1 as input and enable interrupt.
	GPIO_PinModeSet(BSP_GPIO_PB1_PORT, BSP_GPIO_PB1_PIN, gpioModeInputPull, HIGH);
	GPIO_IntConfig(BSP_GPIO_PB1_PORT, BSP_GPIO_PB1_PIN, false, true, true);
	setupTimer();
	/* Display menu */
	HandleDisplayMenu();
	/* Use LFXO for rtc used by the sleeptimer */
	CMU_ClockEnable(cmuClock_HFLE, true);
	CMU_ClockSelectSet(cmuClock_LFA, cmuSelect_LFXO);
	/* Initialize sleeptimer driver. */
	sl_sleeptimer_init();
	I2CSPM_Init(&i2cInit);
	Si1147_ConfigureDetection(I2C0, SI1147_ADDR, true);
	Si1147_SetInterruptOutputEnable(I2C0, SI1147_ADDR, true);
	/* Start capacitive sense buttons */
	CAPSENSE_Init();
	/* Enable gesture mode */
	enableGestureMode();
}


