#ifndef INIT_H
#define INIT_H

#include "em_gpio.h"
#include "bsp.h"
#include <stdbool.h>
#include <stdint.h>
#include "glib.h"
#include <string.h>

#define CICLE_TIME 10 // Time step in ms
#define HIGH 1
#define SYSTICK_FREQUENCY_HZ 1000 // 1 ms tick rate

volatile uint32_t rui_msTicks; // Counts 1ms system ticks

/* Prototypes */
void SysTick_Handler(void);
void Delay(uint32_t dlyTicks);
void InitSetup(void);


#endif // INIT_H
