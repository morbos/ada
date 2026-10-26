--
--  Copyright (C) 2026, AdaCore
--

--  This spec has been automatically generated from CH32V003xx.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.CH32.EXTEND is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype EXTEND_CTR_PLL_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype EXTEND_CTR_FLASH_CLK_TRIM_Field is Interfaces.Bit_Types.UInt3;

   --  Configure the extended control register
   type EXTEND_CTR_Register is record
      --  Configure the PLL clock delay time
      PLL_CFG        : EXTEND_CTR_PLL_CFG_Field := 16#0#;
      --  unspecified
      Reserved_4_5   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LOCKUP_Enable
      LOCKUP_EN      : Boolean := True;
      --  LOCKUP RESET
      LOCKUP_RESET   : Boolean := False;
      --  unspecified
      Reserved_8_9   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LDO_TRIM
      LDO_TRIM       : Boolean := False;
      --  FLASH clock trimming
      FLASH_CLK_TRIM : EXTEND_CTR_FLASH_CLK_TRIM_Field := 16#0#;
      --  Control Register write enable
      WR_EN          : Boolean := False;
      --  Control Register write lock
      WR_LOCK        : Boolean := False;
      --  OPA Enalbe
      OPA_EN         : Boolean := False;
      --  OPA negative end channel selection
      OPA_NSEL       : Boolean := False;
      --  OPA positive end channel selection
      OPA_PSEL       : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTEND_CTR_Register use record
      PLL_CFG        at 0 range 0 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      LOCKUP_EN      at 0 range 6 .. 6;
      LOCKUP_RESET   at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      LDO_TRIM       at 0 range 10 .. 10;
      FLASH_CLK_TRIM at 0 range 11 .. 13;
      WR_EN          at 0 range 14 .. 14;
      WR_LOCK        at 0 range 15 .. 15;
      OPA_EN         at 0 range 16 .. 16;
      OPA_NSEL       at 0 range 17 .. 17;
      OPA_PSEL       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Extend configuration
   type EXTEND_Peripheral is record
      --  Configure the extended control register
      EXTEND_CTR : aliased EXTEND_CTR_Register;
      --  Configure the extended key register
      EXTEND_KR  : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for EXTEND_Peripheral use record
      EXTEND_CTR at 16#0# range 0 .. 31;
      EXTEND_KR  at 16#4# range 0 .. 31;
   end record;

   --  Extend configuration
   EXTEND_Periph : aliased EXTEND_Peripheral
     with Import, Address => EXTEND_Base;

end Interfaces.CH32.EXTEND;
