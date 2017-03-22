################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_assert.c \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_cmu.c \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_emu.c \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_gpio.c \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_int.c \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_lcd.c \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_system.c \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_timer.c \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_usart.c 

OBJS += \
./emlib/em_assert.o \
./emlib/em_cmu.o \
./emlib/em_emu.o \
./emlib/em_gpio.o \
./emlib/em_int.o \
./emlib/em_lcd.o \
./emlib/em_system.o \
./emlib/em_timer.o \
./emlib/em_usart.o 

C_DEPS += \
./emlib/em_assert.d \
./emlib/em_cmu.d \
./emlib/em_emu.d \
./emlib/em_gpio.d \
./emlib/em_int.d \
./emlib/em_lcd.d \
./emlib/em_system.d \
./emlib/em_timer.d \
./emlib/em_usart.d 


# Each subdirectory must supply rules for building sources it contributes
emlib/em_assert.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_assert.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"emlib/em_assert.d" -MT"emlib/em_assert.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_cmu.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_cmu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"emlib/em_cmu.d" -MT"emlib/em_cmu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_emu.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_emu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"emlib/em_emu.d" -MT"emlib/em_emu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_gpio.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"emlib/em_gpio.d" -MT"emlib/em_gpio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_int.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_int.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"emlib/em_int.d" -MT"emlib/em_int.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_lcd.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_lcd.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"emlib/em_lcd.d" -MT"emlib/em_lcd.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_system.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_system.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"emlib/em_system.d" -MT"emlib/em_system.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_timer.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_timer.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"emlib/em_timer.d" -MT"emlib/em_timer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_usart.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/src/em_usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"emlib/em_usart.d" -MT"emlib/em_usart.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


