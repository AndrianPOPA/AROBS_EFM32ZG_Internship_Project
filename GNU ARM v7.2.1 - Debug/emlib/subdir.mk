################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_acmp.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_adc.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_assert.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_cmu.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_core.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_emu.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_gpio.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_i2c.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_leuart.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_rtc.c \
../emlib/em_timer.c \
D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_usart.c 

OBJS += \
./emlib/em_acmp.o \
./emlib/em_adc.o \
./emlib/em_assert.o \
./emlib/em_cmu.o \
./emlib/em_core.o \
./emlib/em_emu.o \
./emlib/em_gpio.o \
./emlib/em_i2c.o \
./emlib/em_leuart.o \
./emlib/em_rtc.o \
./emlib/em_timer.o \
./emlib/em_usart.o 

C_DEPS += \
./emlib/em_acmp.d \
./emlib/em_adc.d \
./emlib/em_assert.d \
./emlib/em_cmu.d \
./emlib/em_core.d \
./emlib/em_emu.d \
./emlib/em_gpio.d \
./emlib/em_i2c.d \
./emlib/em_leuart.d \
./emlib/em_rtc.d \
./emlib/em_timer.d \
./emlib/em_usart.d 


# Each subdirectory must supply rules for building sources it contributes
emlib/em_acmp.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_acmp.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_acmp.d" -MT"emlib/em_acmp.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_adc.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_adc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_adc.d" -MT"emlib/em_adc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_assert.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_assert.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_assert.d" -MT"emlib/em_assert.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_cmu.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_cmu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_cmu.d" -MT"emlib/em_cmu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_core.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_core.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_core.d" -MT"emlib/em_core.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_emu.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_emu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_emu.d" -MT"emlib/em_emu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_gpio.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_gpio.d" -MT"emlib/em_gpio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_i2c.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_i2c.d" -MT"emlib/em_i2c.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_leuart.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_leuart.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_leuart.d" -MT"emlib/em_leuart.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_rtc.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_rtc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_rtc.d" -MT"emlib/em_rtc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_timer.o: ../emlib/em_timer.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_timer.d" -MT"emlib/em_timer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_usart.o: D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/src/em_usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32ZG222F32=1' -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/service/sleeptimer/src" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/common/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//app/mcu_example/EFM32ZG_STK3200/weatherstation" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/EFM32ZG_STK3200/config" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/CMSIS/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/emlib/inc" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/bsp" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//hardware/kit/common/drivers" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/Device/SiliconLabs/EFM32ZG/Include" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/glib" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd" -I"D:/Simplicity/developer/sdks/gecko_sdk_suite/v2.7//platform/middleware/glib/dmd/ssd2119" -Os -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_usart.d" -MT"emlib/em_usart.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


