#ifndef __MAIN_H__
#define __MAIN_H__

#include "stm32f10x.h"
#include <stdio.h>


#define USE_SERIAL_IAP 1
#define UART_UPDATE_WAIT_TIME 500 //ms
#define DEBUG_LEVEL 0X00
/*调试等级*/
typedef enum{
    LOG_DEBUG=1,
    LOG_INFO=2,
    LOG_WARN=4,
    LOG_ERROR=8,
    LOG_FATAL=16,
	LOG_IMP_INFO=32,
}LogLevel;


#define mprintf(level,format,...)  ((level&DEBUG_LEVEL)?printf(format,##__VA_ARGS__):0)



//ģʽ�л�
//#define ORTUR_CNC_MODE
//#define ORTUR_LASER_MODE

#define LED_RCC RCC_APB2Periph_GPIOB
#define LED_PORT GPIOB
#define LED_PIN GPIO_Pin_3

#define LED_OFF() GPIOC->BRR  = LED_PIN
#define LED_ON()  GPIOC->BSRR = LED_PIN

//NOTE:�̼��������
#define UR_READY 0
#define UR_SUCCESS 1
#define UR_LARGE 2
#define UR_UNKOWN 3

extern uint8_t update_result;
extern uint8_t need_refresh;
void Jump(uint32_t address);
void Usart_SendData(uint8_t* data,uint16_t len);
#endif
