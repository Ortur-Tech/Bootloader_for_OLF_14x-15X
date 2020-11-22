################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../USB_Core/usb_core.c \
../USB_Core/usb_init.c \
../USB_Core/usb_int.c \
../USB_Core/usb_mem.c \
../USB_Core/usb_regs.c 

OBJS += \
./USB_Core/usb_core.o \
./USB_Core/usb_init.o \
./USB_Core/usb_int.o \
./USB_Core/usb_mem.o \
./USB_Core/usb_regs.o 

C_DEPS += \
./USB_Core/usb_core.d \
./USB_Core/usb_init.d \
./USB_Core/usb_int.d \
./USB_Core/usb_mem.d \
./USB_Core/usb_regs.d 


# Each subdirectory must supply rules for building sources it contributes
USB_Core/usb_core.o: ../USB_Core/usb_core.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"USB_Core/usb_core.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
USB_Core/usb_init.o: ../USB_Core/usb_init.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"USB_Core/usb_init.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
USB_Core/usb_int.o: ../USB_Core/usb_int.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"USB_Core/usb_int.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
USB_Core/usb_mem.o: ../USB_Core/usb_mem.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"USB_Core/usb_mem.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
USB_Core/usb_regs.o: ../USB_Core/usb_regs.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"USB_Core/usb_regs.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

