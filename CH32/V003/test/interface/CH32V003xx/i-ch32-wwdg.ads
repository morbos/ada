--
--  Copyright (C) 2026, AdaCore
--

--  This spec has been automatically generated from CH32V003xx.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.CH32.WWDG is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTLR_T_Field is Interfaces.Bit_Types.UInt7;

   --  Control register (WWDG_CR)
   type CTLR_Register is record
      --  7-bit counter (MSB to LSB)
      T             : CTLR_T_Field := 16#7F#;
      --  Activation bit
      WDGA          : Boolean := False;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLR_Register use record
      T             at 0 range 0 .. 6;
      WDGA          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CFGR_W_Field is Interfaces.Bit_Types.UInt7;
   subtype CFGR_WDGTB_Field is Interfaces.Bit_Types.UInt2;

   --  Configuration register (WWDG_CFR)
   type CFGR_Register is record
      --  7-bit window value
      W              : CFGR_W_Field := 16#7F#;
      --  Timer Base
      WDGTB          : CFGR_WDGTB_Field := 16#0#;
      --  Early Wakeup Interrupt
      EWI            : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      W              at 0 range 0 .. 6;
      WDGTB          at 0 range 7 .. 8;
      EWI            at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Status register (WWDG_SR)
   type STATR_Register is record
      --  Early Wakeup Interrupt Flag
      WEIF          : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATR_Register use record
      WEIF          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Window watchdog
   type WWDG_Peripheral is record
      --  Control register (WWDG_CR)
      CTLR  : aliased CTLR_Register;
      --  Configuration register (WWDG_CFR)
      CFGR  : aliased CFGR_Register;
      --  Status register (WWDG_SR)
      STATR : aliased STATR_Register;
   end record
     with Volatile;

   for WWDG_Peripheral use record
      CTLR  at 16#0# range 0 .. 31;
      CFGR  at 16#4# range 0 .. 31;
      STATR at 16#8# range 0 .. 31;
   end record;

   --  Window watchdog
   WWDG_Periph : aliased WWDG_Peripheral
     with Import, Address => WWDG_Base;

end Interfaces.CH32.WWDG;
