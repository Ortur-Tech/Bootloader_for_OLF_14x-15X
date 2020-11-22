################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/StdPeriph_Driver/src/misc.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_adc.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_bkp.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_can.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_cec.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_crc.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_dac.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_dbgmcu.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_dma.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_exti.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_flash.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_fsmc.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_gpio.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_i2c.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_iwdg.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_pwr.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_rcc.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_rtc.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_sdio.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_spi.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_tim.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_usart.c \
../Drivers/StdPeriph_Driver/src/stm32f10x_wwdg.c 

OBJS += \
./Drivers/StdPeriph_Driver/src/misc.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_adc.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_bkp.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_can.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_cec.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_crc.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_dac.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_dbgmcu.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_dma.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_exti.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_flash.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_fsmc.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_gpio.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_i2c.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_iwdg.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_pwr.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_rcc.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_rtc.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_sdio.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_spi.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_tim.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_usart.o \
./Drivers/StdPeriph_Driver/src/stm32f10x_wwdg.o 

C_DEPS += \
./Drivers/StdPeriph_Driver/src/misc.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_adc.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_bkp.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_can.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_cec.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_crc.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_dac.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_dbgmcu.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_dma.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_exti.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_flash.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_fsmc.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_gpio.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_i2c.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_iwdg.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_pwr.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_rcc.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_rtc.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_sdio.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_spi.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_tim.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_usart.d \
./Drivers/StdPeriph_Driver/src/stm32f10x_wwdg.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/StdPeriph_Driver/src/misc.o: ../Drivers/StdPeriph_Driver/src/misc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/misc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_adc.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_adc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_adc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_bkp.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_bkp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_bkp.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_can.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_can.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_can.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_cec.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_cec.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_cec.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_crc.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_crc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_crc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_dac.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_dac.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_dac.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_dbgmcu.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_dbgmcu.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_dbgmcu.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_dma.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_dma.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_dma.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_exti.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_exti.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_exti.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_flash.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_flash.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_flash.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_fsmc.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_fsmc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_fsmc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_gpio.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_gpio.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_gpio.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_i2c.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_i2c.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_i2c.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_iwdg.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_iwdg.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_iwdg.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_pwr.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_pwr.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_pwr.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_rcc.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_rcc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_rcc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_rtc.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_rtc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_rtc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_sdio.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_sdio.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_sdio.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_spi.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_spi.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_spi.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_tim.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_tim.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_tim.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_usart.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_usart.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_usart.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/StdPeriph_Driver/src/stm32f10x_wwdg.o: ../Drivers/StdPeriph_Driver/src/stm32f10x_wwdg.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -c -I../Inc -I"E:/MyGit/LaserMscBootloader/CMSIS" -I"E:/MyGit/LaserMscBootloader/Drivers/StdPeriph_Driver/inc" -I"E:/MyGit/LaserMscBootloader/USB_Config" -I"E:/MyGit/LaserMscBootloader/USB_Core" -I"E:/MyGit/LaserMscBootloader/Src" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/StdPeriph_Driver/src/stm32f10x_wwdg.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

