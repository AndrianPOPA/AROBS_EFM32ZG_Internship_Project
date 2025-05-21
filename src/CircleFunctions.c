#include "../../STK3200_Arobs_Intership/src/CircleFunctions.h"
#include "../../STK3200_Arobs_Intership/src/TimerFunctions.h"
#include "../../STK3200_Arobs_Intership/src/DisplayFunctions.h"


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
 * Global variable storing circle position and state
 */
CirclePosition rst_Circle = {0};

/**
 * @brief Initializes the circle to default values
 */
void InitCircle()
{
	/* Set initial direction and position */
	rst_Circle.Direction = INITIAL_DIRECTION;
	rst_Circle.x_positiont = INITIAL_X;
	rst_Circle.y_positiont = INITIAL_Y;
}

/**
 * @brief Checks if circle has reached the left border
 * @return false if circle has reached the border, true otherwise
 */
bool Check_X_Position_Left()
{
	bool ret_reachedBorderState = true;
	/* Check if circle's left edge is at or beyond left border */
	if(rst_Circle.x_positiont-rst_Circle.radius <= MIN_X)
	{
		ret_reachedBorderState = false;
	}
	else
	{
		/* MISRA */
	}
	return ret_reachedBorderState;
}

/**
 * @brief Checks if circle has reached the right border
 * @return false if circle has reached the border, true otherwise
 */
bool Check_X_Position_Right()
{
	bool ret_reachedBorderState = true;
	/* Check if circle's right edge is at or beyond right border */
	if(rst_Circle.x_positiont+rst_Circle.radius >= MAX_X)
	{
		ret_reachedBorderState = false;
	}
	else
	{
		/* MISRA */
	}
	return ret_reachedBorderState;
}

/**
 * @brief Checks if circle has reached the upper border
 * @return false if circle has reached the border, true otherwise
 */
bool Check_Y_Position_Up()
{
	bool ret_reachedBorderState = true;
	/* Check if circle's top edge is at or beyond upper border */
	if(rst_Circle.y_positiont - rst_Circle.radius <= MIN_Y)
	{
		ret_reachedBorderState = false;
	}
	else
	{
		/* MISRA */
	}
	return ret_reachedBorderState;
}

/**
 * @brief Checks if circle has reached the bottom border
 * @return false if circle has reached the border, true otherwise
 */
bool Check_Y_Position_Down()
{
	bool ret_reachedBorderState = true;
	/* Check if circle's bottom edge is at or beyond bottom border */
	if(rst_Circle.y_positiont + rst_Circle.radius >= MAX_Y)
	{
		ret_reachedBorderState = false;
	}
	else
	{
		/* MISRA */
	}
	return ret_reachedBorderState;
}

/**
 * @brief Sets the circle's direction based on gesture input
 * Maintains current direction and adds new component or changes direction
 */
void setCircleDirection()
{
	/* Default gesture is NONE */
	gesture_t len_gestureInput = NONE;
	/* Get new gesture input from proximity sensor */
	len_gestureInput = Si1147_NewSample(I2C0, SI1147_ADDR, rui_msTicks);

	/* Process gesture input to update circle direction */
	if (len_gestureInput != NONE)
	{
		/* Process UP gesture */
		if (len_gestureInput == UP)
		{
			if (rst_Circle.Direction == CIRCLE_RIGHT)
			{
				rst_Circle.Direction = CIRCLE_RIGHT_UP;
			}
			else if (rst_Circle.Direction == CIRCLE_LEFT)
			{
				rst_Circle.Direction = CIRCLE_LEFT_UP;
			}
			else if (rst_Circle.Direction == CIRCLE_LEFT_DOWN)
			{
				rst_Circle.Direction = CIRCLE_LEFT_UP;
			}
			else if (rst_Circle.Direction == CIRCLE_RIGHT_DOWN)
			{
				rst_Circle.Direction = CIRCLE_RIGHT_UP;
			}
			else
			{
				rst_Circle.Direction = CIRCLE_UP;
			}
		}
		/* Process DOWN gesture */
		else if (len_gestureInput == DOWN)
		{
			if (rst_Circle.Direction == CIRCLE_RIGHT)
			{
				rst_Circle.Direction = CIRCLE_RIGHT_DOWN;
			}
			else if (rst_Circle.Direction == CIRCLE_RIGHT_UP)
			{
				rst_Circle.Direction = CIRCLE_RIGHT_DOWN;
			}
			else if (rst_Circle.Direction == CIRCLE_LEFT)
			{
				rst_Circle.Direction = CIRCLE_LEFT_DOWN;
			}
			else if (rst_Circle.Direction == CIRCLE_LEFT_UP)
			{
				rst_Circle.Direction = CIRCLE_LEFT_DOWN;
			}
			else
			{
				rst_Circle.Direction = CIRCLE_DOWN;
			}

		}
		/* Process LEFT gesture */
		else if (len_gestureInput == LEFT)
		{
			if (rst_Circle.Direction == CIRCLE_UP)
			{
				rst_Circle.Direction = CIRCLE_LEFT_UP;
			}
			else if (rst_Circle.Direction == CIRCLE_DOWN)
			{
				rst_Circle.Direction = CIRCLE_LEFT_DOWN;
			}
			else if (rst_Circle.Direction == CIRCLE_RIGHT_DOWN)
			{
				rst_Circle.Direction = CIRCLE_LEFT_DOWN;
			}
			else if (rst_Circle.Direction == CIRCLE_RIGHT_UP)
			{
				rst_Circle.Direction = CIRCLE_LEFT_UP;
			}
			else
			{
				rst_Circle.Direction = CIRCLE_LEFT;
			}
		}
		/* Process RIGHT gesture */
		else if (len_gestureInput == RIGHT)
		{
			if (rst_Circle.Direction ==CIRCLE_DOWN)
			{
				rst_Circle.Direction = CIRCLE_RIGHT_DOWN;
			}
			else if (rst_Circle.Direction == CIRCLE_UP)
			{
				rst_Circle.Direction = CIRCLE_RIGHT_UP;
			}
			else if (rst_Circle.Direction == CIRCLE_LEFT_UP)
			{
				rst_Circle.Direction = CIRCLE_RIGHT_UP;
			}
			else if (rst_Circle.Direction == CIRCLE_LEFT_DOWN)
			{
				rst_Circle.Direction = CIRCLE_RIGHT_DOWN;
			}
			else
			{
				rst_Circle.Direction = CIRCLE_RIGHT;
			}
		}
		else
		{
			/* MISRA */
		}
	}
	else
	{
		/* MISRA */
	}
}

