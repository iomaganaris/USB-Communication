################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/callbacks.c \
../src/main_stk.c 

OBJS += \
./src/callbacks.o \
./src/main_stk.o 

C_DEPS += \
./src/callbacks.d \
./src/main_stk.d 


# Each subdirectory must supply rules for building sources it contributes
src/callbacks.o: ../src/callbacks.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"src/callbacks.d" -MT"src/callbacks.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/main_stk.o: ../src/main_stk.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb '-DSTK=1' '-DEFM32WG990F256=1' -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/an/an0065_efm32_usb_device/src" -I"C:\Users\G\SimplicityStudio\v3_workspace\STK3700_usb_device\src_inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/emlib/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/CMSIS/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/usb/inc" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/Device/SiliconLabs/EFM32WG/Include" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/drivers" -I"D:/Programms/SiliconLabs/SimplicityStudio/v3/developer/sdks/efm32/v2/kits/common/bsp" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -std=c99 -MMD -MP -MF"src/main_stk.d" -MT"src/main_stk.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


