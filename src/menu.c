#include "display.h"
#include "retargettextdisplay.h"
#include "em_device.h"
#include <stdint.h>
#include "em_chip.h"
#include "em_cmu.h"
#include "bsp.h"
#include "glib.h"
#include "capsense.h"
#include "si114x_algorithm.h"
#include "i2cspm.h"
#include "../../STK3200_Arobs_Intership/src/init.h"
#include "../../STK3200_Arobs_Intership/src/ButtonsFunctions.h"
#include "../../STK3200_Arobs_Intership/src/DisplayFunctions.h"
#include "../../STK3200_Arobs_Intership/src/TimerFunctions.h"
#include "../../STK3200_Arobs_Intership/src/SensorsFunctions.h"

int main(void)
{
	/* Initialization of drivers */
	InitSetup();

	while (1)
	{
		/* Handle the change of the buttons */
		ButtonOneHandlerMenu();
		ButtonTwoHandlerMenu();

		/* Software filter for debounce time */
		Delay(CICLE_TIME);
	}
}




