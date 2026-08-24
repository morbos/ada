--  This spec has been automatically generated from STM32C011.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  STM32C011
package STM32_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   ADC_Base : constant System.Address := System'To_Address (16#40012400#);
   CRC_Base : constant System.Address := System'To_Address (16#40023000#);
   DBG_Base : constant System.Address := System'To_Address (16#40015800#);
   DMA_Base : constant System.Address := System'To_Address (16#40020000#);
   DMAMUX_Base : constant System.Address := System'To_Address (16#40020800#);
   EXTI_Base : constant System.Address := System'To_Address (16#40021800#);
   FLASH_Base : constant System.Address := System'To_Address (16#40022000#);
   GPIOA_Base : constant System.Address := System'To_Address (16#50000000#);
   GPIOB_Base : constant System.Address := System'To_Address (16#50000400#);
   GPIOC_Base : constant System.Address := System'To_Address (16#50000800#);
   GPIOD_Base : constant System.Address := System'To_Address (16#50000C00#);
   GPIOF_Base : constant System.Address := System'To_Address (16#50001400#);
   I2C1_Base : constant System.Address := System'To_Address (16#40005400#);
   IWDG_Base : constant System.Address := System'To_Address (16#40003000#);
   PWR_Base : constant System.Address := System'To_Address (16#40007000#);
   RCC_Base : constant System.Address := System'To_Address (16#40021000#);
   RTC_Base : constant System.Address := System'To_Address (16#40002800#);
   SPI1_Base : constant System.Address := System'To_Address (16#40013000#);
   SYSCFG_Base : constant System.Address := System'To_Address (16#40010000#);
   TIM1_Base : constant System.Address := System'To_Address (16#40012C00#);
   TIM3_Base : constant System.Address := System'To_Address (16#40000400#);
   TIM14_Base : constant System.Address := System'To_Address (16#40002000#);
   TIM16_Base : constant System.Address := System'To_Address (16#40014400#);
   TIM17_Base : constant System.Address := System'To_Address (16#40014800#);
   USART1_Base : constant System.Address := System'To_Address (16#40013800#);
   USART2_Base : constant System.Address := System'To_Address (16#40004400#);
   WWDG_Base : constant System.Address := System'To_Address (16#40002C00#);

end STM32_SVD;
