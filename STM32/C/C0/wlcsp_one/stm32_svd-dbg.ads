--  This spec has been automatically generated from STM32C011.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.DBG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DBG_IDCODE_DEV_ID_Field is HAL.UInt12;
   subtype DBG_IDCODE_REV_ID_Field is HAL.UInt16;

   --  DBG device ID code register
   type DBG_IDCODE_Register is record
      --  Read-only. Device identifier This bitfield indicates the device ID.
      DEV_ID         : DBG_IDCODE_DEV_ID_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Revision identifier This bitfield indicates the revision
      --  of the device.
      REV_ID         : DBG_IDCODE_REV_ID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBG_IDCODE_Register use record
      DEV_ID         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      REV_ID         at 0 range 16 .. 31;
   end record;

   --  DBG configuration register
   type DBG_CR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Debug Stop mode
      DBG_STOP      : Boolean := False;
      --  Debug Standby and Shutdown modes
      DBG_STANDBY   : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBG_CR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      DBG_STOP      at 0 range 1 .. 1;
      DBG_STANDBY   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  DBG APB freeze register 1
   type DBG_APB_FZ1_Register is record
      --  unspecified
      Reserved_0_0           : HAL.Bit := 16#0#;
      --  Clocking of TIM3 counter when the core is halted This bit
      --  enables/disables the clock to the counter of TIM3 when the core is
      --  halted:
      DBG_TIM3_STOP          : Boolean := False;
      --  unspecified
      Reserved_2_9           : HAL.UInt8 := 16#0#;
      --  Clocking of RTC counter when the core is halted This bit
      --  enables/disables the clock to the counter of RTC when the core is
      --  halted:
      DBG_RTC_STOP           : Boolean := False;
      --  Clocking of WWDG counter when the core is halted This bit
      --  enables/disables the clock to the counter of WWDG when the core is
      --  halted:
      DBG_WWDG_STOP          : Boolean := False;
      --  Clocking of IWDG counter when the core is halted This bit
      --  enables/disables the clock to the counter of IWDG when the core is
      --  halted:
      DBG_IWDG_STOP          : Boolean := False;
      --  unspecified
      Reserved_13_20         : HAL.UInt8 := 16#0#;
      --  SMBUS timeout when core is halted
      DBG_I2C1_SMBUS_TIMEOUT : Boolean := False;
      --  unspecified
      Reserved_22_31         : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBG_APB_FZ1_Register use record
      Reserved_0_0           at 0 range 0 .. 0;
      DBG_TIM3_STOP          at 0 range 1 .. 1;
      Reserved_2_9           at 0 range 2 .. 9;
      DBG_RTC_STOP           at 0 range 10 .. 10;
      DBG_WWDG_STOP          at 0 range 11 .. 11;
      DBG_IWDG_STOP          at 0 range 12 .. 12;
      Reserved_13_20         at 0 range 13 .. 20;
      DBG_I2C1_SMBUS_TIMEOUT at 0 range 21 .. 21;
      Reserved_22_31         at 0 range 22 .. 31;
   end record;

   --  DBG APB freeze register 2
   type DBG_APB_FZ2_Register is record
      --  unspecified
      Reserved_0_10  : HAL.UInt11 := 16#0#;
      --  Clocking of TIM1 counter when the core is halted This bit
      --  enables/disables the clock to the counter of TIM1 when the core is
      --  halted:
      DBG_TIM1_STOP  : Boolean := False;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Clocking of TIM14 counter when the core is halted This bit
      --  enables/disables the clock to the counter of TIM14 when the core is
      --  halted:
      DBG_TIM14_STOP : Boolean := False;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  Clocking of TIM16 counter when the core is halted This bit
      --  enables/disables the clock to the counter of TIM16 when the core is
      --  halted:
      DBG_TIM16_STOP : Boolean := False;
      --  Clocking of TIM17 counter when the core is halted This bit
      --  enables/disables the clock to the counter of TIM17 when the core is
      --  halted:
      DBG_TIM17_STOP : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBG_APB_FZ2_Register use record
      Reserved_0_10  at 0 range 0 .. 10;
      DBG_TIM1_STOP  at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      DBG_TIM14_STOP at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      DBG_TIM16_STOP at 0 range 17 .. 17;
      DBG_TIM17_STOP at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DBG register block
   type DBG_Peripheral is record
      --  DBG device ID code register
      DBG_IDCODE  : aliased DBG_IDCODE_Register;
      --  DBG configuration register
      DBG_CR      : aliased DBG_CR_Register;
      --  DBG APB freeze register 1
      DBG_APB_FZ1 : aliased DBG_APB_FZ1_Register;
      --  DBG APB freeze register 2
      DBG_APB_FZ2 : aliased DBG_APB_FZ2_Register;
   end record
     with Volatile;

   for DBG_Peripheral use record
      DBG_IDCODE  at 16#0# range 0 .. 31;
      DBG_CR      at 16#4# range 0 .. 31;
      DBG_APB_FZ1 at 16#8# range 0 .. 31;
      DBG_APB_FZ2 at 16#C# range 0 .. 31;
   end record;

   --  DBG register block
   DBG_Periph : aliased DBG_Peripheral
     with Import, Address => DBG_Base;

end STM32_SVD.DBG;
