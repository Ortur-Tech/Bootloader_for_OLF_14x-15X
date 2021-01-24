/*---------------------------------
延时模块函数
说明：只需在工程中加入delay.c和delay.h
文件，即可用 Delayms(__IO uint32_t nTime)；
Delayus(__IO uint32_t nTime)
-----------------------------------*/
#include"delay.h"
#include "serial_iap.h"




static __IO uint32_t SystemTicks;

/*1ms产生一次中断*/
void SystickConfig(void)
{
	SysTick_Config(SystemCoreClock/1000);
}

/* Private function prototypes -----------------------------------------------*/
/*---------------------------------
函数名：ms延时函数 
描 述：参数1即为1ms，1000即为1s；只有几
us的误差；
-----------------------------------*/
void Delayms(__IO uint32_t nTime) 
{ 
	uint32_t temp=SystemTicks;
	while((SystemTicks-temp)<nTime);
}
/*---------------------------------
函数名：us延时函数 
描 述：参数1即为1us，1000即为1ms；只有几
us的误差；
-----------------------------------*/
void Delayus(__IO uint32_t nTime)
{ 
	__IO uint32_t Delay = nTime * 72 / 8;//(SystemCoreClock / 8U / 1000000U)
	//见stm32f1xx_hal_rcc.c -- static void RCC_Delay(uint32_t mdelay)
	do
	{
		__NOP();
	}
	while (Delay --);
}

void Soft_Delayms(uint32_t n)
{
	Delayus(n*1000);
}
/*---------------------------------
函数名：systick的中断函数 
描 述：参数1即为1us，1000即为1ms；只有几
us的误差；
-----------------------------------*/
void SysTick_Handler(void)
{
	SystemTicks++;
	rec_TimeCheck();
}

uint32_t Get_SystemTicks(void)
{
	return SystemTicks;
}



