################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS/system_stm32f10x.c 

OBJS += \
./CMSIS/system_stm32f10x.o 

C_DEPS += \
./CMSIS/system_stm32f10x.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/system_stm32f10x.o: ../CMSIS/system_stm32f10x.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"CMSIS/system_stm32f10x.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

