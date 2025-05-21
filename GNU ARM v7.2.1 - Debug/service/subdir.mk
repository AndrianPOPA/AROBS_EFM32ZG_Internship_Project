################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../service/sl_sleeptimer.c \
../service/sl_sleeptimer_hal_rtc.c 

OBJS += \
./service/sl_sleeptimer.o \
./service/sl_sleeptimer_hal_rtc.o 

C_DEPS += \
./service/sl_sleeptimer.d \
./service/sl_sleeptimer_hal_rtc.d 


# Each subdirectory must supply rules for building sources it contributes
service/sl_sleeptimer.o: ../service/sl_sleeptimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"service/sl_sleeptimer.d" -MT"service/sl_sleeptimer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

service/sl_sleeptimer_hal_rtc.o: ../service/sl_sleeptimer_hal_rtc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"service/sl_sleeptimer_hal_rtc.d" -MT"service/sl_sleeptimer_hal_rtc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


