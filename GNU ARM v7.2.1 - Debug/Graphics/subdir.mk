################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/dmd/display/dmd_display.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_bitmap.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_circle.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_font_narrow_6x8.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_font_normal_8x8.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_font_number_16x20.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_line.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_polygon.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_rectangle.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_string.c 

OBJS += \
./Graphics/dmd_display.o \
./Graphics/glib.o \
./Graphics/glib_bitmap.o \
./Graphics/glib_circle.o \
./Graphics/glib_font_narrow_6x8.o \
./Graphics/glib_font_normal_8x8.o \
./Graphics/glib_font_number_16x20.o \
./Graphics/glib_line.o \
./Graphics/glib_polygon.o \
./Graphics/glib_rectangle.o \
./Graphics/glib_string.o 

C_DEPS += \
./Graphics/dmd_display.d \
./Graphics/glib.d \
./Graphics/glib_bitmap.d \
./Graphics/glib_circle.d \
./Graphics/glib_font_narrow_6x8.d \
./Graphics/glib_font_normal_8x8.d \
./Graphics/glib_font_number_16x20.d \
./Graphics/glib_line.d \
./Graphics/glib_polygon.d \
./Graphics/glib_rectangle.d \
./Graphics/glib_string.d 


# Each subdirectory must supply rules for building sources it contributes
Graphics/dmd_display.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/dmd/display/dmd_display.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Graphics/dmd_display.d" -MT"Graphics/dmd_display.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Graphics/glib.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Graphics/glib.d" -MT"Graphics/glib.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Graphics/glib_bitmap.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_bitmap.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Graphics/glib_bitmap.d" -MT"Graphics/glib_bitmap.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Graphics/glib_circle.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_circle.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Graphics/glib_circle.d" -MT"Graphics/glib_circle.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Graphics/glib_font_narrow_6x8.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_font_narrow_6x8.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Graphics/glib_font_narrow_6x8.d" -MT"Graphics/glib_font_narrow_6x8.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Graphics/glib_font_normal_8x8.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_font_normal_8x8.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Graphics/glib_font_normal_8x8.d" -MT"Graphics/glib_font_normal_8x8.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Graphics/glib_font_number_16x20.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_font_number_16x20.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Graphics/glib_font_number_16x20.d" -MT"Graphics/glib_font_number_16x20.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Graphics/glib_line.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_line.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Graphics/glib_line.d" -MT"Graphics/glib_line.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Graphics/glib_polygon.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_polygon.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Graphics/glib_polygon.d" -MT"Graphics/glib_polygon.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Graphics/glib_rectangle.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_rectangle.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Graphics/glib_rectangle.d" -MT"Graphics/glib_rectangle.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Graphics/glib_string.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/middleware/glib/glib/glib_string.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"Graphics/glib_string.d" -MT"Graphics/glib_string.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


