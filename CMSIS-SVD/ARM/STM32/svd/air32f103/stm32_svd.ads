--  This spec has been automatically generated from AIR32F103xx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  AIR32F103xx
package STM32_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   FSMC_Base : constant System.Address := System'To_Address (16#A0000000#);
   PWR_Base : constant System.Address := System'To_Address (16#40007000#);
   RCC_Base : constant System.Address := System'To_Address (16#40021000#);
   GPIOA_Base : constant System.Address := System'To_Address (16#40010800#);
   GPIOB_Base : constant System.Address := System'To_Address (16#40010C00#);
   GPIOC_Base : constant System.Address := System'To_Address (16#40011000#);
   GPIOD_Base : constant System.Address := System'To_Address (16#40011400#);
   GPIOE_Base : constant System.Address := System'To_Address (16#40011800#);
   GPIOF_Base : constant System.Address := System'To_Address (16#40011C00#);
   GPIOG_Base : constant System.Address := System'To_Address (16#40012000#);
   AFIO_Base : constant System.Address := System'To_Address (16#40010000#);
   EXTI_Base : constant System.Address := System'To_Address (16#40010400#);
   DMA1_Base : constant System.Address := System'To_Address (16#40020000#);
   DMA2_Base : constant System.Address := System'To_Address (16#40020400#);
   SDIO_Base : constant System.Address := System'To_Address (16#40018000#);
   RTC_Base : constant System.Address := System'To_Address (16#40002800#);
   BKP_Base : constant System.Address := System'To_Address (16#40006C04#);
   IWDG_Base : constant System.Address := System'To_Address (16#40003000#);
   WWDG_Base : constant System.Address := System'To_Address (16#40002C00#);
   TIM1_Base : constant System.Address := System'To_Address (16#40012C00#);
   TIM8_Base : constant System.Address := System'To_Address (16#40013400#);
   TIM2_Base : constant System.Address := System'To_Address (16#40000000#);
   TIM3_Base : constant System.Address := System'To_Address (16#40000400#);
   TIM4_Base : constant System.Address := System'To_Address (16#40000800#);
   TIM5_Base : constant System.Address := System'To_Address (16#40000C00#);
   TIM9_Base : constant System.Address := System'To_Address (16#40014C00#);
   TIM12_Base : constant System.Address := System'To_Address (16#40001800#);
   TIM10_Base : constant System.Address := System'To_Address (16#40015000#);
   TIM11_Base : constant System.Address := System'To_Address (16#40015400#);
   TIM13_Base : constant System.Address := System'To_Address (16#40001C00#);
   TIM14_Base : constant System.Address := System'To_Address (16#40002000#);
   TIM6_Base : constant System.Address := System'To_Address (16#40001000#);
   TIM7_Base : constant System.Address := System'To_Address (16#40001400#);
   I2C1_Base : constant System.Address := System'To_Address (16#40005400#);
   I2C2_Base : constant System.Address := System'To_Address (16#40005800#);
   SPI1_Base : constant System.Address := System'To_Address (16#40013000#);
   SPI2_Base : constant System.Address := System'To_Address (16#40003800#);
   SPI3_Base : constant System.Address := System'To_Address (16#40003C00#);
   USART1_Base : constant System.Address := System'To_Address (16#40013800#);
   USART2_Base : constant System.Address := System'To_Address (16#40004400#);
   USART3_Base : constant System.Address := System'To_Address (16#40004800#);
   ADC1_Base : constant System.Address := System'To_Address (16#40012400#);
   ADC2_Base : constant System.Address := System'To_Address (16#40012800#);
   ADC3_Base : constant System.Address := System'To_Address (16#40013C00#);
   CAN_Base : constant System.Address := System'To_Address (16#40006400#);
   DAC_Base : constant System.Address := System'To_Address (16#40007400#);
   DBG_Base : constant System.Address := System'To_Address (16#E0042000#);
   UART4_Base : constant System.Address := System'To_Address (16#40004C00#);
   UART5_Base : constant System.Address := System'To_Address (16#40005000#);
   CRC_Base : constant System.Address := System'To_Address (16#40023000#);
   FLASH_Base : constant System.Address := System'To_Address (16#40022000#);
   NVIC_Base : constant System.Address := System'To_Address (16#E000E000#);
   USB_Base : constant System.Address := System'To_Address (16#40005C00#);

end STM32_SVD;
