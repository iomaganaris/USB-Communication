################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers/retargetio.c \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers/retargetserial.c \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers/segmentlcd.c 

OBJS += \
./Drivers/retargetio.o \
./Drivers/retargetserial.o \
./Drivers/segmentlcd.o 

C_DEPS += \
./Drivers/retargetio.d \
./Drivers/retargetserial.d \
./Drivers/segmentlcd.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/retargetio.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers/retargetio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"Drivers/retargetio.d" -MT"Drivers/retargetio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/retargetserial.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers/retargetserial.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"Drivers/retargetserial.d" -MT"Drivers/retargetserial.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/segmentlcd.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers/segmentlcd.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"Drivers/segmentlcd.d" -MT"Drivers/segmentlcd.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


