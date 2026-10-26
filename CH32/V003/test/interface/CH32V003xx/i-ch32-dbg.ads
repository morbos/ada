--
--  Copyright (C) 2026, AdaCore
--

--  This spec has been automatically generated from CH32V003xx.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.CH32.DBG is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  CFGR1_DEG_TIM array
   type CFGR1_DEG_TIM_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CFGR1_DEG_TIM
   type CFGR1_DEG_TIM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DEG_TIM as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  DEG_TIM as an array
            Arr : CFGR1_DEG_TIM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CFGR1_DEG_TIM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DBGMCU_CFGR1
   type CFGR1_Register is record
      --  DEG_IWDG
      DEG_IWDG      : Boolean := False;
      --  DEG_WWDG
      DEG_WWDG      : Boolean := False;
      --  DEG_I2C1
      DEG_I2C1      : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  DEG_TIM1
      DEG_TIM       : CFGR1_DEG_TIM_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR1_Register use record
      DEG_IWDG      at 0 range 0 .. 0;
      DEG_WWDG      at 0 range 1 .. 1;
      DEG_I2C1      at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DEG_TIM       at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  DBGMCU_CFGR2
   type CFGR2_Register is record
      --  DBG_SLEEP
      DBG_SLEEP     : Boolean := False;
      --  DBG_STOP
      DBG_STOP      : Boolean := False;
      --  DBG_STANDBY
      DBG_STANDBY   : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR2_Register use record
      DBG_SLEEP     at 0 range 0 .. 0;
      DBG_STOP      at 0 range 1 .. 1;
      DBG_STANDBY   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Debug support
   type DBG_Peripheral is record
      --  DBGMCU_CFGR1
      CFGR1 : aliased CFGR1_Register;
      --  DBGMCU_CFGR2
      CFGR2 : aliased CFGR2_Register;
   end record
     with Volatile;

   for DBG_Peripheral use record
      CFGR1 at 16#0# range 0 .. 31;
      CFGR2 at 16#4# range 0 .. 31;
   end record;

   --  Debug support
   DBG_Periph : aliased DBG_Peripheral
     with Import, Address => DBG_Base;

end Interfaces.CH32.DBG;
