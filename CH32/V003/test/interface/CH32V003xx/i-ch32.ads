--
--  Copyright (C) 2026, AdaCore
--

--  This spec has been automatically generated from CH32V003xx.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  CH32V00xxx View File
package Interfaces.CH32 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   --------------------
   -- Base addresses --
   --------------------

   PWR_Base : constant System.Address := System'To_Address (16#40007000#);
   RCC_Base : constant System.Address := System'To_Address (16#40021000#);
   EXTEND_Base : constant System.Address := System'To_Address (16#40023800#);
   GPIOA_Base : constant System.Address := System'To_Address (16#40010800#);
   GPIOC_Base : constant System.Address := System'To_Address (16#40011000#);
   GPIOD_Base : constant System.Address := System'To_Address (16#40011400#);
   AFIO_Base : constant System.Address := System'To_Address (16#40010000#);
   EXTI_Base : constant System.Address := System'To_Address (16#40010400#);
   DMA1_Base : constant System.Address := System'To_Address (16#40020000#);
   IWDG_Base : constant System.Address := System'To_Address (16#40003000#);
   WWDG_Base : constant System.Address := System'To_Address (16#40002C00#);
   TIM1_Base : constant System.Address := System'To_Address (16#40012C00#);
   TIM2_Base : constant System.Address := System'To_Address (16#40000000#);
   I2C1_Base : constant System.Address := System'To_Address (16#40005400#);
   SPI1_Base : constant System.Address := System'To_Address (16#40013000#);
   USART1_Base : constant System.Address := System'To_Address (16#40013800#);
   ADC1_Base : constant System.Address := System'To_Address (16#40012400#);
   DBG_Base : constant System.Address := System'To_Address (16#E000D000#);
   ESIG_Base : constant System.Address := System'To_Address (16#1FFFF7E0#);
   FLASH_Base : constant System.Address := System'To_Address (16#40022000#);
   PFIC_Base : constant System.Address := System'To_Address (16#E000E000#);

end Interfaces.CH32;