/**
 * @brief Updates the circle position based on current direction
 * Checks boundaries and stops movement if border is reached
 */
void UpdatingCirclePosition()
{
	/* Update position based on current direction */
	switch (rst_Circle.Direction)
	{
		case CIRCLE_RIGHT_UP:
			/* Move diagonally up-right if possible */
			if (Check_X_Position_Right() && Check_Y_Position_Up())
			{
				rst_Circle.x_positiont += CIRCLE_DISTANCE_MOOVING;
				rst_Circle.y_positiont -= CIRCLE_DISTANCE_MOOVING;
			}
			else
			{
				/* Stop if border reached */
				rst_Circle.Direction = CIRCLE_IDLE;
			}
			break;
		case CIRCLE_RIGHT:
			/* Move right if possible */
			if (Check_X_Position_Right())
			{
				rst_Circle.x_positiont += CIRCLE_DISTANCE_MOOVING;
			}
			else
			{
				/* Stop if border reached */
				rst_Circle.Direction = CIRCLE_IDLE;
			}
			break;
		case CIRCLE_RIGHT_DOWN:
			/* Move diagonally down-right if possible */
			if (Check_X_Position_Right() && Check_Y_Position_Down())
			{
				rst_Circle.x_positiont += CIRCLE_DISTANCE_MOOVING;
				rst_Circle.y_positiont += CIRCLE_DISTANCE_MOOVING;
			}
			else
			{
				/* Stop if border reached */
				rst_Circle.Direction = CIRCLE_IDLE;
			}
			break;
		case CIRCLE_DOWN:
			/* Move down if possible */
			if (Check_Y_Position_Down())
			{
				rst_Circle.y_positiont += CIRCLE_DISTANCE_MOOVING;
			}
			else
			{
				/* Stop if border reached */
				rst_Circle.Direction = CIRCLE_IDLE;
			}
			break;
		case CIRCLE_LEFT_DOWN:
			/* Move diagonally down-left if possible */
			if (Check_X_Position_Left() && Check_Y_Position_Down())
			{
				rst_Circle.x_positiont -= CIRCLE_DISTANCE_MOOVING;
				rst_Circle.y_positiont += CIRCLE_DISTANCE_MOOVING;
			}
			else
			{
				/* Stop if border reached */
				rst_Circle.Direction = CIRCLE_IDLE;
			}
			break;
		case CIRCLE_LEFT:
			/* Move left if possible */
			if (Check_X_Position_Left())
			{
				rst_Circle.x_positiont -= CIRCLE_DISTANCE_MOOVING;
			}
			else
			{
				/* Stop if border reached */
				rst_Circle.Direction = CIRCLE_IDLE;
			}
			break;
		case CIRCLE_LEFT_UP:
			/* Move diagonally up-left if possible */
			if (Check_X_Position_Left() && Check_Y_Position_Up())
			{
				rst_Circle.x_positiont -= CIRCLE_DISTANCE_MOOVING;
				rst_Circle.y_positiont -= CIRCLE_DISTANCE_MOOVING;
			}
			else
			{
				/* Stop if border reached */
				rst_Circle.Direction = CIRCLE_IDLE;
			}
			break;
		case CIRCLE_UP:
			/* Move up if possible */
			if (Check_Y_Position_Up())
			{
				rst_Circle.y_positiont -= CIRCLE_DISTANCE_MOOVING;
			}
			else
			{
				/* Stop if border reached */
				rst_Circle.Direction = CIRCLE_IDLE;
			}
			break;
		case CIRCLE_IDLE:
			/* Circle is not moving */
			break;
	}
}
