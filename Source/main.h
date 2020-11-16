#ifndef __MAIN_H__
#define __MAIN_H__

#include "stm32f10x.h"
#include <stdio.h>

//模式切换
#define ORTUR_CNC_MODE
//#define ORTUR_LASER_MODE

#define LED_RCC RCC_APB2Periph_GPIOB
#define LED_PORT GPIOB
#define LED_PIN GPIO_Pin_3

#define LED_OFF() GPIOC->BRR  = LED_PIN
#define LED_ON()  GPIOC->BSRR = LED_PIN

//NOTE:固件升级结果
#define UR_READY 0
#define UR_SUCCESS 1
#define UR_LARGE 2
#define UR_UNKOWN 3

extern uint8_t update_result;
extern uint8_t need_refresh;
#endif
