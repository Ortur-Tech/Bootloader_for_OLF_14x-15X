/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "delay.h"
#include "key.h"
#include "hw_config.h"
#include "usb_lib.h"
#include "usb_desc.h"
#include "platform_config.h"
#include "usb_pwr.h"
#include "FAT16.h"
#include "serial_iap.h"

#include "stm32f10x_usart.h"

/** @addtogroup STM32F10x_StdPeriph_Template
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */


void Jump(uint32_t address)
{
    typedef void (*pFunction)(void);

    pFunction Jump_To_Application;
    int i;

    // Disable all interrupts
    for (i = 0; i < 8; i++)
        NVIC->ICER[i] = NVIC->IABR[i];
    //Disable IRQ Interrupts
     //__disable_irq();会导致旧固件有试用问题

    //BUG: 程序运行中切换中断向量表会造成程序跳转时引发错误
    // Set interrupt vector table
    //NVIC_SetVectorTable(NVIC_VectTab_FLASH, address-FLASH_BASE);

    // Set stack pointer as in application's vector table
    __set_MSP(*((volatile uint32_t*)address));

    // get jump address from application vector table
    // load this address into function pointer
    Jump_To_Application = (pFunction)(*(volatile uint32_t*)(address + 4));

    // Go
    Jump_To_Application();
}

// Force USB Reconnect
void reset_usb() {
    GPIO_InitTypeDef GPIO_InitStructure;

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);

    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;

    GPIO_Init(GPIOA, &GPIO_InitStructure);
    
    GPIO_ResetBits(GPIOA, GPIO_Pin_12);
}

void init_usb()
{
    NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
    USB_Interrupts_Config();
    Set_USBClock();
    USB_Init();
}

void Leds_init()
{
    //初始灯光
    GPIO_InitTypeDef GPIO_InitStructure;

    //NOTE:在主函数中执行
    //PB4 PB3 PA15默认用作调试口，如果用作普通的IO，需要加上以下两句
    //RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOA | RCC_APB2Periph_AFIO, ENABLE);
    //GPIO_PinRemapConfig(GPIO_Remap_SWJ_JTAGDisable, ENABLE);

#ifndef ORTUR_CNC_MODE
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA|RCC_APB2Periph_GPIOB, ENABLE);
    /*关闭限位开关的led*/
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0|GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_4;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	//默认灯光关闭
	GPIO_ResetBits(GPIOA, GPIO_Pin_0|GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_4);


    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOB, &GPIO_InitStructure);
    //默认灯光关闭
    GPIO_ResetBits(GPIOB, GPIO_Pin_3);
#else
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_14;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOA, &GPIO_InitStructure);
    GPIO_SetBits(GPIOA,GPIO_Pin_3);
    
    //默认灯光关闭
    GPIO_WriteBit(GPIOB, GPIO_Pin_3, Bit_RESET);
#endif
    
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_15;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOA, &GPIO_InitStructure);
    GPIO_ResetBits(GPIOA,GPIO_Pin_15);

    //默认灯光关闭
    GPIO_ResetBits(GPIOA, GPIO_Pin_15);
    
}

void Led_Off(void)
{
#ifndef ORTUR_CNC_MODE
	GPIO_ResetBits(GPIOB, GPIO_Pin_3);
#else
	GPIO_ResetBits(GPIOA, GPIO_Pin_14);
#endif
    GPIO_ResetBits(GPIOA, GPIO_Pin_15);
}

void Led_On(void)
{
#ifndef ORTUR_CNC_MODE
	GPIO_SetBits(GPIOB, GPIO_Pin_3);
#else
	GPIO_SetBits(GPIOA, GPIO_Pin_14);
#endif
	GPIO_SetBits(GPIOA, GPIO_Pin_15);
}

#if (DEBUG_LEVEL || USE_SERIAL_IAP)

#ifdef __GNUC__

#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)

PUTCHAR_PROTOTYPE
{

	while((USART1->SR&0X40)==0);//等待上一次串口数据发送完成
		USART1->DR = ch;      	//写DR,串口1将发送数据
	return ch;
}
#endif

void Usart1_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;

	USART_InitTypeDef USART_InitStruct;

	 NVIC_InitTypeDef NVIC_InitStructure;

	/*LED指示灯初始化，用来标志全部初始化完成*/

	/*串口端口初始化*/

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1,ENABLE);           //串口1时钟使能

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA,ENABLE);            //GPIOA时钟使能



	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_AF_PP;

	GPIO_InitStruct.GPIO_Pin = GPIO_Pin_9;

	GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;

	GPIO_Init(GPIOA,&GPIO_InitStruct);



	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN_FLOATING;

	GPIO_InitStruct.GPIO_Pin = GPIO_Pin_10;

	GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;

	GPIO_Init(GPIOA,&GPIO_InitStruct);


    NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority=3 ;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 3;        //
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;            //IRQ通道使能
    NVIC_Init(&NVIC_InitStructure);    //根据NVIC_InitStruct中指定的参数初始化外设NVIC寄存器USART1

	/*串口参数初始化*/

	USART_InitStruct.USART_BaudRate = 115200;

	USART_InitStruct.USART_WordLength = USART_WordLength_8b;

	USART_InitStruct.USART_StopBits = USART_StopBits_1;

	USART_InitStruct.USART_Parity = USART_Parity_No;

	USART_InitStruct.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;

	USART_InitStruct.USART_HardwareFlowControl = USART_HardwareFlowControl_None;

	USART_Init(USART1,&USART_InitStruct);

	USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);//开启中断

	USART_Cmd(USART1,ENABLE);

}

