################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/capsense.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/display.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/displayls013b7dh03.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/displaypalemlib.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/i2cspm.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/si1147_i2c.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/si114x_algorithm.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/si114x_functions.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/si7013.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/udelay.c 

OBJS += \
./Drivers/capsense.o \
./Drivers/display.o \
./Drivers/displayls013b7dh03.o \
./Drivers/displaypalemlib.o \
./Drivers/i2cspm.o \
./Drivers/si1147_i2c.o \
./Drivers/si114x_algorithm.o \
./Drivers/si114x_functions.o \
./Drivers/si7013.o \
./Drivers/udelay.o 

C_DEPS += \
./Drivers/capsense.d \
./Drivers/display.d \
./Drivers/displayls013b7dh03.d \
./Drivers/displaypalemlib.d \
./Drivers/i2cspm.d \
./Drivers/si1147_i2c.d \
./Drivers/si114x_algorithm.d \
./Drivers/si114x_functions.d \
./Drivers/si7013.d \
./Drivers/udelay.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/capsense.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/capsense.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Drivers/capsense.d" -MT"Drivers/capsense.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/display.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/display.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Drivers/display.d" -MT"Drivers/display.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/displayls013b7dh03.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/displayls013b7dh03.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Drivers/displayls013b7dh03.d" -MT"Drivers/displayls013b7dh03.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/displaypalemlib.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/displaypalemlib.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Drivers/displaypalemlib.d" -MT"Drivers/displaypalemlib.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/i2cspm.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/i2cspm.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Drivers/i2cspm.d" -MT"Drivers/i2cspm.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/si1147_i2c.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/si1147_i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Drivers/si1147_i2c.d" -MT"Drivers/si1147_i2c.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/si114x_algorithm.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/si114x_algorithm.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Drivers/si114x_algorithm.d" -MT"Drivers/si114x_algorithm.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/si114x_functions.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/si114x_functions.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Drivers/si114x_functions.d" -MT"Drivers/si114x_functions.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/si7013.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/si7013.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Drivers/si7013.d" -MT"Drivers/si7013.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/udelay.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers/udelay.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Drivers/udelay.d" -MT"Drivers/udelay.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


