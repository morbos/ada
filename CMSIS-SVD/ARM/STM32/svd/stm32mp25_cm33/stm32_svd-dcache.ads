--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.DCACHE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DCACHE_CR_CACHECMD_Field is HAL.UInt3;

   --  DCACHE control register
   type DCACHE_CR_Register is record
      --  enable
      EN             : Boolean := False;
      --  Write-only. full cache invalidation
      CACHEINV       : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  cache command maintenance operation (cleans and/or invalidates
      --  anaddress range)
      CACHECMD       : DCACHE_CR_CACHECMD_Field := 16#0#;
      --  Write-only. starts maintenance command (maintenance operation defined
      --  in CACHECMD).
      STARTCMD       : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  read-hit monitor enable
      RHITMEN        : Boolean := False;
      --  read-miss monitor enable
      RMISSMEN       : Boolean := False;
      --  read-hit monitor reset
      RHITMRST       : Boolean := False;
      --  read-miss monitor reset
      RMISSMRST      : Boolean := False;
      --  write-hit monitor enable
      WHITMEN        : Boolean := False;
      --  write-miss monitor enable
      WMISSMEN       : Boolean := False;
      --  write-hit monitor reset
      WHITMRST       : Boolean := False;
      --  write-miss monitor reset
      WMISSMRST      : Boolean := False;
      --  unspecified
      Reserved_24_30 : HAL.UInt7 := 16#0#;
      --  output burst type for cache master port read accesses
      HBURST         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_CR_Register use record
      EN             at 0 range 0 .. 0;
      CACHEINV       at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      CACHECMD       at 0 range 8 .. 10;
      STARTCMD       at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      RHITMEN        at 0 range 16 .. 16;
      RMISSMEN       at 0 range 17 .. 17;
      RHITMRST       at 0 range 18 .. 18;
      RMISSMRST      at 0 range 19 .. 19;
      WHITMEN        at 0 range 20 .. 20;
      WMISSMEN       at 0 range 21 .. 21;
      WHITMRST       at 0 range 22 .. 22;
      WMISSMRST      at 0 range 23 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      HBURST         at 0 range 31 .. 31;
   end record;

   --  DCACHE status register
   type DCACHE_SR_Register is record
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
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_SR_Register use record
      BUSYF         at 0 range 0 .. 0;
      BSYENDF       at 0 range 1 .. 1;
      ERRF          at 0 range 2 .. 2;
      BUSYCMDF      at 0 range 3 .. 3;
      CMDENDF       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  DCACHE interrupt enable register
   type DCACHE_IER_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  interrupt enable on busy end
      BSYENDIE      : Boolean := False;
      --  interrupt enable on cache error
      ERRIE         : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  interrupt enable on command end
      CMDENDIE      : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_IER_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      BSYENDIE      at 0 range 1 .. 1;
      ERRIE         at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CMDENDIE      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  DCACHE flag clear register
   type DCACHE_FCR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Write-only. clear full invalidate busy end flag
      CBSYENDF      : Boolean := False;
      --  Write-only. clear cache error flag
      CERRF         : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Write-only. clear command end flag
      CCMDENDF      : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_FCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      CBSYENDF      at 0 range 1 .. 1;
      CERRF         at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CCMDENDF      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DCACHE_RMMONR_RMISSMON_Field is HAL.UInt16;

   --  DCACHE read-miss monitor register
   type DCACHE_RMMONR_Register is record
      --  Read-only. cache read-miss monitor counter
      RMISSMON       : DCACHE_RMMONR_RMISSMON_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_RMMONR_Register use record
      RMISSMON       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DCACHE_WMMONR_WMISSMON_Field is HAL.UInt16;

   --  DCACHE write-miss monitor register
   type DCACHE_WMMONR_Register is record
      --  Read-only. cache write-miss monitor counter
      WMISSMON       : DCACHE_WMMONR_WMISSMON_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_WMMONR_Register use record
      WMISSMON       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DCACHE_CMDRSADDRR_CMDSTARTADDR_Field is HAL.UInt27;

   --  DCACHE command range start address register
   type DCACHE_CMDRSADDRR_Register is record
      --  unspecified
      Reserved_0_4 : HAL.UInt5 := 16#0#;
      --  start address of range to which the cache maintenance command
      --  specified in DCACHE_CR.
      CMDSTARTADDR : DCACHE_CMDRSADDRR_CMDSTARTADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_CMDRSADDRR_Register use record
      Reserved_0_4 at 0 range 0 .. 4;
      CMDSTARTADDR at 0 range 5 .. 31;
   end record;

   subtype DCACHE_CMDREADDRR_CMDENDADDR_Field is HAL.UInt27;

   --  DCACHE command range end address register
   type DCACHE_CMDREADDRR_Register is record
      --  unspecified
      Reserved_0_4 : HAL.UInt5 := 16#0#;
      --  end address of range to which the cache maintenance command specified
      --  in DCACHE_CR.
      CMDENDADDR   : DCACHE_CMDREADDRR_CMDENDADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_CMDREADDRR_Register use record
      Reserved_0_4 at 0 range 0 .. 4;
      CMDENDADDR   at 0 range 5 .. 31;
   end record;

   subtype DCACHE_HWCFGR_WAYS_Field is HAL.UInt2;
   subtype DCACHE_HWCFGR_SIZE_Field is HAL.UInt3;
   subtype DCACHE_HWCFGR_LWIDTH_Field is HAL.UInt2;
   subtype DCACHE_HWCFGR_MASTERSIZE_Field is HAL.UInt2;

   --  DCACHE hardware configuration register
   type DCACHE_HWCFGR_Register is record
      --  Read-only. cache associativity, number of ways
      WAYS           : DCACHE_HWCFGR_WAYS_Field;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. cache size
      SIZE           : DCACHE_HWCFGR_SIZE_Field;
      --  unspecified
      Reserved_7_8   : HAL.UInt2;
      --  Read-only. cache line width
      LWIDTH         : DCACHE_HWCFGR_LWIDTH_Field;
      --  unspecified
      Reserved_11_22 : HAL.UInt12;
      --  Read-only. data size of AHB master interface
      MASTERSIZE     : DCACHE_HWCFGR_MASTERSIZE_Field;
      --  unspecified
      Reserved_25_30 : HAL.UInt6;
      --  Read-only. error detection and correction support
      ECC            : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_HWCFGR_Register use record
      WAYS           at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SIZE           at 0 range 4 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      LWIDTH         at 0 range 9 .. 10;
      Reserved_11_22 at 0 range 11 .. 22;
      MASTERSIZE     at 0 range 23 .. 24;
      Reserved_25_30 at 0 range 25 .. 30;
      ECC            at 0 range 31 .. 31;
   end record;

   subtype DCACHE_VERR_MINREV_Field is HAL.UInt4;
   subtype DCACHE_VERR_MAJREV_Field is HAL.UInt4;

   --  DCACHE version register
   type DCACHE_VERR_Register is record
      --  Read-only. DCACHE minor revision
      MINREV        : DCACHE_VERR_MINREV_Field;
      --  Read-only. DCACHE major revision
      MAJREV        : DCACHE_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DCACHE register block
   type DCACHE_Peripheral is record
      --  DCACHE control register
      DCACHE_CR         : aliased DCACHE_CR_Register;
      --  DCACHE status register
      DCACHE_SR         : aliased DCACHE_SR_Register;
      --  DCACHE interrupt enable register
      DCACHE_IER        : aliased DCACHE_IER_Register;
      --  DCACHE flag clear register
      DCACHE_FCR        : aliased DCACHE_FCR_Register;
      --  DCACHE read-hit monitor register
      DCACHE_RHMONR     : aliased HAL.UInt32;
      --  DCACHE read-miss monitor register
      DCACHE_RMMONR     : aliased DCACHE_RMMONR_Register;
      --  DCACHE write-hit monitor register
      DCACHE_WHMONR     : aliased HAL.UInt32;
      --  DCACHE write-miss monitor register
      DCACHE_WMMONR     : aliased DCACHE_WMMONR_Register;
      --  DCACHE command range start address register
      DCACHE_CMDRSADDRR : aliased DCACHE_CMDRSADDRR_Register;
      --  DCACHE command range end address register
      DCACHE_CMDREADDRR : aliased DCACHE_CMDREADDRR_Register;
      --  DCACHE hardware configuration register
      DCACHE_HWCFGR     : aliased DCACHE_HWCFGR_Register;
      --  DCACHE version register
      DCACHE_VERR       : aliased DCACHE_VERR_Register;
      --  DCACHE identification register
      DCACHE_IPIDR      : aliased HAL.UInt32;
      --  DCACHE size identification register
      DCACHE_SIDR       : aliased HAL.UInt32;
   end record
     with Volatile;

   for DCACHE_Peripheral use record
      DCACHE_CR         at 16#0# range 0 .. 31;
      DCACHE_SR         at 16#4# range 0 .. 31;
      DCACHE_IER        at 16#8# range 0 .. 31;
      DCACHE_FCR        at 16#C# range 0 .. 31;
      DCACHE_RHMONR     at 16#10# range 0 .. 31;
      DCACHE_RMMONR     at 16#14# range 0 .. 31;
      DCACHE_WHMONR     at 16#20# range 0 .. 31;
      DCACHE_WMMONR     at 16#24# range 0 .. 31;
      DCACHE_CMDRSADDRR at 16#28# range 0 .. 31;
      DCACHE_CMDREADDRR at 16#2C# range 0 .. 31;
      DCACHE_HWCFGR     at 16#3F0# range 0 .. 31;
      DCACHE_VERR       at 16#3F4# range 0 .. 31;
      DCACHE_IPIDR      at 16#3F8# range 0 .. 31;
      DCACHE_SIDR       at 16#3FC# range 0 .. 31;
   end record;

   --  DCACHE register block
   DCACHE_Periph : aliased DCACHE_Peripheral
     with Import, Address => DCACHE_Base;

   --  DCACHE register block
   DCACHE_S_Periph : aliased DCACHE_Peripheral
     with Import, Address => DCACHE_S_Base;

end STM32_SVD.DCACHE;
