--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.ICACHE is
   pragma Preelaborate;

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
      Reserved_3_15  : HAL.UInt13 := 16#0#;
      --  hit monitor enable
      HITMEN         : Boolean := False;
      --  miss monitor enable
      MISSMEN        : Boolean := False;
      --  hit monitor reset
      HITMRST        : Boolean := False;
      --  miss monitor reset
      MISSMRST       : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
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
      Reserved_3_31 : HAL.UInt29;
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
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  interrupt enable on busy end
      BSYENDIE      : Boolean := False;
      --  interrupt enable on cache error
      ERRIE         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
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
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Write-only. clear busy end flag
      CBSYENDF      : Boolean := False;
      --  Write-only. clear cache error flag
      CERRF         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_FCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      CBSYENDF      at 0 range 1 .. 1;
      CERRF         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype ICACHE_MMONR_MISSMON_Field is HAL.UInt16;

   --  ICACHE miss monitor register
   type ICACHE_MMONR_Register is record
      --  Read-only. cache miss monitor counter
      MISSMON        : ICACHE_MMONR_MISSMON_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_MMONR_Register use record
      MISSMON        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ICACHE_CRR_BASEADDR_Field is HAL.UInt8;
   subtype ICACHE_CRR_RSIZE_Field is HAL.UInt3;
   subtype ICACHE_CRR_REMAPADDR_Field is HAL.UInt11;

   --  ICACHE region 0 configuration register
   type ICACHE_CRR_Register is record
      --  base address for region x
      BASEADDR       : ICACHE_CRR_BASEADDR_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  size for region x
      RSIZE          : ICACHE_CRR_RSIZE_Field := 16#1#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  enable for region x
      REN            : Boolean := False;
      --  remapped address for region x
      REMAPADDR      : ICACHE_CRR_REMAPADDR_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  AHB cache master selection for region x
      MSTSEL         : Boolean := False;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
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

   -----------------
   -- Peripherals --
   -----------------

   --  ICACHE register block
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
      ICACHE_HMONR : aliased HAL.UInt32;
      --  ICACHE miss monitor register
      ICACHE_MMONR : aliased ICACHE_MMONR_Register;
      --  ICACHE region 0 configuration register
      ICACHE_CRR0  : aliased ICACHE_CRR_Register;
      --  ICACHE region 1 configuration register
      ICACHE_CRR1  : aliased ICACHE_CRR_Register;
      --  ICACHE region 2 configuration register
      ICACHE_CRR2  : aliased ICACHE_CRR_Register;
      --  ICACHE region 3 configuration register
      ICACHE_CRR3  : aliased ICACHE_CRR_Register;
   end record
     with Volatile;

   for ICACHE_Peripheral use record
      ICACHE_CR    at 16#0# range 0 .. 31;
      ICACHE_SR    at 16#4# range 0 .. 31;
      ICACHE_IER   at 16#8# range 0 .. 31;
      ICACHE_FCR   at 16#C# range 0 .. 31;
      ICACHE_HMONR at 16#10# range 0 .. 31;
      ICACHE_MMONR at 16#14# range 0 .. 31;
      ICACHE_CRR0  at 16#20# range 0 .. 31;
      ICACHE_CRR1  at 16#24# range 0 .. 31;
      ICACHE_CRR2  at 16#28# range 0 .. 31;
      ICACHE_CRR3  at 16#2C# range 0 .. 31;
   end record;

   --  ICACHE register block
   ICACHE_Periph : aliased ICACHE_Peripheral
     with Import, Address => ICACHE_Base;

   --  ICACHE register block
   SEC_ICACHE_Periph : aliased ICACHE_Peripheral
     with Import, Address => SEC_ICACHE_Base;

end STM32_SVD.ICACHE;
