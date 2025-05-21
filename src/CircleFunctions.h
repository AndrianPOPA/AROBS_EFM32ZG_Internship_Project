#ifndef SRC_CIRCLEFUNCTIONS_H_
#define SRC_CIRCLEFUNCTIONS_H_

#include "em_gpio.h"
#include "bsp.h"
#include <stdbool.h>
#include <stdint.h>
#include "glib.h"
#include <string.h>

#define INITIAL_DIRECTION CIRCLE_IDLE
#define INITIAL_X CENTER_X // Default center X
#define INITIAL_Y CENTER_Y // Default center Y

#define DISTANCE_SCALE_DIVISOR 10 // Scale divisor for circle distance
#define DISTANCE_SCALE_OFFSET 20  // Offset for scaled circle distance

#define CIRCLE_DISTANCE_MOOVING 1 // Circle movement step

typedef enum
{
	CIRCLE_IDLE,
	CIRCLE_LEFT,
	CIRCLE_LEFT_UP,
	CIRCLE_LEFT_DOWN,
	CIRCLE_RIGHT,
	CIRCLE_RIGHT_UP,
	CIRCLE_RIGHT_DOWN,
	CIRCLE_UP,
	CIRCLE_DOWN
} circle_mooving_direction;

typedef struct
{
	circle_mooving_direction Direction; // Current movement direction
	uint16_t x_positiont;               // Current X position
	uint16_t y_positiont;               // Current Y position
	uint16_t radius;                    // Circle radius
} CirclePosition;

/* Global variable for tracking the circle position */
extern CirclePosition rst_Circle;

/* Prototypes */
void InitCircle();
bool Check_X_Position_Left();
bool Check_X_Position_Right();
bool Check_Y_Position_Up();
bool Check_Y_Position_Down();
void setCircleDirection();
void UpdatingCirclePosition();

#endif /* SRC_CIRCLEFUNCTIONS_H_ */
