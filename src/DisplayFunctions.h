#ifndef SRC_DISPLAYFUNCTIONS_H_
#define SRC_DISPLAYFUNCTIONS_H_

#include "init.h"
#include "em_gpio.h"
#include "bsp.h"
#include <stdbool.h>
#include <stdint.h>
#include "glib.h"
#include <string.h>

/* Center of display */
#define CENTER_X (rst_glibContext.pDisplayGeometry->xSize / 2)
#define CENTER_Y (rst_glibContext.pDisplayGeometry->ySize / 2)

/* Display limits */
#define MAX_X (rst_glibContext.pDisplayGeometry->xSize)
#define MAX_Y (rst_glibContext.pDisplayGeometry->ySize)
#define MIN_X 0
#define MIN_Y 0

/* Font size */
#define GLIB_FONT_WIDTH   (rst_glibContext.font.fontWidth + rst_glibContext.font.charSpacing)
#define GLIB_FONT_HEIGHT  (rst_glibContext.font.fontHeight)

/* General increment */
#define INCREMENTATION 1

/* Erase area */
#define MIN_X_ERASE 85
#define MIN_Y_ERASE 20
#define MAX_X_ERASE 124
#define MAX_Y_ERASE 28

/* Display default values */
#define OPACITY_DEFAULT 0
#define POZITION_DEFAULT 5
#define IDENTATION_EXTRA_SMALL 5
#define IDENTATION_SMALL 10
#define IDENTATION_LARGE 15

/* Display coordinates for intensity */
#define INTENSITY_X 85
#define INTENSITY_Y 20

/* Spacing for lines */
#define X_SPACING_LEFT_LINE 0
#define Y_SPACING_LINE 47

/* Spacing for set values */
#define X_SPACING_LEFT_SET 25
#define X_SPACING_RIGHT_SET 76
#define X_SPACING_LEFT_TEMP 20
#define X_SPACING_RIGHT_HIST 73
#define X_SPACING_LEFT_MESURMENT 20
#define X_SPACING_RIGHT_MESURMENT 76

/* Spacing for temperature and hysteresis lines */
#define X_SPACING_LEFT_SET_TEMP_LINE 18
#define X_SPACING_RIGHT_SET_TEMP_LINE 53
#define X_SPACING_LEFT_SET_HIST_LINE 71
#define X_SPACING_RIGHT_SET_HIST_LINE 105

/* Measurement scaling */
#define RH_SCALING_FACTOR      1000
#define TEMP_INTEGER_DIVISOR   10
#define TEMP_DECIMAL_MODULO    10

/* Global display buffer */
#define STR_LEN 48
extern char rch_str[STR_LEN];

/* Global GLIB context and erase rectangle */
extern GLIB_Context_t rst_glibContext;
extern GLIB_Rectangle_t rst_Erase;

/* Prototypes */
void HandleDisplayMenu();
void HandleDiplayProblemOne();
void HandleDiplayIntensityProblemTwo(char lch_intensity);
void HandleDiplayProblemTwo();
void HandleDiplayProblemThree(bool *updateDisplay);
void HandleDiplayProblemFour();


#endif /* SRC_DISPLAYFUNCTIONS_H_ */
