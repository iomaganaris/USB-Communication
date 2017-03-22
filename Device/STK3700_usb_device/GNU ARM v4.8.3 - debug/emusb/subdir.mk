################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/src/em_usbd.c \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/src/em_usbdch9.c \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/src/em_usbdep.c \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/src/em_usbdint.c \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/src/em_usbhal.c \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/src/em_usbtimer.c 

OBJS += \
./emusb/em_usbd.o \
./emusb/em_usbdch9.o \
./emusb/em_usbdep.o \
./emusb/em_usbdint.o \
./emusb/em_usbhal.o \
./emusb/em_usbtimer.o 

C_DEPS += \
./emusb/em_usbd.d \
./emusb/em_usbdch9.d \
./emusb/em_usbdep.d \
./emusb/em_usbdint.d \
./emusb/em_usbhal.d \
./emusb/em_usbtimer.d 


# Each subdirectory must supply rules for building sources it contributes
emusb/em_usbd.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/src/em_usbd.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"emusb/em_usbd.d" -MT"emusb/em_usbd.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emusb/em_usbdch9.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/src/em_usbdch9.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"emusb/em_usbdch9.d" -MT"emusb/em_usbdch9.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emusb/em_usbdep.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/src/em_usbdep.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"emusb/em_usbdep.d" -MT"emusb/em_usbdep.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emusb/em_usbdint.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/src/em_usbdint.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"emusb/em_usbdint.d" -MT"emusb/em_usbdint.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emusb/em_usbhal.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/src/em_usbhal.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"emusb/em_usbhal.d" -MT"emusb/em_usbhal.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emusb/em_usbtimer.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/src/em_usbtimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"emusb/em_usbtimer.d" -MT"emusb/em_usbtimer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