void Usart_SendData(uint8_t* data,uint16_t len)
{
	uint16_t i=0;
	while(i<len)
	{
		while((USART1->SR&0X40)==0);//等待上一次串口数据发送完成
		USART1->DR = (u8) data[i++];      	//写DR,串口1将发送数据
	}
}
#endif

void Soft_Reboot(void)
{
	__set_FAULTMASK(1);
	NVIC_SystemReset();
}
uint8_t update_result = 0;
uint8_t need_refresh = 0;
uint8_t update_mode = 0;
int main(void)
{
    /*!< At this stage the microcontroller clock setting is already configured, 
       this is done through SystemInit() function which is called from startup
       file (startup_stm32f10x_xx.s) before to branch to application main.
       To reconfigure the default setting of SystemInit() function, refer to
       system_stm32f10x.c file
     */
	uint8_t ret=0;
	uint32_t RebootCnt=0;
	//Enable IRQ Interrupts
	__enable_irq();
  
    //释放几个特殊引脚做IO用
    //PB4 PB3 PA15默认用作调试口，如果用作普通的IO，需要加上以下两句
	SystickConfig();
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOA | RCC_APB2Periph_AFIO, ENABLE);


#ifndef ORTUR_CNC_MODE
    GPIO_PinRemapConfig(GPIO_Remap_SWJ_JTAGDisable, ENABLE);//JTAG-DP Disabled and SW-DP Enabled
#else
    GPIO_PinRemapConfig(GPIO_Remap_SWJ_Disable, ENABLE);//Full SWJ Disabled (JTAG-DP + SW-DP)
#endif


    Key_GPIO_Config();
    Leds_init();
#if (DEBUG_LEVEL || USE_SERIAL_IAP)
    serial_DataInit();
    Usart1_Init();
#endif

    // Force USB Reconnect
    reset_usb();
    Delayms(10);
    
    //NOTE:CNC设备测试,暂时屏蔽升级功能
    // If ISP Key is not pressed, jump to user application
    if (Key_Scan() == KEY_OFF) //NOTE:交互按钮按下就进入固件升级模式
    {
    	Led_Off();
#if USE_SERIAL_IAP
    	update_mode = 1;
#else
        Jump(FLASH_START_ADDR);
#endif
        //NOTE:test jump to bootloader for sure
        //Jump(FLASH_BASE);
    }
#if USE_SERIAL_IAP
    serial_Iap(update_mode);
#endif
    init_usb();

    while (1)
    {
    	if(update_result == UR_SUCCESS)
    	{
    		/*升级完10s后重启*/
    		if((Get_SystemTicks()-RebootCnt)>10000)
    		{
				Soft_Reboot();
    		}
    	}
    	else
    	{
    		RebootCnt=Get_SystemTicks();
    	}

      if(update_result == UR_READY)
      {
        need_refresh = 0;
        GPIO_SetBits(GPIOB, GPIO_Pin_3);
        GPIO_ResetBits(GPIOA, GPIO_Pin_15);
        Delayms(100);
        GPIO_ResetBits(GPIOB, GPIO_Pin_3);
        GPIO_SetBits(GPIOA, GPIO_Pin_15);
        Delayms(100);
      }
      else if(update_result == UR_SUCCESS)
      {
        Led_On();
        
        if(need_refresh)
        {

          need_refresh = 0;

          //Delayms(1000);
          //reset_usb();
          //Delayms(10);
          //init_usb();
          //Device_Property.Reset();
        }
      }
      else if(update_result == UR_LARGE || update_result == UR_UNKOWN)
      {
        Led_On();
        Delayms(1000);
        Led_Off();
        Delayms(1000);
        
        if(need_refresh)
        {
          need_refresh = 0;
          //Device_Property.Reset();
          //reset_usb();
          //Delayms(10);
          //init_usb();
        }
      }
    }
}

#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
    /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\\r\\n", file, line) */
    //printf("\\033[1;40;41mERROR:Wrong parameters value: file %s on line %d\\033[0m\\r\\n", file, line)
        /* Infinite loop */
        while (1)
    {
    }
}
#endif



/**
  * @}
  */

/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
