--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.ICACHE is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  ICACHE control register
   type ICACHE_CR_Register is record
      --  enable
      EN             : Boolean := False;
      --  Write-only. cache invalidation
      CACHEINV       : Boolean := False;
      --  cache associativity mode selection
      WAYSEL         : Boolean := True;
      --  unspecified
      Reserved_3_15  : Interfaces.Bit_Types.UInt13 := 16#0#;
      --  hit monitor enable
      HITMEN         : Boolean := False;
      --  miss monitor enable
      MISSMEN        : Boolean := False;
      --  hit monitor reset
      HITMRST        : Boolean := False;
      --  miss monitor reset
      MISSMRST       : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_CR_Register use record
      EN             at 0 range 0 .. 0;
      CACHEINV       at 0 range 1 .. 1;
      WAYSEL         at 0 range 2 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      HITMEN         at 0 range 16 .. 16;
      MISSMEN        at 0 range 17 .. 17;
      HITMRST        at 0 range 18 .. 18;
      MISSMRST       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  ICACHE status register
   type ICACHE_SR_Register is record
      --  Read-only. busy flag
      BUSYF         : Boolean;
      --  Read-only. busy end flag
      BSYENDF       : Boolean;
      --  Read-only. cache error flag
      ERRF          : Boolean;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_SR_Register use record
      BUSYF         at 0 range 0 .. 0;
      BSYENDF       at 0 range 1 .. 1;
      ERRF          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  ICACHE interrupt enable register
   type ICACHE_IER_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  interrupt enable on busy end
      BSYENDIE      : Boolean := False;
      --  interrupt enable on cache error
      ERRIE         : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_IER_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      BSYENDIE      at 0 range 1 .. 1;
      ERRIE         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  ICACHE flag clear register
   type ICACHE_FCR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. clear busy end flag
      CBSYENDF      : Boolean := False;
      --  Write-only. clear cache error flag
      CERRF         : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_FCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      CBSYENDF      at 0 range 1 .. 1;
      CERRF         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype ICACHE_MMONR_MISSMON_Field is Interfaces.Bit_Types.UInt16;

   --  ICACHE miss monitor register
   type ICACHE_MMONR_Register is record
      --  Read-only. cache miss monitor counter
      MISSMON        : ICACHE_MMONR_MISSMON_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_MMONR_Register use record
      MISSMON        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Texture cache
   type ICACHE_Peripheral is record
      --  ICACHE control register
      ICACHE_CR    : aliased ICACHE_CR_Register;
      --  ICACHE status register
      ICACHE_SR    : aliased ICACHE_SR_Register;
      --  ICACHE interrupt enable register
      ICACHE_IER   : aliased ICACHE_IER_Register;
      --  ICACHE flag clear register
      ICACHE_FCR   : aliased ICACHE_FCR_Register;
      --  ICACHE hit monitor register
      ICACHE_HMONR : aliased Interfaces.Bit_Types.UInt32;
      --  ICACHE miss monitor register
      ICACHE_MMONR : aliased ICACHE_MMONR_Register;
   end record
     with Volatile;

   for ICACHE_Peripheral use record
      ICACHE_CR    at 16#0# range 0 .. 31;
      ICACHE_SR    at 16#4# range 0 .. 31;
      ICACHE_IER   at 16#8# range 0 .. 31;
      ICACHE_FCR   at 16#C# range 0 .. 31;
      ICACHE_HMONR at 16#10# range 0 .. 31;
      ICACHE_MMONR at 16#14# range 0 .. 31;
   end record;

   --  Texture cache
   ICACHE_Periph : aliased ICACHE_Peripheral
     with Import, Address => ICACHE_Base;

   --  Texture cache
   ICACHE_S_Periph : aliased ICACHE_Peripheral
     with Import, Address => ICACHE_S_Base;

end Interfaces.STM32.ICACHE;
