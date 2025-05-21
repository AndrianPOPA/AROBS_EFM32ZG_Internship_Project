#ifndef SRC_TIMERFUNCTIONS_H_
#define SRC_TIMERFUNCTIONS_H_

#include "init.h"
#include "em_gpio.h"
#include "bsp.h"
#include <stdbool.h>
#include <stdint.h>
#include "glib.h"
#include <string.h>

#define PORT_A gpioPortA          // Define GPIO port A
#define CHANEL_TIMER0 0           // Timer channel 0
#define PIN_0 0                   // Pin 0
#define OUT_LOW 0                 // Low output state

#define MAX_DUTY_CICLE 10        // Maximum duty cycle
#define MIN_DUTY_CICLE 0         // Minimum duty cycle
#define MEASURING_TIME 300       // Time between measurements in ms
#define RESET_TIMER 0            // Timer reset value
#define PERCENT_BASE 100         // Base percentage for calculations

typedef struct
{
	uint16_t periodicMesurmentTimer; // Timer for periodic measurements
} MeasurmentsTimerTracker;

/* Global variables for measurement timer and milliseconds ticks */
extern MeasurmentsTimerTracker rst_MeasurmentsTimer;
extern volatile uint32_t msTicks;

/* Function prototypes */
void setupTimer(void);
void UpdateTopSet(uint8_t intensity);
void HandleProblemThreeTimer(bool *updateDisplay);


#endif /* SRC_TIMERFUNCTIONS_H_ */
