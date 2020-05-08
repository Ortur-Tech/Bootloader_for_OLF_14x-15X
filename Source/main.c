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

    // variable that will be loaded with the start address of the application
    vu32 *JumpAddress;
    const vu32 *ApplicationAddress = (vu32 *)address;

    // get jump address from application vector table
    JumpAddress = (vu32 *)ApplicationAddress[1];

    // load this address into function pointer
    Jump_To_Application = (pFunction)JumpAddress;

    // Disable all interrupts
    int i;
    for (i = 0; i < 8; i++)
        NVIC->ICER[i] = NVIC->IABR[i];

    // Set interrupt vector table
    NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x4000);

    // Set stack pointer as in application's vector table
    __set_MSP((u32)(ApplicationAddress[0]));

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

    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOB, &GPIO_InitStructure);
    GPIO_SetBits(GPIOB,GPIO_Pin_3);

    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_15;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOA, &GPIO_InitStructure);
    GPIO_ResetBits(GPIOA,GPIO_Pin_15);

    //默认灯光关闭
    GPIO_WriteBit(GPIOB, GPIO_Pin_3, Bit_RESET);
    GPIO_WriteBit(GPIOA, GPIO_Pin_15, Bit_RESET);
}

void Led_Off(void)
{
    GPIO_WriteBit(GPIOB, GPIO_Pin_3, Bit_RESET);
    GPIO_WriteBit(GPIOA, GPIO_Pin_15, Bit_RESET);
}

void Led_On(void)
{
    GPIO_WriteBit(GPIOB, GPIO_Pin_3, Bit_SET);
    GPIO_WriteBit(GPIOA, GPIO_Pin_15, Bit_SET);
}

uint8_t update_result = 0;
uint8_t need_refresh = 0;

int main(void)
{
    /*!< At this stage the microcontroller clock setting is already configured, 
       this is done through SystemInit() function which is called from startup
       file (startup_stm32f10x_xx.s) before to branch to application main.
       To reconfigure the default setting of SystemInit() function, refer to
       system_stm32f10x.c file
     */
  
    //释放几个特殊引脚做IO用
    //PB4 PB3 PA15默认用作调试口，如果用作普通的IO，需要加上以下两句
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOA | RCC_APB2Periph_AFIO, ENABLE);
    GPIO_PinRemapConfig(GPIO_Remap_SWJ_JTAGDisable, ENABLE);
  
    Key_GPIO_Config();
    Leds_init();
    
    // Force USB Reconnect
    reset_usb();
    Delayms(10);
    
    // If ISP Key is not pressed, jump to user application
    if (Key_Scan() == KEY_OFF) //NOTE:交互按钮按下就进入固件升级模式
    {
        Jump(FLASH_START_ADDR);
    }

    init_usb();

    while (1)
    {
      if(update_result == UR_READY)
      {
        need_refresh = 0;
        Led_On();
        Delayms(100);
        Led_Off();
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
    printf("\\033[1;40;41mERROR:Wrong parameters value: file %s on line %d\\033[0m\\r\\n", file, line)
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
