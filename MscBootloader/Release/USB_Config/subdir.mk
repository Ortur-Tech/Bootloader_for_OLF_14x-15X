################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../USB_Config/hw_config.c \
../USB_Config/mass_mal.c \
../USB_Config/memory.c \
../USB_Config/scsi_data.c \
../USB_Config/usb_bot.c \
../USB_Config/usb_desc.c \
../USB_Config/usb_endp.c \
../USB_Config/usb_istr.c \
../USB_Config/usb_prop.c \
../USB_Config/usb_pwr.c \
../USB_Config/usb_scsi.c 

OBJS += \
./USB_Config/hw_config.o \
./USB_Config/mass_mal.o \
./USB_Config/memory.o \
./USB_Config/scsi_data.o \
./USB_Config/usb_bot.o \
./USB_Config/usb_desc.o \
./USB_Config/usb_endp.o \
./USB_Config/usb_istr.o \
./USB_Config/usb_prop.o \
./USB_Config/usb_pwr.o \
./USB_Config/usb_scsi.o 

C_DEPS += \
./USB_Config/hw_config.d \
./USB_Config/mass_mal.d \
./USB_Config/memory.d \
./USB_Config/scsi_data.d \
./USB_Config/usb_bot.d \
./USB_Config/usb_desc.d \
./USB_Config/usb_endp.d \
./USB_Config/usb_istr.d \
./USB_Config/usb_prop.d \
./USB_Config/usb_pwr.d \
./USB_Config/usb_scsi.d 


# Each subdirectory must supply rules for building sources it contributes
USB_Config/hw_config.o: ../USB_Config/hw_config.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"USB_Config/hw_config.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
USB_Config/mass_mal.o: ../USB_Config/mass_mal.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"USB_Config/mass_mal.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
USB_Config/memory.o: ../USB_Config/memory.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"USB_Config/memory.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
USB_Config/scsi_data.o: ../USB_Config/scsi_data.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"USB_Config/scsi_data.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
USB_Config/usb_bot.o: ../USB_Config/usb_bot.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"USB_Config/usb_bot.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
USB_Config/usb_desc.o: ../USB_Config/usb_desc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"USB_Config/usb_desc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
USB_Config/usb_endp.o: ../USB_Config/usb_endp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"USB_Config/usb_endp.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
USB_Config/usb_istr.o: ../USB_Config/usb_istr.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"USB_Config/usb_istr.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
USB_Config/usb_prop.o: ../USB_Config/usb_prop.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"USB_Config/usb_prop.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
USB_Config/usb_pwr.o: ../USB_Config/usb_pwr.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"USB_Config/usb_pwr.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
USB_Config/usb_scsi.o: ../USB_Config/usb_scsi.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/CMSIS" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/Src" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Config" -I"E:/STM32CubeIDEWorkSpace/LaserMscBootloader/USB_Core" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"USB_Config/usb_scsi.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

