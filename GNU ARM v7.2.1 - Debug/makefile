################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include service/subdir.mk
-include emlib/subdir.mk
-include Graphics/subdir.mk
-include Drivers/subdir.mk
-include CMSIS/EFM32ZG/subdir.mk
-include BSP/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: STK3200_Arobs_Intership.axf

# Tool invocations
STK3200_Arobs_Intership.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -T "STK3200_Arobs_Intership.ld" -Xlinker --gc-sections -Xlinker -Map="STK3200_Arobs_Intership.map" --specs=nano.specs -o STK3200_Arobs_Intership.axf "./BSP/bsp_bcc.o" "./BSP/bsp_stk.o" "./BSP/bsp_stk_leds.o" "./CMSIS/EFM32ZG/startup_efm32zg.o" "./CMSIS/EFM32ZG/system_efm32zg.o" "./Drivers/capsense.o" "./Drivers/display.o" "./Drivers/displayls013b7dh03.o" "./Drivers/displaypalemlib.o" "./Drivers/i2cspm.o" "./Drivers/si1147_i2c.o" "./Drivers/si114x_algorithm.o" "./Drivers/si114x_functions.o" "./Drivers/si7013.o" "./Drivers/udelay.o" "./Graphics/dmd_display.o" "./Graphics/glib.o" "./Graphics/glib_bitmap.o" "./Graphics/glib_circle.o" "./Graphics/glib_font_narrow_6x8.o" "./Graphics/glib_font_normal_8x8.o" "./Graphics/glib_font_number_16x20.o" "./Graphics/glib_line.o" "./Graphics/glib_polygon.o" "./Graphics/glib_rectangle.o" "./Graphics/glib_string.o" "./emlib/em_acmp.o" "./emlib/em_adc.o" "./emlib/em_assert.o" "./emlib/em_cmu.o" "./emlib/em_core.o" "./emlib/em_emu.o" "./emlib/em_gpio.o" "./emlib/em_i2c.o" "./emlib/em_leuart.o" "./emlib/em_rtc.o" "./emlib/em_timer.o" "./emlib/em_usart.o" "./service/sl_sleeptimer.o" "./service/sl_sleeptimer_hal_rtc.o" "./src/ButtonsFunctions.o" "./src/CapsenseFunctions.o" "./src/CircleFunctions.o" "./src/DisplayFunctions.o" "./src/LedsFunctions.o" "./src/ProblemsFunctions.o" "./src/SensorsFunctions.o" "./src/TimerFunctions.o" "./src/init.o" "./src/menu.o" -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: STK3200_Arobs_Intership.hex'
	arm-none-eabi-objcopy -O ihex "STK3200_Arobs_Intership.axf" "STK3200_Arobs_Intership.hex"
	@echo ' '

	@echo 'Building bin file: STK3200_Arobs_Intership.bin'
	arm-none-eabi-objcopy -O binary "STK3200_Arobs_Intership.axf" "STK3200_Arobs_Intership.bin"
	@echo ' '

	@echo 'Building s37 file: STK3200_Arobs_Intership.s37'
	arm-none-eabi-objcopy -O srec "STK3200_Arobs_Intership.axf" "STK3200_Arobs_Intership.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "STK3200_Arobs_Intership.axf" -A
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) STK3200_Arobs_Intership.axf
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
