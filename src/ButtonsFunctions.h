#ifndef BUTTONS_H
#define BUTTONS_H

#include "init.h"
#include "em_gpio.h"
#include "bsp.h"
#include <stdbool.h>
#include <stdint.h>
#include "glib.h"
#include <string.h>

/* Constants for buttons */
#define NUM_BUTTONS 2 // Number of buttons
#define SHORT_PRESS_TIME 300 // Time needed for short press
#define LONG_PRESS_TIME 1000 // Time needed for long press
#define DOUBLE_PRESS_TIME 500 // Time needed for double press
#define TWO_BUTTONS_PRESSED_TIME 300 // Time needed for both buttons pressed
#define RESET_PRESSES 0 // Reset the presed counter
#define TWO_PRESSES 2
#define INCREMENTATION 1
#define PB0_PORT BSP_GPIO_PB0_PORT
#define PB1_PORT BSP_GPIO_PB1_PORT
#define PB0_PIN BSP_GPIO_PB0_PIN
#define PB1_PIN BSP_GPIO_PB1_PIN

/* Default atribution for buttons */
#define DEFAULT_BUTTON_STATE BUTTON_IDLE
#define DEFAULT_BUTTON_COUNTER_PRESS 0
#define DEFAULT_BUTTON_PRESS_TIME 0
#define DEFAULT_BUTTON_NOT_PRESS_TIME 0

typedef enum {
    PB0,
    PB1
} buttonNames;

typedef enum {
    BUTTON_IDLE,
    BUTTON_SHORT_PRESSED,
    BUTTON_LONG_PRESSED,
    BUTTON_DOUBLE_PRESSED
} ButtonPressedState;

typedef enum {
    BUTTON_PRESSED_TRUE,
    BUTTON_PRESSED_FALSE
} button_boolean_state;

typedef struct {
    GPIO_Port_TypeDef port;      // GPIO port of the button
    unsigned int pin;            // GPIO pin of the button
    ButtonPressedState state;    // Button state(on/off)
    uint8_t counterPress;        // Counter for the button presses for double press
    uint16_t pressedTimer;       // Button pressed time
    uint16_t notPressedTimer;    // Button not pressed time
} ButtonTracker;

/* Declaration of global variable */
extern ButtonTracker rst_buttons[NUM_BUTTONS];

/* Prototipes of functions */
bool DebounceButton(uint8_t lui_button);
bool longPress(uint8_t lui_button);
bool doublePress(uint8_t lui_button);
bool BothButtonsPressed(uint8_t lui_buttonOne, uint8_t lui_buttonTwo);
uint8_t SetButtonPressedState(uint8_t lui_button);
bool setReturnToMenuState(void);
void ButtonOneHandlerP1(void);
void ButtonTwoHandlerP1(void);
void ButtonOneHandlerMenu(void);
void ButtonTwoHandlerMenu(void);
void HandleButtonsPromblemThree(bool *updateDisplay);

#endif // BUTTONS_H
