--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.DBGMCU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DBGMCU_IDCODE_DEV_ID_Field is HAL.UInt12;
   subtype DBGMCU_IDCODE_REV_ID_Field is HAL.UInt16;

   --  DBGMCU identity code register
   type DBGMCU_IDCODE_Register is record
      --  Read-only. Device ID
      DEV_ID         : DBGMCU_IDCODE_DEV_ID_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Revision
      REV_ID         : DBGMCU_IDCODE_REV_ID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_IDCODE_Register use record
      DEV_ID         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      REV_ID         at 0 range 16 .. 31;
   end record;

   --  DBGMCU configuration register
   type DBGMCU_CR_Register is record
      --  Allow debug in Sleep mode
      DBG_SLEEP      : Boolean := False;
      --  Allow debug in Stop mode
      DBG_STOP       : Boolean := False;
      --  Allow debug in Standby mode
      DBG_STANDBY    : Boolean := False;
      --  unspecified
      Reserved_3_19  : HAL.UInt17 := 16#0#;
      --  Debug clock enable through software
      DBGCLKEN       : Boolean := False;
      --  TPIU export clock enable through software
      TRACECLKEN     : Boolean := False;
      --  unspecified
      Reserved_22_27 : HAL.UInt6 := 16#0#;
      --  DBTRGIO connection control
      DBTRGOEN       : Boolean := False;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  TSGEN halt enable
      HLT_TSGEN_EN   : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_CR_Register use record
      DBG_SLEEP      at 0 range 0 .. 0;
      DBG_STOP       at 0 range 1 .. 1;
      DBG_STANDBY    at 0 range 2 .. 2;
      Reserved_3_19  at 0 range 3 .. 19;
      DBGCLKEN       at 0 range 20 .. 20;
      TRACECLKEN     at 0 range 21 .. 21;
      Reserved_22_27 at 0 range 22 .. 27;
      DBTRGOEN       at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      HLT_TSGEN_EN   at 0 range 31 .. 31;
   end record;

   --  DBGMCU APB1L peripheral freeze register
   type DBGMCU_APB1LFZ1_Register is record
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
      --  unspecified
      Reserved_10_10  : HAL.Bit := 16#0#;
      --  WWDG1 stop in debug
      DBG_WWDG1_STOP  : Boolean := False;
      --  TIM10 stop in debug
      DBG_TIM10_STOP  : Boolean := False;
      --  TIM11 stop in debug
      DBG_TIM11_STOP  : Boolean := False;
      --  unspecified
      Reserved_14_20  : HAL.UInt7 := 16#0#;
      --  I2C1 SMBUS timeout stop in debug
      DBG_I2C1_STOP   : Boolean := False;
      --  I2C2 SMBUS timeout stop in debug
      DBG_I2C2_STOP   : Boolean := False;
      --  I2C3 SMBUS timeout stop in debug
      DBG_I2C3_STOP   : Boolean := False;
      --  I3C1 SMBUS timeout stop in debug
      DBG_I3C1_STOP   : Boolean := False;
      --  I3C2 SMBUS timeout stop in debug
      DBG_I3C2_STOP   : Boolean := False;
      --  unspecified
      Reserved_26_31  : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_APB1LFZ1_Register use record
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
      Reserved_10_10  at 0 range 10 .. 10;
      DBG_WWDG1_STOP  at 0 range 11 .. 11;
      DBG_TIM10_STOP  at 0 range 12 .. 12;
      DBG_TIM11_STOP  at 0 range 13 .. 13;
      Reserved_14_20  at 0 range 14 .. 20;
      DBG_I2C1_STOP   at 0 range 21 .. 21;
      DBG_I2C2_STOP   at 0 range 22 .. 22;
      DBG_I2C3_STOP   at 0 range 23 .. 23;
      DBG_I3C1_STOP   at 0 range 24 .. 24;
      DBG_I3C2_STOP   at 0 range 25 .. 25;
      Reserved_26_31  at 0 range 26 .. 31;
   end record;

   --  DBGMCU APB1H peripheral freeze register
   type DBGMCU_APB1HFZ1_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  FDCAN stop in debug
      DBG_FDCAN_STOP : Boolean := False;
      --  unspecified
      Reserved_9_31  : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_APB1HFZ1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      DBG_FDCAN_STOP at 0 range 8 .. 8;
      Reserved_9_31  at 0 range 9 .. 31;
   end record;

   --  DBGMCU APB2 peripheral freeze register
   type DBGMCU_APB2FZ1_Register is record
      --  TIM1 stop in debug
      DBG_TIM1_STOP  : Boolean := False;
      --  TIM8 stop in debug
      DBG_TIM8_STOP  : Boolean := False;
      --  unspecified
      Reserved_2_14  : HAL.UInt13 := 16#0#;
      --  TIM18 stop in debug
      DBG_TIM18_STOP : Boolean := False;
      --  TIM15 stop in debug
      DBG_TIM15_STOP : Boolean := False;
      --  TIM16 stop in debug
      DBG_TIM16_STOP : Boolean := False;
      --  TIM17 stop in debug
      DBG_TIM17_STOP : Boolean := False;
      --  TIM9 stop in debug
      DBG_TIM9_STOP  : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_APB2FZ1_Register use record
      DBG_TIM1_STOP  at 0 range 0 .. 0;
      DBG_TIM8_STOP  at 0 range 1 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      DBG_TIM18_STOP at 0 range 15 .. 15;
      DBG_TIM15_STOP at 0 range 16 .. 16;
      DBG_TIM16_STOP at 0 range 17 .. 17;
      DBG_TIM17_STOP at 0 range 18 .. 18;
      DBG_TIM9_STOP  at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  DBGMCU APB4 peripheral freeze register
   type DBGMCU_APB4FZ1_Register is record
      --  unspecified
      Reserved_0_7    : HAL.UInt8 := 16#0#;
      --  I2C4 stop in debug
      DBG_I2C4_STOP   : Boolean := False;
      --  LPTIM2 stop in debug
      DBG_LPTIM2_STOP : Boolean := False;
      --  LPTIM3 stop in debug
      DBG_LPTIM3_STOP : Boolean := False;
      --  LPTIM4 stop in debug
      DBG_LPTIM4_STOP : Boolean := False;
      --  LPTIM5 stop in debug
      DBG_LPTIM5_STOP : Boolean := False;
      --  unspecified
      Reserved_13_15  : HAL.UInt3 := 16#0#;
      --  RTC clock is suspended in debug
      DBG_RTC_STOP    : Boolean := False;
      --  unspecified
      Reserved_17_17  : HAL.Bit := 16#0#;
      --  WWDG stop in debug
      DBG_IWDG_STOP   : Boolean := False;
      --  unspecified
      Reserved_19_31  : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_APB4FZ1_Register use record
      Reserved_0_7    at 0 range 0 .. 7;
      DBG_I2C4_STOP   at 0 range 8 .. 8;
      DBG_LPTIM2_STOP at 0 range 9 .. 9;
      DBG_LPTIM3_STOP at 0 range 10 .. 10;
      DBG_LPTIM4_STOP at 0 range 11 .. 11;
      DBG_LPTIM5_STOP at 0 range 12 .. 12;
      Reserved_13_15  at 0 range 13 .. 15;
      DBG_RTC_STOP    at 0 range 16 .. 16;
      Reserved_17_17  at 0 range 17 .. 17;
      DBG_IWDG_STOP   at 0 range 18 .. 18;
      Reserved_19_31  at 0 range 19 .. 31;
   end record;

   --  DBGMCU APB5 peripheral freeze register
   type DBGMCU_APB5FZ1_Register is record
      --  unspecified
      Reserved_0_3    : HAL.UInt4 := 16#0#;
      --  GFXTIM stop in debug
      DBG_GFXTIM_STOP : Boolean := False;
      --  unspecified
      Reserved_5_31   : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_APB5FZ1_Register use record
      Reserved_0_3    at 0 range 0 .. 3;
      DBG_GFXTIM_STOP at 0 range 4 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   --  DBGMCU AHB1 peripheral freeze register
   type DBGMCU_AHB1FZ1_Register is record
      --  GPDMA1_CHn suspend in debug
      DBG_GPDMA1_CH0_STOP  : Boolean := False;
      --  GPDMA1_CHn suspend in debug
      DBG_GPDMA1_CH1_STOP  : Boolean := False;
      --  GPDMA1_CHn suspend in debug
      DBG_GPDMA1_CH2_STOP  : Boolean := False;
      --  GPDMA1_CHn suspend in debug
      DBG_GPDMA1_CH3_STOP  : Boolean := False;
      --  GPDMA1_CHn suspend in debug
      DBG_GPDMA1_CH4_STOP  : Boolean := False;
      --  GPDMA1_CHn suspend in debug
      DBG_GPDMA1_CH5_STOP  : Boolean := False;
      --  GPDMA1_CHn suspend in debug
      DBG_GPDMA1_CH6_STOP  : Boolean := False;
      --  GPDMA1_CHn suspend in debug
      DBG_GPDMA1_CH7_STOP  : Boolean := False;
      --  GPDMA1_CHn suspend in debug
      DBG_GPDMA1_CH8_STOP  : Boolean := False;
      --  GPDMA1_CHn suspend in debug
      DBG_GPDMA1_CH9_STOP  : Boolean := False;
      --  GPDMA1_CHn suspend in debug
      DBG_GPDMA1_CH10_STOP : Boolean := False;
      --  GPDMA1_CHn suspend in debug
      DBG_GPDMA1_CH11_STOP : Boolean := False;
      --  GPDMA1_CHn suspend in debug
      DBG_GPDMA1_CH12_STOP : Boolean := False;
      --  GPDMA1_CHn suspend in debug
      DBG_GPDMA1_CH13_STOP : Boolean := False;
      --  GPDMA1_CHn suspend in debug
      DBG_GPDMA1_CH14_STOP : Boolean := False;
      --  GPDMA1_CHn suspend in debug
      DBG_GPDMA1_CH15_STOP : Boolean := False;
      --  unspecified
      Reserved_16_31       : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_AHB1FZ1_Register use record
      DBG_GPDMA1_CH0_STOP  at 0 range 0 .. 0;
      DBG_GPDMA1_CH1_STOP  at 0 range 1 .. 1;
      DBG_GPDMA1_CH2_STOP  at 0 range 2 .. 2;
      DBG_GPDMA1_CH3_STOP  at 0 range 3 .. 3;
      DBG_GPDMA1_CH4_STOP  at 0 range 4 .. 4;
      DBG_GPDMA1_CH5_STOP  at 0 range 5 .. 5;
      DBG_GPDMA1_CH6_STOP  at 0 range 6 .. 6;
      DBG_GPDMA1_CH7_STOP  at 0 range 7 .. 7;
      DBG_GPDMA1_CH8_STOP  at 0 range 8 .. 8;
      DBG_GPDMA1_CH9_STOP  at 0 range 9 .. 9;
      DBG_GPDMA1_CH10_STOP at 0 range 10 .. 10;
      DBG_GPDMA1_CH11_STOP at 0 range 11 .. 11;
      DBG_GPDMA1_CH12_STOP at 0 range 12 .. 12;
      DBG_GPDMA1_CH13_STOP at 0 range 13 .. 13;
      DBG_GPDMA1_CH14_STOP at 0 range 14 .. 14;
      DBG_GPDMA1_CH15_STOP at 0 range 15 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   --  DBGMCU AHB5 peripheral freeze register
   type DBGMCU_AHB5FZ1_Register is record
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA1_CH0_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA1_CH1_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA1_CH2_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA1_CH3_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA1_CH4_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA1_CH5_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA1_CH6_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA1_CH7_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA1_CH8_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA1_CH9_STOP  : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA1_CH10_STOP : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA1_CH11_STOP : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA1_CH12_STOP : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA1_CH13_STOP : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA1_CH14_STOP : Boolean := False;
      --  HPDMA3_CHn suspend in debug
      DBG_HPDMA1_CH15_STOP : Boolean := False;
      --  NPU stop in debug mode
      NPU_DBG_FREEZE       : Boolean := False;
      --  unspecified
      Reserved_17_31       : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_AHB5FZ1_Register use record
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
      NPU_DBG_FREEZE       at 0 range 16 .. 16;
      Reserved_17_31       at 0 range 17 .. 31;
   end record;

   --  DBGMCU status register
   type DBGMCU_SR_Register is record
      --  Read-only. Access point 0 presence
      AP0_PRESENT    : Boolean;
      --  Read-only. Access point 1 presence
      AP1_PRESENT    : Boolean;
      --  unspecified
      Reserved_2_15  : HAL.UInt14;
      --  Read-only. Access point 0 enable
      AP0_ENABLE     : Boolean;
      --  Read-only. Access point 1 enable
      AP1_ENABLE     : Boolean;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_SR_Register use record
      AP0_PRESENT    at 0 range 0 .. 0;
      AP1_PRESENT    at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      AP0_ENABLE     at 0 range 16 .. 16;
      AP1_ENABLE     at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  DBGMCU message read acknowledge authentication register
   type DBGMCU_DBG_AUTH_ACK_Register is record
      --  Read-only. Access status to DBG_AUTH_HOST register
      HOST_ACK      : Boolean;
      --  Read-only. Access status to DBG_AUTH_DEV register
      DEVICE_ACK    : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_DBG_AUTH_ACK_Register use record
      HOST_ACK      at 0 range 0 .. 0;
      DEVICE_ACK    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Microcontroller debug unit
   type DBGMCU_Peripheral is record
      --  DBGMCU identity code register
      DBGMCU_IDCODE        : aliased DBGMCU_IDCODE_Register;
      --  DBGMCU configuration register
      DBGMCU_CR            : aliased DBGMCU_CR_Register;
      --  DBGMCU APB1L peripheral freeze register
      DBGMCU_APB1LFZ1      : aliased DBGMCU_APB1LFZ1_Register;
      --  DBGMCU APB1H peripheral freeze register
      DBGMCU_APB1HFZ1      : aliased DBGMCU_APB1HFZ1_Register;
      --  DBGMCU APB2 peripheral freeze register
      DBGMCU_APB2FZ1       : aliased DBGMCU_APB2FZ1_Register;
      --  DBGMCU APB4 peripheral freeze register
      DBGMCU_APB4FZ1       : aliased DBGMCU_APB4FZ1_Register;
      --  DBGMCU APB5 peripheral freeze register
      DBGMCU_APB5FZ1       : aliased DBGMCU_APB5FZ1_Register;
      --  DBGMCU AHB1 peripheral freeze register
      DBGMCU_AHB1FZ1       : aliased DBGMCU_AHB1FZ1_Register;
      --  DBGMCU AHB5 peripheral freeze register
      DBGMCU_AHB5FZ1       : aliased DBGMCU_AHB5FZ1_Register;
      --  DBGMCU status register
      DBGMCU_SR            : aliased DBGMCU_SR_Register;
      --  DBGMCU host authentication register
      DBGMCU_DBG_AUTH_HOST : aliased HAL.UInt32;
      --  DBGMCU device authentication register
      DBGMCU_DBG_AUTH_DEV  : aliased HAL.UInt32;
      --  DBGMCU message read acknowledge authentication register
      DBGMCU_DBG_AUTH_ACK  : aliased DBGMCU_DBG_AUTH_ACK_Register;
   end record
     with Volatile;

   for DBGMCU_Peripheral use record
      DBGMCU_IDCODE        at 16#0# range 0 .. 31;
      DBGMCU_CR            at 16#4# range 0 .. 31;
      DBGMCU_APB1LFZ1      at 16#10# range 0 .. 31;
      DBGMCU_APB1HFZ1      at 16#14# range 0 .. 31;
      DBGMCU_APB2FZ1       at 16#18# range 0 .. 31;
      DBGMCU_APB4FZ1       at 16#1C# range 0 .. 31;
      DBGMCU_APB5FZ1       at 16#20# range 0 .. 31;
      DBGMCU_AHB1FZ1       at 16#24# range 0 .. 31;
      DBGMCU_AHB5FZ1       at 16#28# range 0 .. 31;
      DBGMCU_SR            at 16#FC# range 0 .. 31;
      DBGMCU_DBG_AUTH_HOST at 16#100# range 0 .. 31;
      DBGMCU_DBG_AUTH_DEV  at 16#104# range 0 .. 31;
      DBGMCU_DBG_AUTH_ACK  at 16#108# range 0 .. 31;
   end record;

   --  Microcontroller debug unit
   DBGMCU_Periph : aliased DBGMCU_Peripheral
     with Import, Address => DBGMCU_Base;

   --  Microcontroller debug unit
   DBGMCU_S_Periph : aliased DBGMCU_Peripheral
     with Import, Address => DBGMCU_S_Base;

end STM32_SVD.DBGMCU;
