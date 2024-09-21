
/*Ali Baki TÜRKÖZ
 * 20190701070*/

#include "main.h"

void SystemClock_Config(void);

void GPIO_Config()
{
	RCC->AHB1ENR = 0x00000008; /* AHB1'in clock hattı aktive edildi.*/

	GPIOD->MODER = 0x40000000; /* D portundaki 15. pin (mavi pin) aktive edildi*/
	GPIOD->OTYPER = 0x00000000; /* D portundaki bütün pinler push-pull olarak ayarlandı*/
	GPIOD->OSPEEDR = 0xC0000000; /* D portundaki 15. pin very high speed diğerleri low speed olarak ayarlandı.*/
	GPIOD->PUPDR = 0x00000000; /* D portundaki bütün pinler no pull olarak ayarlandı*/

}

void delay(uint32_t time) /*zamanın çalışması için bir delay fonksiyoru tanımlandı ve time adında 32 bitlik (168MHz old. için) bir değişken tanımlandı*/
{
	while(time--); /*time değişkenini 0 olana kadar azaltılıyor ve 0 olana kadar while döngüsünden çıkmaması sağlanıyor, böylece 1sn zaman aralığı tanımlamış oluyoruz.*/
}

int main(void)
{
	GPIO_Config();

	SystemClock_Config();

  while (1)
  {
    GPIOD->ODR = 0x00008000; /* D portundaki 15. pine bağlı led aktif duruma getirildi.*/
    /*delay(2050000);	*/	 /*yaklaşık 1sn bekleme süresi ayarlandı*/
    /*GPIOD->ODR = 0x00000000;*/ /*D portundaki tüm pinlere bağlı ledler pasif duruma geçirildi.*/
    /*delay(2050000);	*/	 /*yaklaşık 1sn bekleme süresi ayarlandı*/
  }

}


void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
