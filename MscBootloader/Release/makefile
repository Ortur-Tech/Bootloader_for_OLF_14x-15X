################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include USB_Core/subdir.mk
-include USB_Config/subdir.mk
-include Startup/subdir.mk
-include Src/subdir.mk
-include Drivers/StdPeriph_Driver/src/subdir.mk
-include CMSIS/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
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
EXECUTABLES += \
LaserMscBootloader.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
LaserMscBootloader.list \

OBJCOPY_BIN += \
LaserMscBootloader.bin \


# All Target
all: LaserMscBootloader.elf secondary-outputs

# Tool invocations
LaserMscBootloader.elf: $(OBJS) $(USER_OBJS) E:\STM32CubeIDEWorkSpace\LaserMscBootloader\STM32F103C8TX_FLASH.ld
	arm-none-eabi-gcc -o "LaserMscBootloader.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"E:\STM32CubeIDEWorkSpace\LaserMscBootloader\STM32F103C8TX_FLASH.ld" --specs=nosys.specs -Wl,-Map="LaserMscBootloader.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

LaserMscBootloader.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "LaserMscBootloader.list"
	@echo 'Finished building: $@'
	@echo ' '

LaserMscBootloader.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "LaserMscBootloader.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
