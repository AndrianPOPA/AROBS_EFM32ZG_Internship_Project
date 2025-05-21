#ifndef SRC_PROBLEMSFUNCTIONS_H_
#define SRC_PROBLEMSFUNCTIONS_H_

#include "em_gpio.h"
#include "bsp.h"
#include <stdbool.h>
#include <stdint.h>
#include "glib.h"
#include <string.h>

#define MAX_INTENCITY 100 // Maximum intensity value
#define MIN_INTENCITY 0   // Minimum intensity value
#define ITERATION_INTENCITY 25 // Intensity iteration step

#define ITERATION_SETTED_TEMP 5 // Temperature set iteration step
#define ITERATION_SETTED_HIST 5 // Hysteresis set iteration step

#define MAX_HIST 25  // Maximum hysteresis value
#define MIN_HIST 0    // Minimum hysteresis value

#define MAX_SET_TEMP 400 // Maximum set temperature value
#define MIN_SET_TEMP 0   // Minimum set temperature value

typedef enum
{
    PROBLEM_1, // Problem 1
    PROBLEM_2, // Problem 2
    PROBLEM_3, // Problem 3
    PROBLEM_4, // Problem 4
    NUM_PROBLEMS // Total number of problems
} ProblemState;

/* Global variable to track current problem state */
extern ProblemState ren_currentProblem;

/* Prototypes for problem handlers */
void Problem_One();
void Problem_Two();
void Problem_Three();
void Problem_Four();


#endif /* SRC_PROBLEMSFUNCTIONS_H_ */
