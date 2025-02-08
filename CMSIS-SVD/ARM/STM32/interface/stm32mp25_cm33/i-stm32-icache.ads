--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

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

   subtype ICACHE_CRR_BASEADDR_Field is Interfaces.Bit_Types.Byte;
   subtype ICACHE_CRR_RSIZE_Field is Interfaces.Bit_Types.UInt3;
   subtype ICACHE_CRR_REMAPADDR_Field is Interfaces.Bit_Types.UInt11;

   --  ICACHE region 0 configuration register
   type ICACHE_CRR_Register is record
      --  base address for region x
      BASEADDR       : ICACHE_CRR_BASEADDR_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  size for region x
      RSIZE          : ICACHE_CRR_RSIZE_Field := 16#1#;
      --  unspecified
      Reserved_12_14 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  enable for region x
      REN            : Boolean := False;
      --  remapped address for region x
      REMAPADDR      : ICACHE_CRR_REMAPADDR_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  AHB cache master selection for region x
      MSTSEL         : Boolean := False;
      --  unspecified
      Reserved_29_30 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  output burst type for region x
      HBURST         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_CRR_Register use record
      BASEADDR       at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      RSIZE          at 0 range 9 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      REN            at 0 range 15 .. 15;
      REMAPADDR      at 0 range 16 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      MSTSEL         at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      HBURST         at 0 range 31 .. 31;
   end record;

   subtype ICACHE_HWCFGR_WAYS_Field is Interfaces.Bit_Types.UInt2;
   subtype ICACHE_HWCFGR_SIZE_Field is Interfaces.Bit_Types.UInt3;
   subtype ICACHE_HWCFGR_LWIDTH_Field is Interfaces.Bit_Types.UInt2;
   subtype ICACHE_HWCFGR_RANGE_Field is Interfaces.Bit_Types.UInt4;
   subtype ICACHE_HWCFGR_REGION_Field is Interfaces.Bit_Types.UInt3;
   subtype ICACHE_HWCFGR_FMASTER_Field is Interfaces.Bit_Types.UInt2;
   subtype ICACHE_HWCFGR_SMASTER_Field is Interfaces.Bit_Types.UInt2;
   subtype ICACHE_HWCFGR_GSWIDTH_Field is Interfaces.Bit_Types.UInt2;

   --  ICACHE hardware configuration register
   type ICACHE_HWCFGR_Register is record
      --  Read-only. cache associativity, number of ways
      WAYS           : ICACHE_HWCFGR_WAYS_Field;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2;
      --  Read-only. cache size
      SIZE           : ICACHE_HWCFGR_SIZE_Field;
      --  unspecified
      Reserved_7_8   : Interfaces.Bit_Types.UInt2;
      --  Read-only. cache line width
      LWIDTH         : ICACHE_HWCFGR_LWIDTH_Field;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit;
      --  Read-only. range granularity of remapped memory regions
      RANGE_k        : ICACHE_HWCFGR_RANGE_Field;
      --  Read-only. number of regions that can be remapped
      REGION         : ICACHE_HWCFGR_REGION_Field;
      --  unspecified
      Reserved_19_20 : Interfaces.Bit_Types.UInt2;
      --  Read-only. data size of the first AHB master interface (master1)
      FMASTER        : ICACHE_HWCFGR_FMASTER_Field;
      --  Read-only. data size of the second AHB master interface (master2)
      SMASTER        : ICACHE_HWCFGR_SMASTER_Field;
      --  unspecified
      Reserved_25_25 : Interfaces.Bit_Types.Bit;
      --  Read-only. data size of the AHB slave interface
      GSWIDTH        : ICACHE_HWCFGR_GSWIDTH_Field;
      --  unspecified
      Reserved_28_30 : Interfaces.Bit_Types.UInt3;
      --  Read-only. error detection and correction support
      ECC            : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_HWCFGR_Register use record
      WAYS           at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SIZE           at 0 range 4 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      LWIDTH         at 0 range 9 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      RANGE_k        at 0 range 12 .. 15;
      REGION         at 0 range 16 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      FMASTER        at 0 range 21 .. 22;
      SMASTER        at 0 range 23 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      GSWIDTH        at 0 range 26 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      ECC            at 0 range 31 .. 31;
   end record;

   subtype ICACHE_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype ICACHE_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  ICACHE version register
   type ICACHE_VERR_Register is record
      --  Read-only. ICACHE minor revision
      MINREV        : ICACHE_VERR_MINREV_Field;
      --  Read-only. ICACHE major revision
      MAJREV        : ICACHE_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ICACHE register block
   type ICACHE_Peripheral is record
      --  ICACHE control register
      ICACHE_CR     : aliased ICACHE_CR_Register;
      --  ICACHE status register
      ICACHE_SR     : aliased ICACHE_SR_Register;
      --  ICACHE interrupt enable register
      ICACHE_IER    : aliased ICACHE_IER_Register;
      --  ICACHE flag clear register
      ICACHE_FCR    : aliased ICACHE_FCR_Register;
      --  ICACHE hit monitor register
      ICACHE_HMONR  : aliased Interfaces.Bit_Types.UInt32;
      --  ICACHE miss monitor register
      ICACHE_MMONR  : aliased ICACHE_MMONR_Register;
      --  ICACHE region 0 configuration register
      ICACHE_CRR0   : aliased ICACHE_CRR_Register;
      --  ICACHE region 1 configuration register
      ICACHE_CRR1   : aliased ICACHE_CRR_Register;
      --  ICACHE region 2 configuration register
      ICACHE_CRR2   : aliased ICACHE_CRR_Register;
      --  ICACHE region 3 configuration register
      ICACHE_CRR3   : aliased ICACHE_CRR_Register;
      --  ICACHE hardware configuration register
      ICACHE_HWCFGR : aliased ICACHE_HWCFGR_Register;
      --  ICACHE version register
      ICACHE_VERR   : aliased ICACHE_VERR_Register;
      --  ICACHE identification register
      ICACHE_IPIDR  : aliased Interfaces.Bit_Types.UInt32;
      --  ICACHE size identification register
      ICACHE_SIDR   : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for ICACHE_Peripheral use record
      ICACHE_CR     at 16#0# range 0 .. 31;
      ICACHE_SR     at 16#4# range 0 .. 31;
      ICACHE_IER    at 16#8# range 0 .. 31;
      ICACHE_FCR    at 16#C# range 0 .. 31;
      ICACHE_HMONR  at 16#10# range 0 .. 31;
      ICACHE_MMONR  at 16#14# range 0 .. 31;
      ICACHE_CRR0   at 16#20# range 0 .. 31;
      ICACHE_CRR1   at 16#24# range 0 .. 31;
      ICACHE_CRR2   at 16#28# range 0 .. 31;
      ICACHE_CRR3   at 16#2C# range 0 .. 31;
      ICACHE_HWCFGR at 16#3F0# range 0 .. 31;
      ICACHE_VERR   at 16#3F4# range 0 .. 31;
      ICACHE_IPIDR  at 16#3F8# range 0 .. 31;
      ICACHE_SIDR   at 16#3FC# range 0 .. 31;
   end record;

   --  ICACHE register block
   ICACHE_Periph : aliased ICACHE_Peripheral
     with Import, Address => ICACHE_Base;

   --  ICACHE register block
   ICACHE_S_Periph : aliased ICACHE_Peripheral
     with Import, Address => ICACHE_S_Base;

end Interfaces.STM32.ICACHE;
