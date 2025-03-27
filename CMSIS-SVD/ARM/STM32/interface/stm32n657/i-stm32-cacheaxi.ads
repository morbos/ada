--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.CACHEAXI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  CACHEAXI control register 1
   type CACHEAXI_CR1_Register is record
      --  enable
      EN            : Boolean := False;
      --  Write-only. full cache invalidation
      CACHEINV      : Boolean := False;
      --  unspecified
      Reserved_2_15 : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  read-hit monitor enable
      RHITMEN       : Boolean := False;
      --  read-miss monitor enable
      RMISSMEN      : Boolean := False;
      --  Write-only. read-hit monitor reset
      RHITMRST      : Boolean := False;
      --  Write-only. read-miss monitor reset
      RMISSMRST     : Boolean := False;
      --  write-hit monitor enable
      WHITMEN       : Boolean := False;
      --  write-miss monitor enable
      WMISSMEN      : Boolean := False;
      --  Write-only. write-hit monitor reset
      WHITMRST      : Boolean := False;
      --  Write-only. write-miss monitor reset
      WMISSMRST     : Boolean := False;
      --  read-allocate miss monitor enable
      RAMMEN        : Boolean := False;
      --  write-allocate miss monitor enable
      WAMMEN        : Boolean := False;
      --  Write-only. read-allocate miss monitor reset
      RAMMRST       : Boolean := False;
      --  Write-only. write-allocate miss monitor reset
      WAMMRST       : Boolean := False;
      --  write-through monitor enable
      WTMEN         : Boolean := False;
      --  eviction monitor enable
      EVIMEN        : Boolean := False;
      --  Write-only. write-through monitor reset
      WTMRST        : Boolean := False;
      --  Write-only. eviction monitor reset
      EVIMRST       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHEAXI_CR1_Register use record
      EN            at 0 range 0 .. 0;
      CACHEINV      at 0 range 1 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
      RHITMEN       at 0 range 16 .. 16;
      RMISSMEN      at 0 range 17 .. 17;
      RHITMRST      at 0 range 18 .. 18;
      RMISSMRST     at 0 range 19 .. 19;
      WHITMEN       at 0 range 20 .. 20;
      WMISSMEN      at 0 range 21 .. 21;
      WHITMRST      at 0 range 22 .. 22;
      WMISSMRST     at 0 range 23 .. 23;
      RAMMEN        at 0 range 24 .. 24;
      WAMMEN        at 0 range 25 .. 25;
      RAMMRST       at 0 range 26 .. 26;
      WAMMRST       at 0 range 27 .. 27;
      WTMEN         at 0 range 28 .. 28;
      EVIMEN        at 0 range 29 .. 29;
      WTMRST        at 0 range 30 .. 30;
      EVIMRST       at 0 range 31 .. 31;
   end record;

   --  CACHEAXI status register
   type CACHEAXI_SR_Register is record
      --  Read-only. full invalidate busy flag
      BUSYF         : Boolean;
      --  Read-only. full invalidate busy end flag
      BSYENDF       : Boolean;
      --  Read-only. cache error flag
      ERRF          : Boolean;
      --  Read-only. command busy flag
      BUSYCMDF      : Boolean;
      --  Read-only. command end flag
      CMDENDF       : Boolean;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHEAXI_SR_Register use record
      BUSYF         at 0 range 0 .. 0;
      BSYENDF       at 0 range 1 .. 1;
      ERRF          at 0 range 2 .. 2;
      BUSYCMDF      at 0 range 3 .. 3;
      CMDENDF       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  CACHEAXI interrupt enable register
   type CACHEAXI_IER_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  interrupt enable on busy end
      BSYENDIE      : Boolean := False;
      --  interrupt enable on cache error
      ERRIE         : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  interrupt enable on command end
      CMDENDIE      : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHEAXI_IER_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      BSYENDIE      at 0 range 1 .. 1;
      ERRIE         at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CMDENDIE      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  CACHEAXI flag clear register
   type CACHEAXI_FCR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. clear full invalidate busy end flag
      CBSYENDF      : Boolean := False;
      --  Write-only. clear cache error flag
      CERRF         : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. clear command end flag
      CCMDENDF      : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHEAXI_FCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      CBSYENDF      at 0 range 1 .. 1;
      CERRF         at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CCMDENDF      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype CACHEAXI_CR2_CACHECMD_Field is Interfaces.Bit_Types.UInt2;

   --  CACHEAXI control register 2
   type CACHEAXI_CR2_Register is record
      --  Write-only. starts maintenance range command (maintenance operation
      --  defined in CACHECMD).
      STARTCMD      : Boolean := False;
      --  cache command maintenance operation (clean or clean-and-invalidate an
      --  address range)
      CACHECMD      : CACHEAXI_CR2_CACHECMD_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHEAXI_CR2_Register use record
      STARTCMD      at 0 range 0 .. 0;
      CACHECMD      at 0 range 1 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype CACHEAXI_CMDRSADDRR_CMDSTARTADDR_Field is
     Interfaces.Bit_Types.UInt26;

   --  CACHEAXI command range start address register
   type CACHEAXI_CMDRSADDRR_Register is record
      --  unspecified
      Reserved_0_5 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  start address of range to which the cache maintenance command
      --  specified in CACHEAXI_CR2.CACHECMD field applies
      CMDSTARTADDR : CACHEAXI_CMDRSADDRR_CMDSTARTADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHEAXI_CMDRSADDRR_Register use record
      Reserved_0_5 at 0 range 0 .. 5;
      CMDSTARTADDR at 0 range 6 .. 31;
   end record;

   subtype CACHEAXI_CMDREADDRR_CMDENDADDR_Field is Interfaces.Bit_Types.UInt26;

   --  CACHEAXI command range end address register
   type CACHEAXI_CMDREADDRR_Register is record
      --  unspecified
      Reserved_0_5 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  end address of range to which the cache maintenance command specified
      --  in CACHEAXI_CR2.CACHECMD field applies
      CMDENDADDR   : CACHEAXI_CMDREADDRR_CMDENDADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHEAXI_CMDREADDRR_Register use record
      Reserved_0_5 at 0 range 0 .. 5;
      CMDENDADDR   at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  AXI cache
   type CACHEAXI_Peripheral is record
      --  CACHEAXI control register 1
      CACHEAXI_CR1        : aliased CACHEAXI_CR1_Register;
      --  CACHEAXI status register
      CACHEAXI_SR         : aliased CACHEAXI_SR_Register;
      --  CACHEAXI interrupt enable register
      CACHEAXI_IER        : aliased CACHEAXI_IER_Register;
      --  CACHEAXI flag clear register
      CACHEAXI_FCR        : aliased CACHEAXI_FCR_Register;
      --  CACHEAXI read-hit monitor register
      CACHEAXI_RHMONR     : aliased Interfaces.Bit_Types.UInt32;
      --  CACHEAXI read-miss monitor register
      CACHEAXI_RMMONR     : aliased Interfaces.Bit_Types.UInt32;
      --  CACHEAXI read-allocate miss monitor register
      CACHEAXI_RAMMONR    : aliased Interfaces.Bit_Types.UInt32;
      --  CACHEAXI eviction monitor register
      CACHEAXI_EVIMONR    : aliased Interfaces.Bit_Types.UInt32;
      --  CACHEAXI write-hit monitor register
      CACHEAXI_WHMONR     : aliased Interfaces.Bit_Types.UInt32;
      --  CACHEAXI write-miss monitor register
      CACHEAXI_WMMONR     : aliased Interfaces.Bit_Types.UInt32;
      --  CACHEAXI write-allocate miss monitor register
      CACHEAXI_WAMMONR    : aliased Interfaces.Bit_Types.UInt32;
      --  CACHEAXI write-through monitor register
      CACHEAXI_WTMONR     : aliased Interfaces.Bit_Types.UInt32;
      --  CACHEAXI control register 2
      CACHEAXI_CR2        : aliased CACHEAXI_CR2_Register;
      --  CACHEAXI command range start address register
      CACHEAXI_CMDRSADDRR : aliased CACHEAXI_CMDRSADDRR_Register;
      --  CACHEAXI command range end address register
      CACHEAXI_CMDREADDRR : aliased CACHEAXI_CMDREADDRR_Register;
   end record
     with Volatile;

   for CACHEAXI_Peripheral use record
      CACHEAXI_CR1        at 16#0# range 0 .. 31;
      CACHEAXI_SR         at 16#4# range 0 .. 31;
      CACHEAXI_IER        at 16#8# range 0 .. 31;
      CACHEAXI_FCR        at 16#C# range 0 .. 31;
      CACHEAXI_RHMONR     at 16#10# range 0 .. 31;
      CACHEAXI_RMMONR     at 16#14# range 0 .. 31;
      CACHEAXI_RAMMONR    at 16#18# range 0 .. 31;
      CACHEAXI_EVIMONR    at 16#1C# range 0 .. 31;
      CACHEAXI_WHMONR     at 16#20# range 0 .. 31;
      CACHEAXI_WMMONR     at 16#24# range 0 .. 31;
      CACHEAXI_WAMMONR    at 16#28# range 0 .. 31;
      CACHEAXI_WTMONR     at 16#2C# range 0 .. 31;
      CACHEAXI_CR2        at 16#100# range 0 .. 31;
      CACHEAXI_CMDRSADDRR at 16#104# range 0 .. 31;
      CACHEAXI_CMDREADDRR at 16#108# range 0 .. 31;
   end record;

   --  AXI cache
   CACHEAXI_Periph : aliased CACHEAXI_Peripheral
     with Import, Address => CACHEAXI_Base;

   --  AXI cache
   CACHEAXI_S_Periph : aliased CACHEAXI_Peripheral
     with Import, Address => CACHEAXI_S_Base;

end Interfaces.STM32.CACHEAXI;
