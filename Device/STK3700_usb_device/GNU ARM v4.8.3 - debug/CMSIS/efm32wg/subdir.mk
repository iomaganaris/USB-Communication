################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Source/system_efm32wg.c 

S_UPPER_SRCS += \
D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Source/GCC/startup_efm32wg.S 

OBJS += \
./CMSIS/efm32wg/startup_efm32wg.o \
./CMSIS/efm32wg/system_efm32wg.o 

C_DEPS += \
./CMSIS/efm32wg/system_efm32wg.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/efm32wg/startup_efm32wg.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Source/GCC/startup_efm32wg.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Assembler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -c -x assembler-with-cpp -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" '-DSTK=1' '-DEFM32WG990F256=1' -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CMSIS/efm32wg/system_efm32wg.o: D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Source/system_efm32wg.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"CMSIS/efm32wg/system_efm32wg.d" -MT"CMSIS/efm32wg/system_efm32wg.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


