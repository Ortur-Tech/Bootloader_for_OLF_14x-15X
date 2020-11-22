################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/FAT16.c \
../Src/delay.c \
../Src/key.c \
../Src/main.c \
../Src/stm32f10x_it.c \
../Src/stmflash.c \
../Src/syscalls.c \
../Src/sysmem.c 

OBJS += \
./Src/FAT16.o \
./Src/delay.o \
./Src/key.o \
./Src/main.o \
./Src/stm32f10x_it.o \
./Src/stmflash.o \
./Src/syscalls.o \
./Src/sysmem.o 

C_DEPS += \
./Src/FAT16.d \
./Src/delay.d \
./Src/key.d \
./Src/main.d \
./Src/stm32f10x_it.d \
./Src/stmflash.d \
./Src/syscalls.d \
./Src/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Src/FAT16.o: ../Src/FAT16.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/FAT16.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Src/delay.o: ../Src/delay.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/delay.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Src/key.o: ../Src/key.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/key.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Src/main.o: ../Src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/main.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Src/stm32f10x_it.o: ../Src/stm32f10x_it.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/stm32f10x_it.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Src/stmflash.o: ../Src/stmflash.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/stmflash.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Src/syscalls.o: ../Src/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/syscalls.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Src/sysmem.o: ../Src/sysmem.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/sysmem.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

