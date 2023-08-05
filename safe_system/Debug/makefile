################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
safe_system2.lss \

FLASH_IMAGE += \
safe_system2.hex \

EEPROM_IMAGE += \
safe_system2.eep \

SIZEDUMMY += \
sizedummy \


# All Target
all: safe_system2.elf secondary-outputs

# Tool invocations
safe_system2.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,safe_system2.map -mmcu=atmega32 -o "safe_system2.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

safe_system2.lss: safe_system2.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S safe_system2.elf  >"safe_system2.lss"
	@echo 'Finished building: $@'
	@echo ' '

safe_system2.hex: safe_system2.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex safe_system2.elf  "safe_system2.hex"
	@echo 'Finished building: $@'
	@echo ' '

safe_system2.eep: safe_system2.elf
	@echo 'Create eeprom image (ihex format)'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex safe_system2.elf  "safe_system2.eep"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: safe_system2.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega32 safe_system2.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(ASM_DEPS)$(EEPROM_IMAGE)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(LSS)$(C_DEPS) safe_system2.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents

-include ../makefile.targets
