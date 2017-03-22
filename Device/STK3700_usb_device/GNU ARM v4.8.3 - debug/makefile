################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include emusb/subdir.mk
-include emlib/subdir.mk
-include Drivers/subdir.mk
-include CMSIS/efm32wg/subdir.mk
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
all: STK3700_usb_device.axf

# Tool invocations
STK3700_usb_device.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -T "STK3700_usb_device.ld" -Xlinker --gc-sections -Xlinker -Map="STK3700_usb_device.map" -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -o STK3700_usb_device.axf "./src/callbacks.o" "./src/main_stk.o" "./emusb/em_usbd.o" "./emusb/em_usbdch9.o" "./emusb/em_usbdep.o" "./emusb/em_usbdint.o" "./emusb/em_usbhal.o" "./emusb/em_usbtimer.o" "./emlib/em_assert.o" "./emlib/em_cmu.o" "./emlib/em_emu.o" "./emlib/em_gpio.o" "./emlib/em_int.o" "./emlib/em_lcd.o" "./emlib/em_system.o" "./emlib/em_timer.o" "./emlib/em_usart.o" "./Drivers/retargetio.o" "./Drivers/retargetserial.o" "./Drivers/segmentlcd.o" "./CMSIS/efm32wg/startup_efm32wg.o" "./CMSIS/efm32wg/system_efm32wg.o" -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: STK3700_usb_device.hex'
	arm-none-eabi-objcopy -O ihex "STK3700_usb_device.axf" "STK3700_usb_device.hex"
	@echo ' '

	@echo 'Building bin file: STK3700_usb_device.bin'
	arm-none-eabi-objcopy -O binary "STK3700_usb_device.axf" "STK3700_usb_device.bin"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "STK3700_usb_device.axf"
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES) STK3700_usb_device.axf
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
