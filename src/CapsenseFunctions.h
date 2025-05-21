#ifndef CAPSENSEFUNCTIONS_H
#define CAPSENSEFUNCTIONS_H

#include "init.h"
#include "em_gpio.h"
#include "bsp.h"
#include <stdbool.h>
#include <stdint.h>
#include "glib.h"
#include <string.h>

/* Constants for capsense buttons */
#define NUM_CAPSENSE 2 // Number of Capsense buttons
#define NEW_CAPSENSE_INPUT_INTERVAL 300 // Interval to reset the timer

typedef enum
{
	CAP0,
	CAP1
} CapsenseNames;

typedef struct
{
	uint8_t chanel;        // Channel of the capsense button
    uint8_t time_pressed;  // Time the button has been pressed
} CapsenseTracker;

typedef enum
{
	NO_CAPSENSE_PRESSED,
	CAP0_PRESSED,
	CAP1_PRESSED
} CapsenseState;

/* Global capsense tracker for each button */
extern CapsenseTracker rst_CapsenseButtons[NUM_CAPSENSE];

/* Prototypes */
CapsenseState setCapsensePressed();
void HandleCpasenseButtonsProblemTwo(bool *updateDisplay, uint8_t *i);
void HandleCpasenseButtonsProblemThree(bool *updateDisplay);

#endif /* SRC_CAPSENSEFUNCTIONS_H_ */
