--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.DBGMCU is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype DBGMCU_IDC_DEV_ID_Field is Interfaces.Bit_Types.UInt12;
   subtype DBGMCU_IDC_MAJOR_REV_ID_Field is Interfaces.Bit_Types.UInt16;

   --  DBGMCU identity code register
   type DBGMCU_IDC_Register is record
      --  Read-only. Device identifier
      DEV_ID         : DBGMCU_IDC_DEV_ID_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Revision
      MAJOR_REV_ID   : DBGMCU_IDC_MAJOR_REV_ID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_IDC_Register use record
      DEV_ID         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MAJOR_REV_ID   at 0 range 16 .. 31;
   end record;

   --  DBGMCU configuration register
   type DBGMCU_CR_Register is record
      --  Debug enable in Sleep mode
      DBG_SLEEP     : Boolean := False;
      --  Debug enable in Stop mode
      DBG_STOP      : Boolean := False;
      --  Debug enable in Standby mode
      DBG_STANDBY   : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Cortex-M0+ debug interface selection
      DBG_SWD_SEL_N : Boolean := True;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_CR_Register use record
      DBG_SLEEP     at 0 range 0 .. 0;
      DBG_STOP      at 0 range 1 .. 1;
      DBG_STANDBY   at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DBG_SWD_SEL_N at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  DBGMCU configuration register CPU1
   type DBGMCU_CRA35_Register is record
      --  IWDG1 behavior when secure debug is enabled
      WDFZCTL        : Boolean := False;
      --  STGEN behavior when debug is enabled
      DBG_STGEN_STOP : Boolean := False;
      --  unspecified
      Reserved_2_31  : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_CRA35_Register use record
      WDFZCTL        at 0 range 0 .. 0;
      DBG_STGEN_STOP at 0 range 1 .. 1;
      Reserved_2_31  at 0 range 2 .. 31;
   end record;

   --  DBGMCU AHB2 - lowest part - peripheral freeze register CPU1
   type DBGMCU_AHB2LFZ_Register is record
      --  HPDMA1_CHn suspend in debug
      DBG_HPDMA1_CH0_STOP  : Boolean := False;
      --  HPDMA1_CHn suspend in debug
      DBG_HPDMA1_CH1_STOP  : Boolean := False;
      --  HPDMA1_CHn suspend in debug
      DBG_HPDMA1_CH2_STOP  : Boolean := False;
      --  HPDMA1_CHn suspend in debug
      DBG_HPDMA1_CH3_STOP  : Boolean := False;
      --  HPDMA1_CHn suspend in debug
      DBG_HPDMA1_CH4_STOP  : Boolean := False;
      --  HPDMA1_CHn suspend in debug
      DBG_HPDMA1_CH5_STOP  : Boolean := False;
      --  HPDMA1_CHn suspend in debug
      DBG_HPDMA1_CH6_STOP  : Boolean := False;
      --  HPDMA1_CHn suspend in debug
      DBG_HPDMA1_CH7_STOP  : Boolean := False;
      --  HPDMA1_CHn suspend in debug
      DBG_HPDMA1_CH8_STOP  : Boolean := False;
      --  HPDMA1_CHn suspend in debug
      DBG_HPDMA1_CH9_STOP  : Boolean := False;
      --  HPDMA1_CHn suspend in debug
      DBG_HPDMA1_CH10_STOP : Boolean := False;
      --  HPDMA1_CHn suspend in debug
      DBG_HPDMA1_CH11_STOP : Boolean := False;
      --  HPDMA1_CHn suspend in debug
      DBG_HPDMA1_CH12_STOP : Boolean := False;
      --  HPDMA1_CHn suspend in debug
      DBG_HPDMA1_CH13_STOP : Boolean := False;
      --  HPDMA1_CHn suspend in debug
      DBG_HPDMA1_CH14_STOP : Boolean := False;
      --  HPDMA1_CHn suspend in debug
      DBG_HPDMA1_CH15_STOP : Boolean := False;
      --  HPDMA2_CHn suspend in debug
      DBG_HPDMA2_CH0_STOP  : Boolean := False;
      --  HPDMA2_CHn suspend in debug
      DBG_HPDMA2_CH1_STOP  : Boolean := False;
      --  HPDMA2_CHn suspend in debug
      DBG_HPDMA2_CH2_STOP  : Boolean := False;
      --  HPDMA2_CHn suspend in debug
      DBG_HPDMA2_CH3_STOP  : Boolean := False;
      --  HPDMA2_CHn suspend in debug
      DBG_HPDMA2_CH4_STOP  : Boolean := False;
      --  HPDMA2_CHn suspend in debug
      DBG_HPDMA2_CH5_STOP  : Boolean := False;
      --  HPDMA2_CHn suspend in debug
      DBG_HPDMA2_CH6_STOP  : Boolean := False;
      --  HPDMA2_CHn suspend in debug
      DBG_HPDMA2_CH7_STOP  : Boolean := False;
      --  HPDMA2_CHn suspend in debug
      DBG_HPDMA2_CH8_STOP  : Boolean := False;
      --  HPDMA2_CHn suspend in debug
      DBG_HPDMA2_CH9_STOP  : Boolean := False;
      --  HPDMA2_CHn suspend in debug
      DBG_HPDMA2_CH10_STOP : Boolean := False;
      --  HPDMA2_CHn suspend in debug
      DBG_HPDMA2_CH11_STOP : Boolean := False;
      --  HPDMA2_CHn suspend in debug
      DBG_HPDMA2_CH12_STOP : Boolean := False;
      --  HPDMA2_CHn suspend in debug
      DBG_HPDMA2_CH13_STOP : Boolean := False;
      --  HPDMA2_CHn suspend in debug
      DBG_HPDMA2_CH14_STOP : Boolean := False;
      --  HPDMA2_CHn suspend in debug
      DBG_HPDMA2_CH15_STOP : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_AHB2LFZ_Register use record
      DBG_HPDMA1_CH0_STOP  at 0 range 0 .. 0;
      DBG_HPDMA1_CH1_STOP  at 0 range 1 .. 1;
      DBG_HPDMA1_CH2_STOP  at 0 range 2 .. 2;
      DBG_HPDMA1_CH3_STOP  at 0 range 3 .. 3;
      DBG_HPDMA1_CH4_STOP  at 0 range 4 .. 4;
      DBG_HPDMA1_CH5_STOP  at 0 range 5 .. 5;
      DBG_HPDMA1_CH6_STOP  at 0 range 6 .. 6;
      DBG_HPDMA1_CH7_STOP  at 0 range 7 .. 7;
      DBG_HPDMA1_CH8_STOP  at 0 range 8 .. 8;
      DBG_HPDMA1_CH9_STOP  at 0 range 9 .. 9;
      DBG_HPDMA1_CH10_STOP at 0 range 10 .. 10;
      DBG_HPDMA1_CH11_STOP at 0 range 11 .. 11;
      DBG_HPDMA1_CH12_STOP at 0 range 12 .. 12;
      DBG_HPDMA1_CH13_STOP at 0 range 13 .. 13;
      DBG_HPDMA1_CH14_STOP at 0 range 14 .. 14;
      DBG_HPDMA1_CH15_STOP at 0 range 15 .. 15;
      DBG_HPDMA2_CH0_STOP  at 0 range 16 .. 16;
      DBG_HPDMA2_CH1_STOP  at 0 range 17 .. 17;
      DBG_HPDMA2_CH2_STOP  at 0 range 18 .. 18;
      DBG_HPDMA2_CH3_STOP  at 0 range 19 .. 19;
      DBG_HPDMA2_CH4_STOP  at 0 range 20 .. 20;
      DBG_HPDMA2_CH5_STOP  at 0 range 21 .. 21;
      DBG_HPDMA2_CH6_STOP  at 0 range 22 .. 22;
      DBG_HPDMA2_CH7_STOP  at 0 range 23 .. 23;
      DBG_HPDMA2_CH8_STOP  at 0 range 24 .. 24;
      DBG_HPDMA2_CH9_STOP  at 0 range 25 .. 25;
      DBG_HPDMA2_CH10_STOP at 0 range 26 .. 26;
      DBG_HPDMA2_CH11_STOP at 0 range 27 .. 27;
      DBG_HPDMA2_CH12_STOP at 0 range 28 .. 28;
      DBG_HPDMA2_CH13_STOP at 0 range 29 .. 29;
      DBG_HPDMA2_CH14_STOP at 0 range 30 .. 30;
      DBG_HPDMA2_CH15_STOP at 0 range 31 .. 31;
   end record;

   --  DBGMCU AHB2 - highest part- peripheral freeze register CPU1
   type DBGMCU_AHB2HFZ_Register is record
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA3_CH0_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA3_CH1_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA3_CH2_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA3_CH3_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA3_CH4_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA3_CH5_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA3_CH6_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA3_CH7_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA3_CH8_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA3_CH9_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA3_CH10_STOP : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA3_CH11_STOP : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA3_CH12_STOP : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA3_CH13_STOP : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA3_CH14_STOP : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA3_CH15_STOP : Boolean := False;
      --  unspecified
      Reserved_16_31       : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_AHB2HFZ_Register use record
      DBG_HPDMA3_CH0_STOP  at 0 range 0 .. 0;
      DBG_HPDMA3_CH1_STOP  at 0 range 1 .. 1;
      DBG_HPDMA3_CH2_STOP  at 0 range 2 .. 2;
      DBG_HPDMA3_CH3_STOP  at 0 range 3 .. 3;
      DBG_HPDMA3_CH4_STOP  at 0 range 4 .. 4;
      DBG_HPDMA3_CH5_STOP  at 0 range 5 .. 5;
      DBG_HPDMA3_CH6_STOP  at 0 range 6 .. 6;
      DBG_HPDMA3_CH7_STOP  at 0 range 7 .. 7;
      DBG_HPDMA3_CH8_STOP  at 0 range 8 .. 8;
      DBG_HPDMA3_CH9_STOP  at 0 range 9 .. 9;
      DBG_HPDMA3_CH10_STOP at 0 range 10 .. 10;
      DBG_HPDMA3_CH11_STOP at 0 range 11 .. 11;
      DBG_HPDMA3_CH12_STOP at 0 range 12 .. 12;
      DBG_HPDMA3_CH13_STOP at 0 range 13 .. 13;
      DBG_HPDMA3_CH14_STOP at 0 range 14 .. 14;
      DBG_HPDMA3_CH15_STOP at 0 range 15 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   --  DBGMCU AHBSR peripheral freeze register CPU1
   type DBGMCU_AHBSRFZ_Register is record
      --  LPDMA1_CHn suspend in debug
      DBG_LPDMA1_CH0_STOP : Boolean := False;
      --  LPDMA1_CHn suspend in debug
      DBG_LPDMA1_CH1_STOP : Boolean := False;
      --  LPDMA1_CHn suspend in debug
      DBG_LPDMA1_CH2_STOP : Boolean := False;
      --  LPDMA1_CHn suspend in debug
      DBG_LPDMA1_CH3_STOP : Boolean := False;
      --  unspecified
      Reserved_4_31       : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_AHBSRFZ_Register use record
      DBG_LPDMA1_CH0_STOP at 0 range 0 .. 0;
      DBG_LPDMA1_CH1_STOP at 0 range 1 .. 1;
      DBG_LPDMA1_CH2_STOP at 0 range 2 .. 2;
      DBG_LPDMA1_CH3_STOP at 0 range 3 .. 3;
      Reserved_4_31       at 0 range 4 .. 31;
   end record;

   --  DBGMCU APB1 peripheral freeze register CPU1
   type DBGMCU_APB1FZ_Register is record
      --  TIM2 stop in debug
      DBG_TIM2_STOP   : Boolean := False;
      --  TIM3 stop in debug
      DBG_TIM3_STOP   : Boolean := False;
      --  TIM4 stop in debug
      DBG_TIM4_STOP   : Boolean := False;
      --  TIM5 stop in debug
      DBG_TIM5_STOP   : Boolean := False;
      --  TIM6 stop in debug
      DBG_TIM6_STOP   : Boolean := False;
      --  TIM7 stop in debug
      DBG_TIM7_STOP   : Boolean := False;
      --  TIM12 stop in debug
      DBG_TIM12_STOP  : Boolean := False;
      --  TIM13 stop in debug
      DBG_TIM13_STOP  : Boolean := False;
      --  TIM14 stop in debug
      DBG_TIM14_STOP  : Boolean := False;
      --  LPTIM1 stop in debug
      DBG_LPTIM1_STOP : Boolean := False;
      --  LPTIM2 stop in debug
      DBG_LPTIM2_STOP : Boolean := False;
      --  unspecified
      Reserved_11_17  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  I2C1 SMBUS timeout stop in debug
      DBG_I2C1_STOP   : Boolean := False;
      --  I2C2 SMBUS timeout stop in debug
      DBG_I2C2_STOP   : Boolean := False;
      --  I2C3 SMBUS timeout stop in debug
      DBG_I2C3_STOP   : Boolean := False;
      --  I2C4 SMBUS timeout stop in debug
      DBG_I2C4_STOP   : Boolean := False;
      --  I2C5 SMBUS timeout stop in debug
      DBG_I2C5_STOP   : Boolean := False;
      --  I2C6 SMBUS timeout stop in debug
      DBG_I2C6_STOP   : Boolean := False;
      --  I2C7 SMBUS timeout stop in debug
      DBG_I2C7_STOP   : Boolean := False;
      --  I3C1 SMBUS timeout stop in debug
      DBG_I3C1_STOP   : Boolean := False;
      --  I3C2 SMBUS timeout stop in debug
      DBG_I3C2_STOP   : Boolean := False;
      --  I3C3 SMBUS timeout stop in debug
      DBG_I3C3_STOP   : Boolean := False;
      --  TIM10 stop in debug
      DBG_TIM10_STOP  : Boolean := False;
      --  TIM11 stop in debug
      DBG_TIM11_STOP  : Boolean := False;
      --  unspecified
      Reserved_30_31  : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_APB1FZ_Register use record
      DBG_TIM2_STOP   at 0 range 0 .. 0;
      DBG_TIM3_STOP   at 0 range 1 .. 1;
      DBG_TIM4_STOP   at 0 range 2 .. 2;
      DBG_TIM5_STOP   at 0 range 3 .. 3;
      DBG_TIM6_STOP   at 0 range 4 .. 4;
      DBG_TIM7_STOP   at 0 range 5 .. 5;
      DBG_TIM12_STOP  at 0 range 6 .. 6;
      DBG_TIM13_STOP  at 0 range 7 .. 7;
      DBG_TIM14_STOP  at 0 range 8 .. 8;
      DBG_LPTIM1_STOP at 0 range 9 .. 9;
      DBG_LPTIM2_STOP at 0 range 10 .. 10;
      Reserved_11_17  at 0 range 11 .. 17;
      DBG_I2C1_STOP   at 0 range 18 .. 18;
      DBG_I2C2_STOP   at 0 range 19 .. 19;
      DBG_I2C3_STOP   at 0 range 20 .. 20;
      DBG_I2C4_STOP   at 0 range 21 .. 21;
      DBG_I2C5_STOP   at 0 range 22 .. 22;
      DBG_I2C6_STOP   at 0 range 23 .. 23;
      DBG_I2C7_STOP   at 0 range 24 .. 24;
      DBG_I3C1_STOP   at 0 range 25 .. 25;
      DBG_I3C2_STOP   at 0 range 26 .. 26;
      DBG_I3C3_STOP   at 0 range 27 .. 27;
      DBG_TIM10_STOP  at 0 range 28 .. 28;
      DBG_TIM11_STOP  at 0 range 29 .. 29;
      Reserved_30_31  at 0 range 30 .. 31;
   end record;

   --  DBGMCU APB2 peripheral freeze register CPU1
   type DBGMCU_APB2FZ_Register is record
      --  TIM1 stop in debug
      DBG_TIM1_STOP  : Boolean := False;
      --  TIM8 stop in debug
      DBG_TIM8_STOP  : Boolean := False;
      --  unspecified
      Reserved_2_4   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  TIM15 stop in debug
      DBG_TIM15_STOP : Boolean := False;
      --  TIM16 stop in debug
      DBG_TIM16_STOP : Boolean := False;
      --  TIM17 stop in debug
      DBG_TIM17_STOP : Boolean := False;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  FDCAN stop in debug
      DBG_FDCAN_STOP : Boolean := False;
      --  unspecified
      Reserved_14_17 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  TIM20 stop in debug
      DBG_TIM20_STOP : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_APB2FZ_Register use record
      DBG_TIM1_STOP  at 0 range 0 .. 0;
      DBG_TIM8_STOP  at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      DBG_TIM15_STOP at 0 range 5 .. 5;
      DBG_TIM16_STOP at 0 range 6 .. 6;
      DBG_TIM17_STOP at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      DBG_FDCAN_STOP at 0 range 13 .. 13;
      Reserved_14_17 at 0 range 14 .. 17;
      DBG_TIM20_STOP at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  DBGMCU APB3 peripheral freeze register CPU1
   type DBGMCU_APB3FZ1_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  IWDG1 stop in debug
      DBG_IWDG1_STOP : Boolean := False;
      --  IWDG2 stop in debug
      DBG_IWDG2_STOP : Boolean := False;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  WWDG1 stop in debug
      DBG_WWDG1_STOP : Boolean := False;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_APB3FZ1_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      DBG_IWDG1_STOP at 0 range 1 .. 1;
      DBG_IWDG2_STOP at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      DBG_WWDG1_STOP at 0 range 5 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   --  DBGMCU APB3 peripheral freeze register CPU2
   type DBGMCU_APB3FZ2_Register is record
      --  unspecified
      Reserved_0_2   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  IWDG3 stop in debug
      DBG_IWDG3_STOP : Boolean := False;
      --  IWDG4 stop in debug
      DBG_IWDG4_STOP : Boolean := False;
      --  WWDG1 stop in debug
      DBG_WWDG1_STOP : Boolean := False;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_APB3FZ2_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      DBG_IWDG3_STOP at 0 range 3 .. 3;
      DBG_IWDG4_STOP at 0 range 4 .. 4;
      DBG_WWDG1_STOP at 0 range 5 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   --  DBGMCU APBSR peripheral freeze register CPU1
   type DBGMCU_APBSRFZ_Register is record
      --  RTC clock is suspended in debug
      DBG_RTC_STOP    : Boolean := False;
      --  unspecified
      Reserved_1_3    : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  I2C8 stop in debug
      DBG_I2C8_STOP   : Boolean := False;
      --  LPTIM3 stop in debug
      DBG_LPTIM3_STOP : Boolean := False;
      --  LPTIM4 stop in debug
      DBG_LPTIM4_STOP : Boolean := False;
      --  LPTIM5 stop in debug
      DBG_LPTIM5_STOP : Boolean := False;
      --  I3C4 stop in debug
      DBG_I3C4_STOP   : Boolean := False;
      --  unspecified
      Reserved_9_9    : Interfaces.Bit_Types.Bit := 16#0#;
      --  WWDG2 stop in debug
      DBG_WWDG2_STOP  : Boolean := False;
      --  unspecified
      Reserved_11_31  : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_APBSRFZ_Register use record
      DBG_RTC_STOP    at 0 range 0 .. 0;
      Reserved_1_3    at 0 range 1 .. 3;
      DBG_I2C8_STOP   at 0 range 4 .. 4;
      DBG_LPTIM3_STOP at 0 range 5 .. 5;
      DBG_LPTIM4_STOP at 0 range 6 .. 6;
      DBG_LPTIM5_STOP at 0 range 7 .. 7;
      DBG_I3C4_STOP   at 0 range 8 .. 8;
      Reserved_9_9    at 0 range 9 .. 9;
      DBG_WWDG2_STOP  at 0 range 10 .. 10;
      Reserved_11_31  at 0 range 11 .. 31;
   end record;

   --  DBGMCU APB5 peripheral freeze register CPU3
   type DBGMCU_APBSRFZ3_Register is record
      --  RTC clock is suspended in debug
      DBG_RTC_STOP    : Boolean := False;
      --  unspecified
      Reserved_1_3    : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  I2C8 stop in debug
      DBG_I2C8_STOP   : Boolean := False;
      --  LPTIM3 stop in debug
      DBG_LPTIM3_STOP : Boolean := False;
      --  LPTIM4 stop in debug
      DBG_LPTIM4_STOP : Boolean := False;
      --  LPTIM5 stop in debug
      DBG_LPTIM5_STOP : Boolean := False;
      --  I3C4 stop in debug
      DBG_I3C4_STOP   : Boolean := False;
      --  IWDG5 stop in debug
      DBG_IWDG5_STOP  : Boolean := False;
      --  WWDG2 stop in debug
      DBG_WWDG2_STOP  : Boolean := False;
      --  unspecified
      Reserved_11_31  : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_APBSRFZ3_Register use record
      DBG_RTC_STOP    at 0 range 0 .. 0;
      Reserved_1_3    at 0 range 1 .. 3;
      DBG_I2C8_STOP   at 0 range 4 .. 4;
      DBG_LPTIM3_STOP at 0 range 5 .. 5;
      DBG_LPTIM4_STOP at 0 range 6 .. 6;
      DBG_LPTIM5_STOP at 0 range 7 .. 7;
      DBG_I3C4_STOP   at 0 range 8 .. 8;
      DBG_IWDG5_STOP  at 0 range 9 .. 9;
      DBG_WWDG2_STOP  at 0 range 10 .. 10;
      Reserved_11_31  at 0 range 11 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DBGMCU address block description
   type DBGMCU_Peripheral is record
      --  DBGMCU identity code register
      DBGMCU_IDC      : aliased DBGMCU_IDC_Register;
      --  DBGMCU configuration register
      DBGMCU_CR       : aliased DBGMCU_CR_Register;
      --  DBGMCU configuration register CPU1
      DBGMCU_CRA35    : aliased DBGMCU_CRA35_Register;
      --  DBGMCU AHB2 - lowest part - peripheral freeze register CPU1
      DBGMCU_AHB2LFZ1 : aliased DBGMCU_AHB2LFZ_Register;
      --  DBGMCU AHB2 - highest part- peripheral freeze register CPU1
      DBGMCU_AHB2HFZ1 : aliased DBGMCU_AHB2HFZ_Register;
      --  DBGMCU AHB2 - lowest part - peripheral freeze register CPU2
      DBGMCU_AHB2LFZ2 : aliased DBGMCU_AHB2LFZ_Register;
      --  DBGMCU AHB2 - highest part- peripheral freeze register CPU2
      DBGMCU_AHB2HFZ2 : aliased DBGMCU_AHB2HFZ_Register;
      --  DBGMCU AHBSR peripheral freeze register CPU1
      DBGMCU_AHBSRFZ1 : aliased DBGMCU_AHBSRFZ_Register;
      --  DBGMCU AHBSR peripheral freeze register CPU2
      DBGMCU_AHBSRFZ2 : aliased DBGMCU_AHBSRFZ_Register;
      --  DBGMCU AHBSR peripheral freeze register CPU3
      DBGMCU_AHBSRFZ3 : aliased DBGMCU_AHBSRFZ_Register;
      --  DBGMCU APB1 peripheral freeze register CPU1
      DBGMCU_APB1FZ1  : aliased DBGMCU_APB1FZ_Register;
      --  DBGMCU APB1 peripheral freeze register CPU2
      DBGMCU_APB1FZ2  : aliased DBGMCU_APB1FZ_Register;
      --  DBGMCU APB2 peripheral freeze register CPU1
      DBGMCU_APB2FZ1  : aliased DBGMCU_APB2FZ_Register;
      --  DBGMCU APB2 peripheral freeze register CPU2
      DBGMCU_APB2FZ2  : aliased DBGMCU_APB2FZ_Register;
      --  DBGMCU APB3 peripheral freeze register CPU1
      DBGMCU_APB3FZ1  : aliased DBGMCU_APB3FZ1_Register;
      --  DBGMCU APB3 peripheral freeze register CPU2
      DBGMCU_APB3FZ2  : aliased DBGMCU_APB3FZ2_Register;
      --  DBGMCU APBSR peripheral freeze register CPU1
      DBGMCU_APBSRFZ1 : aliased DBGMCU_APBSRFZ_Register;
      --  DBGMCU APBSR peripheral freeze register CPU2
      DBGMCU_APBSRFZ2 : aliased DBGMCU_APBSRFZ_Register;
      --  DBGMCU APB5 peripheral freeze register CPU3
      DBGMCU_APBSRFZ3 : aliased DBGMCU_APBSRFZ3_Register;
   end record
     with Volatile;

   for DBGMCU_Peripheral use record
      DBGMCU_IDC      at 16#0# range 0 .. 31;
      DBGMCU_CR       at 16#4# range 0 .. 31;
      DBGMCU_CRA35    at 16#8# range 0 .. 31;
      DBGMCU_AHB2LFZ1 at 16#10# range 0 .. 31;
      DBGMCU_AHB2HFZ1 at 16#14# range 0 .. 31;
      DBGMCU_AHB2LFZ2 at 16#18# range 0 .. 31;
      DBGMCU_AHB2HFZ2 at 16#1C# range 0 .. 31;
      DBGMCU_AHBSRFZ1 at 16#20# range 0 .. 31;
      DBGMCU_AHBSRFZ2 at 16#24# range 0 .. 31;
      DBGMCU_AHBSRFZ3 at 16#28# range 0 .. 31;
      DBGMCU_APB1FZ1  at 16#2C# range 0 .. 31;
      DBGMCU_APB1FZ2  at 16#30# range 0 .. 31;
      DBGMCU_APB2FZ1  at 16#34# range 0 .. 31;
      DBGMCU_APB2FZ2  at 16#38# range 0 .. 31;
      DBGMCU_APB3FZ1  at 16#3C# range 0 .. 31;
      DBGMCU_APB3FZ2  at 16#40# range 0 .. 31;
      DBGMCU_APBSRFZ1 at 16#44# range 0 .. 31;
      DBGMCU_APBSRFZ2 at 16#48# range 0 .. 31;
      DBGMCU_APBSRFZ3 at 16#4C# range 0 .. 31;
   end record;

   --  DBGMCU address block description
   DBGMCU_Periph : aliased DBGMCU_Peripheral
     with Import, Address => DBGMCU_Base;

   --  DBGMCU address block description
   DBGMCU_S_Periph : aliased DBGMCU_Peripheral
     with Import, Address => DBGMCU_S_Base;

end Interfaces.STM32.DBGMCU;
