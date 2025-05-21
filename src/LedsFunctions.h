#ifndef LEDS_H
#define LEDS_H

#include "init.h"
#include "em_gpio.h"
#include "bsp.h"
#include <stdbool.h>
#include <stdint.h>
#include "glib.h"
#include <string.h>

/* Constants for leds */
#define NUM_LEDS 2  // Number of leds
#define LED_ONE_FREQUENCY 1000 // Frequency for LED 1
#define LED_TWO_FREQUENCY 2000 // Frequency for LED 2
#define DEFAULT_STATE 0 // Default state for LEDs

typedef enum {
    LED0, // LED 0
    LED1  // LED 1
} ledNames;

typedef struct {
    bool State;             // LED state (on/off)
    bool isBlinking;        // LED blinking mode (on/off)
    uint16_t timer;         // LED state timer
    uint16_t frequency;     // LED frequency
} ledTracker;

/* Declaration of global variable */
extern ledTracker rst_leds[NUM_LEDS];

/* Prototipes of functions */
void ToggleLed(uint8_t led);
void FlashingLed(uint8_t led, uint16_t frequency);
void ResetLedsState();


#endif // LEDS_H
