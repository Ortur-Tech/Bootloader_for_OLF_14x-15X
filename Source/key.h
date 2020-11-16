#ifndef __KEY_H__
#define	__KEY_H__

#include "main.h"

#ifndef ORTUR_CNC_MODE
#define KEY_RCC RCC_APB2Periph_GPIOC
#define KEY_PORT GPIOC
#define KEY_PIN GPIO_Pin_13
#else
#define KEY_RCC RCC_APB2Periph_GPIOB
#define KEY_PORT GPIOB
#define KEY_PIN GPIO_Pin_9
#endif

#define KEY_ON	1
#define KEY_OFF	0

void Key_GPIO_Config(void);
u8 Key_Scan(void);

#endif /* __LED_H */

