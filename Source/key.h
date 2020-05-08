#ifndef __KEY_H__
#define	__KEY_H__

#include "main.h"

#define KEY_RCC RCC_APB2Periph_GPIOC
#define KEY_PORT GPIOC
#define KEY_PIN GPIO_Pin_13

#define KEY_ON	1
#define KEY_OFF	0

void Key_GPIO_Config(void);
u8 Key_Scan(void);

#endif /* __LED_H */

