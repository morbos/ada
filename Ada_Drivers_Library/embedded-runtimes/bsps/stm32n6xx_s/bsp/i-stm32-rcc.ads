--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.RCC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  RCC control register
   type RCC_CR_Register is record
      --  LSI oscillator enable in Run/Sleep mode.
      LSION          : Boolean := False;
      --  LSE oscillator enable in Run/Sleep mode.
      LSEON          : Boolean := False;
      --  MSI oscillator enable in Run/Sleep mode.
      MSION          : Boolean := False;
      --  HSI oscillator enable in Run/Sleep mode.
      HSION          : Boolean := True;
      --  HSE oscillator enable in Run/Sleep mode.
      HSEON          : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  PLL1 enable in Run/Sleep mode.
      PLL1ON         : Boolean := False;
      --  PLL2 enable in Run/Sleep mode.
      PLL2ON         : Boolean := False;
      --  PLL3 enable in Run/Sleep mode.
      PLL3ON         : Boolean := False;
      --  PLL4 enable in Run/Sleep mode.
      PLL4ON         : Boolean := False;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CR_Register use record
      LSION          at 0 range 0 .. 0;
      LSEON          at 0 range 1 .. 1;
      MSION          at 0 range 2 .. 2;
      HSION          at 0 range 3 .. 3;
      HSEON          at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PLL1ON         at 0 range 8 .. 8;
      PLL2ON         at 0 range 9 .. 9;
      PLL3ON         at 0 range 10 .. 10;
      PLL4ON         at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  RCC status register
   type RCC_SR_Register is record
      --  Read-only. LSI clock ready flag
      LSIRDY         : Boolean;
      --  Read-only. LSE clock ready flag
      LSERDY         : Boolean;
      --  Read-only. MSI clock ready flag
      MSIRDY         : Boolean;
      --  Read-only. HSI clock ready flag
      HSIRDY         : Boolean;
      --  Read-only. HSE clock ready flag
      HSERDY         : Boolean;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3;
      --  Read-only. PLL1 clock ready flag
      PLL1RDY        : Boolean;
      --  Read-only. PLL2 clock ready flag
      PLL2RDY        : Boolean;
      --  Read-only. PLL3 clock ready flag
      PLL3RDY        : Boolean;
      --  Read-only. PLL4 clock ready flag
      PLL4RDY        : Boolean;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SR_Register use record
      LSIRDY         at 0 range 0 .. 0;
      LSERDY         at 0 range 1 .. 1;
      MSIRDY         at 0 range 2 .. 2;
      HSIRDY         at 0 range 3 .. 3;
      HSERDY         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PLL1RDY        at 0 range 8 .. 8;
      PLL2RDY        at 0 range 9 .. 9;
      PLL3RDY        at 0 range 10 .. 10;
      PLL4RDY        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  RCC Stop mode control register
   type RCC_STOPCR_Register is record
      --  LSI oscillator enable in Stop mode.
      LSISTOPEN     : Boolean := False;
      --  LSE oscillator enable in Stop mode.
      LSESTOPEN     : Boolean := False;
      --  MSI oscillator enable in Stop mode.
      MSISTOPEN     : Boolean := False;
      --  HSI oscillator enable in Stop mode.
      HSISTOPEN     : Boolean := True;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_STOPCR_Register use record
      LSISTOPEN     at 0 range 0 .. 0;
      LSESTOPEN     at 0 range 1 .. 1;
      MSISTOPEN     at 0 range 2 .. 2;
      HSISTOPEN     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype RCC_CFGR1_CPUSW_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CFGR1_CPUSWS_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CFGR1_SYSSW_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CFGR1_SYSSWS_Field is Interfaces.Bit_Types.UInt2;

   --  RCC configuration register 1
   type RCC_CFGR1_Register is record
      --  System clock selection after a wake up from system Stop.
      STOPWUCK       : Boolean := False;
      --  unspecified
      Reserved_1_15  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  CPU clock switch selection
      CPUSW          : RCC_CFGR1_CPUSW_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Read-only. CPU clock switch status
      CPUSWS         : RCC_CFGR1_CPUSWS_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  System clock switch selection
      SYSSW          : RCC_CFGR1_SYSSW_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Read-only. System clock switch status
      SYSSWS         : RCC_CFGR1_SYSSWS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CFGR1_Register use record
      STOPWUCK       at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      CPUSW          at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      CPUSWS         at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      SYSSW          at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      SYSSWS         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_CFGR2_PPRE1_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CFGR2_PPRE2_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CFGR2_PPRE4_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CFGR2_PPRE5_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CFGR2_HPRE_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CFGR2_TIMPRE_Field is Interfaces.Bit_Types.UInt2;

   --  RCC configuration register 2
   type RCC_CFGR2_Register is record
      --  CPU domain APB1 prescaler
      PPRE1          : RCC_CFGR2_PPRE1_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPU domain APB2 prescaler
      PPRE2          : RCC_CFGR2_PPRE2_Field := 16#0#;
      --  unspecified
      Reserved_7_11  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  CPU domain APB4 prescaler
      PPRE4          : RCC_CFGR2_PPRE4_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPU domain APB5 prescaler
      PPRE5          : RCC_CFGR2_PPRE5_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  AHB clock prescaler
      HPRE           : RCC_CFGR2_HPRE_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Timers clocks prescaler selection
      TIMPRE         : RCC_CFGR2_TIMPRE_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CFGR2_Register use record
      PPRE1          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PPRE2          at 0 range 4 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      PPRE4          at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PPRE5          at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      HPRE           at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TIMPRE         at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype RCC_CKPROTR_XSPI3SELS_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CKPROTR_XSPI2SELS_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CKPROTR_XSPI1SELS_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CKPROTR_FMCSELS_Field is Interfaces.Bit_Types.UInt2;

   --  RCC clock protection register
   type RCC_CKPROTR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. XSPI3 clock selection current status
      XSPI3SELS      : RCC_CKPROTR_XSPI3SELS_Field;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2;
      --  Read-only. XSPI2 clock selection current status
      XSPI2SELS      : RCC_CKPROTR_XSPI2SELS_Field;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2;
      --  Read-only. XSPI1 clock selection current status
      XSPI1SELS      : RCC_CKPROTR_XSPI1SELS_Field;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2;
      --  Read-only. FMC clock selection current status
      FMCSELS        : RCC_CKPROTR_FMCSELS_Field;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CKPROTR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      XSPI3SELS      at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      XSPI2SELS      at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      XSPI1SELS      at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      FMCSELS        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  RCC backup domain protection register
   type RCC_BDCR_Register is record
      --  unspecified
      Reserved_0_30 : Interfaces.Bit_Types.UInt31 := 16#0#;
      --  VSW domain software reset.
      VSWRST        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_BDCR_Register use record
      Reserved_0_30 at 0 range 0 .. 30;
      VSWRST        at 0 range 31 .. 31;
   end record;

   --  RCC reset status register for hardware
   type RCC_HWRSR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Write-only. Remove reset flag
      RMVF           : Boolean := False;
      --  Read-only. CPU lockup reset flag.
      LCKRSTF        : Boolean := False;
      --  unspecified
      Reserved_18_20 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. BOR flag
      BORRSTF        : Boolean := True;
      --  Read-only. Pin reset flag (NRST)
      PINRSTF        : Boolean := True;
      --  Read-only. POR/PDR flag.
      PORRSTF        : Boolean := True;
      --  Read-only. Software system reset flag (1)
      SFTRSTF        : Boolean := False;
      --  unspecified
      Reserved_25_25 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Independent Watchdog reset flag.
      IWDGRSTF       : Boolean := False;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Window watchdog reset flag
      WWDGRSTF       : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Illegal Stop or Standby flag.
      LPWRRSTF       : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_HWRSR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      RMVF           at 0 range 16 .. 16;
      LCKRSTF        at 0 range 17 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      BORRSTF        at 0 range 21 .. 21;
      PINRSTF        at 0 range 22 .. 22;
      PORRSTF        at 0 range 23 .. 23;
      SFTRSTF        at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      IWDGRSTF       at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      WWDGRSTF       at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      LPWRRSTF       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  RCC reset register
   type RCC_RSR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Write-only. Remove reset flag
      RMVF           : Boolean := False;
      --  Read-only. CPU lockup reset flag.
      LCKRSTF        : Boolean := False;
      --  unspecified
      Reserved_18_20 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. BOR flag
      BORRSTF        : Boolean := True;
      --  Read-only. Pin reset flag (NRST)
      PINRSTF        : Boolean := True;
      --  Read-only. POR/PDR flag.
      PORRSTF        : Boolean := True;
      --  Read-only. Software System reset flag (1)
      SFTRSTF        : Boolean := False;
      --  unspecified
      Reserved_25_25 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Independent Watchdog reset flag.
      IWDGRSTF       : Boolean := False;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Window Watchdog reset flag
      WWDGRSTF       : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Illegal Stop or Standby flag.
      LPWRRSTF       : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_RSR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      RMVF           at 0 range 16 .. 16;
      LCKRSTF        at 0 range 17 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      BORRSTF        at 0 range 21 .. 21;
      PINRSTF        at 0 range 22 .. 22;
      PORRSTF        at 0 range 23 .. 23;
      SFTRSTF        at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      IWDGRSTF       at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      WWDGRSTF       at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      LPWRRSTF       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype RCC_LSECFGR_LSEDRV_Field is Interfaces.Bit_Types.UInt2;

   --  RCC LSE configuration register
   type RCC_LSECFGR_Register is record
      --  unspecified
      Reserved_0_6   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. LSE clock security system (CSS) enable
      LSECSSON       : Boolean := False;
      --  LSE clock security system (CSS) re-arm function
      LSECSSRA       : Boolean := False;
      --  Read-only. LSE clock security system (CSS) failure detection
      LSECSSD        : Boolean := False;
      --  unspecified
      Reserved_10_14 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  LSE clock bypass
      LSEBYP         : Boolean := False;
      --  LSE clock type in Bypass mode
      LSEEXT         : Boolean := False;
      --  LSE clock glitch filter enable
      LSEGFON        : Boolean := False;
      --  LSE oscillator driving capability
      LSEDRV         : RCC_LSECFGR_LSEDRV_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LSECFGR_Register use record
      Reserved_0_6   at 0 range 0 .. 6;
      LSECSSON       at 0 range 7 .. 7;
      LSECSSRA       at 0 range 8 .. 8;
      LSECSSD        at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      LSEBYP         at 0 range 15 .. 15;
      LSEEXT         at 0 range 16 .. 16;
      LSEGFON        at 0 range 17 .. 17;
      LSEDRV         at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype RCC_MSICFGR_MSITRIM_Field is Interfaces.Bit_Types.UInt5;
   subtype RCC_MSICFGR_MSICAL_Field is Interfaces.Bit_Types.Byte;

   --  RCC MSI configuration register
   type RCC_MSICFGR_Register is record
      --  unspecified
      Reserved_0_8   : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  MSI oscillator frequency select
      MSIFREQSEL     : Boolean := False;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  MSI clock trimming
      MSITRIM        : RCC_MSICFGR_MSITRIM_Field := 16#0#;
      --  unspecified
      Reserved_21_22 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Read-only. MSI clock calibration
      MSICAL         : RCC_MSICFGR_MSICAL_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MSICFGR_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      MSIFREQSEL     at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      MSITRIM        at 0 range 16 .. 20;
      Reserved_21_22 at 0 range 21 .. 22;
      MSICAL         at 0 range 23 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype RCC_HSICFGR_HSIDIV_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_HSICFGR_HSITRIM_Field is Interfaces.Bit_Types.UInt7;
   subtype RCC_HSICFGR_HSICAL_Field is Interfaces.Bit_Types.UInt9;

   --  RCC HSI configuration register
   type RCC_HSICFGR_Register is record
      --  unspecified
      Reserved_0_6  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  HSI clock divider
      HSIDIV        : RCC_HSICFGR_HSIDIV_Field := 16#0#;
      --  unspecified
      Reserved_9_15 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  HSI clock trimming
      HSITRIM       : RCC_HSICFGR_HSITRIM_Field := 16#0#;
      --  Read-only. HSI clock calibration
      HSICAL        : RCC_HSICFGR_HSICAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_HSICFGR_Register use record
      Reserved_0_6  at 0 range 0 .. 6;
      HSIDIV        at 0 range 7 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
      HSITRIM       at 0 range 16 .. 22;
      HSICAL        at 0 range 23 .. 31;
   end record;

   subtype RCC_HSIMCR_HSIREF_Field is Interfaces.Bit_Types.UInt11;
   subtype RCC_HSIMCR_HSIDEV_Field is Interfaces.Bit_Types.UInt6;

   --  RCC HSI monitor control register
   type RCC_HSIMCR_Register is record
      --  HSI clock cycle counter reference value.
      HSIREF         : RCC_HSIMCR_HSIREF_Field := 16#7A1#;
      --  unspecified
      Reserved_11_15 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  HSI clock count deviation value
      HSIDEV         : RCC_HSIMCR_HSIDEV_Field := 16#1F#;
      --  unspecified
      Reserved_22_30 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  HSI clock period monitor enable
      HSIMONEN       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_HSIMCR_Register use record
      HSIREF         at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      HSIDEV         at 0 range 16 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      HSIMONEN       at 0 range 31 .. 31;
   end record;

   subtype RCC_HSIMSR_HSIVAL_Field is Interfaces.Bit_Types.UInt11;

   --  RCC HSI monitor status register
   type RCC_HSIMSR_Register is record
      --  Read-only. HSI clock cycle counter measured value.
      HSIVAL         : RCC_HSIMSR_HSIVAL_Field;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_HSIMSR_Register use record
      HSIVAL         at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype RCC_HSECFGR_HSECSSBPRE_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_HSECFGR_HSEDRV_Field is Interfaces.Bit_Types.UInt2;

   --  RCC HSE configuration register
   type RCC_HSECFGR_Register is record
      --  unspecified
      Reserved_0_5   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  HSE div2 oscillator clock in Bypass mode
      HSEDIV2BYP     : Boolean := False;
      --  HSE clock security system (CSS) enable
      HSECSSON       : Boolean := False;
      --  HSE clock security system (CSS) re-arm function
      HSECSSRA       : Boolean := False;
      --  Read-only. HSE clock security system (CSS) failure detection
      HSECSSD        : Boolean := False;
      --  HSE clock security system (CSS) bypass enable
      HSECSSBYP      : Boolean := False;
      --  HSE clock security system (CSS) bypass divider
      HSECSSBPRE     : RCC_HSECFGR_HSECSSBPRE_Field := 16#1#;
      --  HSE clock bypass
      HSEBYP         : Boolean := False;
      --  HSE clock type in Bypass mode
      HSEEXT         : Boolean := False;
      --  HSE clock glitch filter enable
      HSEGFON        : Boolean := False;
      --  HSE oscillator driving capability
      HSEDRV         : RCC_HSECFGR_HSEDRV_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_HSECFGR_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      HSEDIV2BYP     at 0 range 6 .. 6;
      HSECSSON       at 0 range 7 .. 7;
      HSECSSRA       at 0 range 8 .. 8;
      HSECSSD        at 0 range 9 .. 9;
      HSECSSBYP      at 0 range 10 .. 10;
      HSECSSBPRE     at 0 range 11 .. 14;
      HSEBYP         at 0 range 15 .. 15;
      HSEEXT         at 0 range 16 .. 16;
      HSEGFON        at 0 range 17 .. 17;
      HSEDRV         at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype RCC_PLL1CFGR1_PLL1DIVN_Field is Interfaces.Bit_Types.UInt12;
   subtype RCC_PLL1CFGR1_PLL1DIVM_Field is Interfaces.Bit_Types.UInt6;
   subtype RCC_PLL1CFGR1_PLL1SEL_Field is Interfaces.Bit_Types.UInt3;

   --  RCC PLL1 configuration register 1
   type RCC_PLL1CFGR1_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  PLL1 Integer part for the VCO multiplication factor
      PLL1DIVN       : RCC_PLL1CFGR1_PLL1DIVN_Field := 16#25#;
      --  PLL1 reference input clock divide frequency ratio
      PLL1DIVM       : RCC_PLL1CFGR1_PLL1DIVM_Field := 16#2#;
      --  unspecified
      Reserved_26_26 : Interfaces.Bit_Types.Bit := 16#0#;
      --  PLL1 bypass
      PLL1BYP        : Boolean := True;
      --  PLL1 source selection of the reference clock
      PLL1SEL        : RCC_PLL1CFGR1_PLL1SEL_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL1CFGR1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PLL1DIVN       at 0 range 8 .. 19;
      PLL1DIVM       at 0 range 20 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      PLL1BYP        at 0 range 27 .. 27;
      PLL1SEL        at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype RCC_PLL1CFGR2_PLL1DIVNFRAC_Field is Interfaces.Bit_Types.UInt24;

   --  RCC PLL1 configuration register 2
   type RCC_PLL1CFGR2_Register is record
      --  PLL1 Fractional part of the VCO multiplication factor
      PLL1DIVNFRAC   : RCC_PLL1CFGR2_PLL1DIVNFRAC_Field := 16#800000#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL1CFGR2_Register use record
      PLL1DIVNFRAC   at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_PLL1CFGR3_PLL1MODDIV_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_PLL1CFGR3_PLL1MODSPR_Field is Interfaces.Bit_Types.UInt5;
   subtype RCC_PLL1CFGR3_PLL1PDIV2_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_PLL1CFGR3_PLL1PDIV1_Field is Interfaces.Bit_Types.UInt3;

   --  RCC PLL1 configuration register 3
   type RCC_PLL1CFGR3_Register is record
      --  PLL1 Modulation Spread Spectrum reset
      PLL1MODSSRST   : Boolean := True;
      --  PLL1 noise canceling DAC enable in fractional mode.
      PLL1DACEN      : Boolean := False;
      --  PLL1 Modulation Spread-Spectrum Disable
      PLL1MODSSDIS   : Boolean := True;
      --  PLL1 Modulation Spread-Spectrum (and Fractional Divide) enable
      PLL1MODDSEN    : Boolean := True;
      --  PLL1 Modulation Spread-Spectrum Down
      PLL1MODSPRDW   : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  PLL1 Modulation Division frequency adjustment
      PLL1MODDIV     : RCC_PLL1CFGR3_PLL1MODDIV_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  PLL1 Modulation Spread depth adjustment
      PLL1MODSPR     : RCC_PLL1CFGR3_PLL1MODSPR_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  PLL1 VCO frequency divider level 2
      PLL1PDIV2      : RCC_PLL1CFGR3_PLL1PDIV2_Field := 16#1#;
      --  PLL1 VCO frequency divider level 1
      PLL1PDIV1      : RCC_PLL1CFGR3_PLL1PDIV1_Field := 16#1#;
      --  PLL1 post divider POSTDIV1, POSTDIV2, and PLL clock output enable
      PLL1PDIVEN     : Boolean := True;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL1CFGR3_Register use record
      PLL1MODSSRST   at 0 range 0 .. 0;
      PLL1DACEN      at 0 range 1 .. 1;
      PLL1MODSSDIS   at 0 range 2 .. 2;
      PLL1MODDSEN    at 0 range 3 .. 3;
      PLL1MODSPRDW   at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PLL1MODDIV     at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PLL1MODSPR     at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PLL1PDIV2      at 0 range 24 .. 26;
      PLL1PDIV1      at 0 range 27 .. 29;
      PLL1PDIVEN     at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype RCC_PLL2CFGR1_PLL2DIVN_Field is Interfaces.Bit_Types.UInt12;
   subtype RCC_PLL2CFGR1_PLL2DIVM_Field is Interfaces.Bit_Types.UInt6;
   subtype RCC_PLL2CFGR1_PLL2SEL_Field is Interfaces.Bit_Types.UInt3;

   --  RCC PLL2 configuration register 1
   type RCC_PLL2CFGR1_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  PLL2 Integer part for the VCO multiplication factor
      PLL2DIVN       : RCC_PLL2CFGR1_PLL2DIVN_Field := 16#0#;
      --  PLL2 reference input clock divide frequency ratio
      PLL2DIVM       : RCC_PLL2CFGR1_PLL2DIVM_Field := 16#0#;
      --  unspecified
      Reserved_26_26 : Interfaces.Bit_Types.Bit := 16#0#;
      --  PLL2 bypass
      PLL2BYP        : Boolean := True;
      --  PLL2 source selection of the reference clock
      PLL2SEL        : RCC_PLL2CFGR1_PLL2SEL_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL2CFGR1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PLL2DIVN       at 0 range 8 .. 19;
      PLL2DIVM       at 0 range 20 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      PLL2BYP        at 0 range 27 .. 27;
      PLL2SEL        at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype RCC_PLL2CFGR2_PLL2DIVNFRAC_Field is Interfaces.Bit_Types.UInt24;

   --  RCC PLL2 configuration register 2
   type RCC_PLL2CFGR2_Register is record
      --  PLL2 Fractional part of the VCO multiplication factor
      PLL2DIVNFRAC   : RCC_PLL2CFGR2_PLL2DIVNFRAC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL2CFGR2_Register use record
      PLL2DIVNFRAC   at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_PLL2CFGR3_PLL2MODDIV_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_PLL2CFGR3_PLL2MODSPR_Field is Interfaces.Bit_Types.UInt5;
   subtype RCC_PLL2CFGR3_PLL2PDIV2_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_PLL2CFGR3_PLL2PDIV1_Field is Interfaces.Bit_Types.UInt3;

   --  RCC PLL2 configuration register 3
   type RCC_PLL2CFGR3_Register is record
      --  PLL2 Modulation Spread Spectrum reset
      PLL2MODSSRST   : Boolean := True;
      --  PLL2 noise canceling DAC enable in fractional mode.
      PLL2DACEN      : Boolean := False;
      --  PLL2 Modulation Spread-Spectrum Disable
      PLL2MODSSDIS   : Boolean := True;
      --  PLL2 Modulation Spread-Spectrum (and Fractional Divide) enable
      PLL2MODDSEN    : Boolean := False;
      --  PLL2 Modulation Down Spread
      PLL2MODSPRDW   : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  PLL2 Modulation Division frequency adjustment
      PLL2MODDIV     : RCC_PLL2CFGR3_PLL2MODDIV_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  PLL2 Modulation Spread depth adjustment
      PLL2MODSPR     : RCC_PLL2CFGR3_PLL2MODSPR_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  PLL2 VCO frequency divider level 2
      PLL2PDIV2      : RCC_PLL2CFGR3_PLL2PDIV2_Field := 16#1#;
      --  PLL2 VCO frequency divider level 1
      PLL2PDIV1      : RCC_PLL2CFGR3_PLL2PDIV1_Field := 16#1#;
      --  PLL2 post divider POSTDIV1, POSTDIV2, and PLL clock output enable
      PLL2PDIVEN     : Boolean := True;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL2CFGR3_Register use record
      PLL2MODSSRST   at 0 range 0 .. 0;
      PLL2DACEN      at 0 range 1 .. 1;
      PLL2MODSSDIS   at 0 range 2 .. 2;
      PLL2MODDSEN    at 0 range 3 .. 3;
      PLL2MODSPRDW   at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PLL2MODDIV     at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PLL2MODSPR     at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PLL2PDIV2      at 0 range 24 .. 26;
      PLL2PDIV1      at 0 range 27 .. 29;
      PLL2PDIVEN     at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype RCC_PLL3CFGR1_PLL3DIVN_Field is Interfaces.Bit_Types.UInt12;
   subtype RCC_PLL3CFGR1_PLL3DIVM_Field is Interfaces.Bit_Types.UInt6;
   subtype RCC_PLL3CFGR1_PLL3SEL_Field is Interfaces.Bit_Types.UInt3;

   --  RCC PLL3 configuration register 1
   type RCC_PLL3CFGR1_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  PLL3 Integer part for the VCO multiplication factor
      PLL3DIVN       : RCC_PLL3CFGR1_PLL3DIVN_Field := 16#0#;
      --  PLL3 reference input clock divide frequency ratio
      PLL3DIVM       : RCC_PLL3CFGR1_PLL3DIVM_Field := 16#0#;
      --  unspecified
      Reserved_26_26 : Interfaces.Bit_Types.Bit := 16#0#;
      --  PLL3 bypass
      PLL3BYP        : Boolean := True;
      --  PLL3 source selection of the reference clock
      PLL3SEL        : RCC_PLL3CFGR1_PLL3SEL_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL3CFGR1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PLL3DIVN       at 0 range 8 .. 19;
      PLL3DIVM       at 0 range 20 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      PLL3BYP        at 0 range 27 .. 27;
      PLL3SEL        at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype RCC_PLL3CFGR2_PLL3DIVNFRAC_Field is Interfaces.Bit_Types.UInt24;

   --  RCC PLL3 configuration register 2
   type RCC_PLL3CFGR2_Register is record
      --  PLL3 Fractional part of the VCO multiplication factor
      PLL3DIVNFRAC   : RCC_PLL3CFGR2_PLL3DIVNFRAC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL3CFGR2_Register use record
      PLL3DIVNFRAC   at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_PLL3CFGR3_PLL3MODDIV_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_PLL3CFGR3_PLL3MODSPR_Field is Interfaces.Bit_Types.UInt5;
   subtype RCC_PLL3CFGR3_PLL3PDIV2_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_PLL3CFGR3_PLL3PDIV1_Field is Interfaces.Bit_Types.UInt3;

   --  RCC PLL3 configuration register 3
   type RCC_PLL3CFGR3_Register is record
      --  PLL3 Modulation Spread Spectrum reset
      PLL3MODSSRST   : Boolean := True;
      --  PLL3 noise canceling DAC enable in fractional mode.
      PLL3DACEN      : Boolean := False;
      --  PLL3 Modulation Spread-Spectrum Disable
      PLL3MODSSDIS   : Boolean := True;
      --  PLL3 Modulation Spread-Spectrum (and Fractional Divide) enable
      PLL3MODDSEN    : Boolean := False;
      --  PLL3 Modulation Down Spread
      PLL3MODSPRDW   : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  PLL3 Modulation Division frequency adjustment
      PLL3MODDIV     : RCC_PLL3CFGR3_PLL3MODDIV_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  PLL3 Modulation Spread depth adjustment
      PLL3MODSPR     : RCC_PLL3CFGR3_PLL3MODSPR_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  PLL3 VCO frequency divider level 2
      PLL3PDIV2      : RCC_PLL3CFGR3_PLL3PDIV2_Field := 16#1#;
      --  PLL3 VCO frequency divider level 1
      PLL3PDIV1      : RCC_PLL3CFGR3_PLL3PDIV1_Field := 16#1#;
      --  PLL3 post divider POSTDIV1, POSTDIV2, and PLL clock output enable
      PLL3PDIVEN     : Boolean := True;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL3CFGR3_Register use record
      PLL3MODSSRST   at 0 range 0 .. 0;
      PLL3DACEN      at 0 range 1 .. 1;
      PLL3MODSSDIS   at 0 range 2 .. 2;
      PLL3MODDSEN    at 0 range 3 .. 3;
      PLL3MODSPRDW   at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PLL3MODDIV     at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PLL3MODSPR     at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PLL3PDIV2      at 0 range 24 .. 26;
      PLL3PDIV1      at 0 range 27 .. 29;
      PLL3PDIVEN     at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype RCC_PLL4CFGR1_PLL4DIVN_Field is Interfaces.Bit_Types.UInt12;
   subtype RCC_PLL4CFGR1_PLL4DIVM_Field is Interfaces.Bit_Types.UInt6;
   subtype RCC_PLL4CFGR1_PLL4SEL_Field is Interfaces.Bit_Types.UInt3;

   --  RCC PLL4 configuration register 1
   type RCC_PLL4CFGR1_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  PLL4 Integer part for the VCO multiplication factor
      PLL4DIVN       : RCC_PLL4CFGR1_PLL4DIVN_Field := 16#0#;
      --  PLL4 reference input clock divide frequency ratio
      PLL4DIVM       : RCC_PLL4CFGR1_PLL4DIVM_Field := 16#0#;
      --  unspecified
      Reserved_26_26 : Interfaces.Bit_Types.Bit := 16#0#;
      --  PLL4 bypass
      PLL4BYP        : Boolean := True;
      --  PLL4 source selection of the reference clock
      PLL4SEL        : RCC_PLL4CFGR1_PLL4SEL_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL4CFGR1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PLL4DIVN       at 0 range 8 .. 19;
      PLL4DIVM       at 0 range 20 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      PLL4BYP        at 0 range 27 .. 27;
      PLL4SEL        at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype RCC_PLL4CFGR2_PLL4DIVNFRAC_Field is Interfaces.Bit_Types.UInt24;

   --  RCC PLL4 configuration register 2
   type RCC_PLL4CFGR2_Register is record
      --  PLL4 Fractional part of the VCO multiplication factor
      PLL4DIVNFRAC   : RCC_PLL4CFGR2_PLL4DIVNFRAC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL4CFGR2_Register use record
      PLL4DIVNFRAC   at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_PLL4CFGR3_PLL4MODDIV_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_PLL4CFGR3_PLL4MODSPR_Field is Interfaces.Bit_Types.UInt5;
   subtype RCC_PLL4CFGR3_PLL4PDIV2_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_PLL4CFGR3_PLL4PDIV1_Field is Interfaces.Bit_Types.UInt3;

   --  RCC PLL4 configuration register 3
   type RCC_PLL4CFGR3_Register is record
      --  PLL4 Modulation Spread Spectrum reset
      PLL4MODSSRST   : Boolean := True;
      --  PLL4 noise canceling DAC enable in fractional mode.
      PLL4DACEN      : Boolean := False;
      --  PLL4 Modulation Spread-Spectrum Disable
      PLL4MODSSDIS   : Boolean := True;
      --  PLL4 Modulation Spread-Spectrum (and Fractional Divide) enable
      PLL4MODDSEN    : Boolean := False;
      --  PLL4 Modulation Down Spread
      PLL4MODSPRDW   : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  PLL4 Modulation Division frequency adjustment
      PLL4MODDIV     : RCC_PLL4CFGR3_PLL4MODDIV_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  PLL4 Modulation Spread depth adjustment
      PLL4MODSPR     : RCC_PLL4CFGR3_PLL4MODSPR_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  PLL4 VCO frequency divider level 2
      PLL4PDIV2      : RCC_PLL4CFGR3_PLL4PDIV2_Field := 16#1#;
      --  PLL4 VCO frequency divider level 1
      PLL4PDIV1      : RCC_PLL4CFGR3_PLL4PDIV1_Field := 16#1#;
      --  PLL4 post divider POSTDIV1, POSTDIV2, and PLL clock output enable
      PLL4PDIVEN     : Boolean := True;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL4CFGR3_Register use record
      PLL4MODSSRST   at 0 range 0 .. 0;
      PLL4DACEN      at 0 range 1 .. 1;
      PLL4MODSSDIS   at 0 range 2 .. 2;
      PLL4MODDSEN    at 0 range 3 .. 3;
      PLL4MODSPRDW   at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PLL4MODDIV     at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PLL4MODSPR     at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PLL4PDIV2      at 0 range 24 .. 26;
      PLL4PDIV1      at 0 range 27 .. 29;
      PLL4PDIVEN     at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype RCC_IC1CFGR_IC1INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC1CFGR_IC1SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC1 configuration register
   type RCC_IC1CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC1 integer division factor
      IC1INT         : RCC_IC1CFGR_IC1INT_Field := 16#2#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC1 Source Selection
      IC1SEL         : RCC_IC1CFGR_IC1SEL_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC1CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC1INT         at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC1SEL         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC2CFGR_IC2INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC2CFGR_IC2SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC2 configuration register
   type RCC_IC2CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC2 integer division factor
      IC2INT         : RCC_IC2CFGR_IC2INT_Field := 16#3#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC2 Source Selection
      IC2SEL         : RCC_IC2CFGR_IC2SEL_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC2CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC2INT         at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC2SEL         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC3CFGR_IC3INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC3CFGR_IC3SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC3 configuration register
   type RCC_IC3CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC3 integer division factor
      IC3INT         : RCC_IC3CFGR_IC3INT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC3 Source Selection
      IC3SEL         : RCC_IC3CFGR_IC3SEL_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC3CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC3INT         at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC3SEL         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC4CFGR_IC4INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC4CFGR_IC4SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC4 configuration register
   type RCC_IC4CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC4 integer division factor
      IC4INT         : RCC_IC4CFGR_IC4INT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC4 Source Selection
      IC4SEL         : RCC_IC4CFGR_IC4SEL_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC4CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC4INT         at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC4SEL         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC5CFGR_IC5INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC5CFGR_IC5SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC5 configuration register
   type RCC_IC5CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC5 integer division factor
      IC5INT         : RCC_IC5CFGR_IC5INT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC5 Source Selection
      IC5SEL         : RCC_IC5CFGR_IC5SEL_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC5CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC5INT         at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC5SEL         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC6CFGR_IC6INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC6CFGR_IC6SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC6 configuration register
   type RCC_IC6CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC6 integer division factor
      IC6INT         : RCC_IC6CFGR_IC6INT_Field := 16#3#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC6 Source Selection
      IC6SEL         : RCC_IC6CFGR_IC6SEL_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC6CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC6INT         at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC6SEL         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC7CFGR_IC7INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC7CFGR_IC7SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC7 configuration register
   type RCC_IC7CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC7 integer division factor
      IC7INT         : RCC_IC7CFGR_IC7INT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC7 Source Selection
      IC7SEL         : RCC_IC7CFGR_IC7SEL_Field := 16#1#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC7CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC7INT         at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC7SEL         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC8CFGR_IC8INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC8CFGR_IC8SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC8 configuration register
   type RCC_IC8CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC8 integer division factor
      IC8INT         : RCC_IC8CFGR_IC8INT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC8 Source Selection
      IC8SEL         : RCC_IC8CFGR_IC8SEL_Field := 16#1#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC8CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC8INT         at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC8SEL         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC9CFGR_IC9INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC9CFGR_IC9SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC9 configuration register
   type RCC_IC9CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC9 integer division factor
      IC9INT         : RCC_IC9CFGR_IC9INT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC9 Source Selection
      IC9SEL         : RCC_IC9CFGR_IC9SEL_Field := 16#1#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC9CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC9INT         at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC9SEL         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC10CFGR_IC10INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC10CFGR_IC10SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC10 configuration register
   type RCC_IC10CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC10 integer division factor
      IC10INT        : RCC_IC10CFGR_IC10INT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC10 Source Selection
      IC10SEL        : RCC_IC10CFGR_IC10SEL_Field := 16#1#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC10CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC10INT        at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC10SEL        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC11CFGR_IC11INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC11CFGR_IC11SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC11 configuration register
   type RCC_IC11CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC11 integer division factor
      IC11INT        : RCC_IC11CFGR_IC11INT_Field := 16#3#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC11 Source Selection
      IC11SEL        : RCC_IC11CFGR_IC11SEL_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC11CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC11INT        at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC11SEL        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC12CFGR_IC12INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC12CFGR_IC12SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC12 configuration register
   type RCC_IC12CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC12 integer division factor
      IC12INT        : RCC_IC12CFGR_IC12INT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC12 Source Selection
      IC12SEL        : RCC_IC12CFGR_IC12SEL_Field := 16#2#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC12CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC12INT        at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC12SEL        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC13CFGR_IC13INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC13CFGR_IC13SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC13 configuration register
   type RCC_IC13CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC13 integer division factor
      IC13INT        : RCC_IC13CFGR_IC13INT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC13 Source Selection
      IC13SEL        : RCC_IC13CFGR_IC13SEL_Field := 16#2#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC13CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC13INT        at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC13SEL        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC14CFGR_IC14INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC14CFGR_IC14SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC14 configuration register
   type RCC_IC14CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC14 integer division factor
      IC14INT        : RCC_IC14CFGR_IC14INT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC14 Source Selection
      IC14SEL        : RCC_IC14CFGR_IC14SEL_Field := 16#2#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC14CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC14INT        at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC14SEL        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC15CFGR_IC15INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC15CFGR_IC15SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC15 configuration register
   type RCC_IC15CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC15 integer division factor
      IC15INT        : RCC_IC15CFGR_IC15INT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC15 Source Selection
      IC15SEL        : RCC_IC15CFGR_IC15SEL_Field := 16#2#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC15CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC15INT        at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC15SEL        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC16CFGR_IC16INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC16CFGR_IC16SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC16 configuration register
   type RCC_IC16CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC16 integer division factor
      IC16INT        : RCC_IC16CFGR_IC16INT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC16 Source Selection
      IC16SEL        : RCC_IC16CFGR_IC16SEL_Field := 16#3#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC16CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC16INT        at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC16SEL        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC17CFGR_IC17INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC17CFGR_IC17SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC17 configuration register
   type RCC_IC17CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC17 integer division factor
      IC17INT        : RCC_IC17CFGR_IC17INT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC17 Source Selection
      IC17SEL        : RCC_IC17CFGR_IC17SEL_Field := 16#3#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC17CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC17INT        at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC17SEL        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC18CFGR_IC18INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC18CFGR_IC18SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC18 configuration register
   type RCC_IC18CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC18 integer division factor
      IC18INT        : RCC_IC18CFGR_IC18INT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC18 Source Selection
      IC18SEL        : RCC_IC18CFGR_IC18SEL_Field := 16#3#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC18CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC18INT        at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC18SEL        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC19CFGR_IC19INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC19CFGR_IC19SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC19 configuration register
   type RCC_IC19CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC19 integer division factor
      IC19INT        : RCC_IC19CFGR_IC19INT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC19 Source Selection
      IC19SEL        : RCC_IC19CFGR_IC19SEL_Field := 16#3#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC19CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC19INT        at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC19SEL        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_IC20CFGR_IC20INT_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_IC20CFGR_IC20SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC IC20 configuration register
   type RCC_IC20CFGR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Divider IC20 integer division factor
      IC20INT        : RCC_IC20CFGR_IC20INT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Divider IC20 Source Selection
      IC20SEL        : RCC_IC20CFGR_IC20SEL_Field := 16#3#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IC20CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      IC20INT        at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      IC20SEL        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  RCC clock-source interrupt enable register
   type RCC_CIER_Register is record
      --  LSI ready interrupt enable
      LSIRDYIE       : Boolean := False;
      --  LSE ready interrupt enable
      LSERDYIE       : Boolean := False;
      --  MSI ready interrupt enable
      MSIRDYIE       : Boolean := False;
      --  HSI ready interrupt enable
      HSIRDYIE       : Boolean := False;
      --  HSE ready interrupt enable
      HSERDYIE       : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  PLL1 ready interrupt enable
      PLL1RDYIE      : Boolean := False;
      --  PLL2 ready interrupt enable
      PLL2RDYIE      : Boolean := False;
      --  PLL3 ready interrupt enable
      PLL3RDYIE      : Boolean := False;
      --  PLL4 ready interrupt enable
      PLL4RDYIE      : Boolean := False;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  LSE clock security system (CSS) interrupt enable
      LSECSSIE       : Boolean := False;
      --  HSE clock security system (CSS) interrupt enable
      HSECSSIE       : Boolean := True;
      --  unspecified
      Reserved_18_23 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  CPU wakeup from Stop interrupt enable
      WKUPIE         : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CIER_Register use record
      LSIRDYIE       at 0 range 0 .. 0;
      LSERDYIE       at 0 range 1 .. 1;
      MSIRDYIE       at 0 range 2 .. 2;
      HSIRDYIE       at 0 range 3 .. 3;
      HSERDYIE       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PLL1RDYIE      at 0 range 8 .. 8;
      PLL2RDYIE      at 0 range 9 .. 9;
      PLL3RDYIE      at 0 range 10 .. 10;
      PLL4RDYIE      at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      LSECSSIE       at 0 range 16 .. 16;
      HSECSSIE       at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      WKUPIE         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  RCC clock-source interrupt flag register
   type RCC_CIFR_Register is record
      --  Read-only. LSI ready interrupt flag
      LSIRDYF        : Boolean;
      --  Read-only. LSE ready interrupt flag
      LSERDYF        : Boolean;
      --  Read-only. MSI ready interrupt flag
      MSIRDYF        : Boolean;
      --  Read-only. HSI ready interrupt flag
      HSIRDYF        : Boolean;
      --  Read-only. HSE ready interrupt flag
      HSERDYF        : Boolean;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3;
      --  Read-only. PLL1 ready interrupt flag
      PLL1RDYF       : Boolean;
      --  Read-only. PLL2 ready interrupt flag
      PLL2RDYF       : Boolean;
      --  Read-only. PLL3 ready interrupt flag
      PLL3RDYF       : Boolean;
      --  Read-only. PLL4 ready interrupt flag
      PLL4RDYF       : Boolean;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. LSE ready interrupt flag
      LSECSSF        : Boolean;
      --  Read-only. HSE ready interrupt flag
      HSECSSF        : Boolean;
      --  unspecified
      Reserved_18_23 : Interfaces.Bit_Types.UInt6;
      --  Read-only. CPU wakeup from Stop interrupt flag
      WKUPF          : Boolean;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CIFR_Register use record
      LSIRDYF        at 0 range 0 .. 0;
      LSERDYF        at 0 range 1 .. 1;
      MSIRDYF        at 0 range 2 .. 2;
      HSIRDYF        at 0 range 3 .. 3;
      HSERDYF        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PLL1RDYF       at 0 range 8 .. 8;
      PLL2RDYF       at 0 range 9 .. 9;
      PLL3RDYF       at 0 range 10 .. 10;
      PLL4RDYF       at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      LSECSSF        at 0 range 16 .. 16;
      HSECSSF        at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      WKUPF          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  RCC clock-source interrupt Clear register
   type RCC_CICR_Register is record
      --  Write-only. LSI ready interrupt clear
      LSIRDYC        : Boolean := False;
      --  Write-only. LSE ready interrupt clear
      LSERDYC        : Boolean := False;
      --  Write-only. MSI ready interrupt clear
      MSIRDYC        : Boolean := False;
      --  Write-only. HSI ready interrupt clear
      HSIRDYC        : Boolean := False;
      --  Write-only. HSE ready interrupt clear
      HSERDYC        : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. PLL1 ready interrupt clear
      PLL1RDYC       : Boolean := False;
      --  Write-only. PLL2 ready interrupt clear
      PLL2RDYC       : Boolean := False;
      --  Write-only. PLL3 ready interrupt clear
      PLL3RDYC       : Boolean := False;
      --  Write-only. PLL4 ready interrupt clear
      PLL4RDYC       : Boolean := False;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. LSE ready interrupt clear
      LSECSSC        : Boolean := False;
      --  Write-only. HSE ready interrupt clear
      HSECSSC        : Boolean := False;
      --  unspecified
      Reserved_18_23 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Write-only. CPU Wakeup ready interrupt clear
      WKUPFC         : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CICR_Register use record
      LSIRDYC        at 0 range 0 .. 0;
      LSERDYC        at 0 range 1 .. 1;
      MSIRDYC        at 0 range 2 .. 2;
      HSIRDYC        at 0 range 3 .. 3;
      HSERDYC        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PLL1RDYC       at 0 range 8 .. 8;
      PLL2RDYC       at 0 range 9 .. 9;
      PLL3RDYC       at 0 range 10 .. 10;
      PLL4RDYC       at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      LSECSSC        at 0 range 16 .. 16;
      HSECSSC        at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      WKUPFC         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype RCC_CCIPR1_ADF1SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR1_ADC12SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR1_ADCPRE_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_CCIPR1_DCMIPPSEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC clock configuration for independent peripheral register1
   type RCC_CCIPR1_Register is record
      --  Source selection for the ADF1 kernel clock
      ADF1SEL        : RCC_CCIPR1_ADF1SEL_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the ADC12 kernel clock
      ADC12SEL       : RCC_CCIPR1_ADC12SEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  ADC12 Prog clock divider selection (for clock ck_icn_p_adf1)
      ADCPRE         : RCC_CCIPR1_ADCPRE_Field := 16#0#;
      --  unspecified
      Reserved_16_19 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Source selection for the DCMIPP kernel clock
      DCMIPPSEL      : RCC_CCIPR1_DCMIPPSEL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR1_Register use record
      ADF1SEL        at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ADC12SEL       at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ADCPRE         at 0 range 8 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      DCMIPPSEL      at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype RCC_CCIPR2_ETH1PTPSEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR2_ETH1PTPDIV_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_CCIPR2_ETH1CLKSEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR2_ETH1SEL_Field is Interfaces.Bit_Types.UInt3;

   --  RCC clock configuration for independent peripheral register 2
   type RCC_CCIPR2_Register is record
      --  Source selection for the ETH1 kernel clock
      ETH1PTPSEL     : RCC_CCIPR2_ETH1PTPSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  ETH1 Kernel clock divider selection (for clock ck_ker_eth1ptp)
      ETH1PTPDIV     : RCC_CCIPR2_ETH1PTPDIV_Field := 16#0#;
      --  Read-only. Set and reset by software.
      ETH1PWRDOWNACK : Boolean := False;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Source selection for the ETH1 kernel clock
      ETH1CLKSEL     : RCC_CCIPR2_ETH1CLKSEL_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Set and reset by software
      ETH1SEL        : RCC_CCIPR2_ETH1SEL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Set and reset by software
      ETH1REFCLKSEL  : Boolean := False;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Set and reset by software.
      ETH1GTXCLKSEL  : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR2_Register use record
      ETH1PTPSEL     at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      ETH1PTPDIV     at 0 range 4 .. 7;
      ETH1PWRDOWNACK at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      ETH1CLKSEL     at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      ETH1SEL        at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      ETH1REFCLKSEL  at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      ETH1GTXCLKSEL  at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype RCC_CCIPR3_FDCANSEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR3_FMCSEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC clock configuration for independent peripheral register3
   type RCC_CCIPR3_Register is record
      --  Source selection for the FDCAN kernel clock
      FDCANSEL      : RCC_CCIPR3_FDCANSEL_Field := 16#1#;
      --  unspecified
      Reserved_2_3  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Source selection for the FMC kernel clock
      FMCSEL        : RCC_CCIPR3_FMCSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_7  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Source selection for the DFT kernel clock
      DFTSEL        : Boolean := False;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR3_Register use record
      FDCANSEL      at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      FMCSEL        at 0 range 4 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      DFTSEL        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RCC_CCIPR4_I2C1SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR4_I2C2SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR4_I2C3SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR4_I2C4SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR4_I3C1SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR4_I3C2SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR4_LTDCSEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC clock configuration for independent peripheral register4
   type RCC_CCIPR4_Register is record
      --  Source selection for the I2C1 kernel clock
      I2C1SEL        : RCC_CCIPR4_I2C1SEL_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the I2C2 kernel clock
      I2C2SEL        : RCC_CCIPR4_I2C2SEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the I2C3 kernel clock
      I2C3SEL        : RCC_CCIPR4_I2C3SEL_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the I2C4 kernel clock
      I2C4SEL        : RCC_CCIPR4_I2C4SEL_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the I3C1 kernel clock
      I3C1SEL        : RCC_CCIPR4_I3C1SEL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the I3C2 kernel clock
      I3C2SEL        : RCC_CCIPR4_I3C2SEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the LTDC kernel clock
      LTDCSEL        : RCC_CCIPR4_LTDCSEL_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR4_Register use record
      I2C1SEL        at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      I2C2SEL        at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      I2C3SEL        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      I2C4SEL        at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      I3C1SEL        at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      I3C2SEL        at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      LTDCSEL        at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype RCC_CCIPR5_MCO1SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR5_MCO1PRE_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_CCIPR5_MCO2SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR5_MCO2PRE_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_CCIPR5_MDF1SEL_Field is Interfaces.Bit_Types.UInt3;

   --  RCC lock configuration for independent peripheral register5
   type RCC_CCIPR5_Register is record
      --  Source selection for the MCO1 kernel clock
      MCO1SEL        : RCC_CCIPR5_MCO1SEL_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  MCO1 Prog clock divider selection (for clock ck_icn_p_mce3)
      MCO1PRE        : RCC_CCIPR5_MCO1PRE_Field := 16#F#;
      --  Source selection for the MCO2 kernel clock
      MCO2SEL        : RCC_CCIPR5_MCO2SEL_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  MCO2 Prog clock divider selection (for clock ck_icn_p_mce4)
      MCO2PRE        : RCC_CCIPR5_MCO2PRE_Field := 16#F#;
      --  Source selection for the MDF1 kernel clock
      MDF1SEL        : RCC_CCIPR5_MDF1SEL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR5_Register use record
      MCO1SEL        at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      MCO1PRE        at 0 range 4 .. 7;
      MCO2SEL        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      MCO2PRE        at 0 range 12 .. 15;
      MDF1SEL        at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype RCC_CCIPR6_XSPI1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR6_XSPI2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR6_XSPI3SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR6_OTGPHY1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR6_OTGPHY2SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC clock configuration for independent peripheral register6
   type RCC_CCIPR6_Register is record
      --  Source selection for the XSPI1 kernel clock
      XSPI1SEL        : RCC_CCIPR6_XSPI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3    : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Source selection for the XSPI2 kernel clock
      XSPI2SEL        : RCC_CCIPR6_XSPI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_6_7    : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Source selection for the XSPI3 kernel clock
      XSPI3SEL        : RCC_CCIPR6_XSPI3SEL_Field := 16#0#;
      --  unspecified
      Reserved_10_11  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Source selection for the OTGPHY1 kernel clock
      OTGPHY1SEL      : RCC_CCIPR6_OTGPHY1SEL_Field := 16#0#;
      --  unspecified
      Reserved_14_15  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Set and reset by software
      OTGPHY1CKREFSEL : Boolean := False;
      --  unspecified
      Reserved_17_19  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Source selection for the OTGPHY2 kernel clock
      OTGPHY2SEL      : RCC_CCIPR6_OTGPHY2SEL_Field := 16#0#;
      --  unspecified
      Reserved_22_23  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Set and reset by software
      OTGPHY2CKREFSEL : Boolean := False;
      --  unspecified
      Reserved_25_31  : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR6_Register use record
      XSPI1SEL        at 0 range 0 .. 1;
      Reserved_2_3    at 0 range 2 .. 3;
      XSPI2SEL        at 0 range 4 .. 5;
      Reserved_6_7    at 0 range 6 .. 7;
      XSPI3SEL        at 0 range 8 .. 9;
      Reserved_10_11  at 0 range 10 .. 11;
      OTGPHY1SEL      at 0 range 12 .. 13;
      Reserved_14_15  at 0 range 14 .. 15;
      OTGPHY1CKREFSEL at 0 range 16 .. 16;
      Reserved_17_19  at 0 range 17 .. 19;
      OTGPHY2SEL      at 0 range 20 .. 21;
      Reserved_22_23  at 0 range 22 .. 23;
      OTGPHY2CKREFSEL at 0 range 24 .. 24;
      Reserved_25_31  at 0 range 25 .. 31;
   end record;

   subtype RCC_CCIPR7_PERSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR7_PSSISEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR7_RTCSEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR7_RTCPRE_Field is Interfaces.Bit_Types.UInt6;
   subtype RCC_CCIPR7_SAI1SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR7_SAI2SEL_Field is Interfaces.Bit_Types.UInt3;

   --  RCC clock configuration for independent peripheral register7
   type RCC_CCIPR7_Register is record
      --  Source selection for the PER kernel clock
      PERSEL         : RCC_CCIPR7_PERSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the PSSI kernel clock
      PSSISEL        : RCC_CCIPR7_PSSISEL_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Source selection for the RTC kernel clock
      RTCSEL         : RCC_CCIPR7_RTCSEL_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  RTC Prog clock divider selection (for clock ck_icn_p_risaf)
      RTCPRE         : RCC_CCIPR7_RTCPRE_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Source selection for the SAI1 kernel clock
      SAI1SEL        : RCC_CCIPR7_SAI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the SAI2 kernel clock
      SAI2SEL        : RCC_CCIPR7_SAI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR7_Register use record
      PERSEL         at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PSSISEL        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      RTCSEL         at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RTCPRE         at 0 range 12 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      SAI1SEL        at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SAI2SEL        at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype RCC_CCIPR8_SDMMC1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR8_SDMMC2SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC clock configuration for independent peripheral register8
   type RCC_CCIPR8_Register is record
      --  Source selection for the SDMMC1 kernel clock
      SDMMC1SEL     : RCC_CCIPR8_SDMMC1SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Source selection for the SDMMC2 kernel clock
      SDMMC2SEL     : RCC_CCIPR8_SDMMC2SEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR8_Register use record
      SDMMC1SEL     at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      SDMMC2SEL     at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype RCC_CCIPR9_SPDIFRX1SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR9_SPI1SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR9_SPI2SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR9_SPI3SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR9_SPI4SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR9_SPI5SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR9_SPI6SEL_Field is Interfaces.Bit_Types.UInt3;

   --  RCC clock configuration for independent peripheral register9
   type RCC_CCIPR9_Register is record
      --  Source selection for the SPDIFRX1 kernel clock
      SPDIFRX1SEL    : RCC_CCIPR9_SPDIFRX1SEL_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the SPI1 kernel clock
      SPI1SEL        : RCC_CCIPR9_SPI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the SPI2 kernel clock
      SPI2SEL        : RCC_CCIPR9_SPI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the SPI3 kernel clock
      SPI3SEL        : RCC_CCIPR9_SPI3SEL_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the SPI4 kernel clock
      SPI4SEL        : RCC_CCIPR9_SPI4SEL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the SPI5 kernel clock
      SPI5SEL        : RCC_CCIPR9_SPI5SEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the SPI6 kernel clock
      SPI6SEL        : RCC_CCIPR9_SPI6SEL_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR9_Register use record
      SPDIFRX1SEL    at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SPI1SEL        at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SPI2SEL        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SPI3SEL        at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SPI4SEL        at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      SPI5SEL        at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SPI6SEL        at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype RCC_CCIPR12_LPTIM1SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR12_LPTIM2SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR12_LPTIM3SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR12_LPTIM4SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR12_LPTIM5SEL_Field is Interfaces.Bit_Types.UInt3;

   --  RCC clock configuration for independent peripheral register12
   type RCC_CCIPR12_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Source selection for the LPTIM1 kernel clock
      LPTIM1SEL      : RCC_CCIPR12_LPTIM1SEL_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the LPTIM2 kernel clock
      LPTIM2SEL      : RCC_CCIPR12_LPTIM2SEL_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the LPTIM3 kernel clock
      LPTIM3SEL      : RCC_CCIPR12_LPTIM3SEL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the LPTIM4 kernel clock
      LPTIM4SEL      : RCC_CCIPR12_LPTIM4SEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the LPTIM5 kernel clock
      LPTIM5SEL      : RCC_CCIPR12_LPTIM5SEL_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR12_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      LPTIM1SEL      at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LPTIM2SEL      at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LPTIM3SEL      at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      LPTIM4SEL      at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      LPTIM5SEL      at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype RCC_CCIPR13_USART1SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR13_USART2SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR13_USART3SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR13_UART4SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR13_UART5SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR13_USART6SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR13_UART7SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR13_UART8SEL_Field is Interfaces.Bit_Types.UInt3;

   --  RCC clock configuration for independent peripheral register13
   type RCC_CCIPR13_Register is record
      --  Source selection for the USART1 kernel clock
      USART1SEL      : RCC_CCIPR13_USART1SEL_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the USART2 kernel clock
      USART2SEL      : RCC_CCIPR13_USART2SEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the USART3 kernel clock
      USART3SEL      : RCC_CCIPR13_USART3SEL_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the UART4 kernel clock
      UART4SEL       : RCC_CCIPR13_UART4SEL_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the UART5 kernel clock
      UART5SEL       : RCC_CCIPR13_UART5SEL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the USART6 kernel clock
      USART6SEL      : RCC_CCIPR13_USART6SEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the UART7 kernel clock
      UART7SEL       : RCC_CCIPR13_UART7SEL_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the UART8 kernel clock
      UART8SEL       : RCC_CCIPR13_UART8SEL_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR13_Register use record
      USART1SEL      at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      USART2SEL      at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      USART3SEL      at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      UART4SEL       at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      UART5SEL       at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      USART6SEL      at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      UART7SEL       at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      UART8SEL       at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype RCC_CCIPR14_UART9SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR14_USART10SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR14_LPUART1SEL_Field is Interfaces.Bit_Types.UInt3;

   --  RCC clock configuration for independent peripheral register14
   type RCC_CCIPR14_Register is record
      --  Source selection for the UART9 kernel clock
      UART9SEL       : RCC_CCIPR14_UART9SEL_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the USART10 kernel clock
      USART10SEL     : RCC_CCIPR14_USART10SEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Source selection for the LPUART1 kernel clock
      LPUART1SEL     : RCC_CCIPR14_LPUART1SEL_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR14_Register use record
      UART9SEL       at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      USART10SEL     at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LPUART1SEL     at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  RCC SoC buses reset register
   type RCC_BUSRSTR_Register is record
      --  ACLKN reset
      ACLKNRST       : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  AHBM reset
      AHBMRST        : Boolean := False;
      --  AHB1 reset
      AHB1RST        : Boolean := False;
      --  AHB2 reset
      AHB2RST        : Boolean := False;
      --  AHB3 reset
      AHB3RST        : Boolean := False;
      --  AHB4 reset
      AHB4RST        : Boolean := False;
      --  AHB5 reset
      AHB5RST        : Boolean := False;
      --  APB1 reset
      APB1RST        : Boolean := False;
      --  APB2 reset
      APB2RST        : Boolean := False;
      --  APB3 reset
      APB3RST        : Boolean := False;
      --  APB4 reset
      APB4RST        : Boolean := False;
      --  APB5 reset
      APB5RST        : Boolean := False;
      --  NOC reset
      NOCRST         : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_BUSRSTR_Register use record
      ACLKNRST       at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      AHBMRST        at 0 range 2 .. 2;
      AHB1RST        at 0 range 3 .. 3;
      AHB2RST        at 0 range 4 .. 4;
      AHB3RST        at 0 range 5 .. 5;
      AHB4RST        at 0 range 6 .. 6;
      AHB5RST        at 0 range 7 .. 7;
      APB1RST        at 0 range 8 .. 8;
      APB2RST        at 0 range 9 .. 9;
      APB3RST        at 0 range 10 .. 10;
      APB4RST        at 0 range 11 .. 11;
      APB5RST        at 0 range 12 .. 12;
      NOCRST         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RCC miscellaneous configurations reset register
   type RCC_MISCRSTR_Register is record
      --  DBG reset
      DBGRST        : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  XSPIPHY1 reset
      XSPIPHY1RST   : Boolean := False;
      --  XSPIPHY2 reset
      XSPIPHY2RST   : Boolean := False;
      --  unspecified
      Reserved_6_6  : Interfaces.Bit_Types.Bit := 16#0#;
      --  SDMMC1DLL reset
      SDMMC1DLLRST  : Boolean := False;
      --  SDMMC2DLL reset
      SDMMC2DLLRST  : Boolean := False;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MISCRSTR_Register use record
      DBGRST        at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      XSPIPHY1RST   at 0 range 4 .. 4;
      XSPIPHY2RST   at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      SDMMC1DLLRST  at 0 range 7 .. 7;
      SDMMC2DLLRST  at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RCC memories reset register
   type RCC_MEMRSTR_Register is record
      --  AXISRAM3 reset
      AXISRAM3RST    : Boolean := False;
      --  AXISRAM4reset
      AXISRAM4RST    : Boolean := False;
      --  AXISRAM5 reset
      AXISRAM5RST    : Boolean := False;
      --  AXISRAM6 reset
      AXISRAM6RST    : Boolean := False;
      --  AHBSRAM1 reset
      AHBSRAM1RST    : Boolean := False;
      --  AHBSRAM2 reset
      AHBSRAM2RST    : Boolean := False;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  AXISRAM1 reset
      AXISRAM1RST    : Boolean := False;
      --  AXISRAM2 reset
      AXISRAM2RST    : Boolean := False;
      --  FLEXRAM reset
      FLEXRAMRST     : Boolean := False;
      --  NPUCACHERAM reset
      NPUCACHERAMRST : Boolean := False;
      --  VENCRAM reset
      VENCRAMRST     : Boolean := False;
      --  BOOTROM reset
      BOOTROMRST     : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MEMRSTR_Register use record
      AXISRAM3RST    at 0 range 0 .. 0;
      AXISRAM4RST    at 0 range 1 .. 1;
      AXISRAM5RST    at 0 range 2 .. 2;
      AXISRAM6RST    at 0 range 3 .. 3;
      AHBSRAM1RST    at 0 range 4 .. 4;
      AHBSRAM2RST    at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      AXISRAM1RST    at 0 range 7 .. 7;
      AXISRAM2RST    at 0 range 8 .. 8;
      FLEXRAMRST     at 0 range 9 .. 9;
      NPUCACHERAMRST at 0 range 10 .. 10;
      VENCRAMRST     at 0 range 11 .. 11;
      BOOTROMRST     at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC AHB1 Reset register
   type RCC_AHB1RSTR_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  GPDMA1 reset
      GPDMA1RST     : Boolean := False;
      --  ADC12 reset
      ADC12RST      : Boolean := False;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1RSTR_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      GPDMA1RST     at 0 range 4 .. 4;
      ADC12RST      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RCC AHB2 reset register
   type RCC_AHB2RSTR_Register is record
      --  unspecified
      Reserved_0_11  : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  RAMCFG reset
      RAMCFGRST      : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  MDF1 reset
      MDF1RST        : Boolean := False;
      --  ADF1 reset
      ADF1RST        : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2RSTR_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      RAMCFGRST      at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      MDF1RST        at 0 range 16 .. 16;
      ADF1RST        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  RCC AHB3 reset register
   type RCC_AHB3RSTR_Register is record
      --  RNG reset
      RNGRST         : Boolean := False;
      --  HASH reset
      HASHRST        : Boolean := False;
      --  CRYP reset
      CRYPRST        : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  SAES reset
      SAESRST        : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  PKA reset
      PKARST         : Boolean := False;
      --  unspecified
      Reserved_9_9   : Interfaces.Bit_Types.Bit := 16#0#;
      --  IAC reset
      IACRST         : Boolean := False;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB3RSTR_Register use record
      RNGRST         at 0 range 0 .. 0;
      HASHRST        at 0 range 1 .. 1;
      CRYPRST        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SAESRST        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PKARST         at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      IACRST         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  RCC AHB4 reset register
   type RCC_AHB4RSTR_Register is record
      --  GPIOA reset
      GPIOARST       : Boolean := False;
      --  GPIOB reset
      GPIOBRST       : Boolean := False;
      --  GPIOC reset
      GPIOCRST       : Boolean := False;
      --  GPIOD reset
      GPIODRST       : Boolean := False;
      --  GPIOE reset
      GPIOERST       : Boolean := False;
      --  GPIOF reset
      GPIOFRST       : Boolean := False;
      --  GPIOG reset
      GPIOGRST       : Boolean := False;
      --  GPIOH reset
      GPIOHRST       : Boolean := False;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  GPION reset
      GPIONRST       : Boolean := False;
      --  GPIOO reset
      GPIOORST       : Boolean := False;
      --  GPIOP reset
      GPIOPRST       : Boolean := False;
      --  GPIOQ reset
      GPIOQRST       : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  PWR reset
      PWRRST         : Boolean := False;
      --  CRC reset
      CRCRST         : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB4RSTR_Register use record
      GPIOARST       at 0 range 0 .. 0;
      GPIOBRST       at 0 range 1 .. 1;
      GPIOCRST       at 0 range 2 .. 2;
      GPIODRST       at 0 range 3 .. 3;
      GPIOERST       at 0 range 4 .. 4;
      GPIOFRST       at 0 range 5 .. 5;
      GPIOGRST       at 0 range 6 .. 6;
      GPIOHRST       at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      GPIONRST       at 0 range 13 .. 13;
      GPIOORST       at 0 range 14 .. 14;
      GPIOPRST       at 0 range 15 .. 15;
      GPIOQRST       at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PWRRST         at 0 range 18 .. 18;
      CRCRST         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC AHB5 reset register
   type RCC_AHB5RSTR_Register is record
      --  HPDMA1 reset
      HPDMA1RST          : Boolean := False;
      --  DMA2D reset
      DMA2DRST           : Boolean := False;
      --  unspecified
      Reserved_2_2       : Interfaces.Bit_Types.Bit := 16#0#;
      --  JPEG reset
      JPEGRST            : Boolean := False;
      --  FMC reset
      FMCRST             : Boolean := False;
      --  XSPI1 reset
      XSPI1RST           : Boolean := False;
      --  PSSI reset
      PSSIRST            : Boolean := False;
      --  SDMMC2 reset
      SDMMC2RST          : Boolean := False;
      --  SDMMC1 reset
      SDMMC1RST          : Boolean := False;
      --  unspecified
      Reserved_9_11      : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  XSPI2 reset
      XSPI2RST           : Boolean := False;
      --  XSPIM reset
      XSPIMRST           : Boolean := False;
      --  unspecified
      Reserved_14_16     : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  XSPI3 reset
      XSPI3RST           : Boolean := False;
      --  MCE4 reset
      MCE4RST            : Boolean := False;
      --  GFXMMU reset
      GFXMMURST          : Boolean := False;
      --  GPU reset
      GPURST             : Boolean := False;
      --  unspecified
      Reserved_21_22     : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SYSCFGOTGHSPHY1 reset
      SYSCFGOTGHSPHY1RST : Boolean := False;
      --  SYSCFGOTGHSPHY2 reset
      SYSCFGOTGHSPHY2RST : Boolean := False;
      --  ETH1 reset
      ETH1RST            : Boolean := False;
      --  OTG1 reset
      OTG1RST            : Boolean := False;
      --  OTGPHY1 reset
      OTGPHY1RST         : Boolean := False;
      --  OTGPHY2 reset
      OTGPHY2RST         : Boolean := False;
      --  OTG2 reset
      OTG2RST            : Boolean := False;
      --  NPUCACHE reset
      NPUCACHERST        : Boolean := False;
      --  NPU reset
      NPURST             : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB5RSTR_Register use record
      HPDMA1RST          at 0 range 0 .. 0;
      DMA2DRST           at 0 range 1 .. 1;
      Reserved_2_2       at 0 range 2 .. 2;
      JPEGRST            at 0 range 3 .. 3;
      FMCRST             at 0 range 4 .. 4;
      XSPI1RST           at 0 range 5 .. 5;
      PSSIRST            at 0 range 6 .. 6;
      SDMMC2RST          at 0 range 7 .. 7;
      SDMMC1RST          at 0 range 8 .. 8;
      Reserved_9_11      at 0 range 9 .. 11;
      XSPI2RST           at 0 range 12 .. 12;
      XSPIMRST           at 0 range 13 .. 13;
      Reserved_14_16     at 0 range 14 .. 16;
      XSPI3RST           at 0 range 17 .. 17;
      MCE4RST            at 0 range 18 .. 18;
      GFXMMURST          at 0 range 19 .. 19;
      GPURST             at 0 range 20 .. 20;
      Reserved_21_22     at 0 range 21 .. 22;
      SYSCFGOTGHSPHY1RST at 0 range 23 .. 23;
      SYSCFGOTGHSPHY2RST at 0 range 24 .. 24;
      ETH1RST            at 0 range 25 .. 25;
      OTG1RST            at 0 range 26 .. 26;
      OTGPHY1RST         at 0 range 27 .. 27;
      OTGPHY2RST         at 0 range 28 .. 28;
      OTG2RST            at 0 range 29 .. 29;
      NPUCACHERST        at 0 range 30 .. 30;
      NPURST             at 0 range 31 .. 31;
   end record;

   --  RCC APB1L reset register
   type RCC_APB1LRSTR_Register is record
      --  TIM2 reset
      TIM2RST        : Boolean := False;
      --  TIM3 reset
      TIM3RST        : Boolean := False;
      --  TIM4 reset
      TIM4RST        : Boolean := False;
      --  TIM5 reset
      TIM5RST        : Boolean := False;
      --  TIM6 reset
      TIM6RST        : Boolean := False;
      --  TIM7 reset
      TIM7RST        : Boolean := False;
      --  TIM12 reset
      TIM12RST       : Boolean := False;
      --  TIM13 reset
      TIM13RST       : Boolean := False;
      --  TIM14 reset
      TIM14RST       : Boolean := False;
      --  LPTIM1 reset
      LPTIM1RST      : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  WWDG reset
      WWDGRST        : Boolean := False;
      --  TIM10 reset
      TIM10RST       : Boolean := False;
      --  TIM11 reset
      TIM11RST       : Boolean := False;
      --  SPI2 reset
      SPI2RST        : Boolean := False;
      --  SPI3 reset
      SPI3RST        : Boolean := False;
      --  SPDIFRX1 reset
      SPDIFRX1RST    : Boolean := False;
      --  USART2 reset
      USART2RST      : Boolean := False;
      --  USART3 reset
      USART3RST      : Boolean := False;
      --  UART4 reset
      UART4RST       : Boolean := False;
      --  UART5 reset
      UART5RST       : Boolean := False;
      --  I2C1 reset
      I2C1RST        : Boolean := False;
      --  I2C2 reset
      I2C2RST        : Boolean := False;
      --  I2C3 reset
      I2C3RST        : Boolean := False;
      --  I3C1 reset
      I3C1RST        : Boolean := False;
      --  I3C2 reset
      I3C2RST        : Boolean := False;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  UART7 reset
      UART7RST       : Boolean := False;
      --  UART8 reset
      UART8RST       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1LRSTR_Register use record
      TIM2RST        at 0 range 0 .. 0;
      TIM3RST        at 0 range 1 .. 1;
      TIM4RST        at 0 range 2 .. 2;
      TIM5RST        at 0 range 3 .. 3;
      TIM6RST        at 0 range 4 .. 4;
      TIM7RST        at 0 range 5 .. 5;
      TIM12RST       at 0 range 6 .. 6;
      TIM13RST       at 0 range 7 .. 7;
      TIM14RST       at 0 range 8 .. 8;
      LPTIM1RST      at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDGRST        at 0 range 11 .. 11;
      TIM10RST       at 0 range 12 .. 12;
      TIM11RST       at 0 range 13 .. 13;
      SPI2RST        at 0 range 14 .. 14;
      SPI3RST        at 0 range 15 .. 15;
      SPDIFRX1RST    at 0 range 16 .. 16;
      USART2RST      at 0 range 17 .. 17;
      USART3RST      at 0 range 18 .. 18;
      UART4RST       at 0 range 19 .. 19;
      UART5RST       at 0 range 20 .. 20;
      I2C1RST        at 0 range 21 .. 21;
      I2C2RST        at 0 range 22 .. 22;
      I2C3RST        at 0 range 23 .. 23;
      I3C1RST        at 0 range 24 .. 24;
      I3C2RST        at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      UART7RST       at 0 range 30 .. 30;
      UART8RST       at 0 range 31 .. 31;
   end record;

   --  RCC APB1H reset register
   type RCC_APB1HRSTR_Register is record
      --  unspecified
      Reserved_0_4   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  MDIOS reset
      MDIOSRST       : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  FDCAN reset
      FDCANRST       : Boolean := False;
      --  unspecified
      Reserved_9_17  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  UCPD1 reset
      UCPD1RST       : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1HRSTR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      MDIOSRST       at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FDCANRST       at 0 range 8 .. 8;
      Reserved_9_17  at 0 range 9 .. 17;
      UCPD1RST       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  RCC APB2 reset register
   type RCC_APB2RSTR_Register is record
      --  TIM1 reset
      TIM1RST        : Boolean := False;
      --  TIM8 reset
      TIM8RST        : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  USART1 reset
      USART1RST      : Boolean := False;
      --  USART6 reset
      USART6RST      : Boolean := False;
      --  UART9 reset
      UART9RST       : Boolean := False;
      --  USART10 reset
      USART10RST     : Boolean := False;
      --  unspecified
      Reserved_8_11  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  SPI1 reset
      SPI1RST        : Boolean := False;
      --  SPI4 reset
      SPI4RST        : Boolean := False;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM18 reset
      TIM18RST       : Boolean := False;
      --  TIM15 reset
      TIM15RST       : Boolean := False;
      --  TIM16 reset
      TIM16RST       : Boolean := False;
      --  TIM17 reset
      TIM17RST       : Boolean := False;
      --  TIM9 reset
      TIM9RST        : Boolean := False;
      --  SPI5 reset
      SPI5RST        : Boolean := False;
      --  SAI1 reset
      SAI1RST        : Boolean := False;
      --  SAI2 reset
      SAI2RST        : Boolean := False;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB2RSTR_Register use record
      TIM1RST        at 0 range 0 .. 0;
      TIM8RST        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      USART1RST      at 0 range 4 .. 4;
      USART6RST      at 0 range 5 .. 5;
      UART9RST       at 0 range 6 .. 6;
      USART10RST     at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SPI1RST        at 0 range 12 .. 12;
      SPI4RST        at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      TIM18RST       at 0 range 15 .. 15;
      TIM15RST       at 0 range 16 .. 16;
      TIM16RST       at 0 range 17 .. 17;
      TIM17RST       at 0 range 18 .. 18;
      TIM9RST        at 0 range 19 .. 19;
      SPI5RST        at 0 range 20 .. 20;
      SAI1RST        at 0 range 21 .. 21;
      SAI2RST        at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  RCC APB4L reset register
   type RCC_APB4LRSTR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  HDP reset
      HDPRST         : Boolean := False;
      --  LPUART1 reset
      LPUART1RST     : Boolean := False;
      --  unspecified
      Reserved_4_4   : Interfaces.Bit_Types.Bit := 16#0#;
      --  SPI6 reset
      SPI6RST        : Boolean := False;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  I2C4 reset
      I2C4RST        : Boolean := False;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  LPTIM2 reset
      LPTIM2RST      : Boolean := False;
      --  LPTIM3 reset
      LPTIM3RST      : Boolean := False;
      --  LPTIM4 reset
      LPTIM4RST      : Boolean := False;
      --  LPTIM5 reset
      LPTIM5RST      : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  VREFBUF reset
      VREFBUFRST     : Boolean := False;
      --  RTC reset
      RTCRST         : Boolean := False;
      --  unspecified
      Reserved_17_21 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  R2GRET reset
      R2GRETRST      : Boolean := False;
      --  R2GNPU reset
      R2GNPURST      : Boolean := False;
      --  unspecified
      Reserved_24_30 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  SERF reset
      SERFRST        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4LRSTR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      HDPRST         at 0 range 2 .. 2;
      LPUART1RST     at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SPI6RST        at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      I2C4RST        at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LPTIM2RST      at 0 range 9 .. 9;
      LPTIM3RST      at 0 range 10 .. 10;
      LPTIM4RST      at 0 range 11 .. 11;
      LPTIM5RST      at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      VREFBUFRST     at 0 range 15 .. 15;
      RTCRST         at 0 range 16 .. 16;
      Reserved_17_21 at 0 range 17 .. 21;
      R2GRETRST      at 0 range 22 .. 22;
      R2GNPURST      at 0 range 23 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      SERFRST        at 0 range 31 .. 31;
   end record;

   --  RCC APB4H reset register
   type RCC_APB4HRSTR_Register is record
      --  SYSCFG reset
      SYSCFGRST     : Boolean := False;
      --  unspecified
      Reserved_1_1  : Interfaces.Bit_Types.Bit := 16#0#;
      --  DTS reset
      DTSRST        : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  BUSPERFM reset
      BUSPERFMRST   : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4HRSTR_Register use record
      SYSCFGRST     at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DTSRST        at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      BUSPERFMRST   at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC APB5 reset register
   type RCC_APB5RSTR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  LTDC reset
      LTDCRST       : Boolean := False;
      --  DCMIPP reset
      DCMIPPRST     : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  GFXTIM reset
      GFXTIMRST     : Boolean := False;
      --  VENC reset
      VENCRST       : Boolean := False;
      --  CSI reset
      CSIRST        : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB5RSTR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LTDCRST       at 0 range 1 .. 1;
      DCMIPPRST     at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      GFXTIMRST     at 0 range 4 .. 4;
      VENCRST       at 0 range 5 .. 5;
      CSIRST        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC IC dividers enable register
   type RCC_DIVENR_Register is record
      --  IC1 enable
      IC1EN          : Boolean := False;
      --  IC2 enable
      IC2EN          : Boolean := False;
      --  IC3 enable
      IC3EN          : Boolean := False;
      --  IC4 enable
      IC4EN          : Boolean := False;
      --  IC5 enable
      IC5EN          : Boolean := False;
      --  IC6 enable
      IC6EN          : Boolean := False;
      --  IC7 enable
      IC7EN          : Boolean := False;
      --  IC8 enable
      IC8EN          : Boolean := False;
      --  IC9 enable
      IC9EN          : Boolean := False;
      --  IC10 enable
      IC10EN         : Boolean := False;
      --  IC11 enable
      IC11EN         : Boolean := False;
      --  IC12 enable
      IC12EN         : Boolean := False;
      --  IC13 enable
      IC13EN         : Boolean := False;
      --  IC14 enable
      IC14EN         : Boolean := False;
      --  IC15 enable
      IC15EN         : Boolean := False;
      --  IC16 enable
      IC16EN         : Boolean := False;
      --  IC17 enable
      IC17EN         : Boolean := False;
      --  IC18 enable
      IC18EN         : Boolean := False;
      --  IC19 enable
      IC19EN         : Boolean := False;
      --  IC20 enable
      IC20EN         : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_DIVENR_Register use record
      IC1EN          at 0 range 0 .. 0;
      IC2EN          at 0 range 1 .. 1;
      IC3EN          at 0 range 2 .. 2;
      IC4EN          at 0 range 3 .. 3;
      IC5EN          at 0 range 4 .. 4;
      IC6EN          at 0 range 5 .. 5;
      IC7EN          at 0 range 6 .. 6;
      IC8EN          at 0 range 7 .. 7;
      IC9EN          at 0 range 8 .. 8;
      IC10EN         at 0 range 9 .. 9;
      IC11EN         at 0 range 10 .. 10;
      IC12EN         at 0 range 11 .. 11;
      IC13EN         at 0 range 12 .. 12;
      IC14EN         at 0 range 13 .. 13;
      IC15EN         at 0 range 14 .. 14;
      IC16EN         at 0 range 15 .. 15;
      IC17EN         at 0 range 16 .. 16;
      IC18EN         at 0 range 17 .. 17;
      IC19EN         at 0 range 18 .. 18;
      IC20EN         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC SoC buses enable register
   type RCC_BUSENR_Register is record
      --  ACLKN enable
      ACLKNEN        : Boolean := True;
      --  ACLKNC enable
      ACLKNCEN       : Boolean := True;
      --  AHBM enable
      AHBMEN         : Boolean := False;
      --  AHB1 enable
      AHB1EN         : Boolean := False;
      --  AHB2 enable
      AHB2EN         : Boolean := False;
      --  AHB3 enable
      AHB3EN         : Boolean := False;
      --  AHB4 enable
      AHB4EN         : Boolean := False;
      --  AHB5 enable
      AHB5EN         : Boolean := False;
      --  APB1 enable
      APB1EN         : Boolean := False;
      --  APB2 enable
      APB2EN         : Boolean := False;
      --  APB3 enable
      APB3EN         : Boolean := False;
      --  APB4 enable
      APB4EN         : Boolean := False;
      --  APB5 enable
      APB5EN         : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_BUSENR_Register use record
      ACLKNEN        at 0 range 0 .. 0;
      ACLKNCEN       at 0 range 1 .. 1;
      AHBMEN         at 0 range 2 .. 2;
      AHB1EN         at 0 range 3 .. 3;
      AHB2EN         at 0 range 4 .. 4;
      AHB3EN         at 0 range 5 .. 5;
      AHB4EN         at 0 range 6 .. 6;
      AHB5EN         at 0 range 7 .. 7;
      APB1EN         at 0 range 8 .. 8;
      APB2EN         at 0 range 9 .. 9;
      APB3EN         at 0 range 10 .. 10;
      APB4EN         at 0 range 11 .. 11;
      APB5EN         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC miscellaneous configuration enable register
   type RCC_MISCENR_Register is record
      --  DBG enable
      DBGEN         : Boolean := False;
      --  MCO1 enable
      MCO1EN        : Boolean := False;
      --  MCO2 enable
      MCO2EN        : Boolean := False;
      --  XSPIPHYCOMP enable
      XSPIPHYCOMPEN : Boolean := False;
      --  unspecified
      Reserved_4_5  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  PER enable
      PEREN         : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MISCENR_Register use record
      DBGEN         at 0 range 0 .. 0;
      MCO1EN        at 0 range 1 .. 1;
      MCO2EN        at 0 range 2 .. 2;
      XSPIPHYCOMPEN at 0 range 3 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      PEREN         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC memory enable register
   type RCC_MEMENR_Register is record
      --  AXISRAM3 enable
      AXISRAM3EN     : Boolean := True;
      --  AXISRAM4 enable
      AXISRAM4EN     : Boolean := True;
      --  AXISRAM5 enable
      AXISRAM5EN     : Boolean := True;
      --  AXISRAM6 enable
      AXISRAM6EN     : Boolean := True;
      --  AHBSRAM1 enable
      AHBSRAM1EN     : Boolean := True;
      --  AHBSRAM2 enable
      AHBSRAM2EN     : Boolean := True;
      --  BKPSRAM enable
      BKPSRAMEN      : Boolean := True;
      --  AXISRAM1 enable
      AXISRAM1EN     : Boolean := True;
      --  AXISRAM2 enable
      AXISRAM2EN     : Boolean := True;
      --  FLEXRAM enable
      FLEXRAMEN      : Boolean := True;
      --  NPUCACHERAM enable
      NPUCACHERAMEN  : Boolean := False;
      --  VENCRAM enable
      VENCRAMEN      : Boolean := False;
      --  BOOTROM enable
      BOOTROMEN      : Boolean := True;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MEMENR_Register use record
      AXISRAM3EN     at 0 range 0 .. 0;
      AXISRAM4EN     at 0 range 1 .. 1;
      AXISRAM5EN     at 0 range 2 .. 2;
      AXISRAM6EN     at 0 range 3 .. 3;
      AHBSRAM1EN     at 0 range 4 .. 4;
      AHBSRAM2EN     at 0 range 5 .. 5;
      BKPSRAMEN      at 0 range 6 .. 6;
      AXISRAM1EN     at 0 range 7 .. 7;
      AXISRAM2EN     at 0 range 8 .. 8;
      FLEXRAMEN      at 0 range 9 .. 9;
      NPUCACHERAMEN  at 0 range 10 .. 10;
      VENCRAMEN      at 0 range 11 .. 11;
      BOOTROMEN      at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC AHB1 enable register
   type RCC_AHB1ENR_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  GPDMA1 enable
      GPDMA1EN      : Boolean := False;
      --  ADC12 enable
      ADC12EN       : Boolean := False;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1ENR_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      GPDMA1EN      at 0 range 4 .. 4;
      ADC12EN       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RCC AHB2 enable register
   type RCC_AHB2ENR_Register is record
      --  unspecified
      Reserved_0_11  : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  RAMCFG enable
      RAMCFGEN       : Boolean := True;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  MDF1 enable
      MDF1EN         : Boolean := False;
      --  ADF enable
      ADF1EN         : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2ENR_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      RAMCFGEN       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      MDF1EN         at 0 range 16 .. 16;
      ADF1EN         at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  RCC AHB3 enable register
   type RCC_AHB3ENR_Register is record
      --  RNG enable
      RNGEN          : Boolean := False;
      --  HASH enable
      HASHEN         : Boolean := False;
      --  CRYP enable
      CRYPEN         : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  SAES enable
      SAESEN         : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  PKA enable
      PKAEN          : Boolean := False;
      --  RIFSC enable
      RIFSCEN        : Boolean := True;
      --  IAC enable
      IACEN          : Boolean := True;
      --  unspecified
      Reserved_11_13 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  RISAF enable
      RISAFEN        : Boolean := True;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB3ENR_Register use record
      RNGEN          at 0 range 0 .. 0;
      HASHEN         at 0 range 1 .. 1;
      CRYPEN         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SAESEN         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PKAEN          at 0 range 8 .. 8;
      RIFSCEN        at 0 range 9 .. 9;
      IACEN          at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      RISAFEN        at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  RCC AHB4 enable register
   type RCC_AHB4ENR_Register is record
      --  GPIOA enable
      GPIOAEN        : Boolean := False;
      --  GPIOB enable
      GPIOBEN        : Boolean := False;
      --  GPIOC enable
      GPIOCEN        : Boolean := False;
      --  GPIOD enable
      GPIODEN        : Boolean := False;
      --  GPIOE enable
      GPIOEEN        : Boolean := False;
      --  GPIOF enable
      GPIOFEN        : Boolean := False;
      --  GPIOG enable
      GPIOGEN        : Boolean := False;
      --  GPIOH enable
      GPIOHEN        : Boolean := False;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  GPION enable
      GPIONEN        : Boolean := False;
      --  GPIOO enable
      GPIOOEN        : Boolean := False;
      --  GPIOP enable
      GPIOPEN        : Boolean := False;
      --  GPIOQ enable
      GPIOQEN        : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  PWR enable
      PWREN          : Boolean := True;
      --  CRC enable
      CRCEN          : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB4ENR_Register use record
      GPIOAEN        at 0 range 0 .. 0;
      GPIOBEN        at 0 range 1 .. 1;
      GPIOCEN        at 0 range 2 .. 2;
      GPIODEN        at 0 range 3 .. 3;
      GPIOEEN        at 0 range 4 .. 4;
      GPIOFEN        at 0 range 5 .. 5;
      GPIOGEN        at 0 range 6 .. 6;
      GPIOHEN        at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      GPIONEN        at 0 range 13 .. 13;
      GPIOOEN        at 0 range 14 .. 14;
      GPIOPEN        at 0 range 15 .. 15;
      GPIOQEN        at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PWREN          at 0 range 18 .. 18;
      CRCEN          at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC AHB5 enable register
   type RCC_AHB5ENR_Register is record
      --  HPDMA1 enable
      HPDMA1EN       : Boolean := False;
      --  DMA2D enable
      DMA2DEN        : Boolean := False;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  JPEG enable
      JPEGEN         : Boolean := False;
      --  FMC enable
      FMCEN          : Boolean := False;
      --  XSPI1 enable
      XSPI1EN        : Boolean := False;
      --  PSSI enable
      PSSIEN         : Boolean := False;
      --  SDMMC2 enable
      SDMMC2EN       : Boolean := False;
      --  SDMMC1 enable
      SDMMC1EN       : Boolean := False;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  XSPI2 enable
      XSPI2EN        : Boolean := False;
      --  XSPIM enable
      XSPIMEN        : Boolean := False;
      --  MCE1 enable
      MCE1EN         : Boolean := False;
      --  MCE2 enable
      MCE2EN         : Boolean := False;
      --  MCE3 enable
      MCE3EN         : Boolean := False;
      --  XSPI3 enable
      XSPI3EN        : Boolean := False;
      --  MCE4 enable
      MCE4EN         : Boolean := False;
      --  GFXMMU enable
      GFXMMUEN       : Boolean := False;
      --  GPU enable
      GPUEN          : Boolean := False;
      --  unspecified
      Reserved_21_21 : Interfaces.Bit_Types.Bit := 16#0#;
      --  ETH1MAC enable
      ETH1MACEN      : Boolean := False;
      --  ETH1TX enable
      ETH1TXEN       : Boolean := False;
      --  ETH1RX enable
      ETH1RXEN       : Boolean := False;
      --  ETH1 enable
      ETH1EN         : Boolean := False;
      --  OTG1 enable
      OTG1EN         : Boolean := False;
      --  OTGPHY1 enable
      OTGPHY1EN      : Boolean := False;
      --  OTGPHY2 enable
      OTGPHY2EN      : Boolean := False;
      --  OTG2 enable
      OTG2EN         : Boolean := False;
      --  NPUCACHE enable
      NPUCACHEEN     : Boolean := False;
      --  NPU enable
      NPUEN          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB5ENR_Register use record
      HPDMA1EN       at 0 range 0 .. 0;
      DMA2DEN        at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      JPEGEN         at 0 range 3 .. 3;
      FMCEN          at 0 range 4 .. 4;
      XSPI1EN        at 0 range 5 .. 5;
      PSSIEN         at 0 range 6 .. 6;
      SDMMC2EN       at 0 range 7 .. 7;
      SDMMC1EN       at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      XSPI2EN        at 0 range 12 .. 12;
      XSPIMEN        at 0 range 13 .. 13;
      MCE1EN         at 0 range 14 .. 14;
      MCE2EN         at 0 range 15 .. 15;
      MCE3EN         at 0 range 16 .. 16;
      XSPI3EN        at 0 range 17 .. 17;
      MCE4EN         at 0 range 18 .. 18;
      GFXMMUEN       at 0 range 19 .. 19;
      GPUEN          at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      ETH1MACEN      at 0 range 22 .. 22;
      ETH1TXEN       at 0 range 23 .. 23;
      ETH1RXEN       at 0 range 24 .. 24;
      ETH1EN         at 0 range 25 .. 25;
      OTG1EN         at 0 range 26 .. 26;
      OTGPHY1EN      at 0 range 27 .. 27;
      OTGPHY2EN      at 0 range 28 .. 28;
      OTG2EN         at 0 range 29 .. 29;
      NPUCACHEEN     at 0 range 30 .. 30;
      NPUEN          at 0 range 31 .. 31;
   end record;

   --  RCC APB1L enable register
   type RCC_APB1LENR_Register is record
      --  TIM2 enable
      TIM2EN         : Boolean := False;
      --  TIM3 enable
      TIM3EN         : Boolean := False;
      --  TIM4 enable
      TIM4EN         : Boolean := False;
      --  TIM5 enable
      TIM5EN         : Boolean := False;
      --  TIM6 enable
      TIM6EN         : Boolean := False;
      --  TIM7 enable
      TIM7EN         : Boolean := False;
      --  TIM12 enable
      TIM12EN        : Boolean := False;
      --  TIM13 enable
      TIM13EN        : Boolean := False;
      --  TIM14 enable
      TIM14EN        : Boolean := False;
      --  LPTIM1 enable
      LPTIM1EN       : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  WWDG enable
      WWDGEN         : Boolean := False;
      --  TIM10 enable
      TIM10EN        : Boolean := False;
      --  TIM11 enable
      TIM11EN        : Boolean := False;
      --  SPI2 enable
      SPI2EN         : Boolean := False;
      --  SPI3 enable
      SPI3EN         : Boolean := False;
      --  SPDIFRX1 enable
      SPDIFRX1EN     : Boolean := False;
      --  USART2 enable
      USART2EN       : Boolean := False;
      --  USART3 enable
      USART3EN       : Boolean := False;
      --  UART4 enable
      UART4EN        : Boolean := False;
      --  UART5 enable
      UART5EN        : Boolean := False;
      --  I2C1 enable
      I2C1EN         : Boolean := False;
      --  I2C2 enable
      I2C2EN         : Boolean := False;
      --  I2C3 enable
      I2C3EN         : Boolean := False;
      --  I3C1 enable
      I3C1EN         : Boolean := False;
      --  I3C2 enable
      I3C2EN         : Boolean := False;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  UART7 enable
      UART7EN        : Boolean := False;
      --  UART8 enable
      UART8EN        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1LENR_Register use record
      TIM2EN         at 0 range 0 .. 0;
      TIM3EN         at 0 range 1 .. 1;
      TIM4EN         at 0 range 2 .. 2;
      TIM5EN         at 0 range 3 .. 3;
      TIM6EN         at 0 range 4 .. 4;
      TIM7EN         at 0 range 5 .. 5;
      TIM12EN        at 0 range 6 .. 6;
      TIM13EN        at 0 range 7 .. 7;
      TIM14EN        at 0 range 8 .. 8;
      LPTIM1EN       at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDGEN         at 0 range 11 .. 11;
      TIM10EN        at 0 range 12 .. 12;
      TIM11EN        at 0 range 13 .. 13;
      SPI2EN         at 0 range 14 .. 14;
      SPI3EN         at 0 range 15 .. 15;
      SPDIFRX1EN     at 0 range 16 .. 16;
      USART2EN       at 0 range 17 .. 17;
      USART3EN       at 0 range 18 .. 18;
      UART4EN        at 0 range 19 .. 19;
      UART5EN        at 0 range 20 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      I2C2EN         at 0 range 22 .. 22;
      I2C3EN         at 0 range 23 .. 23;
      I3C1EN         at 0 range 24 .. 24;
      I3C2EN         at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      UART7EN        at 0 range 30 .. 30;
      UART8EN        at 0 range 31 .. 31;
   end record;

   --  RCC APB1H enable register
   type RCC_APB1HENR_Register is record
      --  unspecified
      Reserved_0_4   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  MDIOS enable
      MDIOSEN        : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  FDCAN enable
      FDCANEN        : Boolean := False;
      --  unspecified
      Reserved_9_17  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  UCPD1 enable
      UCPD1EN        : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1HENR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      MDIOSEN        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FDCANEN        at 0 range 8 .. 8;
      Reserved_9_17  at 0 range 9 .. 17;
      UCPD1EN        at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  RCC APB2 enable register
   type RCC_APB2ENR_Register is record
      --  TIM1 enable
      TIM1EN         : Boolean := False;
      --  TIM8 enable
      TIM8EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  USART1 enable
      USART1EN       : Boolean := False;
      --  USART6 enable
      USART6EN       : Boolean := False;
      --  UART9 enable
      UART9EN        : Boolean := False;
      --  USART10 enable
      USART10EN      : Boolean := False;
      --  unspecified
      Reserved_8_11  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  SPI1 enable
      SPI1EN         : Boolean := False;
      --  SPI4 enable
      SPI4EN         : Boolean := False;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM18 enable
      TIM18EN        : Boolean := False;
      --  TIM15 enable
      TIM15EN        : Boolean := False;
      --  TIM16 enable
      TIM16EN        : Boolean := False;
      --  TIM17 enable
      TIM17EN        : Boolean := False;
      --  TIM9 enable
      TIM9EN         : Boolean := False;
      --  SPI5 enable
      SPI5EN         : Boolean := False;
      --  SAI1 enable
      SAI1EN         : Boolean := False;
      --  SAI2 enable
      SAI2EN         : Boolean := False;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB2ENR_Register use record
      TIM1EN         at 0 range 0 .. 0;
      TIM8EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      USART1EN       at 0 range 4 .. 4;
      USART6EN       at 0 range 5 .. 5;
      UART9EN        at 0 range 6 .. 6;
      USART10EN      at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      SPI4EN         at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      TIM18EN        at 0 range 15 .. 15;
      TIM15EN        at 0 range 16 .. 16;
      TIM16EN        at 0 range 17 .. 17;
      TIM17EN        at 0 range 18 .. 18;
      TIM9EN         at 0 range 19 .. 19;
      SPI5EN         at 0 range 20 .. 20;
      SAI1EN         at 0 range 21 .. 21;
      SAI2EN         at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  RCC APB3 enable register
   type RCC_APB3ENR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  DFT enable
      DFTEN         : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB3ENR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DFTEN         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC APB4L enable register
   type RCC_APB4LENR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  HDP enable
      HDPEN          : Boolean := False;
      --  LPUART1 enable
      LPUART1EN      : Boolean := False;
      --  unspecified
      Reserved_4_4   : Interfaces.Bit_Types.Bit := 16#0#;
      --  SPI6 enable
      SPI6EN         : Boolean := False;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  I2C4 enable
      I2C4EN         : Boolean := False;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  LPTIM2 enable
      LPTIM2EN       : Boolean := False;
      --  LPTIM3 enable
      LPTIM3EN       : Boolean := False;
      --  LPTIM4 enable
      LPTIM4EN       : Boolean := False;
      --  LPTIM5 enable
      LPTIM5EN       : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  VREFBUF enable
      VREFBUFEN      : Boolean := False;
      --  RTC enable
      RTCEN          : Boolean := False;
      --  RTCAPB enable
      RTCAPBEN       : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  R2GRET enable
      R2GRETEN       : Boolean := False;
      --  R2GNPU enable
      R2GNPUEN       : Boolean := False;
      --  unspecified
      Reserved_24_30 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  SERF enable
      SERFEN         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4LENR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      HDPEN          at 0 range 2 .. 2;
      LPUART1EN      at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SPI6EN         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      I2C4EN         at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LPTIM2EN       at 0 range 9 .. 9;
      LPTIM3EN       at 0 range 10 .. 10;
      LPTIM4EN       at 0 range 11 .. 11;
      LPTIM5EN       at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      VREFBUFEN      at 0 range 15 .. 15;
      RTCEN          at 0 range 16 .. 16;
      RTCAPBEN       at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      R2GRETEN       at 0 range 22 .. 22;
      R2GNPUEN       at 0 range 23 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      SERFEN         at 0 range 31 .. 31;
   end record;

   --  RCC APB4H enable register
   type RCC_APB4HENR_Register is record
      --  SYSCFG enable
      SYSCFGEN      : Boolean := False;
      --  BSEC enable
      BSECEN        : Boolean := True;
      --  DTS enable
      DTSEN         : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  BUSPERFM enable
      BUSPERFMEN    : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4HENR_Register use record
      SYSCFGEN      at 0 range 0 .. 0;
      BSECEN        at 0 range 1 .. 1;
      DTSEN         at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      BUSPERFMEN    at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC APB5 enable register
   type RCC_APB5ENR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  LTDC enable
      LTDCEN        : Boolean := False;
      --  DCMIPP enable
      DCMIPPEN      : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  GFXTIM enable
      GFXTIMEN      : Boolean := False;
      --  VENC enable
      VENCEN        : Boolean := False;
      --  CSI enable
      CSIEN         : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB5ENR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LTDCEN        at 0 range 1 .. 1;
      DCMIPPEN      at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      GFXTIMEN      at 0 range 4 .. 4;
      VENCEN        at 0 range 5 .. 5;
      CSIEN         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC dividers Sleep enable register
   type RCC_DIVLPENR_Register is record
      --  IC1 sleep enable
      IC1LPEN        : Boolean := False;
      --  IC2 sleep enable
      IC2LPEN        : Boolean := False;
      --  IC3 sleep enable
      IC3LPEN        : Boolean := False;
      --  IC4 sleep enable
      IC4LPEN        : Boolean := False;
      --  IC5 sleep enable
      IC5LPEN        : Boolean := False;
      --  IC6 sleep enable
      IC6LPEN        : Boolean := False;
      --  IC7 sleep enable
      IC7LPEN        : Boolean := False;
      --  IC8 sleep enable
      IC8LPEN        : Boolean := False;
      --  IC9 sleep enable
      IC9LPEN        : Boolean := False;
      --  IC10 sleep enable
      IC10LPEN       : Boolean := False;
      --  IC11 sleep enable
      IC11LPEN       : Boolean := False;
      --  IC12 sleep enable
      IC12LPEN       : Boolean := False;
      --  IC13 sleep enable
      IC13LPEN       : Boolean := False;
      --  IC14 sleep enable
      IC14LPEN       : Boolean := False;
      --  IC15 sleep enable
      IC15LPEN       : Boolean := False;
      --  IC16 sleep enable
      IC16LPEN       : Boolean := False;
      --  IC17 sleep enable
      IC17LPEN       : Boolean := False;
      --  IC18 sleep enable
      IC18LPEN       : Boolean := False;
      --  IC19 sleep enable
      IC19LPEN       : Boolean := False;
      --  IC20 sleep enable
      IC20LPEN       : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_DIVLPENR_Register use record
      IC1LPEN        at 0 range 0 .. 0;
      IC2LPEN        at 0 range 1 .. 1;
      IC3LPEN        at 0 range 2 .. 2;
      IC4LPEN        at 0 range 3 .. 3;
      IC5LPEN        at 0 range 4 .. 4;
      IC6LPEN        at 0 range 5 .. 5;
      IC7LPEN        at 0 range 6 .. 6;
      IC8LPEN        at 0 range 7 .. 7;
      IC9LPEN        at 0 range 8 .. 8;
      IC10LPEN       at 0 range 9 .. 9;
      IC11LPEN       at 0 range 10 .. 10;
      IC12LPEN       at 0 range 11 .. 11;
      IC13LPEN       at 0 range 12 .. 12;
      IC14LPEN       at 0 range 13 .. 13;
      IC15LPEN       at 0 range 14 .. 14;
      IC16LPEN       at 0 range 15 .. 15;
      IC17LPEN       at 0 range 16 .. 16;
      IC18LPEN       at 0 range 17 .. 17;
      IC19LPEN       at 0 range 18 .. 18;
      IC20LPEN       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC SoC buses Sleep enable register
   type RCC_BUSLPENR_Register is record
      --  ACLKN sleep enable
      ACLKNLPEN      : Boolean := True;
      --  ACLKNC sleep enable
      ACLKNCLPEN     : Boolean := True;
      --  AHBM sleep enable
      AHBMLPEN       : Boolean := False;
      --  AHB1 sleep enable
      AHB1LPEN       : Boolean := False;
      --  AHB2 sleep enable
      AHB2LPEN       : Boolean := False;
      --  AHB3 sleep enable
      AHB3LPEN       : Boolean := False;
      --  AHB4 sleep enable
      AHB4LPEN       : Boolean := False;
      --  AHB5 sleep enable
      AHB5LPEN       : Boolean := False;
      --  APB1 sleep enable
      APB1LPEN       : Boolean := False;
      --  APB2 sleep enable
      APB2LPEN       : Boolean := False;
      --  APB3 sleep enable
      APB3LPEN       : Boolean := False;
      --  APB4 sleep enable
      APB4LPEN       : Boolean := False;
      --  APB5 sleep enable
      APB5LPEN       : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_BUSLPENR_Register use record
      ACLKNLPEN      at 0 range 0 .. 0;
      ACLKNCLPEN     at 0 range 1 .. 1;
      AHBMLPEN       at 0 range 2 .. 2;
      AHB1LPEN       at 0 range 3 .. 3;
      AHB2LPEN       at 0 range 4 .. 4;
      AHB3LPEN       at 0 range 5 .. 5;
      AHB4LPEN       at 0 range 6 .. 6;
      AHB5LPEN       at 0 range 7 .. 7;
      APB1LPEN       at 0 range 8 .. 8;
      APB2LPEN       at 0 range 9 .. 9;
      APB3LPEN       at 0 range 10 .. 10;
      APB4LPEN       at 0 range 11 .. 11;
      APB5LPEN       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC miscellaneous configurations Sleep enable register
   type RCC_MISCLPENR_Register is record
      --  DBG sleep enable
      DBGLPEN         : Boolean := False;
      --  unspecified
      Reserved_1_2    : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  XSPIPHYCOMP sleep enable
      XSPIPHYCOMPLPEN : Boolean := False;
      --  unspecified
      Reserved_4_5    : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  PER sleep enable
      PERLPEN         : Boolean := False;
      --  unspecified
      Reserved_7_31   : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MISCLPENR_Register use record
      DBGLPEN         at 0 range 0 .. 0;
      Reserved_1_2    at 0 range 1 .. 2;
      XSPIPHYCOMPLPEN at 0 range 3 .. 3;
      Reserved_4_5    at 0 range 4 .. 5;
      PERLPEN         at 0 range 6 .. 6;
      Reserved_7_31   at 0 range 7 .. 31;
   end record;

   --  RCC memory Sleep enable register
   type RCC_MEMLPENR_Register is record
      --  AXISRAM3 sleep enable
      AXISRAM3LPEN    : Boolean := False;
      --  AXISRAM4 sleep enable
      AXISRAM4LPEN    : Boolean := False;
      --  AXISRAM5 sleep enable
      AXISRAM5LPEN    : Boolean := False;
      --  AXISRAM6 sleep enable
      AXISRAM6LPEN    : Boolean := False;
      --  AHBSRAM1 sleep enable
      AHBSRAM1LPEN    : Boolean := False;
      --  AHBSRAM2 sleep enable
      AHBSRAM2LPEN    : Boolean := False;
      --  BKPSRAM sleep enable
      BKPSRAMLPEN     : Boolean := False;
      --  AXISRAM1 sleep enable
      AXISRAM1LPEN    : Boolean := False;
      --  AXISRAM2 sleep enable
      AXISRAM2LPEN    : Boolean := False;
      --  FLEXRAM sleep enable
      FLEXRAMLPEN     : Boolean := False;
      --  NPUCACHERAM sleep enable
      NPUCACHERAMLPEN : Boolean := False;
      --  VENCRAM sleep enable
      VENCRAMLPEN     : Boolean := False;
      --  BOOTROM sleep enable
      BOOTROMLPEN     : Boolean := False;
      --  unspecified
      Reserved_13_31  : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MEMLPENR_Register use record
      AXISRAM3LPEN    at 0 range 0 .. 0;
      AXISRAM4LPEN    at 0 range 1 .. 1;
      AXISRAM5LPEN    at 0 range 2 .. 2;
      AXISRAM6LPEN    at 0 range 3 .. 3;
      AHBSRAM1LPEN    at 0 range 4 .. 4;
      AHBSRAM2LPEN    at 0 range 5 .. 5;
      BKPSRAMLPEN     at 0 range 6 .. 6;
      AXISRAM1LPEN    at 0 range 7 .. 7;
      AXISRAM2LPEN    at 0 range 8 .. 8;
      FLEXRAMLPEN     at 0 range 9 .. 9;
      NPUCACHERAMLPEN at 0 range 10 .. 10;
      VENCRAMLPEN     at 0 range 11 .. 11;
      BOOTROMLPEN     at 0 range 12 .. 12;
      Reserved_13_31  at 0 range 13 .. 31;
   end record;

   --  RCC AHB1 Sleep enable register
   type RCC_AHB1LPENR_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  GPDMA1 sleep enable
      GPDMA1LPEN    : Boolean := False;
      --  ADC12 sleep enable
      ADC12LPEN     : Boolean := False;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1LPENR_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      GPDMA1LPEN    at 0 range 4 .. 4;
      ADC12LPEN     at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RCC AHB2 Sleep enable register
   type RCC_AHB2LPENR_Register is record
      --  unspecified
      Reserved_0_11  : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  RAMCFG sleep enable
      RAMCFGLPEN     : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  MDF1 sleep enable
      MDF1LPEN       : Boolean := False;
      --  ADF1 sleep enable
      ADF1LPEN       : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2LPENR_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      RAMCFGLPEN     at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      MDF1LPEN       at 0 range 16 .. 16;
      ADF1LPEN       at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  RCC AHB3 Sleep enable register
   type RCC_AHB3LPENR_Register is record
      --  RNG sleep enable
      RNGLPEN        : Boolean := False;
      --  HASH sleep enable
      HASHLPEN       : Boolean := False;
      --  CRYP sleep enable
      CRYPLPEN       : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  SAES sleep enable
      SAESLPEN       : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  PKA sleep enable
      PKALPEN        : Boolean := False;
      --  RIFSC sleep enable
      RIFSCLPEN      : Boolean := False;
      --  IAC sleep enable
      IACLPEN        : Boolean := True;
      --  unspecified
      Reserved_11_13 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  RISAF sleep enable
      RISAFLPEN      : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB3LPENR_Register use record
      RNGLPEN        at 0 range 0 .. 0;
      HASHLPEN       at 0 range 1 .. 1;
      CRYPLPEN       at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SAESLPEN       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PKALPEN        at 0 range 8 .. 8;
      RIFSCLPEN      at 0 range 9 .. 9;
      IACLPEN        at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      RISAFLPEN      at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  RCC AHB4 Sleep enable register
   type RCC_AHB4LPENR_Register is record
      --  GPIOA sleep enable
      GPIOALPEN      : Boolean := False;
      --  GPIOB sleep enable
      GPIOBLPEN      : Boolean := False;
      --  GPIOC sleep enable
      GPIOCLPEN      : Boolean := False;
      --  GPIOD sleep enable
      GPIODLPEN      : Boolean := False;
      --  GPIOE sleep enable
      GPIOELPEN      : Boolean := False;
      --  GPIOF sleep enable
      GPIOFLPEN      : Boolean := False;
      --  GPIOG sleep enable
      GPIOGLPEN      : Boolean := False;
      --  GPIOH sleep enable
      GPIOHLPEN      : Boolean := False;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  GPION sleep enable
      GPIONLPEN      : Boolean := False;
      --  GPIOO sleep enable
      GPIOOLPEN      : Boolean := False;
      --  GPIOP sleep enable
      GPIOPLPEN      : Boolean := False;
      --  GPIOQ sleep enable
      GPIOQLPEN      : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  PWR sleep enable
      PWRLPEN        : Boolean := True;
      --  CRC sleep enable
      CRCLPEN        : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB4LPENR_Register use record
      GPIOALPEN      at 0 range 0 .. 0;
      GPIOBLPEN      at 0 range 1 .. 1;
      GPIOCLPEN      at 0 range 2 .. 2;
      GPIODLPEN      at 0 range 3 .. 3;
      GPIOELPEN      at 0 range 4 .. 4;
      GPIOFLPEN      at 0 range 5 .. 5;
      GPIOGLPEN      at 0 range 6 .. 6;
      GPIOHLPEN      at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      GPIONLPEN      at 0 range 13 .. 13;
      GPIOOLPEN      at 0 range 14 .. 14;
      GPIOPLPEN      at 0 range 15 .. 15;
      GPIOQLPEN      at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PWRLPEN        at 0 range 18 .. 18;
      CRCLPEN        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC AHB5 Sleep enable register
   type RCC_AHB5LPENR_Register is record
      --  HPDMA1 sleep enable
      HPDMA1LPEN     : Boolean := False;
      --  DMA2D sleep enable
      DMA2DLPEN      : Boolean := False;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  JPEG sleep enable
      JPEGLPEN       : Boolean := False;
      --  FMC sleep enable
      FMCLPEN        : Boolean := False;
      --  XSPI1 sleep enable
      XSPI1LPEN      : Boolean := False;
      --  PSSI sleep enable
      PSSILPEN       : Boolean := False;
      --  SDMMC2 sleep enable
      SDMMC2LPEN     : Boolean := False;
      --  SDMMC1 sleep enable
      SDMMC1LPEN     : Boolean := False;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  XSPI2 sleep enable
      XSPI2LPEN      : Boolean := False;
      --  XSPIM sleep enable
      XSPIMLPEN      : Boolean := False;
      --  MCE1 sleep enable
      MCE1LPEN       : Boolean := False;
      --  MCE2 sleep enable
      MCE2LPEN       : Boolean := False;
      --  MCE3 sleep enable
      MCE3LPEN       : Boolean := False;
      --  XSPI3 sleep enable
      XSPI3LPEN      : Boolean := False;
      --  MCE4 sleep enable
      MCE4LPEN       : Boolean := False;
      --  GFXMMU sleep enable
      GFXMMULPEN     : Boolean := False;
      --  GPU sleep enable
      GPULPEN        : Boolean := False;
      --  unspecified
      Reserved_21_21 : Interfaces.Bit_Types.Bit := 16#0#;
      --  ETH1MAC sleep enable
      ETH1MACLPEN    : Boolean := False;
      --  ETH1TX sleep enable
      ETH1TXLPEN     : Boolean := False;
      --  ETH1RX sleep enable
      ETH1RXLPEN     : Boolean := False;
      --  ETH1 sleep enable
      ETH1LPEN       : Boolean := False;
      --  OTG1 sleep enable
      OTG1LPEN       : Boolean := False;
      --  OTGPHY1 sleep enable
      OTGPHY1LPEN    : Boolean := False;
      --  OTGPHY2 sleep enable
      OTGPHY2LPEN    : Boolean := False;
      --  OTG2 sleep enable
      OTG2LPEN       : Boolean := False;
      --  NPUCACHE sleep enable
      NPUCACHELPEN   : Boolean := False;
      --  NPU sleep enable
      NPULPEN        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB5LPENR_Register use record
      HPDMA1LPEN     at 0 range 0 .. 0;
      DMA2DLPEN      at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      JPEGLPEN       at 0 range 3 .. 3;
      FMCLPEN        at 0 range 4 .. 4;
      XSPI1LPEN      at 0 range 5 .. 5;
      PSSILPEN       at 0 range 6 .. 6;
      SDMMC2LPEN     at 0 range 7 .. 7;
      SDMMC1LPEN     at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      XSPI2LPEN      at 0 range 12 .. 12;
      XSPIMLPEN      at 0 range 13 .. 13;
      MCE1LPEN       at 0 range 14 .. 14;
      MCE2LPEN       at 0 range 15 .. 15;
      MCE3LPEN       at 0 range 16 .. 16;
      XSPI3LPEN      at 0 range 17 .. 17;
      MCE4LPEN       at 0 range 18 .. 18;
      GFXMMULPEN     at 0 range 19 .. 19;
      GPULPEN        at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      ETH1MACLPEN    at 0 range 22 .. 22;
      ETH1TXLPEN     at 0 range 23 .. 23;
      ETH1RXLPEN     at 0 range 24 .. 24;
      ETH1LPEN       at 0 range 25 .. 25;
      OTG1LPEN       at 0 range 26 .. 26;
      OTGPHY1LPEN    at 0 range 27 .. 27;
      OTGPHY2LPEN    at 0 range 28 .. 28;
      OTG2LPEN       at 0 range 29 .. 29;
      NPUCACHELPEN   at 0 range 30 .. 30;
      NPULPEN        at 0 range 31 .. 31;
   end record;

   --  RCC APB1L Sleep enable register
   type RCC_APB1LLPENR_Register is record
      --  TIM2 sleep enable
      TIM2LPEN       : Boolean := False;
      --  TIM3 sleep enable
      TIM3LPEN       : Boolean := False;
      --  TIM4 sleep enable
      TIM4LPEN       : Boolean := False;
      --  TIM5 sleep enable
      TIM5LPEN       : Boolean := False;
      --  TIM6 sleep enable
      TIM6LPEN       : Boolean := False;
      --  TIM7 sleep enable
      TIM7LPEN       : Boolean := False;
      --  TIM12 sleep enable
      TIM12LPEN      : Boolean := False;
      --  TIM13 sleep enable
      TIM13LPEN      : Boolean := False;
      --  TIM14 sleep enable
      TIM14LPEN      : Boolean := False;
      --  LPTIM1 sleep enable
      LPTIM1LPEN     : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  WWDG sleep enable
      WWDGLPEN       : Boolean := False;
      --  TIM10 sleep enable
      TIM10LPEN      : Boolean := False;
      --  TIM11 sleep enable
      TIM11LPEN      : Boolean := False;
      --  SPI2 sleep enable
      SPI2LPEN       : Boolean := False;
      --  SPI3 sleep enable
      SPI3LPEN       : Boolean := False;
      --  SPDIFRX1 sleep enable
      SPDIFRX1LPEN   : Boolean := False;
      --  USART2 sleep enable
      USART2LPEN     : Boolean := False;
      --  USART3 sleep enable
      USART3LPEN     : Boolean := False;
      --  UART4 sleep enable
      UART4LPEN      : Boolean := False;
      --  UART5 sleep enable
      UART5LPEN      : Boolean := False;
      --  I2C1 sleep enable
      I2C1LPEN       : Boolean := False;
      --  I2C2 sleep enable
      I2C2LPEN       : Boolean := False;
      --  I2C3 sleep enable
      I2C3LPEN       : Boolean := False;
      --  I3C1 sleep enable
      I3C1LPEN       : Boolean := False;
      --  I3C2 sleep enable
      I3C2LPEN       : Boolean := False;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  UART7 sleep enable
      UART7LPEN      : Boolean := False;
      --  UART8 sleep enable
      UART8LPEN      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1LLPENR_Register use record
      TIM2LPEN       at 0 range 0 .. 0;
      TIM3LPEN       at 0 range 1 .. 1;
      TIM4LPEN       at 0 range 2 .. 2;
      TIM5LPEN       at 0 range 3 .. 3;
      TIM6LPEN       at 0 range 4 .. 4;
      TIM7LPEN       at 0 range 5 .. 5;
      TIM12LPEN      at 0 range 6 .. 6;
      TIM13LPEN      at 0 range 7 .. 7;
      TIM14LPEN      at 0 range 8 .. 8;
      LPTIM1LPEN     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDGLPEN       at 0 range 11 .. 11;
      TIM10LPEN      at 0 range 12 .. 12;
      TIM11LPEN      at 0 range 13 .. 13;
      SPI2LPEN       at 0 range 14 .. 14;
      SPI3LPEN       at 0 range 15 .. 15;
      SPDIFRX1LPEN   at 0 range 16 .. 16;
      USART2LPEN     at 0 range 17 .. 17;
      USART3LPEN     at 0 range 18 .. 18;
      UART4LPEN      at 0 range 19 .. 19;
      UART5LPEN      at 0 range 20 .. 20;
      I2C1LPEN       at 0 range 21 .. 21;
      I2C2LPEN       at 0 range 22 .. 22;
      I2C3LPEN       at 0 range 23 .. 23;
      I3C1LPEN       at 0 range 24 .. 24;
      I3C2LPEN       at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      UART7LPEN      at 0 range 30 .. 30;
      UART8LPEN      at 0 range 31 .. 31;
   end record;

   --  RCC APB1H Sleep enable register
   type RCC_APB1HLPENR_Register is record
      --  unspecified
      Reserved_0_4   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  MDIOS sleep enable
      MDIOSLPEN      : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  FDCAN sleep enable
      FDCANLPEN      : Boolean := False;
      --  unspecified
      Reserved_9_17  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  UCPD1 sleep enable
      UCPD1LPEN      : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1HLPENR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      MDIOSLPEN      at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FDCANLPEN      at 0 range 8 .. 8;
      Reserved_9_17  at 0 range 9 .. 17;
      UCPD1LPEN      at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  RCC APB2 Sleep enable register
   type RCC_APB2LPENR_Register is record
      --  TIM1 sleep enable
      TIM1LPEN       : Boolean := False;
      --  TIM8 sleep enable
      TIM8LPEN       : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  USART1 sleep enable
      USART1LPEN     : Boolean := False;
      --  USART6 sleep enable
      USART6LPEN     : Boolean := False;
      --  UART9 sleep enable
      UART9LPEN      : Boolean := False;
      --  USART10 sleep enable
      USART10LPEN    : Boolean := False;
      --  unspecified
      Reserved_8_11  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  SPI1 sleep enable
      SPI1LPEN       : Boolean := False;
      --  SPI4 sleep enable
      SPI4LPEN       : Boolean := False;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM18 sleep enable
      TIM18LPEN      : Boolean := False;
      --  TIM15 sleep enable
      TIM15LPEN      : Boolean := False;
      --  TIM16 sleep enable
      TIM16LPEN      : Boolean := False;
      --  TIM17 sleep enable
      TIM17LPEN      : Boolean := False;
      --  TIM9 sleep enable
      TIM9LPEN       : Boolean := False;
      --  SPI5 sleep enable
      SPI5LPEN       : Boolean := False;
      --  SAI1 sleep enable
      SAI1LPEN       : Boolean := False;
      --  SAI2 sleep enable
      SAI2LPEN       : Boolean := False;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB2LPENR_Register use record
      TIM1LPEN       at 0 range 0 .. 0;
      TIM8LPEN       at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      USART1LPEN     at 0 range 4 .. 4;
      USART6LPEN     at 0 range 5 .. 5;
      UART9LPEN      at 0 range 6 .. 6;
      USART10LPEN    at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SPI1LPEN       at 0 range 12 .. 12;
      SPI4LPEN       at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      TIM18LPEN      at 0 range 15 .. 15;
      TIM15LPEN      at 0 range 16 .. 16;
      TIM16LPEN      at 0 range 17 .. 17;
      TIM17LPEN      at 0 range 18 .. 18;
      TIM9LPEN       at 0 range 19 .. 19;
      SPI5LPEN       at 0 range 20 .. 20;
      SAI1LPEN       at 0 range 21 .. 21;
      SAI2LPEN       at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  RCC APB3 Sleep enable register
   type RCC_APB3LPENR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  DFT sleep enable
      DFTLPEN       : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB3LPENR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DFTLPEN       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC APB4L Sleep enable register
   type RCC_APB4LLPENR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  HDP sleep enable
      HDPLPEN        : Boolean := False;
      --  LPUART1 sleep enable
      LPUART1LPEN    : Boolean := False;
      --  unspecified
      Reserved_4_4   : Interfaces.Bit_Types.Bit := 16#0#;
      --  SPI6 sleep enable
      SPI6LPEN       : Boolean := False;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  I2C4 sleep enable
      I2C4LPEN       : Boolean := False;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  LPTIM2 sleep enable
      LPTIM2LPEN     : Boolean := False;
      --  LPTIM3 sleep enable
      LPTIM3LPEN     : Boolean := False;
      --  LPTIM4 sleep enable
      LPTIM4LPEN     : Boolean := False;
      --  LPTIM5 sleep enable
      LPTIM5LPEN     : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  VREFBUF sleep enable
      VREFBUFLPEN    : Boolean := False;
      --  RTC sleep enable
      RTCLPEN        : Boolean := False;
      --  RTCAPB sleep enable
      RTCAPBLPEN     : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  R2GRET sleep enable
      R2GRETLPEN     : Boolean := False;
      --  R2GNPU sleep enable
      R2GNPULPEN     : Boolean := False;
      --  unspecified
      Reserved_24_30 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  SERF sleep enable
      SERFLPEN       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4LLPENR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      HDPLPEN        at 0 range 2 .. 2;
      LPUART1LPEN    at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SPI6LPEN       at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      I2C4LPEN       at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LPTIM2LPEN     at 0 range 9 .. 9;
      LPTIM3LPEN     at 0 range 10 .. 10;
      LPTIM4LPEN     at 0 range 11 .. 11;
      LPTIM5LPEN     at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      VREFBUFLPEN    at 0 range 15 .. 15;
      RTCLPEN        at 0 range 16 .. 16;
      RTCAPBLPEN     at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      R2GRETLPEN     at 0 range 22 .. 22;
      R2GNPULPEN     at 0 range 23 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      SERFLPEN       at 0 range 31 .. 31;
   end record;

   --  RCC APB4H Sleep enable register
   type RCC_APB4HLPENR_Register is record
      --  SYSCFG sleep enable
      SYSCFGLPEN    : Boolean := False;
      --  BSEC sleep enable
      BSECLPEN      : Boolean := True;
      --  DTS sleep enable
      DTSLPEN       : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  BUSPERFM sleep enable
      BUSPERFMLPEN  : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4HLPENR_Register use record
      SYSCFGLPEN    at 0 range 0 .. 0;
      BSECLPEN      at 0 range 1 .. 1;
      DTSLPEN       at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      BUSPERFMLPEN  at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC APB5 Sleep enable register
   type RCC_APB5LPENR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  LTDC sleep enable
      LTDCLPEN      : Boolean := False;
      --  DCMIPP sleep enable
      DCMIPPLPEN    : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  GFXTIM sleep enable
      GFXTIMLPEN    : Boolean := False;
      --  VENC sleep enable
      VENCLPEN      : Boolean := False;
      --  CSI sleep enable
      CSILPEN       : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB5LPENR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LTDCLPEN      at 0 range 1 .. 1;
      DCMIPPLPEN    at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      GFXTIMLPEN    at 0 range 4 .. 4;
      VENCLPEN      at 0 range 5 .. 5;
      CSILPEN       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_RDCR_MRD_Field is Interfaces.Bit_Types.UInt5;
   subtype RCC_RDCR_EADLY_Field is Interfaces.Bit_Types.UInt4;

   --  RCC APB5 Sleep enable register
   type RCC_RDCR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  BOOTROM sleep enable
      MRD            : RCC_RDCR_MRD_Field := 16#6#;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  BOOTROM sleep enable
      EADLY          : RCC_RDCR_EADLY_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_RDCR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      MRD            at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      EADLY          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  RCC oscillator secure configuration register0
   type RCC_SECCFGR0_Register is record
      --  Defines the secure protection of the LSI oscillator configuration
      --  bits.
      LSISEC        : Boolean := False;
      --  Defines the secure protection of the LSE oscillator configuration
      --  bits.
      LSESEC        : Boolean := False;
      --  Defines the secure protection of the MSI oscillator configuration
      --  bits.
      MSISEC        : Boolean := False;
      --  Defines the secure protection of the HSI oscillator configuration
      --  bits.
      HSISEC        : Boolean := False;
      --  Defines the secure protection of the HSE oscillator configuration
      --  bits.
      HSESEC        : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SECCFGR0_Register use record
      LSISEC        at 0 range 0 .. 0;
      LSESEC        at 0 range 1 .. 1;
      MSISEC        at 0 range 2 .. 2;
      HSISEC        at 0 range 3 .. 3;
      HSESEC        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC oscillator privilege configuration register0
   type RCC_PRIVCFGR0_Register is record
      --  Defines the privilege protection of the LSI oscillator configuration
      --  bits.
      LSIPV         : Boolean := False;
      --  Defines the privilege protection of the LSE oscillator configuration
      --  bits.
      LSEPV         : Boolean := False;
      --  Defines the privilege protection of the MSI oscillator configuration
      --  bits.
      MSIPV         : Boolean := False;
      --  Defines the privilege protection of the HSI oscillator configuration
      --  bits.
      HSIPV         : Boolean := False;
      --  Defines the privilege protection of the HSE oscillator configuration
      --  bits.
      HSEPV         : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGR0_Register use record
      LSIPV         at 0 range 0 .. 0;
      LSEPV         at 0 range 1 .. 1;
      MSIPV         at 0 range 2 .. 2;
      HSIPV         at 0 range 3 .. 3;
      HSEPV         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC oscillator lock configuration register0
   type RCC_LOCKCFGR0_Register is record
      --  Write-only. Defines the lock protection of the LSI oscillator
      --  configuration bits.
      LSILOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the LSE oscillator
      --  configuration bits.
      LSELOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the MSI oscillator
      --  configuration bits.
      MSILOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the HSI oscillator
      --  configuration bits.
      HSILOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the HSE oscillator
      --  configuration bits.
      HSELOCK       : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LOCKCFGR0_Register use record
      LSILOCK       at 0 range 0 .. 0;
      LSELOCK       at 0 range 1 .. 1;
      MSILOCK       at 0 range 2 .. 2;
      HSILOCK       at 0 range 3 .. 3;
      HSELOCK       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC oscillator public configuration register0
   type RCC_PUBCFGR0_Register is record
      --  Defines the public protection of the LSI oscillator configuration
      --  bits.
      LSIPUB        : Boolean := False;
      --  Defines the public protection of the LSE oscillator configuration
      --  bits.
      LSEPUB        : Boolean := False;
      --  Defines the public protection of the MSI oscillator configuration
      --  bits.
      MSIPUB        : Boolean := False;
      --  Defines the public protection of the HSI oscillator configuration
      --  bits.
      HSIPUB        : Boolean := False;
      --  Defines the public protection of the HSE oscillator configuration
      --  bits.
      HSEPUB        : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGR0_Register use record
      LSIPUB        at 0 range 0 .. 0;
      LSEPUB        at 0 range 1 .. 1;
      MSIPUB        at 0 range 2 .. 2;
      HSIPUB        at 0 range 3 .. 3;
      HSEPUB        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC PLL secure configuration register1
   type RCC_SECCFGR1_Register is record
      --  Defines the secure protection of the PLL1 PLL configuration bits.
      PLL1SEC       : Boolean := False;
      --  Defines the secure protection of the PLL2 PLL configuration bits.
      PLL2SEC       : Boolean := False;
      --  Defines the secure protection of the PLL3 PLL configuration bits.
      PLL3SEC       : Boolean := False;
      --  Defines the secure protection of the PLL4 PLL configuration bits.
      PLL4SEC       : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SECCFGR1_Register use record
      PLL1SEC       at 0 range 0 .. 0;
      PLL2SEC       at 0 range 1 .. 1;
      PLL3SEC       at 0 range 2 .. 2;
      PLL4SEC       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC PLL privilege configuration register1
   type RCC_PRIVCFGR1_Register is record
      --  Defines the privilege protection of the PLL1 PLL configuration bits.
      PLL1PV        : Boolean := False;
      --  Defines the privilege protection of the PLL2 PLL configuration bits.
      PLL2PV        : Boolean := False;
      --  Defines the privilege protection of the PLL3 PLL configuration bits.
      PLL3PV        : Boolean := False;
      --  Defines the privilege protection of the PLL4 PLL configuration bits.
      PLL4PV        : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGR1_Register use record
      PLL1PV        at 0 range 0 .. 0;
      PLL2PV        at 0 range 1 .. 1;
      PLL3PV        at 0 range 2 .. 2;
      PLL4PV        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC PLL lock configuration register1
   type RCC_LOCKCFGR1_Register is record
      --  Write-only. Defines the lock protection of the PLL1 PLL configuration
      --  bits.
      PLL1LOCK      : Boolean := False;
      --  Write-only. Defines the lock protection of the PLL2 PLL configuration
      --  bits.
      PLL2LOCK      : Boolean := False;
      --  Write-only. Defines the lock protection of the PLL3 PLL configuration
      --  bits.
      PLL3LOCK      : Boolean := False;
      --  Write-only. Defines the lock protection of the PLL4 PLL configuration
      --  bits.
      PLL4LOCK      : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LOCKCFGR1_Register use record
      PLL1LOCK      at 0 range 0 .. 0;
      PLL2LOCK      at 0 range 1 .. 1;
      PLL3LOCK      at 0 range 2 .. 2;
      PLL4LOCK      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC PLL public configuration register1
   type RCC_PUBCFGR1_Register is record
      --  Defines the public protection of the PLL1 PLL configuration bits.
      PLL1PUB       : Boolean := False;
      --  Defines the public protection of the PLL2 PLL configuration bits.
      PLL2PUB       : Boolean := False;
      --  Defines the public protection of the PLL3 PLL configuration bits.
      PLL3PUB       : Boolean := False;
      --  Defines the public protection of the PLL4 PLL configuration bits.
      PLL4PUB       : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGR1_Register use record
      PLL1PUB       at 0 range 0 .. 0;
      PLL2PUB       at 0 range 1 .. 1;
      PLL3PUB       at 0 range 2 .. 2;
      PLL4PUB       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC divider secure configuration register2
   type RCC_SECCFGR2_Register is record
      --  Defines the secure protection of the IC1 divider configuration bits.
      IC1SEC         : Boolean := False;
      --  Defines the secure protection of the IC2 divider configuration bits.
      IC2SEC         : Boolean := False;
      --  Defines the secure protection of the IC3 divider configuration bits.
      IC3SEC         : Boolean := False;
      --  Defines the secure protection of the IC4 divider configuration bits.
      IC4SEC         : Boolean := False;
      --  Defines the secure protection of the IC5 divider configuration bits.
      IC5SEC         : Boolean := False;
      --  Defines the secure protection of the IC6 divider configuration bits.
      IC6SEC         : Boolean := False;
      --  Defines the secure protection of the IC7 divider configuration bits.
      IC7SEC         : Boolean := False;
      --  Defines the secure protection of the IC8 divider configuration bits.
      IC8SEC         : Boolean := False;
      --  Defines the secure protection of the IC9 divider configuration bits.
      IC9SEC         : Boolean := False;
      --  Defines the secure protection of the IC10 divider configuration bits.
      IC10SEC        : Boolean := False;
      --  Defines the secure protection of the IC11 divider configuration bits.
      IC11SEC        : Boolean := False;
      --  Defines the secure protection of the IC12 divider configuration bits.
      IC12SEC        : Boolean := False;
      --  Defines the secure protection of the IC13 divider configuration bits.
      IC13SEC        : Boolean := False;
      --  Defines the secure protection of the IC14 divider configuration bits.
      IC14SEC        : Boolean := False;
      --  Defines the secure protection of the IC15 divider configuration bits.
      IC15SEC        : Boolean := False;
      --  Defines the secure protection of the IC16 divider configuration bits.
      IC16SEC        : Boolean := False;
      --  Defines the secure protection of the IC17 divider configuration bits.
      IC17SEC        : Boolean := False;
      --  Defines the secure protection of the IC18 divider configuration bits.
      IC18SEC        : Boolean := False;
      --  Defines the secure protection of the IC19 divider configuration bits.
      IC19SEC        : Boolean := False;
      --  Defines the secure protection of the IC20 divider configuration bits.
      IC20SEC        : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SECCFGR2_Register use record
      IC1SEC         at 0 range 0 .. 0;
      IC2SEC         at 0 range 1 .. 1;
      IC3SEC         at 0 range 2 .. 2;
      IC4SEC         at 0 range 3 .. 3;
      IC5SEC         at 0 range 4 .. 4;
      IC6SEC         at 0 range 5 .. 5;
      IC7SEC         at 0 range 6 .. 6;
      IC8SEC         at 0 range 7 .. 7;
      IC9SEC         at 0 range 8 .. 8;
      IC10SEC        at 0 range 9 .. 9;
      IC11SEC        at 0 range 10 .. 10;
      IC12SEC        at 0 range 11 .. 11;
      IC13SEC        at 0 range 12 .. 12;
      IC14SEC        at 0 range 13 .. 13;
      IC15SEC        at 0 range 14 .. 14;
      IC16SEC        at 0 range 15 .. 15;
      IC17SEC        at 0 range 16 .. 16;
      IC18SEC        at 0 range 17 .. 17;
      IC19SEC        at 0 range 18 .. 18;
      IC20SEC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC divider privilege configuration register2
   type RCC_PRIVCFGR2_Register is record
      --  Defines the privilege protection of the IC1 divider configuration
      --  bits.
      IC1PV          : Boolean := False;
      --  Defines the privilege protection of the IC2 divider configuration
      --  bits.
      IC2PV          : Boolean := False;
      --  Defines the privilege protection of the IC3 divider configuration
      --  bits.
      IC3PV          : Boolean := False;
      --  Defines the privilege protection of the IC4 divider configuration
      --  bits.
      IC4PV          : Boolean := False;
      --  Defines the privilege protection of the IC5 divider configuration
      --  bits.
      IC5PV          : Boolean := False;
      --  Defines the privilege protection of the IC6 divider configuration
      --  bits.
      IC6PV          : Boolean := False;
      --  Defines the privilege protection of the IC7 divider configuration
      --  bits.
      IC7PV          : Boolean := False;
      --  Defines the privilege protection of the IC8 divider configuration
      --  bits.
      IC8PV          : Boolean := False;
      --  Defines the privilege protection of the IC9 divider configuration
      --  bits.
      IC9PV          : Boolean := False;
      --  Defines the privilege protection of the IC10 divider configuration
      --  bits.
      IC10PV         : Boolean := False;
      --  Defines the privilege protection of the IC11 divider configuration
      --  bits.
      IC11PV         : Boolean := False;
      --  Defines the privilege protection of the IC12 divider configuration
      --  bits.
      IC12PV         : Boolean := False;
      --  Defines the privilege protection of the IC13 divider configuration
      --  bits.
      IC13PV         : Boolean := False;
      --  Defines the privilege protection of the IC14 divider configuration
      --  bits.
      IC14PV         : Boolean := False;
      --  Defines the privilege protection of the IC15 divider configuration
      --  bits.
      IC15PV         : Boolean := False;
      --  Defines the privilege protection of the IC16 divider configuration
      --  bits.
      IC16PV         : Boolean := False;
      --  Defines the privilege protection of the IC17 divider configuration
      --  bits.
      IC17PV         : Boolean := False;
      --  Defines the privilege protection of the IC18 divider configuration
      --  bits.
      IC18PV         : Boolean := False;
      --  Defines the privilege protection of the IC19 divider configuration
      --  bits.
      IC19PV         : Boolean := False;
      --  Defines the privilege protection of the IC20 divider configuration
      --  bits.
      IC20PV         : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGR2_Register use record
      IC1PV          at 0 range 0 .. 0;
      IC2PV          at 0 range 1 .. 1;
      IC3PV          at 0 range 2 .. 2;
      IC4PV          at 0 range 3 .. 3;
      IC5PV          at 0 range 4 .. 4;
      IC6PV          at 0 range 5 .. 5;
      IC7PV          at 0 range 6 .. 6;
      IC8PV          at 0 range 7 .. 7;
      IC9PV          at 0 range 8 .. 8;
      IC10PV         at 0 range 9 .. 9;
      IC11PV         at 0 range 10 .. 10;
      IC12PV         at 0 range 11 .. 11;
      IC13PV         at 0 range 12 .. 12;
      IC14PV         at 0 range 13 .. 13;
      IC15PV         at 0 range 14 .. 14;
      IC16PV         at 0 range 15 .. 15;
      IC17PV         at 0 range 16 .. 16;
      IC18PV         at 0 range 17 .. 17;
      IC19PV         at 0 range 18 .. 18;
      IC20PV         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC divider lock configuration register2
   type RCC_LOCKCFGR2_Register is record
      --  Write-only. Defines the lock protection of the IC1 divider
      --  configuration bits.
      IC1LOCK        : Boolean := False;
      --  Write-only. Defines the lock protection of the IC2 divider
      --  configuration bits.
      IC2LOCK        : Boolean := False;
      --  Write-only. Defines the lock protection of the IC3 divider
      --  configuration bits.
      IC3LOCK        : Boolean := False;
      --  Write-only. Defines the lock protection of the IC4 divider
      --  configuration bits.
      IC4LOCK        : Boolean := False;
      --  Write-only. Defines the lock protection of the IC5 divider
      --  configuration bits.
      IC5LOCK        : Boolean := False;
      --  Write-only. Defines the lock protection of the IC6 divider
      --  configuration bits.
      IC6LOCK        : Boolean := False;
      --  Write-only. Defines the lock protection of the IC7 divider
      --  configuration bits.
      IC7LOCK        : Boolean := False;
      --  Write-only. Defines the lock protection of the IC8 divider
      --  configuration bits.
      IC8LOCK        : Boolean := False;
      --  Write-only. Defines the lock protection of the IC9 divider
      --  configuration bits.
      IC9LOCK        : Boolean := False;
      --  Write-only. Defines the lock protection of the IC10 divider
      --  configuration bits.
      IC10LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the IC11 divider
      --  configuration bits.
      IC11LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the IC12 divider
      --  configuration bits.
      IC12LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the IC13 divider
      --  configuration bits.
      IC13LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the IC14 divider
      --  configuration bits.
      IC14LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the IC15 divider
      --  configuration bits.
      IC15LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the IC16 divider
      --  configuration bits.
      IC16LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the IC17 divider
      --  configuration bits.
      IC17LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the IC18 divider
      --  configuration bits.
      IC18LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the IC19 divider
      --  configuration bits.
      IC19LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the IC20 divider
      --  configuration bits.
      IC20LOCK       : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LOCKCFGR2_Register use record
      IC1LOCK        at 0 range 0 .. 0;
      IC2LOCK        at 0 range 1 .. 1;
      IC3LOCK        at 0 range 2 .. 2;
      IC4LOCK        at 0 range 3 .. 3;
      IC5LOCK        at 0 range 4 .. 4;
      IC6LOCK        at 0 range 5 .. 5;
      IC7LOCK        at 0 range 6 .. 6;
      IC8LOCK        at 0 range 7 .. 7;
      IC9LOCK        at 0 range 8 .. 8;
      IC10LOCK       at 0 range 9 .. 9;
      IC11LOCK       at 0 range 10 .. 10;
      IC12LOCK       at 0 range 11 .. 11;
      IC13LOCK       at 0 range 12 .. 12;
      IC14LOCK       at 0 range 13 .. 13;
      IC15LOCK       at 0 range 14 .. 14;
      IC16LOCK       at 0 range 15 .. 15;
      IC17LOCK       at 0 range 16 .. 16;
      IC18LOCK       at 0 range 17 .. 17;
      IC19LOCK       at 0 range 18 .. 18;
      IC20LOCK       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC divider public configuration register2
   type RCC_PUBCFGR2_Register is record
      --  Defines the public protection of the IC1 divider configuration bits.
      IC1PUB         : Boolean := False;
      --  Defines the public protection of the IC2 divider configuration bits.
      IC2PUB         : Boolean := False;
      --  Defines the public protection of the IC3 divider configuration bits.
      IC3PUB         : Boolean := False;
      --  Defines the public protection of the IC4 divider configuration bits.
      IC4PUB         : Boolean := False;
      --  Defines the public protection of the IC5 divider configuration bits.
      IC5PUB         : Boolean := False;
      --  Defines the public protection of the IC6 divider configuration bits.
      IC6PUB         : Boolean := False;
      --  Defines the public protection of the IC7 divider configuration bits.
      IC7PUB         : Boolean := False;
      --  Defines the public protection of the IC8 divider configuration bits.
      IC8PUB         : Boolean := False;
      --  Defines the public protection of the IC9 divider configuration bits.
      IC9PUB         : Boolean := False;
      --  Defines the public protection of the IC10 divider configuration bits.
      IC10PUB        : Boolean := False;
      --  Defines the public protection of the IC11 divider configuration bits.
      IC11PUB        : Boolean := False;
      --  Defines the public protection of the IC12 divider configuration bits.
      IC12PUB        : Boolean := False;
      --  Defines the public protection of the IC13 divider configuration bits.
      IC13PUB        : Boolean := False;
      --  Defines the public protection of the IC14 divider configuration bits.
      IC14PUB        : Boolean := False;
      --  Defines the public protection of the IC15 divider configuration bits.
      IC15PUB        : Boolean := False;
      --  Defines the public protection of the IC16 divider configuration bits.
      IC16PUB        : Boolean := False;
      --  Defines the public protection of the IC17 divider configuration bits.
      IC17PUB        : Boolean := False;
      --  Defines the public protection of the IC18 divider configuration bits.
      IC18PUB        : Boolean := False;
      --  Defines the public protection of the IC19 divider configuration bits.
      IC19PUB        : Boolean := False;
      --  Defines the public protection of the IC20 divider configuration bits.
      IC20PUB        : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGR2_Register use record
      IC1PUB         at 0 range 0 .. 0;
      IC2PUB         at 0 range 1 .. 1;
      IC3PUB         at 0 range 2 .. 2;
      IC4PUB         at 0 range 3 .. 3;
      IC5PUB         at 0 range 4 .. 4;
      IC6PUB         at 0 range 5 .. 5;
      IC7PUB         at 0 range 6 .. 6;
      IC8PUB         at 0 range 7 .. 7;
      IC9PUB         at 0 range 8 .. 8;
      IC10PUB        at 0 range 9 .. 9;
      IC11PUB        at 0 range 10 .. 10;
      IC12PUB        at 0 range 11 .. 11;
      IC13PUB        at 0 range 12 .. 12;
      IC14PUB        at 0 range 13 .. 13;
      IC15PUB        at 0 range 14 .. 14;
      IC16PUB        at 0 range 15 .. 15;
      IC17PUB        at 0 range 16 .. 16;
      IC18PUB        at 0 range 17 .. 17;
      IC19PUB        at 0 range 18 .. 18;
      IC20PUB        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC system secure configuration register3
   type RCC_SECCFGR3_Register is record
      --  Defines the secure protection of the MOD system configuration bits.
      MODSEC        : Boolean := False;
      --  Defines the secure protection of the SYS system configuration bits.
      SYSSEC        : Boolean := False;
      --  Defines the secure protection of the BUS system configuration bits.
      BUSSEC        : Boolean := False;
      --  Defines the secure protection of the PER system configuration bits.
      PERSEC        : Boolean := False;
      --  Defines the secure protection of the INT system configuration bits.
      INTSEC        : Boolean := False;
      --  Defines the secure protection of the RST system configuration bits.
      RSTSEC        : Boolean := False;
      --  Defines the secure protection of the DFT system configuration bits.
      DFTSEC        : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SECCFGR3_Register use record
      MODSEC        at 0 range 0 .. 0;
      SYSSEC        at 0 range 1 .. 1;
      BUSSEC        at 0 range 2 .. 2;
      PERSEC        at 0 range 3 .. 3;
      INTSEC        at 0 range 4 .. 4;
      RSTSEC        at 0 range 5 .. 5;
      DFTSEC        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC system privilege configuration register3
   type RCC_PRIVCFGR3_Register is record
      --  Defines the privilege protection of the MOD system configuration
      --  bits.
      MODPV         : Boolean := False;
      --  Defines the privilege protection of the SYS system configuration
      --  bits.
      SYSPV         : Boolean := False;
      --  Defines the privilege protection of the BUS system configuration
      --  bits.
      BUSPV         : Boolean := False;
      --  Defines the privilege protection of the PER system configuration
      --  bits.
      PERPV         : Boolean := False;
      --  Defines the privilege protection of the INT system configuration
      --  bits.
      INTPV         : Boolean := False;
      --  Defines the privilege protection of the RST system configuration
      --  bits.
      RSTPV         : Boolean := False;
      --  Defines the privilege protection of the DFT system configuration
      --  bits.
      DFTPV         : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGR3_Register use record
      MODPV         at 0 range 0 .. 0;
      SYSPV         at 0 range 1 .. 1;
      BUSPV         at 0 range 2 .. 2;
      PERPV         at 0 range 3 .. 3;
      INTPV         at 0 range 4 .. 4;
      RSTPV         at 0 range 5 .. 5;
      DFTPV         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC system lock configuration register3
   type RCC_LOCKCFGR3_Register is record
      --  Write-only. Defines the lock protection of the MOD system
      --  configuration bits.
      MODLOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the SYS system
      --  configuration bits.
      SYSLOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the BUS system
      --  configuration bits.
      BUSLOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the PER system
      --  configuration bits.
      PERLOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the INT system
      --  configuration bits.
      INTLOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the RST system
      --  configuration bits.
      RSTLOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the DFT system
      --  configuration bits.
      DFTLOCK       : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LOCKCFGR3_Register use record
      MODLOCK       at 0 range 0 .. 0;
      SYSLOCK       at 0 range 1 .. 1;
      BUSLOCK       at 0 range 2 .. 2;
      PERLOCK       at 0 range 3 .. 3;
      INTLOCK       at 0 range 4 .. 4;
      RSTLOCK       at 0 range 5 .. 5;
      DFTLOCK       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC system public configuration register3
   type RCC_PUBCFGR3_Register is record
      --  Defines the public protection of the MOD system configuration bits.
      MODPUB        : Boolean := False;
      --  Defines the public protection of the SYS system configuration bits.
      SYSPUB        : Boolean := False;
      --  Defines the public protection of the BUS system configuration bits.
      BUSPUB        : Boolean := False;
      --  Defines the public protection of the PER system configuration bits.
      PERPUB        : Boolean := False;
      --  Defines the public protection of the INT system configuration bits.
      INTPUB        : Boolean := False;
      --  Defines the public protection of the RST system configuration bits.
      RSTPUB        : Boolean := False;
      --  Defines the public protection of the DFT system configuration bits.
      DFTPUB        : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGR3_Register use record
      MODPUB        at 0 range 0 .. 0;
      SYSPUB        at 0 range 1 .. 1;
      BUSPUB        at 0 range 2 .. 2;
      PERPUB        at 0 range 3 .. 3;
      INTPUB        at 0 range 4 .. 4;
      RSTPUB        at 0 range 5 .. 5;
      DFTPUB        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC bus secure configuration register4
   type RCC_SECCFGR4_Register is record
      --  Defines the secure protection of the ACLKN bus configuration bits.
      ACLKNSEC       : Boolean := False;
      --  Defines the secure protection of the ACLKNC bus configuration bits.
      ACLKNCSEC      : Boolean := False;
      --  Defines the secure protection of the AHBM bus configuration bits.
      AHBMSEC        : Boolean := False;
      --  Defines the secure protection of the AHB1 bus configuration bits.
      AHB1SEC        : Boolean := False;
      --  Defines the secure protection of the AHB2 bus configuration bits.
      AHB2SEC        : Boolean := False;
      --  Defines the secure protection of the AHB3 bus configuration bits.
      AHB3SEC        : Boolean := False;
      --  Defines the secure protection of the AHB4 bus configuration bits.
      AHB4SEC        : Boolean := False;
      --  Defines the secure protection of the AHB5 bus configuration bits.
      AHB5SEC        : Boolean := False;
      --  Defines the secure protection of the APB1 bus configuration bits.
      APB1SEC        : Boolean := False;
      --  Defines the secure protection of the APB2 bus configuration bits.
      APB2SEC        : Boolean := False;
      --  Defines the secure protection of the APB3 bus configuration bits.
      APB3SEC        : Boolean := False;
      --  Defines the secure protection of the APB4 bus configuration bits.
      APB4SEC        : Boolean := False;
      --  Defines the secure protection of the APB5 bus configuration bits.
      APB5SEC        : Boolean := False;
      --  Defines the secure protection of the NOC bus configuration bits.
      NOCSEC         : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SECCFGR4_Register use record
      ACLKNSEC       at 0 range 0 .. 0;
      ACLKNCSEC      at 0 range 1 .. 1;
      AHBMSEC        at 0 range 2 .. 2;
      AHB1SEC        at 0 range 3 .. 3;
      AHB2SEC        at 0 range 4 .. 4;
      AHB3SEC        at 0 range 5 .. 5;
      AHB4SEC        at 0 range 6 .. 6;
      AHB5SEC        at 0 range 7 .. 7;
      APB1SEC        at 0 range 8 .. 8;
      APB2SEC        at 0 range 9 .. 9;
      APB3SEC        at 0 range 10 .. 10;
      APB4SEC        at 0 range 11 .. 11;
      APB5SEC        at 0 range 12 .. 12;
      NOCSEC         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RCC bus privilege configuration register4
   type RCC_PRIVCFGR4_Register is record
      --  Defines the privilege protection of the ACLKN bus configuration bits.
      ACLKNPV        : Boolean := False;
      --  Defines the privilege protection of the ACLKNC bus configuration
      --  bits.
      ACLKNCPV       : Boolean := False;
      --  Defines the privilege protection of the AHBM bus configuration bits.
      AHBMPV         : Boolean := False;
      --  Defines the privilege protection of the AHB1 bus configuration bits.
      AHB1PV         : Boolean := False;
      --  Defines the privilege protection of the AHB2 bus configuration bits.
      AHB2PV         : Boolean := False;
      --  Defines the privilege protection of the AHB3 bus configuration bits.
      AHB3PV         : Boolean := False;
      --  Defines the privilege protection of the AHB4 bus configuration bits.
      AHB4PV         : Boolean := False;
      --  Defines the privilege protection of the AHB5 bus configuration bits.
      AHB5PV         : Boolean := False;
      --  Defines the privilege protection of the APB1 bus configuration bits.
      APB1PV         : Boolean := False;
      --  Defines the privilege protection of the APB2 bus configuration bits.
      APB2PV         : Boolean := False;
      --  Defines the privilege protection of the APB3 bus configuration bits.
      APB3PV         : Boolean := False;
      --  Defines the privilege protection of the APB4 bus configuration bits.
      APB4PV         : Boolean := False;
      --  Defines the privilege protection of the APB5 bus configuration bits.
      APB5PV         : Boolean := False;
      --  Defines the privilege protection of the NOC bus configuration bits.
      NOCPV          : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGR4_Register use record
      ACLKNPV        at 0 range 0 .. 0;
      ACLKNCPV       at 0 range 1 .. 1;
      AHBMPV         at 0 range 2 .. 2;
      AHB1PV         at 0 range 3 .. 3;
      AHB2PV         at 0 range 4 .. 4;
      AHB3PV         at 0 range 5 .. 5;
      AHB4PV         at 0 range 6 .. 6;
      AHB5PV         at 0 range 7 .. 7;
      APB1PV         at 0 range 8 .. 8;
      APB2PV         at 0 range 9 .. 9;
      APB3PV         at 0 range 10 .. 10;
      APB4PV         at 0 range 11 .. 11;
      APB5PV         at 0 range 12 .. 12;
      NOCPV          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RCC bus lock configuration register4
   type RCC_LOCKCFGR4_Register is record
      --  Write-only. Defines the lock protection of the ACLKN bus
      --  configuration bits.
      ACLKNLOCK      : Boolean := False;
      --  Write-only. Defines the lock protection of the ACLKNC bus
      --  configuration bits.
      ACLKNCLOCK     : Boolean := False;
      --  Write-only. Defines the lock protection of the AHBM bus configuration
      --  bits.
      AHBMLOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the AHB1 bus configuration
      --  bits.
      AHB1LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the AHB2 bus configuration
      --  bits.
      AHB2LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the AHB3 bus configuration
      --  bits.
      AHB3LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the AHB4 bus configuration
      --  bits.
      AHB4LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the AHB5 bus configuration
      --  bits.
      AHB5LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the APB1 bus configuration
      --  bits.
      APB1LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the APB2 bus configuration
      --  bits.
      APB2LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the APB3 bus configuration
      --  bits.
      APB3LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the APB4 bus configuration
      --  bits.
      APB4LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the APB5 bus configuration
      --  bits.
      APB5LOCK       : Boolean := False;
      --  Write-only. Defines the lock protection of the NOC bus configuration
      --  bits.
      NOCLOCK        : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LOCKCFGR4_Register use record
      ACLKNLOCK      at 0 range 0 .. 0;
      ACLKNCLOCK     at 0 range 1 .. 1;
      AHBMLOCK       at 0 range 2 .. 2;
      AHB1LOCK       at 0 range 3 .. 3;
      AHB2LOCK       at 0 range 4 .. 4;
      AHB3LOCK       at 0 range 5 .. 5;
      AHB4LOCK       at 0 range 6 .. 6;
      AHB5LOCK       at 0 range 7 .. 7;
      APB1LOCK       at 0 range 8 .. 8;
      APB2LOCK       at 0 range 9 .. 9;
      APB3LOCK       at 0 range 10 .. 10;
      APB4LOCK       at 0 range 11 .. 11;
      APB5LOCK       at 0 range 12 .. 12;
      NOCLOCK        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RCC bus public configuration register4
   type RCC_PUBCFGR4_Register is record
      --  Defines the public protection of the ACLKN bus configuration bits.
      ACLKNPUB       : Boolean := False;
      --  Defines the public protection of the ACLKNC bus configuration bits.
      ACLKNCPUB      : Boolean := False;
      --  Defines the public protection of the AHBM bus configuration bits.
      AHBMPUB        : Boolean := False;
      --  Defines the public protection of the AHB1 bus configuration bits.
      AHB1PUB        : Boolean := False;
      --  Defines the public protection of the AHB2 bus configuration bits.
      AHB2PUB        : Boolean := False;
      --  Defines the public protection of the AHB3 bus configuration bits.
      AHB3PUB        : Boolean := False;
      --  Defines the public protection of the AHB4 bus configuration bits.
      AHB4PUB        : Boolean := False;
      --  Defines the public protection of the AHB5 bus configuration bits.
      AHB5PUB        : Boolean := False;
      --  Defines the public protection of the APB1 bus configuration bits.
      APB1PUB        : Boolean := False;
      --  Defines the public protection of the APB2 bus configuration bits.
      APB2PUB        : Boolean := False;
      --  Defines the public protection of the APB3 bus configuration bits.
      APB3PUB        : Boolean := False;
      --  Defines the public protection of the APB4 bus configuration bits.
      APB4PUB        : Boolean := False;
      --  Defines the public protection of the APB5 bus configuration bits.
      APB5PUB        : Boolean := False;
      --  Defines the public protection of the NOC bus configuration bits.
      NOCPUB         : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGR4_Register use record
      ACLKNPUB       at 0 range 0 .. 0;
      ACLKNCPUB      at 0 range 1 .. 1;
      AHBMPUB        at 0 range 2 .. 2;
      AHB1PUB        at 0 range 3 .. 3;
      AHB2PUB        at 0 range 4 .. 4;
      AHB3PUB        at 0 range 5 .. 5;
      AHB4PUB        at 0 range 6 .. 6;
      AHB5PUB        at 0 range 7 .. 7;
      APB1PUB        at 0 range 8 .. 8;
      APB2PUB        at 0 range 9 .. 9;
      APB3PUB        at 0 range 10 .. 10;
      APB4PUB        at 0 range 11 .. 11;
      APB5PUB        at 0 range 12 .. 12;
      NOCPUB         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RCC bus public configuration register4
   type RCC_PUBCFGR5_Register is record
      --  Defines the public protection of the AXISRAM3 bus configuration bits.
      AXISRAM3PUB    : Boolean := False;
      --  Defines the public protection of the AXISRAM4 bus configuration bits.
      AXISRAM4PUB    : Boolean := False;
      --  Defines the public protection of the AXISRAM5 bus configuration bits.
      AXISRAM5PUB    : Boolean := False;
      --  Defines the public protection of the AXISRAM6 bus configuration bits.
      AXISRAM6PUB    : Boolean := False;
      --  Defines the public protection of the AHBSRAM1 bus configuration bits.
      AHBSRAM1PUB    : Boolean := False;
      --  Defines the public protection of the AHBSRAM2 bus configuration bits.
      AHBSRAM2PUB    : Boolean := False;
      --  Defines the public protection of the BKPSRAM bus configuration bits.
      BKPSRAMPUB     : Boolean := False;
      --  Defines the public protection of the AXISRAM1 bus configuration bits.
      AXISRAM1PUB    : Boolean := False;
      --  Defines the public protection of the AXISRAM2 bus configuration bits.
      AXISRAM2PUB    : Boolean := False;
      --  Defines the public protection of the FLEXRAM bus configuration bits.
      FLEXRAMPUB     : Boolean := False;
      --  Defines the public protection of the NPUCACHERAM bus configuration
      --  bits.
      NPUCACHERAMPUB : Boolean := False;
      --  Defines the public protection of the VENCRAM bus configuration bits.
      VENCRAMPUB     : Boolean := False;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGR5_Register use record
      AXISRAM3PUB    at 0 range 0 .. 0;
      AXISRAM4PUB    at 0 range 1 .. 1;
      AXISRAM5PUB    at 0 range 2 .. 2;
      AXISRAM6PUB    at 0 range 3 .. 3;
      AHBSRAM1PUB    at 0 range 4 .. 4;
      AHBSRAM2PUB    at 0 range 5 .. 5;
      BKPSRAMPUB     at 0 range 6 .. 6;
      AXISRAM1PUB    at 0 range 7 .. 7;
      AXISRAM2PUB    at 0 range 8 .. 8;
      FLEXRAMPUB     at 0 range 9 .. 9;
      NPUCACHERAMPUB at 0 range 10 .. 10;
      VENCRAMPUB     at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  RCC control set register
   type RCC_CSR_Register is record
      --  Write-only. LSI oscillator enable in Run/Sleep mode.
      LSIONS         : Boolean := False;
      --  Write-only. LSE oscillator enable in Run/Sleep mode.
      LSEONS         : Boolean := False;
      --  Write-only. MSI oscillator enable in Run/Sleep mode.
      MSIONS         : Boolean := False;
      --  Write-only. HSI oscillator enable in Run/Sleep mode.
      HSIONS         : Boolean := False;
      --  Write-only. HSE oscillator enable in Run/Sleep mode.
      HSEONS         : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. PLL1 oscillator enable in Run/Sleep mode.
      PLL1ONS        : Boolean := False;
      --  Write-only. PLL2 oscillator enable in Run/Sleep mode.
      PLL2ONS        : Boolean := False;
      --  Write-only. PLL3 oscillator enable in Run/Sleep mode.
      PLL3ONS        : Boolean := False;
      --  Write-only. PLL4 oscillator enable in Run/Sleep mode.
      PLL4ONS        : Boolean := False;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CSR_Register use record
      LSIONS         at 0 range 0 .. 0;
      LSEONS         at 0 range 1 .. 1;
      MSIONS         at 0 range 2 .. 2;
      HSIONS         at 0 range 3 .. 3;
      HSEONS         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PLL1ONS        at 0 range 8 .. 8;
      PLL2ONS        at 0 range 9 .. 9;
      PLL3ONS        at 0 range 10 .. 10;
      PLL4ONS        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  RCC Stop configuration register
   type RCC_STOPCSR_Register is record
      --  Write-only. MSISTOPENS
      MSISTOPENS    : Boolean := False;
      --  Write-only. HSISTOPENS
      HSISTOPENS    : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_STOPCSR_Register use record
      MSISTOPENS    at 0 range 0 .. 0;
      HSISTOPENS    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RCC bus reset set register
   type RCC_BUSRSTSR_Register is record
      --  Write-only. ACLKN reset
      ACLKNRSTS      : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. AHBM reset
      AHBMRSTS       : Boolean := False;
      --  Write-only. AHB1 reset
      AHB1RSTS       : Boolean := False;
      --  Write-only. AHB2 reset
      AHB2RSTS       : Boolean := False;
      --  Write-only. AHB3 reset
      AHB3RSTS       : Boolean := False;
      --  Write-only. AHB4 reset
      AHB4RSTS       : Boolean := False;
      --  Write-only. AHB5 reset
      AHB5RSTS       : Boolean := False;
      --  Write-only. APB1 reset
      APB1RSTS       : Boolean := False;
      --  Write-only. APB2 reset
      APB2RSTS       : Boolean := False;
      --  Write-only. APB3 reset
      APB3RSTS       : Boolean := False;
      --  Write-only. APB4 reset
      APB4RSTS       : Boolean := False;
      --  Write-only. APB5 reset
      APB5RSTS       : Boolean := False;
      --  Write-only. NOC reset
      NOCRSTS        : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_BUSRSTSR_Register use record
      ACLKNRSTS      at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      AHBMRSTS       at 0 range 2 .. 2;
      AHB1RSTS       at 0 range 3 .. 3;
      AHB2RSTS       at 0 range 4 .. 4;
      AHB3RSTS       at 0 range 5 .. 5;
      AHB4RSTS       at 0 range 6 .. 6;
      AHB5RSTS       at 0 range 7 .. 7;
      APB1RSTS       at 0 range 8 .. 8;
      APB2RSTS       at 0 range 9 .. 9;
      APB3RSTS       at 0 range 10 .. 10;
      APB4RSTS       at 0 range 11 .. 11;
      APB5RSTS       at 0 range 12 .. 12;
      NOCRSTS        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RCC miscellaneous reset register
   type RCC_MISCRSTSR_Register is record
      --  Write-only. DBG reset
      DBGRSTS       : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. XSPIPHY1 reset
      XSPIPHY1RSTS  : Boolean := False;
      --  Write-only. XSPIPHY2 reset
      XSPIPHY2RSTS  : Boolean := False;
      --  unspecified
      Reserved_6_6  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. SDMMC1DLL reset
      SDMMC1DLLRSTS : Boolean := False;
      --  Write-only. SDMMC2DLL reset
      SDMMC2DLLRSTS : Boolean := False;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MISCRSTSR_Register use record
      DBGRSTS       at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      XSPIPHY1RSTS  at 0 range 4 .. 4;
      XSPIPHY2RSTS  at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      SDMMC1DLLRSTS at 0 range 7 .. 7;
      SDMMC2DLLRSTS at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RCC memory reset register
   type RCC_MEMRSTSR_Register is record
      --  Write-only. AXISRAM3 reset
      AXISRAM3RSTS    : Boolean := False;
      --  Write-only. AXISRAM4 reset
      AXISRAM4RSTS    : Boolean := False;
      --  Write-only. AXISRAM5 reset
      AXISRAM5RSTS    : Boolean := False;
      --  Write-only. AXISRAM6 reset
      AXISRAM6RSTS    : Boolean := False;
      --  Write-only. AHBSRAM1 reset
      AHBSRAM1RSTS    : Boolean := False;
      --  Write-only. AHBSRAM2 reset
      AHBSRAM2RSTS    : Boolean := False;
      --  unspecified
      Reserved_6_6    : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. AXISRAM1 reset
      AXISRAM1RSTS    : Boolean := False;
      --  Write-only. AXISRAM2 reset
      AXISRAM2RSTS    : Boolean := False;
      --  Write-only. FLEXRAM reset
      FLEXRAMRSTS     : Boolean := False;
      --  Write-only. NPUCACHERAM reset
      NPUCACHERAMRSTS : Boolean := False;
      --  Write-only. VENCRAM reset
      VENCRAMRSTS     : Boolean := False;
      --  Write-only. BOOTROM reset
      BOOTROMRSTS     : Boolean := False;
      --  unspecified
      Reserved_13_31  : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MEMRSTSR_Register use record
      AXISRAM3RSTS    at 0 range 0 .. 0;
      AXISRAM4RSTS    at 0 range 1 .. 1;
      AXISRAM5RSTS    at 0 range 2 .. 2;
      AXISRAM6RSTS    at 0 range 3 .. 3;
      AHBSRAM1RSTS    at 0 range 4 .. 4;
      AHBSRAM2RSTS    at 0 range 5 .. 5;
      Reserved_6_6    at 0 range 6 .. 6;
      AXISRAM1RSTS    at 0 range 7 .. 7;
      AXISRAM2RSTS    at 0 range 8 .. 8;
      FLEXRAMRSTS     at 0 range 9 .. 9;
      NPUCACHERAMRSTS at 0 range 10 .. 10;
      VENCRAMRSTS     at 0 range 11 .. 11;
      BOOTROMRSTS     at 0 range 12 .. 12;
      Reserved_13_31  at 0 range 13 .. 31;
   end record;

   --  RCC AHB1 reset register
   type RCC_AHB1RSTSR_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. GPDMA1 reset
      GPDMA1RSTS    : Boolean := False;
      --  Write-only. ADC12 reset
      ADC12RSTS     : Boolean := False;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1RSTSR_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      GPDMA1RSTS    at 0 range 4 .. 4;
      ADC12RSTS     at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RCC AHB2 reset register
   type RCC_AHB2RSTSR_Register is record
      --  unspecified
      Reserved_0_11  : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Write-only. RAMCFG reset
      RAMCFGRSTS     : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. MDF1 reset
      MDF1RSTS       : Boolean := False;
      --  Write-only. ADF1 reset
      ADF1RSTS       : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2RSTSR_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      RAMCFGRSTS     at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      MDF1RSTS       at 0 range 16 .. 16;
      ADF1RSTS       at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  RCC AHB3 reset register
   type RCC_AHB3RSTSR_Register is record
      --  Write-only. RNG reset
      RNGRSTS        : Boolean := False;
      --  Write-only. HASH reset
      HASHRSTS       : Boolean := False;
      --  Write-only. CRYP reset
      CRYPRSTS       : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. SAES reset
      SAESRSTS       : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. PKA reset
      PKARSTS        : Boolean := False;
      --  unspecified
      Reserved_9_9   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. IAC reset
      IACRSTS        : Boolean := False;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB3RSTSR_Register use record
      RNGRSTS        at 0 range 0 .. 0;
      HASHRSTS       at 0 range 1 .. 1;
      CRYPRSTS       at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SAESRSTS       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PKARSTS        at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      IACRSTS        at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  RCC AHB4 reset register
   type RCC_AHB4RSTSR_Register is record
      --  Write-only. GPIOA reset
      GPIOARSTS      : Boolean := False;
      --  Write-only. GPIOB reset
      GPIOBRSTS      : Boolean := False;
      --  Write-only. GPIOC reset
      GPIOCRSTS      : Boolean := False;
      --  Write-only. GPIOD reset
      GPIODRSTS      : Boolean := False;
      --  Write-only. GPIOE reset
      GPIOERSTS      : Boolean := False;
      --  Write-only. GPIOF reset
      GPIOFRSTS      : Boolean := False;
      --  Write-only. GPIOG reset
      GPIOGRSTS      : Boolean := False;
      --  Write-only. GPIOH reset
      GPIOHRSTS      : Boolean := False;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. GPION reset
      GPIONRSTS      : Boolean := False;
      --  Write-only. GPIOO reset
      GPIOORSTS      : Boolean := False;
      --  Write-only. GPIOP reset
      GPIOPRSTS      : Boolean := False;
      --  Write-only. GPIOQ reset
      GPIOQRSTS      : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. PWR reset
      PWRRSTS        : Boolean := False;
      --  Write-only. CRC reset
      CRCRSTS        : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB4RSTSR_Register use record
      GPIOARSTS      at 0 range 0 .. 0;
      GPIOBRSTS      at 0 range 1 .. 1;
      GPIOCRSTS      at 0 range 2 .. 2;
      GPIODRSTS      at 0 range 3 .. 3;
      GPIOERSTS      at 0 range 4 .. 4;
      GPIOFRSTS      at 0 range 5 .. 5;
      GPIOGRSTS      at 0 range 6 .. 6;
      GPIOHRSTS      at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      GPIONRSTS      at 0 range 13 .. 13;
      GPIOORSTS      at 0 range 14 .. 14;
      GPIOPRSTS      at 0 range 15 .. 15;
      GPIOQRSTS      at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PWRRSTS        at 0 range 18 .. 18;
      CRCRSTS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC AHB5 reset register
   type RCC_AHB5RSTSR_Register is record
      --  Write-only. HPDMA1 reset
      HPDMA1RSTS          : Boolean := False;
      --  Write-only. DMA2D reset
      DMA2DRSTS           : Boolean := False;
      --  unspecified
      Reserved_2_2        : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. JPEG reset
      JPEGRSTS            : Boolean := False;
      --  Write-only. FMC reset
      FMCRSTS             : Boolean := False;
      --  Write-only. XSPI1 reset
      XSPI1RSTS           : Boolean := False;
      --  Write-only. PSSI reset
      PSSIRSTS            : Boolean := False;
      --  Write-only. SDMMC2 reset
      SDMMC2RSTS          : Boolean := False;
      --  Write-only. SDMMC1 reset
      SDMMC1RSTS          : Boolean := False;
      --  unspecified
      Reserved_9_11       : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. XSPI2 reset
      XSPI2RSTS           : Boolean := False;
      --  Write-only. XSPIM reset
      XSPIMRSTS           : Boolean := False;
      --  unspecified
      Reserved_14_16      : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. XSPI3 reset
      XSPI3RSTS           : Boolean := False;
      --  Write-only. MCE4 reset
      MCE4RSTS            : Boolean := False;
      --  Write-only. GFXMMU reset
      GFXMMURSTS          : Boolean := False;
      --  Write-only. GPU reset
      GPURSTS             : Boolean := False;
      --  unspecified
      Reserved_21_22      : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. SYSCFGOTGHSPHY1 reset
      SYSCFGOTGHSPHY1RSTS : Boolean := False;
      --  Write-only. SYSCFGOTGHSPHY2 reset
      SYSCFGOTGHSPHY2RSTS : Boolean := False;
      --  Write-only. ETH1 reset
      ETH1RSTS            : Boolean := False;
      --  Write-only. OTG1 reset
      OTG1RSTS            : Boolean := False;
      --  Write-only. OTGPHY1 reset
      OTGPHY1RSTS         : Boolean := False;
      --  Write-only. OTGPHY2 reset
      OTGPHY2RSTS         : Boolean := False;
      --  Write-only. OTG2 reset
      OTG2RSTS            : Boolean := False;
      --  Write-only. NPUCACHE reset
      NPUCACHERSTS        : Boolean := False;
      --  Write-only. NPU reset
      NPURSTS             : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB5RSTSR_Register use record
      HPDMA1RSTS          at 0 range 0 .. 0;
      DMA2DRSTS           at 0 range 1 .. 1;
      Reserved_2_2        at 0 range 2 .. 2;
      JPEGRSTS            at 0 range 3 .. 3;
      FMCRSTS             at 0 range 4 .. 4;
      XSPI1RSTS           at 0 range 5 .. 5;
      PSSIRSTS            at 0 range 6 .. 6;
      SDMMC2RSTS          at 0 range 7 .. 7;
      SDMMC1RSTS          at 0 range 8 .. 8;
      Reserved_9_11       at 0 range 9 .. 11;
      XSPI2RSTS           at 0 range 12 .. 12;
      XSPIMRSTS           at 0 range 13 .. 13;
      Reserved_14_16      at 0 range 14 .. 16;
      XSPI3RSTS           at 0 range 17 .. 17;
      MCE4RSTS            at 0 range 18 .. 18;
      GFXMMURSTS          at 0 range 19 .. 19;
      GPURSTS             at 0 range 20 .. 20;
      Reserved_21_22      at 0 range 21 .. 22;
      SYSCFGOTGHSPHY1RSTS at 0 range 23 .. 23;
      SYSCFGOTGHSPHY2RSTS at 0 range 24 .. 24;
      ETH1RSTS            at 0 range 25 .. 25;
      OTG1RSTS            at 0 range 26 .. 26;
      OTGPHY1RSTS         at 0 range 27 .. 27;
      OTGPHY2RSTS         at 0 range 28 .. 28;
      OTG2RSTS            at 0 range 29 .. 29;
      NPUCACHERSTS        at 0 range 30 .. 30;
      NPURSTS             at 0 range 31 .. 31;
   end record;

   --  RCC APB1L reset register
   type RCC_APB1LRSTSR_Register is record
      --  Write-only. TIM2 reset
      TIM2RSTS       : Boolean := False;
      --  Write-only. TIM3 reset
      TIM3RSTS       : Boolean := False;
      --  Write-only. TIM4 reset
      TIM4RSTS       : Boolean := False;
      --  Write-only. TIM5 reset
      TIM5RSTS       : Boolean := False;
      --  Write-only. TIM6 reset
      TIM6RSTS       : Boolean := False;
      --  Write-only. TIM7 reset
      TIM7RSTS       : Boolean := False;
      --  Write-only. TIM12 reset
      TIM12RSTS      : Boolean := False;
      --  Write-only. TIM13 reset
      TIM13RSTS      : Boolean := False;
      --  Write-only. TIM14 reset
      TIM14RSTS      : Boolean := False;
      --  Write-only. LPTIM1 reset
      LPTIM1RSTS     : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. WWDG reset
      WWDGRSTS       : Boolean := False;
      --  Write-only. TIM10 reset
      TIM10RSTS      : Boolean := False;
      --  Write-only. TIM11 reset
      TIM11RSTS      : Boolean := False;
      --  Write-only. SPI2 reset
      SPI2RSTS       : Boolean := False;
      --  Write-only. SPI3 reset
      SPI3RSTS       : Boolean := False;
      --  Write-only. SPDIFRX1 reset
      SPDIFRX1RSTS   : Boolean := False;
      --  Write-only. USART2 reset
      USART2RSTS     : Boolean := False;
      --  Write-only. USART3 reset
      USART3RSTS     : Boolean := False;
      --  Write-only. UART4 reset
      UART4RSTS      : Boolean := False;
      --  Write-only. UART5 reset
      UART5RSTS      : Boolean := False;
      --  Write-only. I2C1 reset
      I2C1RSTS       : Boolean := False;
      --  Write-only. I2C2 reset
      I2C2RSTS       : Boolean := False;
      --  Write-only. I2C3 reset
      I2C3RSTS       : Boolean := False;
      --  Write-only. I3C1 reset
      I3C1RSTS       : Boolean := False;
      --  Write-only. I3C2 reset
      I3C2RSTS       : Boolean := False;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. UART7 reset
      UART7RSTS      : Boolean := False;
      --  Write-only. UART8 reset
      UART8RSTS      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1LRSTSR_Register use record
      TIM2RSTS       at 0 range 0 .. 0;
      TIM3RSTS       at 0 range 1 .. 1;
      TIM4RSTS       at 0 range 2 .. 2;
      TIM5RSTS       at 0 range 3 .. 3;
      TIM6RSTS       at 0 range 4 .. 4;
      TIM7RSTS       at 0 range 5 .. 5;
      TIM12RSTS      at 0 range 6 .. 6;
      TIM13RSTS      at 0 range 7 .. 7;
      TIM14RSTS      at 0 range 8 .. 8;
      LPTIM1RSTS     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDGRSTS       at 0 range 11 .. 11;
      TIM10RSTS      at 0 range 12 .. 12;
      TIM11RSTS      at 0 range 13 .. 13;
      SPI2RSTS       at 0 range 14 .. 14;
      SPI3RSTS       at 0 range 15 .. 15;
      SPDIFRX1RSTS   at 0 range 16 .. 16;
      USART2RSTS     at 0 range 17 .. 17;
      USART3RSTS     at 0 range 18 .. 18;
      UART4RSTS      at 0 range 19 .. 19;
      UART5RSTS      at 0 range 20 .. 20;
      I2C1RSTS       at 0 range 21 .. 21;
      I2C2RSTS       at 0 range 22 .. 22;
      I2C3RSTS       at 0 range 23 .. 23;
      I3C1RSTS       at 0 range 24 .. 24;
      I3C2RSTS       at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      UART7RSTS      at 0 range 30 .. 30;
      UART8RSTS      at 0 range 31 .. 31;
   end record;

   --  RCC APB1H reset register
   type RCC_APB1HRSTSR_Register is record
      --  unspecified
      Reserved_0_4   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. MDIOS reset
      MDIOSRSTS      : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. FDCAN reset
      FDCANRSTS      : Boolean := False;
      --  unspecified
      Reserved_9_17  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Write-only. UCPD1 reset
      UCPD1RSTS      : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1HRSTSR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      MDIOSRSTS      at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FDCANRSTS      at 0 range 8 .. 8;
      Reserved_9_17  at 0 range 9 .. 17;
      UCPD1RSTS      at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  RCC APB2 reset register
   type RCC_APB2RSTSR_Register is record
      --  Write-only. TIM1 reset
      TIM1RSTS       : Boolean := False;
      --  Write-only. TIM8 reset
      TIM8RSTS       : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. USART1 reset
      USART1RSTS     : Boolean := False;
      --  Write-only. USART6 reset
      USART6RSTS     : Boolean := False;
      --  Write-only. UART9 reset
      UART9RSTS      : Boolean := False;
      --  Write-only. USART10 reset
      USART10RSTS    : Boolean := False;
      --  unspecified
      Reserved_8_11  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. SPI1 reset
      SPI1RSTS       : Boolean := False;
      --  Write-only. SPI4 reset
      SPI4RSTS       : Boolean := False;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. TIM18 reset
      TIM18RSTS      : Boolean := False;
      --  Write-only. TIM15 reset
      TIM15RSTS      : Boolean := False;
      --  Write-only. TIM16 reset
      TIM16RSTS      : Boolean := False;
      --  Write-only. TIM17 reset
      TIM17RSTS      : Boolean := False;
      --  Write-only. TIM9 reset
      TIM9RSTS       : Boolean := False;
      --  Write-only. SPI5 reset
      SPI5RSTS       : Boolean := False;
      --  Write-only. SAI1 reset
      SAI1RSTS       : Boolean := False;
      --  Write-only. SAI2 reset
      SAI2RSTS       : Boolean := False;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB2RSTSR_Register use record
      TIM1RSTS       at 0 range 0 .. 0;
      TIM8RSTS       at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      USART1RSTS     at 0 range 4 .. 4;
      USART6RSTS     at 0 range 5 .. 5;
      UART9RSTS      at 0 range 6 .. 6;
      USART10RSTS    at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SPI1RSTS       at 0 range 12 .. 12;
      SPI4RSTS       at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      TIM18RSTS      at 0 range 15 .. 15;
      TIM15RSTS      at 0 range 16 .. 16;
      TIM16RSTS      at 0 range 17 .. 17;
      TIM17RSTS      at 0 range 18 .. 18;
      TIM9RSTS       at 0 range 19 .. 19;
      SPI5RSTS       at 0 range 20 .. 20;
      SAI1RSTS       at 0 range 21 .. 21;
      SAI2RSTS       at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  RCC APB4L reset register
   type RCC_APB4LRSTSR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. HDP reset
      HDPRSTS        : Boolean := False;
      --  Write-only. LPUART1 reset
      LPUART1RSTS    : Boolean := False;
      --  unspecified
      Reserved_4_4   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. SPI6 reset
      SPI6RSTS       : Boolean := False;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. I2C4 reset
      I2C4RSTS       : Boolean := False;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. LPTIM2 reset
      LPTIM2RSTS     : Boolean := False;
      --  Write-only. LPTIM3 reset
      LPTIM3RSTS     : Boolean := False;
      --  Write-only. LPTIM4 reset
      LPTIM4RSTS     : Boolean := False;
      --  Write-only. LPTIM5 reset
      LPTIM5RSTS     : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. VREFBUF reset
      VREFBUFRSTS    : Boolean := False;
      --  Write-only. RTC reset
      RTCRSTS        : Boolean := False;
      --  unspecified
      Reserved_17_21 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. R2GRET reset
      R2GRETRSTS     : Boolean := False;
      --  Write-only. R2GNPU reset
      R2GNPURSTS     : Boolean := False;
      --  unspecified
      Reserved_24_30 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. SERF reset
      SERFRSTS       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4LRSTSR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      HDPRSTS        at 0 range 2 .. 2;
      LPUART1RSTS    at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SPI6RSTS       at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      I2C4RSTS       at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LPTIM2RSTS     at 0 range 9 .. 9;
      LPTIM3RSTS     at 0 range 10 .. 10;
      LPTIM4RSTS     at 0 range 11 .. 11;
      LPTIM5RSTS     at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      VREFBUFRSTS    at 0 range 15 .. 15;
      RTCRSTS        at 0 range 16 .. 16;
      Reserved_17_21 at 0 range 17 .. 21;
      R2GRETRSTS     at 0 range 22 .. 22;
      R2GNPURSTS     at 0 range 23 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      SERFRSTS       at 0 range 31 .. 31;
   end record;

   --  RCC APB4H reset register
   type RCC_APB4HRSTSR_Register is record
      --  Write-only. SYSCFG reset
      SYSCFGRSTS    : Boolean := False;
      --  unspecified
      Reserved_1_1  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. DTS reset
      DTSRSTS       : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. BUSPERFM reset
      BUSPERFMRSTS  : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4HRSTSR_Register use record
      SYSCFGRSTS    at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DTSRSTS       at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      BUSPERFMRSTS  at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC APB5 reset register
   type RCC_APB5RSTSR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. LTDC reset
      LTDCRSTS      : Boolean := False;
      --  Write-only. DCMIPP reset
      DCMIPPRSTS    : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. GFXTIM reset
      GFXTIMRSTS    : Boolean := False;
      --  Write-only. VENC reset
      VENCRSTS      : Boolean := False;
      --  Write-only. CSI reset
      CSIRSTS       : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB5RSTSR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LTDCRSTS      at 0 range 1 .. 1;
      DCMIPPRSTS    at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      GFXTIMRSTS    at 0 range 4 .. 4;
      VENCRSTS      at 0 range 5 .. 5;
      CSIRSTS       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC Divider enable register
   type RCC_DIVENSR_Register is record
      --  Write-only. IC1 enable
      IC1ENS         : Boolean := False;
      --  Write-only. IC2 enable
      IC2ENS         : Boolean := False;
      --  Write-only. IC3 enable
      IC3ENS         : Boolean := False;
      --  Write-only. IC4 enable
      IC4ENS         : Boolean := False;
      --  Write-only. IC5 enable
      IC5ENS         : Boolean := False;
      --  Write-only. IC6 enable
      IC6ENS         : Boolean := False;
      --  Write-only. IC7 enable
      IC7ENS         : Boolean := False;
      --  Write-only. IC8 enable
      IC8ENS         : Boolean := False;
      --  Write-only. IC9 enable
      IC9ENS         : Boolean := False;
      --  Write-only. IC10 enable
      IC10ENS        : Boolean := False;
      --  Write-only. IC11 enable
      IC11ENS        : Boolean := False;
      --  Write-only. IC12 enable
      IC12ENS        : Boolean := False;
      --  Write-only. IC13 enable
      IC13ENS        : Boolean := False;
      --  Write-only. IC14 enable
      IC14ENS        : Boolean := False;
      --  Write-only. IC15 enable
      IC15ENS        : Boolean := False;
      --  Write-only. IC16 enable
      IC16ENS        : Boolean := False;
      --  Write-only. IC17 enable
      IC17ENS        : Boolean := False;
      --  Write-only. IC18 enable
      IC18ENS        : Boolean := False;
      --  Write-only. IC19 enable
      IC19ENS        : Boolean := False;
      --  Write-only. IC20 enable
      IC20ENS        : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_DIVENSR_Register use record
      IC1ENS         at 0 range 0 .. 0;
      IC2ENS         at 0 range 1 .. 1;
      IC3ENS         at 0 range 2 .. 2;
      IC4ENS         at 0 range 3 .. 3;
      IC5ENS         at 0 range 4 .. 4;
      IC6ENS         at 0 range 5 .. 5;
      IC7ENS         at 0 range 6 .. 6;
      IC8ENS         at 0 range 7 .. 7;
      IC9ENS         at 0 range 8 .. 8;
      IC10ENS        at 0 range 9 .. 9;
      IC11ENS        at 0 range 10 .. 10;
      IC12ENS        at 0 range 11 .. 11;
      IC13ENS        at 0 range 12 .. 12;
      IC14ENS        at 0 range 13 .. 13;
      IC15ENS        at 0 range 14 .. 14;
      IC16ENS        at 0 range 15 .. 15;
      IC17ENS        at 0 range 16 .. 16;
      IC18ENS        at 0 range 17 .. 17;
      IC19ENS        at 0 range 18 .. 18;
      IC20ENS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC bus enable register
   type RCC_BUSENSR_Register is record
      --  Write-only. ACLKN enable
      ACLKNENS       : Boolean := False;
      --  Write-only. ACLKNC enable
      ACLKNCENS      : Boolean := False;
      --  Write-only. AHBM enable
      AHBMENS        : Boolean := False;
      --  Write-only. AHB1 enable
      AHB1ENS        : Boolean := False;
      --  Write-only. AHB2 enable
      AHB2ENS        : Boolean := False;
      --  Write-only. AHB3 enable
      AHB3ENS        : Boolean := False;
      --  Write-only. AHB4 enable
      AHB4ENS        : Boolean := False;
      --  Write-only. AHB5 enable
      AHB5ENS        : Boolean := False;
      --  Write-only. APB1 enable
      APB1ENS        : Boolean := False;
      --  Write-only. APB2 enable
      APB2ENS        : Boolean := False;
      --  Write-only. APB3 enable
      APB3ENS        : Boolean := False;
      --  Write-only. APB4 enable
      APB4ENS        : Boolean := False;
      --  Write-only. APB5 enable
      APB5ENS        : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_BUSENSR_Register use record
      ACLKNENS       at 0 range 0 .. 0;
      ACLKNCENS      at 0 range 1 .. 1;
      AHBMENS        at 0 range 2 .. 2;
      AHB1ENS        at 0 range 3 .. 3;
      AHB2ENS        at 0 range 4 .. 4;
      AHB3ENS        at 0 range 5 .. 5;
      AHB4ENS        at 0 range 6 .. 6;
      AHB5ENS        at 0 range 7 .. 7;
      APB1ENS        at 0 range 8 .. 8;
      APB2ENS        at 0 range 9 .. 9;
      APB3ENS        at 0 range 10 .. 10;
      APB4ENS        at 0 range 11 .. 11;
      APB5ENS        at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC miscellaneous enable register
   type RCC_MISCENSR_Register is record
      --  Write-only. DBG enable
      DBGENS         : Boolean := False;
      --  Write-only. MCO1 enable
      MCO1ENS        : Boolean := False;
      --  Write-only. MCO2 enable
      MCO2ENS        : Boolean := False;
      --  Write-only. XSPIPHYCOMP enable
      XSPIPHYCOMPENS : Boolean := False;
      --  unspecified
      Reserved_4_5   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PER enable
      PERENS         : Boolean := False;
      --  unspecified
      Reserved_7_31  : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MISCENSR_Register use record
      DBGENS         at 0 range 0 .. 0;
      MCO1ENS        at 0 range 1 .. 1;
      MCO2ENS        at 0 range 2 .. 2;
      XSPIPHYCOMPENS at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      PERENS         at 0 range 6 .. 6;
      Reserved_7_31  at 0 range 7 .. 31;
   end record;

   --  RCC memory enable register
   type RCC_MEMENSR_Register is record
      --  Write-only. AXISRAM3 enable
      AXISRAM3ENS    : Boolean := False;
      --  Write-only. AXISRAM4 enable
      AXISRAM4ENS    : Boolean := False;
      --  Write-only. AXISRAM5 enable
      AXISRAM5ENS    : Boolean := False;
      --  Write-only. AXISRAM6 enable
      AXISRAM6ENS    : Boolean := False;
      --  Write-only. AHBSRAM1 enable
      AHBSRAM1ENS    : Boolean := False;
      --  Write-only. AHBSRAM2 enable
      AHBSRAM2ENS    : Boolean := False;
      --  Write-only. BKPSRAM enable
      BKPSRAMENS     : Boolean := False;
      --  Write-only. AXISRAM1 enable
      AXISRAM1ENS    : Boolean := False;
      --  Write-only. AXISRAM2 enable
      AXISRAM2ENS    : Boolean := False;
      --  Write-only. FLEXRAM enable
      FLEXRAMENS     : Boolean := False;
      --  Write-only. NPUCACHERAM enable
      NPUCACHERAMENS : Boolean := False;
      --  Write-only. VENCRAM enable
      VENCRAMENS     : Boolean := False;
      --  Write-only. BOOTROM enable
      BOOTROMENS     : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MEMENSR_Register use record
      AXISRAM3ENS    at 0 range 0 .. 0;
      AXISRAM4ENS    at 0 range 1 .. 1;
      AXISRAM5ENS    at 0 range 2 .. 2;
      AXISRAM6ENS    at 0 range 3 .. 3;
      AHBSRAM1ENS    at 0 range 4 .. 4;
      AHBSRAM2ENS    at 0 range 5 .. 5;
      BKPSRAMENS     at 0 range 6 .. 6;
      AXISRAM1ENS    at 0 range 7 .. 7;
      AXISRAM2ENS    at 0 range 8 .. 8;
      FLEXRAMENS     at 0 range 9 .. 9;
      NPUCACHERAMENS at 0 range 10 .. 10;
      VENCRAMENS     at 0 range 11 .. 11;
      BOOTROMENS     at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC AHB1 enable register
   type RCC_AHB1ENSR_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. GPDMA1 enable
      GPDMA1ENS     : Boolean := False;
      --  Write-only. ADC12 enable
      ADC12ENS      : Boolean := False;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1ENSR_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      GPDMA1ENS     at 0 range 4 .. 4;
      ADC12ENS      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RCC AHB2 enable register
   type RCC_AHB2ENSR_Register is record
      --  unspecified
      Reserved_0_11  : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Write-only. RAMCFG enable
      RAMCFGENS      : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. MDF1 enable
      MDF1ENS        : Boolean := False;
      --  Write-only. ADF1 enable
      ADF1ENS        : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2ENSR_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      RAMCFGENS      at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      MDF1ENS        at 0 range 16 .. 16;
      ADF1ENS        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  RCC AHB3 enable register
   type RCC_AHB3ENSR_Register is record
      --  Write-only. RNG enable
      RNGENS         : Boolean := False;
      --  Write-only. HASH enable
      HASHENS        : Boolean := False;
      --  Write-only. CRYP enable
      CRYPENS        : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. SAES enable
      SAESENS        : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. PKA enable
      PKAENS         : Boolean := False;
      --  Write-only. RIFSC enable
      RIFSCENS       : Boolean := False;
      --  Write-only. IAC enable
      IACENS         : Boolean := False;
      --  unspecified
      Reserved_11_13 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RISAF enable
      RISAFENS       : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB3ENSR_Register use record
      RNGENS         at 0 range 0 .. 0;
      HASHENS        at 0 range 1 .. 1;
      CRYPENS        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SAESENS        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PKAENS         at 0 range 8 .. 8;
      RIFSCENS       at 0 range 9 .. 9;
      IACENS         at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      RISAFENS       at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  RCC AHB4 enable register
   type RCC_AHB4ENSR_Register is record
      --  Write-only. GPIOA enable
      GPIOAENS       : Boolean := False;
      --  Write-only. GPIOB enable
      GPIOBENS       : Boolean := False;
      --  Write-only. GPIOC enable
      GPIOCENS       : Boolean := False;
      --  Write-only. GPIOD enable
      GPIODENS       : Boolean := False;
      --  Write-only. GPIOE enable
      GPIOEENS       : Boolean := False;
      --  Write-only. GPIOF enable
      GPIOFENS       : Boolean := False;
      --  Write-only. GPIOG enable
      GPIOGENS       : Boolean := False;
      --  Write-only. GPIOH enable
      GPIOHENS       : Boolean := False;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. GPION enable
      GPIONENS       : Boolean := False;
      --  Write-only. GPIOO enable
      GPIOOENS       : Boolean := False;
      --  Write-only. GPIOP enable
      GPIOPENS       : Boolean := False;
      --  Write-only. GPIOQ enable
      GPIOQENS       : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. PWR enable
      PWRENS         : Boolean := False;
      --  Write-only. CRC enable
      CRCENS         : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB4ENSR_Register use record
      GPIOAENS       at 0 range 0 .. 0;
      GPIOBENS       at 0 range 1 .. 1;
      GPIOCENS       at 0 range 2 .. 2;
      GPIODENS       at 0 range 3 .. 3;
      GPIOEENS       at 0 range 4 .. 4;
      GPIOFENS       at 0 range 5 .. 5;
      GPIOGENS       at 0 range 6 .. 6;
      GPIOHENS       at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      GPIONENS       at 0 range 13 .. 13;
      GPIOOENS       at 0 range 14 .. 14;
      GPIOPENS       at 0 range 15 .. 15;
      GPIOQENS       at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PWRENS         at 0 range 18 .. 18;
      CRCENS         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC AHB5 enable register
   type RCC_AHB5ENSR_Register is record
      --  Write-only. HPDMA1 enable
      HPDMA1ENS      : Boolean := False;
      --  Write-only. DMA2D enable
      DMA2DENS       : Boolean := False;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. JPEG enable
      JPEGENS        : Boolean := False;
      --  Write-only. FMC enable
      FMCENS         : Boolean := False;
      --  Write-only. XSPI1 enable
      XSPI1ENS       : Boolean := False;
      --  Write-only. PSSI enable
      PSSIENS        : Boolean := False;
      --  Write-only. SDMMC2 enable
      SDMMC2ENS      : Boolean := False;
      --  Write-only. SDMMC1 enable
      SDMMC1ENS      : Boolean := False;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. XSPI2 enable
      XSPI2ENS       : Boolean := False;
      --  Write-only. XSPIM enable
      XSPIMENS       : Boolean := False;
      --  Write-only. MCE1 enable
      MCE1ENS        : Boolean := False;
      --  Write-only. MCE2 enable
      MCE2ENS        : Boolean := False;
      --  Write-only. MCE3 enable
      MCE3ENS        : Boolean := False;
      --  Write-only. XSPI3 enable
      XSPI3ENS       : Boolean := False;
      --  Write-only. MCE4 enable
      MCE4ENS        : Boolean := False;
      --  Write-only. GFXMMU enable
      GFXMMUENS      : Boolean := False;
      --  Write-only. GPU enable
      GPUENS         : Boolean := False;
      --  unspecified
      Reserved_21_21 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. ETH1MAC enable
      ETH1MACENS     : Boolean := False;
      --  Write-only. ETH1TX enable
      ETH1TXENS      : Boolean := False;
      --  Write-only. ETH1RX enable
      ETH1RXENS      : Boolean := False;
      --  Write-only. ETH1 enable
      ETH1ENS        : Boolean := False;
      --  Write-only. OTG1 enable
      OTG1ENS        : Boolean := False;
      --  Write-only. OTGPHY1 enable
      OTGPHY1ENS     : Boolean := False;
      --  Write-only. OTGPHY2 enable
      OTGPHY2ENS     : Boolean := False;
      --  Write-only. OTG2 enable
      OTG2ENS        : Boolean := False;
      --  Write-only. NPUCACHE enable
      NPUCACHEENS    : Boolean := False;
      --  Write-only. NPU enable
      NPUENS         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB5ENSR_Register use record
      HPDMA1ENS      at 0 range 0 .. 0;
      DMA2DENS       at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      JPEGENS        at 0 range 3 .. 3;
      FMCENS         at 0 range 4 .. 4;
      XSPI1ENS       at 0 range 5 .. 5;
      PSSIENS        at 0 range 6 .. 6;
      SDMMC2ENS      at 0 range 7 .. 7;
      SDMMC1ENS      at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      XSPI2ENS       at 0 range 12 .. 12;
      XSPIMENS       at 0 range 13 .. 13;
      MCE1ENS        at 0 range 14 .. 14;
      MCE2ENS        at 0 range 15 .. 15;
      MCE3ENS        at 0 range 16 .. 16;
      XSPI3ENS       at 0 range 17 .. 17;
      MCE4ENS        at 0 range 18 .. 18;
      GFXMMUENS      at 0 range 19 .. 19;
      GPUENS         at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      ETH1MACENS     at 0 range 22 .. 22;
      ETH1TXENS      at 0 range 23 .. 23;
      ETH1RXENS      at 0 range 24 .. 24;
      ETH1ENS        at 0 range 25 .. 25;
      OTG1ENS        at 0 range 26 .. 26;
      OTGPHY1ENS     at 0 range 27 .. 27;
      OTGPHY2ENS     at 0 range 28 .. 28;
      OTG2ENS        at 0 range 29 .. 29;
      NPUCACHEENS    at 0 range 30 .. 30;
      NPUENS         at 0 range 31 .. 31;
   end record;

   --  RCC APB1L enable register
   type RCC_APB1LENSR_Register is record
      --  Write-only. TIM2 enable
      TIM2ENS        : Boolean := False;
      --  Write-only. TIM3 enable
      TIM3ENS        : Boolean := False;
      --  Write-only. TIM4 enable
      TIM4ENS        : Boolean := False;
      --  Write-only. TIM5 enable
      TIM5ENS        : Boolean := False;
      --  Write-only. TIM6 enable
      TIM6ENS        : Boolean := False;
      --  Write-only. TIM7 enable
      TIM7ENS        : Boolean := False;
      --  Write-only. TIM12 enable
      TIM12ENS       : Boolean := False;
      --  Write-only. TIM13 enable
      TIM13ENS       : Boolean := False;
      --  Write-only. TIM14 enable
      TIM14ENS       : Boolean := False;
      --  Write-only. LPTIM1 enable
      LPTIM1ENS      : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. WWDG enable
      WWDGENS        : Boolean := False;
      --  Write-only. TIM10 enable
      TIM10ENS       : Boolean := False;
      --  Write-only. TIM11 enable
      TIM11ENS       : Boolean := False;
      --  Write-only. SPI2 enable
      SPI2ENS        : Boolean := False;
      --  Write-only. SPI3 enable
      SPI3ENS        : Boolean := False;
      --  Write-only. SPDIFRX1 enable
      SPDIFRX1ENS    : Boolean := False;
      --  Write-only. USART2 enable
      USART2ENS      : Boolean := False;
      --  Write-only. USART3 enable
      USART3ENS      : Boolean := False;
      --  Write-only. UART4 enable
      UART4ENS       : Boolean := False;
      --  Write-only. UART5 enable
      UART5ENS       : Boolean := False;
      --  Write-only. I2C1 enable
      I2C1ENS        : Boolean := False;
      --  Write-only. I2C2 enable
      I2C2ENS        : Boolean := False;
      --  Write-only. I2C3 enable
      I2C3ENS        : Boolean := False;
      --  Write-only. I3C1 enable
      I3C1ENS        : Boolean := False;
      --  Write-only. I3C2 enable
      I3C2ENS        : Boolean := False;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. UART7 enable
      UART7ENS       : Boolean := False;
      --  Write-only. UART8 enable
      UART8ENS       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1LENSR_Register use record
      TIM2ENS        at 0 range 0 .. 0;
      TIM3ENS        at 0 range 1 .. 1;
      TIM4ENS        at 0 range 2 .. 2;
      TIM5ENS        at 0 range 3 .. 3;
      TIM6ENS        at 0 range 4 .. 4;
      TIM7ENS        at 0 range 5 .. 5;
      TIM12ENS       at 0 range 6 .. 6;
      TIM13ENS       at 0 range 7 .. 7;
      TIM14ENS       at 0 range 8 .. 8;
      LPTIM1ENS      at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDGENS        at 0 range 11 .. 11;
      TIM10ENS       at 0 range 12 .. 12;
      TIM11ENS       at 0 range 13 .. 13;
      SPI2ENS        at 0 range 14 .. 14;
      SPI3ENS        at 0 range 15 .. 15;
      SPDIFRX1ENS    at 0 range 16 .. 16;
      USART2ENS      at 0 range 17 .. 17;
      USART3ENS      at 0 range 18 .. 18;
      UART4ENS       at 0 range 19 .. 19;
      UART5ENS       at 0 range 20 .. 20;
      I2C1ENS        at 0 range 21 .. 21;
      I2C2ENS        at 0 range 22 .. 22;
      I2C3ENS        at 0 range 23 .. 23;
      I3C1ENS        at 0 range 24 .. 24;
      I3C2ENS        at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      UART7ENS       at 0 range 30 .. 30;
      UART8ENS       at 0 range 31 .. 31;
   end record;

   --  RCC APB1H enable register
   type RCC_APB1HENSR_Register is record
      --  unspecified
      Reserved_0_4   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. MDIOS enable
      MDIOSENS       : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. FDCAN enable
      FDCANENS       : Boolean := False;
      --  unspecified
      Reserved_9_17  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Write-only. UCPD1 enable
      UCPD1ENS       : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1HENSR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      MDIOSENS       at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FDCANENS       at 0 range 8 .. 8;
      Reserved_9_17  at 0 range 9 .. 17;
      UCPD1ENS       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  RCC APB2 enable register
   type RCC_APB2ENSR_Register is record
      --  Write-only. TIM1 enable
      TIM1ENS        : Boolean := False;
      --  Write-only. TIM8 enable
      TIM8ENS        : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. USART1 enable
      USART1ENS      : Boolean := False;
      --  Write-only. USART6 enable
      USART6ENS      : Boolean := False;
      --  Write-only. UART9 enable
      UART9ENS       : Boolean := False;
      --  Write-only. USART10 enable
      USART10ENS     : Boolean := False;
      --  unspecified
      Reserved_8_11  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. SPI1 enable
      SPI1ENS        : Boolean := False;
      --  Write-only. SPI4 enable
      SPI4ENS        : Boolean := False;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. TIM18 enable
      TIM18ENS       : Boolean := False;
      --  Write-only. TIM15 enable
      TIM15ENS       : Boolean := False;
      --  Write-only. TIM16 enable
      TIM16ENS       : Boolean := False;
      --  Write-only. TIM17 enable
      TIM17ENS       : Boolean := False;
      --  Write-only. TIM9 enable
      TIM9ENS        : Boolean := False;
      --  Write-only. SPI5 enable
      SPI5ENS        : Boolean := False;
      --  Write-only. SAI1 enable
      SAI1ENS        : Boolean := False;
      --  Write-only. SAI2 enable
      SAI2ENS        : Boolean := False;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB2ENSR_Register use record
      TIM1ENS        at 0 range 0 .. 0;
      TIM8ENS        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      USART1ENS      at 0 range 4 .. 4;
      USART6ENS      at 0 range 5 .. 5;
      UART9ENS       at 0 range 6 .. 6;
      USART10ENS     at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SPI1ENS        at 0 range 12 .. 12;
      SPI4ENS        at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      TIM18ENS       at 0 range 15 .. 15;
      TIM15ENS       at 0 range 16 .. 16;
      TIM16ENS       at 0 range 17 .. 17;
      TIM17ENS       at 0 range 18 .. 18;
      TIM9ENS        at 0 range 19 .. 19;
      SPI5ENS        at 0 range 20 .. 20;
      SAI1ENS        at 0 range 21 .. 21;
      SAI2ENS        at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  RCC APB3 enable register
   type RCC_APB3ENSR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. DFT enable
      DFTENS        : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB3ENSR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DFTENS        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC APB4L enable register
   type RCC_APB4LENSR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. HDP enable
      HDPENS         : Boolean := False;
      --  Write-only. LPUART1 enable
      LPUART1ENS     : Boolean := False;
      --  unspecified
      Reserved_4_4   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. SPI6 enable
      SPI6ENS        : Boolean := False;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. I2C4 enable
      I2C4ENS        : Boolean := False;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. LPTIM2 enable
      LPTIM2ENS      : Boolean := False;
      --  Write-only. LPTIM3 enable
      LPTIM3ENS      : Boolean := False;
      --  Write-only. LPTIM4 enable
      LPTIM4ENS      : Boolean := False;
      --  Write-only. LPTIM5 enable
      LPTIM5ENS      : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. VREFBUF enable
      VREFBUFENS     : Boolean := False;
      --  Write-only. RTC enable
      RTCENS         : Boolean := False;
      --  Write-only. RTCAPB enable
      RTCAPBENS      : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. R2GRET enable
      R2GRETENS      : Boolean := False;
      --  Write-only. R2GNPU enable
      R2GNPUENS      : Boolean := False;
      --  unspecified
      Reserved_24_30 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. SERF enable
      SERFENS        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4LENSR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      HDPENS         at 0 range 2 .. 2;
      LPUART1ENS     at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SPI6ENS        at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      I2C4ENS        at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LPTIM2ENS      at 0 range 9 .. 9;
      LPTIM3ENS      at 0 range 10 .. 10;
      LPTIM4ENS      at 0 range 11 .. 11;
      LPTIM5ENS      at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      VREFBUFENS     at 0 range 15 .. 15;
      RTCENS         at 0 range 16 .. 16;
      RTCAPBENS      at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      R2GRETENS      at 0 range 22 .. 22;
      R2GNPUENS      at 0 range 23 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      SERFENS        at 0 range 31 .. 31;
   end record;

   --  RCC APB4H enable register
   type RCC_APB4HENSR_Register is record
      --  Write-only. SYSCFG enable
      SYSCFGENS     : Boolean := False;
      --  Write-only. BSEC enable
      BSECENS       : Boolean := False;
      --  Write-only. DTS enable
      DTSENS        : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. BUSPERFM enable
      BUSPERFMENS   : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4HENSR_Register use record
      SYSCFGENS     at 0 range 0 .. 0;
      BSECENS       at 0 range 1 .. 1;
      DTSENS        at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      BUSPERFMENS   at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC APB5 enable register
   type RCC_APB5ENSR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. LTDC enable
      LTDCENS       : Boolean := False;
      --  Write-only. DCMIPP enable
      DCMIPPENS     : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. GFXTIM enable
      GFXTIMENS     : Boolean := False;
      --  Write-only. VENC enable
      VENCENS       : Boolean := False;
      --  Write-only. CSI enable
      CSIENS        : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB5ENSR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LTDCENS       at 0 range 1 .. 1;
      DCMIPPENS     at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      GFXTIMENS     at 0 range 4 .. 4;
      VENCENS       at 0 range 5 .. 5;
      CSIENS        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC divider Sleep enable register
   type RCC_DIVLPENSR_Register is record
      --  Write-only. IC1 sleep enable
      IC1LPENS       : Boolean := False;
      --  Write-only. IC2 sleep enable
      IC2LPENS       : Boolean := False;
      --  Write-only. IC3 sleep enable
      IC3LPENS       : Boolean := False;
      --  Write-only. IC4 sleep enable
      IC4LPENS       : Boolean := False;
      --  Write-only. IC5 sleep enable
      IC5LPENS       : Boolean := False;
      --  Write-only. IC6 sleep enable
      IC6LPENS       : Boolean := False;
      --  Write-only. IC7 sleep enable
      IC7LPENS       : Boolean := False;
      --  Write-only. IC8 sleep enable
      IC8LPENS       : Boolean := False;
      --  Write-only. IC9 sleep enable
      IC9LPENS       : Boolean := False;
      --  Write-only. IC10 sleep enable
      IC10LPENS      : Boolean := False;
      --  Write-only. IC11 sleep enable
      IC11LPENS      : Boolean := False;
      --  Write-only. IC12 sleep enable
      IC12LPENS      : Boolean := False;
      --  Write-only. IC13 sleep enable
      IC13LPENS      : Boolean := False;
      --  Write-only. IC14 sleep enable
      IC14LPENS      : Boolean := False;
      --  Write-only. IC15 sleep enable
      IC15LPENS      : Boolean := False;
      --  Write-only. IC16 sleep enable
      IC16LPENS      : Boolean := False;
      --  Write-only. IC17 sleep enable
      IC17LPENS      : Boolean := False;
      --  Write-only. IC18 sleep enable
      IC18LPENS      : Boolean := False;
      --  Write-only. IC19 sleep enable
      IC19LPENS      : Boolean := False;
      --  Write-only. IC20 sleep enable
      IC20LPENS      : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_DIVLPENSR_Register use record
      IC1LPENS       at 0 range 0 .. 0;
      IC2LPENS       at 0 range 1 .. 1;
      IC3LPENS       at 0 range 2 .. 2;
      IC4LPENS       at 0 range 3 .. 3;
      IC5LPENS       at 0 range 4 .. 4;
      IC6LPENS       at 0 range 5 .. 5;
      IC7LPENS       at 0 range 6 .. 6;
      IC8LPENS       at 0 range 7 .. 7;
      IC9LPENS       at 0 range 8 .. 8;
      IC10LPENS      at 0 range 9 .. 9;
      IC11LPENS      at 0 range 10 .. 10;
      IC12LPENS      at 0 range 11 .. 11;
      IC13LPENS      at 0 range 12 .. 12;
      IC14LPENS      at 0 range 13 .. 13;
      IC15LPENS      at 0 range 14 .. 14;
      IC16LPENS      at 0 range 15 .. 15;
      IC17LPENS      at 0 range 16 .. 16;
      IC18LPENS      at 0 range 17 .. 17;
      IC19LPENS      at 0 range 18 .. 18;
      IC20LPENS      at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC bus Sleep enable register
   type RCC_BUSLPENSR_Register is record
      --  Write-only. ACLKN sleep enable
      ACLKNLPENS     : Boolean := False;
      --  Write-only. ACLKNC sleep enable
      ACLKNCLPENS    : Boolean := False;
      --  Write-only. AHBM sleep enable
      AHBMLPENS      : Boolean := False;
      --  Write-only. AHB1 sleep enable
      AHB1LPENS      : Boolean := False;
      --  Write-only. AHB2 sleep enable
      AHB2LPENS      : Boolean := False;
      --  Write-only. AHB3 sleep enable
      AHB3LPENS      : Boolean := False;
      --  Write-only. AHB4 sleep enable
      AHB4LPENS      : Boolean := False;
      --  Write-only. AHB5 sleep enable
      AHB5LPENS      : Boolean := False;
      --  Write-only. APB1 sleep enable
      APB1LPENS      : Boolean := False;
      --  Write-only. APB2 sleep enable
      APB2LPENS      : Boolean := False;
      --  Write-only. APB3 sleep enable
      APB3LPENS      : Boolean := False;
      --  Write-only. APB4 sleep enable
      APB4LPENS      : Boolean := False;
      --  Write-only. APB5 sleep enable
      APB5LPENS      : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_BUSLPENSR_Register use record
      ACLKNLPENS     at 0 range 0 .. 0;
      ACLKNCLPENS    at 0 range 1 .. 1;
      AHBMLPENS      at 0 range 2 .. 2;
      AHB1LPENS      at 0 range 3 .. 3;
      AHB2LPENS      at 0 range 4 .. 4;
      AHB3LPENS      at 0 range 5 .. 5;
      AHB4LPENS      at 0 range 6 .. 6;
      AHB5LPENS      at 0 range 7 .. 7;
      APB1LPENS      at 0 range 8 .. 8;
      APB2LPENS      at 0 range 9 .. 9;
      APB3LPENS      at 0 range 10 .. 10;
      APB4LPENS      at 0 range 11 .. 11;
      APB5LPENS      at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC miscellaneous Sleep enable register
   type RCC_MISCLPENSR_Register is record
      --  Write-only. DBG sleep enable
      DBGLPENS         : Boolean := False;
      --  unspecified
      Reserved_1_2     : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. XSPIPHYCOMP sleep enable
      XSPIPHYCOMPLPENS : Boolean := False;
      --  unspecified
      Reserved_4_5     : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PER sleep enable
      PERLPENS         : Boolean := False;
      --  unspecified
      Reserved_7_31    : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MISCLPENSR_Register use record
      DBGLPENS         at 0 range 0 .. 0;
      Reserved_1_2     at 0 range 1 .. 2;
      XSPIPHYCOMPLPENS at 0 range 3 .. 3;
      Reserved_4_5     at 0 range 4 .. 5;
      PERLPENS         at 0 range 6 .. 6;
      Reserved_7_31    at 0 range 7 .. 31;
   end record;

   --  RCC memory sleep enable register
   type RCC_MEMLPENSR_Register is record
      --  Write-only. AXISRAM3 sleep enable
      AXISRAM3LPENS    : Boolean := False;
      --  Write-only. AXISRAM4 sleep enable
      AXISRAM4LPENS    : Boolean := False;
      --  Write-only. AXISRAM5 sleep enable
      AXISRAM5LPENS    : Boolean := False;
      --  Write-only. AXISRAM6 sleep enable
      AXISRAM6LPENS    : Boolean := False;
      --  Write-only. AHBSRAM1 sleep enable
      AHBSRAM1LPENS    : Boolean := False;
      --  Write-only. AHBSRAM2 sleep enable
      AHBSRAM2LPENS    : Boolean := False;
      --  Write-only. BKPSRAM sleep enable
      BKPSRAMLPENS     : Boolean := False;
      --  Write-only. AXISRAM1 sleep enable
      AXISRAM1LPENS    : Boolean := False;
      --  Write-only. AXISRAM2 sleep enable
      AXISRAM2LPENS    : Boolean := False;
      --  Write-only. FLEXRAM sleep enable
      FLEXRAMLPENS     : Boolean := False;
      --  Write-only. NPUCACHERAM sleep enable
      NPUCACHERAMLPENS : Boolean := False;
      --  Write-only. VENCRAM sleep enable
      VENCRAMLPENS     : Boolean := False;
      --  Write-only. BOOTROM sleep enable
      BOOTROMLPENS     : Boolean := False;
      --  unspecified
      Reserved_13_31   : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MEMLPENSR_Register use record
      AXISRAM3LPENS    at 0 range 0 .. 0;
      AXISRAM4LPENS    at 0 range 1 .. 1;
      AXISRAM5LPENS    at 0 range 2 .. 2;
      AXISRAM6LPENS    at 0 range 3 .. 3;
      AHBSRAM1LPENS    at 0 range 4 .. 4;
      AHBSRAM2LPENS    at 0 range 5 .. 5;
      BKPSRAMLPENS     at 0 range 6 .. 6;
      AXISRAM1LPENS    at 0 range 7 .. 7;
      AXISRAM2LPENS    at 0 range 8 .. 8;
      FLEXRAMLPENS     at 0 range 9 .. 9;
      NPUCACHERAMLPENS at 0 range 10 .. 10;
      VENCRAMLPENS     at 0 range 11 .. 11;
      BOOTROMLPENS     at 0 range 12 .. 12;
      Reserved_13_31   at 0 range 13 .. 31;
   end record;

   --  RCC AHB1 Sleep enable register
   type RCC_AHB1LPENSR_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. GPDMA1 sleep enable
      GPDMA1LPENS   : Boolean := False;
      --  Write-only. ADC12 sleep enable
      ADC12LPENS    : Boolean := False;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1LPENSR_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      GPDMA1LPENS   at 0 range 4 .. 4;
      ADC12LPENS    at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RCC AHB2 Sleep enable register
   type RCC_AHB2LPENSR_Register is record
      --  unspecified
      Reserved_0_11  : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Write-only. RAMCFG sleep enable
      RAMCFGLPENS    : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. MDF1 sleep enable
      MDF1LPENS      : Boolean := False;
      --  Write-only. ADF1 sleep enable
      ADF1LPENS      : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2LPENSR_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      RAMCFGLPENS    at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      MDF1LPENS      at 0 range 16 .. 16;
      ADF1LPENS      at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  RCC AHB3 Sleep enable register
   type RCC_AHB3LPENSR_Register is record
      --  Write-only. RNG sleep enable
      RNGLPENS       : Boolean := False;
      --  Write-only. HASH sleep enable
      HASHLPENS      : Boolean := False;
      --  Write-only. CRYP sleep enable
      CRYPLPENS      : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. SAES sleep enable
      SAESLPENS      : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. PKA sleep enable
      PKALPENS       : Boolean := False;
      --  Write-only. RIFSC sleep enable
      RIFSCLPENS     : Boolean := False;
      --  Write-only. IAC sleep enable
      IACLPENS       : Boolean := False;
      --  unspecified
      Reserved_11_13 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RISAF sleep enable
      RISAFLPENS     : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB3LPENSR_Register use record
      RNGLPENS       at 0 range 0 .. 0;
      HASHLPENS      at 0 range 1 .. 1;
      CRYPLPENS      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SAESLPENS      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PKALPENS       at 0 range 8 .. 8;
      RIFSCLPENS     at 0 range 9 .. 9;
      IACLPENS       at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      RISAFLPENS     at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  RCC AHB4 Sleep enable register
   type RCC_AHB4LPENSR_Register is record
      --  Write-only. GPIOA sleep enable
      GPIOALPENS     : Boolean := False;
      --  Write-only. GPIOB sleep enable
      GPIOBLPENS     : Boolean := False;
      --  Write-only. GPIOC sleep enable
      GPIOCLPENS     : Boolean := False;
      --  Write-only. GPIOD sleep enable
      GPIODLPENS     : Boolean := False;
      --  Write-only. GPIOE sleep enable
      GPIOELPENS     : Boolean := False;
      --  Write-only. GPIOF sleep enable
      GPIOFLPENS     : Boolean := False;
      --  Write-only. GPIOG sleep enable
      GPIOGLPENS     : Boolean := False;
      --  Write-only. GPIOH sleep enable
      GPIOHLPENS     : Boolean := False;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. GPION sleep enable
      GPIONLPENS     : Boolean := False;
      --  Write-only. GPIOO sleep enable
      GPIOOLPENS     : Boolean := False;
      --  Write-only. GPIOP sleep enable
      GPIOPLPENS     : Boolean := False;
      --  Write-only. GPIOQ sleep enable
      GPIOQLPENS     : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. PWR sleep enable
      PWRLPENS       : Boolean := False;
      --  Write-only. CRC sleep enable
      CRCLPENS       : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB4LPENSR_Register use record
      GPIOALPENS     at 0 range 0 .. 0;
      GPIOBLPENS     at 0 range 1 .. 1;
      GPIOCLPENS     at 0 range 2 .. 2;
      GPIODLPENS     at 0 range 3 .. 3;
      GPIOELPENS     at 0 range 4 .. 4;
      GPIOFLPENS     at 0 range 5 .. 5;
      GPIOGLPENS     at 0 range 6 .. 6;
      GPIOHLPENS     at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      GPIONLPENS     at 0 range 13 .. 13;
      GPIOOLPENS     at 0 range 14 .. 14;
      GPIOPLPENS     at 0 range 15 .. 15;
      GPIOQLPENS     at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PWRLPENS       at 0 range 18 .. 18;
      CRCLPENS       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC AHB5 Sleep enable register
   type RCC_AHB5LPENSR_Register is record
      --  Write-only. HPDMA1 sleep enable
      HPDMA1LPENS    : Boolean := False;
      --  Write-only. DMA2D sleep enable
      DMA2DLPENS     : Boolean := False;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. JPEG sleep enable
      JPEGLPENS      : Boolean := False;
      --  Write-only. FMC sleep enable
      FMCLPENS       : Boolean := False;
      --  Write-only. XSPI1 sleep enable
      XSPI1LPENS     : Boolean := False;
      --  Write-only. PSSI sleep enable
      PSSILPENS      : Boolean := False;
      --  Write-only. SDMMC2 sleep enable
      SDMMC2LPENS    : Boolean := False;
      --  Write-only. SDMMC1 sleep enable
      SDMMC1LPENS    : Boolean := False;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. XSPI2 sleep enable
      XSPI2LPENS     : Boolean := False;
      --  Write-only. XSPIM sleep enable
      XSPIMLPENS     : Boolean := False;
      --  Write-only. MCE1 sleep enable
      MCE1LPENS      : Boolean := False;
      --  Write-only. MCE2 sleep enable
      MCE2LPENS      : Boolean := False;
      --  Write-only. MCE3 sleep enable
      MCE3LPENS      : Boolean := False;
      --  Write-only. XSPI3 sleep enable
      XSPI3LPENS     : Boolean := False;
      --  Write-only. MCE4 sleep enable
      MCE4LPENS      : Boolean := False;
      --  Write-only. GFXMMU sleep enable
      GFXMMULPENS    : Boolean := False;
      --  Write-only. GPU sleep enable
      GPULPENS       : Boolean := False;
      --  unspecified
      Reserved_21_21 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. ETH1MAC sleep enable
      ETH1MACLPENS   : Boolean := False;
      --  Write-only. ETH1TX sleep enable
      ETH1TXLPENS    : Boolean := False;
      --  Write-only. ETH1RX sleep enable
      ETH1RXLPENS    : Boolean := False;
      --  Write-only. ETH1 sleep enable
      ETH1LPENS      : Boolean := False;
      --  Write-only. OTG1 sleep enable
      OTG1LPENS      : Boolean := False;
      --  Write-only. OTGPHY1 sleep enable
      OTGPHY1LPENS   : Boolean := False;
      --  Write-only. OTGPHY2 sleep enable
      OTGPHY2LPENS   : Boolean := False;
      --  Write-only. OTG2 sleep enable
      OTG2LPENS      : Boolean := False;
      --  Write-only. NPUCACHE sleep enable
      NPUCACHELPENS  : Boolean := False;
      --  Write-only. NPU sleep enable
      NPULPENS       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB5LPENSR_Register use record
      HPDMA1LPENS    at 0 range 0 .. 0;
      DMA2DLPENS     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      JPEGLPENS      at 0 range 3 .. 3;
      FMCLPENS       at 0 range 4 .. 4;
      XSPI1LPENS     at 0 range 5 .. 5;
      PSSILPENS      at 0 range 6 .. 6;
      SDMMC2LPENS    at 0 range 7 .. 7;
      SDMMC1LPENS    at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      XSPI2LPENS     at 0 range 12 .. 12;
      XSPIMLPENS     at 0 range 13 .. 13;
      MCE1LPENS      at 0 range 14 .. 14;
      MCE2LPENS      at 0 range 15 .. 15;
      MCE3LPENS      at 0 range 16 .. 16;
      XSPI3LPENS     at 0 range 17 .. 17;
      MCE4LPENS      at 0 range 18 .. 18;
      GFXMMULPENS    at 0 range 19 .. 19;
      GPULPENS       at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      ETH1MACLPENS   at 0 range 22 .. 22;
      ETH1TXLPENS    at 0 range 23 .. 23;
      ETH1RXLPENS    at 0 range 24 .. 24;
      ETH1LPENS      at 0 range 25 .. 25;
      OTG1LPENS      at 0 range 26 .. 26;
      OTGPHY1LPENS   at 0 range 27 .. 27;
      OTGPHY2LPENS   at 0 range 28 .. 28;
      OTG2LPENS      at 0 range 29 .. 29;
      NPUCACHELPENS  at 0 range 30 .. 30;
      NPULPENS       at 0 range 31 .. 31;
   end record;

   --  RCC APB1L Sleep enable register
   type RCC_APB1LLPENSR_Register is record
      --  Write-only. TIM2 sleep enable
      TIM2LPENS      : Boolean := False;
      --  Write-only. TIM3 sleep enable
      TIM3LPENS      : Boolean := False;
      --  Write-only. TIM4 sleep enable
      TIM4LPENS      : Boolean := False;
      --  Write-only. TIM5 sleep enable
      TIM5LPENS      : Boolean := False;
      --  Write-only. TIM6 sleep enable
      TIM6LPENS      : Boolean := False;
      --  Write-only. TIM7 sleep enable
      TIM7LPENS      : Boolean := False;
      --  Write-only. TIM12 sleep enable
      TIM12LPENS     : Boolean := False;
      --  Write-only. TIM13 sleep enable
      TIM13LPENS     : Boolean := False;
      --  Write-only. TIM14 sleep enable
      TIM14LPENS     : Boolean := False;
      --  Write-only. LPTIM1 sleep enable
      LPTIM1LPENS    : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. WWDG sleep enable
      WWDGLPENS      : Boolean := False;
      --  Write-only. TIM10 sleep enable
      TIM10LPENS     : Boolean := False;
      --  Write-only. TIM11 sleep enable
      TIM11LPENS     : Boolean := False;
      --  Write-only. SPI2 sleep enable
      SPI2LPENS      : Boolean := False;
      --  Write-only. SPI3 sleep enable
      SPI3LPENS      : Boolean := False;
      --  Write-only. SPDIFRX1 sleep enable
      SPDIFRX1LPENS  : Boolean := False;
      --  Write-only. USART2 sleep enable
      USART2LPENS    : Boolean := False;
      --  Write-only. USART3 sleep enable
      USART3LPENS    : Boolean := False;
      --  Write-only. UART4 sleep enable
      UART4LPENS     : Boolean := False;
      --  Write-only. UART5 sleep enable
      UART5LPENS     : Boolean := False;
      --  Write-only. I2C1 sleep enable
      I2C1LPENS      : Boolean := False;
      --  Write-only. I2C2 sleep enable
      I2C2LPENS      : Boolean := False;
      --  Write-only. I2C3 sleep enable
      I2C3LPENS      : Boolean := False;
      --  Write-only. I3C1 sleep enable
      I3C1LPENS      : Boolean := False;
      --  Write-only. I3C2 sleep enable
      I3C2LPENS      : Boolean := False;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. UART7 sleep enable
      UART7LPENS     : Boolean := False;
      --  Write-only. UART8 sleep enable
      UART8LPENS     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1LLPENSR_Register use record
      TIM2LPENS      at 0 range 0 .. 0;
      TIM3LPENS      at 0 range 1 .. 1;
      TIM4LPENS      at 0 range 2 .. 2;
      TIM5LPENS      at 0 range 3 .. 3;
      TIM6LPENS      at 0 range 4 .. 4;
      TIM7LPENS      at 0 range 5 .. 5;
      TIM12LPENS     at 0 range 6 .. 6;
      TIM13LPENS     at 0 range 7 .. 7;
      TIM14LPENS     at 0 range 8 .. 8;
      LPTIM1LPENS    at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDGLPENS      at 0 range 11 .. 11;
      TIM10LPENS     at 0 range 12 .. 12;
      TIM11LPENS     at 0 range 13 .. 13;
      SPI2LPENS      at 0 range 14 .. 14;
      SPI3LPENS      at 0 range 15 .. 15;
      SPDIFRX1LPENS  at 0 range 16 .. 16;
      USART2LPENS    at 0 range 17 .. 17;
      USART3LPENS    at 0 range 18 .. 18;
      UART4LPENS     at 0 range 19 .. 19;
      UART5LPENS     at 0 range 20 .. 20;
      I2C1LPENS      at 0 range 21 .. 21;
      I2C2LPENS      at 0 range 22 .. 22;
      I2C3LPENS      at 0 range 23 .. 23;
      I3C1LPENS      at 0 range 24 .. 24;
      I3C2LPENS      at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      UART7LPENS     at 0 range 30 .. 30;
      UART8LPENS     at 0 range 31 .. 31;
   end record;

   --  RCC APB1H Sleep enable register
   type RCC_APB1HLPENSR_Register is record
      --  unspecified
      Reserved_0_4   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. MDIOS sleep enable
      MDIOSLPENS     : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. FDCAN sleep enable
      FDCANLPENS     : Boolean := False;
      --  unspecified
      Reserved_9_17  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Write-only. UCPD1 sleep enable
      UCPD1LPENS     : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1HLPENSR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      MDIOSLPENS     at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FDCANLPENS     at 0 range 8 .. 8;
      Reserved_9_17  at 0 range 9 .. 17;
      UCPD1LPENS     at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  RCC APB2 Sleep enable register
   type RCC_APB2LPENSR_Register is record
      --  Write-only. TIM1 sleep enable
      TIM1LPENS      : Boolean := False;
      --  Write-only. TIM8 sleep enable
      TIM8LPENS      : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. USART1 sleep enable
      USART1LPENS    : Boolean := False;
      --  Write-only. USART6 sleep enable
      USART6LPENS    : Boolean := False;
      --  Write-only. UART9 sleep enable
      UART9LPENS     : Boolean := False;
      --  Write-only. USART10 sleep enable
      USART10LPENS   : Boolean := False;
      --  unspecified
      Reserved_8_11  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. SPI1 sleep enable
      SPI1LPENS      : Boolean := False;
      --  Write-only. SPI4 sleep enable
      SPI4LPENS      : Boolean := False;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. TIM18 sleep enable
      TIM18LPENS     : Boolean := False;
      --  Write-only. TIM15 sleep enable
      TIM15LPENS     : Boolean := False;
      --  Write-only. TIM16 sleep enable
      TIM16LPENS     : Boolean := False;
      --  Write-only. TIM17 sleep enable
      TIM17LPENS     : Boolean := False;
      --  Write-only. TIM9 sleep enable
      TIM9LPENS      : Boolean := False;
      --  Write-only. SPI5 sleep enable
      SPI5LPENS      : Boolean := False;
      --  Write-only. SAI1 sleep enable
      SAI1LPENS      : Boolean := False;
      --  Write-only. SAI2 sleep enable
      SAI2LPENS      : Boolean := False;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB2LPENSR_Register use record
      TIM1LPENS      at 0 range 0 .. 0;
      TIM8LPENS      at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      USART1LPENS    at 0 range 4 .. 4;
      USART6LPENS    at 0 range 5 .. 5;
      UART9LPENS     at 0 range 6 .. 6;
      USART10LPENS   at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SPI1LPENS      at 0 range 12 .. 12;
      SPI4LPENS      at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      TIM18LPENS     at 0 range 15 .. 15;
      TIM15LPENS     at 0 range 16 .. 16;
      TIM16LPENS     at 0 range 17 .. 17;
      TIM17LPENS     at 0 range 18 .. 18;
      TIM9LPENS      at 0 range 19 .. 19;
      SPI5LPENS      at 0 range 20 .. 20;
      SAI1LPENS      at 0 range 21 .. 21;
      SAI2LPENS      at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  RCC APB3 Sleep enable register
   type RCC_APB3LPENSR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. DFT sleep enable
      DFTLPENS      : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB3LPENSR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DFTLPENS      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC APB4L Sleep enable register
   type RCC_APB4LLPENSR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. HDP sleep enable
      HDPLPENS       : Boolean := False;
      --  Write-only. LPUART1 sleep enable
      LPUART1LPENS   : Boolean := False;
      --  unspecified
      Reserved_4_4   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. SPI6 sleep enable
      SPI6LPENS      : Boolean := False;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. I2C4 sleep enable
      I2C4LPENS      : Boolean := False;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. LPTIM2 sleep enable
      LPTIM2LPENS    : Boolean := False;
      --  Write-only. LPTIM3 sleep enable
      LPTIM3LPENS    : Boolean := False;
      --  Write-only. LPTIM4 sleep enable
      LPTIM4LPENS    : Boolean := False;
      --  Write-only. LPTIM5 sleep enable
      LPTIM5LPENS    : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. VREFBUF sleep enable
      VREFBUFLPENS   : Boolean := False;
      --  Write-only. RTC sleep enable
      RTCLPENS       : Boolean := False;
      --  Write-only. RTCAPB sleep enable
      RTCAPBLPENS    : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. R2GRET sleep enable
      R2GRETLPENS    : Boolean := False;
      --  Write-only. R2GNPU sleep enable
      R2GNPULPENS    : Boolean := False;
      --  unspecified
      Reserved_24_30 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. SERF sleep enable
      SERFLPENS      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4LLPENSR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      HDPLPENS       at 0 range 2 .. 2;
      LPUART1LPENS   at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SPI6LPENS      at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      I2C4LPENS      at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LPTIM2LPENS    at 0 range 9 .. 9;
      LPTIM3LPENS    at 0 range 10 .. 10;
      LPTIM4LPENS    at 0 range 11 .. 11;
      LPTIM5LPENS    at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      VREFBUFLPENS   at 0 range 15 .. 15;
      RTCLPENS       at 0 range 16 .. 16;
      RTCAPBLPENS    at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      R2GRETLPENS    at 0 range 22 .. 22;
      R2GNPULPENS    at 0 range 23 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      SERFLPENS      at 0 range 31 .. 31;
   end record;

   --  RCC APB4H Sleep enable register
   type RCC_APB4HLPENSR_Register is record
      --  Write-only. SYSCFG sleep enable
      SYSCFGLPENS   : Boolean := False;
      --  Write-only. BSEC sleep enable
      BSECLPENS     : Boolean := False;
      --  Write-only. DTS sleep enable
      DTSLPENS      : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. BUSPERFM sleep enable
      BUSPERFMLPENS : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4HLPENSR_Register use record
      SYSCFGLPENS   at 0 range 0 .. 0;
      BSECLPENS     at 0 range 1 .. 1;
      DTSLPENS      at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      BUSPERFMLPENS at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC APB5 Sleep enable register
   type RCC_APB5LPENSR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. LTDC sleep enable
      LTDCLPENS     : Boolean := False;
      --  Write-only. DCMIPP sleep enable
      DCMIPPLPENS   : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. GFXTIM sleep enable
      GFXTIMLPENS   : Boolean := False;
      --  Write-only. VENC sleep enable
      VENCLPENS     : Boolean := False;
      --  Write-only. CSI sleep enable
      CSILPENS      : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB5LPENSR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LTDCLPENS     at 0 range 1 .. 1;
      DCMIPPLPENS   at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      GFXTIMLPENS   at 0 range 4 .. 4;
      VENCLPENS     at 0 range 5 .. 5;
      CSILPENS      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC oscillator privilege configuration register0
   type RCC_PRIVCFGSR0_Register is record
      --  Write-only. Defines the privilege protection of the LSI configuration
      --  bits (enable, ready, divider).
      LSIPVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the LSE configuration
      --  bits (enable, ready, divider).
      LSEPVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the MSI configuration
      --  bits (enable, ready, divider).
      MSIPVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the HSI configuration
      --  bits (enable, ready, divider).
      HSIPVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the HSE configuration
      --  bits (enable, ready, divider).
      HSEPVS        : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGSR0_Register use record
      LSIPVS        at 0 range 0 .. 0;
      LSEPVS        at 0 range 1 .. 1;
      MSIPVS        at 0 range 2 .. 2;
      HSIPVS        at 0 range 3 .. 3;
      HSEPVS        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC oscillator public configuration register0
   type RCC_PUBCFGSR0_Register is record
      --  Write-only. Defines the public protection of the LSI configuration
      --  bits (enable, ready, divider).
      LSIPUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the LSE configuration
      --  bits (enable, ready, divider).
      LSEPUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the MSI configuration
      --  bits (enable, ready, divider).
      MSIPUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the HSI configuration
      --  bits (enable, ready, divider).
      HSIPUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the HSE configuration
      --  bits (enable, ready, divider).
      HSEPUBS       : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGSR0_Register use record
      LSIPUBS       at 0 range 0 .. 0;
      LSEPUBS       at 0 range 1 .. 1;
      MSIPUBS       at 0 range 2 .. 2;
      HSIPUBS       at 0 range 3 .. 3;
      HSEPUBS       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC PLL privilege configuration register1
   type RCC_PRIVCFGSR1_Register is record
      --  Write-only. Defines the privilege protection of the PLL1
      --  configuration bits (enable, ready, divider).
      PLL1PVS       : Boolean := False;
      --  Write-only. Defines the privilege protection of the PLL2
      --  configuration bits (enable, ready, divider).
      PLL2PVS       : Boolean := False;
      --  Write-only. Defines the privilege protection of the PLL3
      --  configuration bits (enable, ready, divider).
      PLL3PVS       : Boolean := False;
      --  Write-only. Defines the privilege protection of the PLL4
      --  configuration bits (enable, ready, divider).
      PLL4PVS       : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGSR1_Register use record
      PLL1PVS       at 0 range 0 .. 0;
      PLL2PVS       at 0 range 1 .. 1;
      PLL3PVS       at 0 range 2 .. 2;
      PLL4PVS       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC PLL public configuration register1
   type RCC_PUBCFGSR1_Register is record
      --  Write-only. Defines the public protection of the PLL1 configuration
      --  bits (enable, ready, divider).
      PLL1PUBS      : Boolean := False;
      --  Write-only. Defines the public protection of the PLL2 configuration
      --  bits (enable, ready, divider).
      PLL2PUBS      : Boolean := False;
      --  Write-only. Defines the public protection of the PLL3 configuration
      --  bits (enable, ready, divider).
      PLL3PUBS      : Boolean := False;
      --  Write-only. Defines the public protection of the PLL4 configuration
      --  bits (enable, ready, divider).
      PLL4PUBS      : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGSR1_Register use record
      PLL1PUBS      at 0 range 0 .. 0;
      PLL2PUBS      at 0 range 1 .. 1;
      PLL3PUBS      at 0 range 2 .. 2;
      PLL4PUBS      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC divider privilege configuration register2
   type RCC_PRIVCFGSR2_Register is record
      --  Write-only. Defines the privilege protection of the IC1 configuration
      --  bits (enable, ready, divider).
      IC1PVS         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC2 configuration
      --  bits (enable, ready, divider).
      IC2PVS         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC3 configuration
      --  bits (enable, ready, divider).
      IC3PVS         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC4 configuration
      --  bits (enable, ready, divider).
      IC4PVS         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC5 configuration
      --  bits (enable, ready, divider).
      IC5PVS         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC6 configuration
      --  bits (enable, ready, divider).
      IC6PVS         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC7 configuration
      --  bits (enable, ready, divider).
      IC7PVS         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC8 configuration
      --  bits (enable, ready, divider).
      IC8PVS         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC9 configuration
      --  bits (enable, ready, divider).
      IC9PVS         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC10
      --  configuration bits (enable, ready, divider).
      IC10PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC11
      --  configuration bits (enable, ready, divider).
      IC11PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC12
      --  configuration bits (enable, ready, divider).
      IC12PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC13
      --  configuration bits (enable, ready, divider).
      IC13PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC14
      --  configuration bits (enable, ready, divider).
      IC14PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC15
      --  configuration bits (enable, ready, divider).
      IC15PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC16
      --  configuration bits (enable, ready, divider).
      IC16PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC17
      --  configuration bits (enable, ready, divider).
      IC17PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC18
      --  configuration bits (enable, ready, divider).
      IC18PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC19
      --  configuration bits (enable, ready, divider).
      IC19PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC20
      --  configuration bits (enable, ready, divider).
      IC20PVS        : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGSR2_Register use record
      IC1PVS         at 0 range 0 .. 0;
      IC2PVS         at 0 range 1 .. 1;
      IC3PVS         at 0 range 2 .. 2;
      IC4PVS         at 0 range 3 .. 3;
      IC5PVS         at 0 range 4 .. 4;
      IC6PVS         at 0 range 5 .. 5;
      IC7PVS         at 0 range 6 .. 6;
      IC8PVS         at 0 range 7 .. 7;
      IC9PVS         at 0 range 8 .. 8;
      IC10PVS        at 0 range 9 .. 9;
      IC11PVS        at 0 range 10 .. 10;
      IC12PVS        at 0 range 11 .. 11;
      IC13PVS        at 0 range 12 .. 12;
      IC14PVS        at 0 range 13 .. 13;
      IC15PVS        at 0 range 14 .. 14;
      IC16PVS        at 0 range 15 .. 15;
      IC17PVS        at 0 range 16 .. 16;
      IC18PVS        at 0 range 17 .. 17;
      IC19PVS        at 0 range 18 .. 18;
      IC20PVS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC divider public configuration register2
   type RCC_PUBCFGSR2_Register is record
      --  Write-only. Defines the public protection of the IC1 configuration
      --  bits (enable, ready, divider).
      IC1PUBS        : Boolean := False;
      --  Write-only. Defines the public protection of the IC2 configuration
      --  bits (enable, ready, divider).
      IC2PUBS        : Boolean := False;
      --  Write-only. Defines the public protection of the IC3 configuration
      --  bits (enable, ready, divider).
      IC3PUBS        : Boolean := False;
      --  Write-only. Defines the public protection of the IC4 configuration
      --  bits (enable, ready, divider).
      IC4PUBS        : Boolean := False;
      --  Write-only. Defines the public protection of the IC5 configuration
      --  bits (enable, ready, divider).
      IC5PUBS        : Boolean := False;
      --  Write-only. Defines the public protection of the IC6 configuration
      --  bits (enable, ready, divider).
      IC6PUBS        : Boolean := False;
      --  Write-only. Defines the public protection of the IC7 configuration
      --  bits (enable, ready, divider).
      IC7PUBS        : Boolean := False;
      --  Write-only. Defines the public protection of the IC8 configuration
      --  bits (enable, ready, divider).
      IC8PUBS        : Boolean := False;
      --  Write-only. Defines the public protection of the IC9 configuration
      --  bits (enable, ready, divider).
      IC9PUBS        : Boolean := False;
      --  Write-only. Defines the public protection of the IC10 configuration
      --  bits (enable, ready, divider).
      IC10PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the IC11 configuration
      --  bits (enable, ready, divider).
      IC11PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the IC12 configuration
      --  bits (enable, ready, divider).
      IC12PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the IC13 configuration
      --  bits (enable, ready, divider).
      IC13PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the IC14 configuration
      --  bits (enable, ready, divider).
      IC14PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the IC15 configuration
      --  bits (enable, ready, divider).
      IC15PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the IC16 configuration
      --  bits (enable, ready, divider).
      IC16PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the IC17 configuration
      --  bits (enable, ready, divider).
      IC17PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the IC18 configuration
      --  bits (enable, ready, divider).
      IC18PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the IC19 configuration
      --  bits (enable, ready, divider).
      IC19PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the IC20 configuration
      --  bits (enable, ready, divider).
      IC20PUBS       : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGSR2_Register use record
      IC1PUBS        at 0 range 0 .. 0;
      IC2PUBS        at 0 range 1 .. 1;
      IC3PUBS        at 0 range 2 .. 2;
      IC4PUBS        at 0 range 3 .. 3;
      IC5PUBS        at 0 range 4 .. 4;
      IC6PUBS        at 0 range 5 .. 5;
      IC7PUBS        at 0 range 6 .. 6;
      IC8PUBS        at 0 range 7 .. 7;
      IC9PUBS        at 0 range 8 .. 8;
      IC10PUBS       at 0 range 9 .. 9;
      IC11PUBS       at 0 range 10 .. 10;
      IC12PUBS       at 0 range 11 .. 11;
      IC13PUBS       at 0 range 12 .. 12;
      IC14PUBS       at 0 range 13 .. 13;
      IC15PUBS       at 0 range 14 .. 14;
      IC16PUBS       at 0 range 15 .. 15;
      IC17PUBS       at 0 range 16 .. 16;
      IC18PUBS       at 0 range 17 .. 17;
      IC19PUBS       at 0 range 18 .. 18;
      IC20PUBS       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC system secure configuration register3
   type RCC_SECCFGSR3_Register is record
      --  Write-only. Defines the secure protection of the MOD configuration
      --  bits (enable, ready, divider).
      MODSECS       : Boolean := False;
      --  Write-only. Defines the secure protection of the SYS configuration
      --  bits (enable, ready, divider).
      SYSSECS       : Boolean := False;
      --  Write-only. Defines the secure protection of the BUS configuration
      --  bits (enable, ready, divider).
      BUSSECS       : Boolean := False;
      --  Write-only. Defines the secure protection of the PER configuration
      --  bits (enable, ready, divider).
      PERSECS       : Boolean := False;
      --  Write-only. Defines the secure protection of the INT configuration
      --  bits (enable, ready, divider).
      INTSECS       : Boolean := False;
      --  Write-only. Defines the secure protection of the RST configuration
      --  bits (enable, ready, divider).
      RSTSECS       : Boolean := False;
      --  Write-only. Defines the secure protection of the DFT configuration
      --  bits (enable, ready, divider).
      DFTSECS       : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SECCFGSR3_Register use record
      MODSECS       at 0 range 0 .. 0;
      SYSSECS       at 0 range 1 .. 1;
      BUSSECS       at 0 range 2 .. 2;
      PERSECS       at 0 range 3 .. 3;
      INTSECS       at 0 range 4 .. 4;
      RSTSECS       at 0 range 5 .. 5;
      DFTSECS       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC system privilege configuration register3
   type RCC_PRIVCFGSR3_Register is record
      --  Write-only. Defines the privilege protection of the MOD configuration
      --  bits (enable, ready, divider).
      MODPVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the SYS configuration
      --  bits (enable, ready, divider).
      SYSPVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the BUS configuration
      --  bits (enable, ready, divider).
      BUSPVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the PER configuration
      --  bits (enable, ready, divider).
      PERPVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the INT configuration
      --  bits (enable, ready, divider).
      INTPVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the RST configuration
      --  bits (enable, ready, divider).
      RSTPVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the DFT configuration
      --  bits (enable, ready, divider).
      DFTPVS        : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGSR3_Register use record
      MODPVS        at 0 range 0 .. 0;
      SYSPVS        at 0 range 1 .. 1;
      BUSPVS        at 0 range 2 .. 2;
      PERPVS        at 0 range 3 .. 3;
      INTPVS        at 0 range 4 .. 4;
      RSTPVS        at 0 range 5 .. 5;
      DFTPVS        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC system lock configuration register3
   type RCC_LOCKCFGSR3_Register is record
      --  Write-only. Defines the lock protection of the MOD configuration bits
      --  (enable, ready, divider).
      MODLOCKS      : Boolean := False;
      --  Write-only. Defines the lock protection of the SYS configuration bits
      --  (enable, ready, divider).
      SYSLOCKS      : Boolean := False;
      --  Write-only. Defines the lock protection of the BUS configuration bits
      --  (enable, ready, divider).
      BUSLOCKS      : Boolean := False;
      --  Write-only. Defines the lock protection of the PER configuration bits
      --  (enable, ready, divider).
      PERLOCKS      : Boolean := False;
      --  Write-only. Defines the lock protection of the INT configuration bits
      --  (enable, ready, divider).
      INTLOCKS      : Boolean := False;
      --  Write-only. Defines the lock protection of the RST configuration bits
      --  (enable, ready, divider).
      RSTLOCKS      : Boolean := False;
      --  Write-only. Defines the lock protection of the DFT configuration bits
      --  (enable, ready, divider).
      DFTLOCKS      : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LOCKCFGSR3_Register use record
      MODLOCKS      at 0 range 0 .. 0;
      SYSLOCKS      at 0 range 1 .. 1;
      BUSLOCKS      at 0 range 2 .. 2;
      PERLOCKS      at 0 range 3 .. 3;
      INTLOCKS      at 0 range 4 .. 4;
      RSTLOCKS      at 0 range 5 .. 5;
      DFTLOCKS      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC system public configuration register3
   type RCC_PUBCFGSR3_Register is record
      --  Write-only. Defines the public protection of the MOD configuration
      --  bits (enable, ready, divider).
      MODPUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the SYS configuration
      --  bits (enable, ready, divider).
      SYSPUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the BUS configuration
      --  bits (enable, ready, divider).
      BUSPUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the PER configuration
      --  bits (enable, ready, divider).
      PERPUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the INT configuration
      --  bits (enable, ready, divider).
      INTPUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the RST configuration
      --  bits (enable, ready, divider).
      RSTPUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the DFT configuration
      --  bits (enable, ready, divider).
      DFTPUBS       : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGSR3_Register use record
      MODPUBS       at 0 range 0 .. 0;
      SYSPUBS       at 0 range 1 .. 1;
      BUSPUBS       at 0 range 2 .. 2;
      PERPUBS       at 0 range 3 .. 3;
      INTPUBS       at 0 range 4 .. 4;
      RSTPUBS       at 0 range 5 .. 5;
      DFTPUBS       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC privilege configuration register4
   type RCC_PRIVCFGSR4_Register is record
      --  Write-only. Defines the privilege protection of the ACLKN
      --  configuration bits (enable, ready, divider).
      ACLKNPVS       : Boolean := False;
      --  Write-only. Defines the privilege protection of the ACLKNC
      --  configuration bits (enable, ready, divider).
      ACLKNCPVS      : Boolean := False;
      --  Write-only. Defines the privilege protection of the AHBM
      --  configuration bits (enable, ready, divider).
      AHBMPVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the AHB1
      --  configuration bits (enable, ready, divider).
      AHB1PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the AHB2
      --  configuration bits (enable, ready, divider).
      AHB2PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the AHB3
      --  configuration bits (enable, ready, divider).
      AHB3PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the AHB4
      --  configuration bits (enable, ready, divider).
      AHB4PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the AHB5
      --  configuration bits (enable, ready, divider).
      AHB5PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the APB1
      --  configuration bits (enable, ready, divider).
      APB1PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the APB2
      --  configuration bits (enable, ready, divider).
      APB2PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the APB3
      --  configuration bits (enable, ready, divider).
      APB3PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the APB4
      --  configuration bits (enable, ready, divider).
      APB4PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the APB5
      --  configuration bits (enable, ready, divider).
      APB5PVS        : Boolean := False;
      --  Write-only. Defines the privilege protection of the NOC configuration
      --  bits (enable, ready, divider).
      NOCPVS         : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGSR4_Register use record
      ACLKNPVS       at 0 range 0 .. 0;
      ACLKNCPVS      at 0 range 1 .. 1;
      AHBMPVS        at 0 range 2 .. 2;
      AHB1PVS        at 0 range 3 .. 3;
      AHB2PVS        at 0 range 4 .. 4;
      AHB3PVS        at 0 range 5 .. 5;
      AHB4PVS        at 0 range 6 .. 6;
      AHB5PVS        at 0 range 7 .. 7;
      APB1PVS        at 0 range 8 .. 8;
      APB2PVS        at 0 range 9 .. 9;
      APB3PVS        at 0 range 10 .. 10;
      APB4PVS        at 0 range 11 .. 11;
      APB5PVS        at 0 range 12 .. 12;
      NOCPVS         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RCC public configuration register4
   type RCC_PUBCFGSR4_Register is record
      --  Write-only. Defines the public protection of the ACLKN configuration
      --  bits (enable, ready, divider).
      ACLKNPUBS      : Boolean := False;
      --  Write-only. Defines the public protection of the ACLKNC configuration
      --  bits (enable, ready, divider).
      ACLKNCPUBS     : Boolean := False;
      --  Write-only. Defines the public protection of the AHBM configuration
      --  bits (enable, ready, divider).
      AHBMPUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the AHB1 configuration
      --  bits (enable, ready, divider).
      AHB1PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the AHB2 configuration
      --  bits (enable, ready, divider).
      AHB2PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the AHB3 configuration
      --  bits (enable, ready, divider).
      AHB3PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the AHB4 configuration
      --  bits (enable, ready, divider).
      AHB4PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the AHB5 configuration
      --  bits (enable, ready, divider).
      AHB5PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the APB1 configuration
      --  bits (enable, ready, divider).
      APB1PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the APB2 configuration
      --  bits (enable, ready, divider).
      APB2PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the APB3 configuration
      --  bits (enable, ready, divider).
      APB3PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the APB4 configuration
      --  bits (enable, ready, divider).
      APB4PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the APB5 configuration
      --  bits (enable, ready, divider).
      APB5PUBS       : Boolean := False;
      --  Write-only. Defines the public protection of the NOC configuration
      --  bits (enable, ready, divider).
      NOCPUBS        : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGSR4_Register use record
      ACLKNPUBS      at 0 range 0 .. 0;
      ACLKNCPUBS     at 0 range 1 .. 1;
      AHBMPUBS       at 0 range 2 .. 2;
      AHB1PUBS       at 0 range 3 .. 3;
      AHB2PUBS       at 0 range 4 .. 4;
      AHB3PUBS       at 0 range 5 .. 5;
      AHB4PUBS       at 0 range 6 .. 6;
      AHB5PUBS       at 0 range 7 .. 7;
      APB1PUBS       at 0 range 8 .. 8;
      APB2PUBS       at 0 range 9 .. 9;
      APB3PUBS       at 0 range 10 .. 10;
      APB4PUBS       at 0 range 11 .. 11;
      APB5PUBS       at 0 range 12 .. 12;
      NOCPUBS        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RCC public configuration register4
   type RCC_PUBCFGSR5_Register is record
      --  Write-only. Defines the public protection of the AXISRAM3
      --  configuration bits (enable, ready, divider).
      AXISRAM3PUBS    : Boolean := False;
      --  Write-only. Defines the public protection of the AXISRAM4
      --  configuration bits (enable, ready, divider).
      AXISRAM4PUBS    : Boolean := False;
      --  Write-only. Defines the public protection of the AXISRAM5
      --  configuration bits (enable, ready, divider).
      AXISRAM5PUBS    : Boolean := False;
      --  Write-only. Defines the public protection of the AXISRAM6
      --  configuration bits (enable, ready, divider).
      AXISRAM6PUBS    : Boolean := False;
      --  Write-only. Defines the public protection of the AHBSRAM1
      --  configuration bits (enable, ready, divider).
      AHBSRAM1PUBS    : Boolean := False;
      --  Write-only. Defines the public protection of the AHBSRAM2
      --  configuration bits (enable, ready, divider).
      AHBSRAM2PUBS    : Boolean := False;
      --  Write-only. Defines the public protection of the BKPSRAM
      --  configuration bits (enable, ready, divider).
      BKPSRAMPUBS     : Boolean := False;
      --  Write-only. Defines the public protection of the AXISRAM1
      --  configuration bits (enable, ready, divider).
      AXISRAM1PUBS    : Boolean := False;
      --  Write-only. Defines the public protection of the AXISRAM2
      --  configuration bits (enable, ready, divider).
      AXISRAM2PUBS    : Boolean := False;
      --  Write-only. Defines the public protection of the FLEXRAM
      --  configuration bits (enable, ready, divider).
      FLEXRAMPUBS     : Boolean := False;
      --  Write-only. Defines the public protection of the NPUCACHERAM
      --  configuration bits (enable, ready, divider).
      NPUCACHERAMPUBS : Boolean := False;
      --  Write-only. Defines the public protection of the VENCRAM
      --  configuration bits (enable, ready, divider).
      VENCRAMPUBS     : Boolean := False;
      --  unspecified
      Reserved_12_31  : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGSR5_Register use record
      AXISRAM3PUBS    at 0 range 0 .. 0;
      AXISRAM4PUBS    at 0 range 1 .. 1;
      AXISRAM5PUBS    at 0 range 2 .. 2;
      AXISRAM6PUBS    at 0 range 3 .. 3;
      AHBSRAM1PUBS    at 0 range 4 .. 4;
      AHBSRAM2PUBS    at 0 range 5 .. 5;
      BKPSRAMPUBS     at 0 range 6 .. 6;
      AXISRAM1PUBS    at 0 range 7 .. 7;
      AXISRAM2PUBS    at 0 range 8 .. 8;
      FLEXRAMPUBS     at 0 range 9 .. 9;
      NPUCACHERAMPUBS at 0 range 10 .. 10;
      VENCRAMPUBS     at 0 range 11 .. 11;
      Reserved_12_31  at 0 range 12 .. 31;
   end record;

   --  RCC control Clear register
   type RCC_CCR_Register is record
      --  Write-only. LSI oscillator enable in Run/Sleep mode.
      LSIONC         : Boolean := False;
      --  Write-only. LSE oscillator enable in Run/Sleep mode.
      LSEONC         : Boolean := False;
      --  Write-only. MSI oscillator enable in Run/Sleep mode.
      MSIONC         : Boolean := False;
      --  Write-only. HSI oscillator enable in Run/Sleep mode.
      HSIONC         : Boolean := False;
      --  Write-only. HSE oscillator enable in Run/Sleep mode.
      HSEONC         : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. PLL1 oscillator enable in Run/Sleep mode.
      PLL1ONC        : Boolean := False;
      --  Write-only. PLL2 oscillator enable in Run/Sleep mode.
      PLL2ONC        : Boolean := False;
      --  Write-only. PLL3 oscillator enable in Run/Sleep mode.
      PLL3ONC        : Boolean := False;
      --  Write-only. PLL4 oscillator enable in Run/Sleep mode.
      PLL4ONC        : Boolean := False;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCR_Register use record
      LSIONC         at 0 range 0 .. 0;
      LSEONC         at 0 range 1 .. 1;
      MSIONC         at 0 range 2 .. 2;
      HSIONC         at 0 range 3 .. 3;
      HSEONC         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PLL1ONC        at 0 range 8 .. 8;
      PLL2ONC        at 0 range 9 .. 9;
      PLL3ONC        at 0 range 10 .. 10;
      PLL4ONC        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  RCC StopCCR configuration register
   type RCC_STOPCCR_Register is record
      --  Write-only. LSI oscillator enable in Run/Sleep mode.
      LSISTOPENC    : Boolean := False;
      --  Write-only. LSE oscillator enable in Run/Sleep mode.
      LSESTOPENC    : Boolean := False;
      --  Write-only. MSI oscillator enable in Run/Sleep mode.
      MSISTOPENC    : Boolean := False;
      --  Write-only. HSI oscillator enable in Run/Sleep mode.
      HSISTOPENC    : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_STOPCCR_Register use record
      LSISTOPENC    at 0 range 0 .. 0;
      LSESTOPENC    at 0 range 1 .. 1;
      MSISTOPENC    at 0 range 2 .. 2;
      HSISTOPENC    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC bus reset register
   type RCC_BUSRSTCR_Register is record
      --  Write-only. ACLKN reset
      ACLKNRSTC      : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. AHBM reset
      AHBMRSTC       : Boolean := False;
      --  Write-only. AHB1 reset
      AHB1RSTC       : Boolean := False;
      --  Write-only. AHB2 reset
      AHB2RSTC       : Boolean := False;
      --  Write-only. AHB3 reset
      AHB3RSTC       : Boolean := False;
      --  Write-only. AHB4 reset
      AHB4RSTC       : Boolean := False;
      --  Write-only. AHB5 reset
      AHB5RSTC       : Boolean := False;
      --  Write-only. APB1 reset
      APB1RSTC       : Boolean := False;
      --  Write-only. APB2 reset
      APB2RSTC       : Boolean := False;
      --  Write-only. APB3 reset
      APB3RSTC       : Boolean := False;
      --  Write-only. APB4 reset
      APB4RSTC       : Boolean := False;
      --  Write-only. APB5 reset
      APB5RSTC       : Boolean := False;
      --  Write-only. NOC reset
      NOCRSTC        : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_BUSRSTCR_Register use record
      ACLKNRSTC      at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      AHBMRSTC       at 0 range 2 .. 2;
      AHB1RSTC       at 0 range 3 .. 3;
      AHB2RSTC       at 0 range 4 .. 4;
      AHB3RSTC       at 0 range 5 .. 5;
      AHB4RSTC       at 0 range 6 .. 6;
      AHB5RSTC       at 0 range 7 .. 7;
      APB1RSTC       at 0 range 8 .. 8;
      APB2RSTC       at 0 range 9 .. 9;
      APB3RSTC       at 0 range 10 .. 10;
      APB4RSTC       at 0 range 11 .. 11;
      APB5RSTC       at 0 range 12 .. 12;
      NOCRSTC        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RCC miscellaneous reset register
   type RCC_MISCRSTCR_Register is record
      --  Write-only. DBG reset
      DBGRSTC       : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. XSPIPHY1 reset
      XSPIPHY1RSTC  : Boolean := False;
      --  Write-only. XSPIPHY2 reset
      XSPIPHY2RSTC  : Boolean := False;
      --  unspecified
      Reserved_6_6  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. SDMMC1DLL reset
      SDMMC1DLLRSTC : Boolean := False;
      --  Write-only. SDMMC2DLL reset
      SDMMC2DLLRSTC : Boolean := False;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MISCRSTCR_Register use record
      DBGRSTC       at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      XSPIPHY1RSTC  at 0 range 4 .. 4;
      XSPIPHY2RSTC  at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      SDMMC1DLLRSTC at 0 range 7 .. 7;
      SDMMC2DLLRSTC at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RCC memory reset register
   type RCC_MEMRSTCR_Register is record
      --  Write-only. AXISRAM3 reset
      AXISRAM3RSTC    : Boolean := False;
      --  Write-only. AXISRAM4 reset
      AXISRAM4RSTC    : Boolean := False;
      --  Write-only. AXISRAM5 reset
      AXISRAM5RSTC    : Boolean := False;
      --  Write-only. AXISRAM6 reset
      AXISRAM6RSTC    : Boolean := False;
      --  Write-only. AHBSRAM1 reset
      AHBSRAM1RSTC    : Boolean := False;
      --  Write-only. AHBSRAM2 reset
      AHBSRAM2RSTC    : Boolean := False;
      --  unspecified
      Reserved_6_6    : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. AXISRAM1 reset
      AXISRAM1RSTC    : Boolean := False;
      --  Write-only. AXISRAM2 reset
      AXISRAM2RSTC    : Boolean := False;
      --  Write-only. FLEXRAM reset
      FLEXRAMRSTC     : Boolean := False;
      --  Write-only. NPUCACHERAM reset
      NPUCACHERAMRSTC : Boolean := False;
      --  Write-only. VENCRAM reset
      VENCRAMRSTC     : Boolean := False;
      --  Write-only. BOOTROM reset
      BOOTROMRSTC     : Boolean := False;
      --  unspecified
      Reserved_13_31  : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MEMRSTCR_Register use record
      AXISRAM3RSTC    at 0 range 0 .. 0;
      AXISRAM4RSTC    at 0 range 1 .. 1;
      AXISRAM5RSTC    at 0 range 2 .. 2;
      AXISRAM6RSTC    at 0 range 3 .. 3;
      AHBSRAM1RSTC    at 0 range 4 .. 4;
      AHBSRAM2RSTC    at 0 range 5 .. 5;
      Reserved_6_6    at 0 range 6 .. 6;
      AXISRAM1RSTC    at 0 range 7 .. 7;
      AXISRAM2RSTC    at 0 range 8 .. 8;
      FLEXRAMRSTC     at 0 range 9 .. 9;
      NPUCACHERAMRSTC at 0 range 10 .. 10;
      VENCRAMRSTC     at 0 range 11 .. 11;
      BOOTROMRSTC     at 0 range 12 .. 12;
      Reserved_13_31  at 0 range 13 .. 31;
   end record;

   --  RCC AHB1 reset register
   type RCC_AHB1RSTCR_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. GPDMA1 reset
      GPDMA1RSTC    : Boolean := False;
      --  Write-only. ADC12 reset
      ADC12RSTC     : Boolean := False;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1RSTCR_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      GPDMA1RSTC    at 0 range 4 .. 4;
      ADC12RSTC     at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RCC AHB2 Reset register
   type RCC_AHB2RSTCR_Register is record
      --  unspecified
      Reserved_0_11  : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Write-only. RAMCFG reset
      RAMCFGRSTC     : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. MDF1 reset
      MDF1RSTC       : Boolean := False;
      --  Write-only. ADF1 reset
      ADF1RSTC       : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2RSTCR_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      RAMCFGRSTC     at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      MDF1RSTC       at 0 range 16 .. 16;
      ADF1RSTC       at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  RCC AHB3 reset register
   type RCC_AHB3RSTCR_Register is record
      --  Write-only. RNG reset
      RNGRSTC        : Boolean := False;
      --  Write-only. HASH reset
      HASHRSTC       : Boolean := False;
      --  Write-only. CRYP reset
      CRYPRSTC       : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. SAES reset
      SAESRSTC       : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. PKA reset
      PKARSTC        : Boolean := False;
      --  unspecified
      Reserved_9_9   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. IAC reset
      IACRSTC        : Boolean := False;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB3RSTCR_Register use record
      RNGRSTC        at 0 range 0 .. 0;
      HASHRSTC       at 0 range 1 .. 1;
      CRYPRSTC       at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SAESRSTC       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PKARSTC        at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      IACRSTC        at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  RCC AHB4 reset register
   type RCC_AHB4RSTCR_Register is record
      --  Write-only. GPIOA reset
      GPIOARSTC      : Boolean := False;
      --  Write-only. GPIOB reset
      GPIOBRSTC      : Boolean := False;
      --  Write-only. GPIOC reset
      GPIOCRSTC      : Boolean := False;
      --  Write-only. GPIOD reset
      GPIODRSTC      : Boolean := False;
      --  Write-only. GPIOE reset
      GPIOERSTC      : Boolean := False;
      --  Write-only. GPIOF reset
      GPIOFRSTC      : Boolean := False;
      --  Write-only. GPIOG reset
      GPIOGRSTC      : Boolean := False;
      --  Write-only. GPIOH reset
      GPIOHRSTC      : Boolean := False;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. GPION reset
      GPIONRSTC      : Boolean := False;
      --  Write-only. GPIOO reset
      GPIOORSTC      : Boolean := False;
      --  Write-only. GPIOP reset
      GPIOPRSTC      : Boolean := False;
      --  Write-only. GPIOQ reset
      GPIOQRSTC      : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. PWR reset
      PWRRSTC        : Boolean := False;
      --  Write-only. CRC reset
      CRCRSTC        : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB4RSTCR_Register use record
      GPIOARSTC      at 0 range 0 .. 0;
      GPIOBRSTC      at 0 range 1 .. 1;
      GPIOCRSTC      at 0 range 2 .. 2;
      GPIODRSTC      at 0 range 3 .. 3;
      GPIOERSTC      at 0 range 4 .. 4;
      GPIOFRSTC      at 0 range 5 .. 5;
      GPIOGRSTC      at 0 range 6 .. 6;
      GPIOHRSTC      at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      GPIONRSTC      at 0 range 13 .. 13;
      GPIOORSTC      at 0 range 14 .. 14;
      GPIOPRSTC      at 0 range 15 .. 15;
      GPIOQRSTC      at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PWRRSTC        at 0 range 18 .. 18;
      CRCRSTC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC AHB5 reset register
   type RCC_AHB5RSTCR_Register is record
      --  Write-only. HPDMA1 reset
      HPDMA1RSTC          : Boolean := False;
      --  Write-only. DMA2D reset
      DMA2DRSTC           : Boolean := False;
      --  unspecified
      Reserved_2_2        : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. JPEG reset
      JPEGRSTC            : Boolean := False;
      --  Write-only. FMC reset
      FMCRSTC             : Boolean := False;
      --  Write-only. XSPI1 reset
      XSPI1RSTC           : Boolean := False;
      --  Write-only. PSSI reset
      PSSIRSTC            : Boolean := False;
      --  Write-only. SDMMC2 reset
      SDMMC2RSTC          : Boolean := False;
      --  Write-only. SDMMC1 reset
      SDMMC1RSTC          : Boolean := False;
      --  unspecified
      Reserved_9_11       : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. XSPI2 reset
      XSPI2RSTC           : Boolean := False;
      --  Write-only. XSPIM reset
      XSPIMRSTC           : Boolean := False;
      --  unspecified
      Reserved_14_16      : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. XSPI3 reset
      XSPI3RSTC           : Boolean := False;
      --  Write-only. MCE4 reset
      MCE4RSTC            : Boolean := False;
      --  Write-only. GFXMMU reset
      GFXMMURSTC          : Boolean := False;
      --  Write-only. GPU reset
      GPURSTC             : Boolean := False;
      --  unspecified
      Reserved_21_22      : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. SYSCFGOTGHSPHY1 reset
      SYSCFGOTGHSPHY1RSTC : Boolean := False;
      --  Write-only. SYSCFGOTGHSPHY2 reset
      SYSCFGOTGHSPHY2RSTC : Boolean := False;
      --  Write-only. ETH1 reset
      ETH1RSTC            : Boolean := False;
      --  Write-only. OTG1 reset
      OTG1RSTC            : Boolean := False;
      --  Write-only. OTGPHY1 reset
      OTGPHY1RSTC         : Boolean := False;
      --  Write-only. OTGPHY2 reset
      OTGPHY2RSTC         : Boolean := False;
      --  Write-only. OTG2 reset
      OTG2RSTC            : Boolean := False;
      --  Write-only. NPUCACHE reset
      NPUCACHERSTC        : Boolean := False;
      --  Write-only. NPU reset
      NPURSTC             : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB5RSTCR_Register use record
      HPDMA1RSTC          at 0 range 0 .. 0;
      DMA2DRSTC           at 0 range 1 .. 1;
      Reserved_2_2        at 0 range 2 .. 2;
      JPEGRSTC            at 0 range 3 .. 3;
      FMCRSTC             at 0 range 4 .. 4;
      XSPI1RSTC           at 0 range 5 .. 5;
      PSSIRSTC            at 0 range 6 .. 6;
      SDMMC2RSTC          at 0 range 7 .. 7;
      SDMMC1RSTC          at 0 range 8 .. 8;
      Reserved_9_11       at 0 range 9 .. 11;
      XSPI2RSTC           at 0 range 12 .. 12;
      XSPIMRSTC           at 0 range 13 .. 13;
      Reserved_14_16      at 0 range 14 .. 16;
      XSPI3RSTC           at 0 range 17 .. 17;
      MCE4RSTC            at 0 range 18 .. 18;
      GFXMMURSTC          at 0 range 19 .. 19;
      GPURSTC             at 0 range 20 .. 20;
      Reserved_21_22      at 0 range 21 .. 22;
      SYSCFGOTGHSPHY1RSTC at 0 range 23 .. 23;
      SYSCFGOTGHSPHY2RSTC at 0 range 24 .. 24;
      ETH1RSTC            at 0 range 25 .. 25;
      OTG1RSTC            at 0 range 26 .. 26;
      OTGPHY1RSTC         at 0 range 27 .. 27;
      OTGPHY2RSTC         at 0 range 28 .. 28;
      OTG2RSTC            at 0 range 29 .. 29;
      NPUCACHERSTC        at 0 range 30 .. 30;
      NPURSTC             at 0 range 31 .. 31;
   end record;

   --  RCC APB1L reset register
   type RCC_APB1LRSTCR_Register is record
      --  Write-only. TIM2 reset
      TIM2RSTC       : Boolean := False;
      --  Write-only. TIM3 reset
      TIM3RSTC       : Boolean := False;
      --  Write-only. TIM4 reset
      TIM4RSTC       : Boolean := False;
      --  Write-only. TIM5 reset
      TIM5RSTC       : Boolean := False;
      --  Write-only. TIM6 reset
      TIM6RSTC       : Boolean := False;
      --  Write-only. TIM7 reset
      TIM7RSTC       : Boolean := False;
      --  Write-only. TIM12 reset
      TIM12RSTC      : Boolean := False;
      --  Write-only. TIM13 reset
      TIM13RSTC      : Boolean := False;
      --  Write-only. TIM14 reset
      TIM14RSTC      : Boolean := False;
      --  Write-only. LPTIM1 reset
      LPTIM1RSTC     : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. WWDG reset
      WWDGRSTC       : Boolean := False;
      --  Write-only. TIM10 reset
      TIM10RSTC      : Boolean := False;
      --  Write-only. TIM11 reset
      TIM11RSTC      : Boolean := False;
      --  Write-only. SPI2 reset
      SPI2RSTC       : Boolean := False;
      --  Write-only. SPI3 reset
      SPI3RSTC       : Boolean := False;
      --  Write-only. SPDIFRX1 reset
      SPDIFRX1RSTC   : Boolean := False;
      --  Write-only. USART2 reset
      USART2RSTC     : Boolean := False;
      --  Write-only. USART3 reset
      USART3RSTC     : Boolean := False;
      --  Write-only. UART4 reset
      UART4RSTC      : Boolean := False;
      --  Write-only. UART5 reset
      UART5RSTC      : Boolean := False;
      --  Write-only. I2C1 reset
      I2C1RSTC       : Boolean := False;
      --  Write-only. I2C2 reset
      I2C2RSTC       : Boolean := False;
      --  Write-only. I2C3 reset
      I2C3RSTC       : Boolean := False;
      --  Write-only. I3C1 reset
      I3C1RSTC       : Boolean := False;
      --  Write-only. I3C2 reset
      I3C2RSTC       : Boolean := False;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. UART7 reset
      UART7RSTC      : Boolean := False;
      --  Write-only. UART8 reset
      UART8RSTC      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1LRSTCR_Register use record
      TIM2RSTC       at 0 range 0 .. 0;
      TIM3RSTC       at 0 range 1 .. 1;
      TIM4RSTC       at 0 range 2 .. 2;
      TIM5RSTC       at 0 range 3 .. 3;
      TIM6RSTC       at 0 range 4 .. 4;
      TIM7RSTC       at 0 range 5 .. 5;
      TIM12RSTC      at 0 range 6 .. 6;
      TIM13RSTC      at 0 range 7 .. 7;
      TIM14RSTC      at 0 range 8 .. 8;
      LPTIM1RSTC     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDGRSTC       at 0 range 11 .. 11;
      TIM10RSTC      at 0 range 12 .. 12;
      TIM11RSTC      at 0 range 13 .. 13;
      SPI2RSTC       at 0 range 14 .. 14;
      SPI3RSTC       at 0 range 15 .. 15;
      SPDIFRX1RSTC   at 0 range 16 .. 16;
      USART2RSTC     at 0 range 17 .. 17;
      USART3RSTC     at 0 range 18 .. 18;
      UART4RSTC      at 0 range 19 .. 19;
      UART5RSTC      at 0 range 20 .. 20;
      I2C1RSTC       at 0 range 21 .. 21;
      I2C2RSTC       at 0 range 22 .. 22;
      I2C3RSTC       at 0 range 23 .. 23;
      I3C1RSTC       at 0 range 24 .. 24;
      I3C2RSTC       at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      UART7RSTC      at 0 range 30 .. 30;
      UART8RSTC      at 0 range 31 .. 31;
   end record;

   --  RCC APB1H reset register
   type RCC_APB1HRSTCR_Register is record
      --  unspecified
      Reserved_0_4   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. MDIOS reset
      MDIOSRSTC      : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. FDCAN reset
      FDCANRSTC      : Boolean := False;
      --  unspecified
      Reserved_9_17  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Write-only. UCPD1 reset
      UCPD1RSTC      : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1HRSTCR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      MDIOSRSTC      at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FDCANRSTC      at 0 range 8 .. 8;
      Reserved_9_17  at 0 range 9 .. 17;
      UCPD1RSTC      at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  RCC APB2 reset register
   type RCC_APB2RSTCR_Register is record
      --  Write-only. TIM1 reset
      TIM1RSTC       : Boolean := False;
      --  Write-only. TIM8 reset
      TIM8RSTC       : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. USART1 reset
      USART1RSTC     : Boolean := False;
      --  Write-only. USART6 reset
      USART6RSTC     : Boolean := False;
      --  Write-only. UART9 reset
      UART9RSTC      : Boolean := False;
      --  Write-only. USART10 reset
      USART10RSTC    : Boolean := False;
      --  unspecified
      Reserved_8_11  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. SPI1 reset
      SPI1RSTC       : Boolean := False;
      --  Write-only. SPI4 reset
      SPI4RSTC       : Boolean := False;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. TIM18 reset
      TIM18RSTC      : Boolean := False;
      --  Write-only. TIM15 reset
      TIM15RSTC      : Boolean := False;
      --  Write-only. TIM16 reset
      TIM16RSTC      : Boolean := False;
      --  Write-only. TIM17 reset
      TIM17RSTC      : Boolean := False;
      --  Write-only. TIM9 reset
      TIM9RSTC       : Boolean := False;
      --  Write-only. SPI5 reset
      SPI5RSTC       : Boolean := False;
      --  Write-only. SAI1 reset
      SAI1RSTC       : Boolean := False;
      --  Write-only. SAI2 reset
      SAI2RSTC       : Boolean := False;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB2RSTCR_Register use record
      TIM1RSTC       at 0 range 0 .. 0;
      TIM8RSTC       at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      USART1RSTC     at 0 range 4 .. 4;
      USART6RSTC     at 0 range 5 .. 5;
      UART9RSTC      at 0 range 6 .. 6;
      USART10RSTC    at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SPI1RSTC       at 0 range 12 .. 12;
      SPI4RSTC       at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      TIM18RSTC      at 0 range 15 .. 15;
      TIM15RSTC      at 0 range 16 .. 16;
      TIM16RSTC      at 0 range 17 .. 17;
      TIM17RSTC      at 0 range 18 .. 18;
      TIM9RSTC       at 0 range 19 .. 19;
      SPI5RSTC       at 0 range 20 .. 20;
      SAI1RSTC       at 0 range 21 .. 21;
      SAI2RSTC       at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  RCC APB4L reset register
   type RCC_APB4LRSTCR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. HDP reset
      HDPRSTC        : Boolean := False;
      --  Write-only. LPUART1 reset
      LPUART1RSTC    : Boolean := False;
      --  unspecified
      Reserved_4_4   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. SPI6 reset
      SPI6RSTC       : Boolean := False;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. I2C4 reset
      I2C4RSTC       : Boolean := False;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. LPTIM2 reset
      LPTIM2RSTC     : Boolean := False;
      --  Write-only. LPTIM3 reset
      LPTIM3RSTC     : Boolean := False;
      --  Write-only. LPTIM4 reset
      LPTIM4RSTC     : Boolean := False;
      --  Write-only. LPTIM5 reset
      LPTIM5RSTC     : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. VREFBUF reset
      VREFBUFRSTC    : Boolean := False;
      --  Write-only. RTC reset
      RTCRSTC        : Boolean := False;
      --  unspecified
      Reserved_17_21 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. R2GRET reset
      R2GRETRSTC     : Boolean := False;
      --  Write-only. R2GNPU reset
      R2GNPURSTC     : Boolean := False;
      --  unspecified
      Reserved_24_30 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. SERF reset
      SERFRSTC       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4LRSTCR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      HDPRSTC        at 0 range 2 .. 2;
      LPUART1RSTC    at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SPI6RSTC       at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      I2C4RSTC       at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LPTIM2RSTC     at 0 range 9 .. 9;
      LPTIM3RSTC     at 0 range 10 .. 10;
      LPTIM4RSTC     at 0 range 11 .. 11;
      LPTIM5RSTC     at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      VREFBUFRSTC    at 0 range 15 .. 15;
      RTCRSTC        at 0 range 16 .. 16;
      Reserved_17_21 at 0 range 17 .. 21;
      R2GRETRSTC     at 0 range 22 .. 22;
      R2GNPURSTC     at 0 range 23 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      SERFRSTC       at 0 range 31 .. 31;
   end record;

   --  RCC APB4H reset register
   type RCC_APB4HRSTCR_Register is record
      --  Write-only. SYSCFG reset
      SYSCFGRSTC    : Boolean := False;
      --  unspecified
      Reserved_1_1  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. DTS reset
      DTSRSTC       : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. BUSPERFM reset
      BUSPERFMRSTC  : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4HRSTCR_Register use record
      SYSCFGRSTC    at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DTSRSTC       at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      BUSPERFMRSTC  at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC APB5 reset register
   type RCC_APB5RSTCR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. LTDC reset
      LTDCRSTC      : Boolean := False;
      --  Write-only. DCMIPP reset
      DCMIPPRSTC    : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. GFXTIM reset
      GFXTIMRSTC    : Boolean := False;
      --  Write-only. VENC reset
      VENCRSTC      : Boolean := False;
      --  Write-only. CSI reset
      CSIRSTC       : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB5RSTCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LTDCRSTC      at 0 range 1 .. 1;
      DCMIPPRSTC    at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      GFXTIMRSTC    at 0 range 4 .. 4;
      VENCRSTC      at 0 range 5 .. 5;
      CSIRSTC       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC divider enable register
   type RCC_DIVENCR_Register is record
      --  Write-only. IC1 enable
      IC1ENC         : Boolean := False;
      --  Write-only. IC2 enable
      IC2ENC         : Boolean := False;
      --  Write-only. IC3 enable
      IC3ENC         : Boolean := False;
      --  Write-only. IC4 enable
      IC4ENC         : Boolean := False;
      --  Write-only. IC5 enable
      IC5ENC         : Boolean := False;
      --  Write-only. IC6 enable
      IC6ENC         : Boolean := False;
      --  Write-only. IC7 enable
      IC7ENC         : Boolean := False;
      --  Write-only. IC8 enable
      IC8ENC         : Boolean := False;
      --  Write-only. IC9 enable
      IC9ENC         : Boolean := False;
      --  Write-only. IC10 enable
      IC10ENC        : Boolean := False;
      --  Write-only. IC11 enable
      IC11ENC        : Boolean := False;
      --  Write-only. IC12 enable
      IC12ENC        : Boolean := False;
      --  Write-only. IC13 enable
      IC13ENC        : Boolean := False;
      --  Write-only. IC14 enable
      IC14ENC        : Boolean := False;
      --  Write-only. IC15 enable
      IC15ENC        : Boolean := False;
      --  Write-only. IC16 enable
      IC16ENC        : Boolean := False;
      --  Write-only. IC17 enable
      IC17ENC        : Boolean := False;
      --  Write-only. IC18 enable
      IC18ENC        : Boolean := False;
      --  Write-only. IC19 enable
      IC19ENC        : Boolean := False;
      --  Write-only. IC20 enable
      IC20ENC        : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_DIVENCR_Register use record
      IC1ENC         at 0 range 0 .. 0;
      IC2ENC         at 0 range 1 .. 1;
      IC3ENC         at 0 range 2 .. 2;
      IC4ENC         at 0 range 3 .. 3;
      IC5ENC         at 0 range 4 .. 4;
      IC6ENC         at 0 range 5 .. 5;
      IC7ENC         at 0 range 6 .. 6;
      IC8ENC         at 0 range 7 .. 7;
      IC9ENC         at 0 range 8 .. 8;
      IC10ENC        at 0 range 9 .. 9;
      IC11ENC        at 0 range 10 .. 10;
      IC12ENC        at 0 range 11 .. 11;
      IC13ENC        at 0 range 12 .. 12;
      IC14ENC        at 0 range 13 .. 13;
      IC15ENC        at 0 range 14 .. 14;
      IC16ENC        at 0 range 15 .. 15;
      IC17ENC        at 0 range 16 .. 16;
      IC18ENC        at 0 range 17 .. 17;
      IC19ENC        at 0 range 18 .. 18;
      IC20ENC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC bus enable register
   type RCC_BUSENCR_Register is record
      --  Write-only. ACLKN enable
      ACLKNENC       : Boolean := False;
      --  Write-only. ACLKNC enable
      ACLKNCENC      : Boolean := False;
      --  Write-only. AHBM enable
      AHBMENC        : Boolean := False;
      --  Write-only. AHB1 enable
      AHB1ENC        : Boolean := False;
      --  Write-only. AHB2 enable
      AHB2ENC        : Boolean := False;
      --  Write-only. AHB3 enable
      AHB3ENC        : Boolean := False;
      --  Write-only. AHB4 enable
      AHB4ENC        : Boolean := False;
      --  Write-only. AHB5 enable
      AHB5ENC        : Boolean := False;
      --  Write-only. APB1 enable
      APB1ENC        : Boolean := False;
      --  Write-only. APB2 enable
      APB2ENC        : Boolean := False;
      --  Write-only. APB3 enable
      APB3ENC        : Boolean := False;
      --  Write-only. APB4 enable
      APB4ENC        : Boolean := False;
      --  Write-only. APB5 enable
      APB5ENC        : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_BUSENCR_Register use record
      ACLKNENC       at 0 range 0 .. 0;
      ACLKNCENC      at 0 range 1 .. 1;
      AHBMENC        at 0 range 2 .. 2;
      AHB1ENC        at 0 range 3 .. 3;
      AHB2ENC        at 0 range 4 .. 4;
      AHB3ENC        at 0 range 5 .. 5;
      AHB4ENC        at 0 range 6 .. 6;
      AHB5ENC        at 0 range 7 .. 7;
      APB1ENC        at 0 range 8 .. 8;
      APB2ENC        at 0 range 9 .. 9;
      APB3ENC        at 0 range 10 .. 10;
      APB4ENC        at 0 range 11 .. 11;
      APB5ENC        at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC miscellaneous enable register
   type RCC_MISCENCR_Register is record
      --  Write-only. DBG enable
      DBGENC         : Boolean := False;
      --  Write-only. MCO1 enable
      MCO1ENC        : Boolean := False;
      --  Write-only. MCO2 enable
      MCO2ENC        : Boolean := False;
      --  Write-only. XSPIPHYCOMP enable
      XSPIPHYCOMPENC : Boolean := False;
      --  unspecified
      Reserved_4_5   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PER enable
      PERENC         : Boolean := False;
      --  unspecified
      Reserved_7_31  : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MISCENCR_Register use record
      DBGENC         at 0 range 0 .. 0;
      MCO1ENC        at 0 range 1 .. 1;
      MCO2ENC        at 0 range 2 .. 2;
      XSPIPHYCOMPENC at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      PERENC         at 0 range 6 .. 6;
      Reserved_7_31  at 0 range 7 .. 31;
   end record;

   --  RCC memory enable register
   type RCC_MEMENCR_Register is record
      --  Write-only. AXISRAM3 enable
      AXISRAM3ENC    : Boolean := False;
      --  Write-only. AXISRAM4 enable
      AXISRAM4ENC    : Boolean := False;
      --  Write-only. AXISRAM5 enable
      AXISRAM5ENC    : Boolean := False;
      --  Write-only. AXISRAM6 enable
      AXISRAM6ENC    : Boolean := False;
      --  Write-only. AHBSRAM1 enable
      AHBSRAM1ENC    : Boolean := False;
      --  Write-only. AHBSRAM2 enable
      AHBSRAM2ENC    : Boolean := False;
      --  Write-only. BKPSRAM enable
      BKPSRAMENC     : Boolean := False;
      --  Write-only. AXISRAM1 enable
      AXISRAM1ENC    : Boolean := False;
      --  Write-only. AXISRAM2 enable
      AXISRAM2ENC    : Boolean := False;
      --  Write-only. FLEXRAM enable
      FLEXRAMENC     : Boolean := False;
      --  Write-only. NPUCACHERAM enable
      NPUCACHERAMENC : Boolean := False;
      --  Write-only. VENCRAM enable
      VENCRAMENC     : Boolean := False;
      --  Write-only. BOOTROM enable
      BOOTROMENC     : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MEMENCR_Register use record
      AXISRAM3ENC    at 0 range 0 .. 0;
      AXISRAM4ENC    at 0 range 1 .. 1;
      AXISRAM5ENC    at 0 range 2 .. 2;
      AXISRAM6ENC    at 0 range 3 .. 3;
      AHBSRAM1ENC    at 0 range 4 .. 4;
      AHBSRAM2ENC    at 0 range 5 .. 5;
      BKPSRAMENC     at 0 range 6 .. 6;
      AXISRAM1ENC    at 0 range 7 .. 7;
      AXISRAM2ENC    at 0 range 8 .. 8;
      FLEXRAMENC     at 0 range 9 .. 9;
      NPUCACHERAMENC at 0 range 10 .. 10;
      VENCRAMENC     at 0 range 11 .. 11;
      BOOTROMENC     at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC AHB1 enable register
   type RCC_AHB1ENCR_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. GPDMA1 enable
      GPDMA1ENC     : Boolean := False;
      --  Write-only. ADC12 enable
      ADC12ENC      : Boolean := False;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1ENCR_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      GPDMA1ENC     at 0 range 4 .. 4;
      ADC12ENC      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RCC AHB2 enable register
   type RCC_AHB2ENCR_Register is record
      --  unspecified
      Reserved_0_11  : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Write-only. RAMCFG enable
      RAMCFGENC      : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. MDF1 enable
      MDF1ENC        : Boolean := False;
      --  Write-only. ADF1 enable
      ADF1ENC        : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2ENCR_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      RAMCFGENC      at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      MDF1ENC        at 0 range 16 .. 16;
      ADF1ENC        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  RCC AHB3 enable register
   type RCC_AHB3ENCR_Register is record
      --  Write-only. RNG enable
      RNGENC         : Boolean := False;
      --  Write-only. HASH enable
      HASHENC        : Boolean := False;
      --  Write-only. CRYP enable
      CRYPENC        : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. SAES enable
      SAESENC        : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. PKA enable
      PKAENC         : Boolean := False;
      --  Write-only. RIFSC enable
      RIFSCENC       : Boolean := False;
      --  Write-only. IAC enable
      IACENC         : Boolean := False;
      --  unspecified
      Reserved_11_13 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RISAF enable
      RISAFENC       : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB3ENCR_Register use record
      RNGENC         at 0 range 0 .. 0;
      HASHENC        at 0 range 1 .. 1;
      CRYPENC        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SAESENC        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PKAENC         at 0 range 8 .. 8;
      RIFSCENC       at 0 range 9 .. 9;
      IACENC         at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      RISAFENC       at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  RCC AHB4 enable register
   type RCC_AHB4ENCR_Register is record
      --  Write-only. GPIOA enable
      GPIOAENC       : Boolean := False;
      --  Write-only. GPIOB enable
      GPIOBENC       : Boolean := False;
      --  Write-only. GPIOC enable
      GPIOCENC       : Boolean := False;
      --  Write-only. GPIOD enable
      GPIODENC       : Boolean := False;
      --  Write-only. GPIOE enable
      GPIOEENC       : Boolean := False;
      --  Write-only. GPIOF enable
      GPIOFENC       : Boolean := False;
      --  Write-only. GPIOG enable
      GPIOGENC       : Boolean := False;
      --  Write-only. GPIOH enable
      GPIOHENC       : Boolean := False;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. GPION enable
      GPIONENC       : Boolean := False;
      --  Write-only. GPIOO enable
      GPIOOENC       : Boolean := False;
      --  Write-only. GPIOP enable
      GPIOPENC       : Boolean := False;
      --  Write-only. GPIOQ enable
      GPIOQENC       : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. PWR enable
      PWRENC         : Boolean := False;
      --  Write-only. CRC enable
      CRCENC         : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB4ENCR_Register use record
      GPIOAENC       at 0 range 0 .. 0;
      GPIOBENC       at 0 range 1 .. 1;
      GPIOCENC       at 0 range 2 .. 2;
      GPIODENC       at 0 range 3 .. 3;
      GPIOEENC       at 0 range 4 .. 4;
      GPIOFENC       at 0 range 5 .. 5;
      GPIOGENC       at 0 range 6 .. 6;
      GPIOHENC       at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      GPIONENC       at 0 range 13 .. 13;
      GPIOOENC       at 0 range 14 .. 14;
      GPIOPENC       at 0 range 15 .. 15;
      GPIOQENC       at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PWRENC         at 0 range 18 .. 18;
      CRCENC         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC AHB5 enable register
   type RCC_AHB5ENCR_Register is record
      --  Write-only. HPDMA1 enable
      HPDMA1ENC      : Boolean := False;
      --  Write-only. DMA2D enable
      DMA2DENC       : Boolean := False;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. JPEG enable
      JPEGENC        : Boolean := False;
      --  Write-only. FMC enable
      FMCENC         : Boolean := False;
      --  Write-only. XSPI1 enable
      XSPI1ENC       : Boolean := False;
      --  Write-only. PSSI enable
      PSSIENC        : Boolean := False;
      --  Write-only. SDMMC2 enable
      SDMMC2ENC      : Boolean := False;
      --  Write-only. SDMMC1 enable
      SDMMC1ENC      : Boolean := False;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. XSPI2 enable
      XSPI2ENC       : Boolean := False;
      --  Write-only. XSPIM enable
      XSPIMENC       : Boolean := False;
      --  Write-only. MCE1 enable
      MCE1ENC        : Boolean := False;
      --  Write-only. MCE2 enable
      MCE2ENC        : Boolean := False;
      --  Write-only. MCE3 enable
      MCE3ENC        : Boolean := False;
      --  Write-only. XSPI3 enable
      XSPI3ENC       : Boolean := False;
      --  Write-only. MCE4 enable
      MCE4ENC        : Boolean := False;
      --  Write-only. GFXMMU enable
      GFXMMUENC      : Boolean := False;
      --  Write-only. GPU enable
      GPUENC         : Boolean := False;
      --  unspecified
      Reserved_21_21 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. ETH1MAC enable
      ETH1MACENC     : Boolean := False;
      --  Write-only. ETH1TX enable
      ETH1TXENC      : Boolean := False;
      --  Write-only. ETH1RX enable
      ETH1RXENC      : Boolean := False;
      --  Write-only. ETH1 enable
      ETH1ENC        : Boolean := False;
      --  Write-only. OTG1 enable
      OTG1ENC        : Boolean := False;
      --  Write-only. OTGPHY1 enable
      OTGPHY1ENC     : Boolean := False;
      --  Write-only. OTGPHY2 enable
      OTGPHY2ENC     : Boolean := False;
      --  Write-only. OTG2 enable
      OTG2ENC        : Boolean := False;
      --  Write-only. NPUCACHE enable
      NPUCACHEENC    : Boolean := False;
      --  Write-only. NPU enable
      NPUENC         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB5ENCR_Register use record
      HPDMA1ENC      at 0 range 0 .. 0;
      DMA2DENC       at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      JPEGENC        at 0 range 3 .. 3;
      FMCENC         at 0 range 4 .. 4;
      XSPI1ENC       at 0 range 5 .. 5;
      PSSIENC        at 0 range 6 .. 6;
      SDMMC2ENC      at 0 range 7 .. 7;
      SDMMC1ENC      at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      XSPI2ENC       at 0 range 12 .. 12;
      XSPIMENC       at 0 range 13 .. 13;
      MCE1ENC        at 0 range 14 .. 14;
      MCE2ENC        at 0 range 15 .. 15;
      MCE3ENC        at 0 range 16 .. 16;
      XSPI3ENC       at 0 range 17 .. 17;
      MCE4ENC        at 0 range 18 .. 18;
      GFXMMUENC      at 0 range 19 .. 19;
      GPUENC         at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      ETH1MACENC     at 0 range 22 .. 22;
      ETH1TXENC      at 0 range 23 .. 23;
      ETH1RXENC      at 0 range 24 .. 24;
      ETH1ENC        at 0 range 25 .. 25;
      OTG1ENC        at 0 range 26 .. 26;
      OTGPHY1ENC     at 0 range 27 .. 27;
      OTGPHY2ENC     at 0 range 28 .. 28;
      OTG2ENC        at 0 range 29 .. 29;
      NPUCACHEENC    at 0 range 30 .. 30;
      NPUENC         at 0 range 31 .. 31;
   end record;

   --  RCC APB1L enable register
   type RCC_APB1LENCR_Register is record
      --  Write-only. TIM2 enable
      TIM2ENC        : Boolean := False;
      --  Write-only. TIM3 enable
      TIM3ENC        : Boolean := False;
      --  Write-only. TIM4 enable
      TIM4ENC        : Boolean := False;
      --  Write-only. TIM5 enable
      TIM5ENC        : Boolean := False;
      --  Write-only. TIM6 enable
      TIM6ENC        : Boolean := False;
      --  Write-only. TIM7 enable
      TIM7ENC        : Boolean := False;
      --  Write-only. TIM12 enable
      TIM12ENC       : Boolean := False;
      --  Write-only. TIM13 enable
      TIM13ENC       : Boolean := False;
      --  Write-only. TIM14 enable
      TIM14ENC       : Boolean := False;
      --  Write-only. LPTIM1 enable
      LPTIM1ENC      : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. TIM10 enable
      TIM10ENC       : Boolean := False;
      --  Write-only. TIM11 enable
      TIM11ENC       : Boolean := False;
      --  Write-only. SPI2 enable
      SPI2ENC        : Boolean := False;
      --  Write-only. SPI3 enable
      SPI3ENC        : Boolean := False;
      --  Write-only. SPDIFRX1 enable
      SPDIFRX1ENC    : Boolean := False;
      --  Write-only. USART2 enable
      USART2ENC      : Boolean := False;
      --  Write-only. USART3 enable
      USART3ENC      : Boolean := False;
      --  Write-only. UART4 enable
      UART4ENC       : Boolean := False;
      --  Write-only. UART5 enable
      UART5ENC       : Boolean := False;
      --  Write-only. I2C1 enable
      I2C1ENC        : Boolean := False;
      --  Write-only. I2C2 enable
      I2C2ENC        : Boolean := False;
      --  Write-only. I2C3 enable
      I2C3ENC        : Boolean := False;
      --  Write-only. I3C1 enable
      I3C1ENC        : Boolean := False;
      --  Write-only. I3C2 enable
      I3C2ENC        : Boolean := False;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. UART7 enable
      UART7ENC       : Boolean := False;
      --  Write-only. UART8 enable
      UART8ENC       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1LENCR_Register use record
      TIM2ENC        at 0 range 0 .. 0;
      TIM3ENC        at 0 range 1 .. 1;
      TIM4ENC        at 0 range 2 .. 2;
      TIM5ENC        at 0 range 3 .. 3;
      TIM6ENC        at 0 range 4 .. 4;
      TIM7ENC        at 0 range 5 .. 5;
      TIM12ENC       at 0 range 6 .. 6;
      TIM13ENC       at 0 range 7 .. 7;
      TIM14ENC       at 0 range 8 .. 8;
      LPTIM1ENC      at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      TIM10ENC       at 0 range 12 .. 12;
      TIM11ENC       at 0 range 13 .. 13;
      SPI2ENC        at 0 range 14 .. 14;
      SPI3ENC        at 0 range 15 .. 15;
      SPDIFRX1ENC    at 0 range 16 .. 16;
      USART2ENC      at 0 range 17 .. 17;
      USART3ENC      at 0 range 18 .. 18;
      UART4ENC       at 0 range 19 .. 19;
      UART5ENC       at 0 range 20 .. 20;
      I2C1ENC        at 0 range 21 .. 21;
      I2C2ENC        at 0 range 22 .. 22;
      I2C3ENC        at 0 range 23 .. 23;
      I3C1ENC        at 0 range 24 .. 24;
      I3C2ENC        at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      UART7ENC       at 0 range 30 .. 30;
      UART8ENC       at 0 range 31 .. 31;
   end record;

   --  RCC APB1H enable register
   type RCC_APB1HENCR_Register is record
      --  unspecified
      Reserved_0_4   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. MDIOS enable
      MDIOSENC       : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. FDCAN enable
      FDCANENC       : Boolean := False;
      --  unspecified
      Reserved_9_17  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Write-only. UCPD1 enable
      UCPD1ENC       : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1HENCR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      MDIOSENC       at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FDCANENC       at 0 range 8 .. 8;
      Reserved_9_17  at 0 range 9 .. 17;
      UCPD1ENC       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  RCC APB2 enable register
   type RCC_APB2ENCR_Register is record
      --  Write-only. TIM1 enable
      TIM1ENC        : Boolean := False;
      --  Write-only. TIM8 enable
      TIM8ENC        : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. USART1 enable
      USART1ENC      : Boolean := False;
      --  Write-only. USART6 enable
      USART6ENC      : Boolean := False;
      --  Write-only. UART9 enable
      UART9ENC       : Boolean := False;
      --  Write-only. USART10 enable
      USART10ENC     : Boolean := False;
      --  unspecified
      Reserved_8_11  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. SPI1 enable
      SPI1ENC        : Boolean := False;
      --  Write-only. SPI4 enable
      SPI4ENC        : Boolean := False;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. TIM18 enable
      TIM18ENC       : Boolean := False;
      --  Write-only. TIM15 enable
      TIM15ENC       : Boolean := False;
      --  Write-only. TIM16 enable
      TIM16ENC       : Boolean := False;
      --  Write-only. TIM17 enable
      TIM17ENC       : Boolean := False;
      --  Write-only. TIM9 enable
      TIM9ENC        : Boolean := False;
      --  Write-only. SPI5 enable
      SPI5ENC        : Boolean := False;
      --  Write-only. SAI1 enable
      SAI1ENC        : Boolean := False;
      --  Write-only. SAI2 enable
      SAI2ENC        : Boolean := False;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB2ENCR_Register use record
      TIM1ENC        at 0 range 0 .. 0;
      TIM8ENC        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      USART1ENC      at 0 range 4 .. 4;
      USART6ENC      at 0 range 5 .. 5;
      UART9ENC       at 0 range 6 .. 6;
      USART10ENC     at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SPI1ENC        at 0 range 12 .. 12;
      SPI4ENC        at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      TIM18ENC       at 0 range 15 .. 15;
      TIM15ENC       at 0 range 16 .. 16;
      TIM16ENC       at 0 range 17 .. 17;
      TIM17ENC       at 0 range 18 .. 18;
      TIM9ENC        at 0 range 19 .. 19;
      SPI5ENC        at 0 range 20 .. 20;
      SAI1ENC        at 0 range 21 .. 21;
      SAI2ENC        at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  RCC APB3 enable register
   type RCC_APB3ENCR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. DFT enable
      DFTENC        : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB3ENCR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DFTENC        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC APB4L enable register
   type RCC_APB4LENCR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. HDP enable
      HDPENC         : Boolean := False;
      --  Write-only. LPUART1 enable
      LPUART1ENC     : Boolean := False;
      --  unspecified
      Reserved_4_4   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. SPI6 enable
      SPI6ENC        : Boolean := False;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. I2C4 enable
      I2C4ENC        : Boolean := False;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. LPTIM2 enable
      LPTIM2ENC      : Boolean := False;
      --  Write-only. LPTIM3 enable
      LPTIM3ENC      : Boolean := False;
      --  Write-only. LPTIM4 enable
      LPTIM4ENC      : Boolean := False;
      --  Write-only. LPTIM5 enable
      LPTIM5ENC      : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. VREFBUF enable
      VREFBUFENC     : Boolean := False;
      --  Write-only. RTC enable
      RTCENC         : Boolean := False;
      --  Write-only. RTCAPB enable
      RTCAPBENC      : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. R2GRET enable
      R2GRETENC      : Boolean := False;
      --  Write-only. R2GNPU enable
      R2GNPUENC      : Boolean := False;
      --  unspecified
      Reserved_24_30 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. SERF enable
      SERFENC        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4LENCR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      HDPENC         at 0 range 2 .. 2;
      LPUART1ENC     at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SPI6ENC        at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      I2C4ENC        at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LPTIM2ENC      at 0 range 9 .. 9;
      LPTIM3ENC      at 0 range 10 .. 10;
      LPTIM4ENC      at 0 range 11 .. 11;
      LPTIM5ENC      at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      VREFBUFENC     at 0 range 15 .. 15;
      RTCENC         at 0 range 16 .. 16;
      RTCAPBENC      at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      R2GRETENC      at 0 range 22 .. 22;
      R2GNPUENC      at 0 range 23 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      SERFENC        at 0 range 31 .. 31;
   end record;

   --  RCC APB4H enable register
   type RCC_APB4HENCR_Register is record
      --  Write-only. SYSCFG enable
      SYSCFGENC     : Boolean := False;
      --  Write-only. BSEC enable
      BSECENC       : Boolean := False;
      --  Write-only. DTS enable
      DTSENC        : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. BUSPERFM enable
      BUSPERFMENC   : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4HENCR_Register use record
      SYSCFGENC     at 0 range 0 .. 0;
      BSECENC       at 0 range 1 .. 1;
      DTSENC        at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      BUSPERFMENC   at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC APB5 enable register
   type RCC_APB5ENCR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. LTDC enable
      LTDCENC       : Boolean := False;
      --  Write-only. DCMIPP enable
      DCMIPPENC     : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. GFXTIM enable
      GFXTIMENC     : Boolean := False;
      --  Write-only. VENC enable
      VENCENC       : Boolean := False;
      --  Write-only. CSI enable
      CSIENC        : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB5ENCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LTDCENC       at 0 range 1 .. 1;
      DCMIPPENC     at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      GFXTIMENC     at 0 range 4 .. 4;
      VENCENC       at 0 range 5 .. 5;
      CSIENC        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC divider Sleep enable register
   type RCC_DIVLPENCR_Register is record
      --  Write-only. IC1 sleep enable
      IC1LPENC       : Boolean := False;
      --  Write-only. IC2 sleep enable
      IC2LPENC       : Boolean := False;
      --  Write-only. IC3 sleep enable
      IC3LPENC       : Boolean := False;
      --  Write-only. IC4 sleep enable
      IC4LPENC       : Boolean := False;
      --  Write-only. IC5 sleep enable
      IC5LPENC       : Boolean := False;
      --  Write-only. IC6 sleep enable
      IC6LPENC       : Boolean := False;
      --  Write-only. IC7 sleep enable
      IC7LPENC       : Boolean := False;
      --  Write-only. IC8 sleep enable
      IC8LPENC       : Boolean := False;
      --  Write-only. IC9 sleep enable
      IC9LPENC       : Boolean := False;
      --  Write-only. IC10 sleep enable
      IC10LPENC      : Boolean := False;
      --  Write-only. IC11 sleep enable
      IC11LPENC      : Boolean := False;
      --  Write-only. IC12 sleep enable
      IC12LPENC      : Boolean := False;
      --  Write-only. IC13 sleep enable
      IC13LPENC      : Boolean := False;
      --  Write-only. IC14 sleep enable
      IC14LPENC      : Boolean := False;
      --  Write-only. IC15 sleep enable
      IC15LPENC      : Boolean := False;
      --  Write-only. IC16 sleep enable
      IC16LPENC      : Boolean := False;
      --  Write-only. IC17 sleep enable
      IC17LPENC      : Boolean := False;
      --  Write-only. IC18 sleep enable
      IC18LPENC      : Boolean := False;
      --  Write-only. IC19 sleep enable
      IC19LPENC      : Boolean := False;
      --  Write-only. IC20 sleep enable
      IC20LPENC      : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_DIVLPENCR_Register use record
      IC1LPENC       at 0 range 0 .. 0;
      IC2LPENC       at 0 range 1 .. 1;
      IC3LPENC       at 0 range 2 .. 2;
      IC4LPENC       at 0 range 3 .. 3;
      IC5LPENC       at 0 range 4 .. 4;
      IC6LPENC       at 0 range 5 .. 5;
      IC7LPENC       at 0 range 6 .. 6;
      IC8LPENC       at 0 range 7 .. 7;
      IC9LPENC       at 0 range 8 .. 8;
      IC10LPENC      at 0 range 9 .. 9;
      IC11LPENC      at 0 range 10 .. 10;
      IC12LPENC      at 0 range 11 .. 11;
      IC13LPENC      at 0 range 12 .. 12;
      IC14LPENC      at 0 range 13 .. 13;
      IC15LPENC      at 0 range 14 .. 14;
      IC16LPENC      at 0 range 15 .. 15;
      IC17LPENC      at 0 range 16 .. 16;
      IC18LPENC      at 0 range 17 .. 17;
      IC19LPENC      at 0 range 18 .. 18;
      IC20LPENC      at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC bus Sleep enable register
   type RCC_BUSLPENCR_Register is record
      --  Write-only. ACLKN sleep enable
      ACLKNLPENC     : Boolean := False;
      --  Write-only. ACLKNC sleep enable
      ACLKNCLPENC    : Boolean := False;
      --  Write-only. AHBM sleep enable
      AHBMLPENC      : Boolean := False;
      --  Write-only. AHB1 sleep enable
      AHB1LPENC      : Boolean := False;
      --  Write-only. AHB2 sleep enable
      AHB2LPENC      : Boolean := False;
      --  Write-only. AHB3 sleep enable
      AHB3LPENC      : Boolean := False;
      --  Write-only. AHB4 sleep enable
      AHB4LPENC      : Boolean := False;
      --  Write-only. AHB5 sleep enable
      AHB5LPENC      : Boolean := False;
      --  Write-only. APB1 sleep enable
      APB1LPENC      : Boolean := False;
      --  Write-only. APB2 sleep enable
      APB2LPENC      : Boolean := False;
      --  Write-only. APB3 sleep enable
      APB3LPENC      : Boolean := False;
      --  Write-only. APB4 sleep enable
      APB4LPENC      : Boolean := False;
      --  Write-only. APB5 sleep enable
      APB5LPENC      : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_BUSLPENCR_Register use record
      ACLKNLPENC     at 0 range 0 .. 0;
      ACLKNCLPENC    at 0 range 1 .. 1;
      AHBMLPENC      at 0 range 2 .. 2;
      AHB1LPENC      at 0 range 3 .. 3;
      AHB2LPENC      at 0 range 4 .. 4;
      AHB3LPENC      at 0 range 5 .. 5;
      AHB4LPENC      at 0 range 6 .. 6;
      AHB5LPENC      at 0 range 7 .. 7;
      APB1LPENC      at 0 range 8 .. 8;
      APB2LPENC      at 0 range 9 .. 9;
      APB3LPENC      at 0 range 10 .. 10;
      APB4LPENC      at 0 range 11 .. 11;
      APB5LPENC      at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC miscellaneous Sleep enable register
   type RCC_MISCLPENCR_Register is record
      --  Write-only. DBG sleep enable
      DBGLPENC         : Boolean := False;
      --  unspecified
      Reserved_1_2     : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. XSPIPHYCOMP sleep enable
      XSPIPHYCOMPLPENC : Boolean := False;
      --  unspecified
      Reserved_4_5     : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PER sleep enable
      PERLPENC         : Boolean := False;
      --  unspecified
      Reserved_7_31    : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MISCLPENCR_Register use record
      DBGLPENC         at 0 range 0 .. 0;
      Reserved_1_2     at 0 range 1 .. 2;
      XSPIPHYCOMPLPENC at 0 range 3 .. 3;
      Reserved_4_5     at 0 range 4 .. 5;
      PERLPENC         at 0 range 6 .. 6;
      Reserved_7_31    at 0 range 7 .. 31;
   end record;

   --  RCC memory Sleep enable register
   type RCC_MEMLPENCR_Register is record
      --  Write-only. AXISRAM3 sleep enable
      AXISRAM3LPENC    : Boolean := False;
      --  Write-only. AXISRAM4 sleep enable
      AXISRAM4LPENC    : Boolean := False;
      --  Write-only. AXISRAM5 sleep enable
      AXISRAM5LPENC    : Boolean := False;
      --  Write-only. AXISRAM6 sleep enable
      AXISRAM6LPENC    : Boolean := False;
      --  Write-only. AHBSRAM1 sleep enable
      AHBSRAM1LPENC    : Boolean := False;
      --  Write-only. AHBSRAM2 sleep enable
      AHBSRAM2LPENC    : Boolean := False;
      --  Write-only. BKPSRAM sleep enable
      BKPSRAMLPENC     : Boolean := False;
      --  Write-only. AXISRAM1 sleep enable
      AXISRAM1LPENC    : Boolean := False;
      --  Write-only. AXISRAM2 sleep enable
      AXISRAM2LPENC    : Boolean := False;
      --  Write-only. FLEXRAM sleep enable
      FLEXRAMLPENC     : Boolean := False;
      --  Write-only. NPUCACHERAM sleep enable
      NPUCACHERAMLPENC : Boolean := False;
      --  Write-only. VENCRAM sleep enable
      VENCRAMLPENC     : Boolean := False;
      --  Write-only. BOOTROM sleep enable
      BOOTROMLPENC     : Boolean := False;
      --  unspecified
      Reserved_13_31   : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MEMLPENCR_Register use record
      AXISRAM3LPENC    at 0 range 0 .. 0;
      AXISRAM4LPENC    at 0 range 1 .. 1;
      AXISRAM5LPENC    at 0 range 2 .. 2;
      AXISRAM6LPENC    at 0 range 3 .. 3;
      AHBSRAM1LPENC    at 0 range 4 .. 4;
      AHBSRAM2LPENC    at 0 range 5 .. 5;
      BKPSRAMLPENC     at 0 range 6 .. 6;
      AXISRAM1LPENC    at 0 range 7 .. 7;
      AXISRAM2LPENC    at 0 range 8 .. 8;
      FLEXRAMLPENC     at 0 range 9 .. 9;
      NPUCACHERAMLPENC at 0 range 10 .. 10;
      VENCRAMLPENC     at 0 range 11 .. 11;
      BOOTROMLPENC     at 0 range 12 .. 12;
      Reserved_13_31   at 0 range 13 .. 31;
   end record;

   --  RCC AHB1 Sleep enable register
   type RCC_AHB1LPENCR_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. GPDMA1 sleep enable
      GPDMA1LPENC   : Boolean := False;
      --  Write-only. ADC12 sleep enable
      ADC12LPENC    : Boolean := False;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1LPENCR_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      GPDMA1LPENC   at 0 range 4 .. 4;
      ADC12LPENC    at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RCC AHB2 Sleep enable register
   type RCC_AHB2LPENCR_Register is record
      --  unspecified
      Reserved_0_11  : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Write-only. RAMCFG sleep enable
      RAMCFGLPENC    : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. MDF1 sleep enable
      MDF1LPENC      : Boolean := False;
      --  Write-only. ADF1 sleep enable
      ADF1LPENC      : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2LPENCR_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      RAMCFGLPENC    at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      MDF1LPENC      at 0 range 16 .. 16;
      ADF1LPENC      at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  RCC AHB3 Sleep enable register
   type RCC_AHB3LPENCR_Register is record
      --  Write-only. RNG sleep enable
      RNGLPENC       : Boolean := False;
      --  Write-only. HASH sleep enable
      HASHLPENC      : Boolean := False;
      --  Write-only. CRYP sleep enable
      CRYPLPENC      : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. SAES sleep enable
      SAESLPENC      : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. PKA sleep enable
      PKALPENC       : Boolean := False;
      --  Write-only. RIFSC sleep enable
      RIFSCLPENC     : Boolean := False;
      --  Write-only. IAC sleep enable
      IACLPENC       : Boolean := False;
      --  unspecified
      Reserved_11_13 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RISAF sleep enable
      RISAFLPENC     : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB3LPENCR_Register use record
      RNGLPENC       at 0 range 0 .. 0;
      HASHLPENC      at 0 range 1 .. 1;
      CRYPLPENC      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SAESLPENC      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PKALPENC       at 0 range 8 .. 8;
      RIFSCLPENC     at 0 range 9 .. 9;
      IACLPENC       at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      RISAFLPENC     at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  RCC AHB4 Sleep enable register
   type RCC_AHB4LPENCR_Register is record
      --  Write-only. GPIOA sleep enable
      GPIOALPENC     : Boolean := False;
      --  Write-only. GPIOB sleep enable
      GPIOBLPENC     : Boolean := False;
      --  Write-only. GPIOC sleep enable
      GPIOCLPENC     : Boolean := False;
      --  Write-only. GPIOD sleep enable
      GPIODLPENC     : Boolean := False;
      --  Write-only. GPIOE sleep enable
      GPIOELPENC     : Boolean := False;
      --  Write-only. GPIOF sleep enable
      GPIOFLPENC     : Boolean := False;
      --  Write-only. GPIOG sleep enable
      GPIOGLPENC     : Boolean := False;
      --  Write-only. GPIOH sleep enable
      GPIOHLPENC     : Boolean := False;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. GPION sleep enable
      GPIONLPENC     : Boolean := False;
      --  Write-only. GPIOO sleep enable
      GPIOOLPENC     : Boolean := False;
      --  Write-only. GPIOP sleep enable
      GPIOPLPENC     : Boolean := False;
      --  Write-only. GPIOQ sleep enable
      GPIOQLPENC     : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. PWR sleep enable
      PWRLPENC       : Boolean := False;
      --  Write-only. CRC sleep enable
      CRCLPENC       : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB4LPENCR_Register use record
      GPIOALPENC     at 0 range 0 .. 0;
      GPIOBLPENC     at 0 range 1 .. 1;
      GPIOCLPENC     at 0 range 2 .. 2;
      GPIODLPENC     at 0 range 3 .. 3;
      GPIOELPENC     at 0 range 4 .. 4;
      GPIOFLPENC     at 0 range 5 .. 5;
      GPIOGLPENC     at 0 range 6 .. 6;
      GPIOHLPENC     at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      GPIONLPENC     at 0 range 13 .. 13;
      GPIOOLPENC     at 0 range 14 .. 14;
      GPIOPLPENC     at 0 range 15 .. 15;
      GPIOQLPENC     at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PWRLPENC       at 0 range 18 .. 18;
      CRCLPENC       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC AHB5 Sleep enable register
   type RCC_AHB5LPENCR_Register is record
      --  Write-only. HPDMA1 sleep enable
      HPDMA1LPENC    : Boolean := False;
      --  Write-only. DMA2D sleep enable
      DMA2DLPENC     : Boolean := False;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. JPEG sleep enable
      JPEGLPENC      : Boolean := False;
      --  Write-only. FMC sleep enable
      FMCLPENC       : Boolean := False;
      --  Write-only. XSPI1 sleep enable
      XSPI1LPENC     : Boolean := False;
      --  Write-only. PSSI sleep enable
      PSSILPENC      : Boolean := False;
      --  Write-only. SDMMC2 sleep enable
      SDMMC2LPENC    : Boolean := False;
      --  Write-only. SDMMC1 sleep enable
      SDMMC1LPENC    : Boolean := False;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. XSPI2 sleep enable
      XSPI2LPENC     : Boolean := False;
      --  Write-only. XSPIM sleep enable
      XSPIMLPENC     : Boolean := False;
      --  Write-only. MCE1 sleep enable
      MCE1LPENC      : Boolean := False;
      --  Write-only. MCE2 sleep enable
      MCE2LPENC      : Boolean := False;
      --  Write-only. MCE3 sleep enable
      MCE3LPENC      : Boolean := False;
      --  Write-only. XSPI3 sleep enable
      XSPI3LPENC     : Boolean := False;
      --  Write-only. MCE4 sleep enable
      MCE4LPENC      : Boolean := False;
      --  Write-only. GFXMMU sleep enable
      GFXMMULPENC    : Boolean := False;
      --  Write-only. GPU sleep enable
      GPULPENC       : Boolean := False;
      --  unspecified
      Reserved_21_21 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. ETH1MAC sleep enable
      ETH1MACLPENC   : Boolean := False;
      --  Write-only. ETH1TX sleep enable
      ETH1TXLPENC    : Boolean := False;
      --  Write-only. ETH1RX sleep enable
      ETH1RXLPENC    : Boolean := False;
      --  Write-only. ETH1 sleep enable
      ETH1LPENC      : Boolean := False;
      --  Write-only. OTG1 sleep enable
      OTG1LPENC      : Boolean := False;
      --  Write-only. OTGPHY1 sleep enable
      OTGPHY1LPENC   : Boolean := False;
      --  Write-only. OTGPHY2 sleep enable
      OTGPHY2LPENC   : Boolean := False;
      --  Write-only. OTG2 sleep enable
      OTG2LPENC      : Boolean := False;
      --  Write-only. NPUCACHE sleep enable
      NPUCACHELPENC  : Boolean := False;
      --  Write-only. NPU sleep enable
      NPULPENC       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB5LPENCR_Register use record
      HPDMA1LPENC    at 0 range 0 .. 0;
      DMA2DLPENC     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      JPEGLPENC      at 0 range 3 .. 3;
      FMCLPENC       at 0 range 4 .. 4;
      XSPI1LPENC     at 0 range 5 .. 5;
      PSSILPENC      at 0 range 6 .. 6;
      SDMMC2LPENC    at 0 range 7 .. 7;
      SDMMC1LPENC    at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      XSPI2LPENC     at 0 range 12 .. 12;
      XSPIMLPENC     at 0 range 13 .. 13;
      MCE1LPENC      at 0 range 14 .. 14;
      MCE2LPENC      at 0 range 15 .. 15;
      MCE3LPENC      at 0 range 16 .. 16;
      XSPI3LPENC     at 0 range 17 .. 17;
      MCE4LPENC      at 0 range 18 .. 18;
      GFXMMULPENC    at 0 range 19 .. 19;
      GPULPENC       at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      ETH1MACLPENC   at 0 range 22 .. 22;
      ETH1TXLPENC    at 0 range 23 .. 23;
      ETH1RXLPENC    at 0 range 24 .. 24;
      ETH1LPENC      at 0 range 25 .. 25;
      OTG1LPENC      at 0 range 26 .. 26;
      OTGPHY1LPENC   at 0 range 27 .. 27;
      OTGPHY2LPENC   at 0 range 28 .. 28;
      OTG2LPENC      at 0 range 29 .. 29;
      NPUCACHELPENC  at 0 range 30 .. 30;
      NPULPENC       at 0 range 31 .. 31;
   end record;

   --  RCC APB1L Sleep enable register
   type RCC_APB1LLPENCR_Register is record
      --  Write-only. TIM2 sleep enable
      TIM2LPENC      : Boolean := False;
      --  Write-only. TIM3 sleep enable
      TIM3LPENC      : Boolean := False;
      --  Write-only. TIM4 sleep enable
      TIM4LPENC      : Boolean := False;
      --  Write-only. TIM5 sleep enable
      TIM5LPENC      : Boolean := False;
      --  Write-only. TIM6 sleep enable
      TIM6LPENC      : Boolean := False;
      --  Write-only. TIM7 sleep enable
      TIM7LPENC      : Boolean := False;
      --  Write-only. TIM12 sleep enable
      TIM12LPENC     : Boolean := False;
      --  Write-only. TIM13 sleep enable
      TIM13LPENC     : Boolean := False;
      --  Write-only. TIM14 sleep enable
      TIM14LPENC     : Boolean := False;
      --  Write-only. LPTIM1 sleep enable
      LPTIM1LPENC    : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. WWDG sleep enable
      WWDGLPENC      : Boolean := False;
      --  Write-only. TIM10 sleep enable
      TIM10LPENC     : Boolean := False;
      --  Write-only. TIM11 sleep enable
      TIM11LPENC     : Boolean := False;
      --  Write-only. SPI2 sleep enable
      SPI2LPENC      : Boolean := False;
      --  Write-only. SPI3 sleep enable
      SPI3LPENC      : Boolean := False;
      --  Write-only. SPDIFRX1 sleep enable
      SPDIFRX1LPENC  : Boolean := False;
      --  Write-only. USART2 sleep enable
      USART2LPENC    : Boolean := False;
      --  Write-only. USART3 sleep enable
      USART3LPENC    : Boolean := False;
      --  Write-only. UART4 sleep enable
      UART4LPENC     : Boolean := False;
      --  Write-only. UART5 sleep enable
      UART5LPENC     : Boolean := False;
      --  Write-only. I2C1 sleep enable
      I2C1LPENC      : Boolean := False;
      --  Write-only. I2C2 sleep enable
      I2C2LPENC      : Boolean := False;
      --  Write-only. I2C3 sleep enable
      I2C3LPENC      : Boolean := False;
      --  Write-only. I3C1 sleep enable
      I3C1LPENC      : Boolean := False;
      --  Write-only. I3C2 sleep enable
      I3C2LPENC      : Boolean := False;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. UART7 sleep enable
      UART7LPENC     : Boolean := False;
      --  Write-only. UART8 sleep enable
      UART8LPENC     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1LLPENCR_Register use record
      TIM2LPENC      at 0 range 0 .. 0;
      TIM3LPENC      at 0 range 1 .. 1;
      TIM4LPENC      at 0 range 2 .. 2;
      TIM5LPENC      at 0 range 3 .. 3;
      TIM6LPENC      at 0 range 4 .. 4;
      TIM7LPENC      at 0 range 5 .. 5;
      TIM12LPENC     at 0 range 6 .. 6;
      TIM13LPENC     at 0 range 7 .. 7;
      TIM14LPENC     at 0 range 8 .. 8;
      LPTIM1LPENC    at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDGLPENC      at 0 range 11 .. 11;
      TIM10LPENC     at 0 range 12 .. 12;
      TIM11LPENC     at 0 range 13 .. 13;
      SPI2LPENC      at 0 range 14 .. 14;
      SPI3LPENC      at 0 range 15 .. 15;
      SPDIFRX1LPENC  at 0 range 16 .. 16;
      USART2LPENC    at 0 range 17 .. 17;
      USART3LPENC    at 0 range 18 .. 18;
      UART4LPENC     at 0 range 19 .. 19;
      UART5LPENC     at 0 range 20 .. 20;
      I2C1LPENC      at 0 range 21 .. 21;
      I2C2LPENC      at 0 range 22 .. 22;
      I2C3LPENC      at 0 range 23 .. 23;
      I3C1LPENC      at 0 range 24 .. 24;
      I3C2LPENC      at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      UART7LPENC     at 0 range 30 .. 30;
      UART8LPENC     at 0 range 31 .. 31;
   end record;

   --  RCC APB1H Sleep enable register
   type RCC_APB1HLPENCR_Register is record
      --  unspecified
      Reserved_0_4   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. MDIOS sleep enable
      MDIOSLPENC     : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. FDCAN sleep enable
      FDCANLPENC     : Boolean := False;
      --  unspecified
      Reserved_9_17  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Write-only. UCPD1 sleep enable
      UCPD1LPENC     : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1HLPENCR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      MDIOSLPENC     at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FDCANLPENC     at 0 range 8 .. 8;
      Reserved_9_17  at 0 range 9 .. 17;
      UCPD1LPENC     at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  RCC APB2 Sleep enable register
   type RCC_APB2LPENCR_Register is record
      --  Write-only. TIM1 sleep enable
      TIM1LPENC      : Boolean := False;
      --  Write-only. TIM8 sleep enable
      TIM8LPENC      : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. USART1 sleep enable
      USART1LPENC    : Boolean := False;
      --  Write-only. USART6 sleep enable
      USART6LPENC    : Boolean := False;
      --  Write-only. UART9 sleep enable
      UART9LPENC     : Boolean := False;
      --  Write-only. USART10 sleep enable
      USART10LPENC   : Boolean := False;
      --  unspecified
      Reserved_8_11  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. SPI1 sleep enable
      SPI1LPENC      : Boolean := False;
      --  Write-only. SPI4 sleep enable
      SPI4LPENC      : Boolean := False;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. TIM18 sleep enable
      TIM18LPENC     : Boolean := False;
      --  Write-only. TIM15 sleep enable
      TIM15LPENC     : Boolean := False;
      --  Write-only. TIM16 sleep enable
      TIM16LPENC     : Boolean := False;
      --  Write-only. TIM17 sleep enable
      TIM17LPENC     : Boolean := False;
      --  Write-only. TIM9 sleep enable
      TIM9LPENC      : Boolean := False;
      --  Write-only. SPI5 sleep enable
      SPI5LPENC      : Boolean := False;
      --  Write-only. SAI1 sleep enable
      SAI1LPENC      : Boolean := False;
      --  Write-only. SAI2 sleep enable
      SAI2LPENC      : Boolean := False;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB2LPENCR_Register use record
      TIM1LPENC      at 0 range 0 .. 0;
      TIM8LPENC      at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      USART1LPENC    at 0 range 4 .. 4;
      USART6LPENC    at 0 range 5 .. 5;
      UART9LPENC     at 0 range 6 .. 6;
      USART10LPENC   at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SPI1LPENC      at 0 range 12 .. 12;
      SPI4LPENC      at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      TIM18LPENC     at 0 range 15 .. 15;
      TIM15LPENC     at 0 range 16 .. 16;
      TIM16LPENC     at 0 range 17 .. 17;
      TIM17LPENC     at 0 range 18 .. 18;
      TIM9LPENC      at 0 range 19 .. 19;
      SPI5LPENC      at 0 range 20 .. 20;
      SAI1LPENC      at 0 range 21 .. 21;
      SAI2LPENC      at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  RCC APB3 Sleep enable register
   type RCC_APB3LPENCR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. DFT sleep enable
      DFTLPENC      : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB3LPENCR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DFTLPENC      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC APB4L Sleep enable register
   type RCC_APB4LLPENCR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. HDP sleep enable
      HDPLPENC       : Boolean := False;
      --  Write-only. LPUART1 sleep enable
      LPUART1LPENC   : Boolean := False;
      --  unspecified
      Reserved_4_4   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. SPI6 sleep enable
      SPI6LPENC      : Boolean := False;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. I2C4 sleep enable
      I2C4LPENC      : Boolean := False;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. LPTIM2 sleep enable
      LPTIM2LPENC    : Boolean := False;
      --  Write-only. LPTIM3 sleep enable
      LPTIM3LPENC    : Boolean := False;
      --  Write-only. LPTIM4 sleep enable
      LPTIM4LPENC    : Boolean := False;
      --  Write-only. LPTIM5 sleep enable
      LPTIM5LPENC    : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. VREFBUF sleep enable
      VREFBUFLPENC   : Boolean := False;
      --  Write-only. RTC sleep enable
      RTCLPENC       : Boolean := False;
      --  Write-only. RTCAPB sleep enable
      RTCAPBLPENC    : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. R2GRET sleep enable
      R2GRETLPENC    : Boolean := False;
      --  Write-only. R2GNPU sleep enable
      R2GNPULPENC    : Boolean := False;
      --  unspecified
      Reserved_24_30 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. SERF sleep enable
      SERFLPENC      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4LLPENCR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      HDPLPENC       at 0 range 2 .. 2;
      LPUART1LPENC   at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SPI6LPENC      at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      I2C4LPENC      at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LPTIM2LPENC    at 0 range 9 .. 9;
      LPTIM3LPENC    at 0 range 10 .. 10;
      LPTIM4LPENC    at 0 range 11 .. 11;
      LPTIM5LPENC    at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      VREFBUFLPENC   at 0 range 15 .. 15;
      RTCLPENC       at 0 range 16 .. 16;
      RTCAPBLPENC    at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      R2GRETLPENC    at 0 range 22 .. 22;
      R2GNPULPENC    at 0 range 23 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      SERFLPENC      at 0 range 31 .. 31;
   end record;

   --  RCC APB4H Sleep enable register
   type RCC_APB4HLPENCR_Register is record
      --  Write-only. SYSCFG sleep enable
      SYSCFGLPENC   : Boolean := False;
      --  Write-only. BSEC sleep enable
      BSECLPENC     : Boolean := False;
      --  Write-only. DTS sleep enable
      DTSLPENC      : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. BUSPERFM sleep enable
      BUSPERFMLPENC : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4HLPENCR_Register use record
      SYSCFGLPENC   at 0 range 0 .. 0;
      BSECLPENC     at 0 range 1 .. 1;
      DTSLPENC      at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      BUSPERFMLPENC at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC APB5 Sleep enable register
   type RCC_APB5LPENCR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. LTDC sleep enable
      LTDCLPENC     : Boolean := False;
      --  Write-only. DCMIPP sleep enable
      DCMIPPLPENC   : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. GFXTIM sleep enable
      GFXTIMLPENC   : Boolean := False;
      --  Write-only. VENC sleep enable
      VENCLPENC     : Boolean := False;
      --  Write-only. CSI sleep enable
      CSILPENC      : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB5LPENCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LTDCLPENC     at 0 range 1 .. 1;
      DCMIPPLPENC   at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      GFXTIMLPENC   at 0 range 4 .. 4;
      VENCLPENC     at 0 range 5 .. 5;
      CSILPENC      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC oscillator privilege configuration register0
   type RCC_PRIVCFGCR0_Register is record
      --  Write-only. Defines the privilege protection of the LSI configuration
      --  bits (enable, ready, divider).
      LSIPVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the LSE configuration
      --  bits (enable, ready, divider).
      LSEPVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the MSI configuration
      --  bits (enable, ready, divider).
      MSIPVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the HSI configuration
      --  bits (enable, ready, divider).
      HSIPVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the HSE configuration
      --  bits (enable, ready, divider).
      HSEPVC        : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGCR0_Register use record
      LSIPVC        at 0 range 0 .. 0;
      LSEPVC        at 0 range 1 .. 1;
      MSIPVC        at 0 range 2 .. 2;
      HSIPVC        at 0 range 3 .. 3;
      HSEPVC        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC oscillator public configuration register0
   type RCC_PUBCFGCR0_Register is record
      --  Write-only. Defines the public protection of the LSI configuration
      --  bits (enable, ready, divider).
      LSIPUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the LSE configuration
      --  bits (enable, ready, divider).
      LSEPUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the MSI configuration
      --  bits (enable, ready, divider).
      MSIPUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the HSI configuration
      --  bits (enable, ready, divider).
      HSIPUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the HSE configuration
      --  bits (enable, ready, divider).
      HSEPUBC       : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGCR0_Register use record
      LSIPUBC       at 0 range 0 .. 0;
      LSEPUBC       at 0 range 1 .. 1;
      MSIPUBC       at 0 range 2 .. 2;
      HSIPUBC       at 0 range 3 .. 3;
      HSEPUBC       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC PLL privilege configuration register1
   type RCC_PRIVCFGCR1_Register is record
      --  Write-only. Defines the privilege protection of the PLL1
      --  configuration bits (enable, ready, divider).
      PLL1PVC       : Boolean := False;
      --  Write-only. Defines the privilege protection of the PLL2
      --  configuration bits (enable, ready, divider).
      PLL2PVC       : Boolean := False;
      --  Write-only. Defines the privilege protection of the PLL3
      --  configuration bits (enable, ready, divider).
      PLL3PVC       : Boolean := False;
      --  Write-only. Defines the privilege protection of the PLL4
      --  configuration bits (enable, ready, divider).
      PLL4PVC       : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGCR1_Register use record
      PLL1PVC       at 0 range 0 .. 0;
      PLL2PVC       at 0 range 1 .. 1;
      PLL3PVC       at 0 range 2 .. 2;
      PLL4PVC       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC PLL public configuration register1
   type RCC_PUBCFGCR1_Register is record
      --  Write-only. Defines the public protection of the PLL1 configuration
      --  bits (enable, ready, divider).
      PLL1PUBC      : Boolean := False;
      --  Write-only. Defines the public protection of the PLL2 configuration
      --  bits (enable, ready, divider).
      PLL2PUBC      : Boolean := False;
      --  Write-only. Defines the public protection of the PLL3 configuration
      --  bits (enable, ready, divider).
      PLL3PUBC      : Boolean := False;
      --  Write-only. Defines the public protection of the PLL4 configuration
      --  bits (enable, ready, divider).
      PLL4PUBC      : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGCR1_Register use record
      PLL1PUBC      at 0 range 0 .. 0;
      PLL2PUBC      at 0 range 1 .. 1;
      PLL3PUBC      at 0 range 2 .. 2;
      PLL4PUBC      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC divider privilege configuration register2
   type RCC_PRIVCFGCR2_Register is record
      --  Write-only. Defines the privilege protection of the IC1 configuration
      --  bits (enable, ready, divider).
      IC1PVC         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC2 configuration
      --  bits (enable, ready, divider).
      IC2PVC         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC3 configuration
      --  bits (enable, ready, divider).
      IC3PVC         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC4 configuration
      --  bits (enable, ready, divider).
      IC4PVC         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC5 configuration
      --  bits (enable, ready, divider).
      IC5PVC         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC6 configuration
      --  bits (enable, ready, divider).
      IC6PVC         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC7 configuration
      --  bits (enable, ready, divider).
      IC7PVC         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC8 configuration
      --  bits (enable, ready, divider).
      IC8PVC         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC9 configuration
      --  bits (enable, ready, divider).
      IC9PVC         : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC10
      --  configuration bits (enable, ready, divider).
      IC10PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC11
      --  configuration bits (enable, ready, divider).
      IC11PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC12
      --  configuration bits (enable, ready, divider).
      IC12PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC13
      --  configuration bits (enable, ready, divider).
      IC13PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC14
      --  configuration bits (enable, ready, divider).
      IC14PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC15
      --  configuration bits (enable, ready, divider).
      IC15PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC16
      --  configuration bits (enable, ready, divider).
      IC16PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC17
      --  configuration bits (enable, ready, divider).
      IC17PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC18
      --  configuration bits (enable, ready, divider).
      IC18PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC19
      --  configuration bits (enable, ready, divider).
      IC19PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the IC20
      --  configuration bits (enable, ready, divider).
      IC20PVC        : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGCR2_Register use record
      IC1PVC         at 0 range 0 .. 0;
      IC2PVC         at 0 range 1 .. 1;
      IC3PVC         at 0 range 2 .. 2;
      IC4PVC         at 0 range 3 .. 3;
      IC5PVC         at 0 range 4 .. 4;
      IC6PVC         at 0 range 5 .. 5;
      IC7PVC         at 0 range 6 .. 6;
      IC8PVC         at 0 range 7 .. 7;
      IC9PVC         at 0 range 8 .. 8;
      IC10PVC        at 0 range 9 .. 9;
      IC11PVC        at 0 range 10 .. 10;
      IC12PVC        at 0 range 11 .. 11;
      IC13PVC        at 0 range 12 .. 12;
      IC14PVC        at 0 range 13 .. 13;
      IC15PVC        at 0 range 14 .. 14;
      IC16PVC        at 0 range 15 .. 15;
      IC17PVC        at 0 range 16 .. 16;
      IC18PVC        at 0 range 17 .. 17;
      IC19PVC        at 0 range 18 .. 18;
      IC20PVC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC divider public configuration register2
   type RCC_PUBCFGCR2_Register is record
      --  Write-only. Defines the public protection of the IC1 configuration
      --  bits (enable, ready, divider).
      IC1PUBC        : Boolean := False;
      --  Write-only. Defines the public protection of the IC2 configuration
      --  bits (enable, ready, divider).
      IC2PUBC        : Boolean := False;
      --  Write-only. Defines the public protection of the IC3 configuration
      --  bits (enable, ready, divider).
      IC3PUBC        : Boolean := False;
      --  Write-only. Defines the public protection of the IC4 configuration
      --  bits (enable, ready, divider).
      IC4PUBC        : Boolean := False;
      --  Write-only. Defines the public protection of the IC5 configuration
      --  bits (enable, ready, divider).
      IC5PUBC        : Boolean := False;
      --  Write-only. Defines the public protection of the IC6 configuration
      --  bits (enable, ready, divider).
      IC6PUBC        : Boolean := False;
      --  Write-only. Defines the public protection of the IC7 configuration
      --  bits (enable, ready, divider).
      IC7PUBC        : Boolean := False;
      --  Write-only. Defines the public protection of the IC8 configuration
      --  bits (enable, ready, divider).
      IC8PUBC        : Boolean := False;
      --  Write-only. Defines the public protection of the IC9 configuration
      --  bits (enable, ready, divider).
      IC9PUBC        : Boolean := False;
      --  Write-only. Defines the public protection of the IC10 configuration
      --  bits (enable, ready, divider).
      IC10PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the IC11 configuration
      --  bits (enable, ready, divider).
      IC11PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the IC12 configuration
      --  bits (enable, ready, divider).
      IC12PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the IC13 configuration
      --  bits (enable, ready, divider).
      IC13PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the IC14 configuration
      --  bits (enable, ready, divider).
      IC14PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the IC15 configuration
      --  bits (enable, ready, divider).
      IC15PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the IC16 configuration
      --  bits (enable, ready, divider).
      IC16PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the IC17 configuration
      --  bits (enable, ready, divider).
      IC17PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the IC18 configuration
      --  bits (enable, ready, divider).
      IC18PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the IC19 configuration
      --  bits (enable, ready, divider).
      IC19PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the IC20 configuration
      --  bits (enable, ready, divider).
      IC20PUBC       : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGCR2_Register use record
      IC1PUBC        at 0 range 0 .. 0;
      IC2PUBC        at 0 range 1 .. 1;
      IC3PUBC        at 0 range 2 .. 2;
      IC4PUBC        at 0 range 3 .. 3;
      IC5PUBC        at 0 range 4 .. 4;
      IC6PUBC        at 0 range 5 .. 5;
      IC7PUBC        at 0 range 6 .. 6;
      IC8PUBC        at 0 range 7 .. 7;
      IC9PUBC        at 0 range 8 .. 8;
      IC10PUBC       at 0 range 9 .. 9;
      IC11PUBC       at 0 range 10 .. 10;
      IC12PUBC       at 0 range 11 .. 11;
      IC13PUBC       at 0 range 12 .. 12;
      IC14PUBC       at 0 range 13 .. 13;
      IC15PUBC       at 0 range 14 .. 14;
      IC16PUBC       at 0 range 15 .. 15;
      IC17PUBC       at 0 range 16 .. 16;
      IC18PUBC       at 0 range 17 .. 17;
      IC19PUBC       at 0 range 18 .. 18;
      IC20PUBC       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC system privilege configuration register3
   type RCC_PRIVCFGCR3_Register is record
      --  Write-only. Defines the privilege protection of the MOD configuration
      --  bits (enable, ready, divider).
      MODPVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the SYS configuration
      --  bits (enable, ready, divider).
      SYSPVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the BUS configuration
      --  bits (enable, ready, divider).
      BUSPVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the PER configuration
      --  bits (enable, ready, divider).
      PERPVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the INT configuration
      --  bits (enable, ready, divider).
      INTPVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the RST configuration
      --  bits (enable, ready, divider).
      RSTPVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the DFT configuration
      --  bits (enable, ready, divider).
      DFTPVC        : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGCR3_Register use record
      MODPVC        at 0 range 0 .. 0;
      SYSPVC        at 0 range 1 .. 1;
      BUSPVC        at 0 range 2 .. 2;
      PERPVC        at 0 range 3 .. 3;
      INTPVC        at 0 range 4 .. 4;
      RSTPVC        at 0 range 5 .. 5;
      DFTPVC        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC system public configuration register3
   type RCC_PUBCFGCR3_Register is record
      --  Write-only. Defines the public protection of the MOD configuration
      --  bits (enable, ready, divider).
      MODPUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the SYS configuration
      --  bits (enable, ready, divider).
      SYSPUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the BUS configuration
      --  bits (enable, ready, divider).
      BUSPUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the PER configuration
      --  bits (enable, ready, divider).
      PERPUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the INT configuration
      --  bits (enable, ready, divider).
      INTPUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the RST configuration
      --  bits (enable, ready, divider).
      RSTPUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the DFT configuration
      --  bits (enable, ready, divider).
      DFTPUBC       : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGCR3_Register use record
      MODPUBC       at 0 range 0 .. 0;
      SYSPUBC       at 0 range 1 .. 1;
      BUSPUBC       at 0 range 2 .. 2;
      PERPUBC       at 0 range 3 .. 3;
      INTPUBC       at 0 range 4 .. 4;
      RSTPUBC       at 0 range 5 .. 5;
      DFTPUBC       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC privilege configuration register4
   type RCC_PRIVCFGCR4_Register is record
      --  Write-only. Defines the privilege protection of the ACLKN
      --  configuration bits (enable, ready, divider).
      ACLKNPVC       : Boolean := False;
      --  Write-only. Defines the privilege protection of the ACLKNC
      --  configuration bits (enable, ready, divider).
      ACLKNCPVC      : Boolean := False;
      --  Write-only. Defines the privilege protection of the AHBM
      --  configuration bits (enable, ready, divider).
      AHBMPVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the AHB1
      --  configuration bits (enable, ready, divider).
      AHB1PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the AHB2
      --  configuration bits (enable, ready, divider).
      AHB2PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the AHB3
      --  configuration bits (enable, ready, divider).
      AHB3PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the AHB4
      --  configuration bits (enable, ready, divider).
      AHB4PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the AHB5
      --  configuration bits (enable, ready, divider).
      AHB5PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the APB1
      --  configuration bits (enable, ready, divider).
      APB1PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the APB2
      --  configuration bits (enable, ready, divider).
      APB2PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the APB3
      --  configuration bits (enable, ready, divider).
      APB3PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the APB4
      --  configuration bits (enable, ready, divider).
      APB4PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the APB5
      --  configuration bits (enable, ready, divider).
      APB5PVC        : Boolean := False;
      --  Write-only. Defines the privilege protection of the NOC configuration
      --  bits (enable, ready, divider).
      NOCPVC         : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGCR4_Register use record
      ACLKNPVC       at 0 range 0 .. 0;
      ACLKNCPVC      at 0 range 1 .. 1;
      AHBMPVC        at 0 range 2 .. 2;
      AHB1PVC        at 0 range 3 .. 3;
      AHB2PVC        at 0 range 4 .. 4;
      AHB3PVC        at 0 range 5 .. 5;
      AHB4PVC        at 0 range 6 .. 6;
      AHB5PVC        at 0 range 7 .. 7;
      APB1PVC        at 0 range 8 .. 8;
      APB2PVC        at 0 range 9 .. 9;
      APB3PVC        at 0 range 10 .. 10;
      APB4PVC        at 0 range 11 .. 11;
      APB5PVC        at 0 range 12 .. 12;
      NOCPVC         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RCC public configuration register4
   type RCC_PUBCFGCR4_Register is record
      --  Write-only. Defines the public protection of the ACLKN configuration
      --  bits (enable, ready, divider).
      ACLKNPUBC      : Boolean := False;
      --  Write-only. Defines the public protection of the ACLKNC configuration
      --  bits (enable, ready, divider).
      ACLKNCPUBC     : Boolean := False;
      --  Write-only. Defines the public protection of the AHBM configuration
      --  bits (enable, ready, divider).
      AHBMPUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the AHB1 configuration
      --  bits (enable, ready, divider).
      AHB1PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the AHB2 configuration
      --  bits (enable, ready, divider).
      AHB2PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the AHB3 configuration
      --  bits (enable, ready, divider).
      AHB3PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the AHB4 configuration
      --  bits (enable, ready, divider).
      AHB4PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the AHB5 configuration
      --  bits (enable, ready, divider).
      AHB5PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the APB1 configuration
      --  bits (enable, ready, divider).
      APB1PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the APB2 configuration
      --  bits (enable, ready, divider).
      APB2PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the APB3 configuration
      --  bits (enable, ready, divider).
      APB3PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the APB4 configuration
      --  bits (enable, ready, divider).
      APB4PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the APB5 configuration
      --  bits (enable, ready, divider).
      APB5PUBC       : Boolean := False;
      --  Write-only. Defines the public protection of the NOC configuration
      --  bits (enable, ready, divider).
      NOCPUBC        : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGCR4_Register use record
      ACLKNPUBC      at 0 range 0 .. 0;
      ACLKNCPUBC     at 0 range 1 .. 1;
      AHBMPUBC       at 0 range 2 .. 2;
      AHB1PUBC       at 0 range 3 .. 3;
      AHB2PUBC       at 0 range 4 .. 4;
      AHB3PUBC       at 0 range 5 .. 5;
      AHB4PUBC       at 0 range 6 .. 6;
      AHB5PUBC       at 0 range 7 .. 7;
      APB1PUBC       at 0 range 8 .. 8;
      APB2PUBC       at 0 range 9 .. 9;
      APB3PUBC       at 0 range 10 .. 10;
      APB4PUBC       at 0 range 11 .. 11;
      APB5PUBC       at 0 range 12 .. 12;
      NOCPUBC        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RCC public configuration register4
   type RCC_PUBCFGCR5_Register is record
      --  Write-only. Defines the public protection of the AXISRAM3
      --  configuration bits (enable, ready, divider).
      AXISRAM3PUBC    : Boolean := False;
      --  Write-only. Defines the public protection of the AXISRAM4
      --  configuration bits (enable, ready, divider).
      AXISRAM4PUBC    : Boolean := False;
      --  Write-only. Defines the public protection of the AXISRAM5
      --  configuration bits (enable, ready, divider).
      AXISRAM5PUBC    : Boolean := False;
      --  Write-only. Defines the public protection of the AXISRAM6
      --  configuration bits (enable, ready, divider).
      AXISRAM6PUBC    : Boolean := False;
      --  Write-only. Defines the public protection of the AHBSRAM1
      --  configuration bits (enable, ready, divider).
      AHBSRAM1PUBC    : Boolean := False;
      --  Write-only. Defines the public protection of the AHBSRAM2
      --  configuration bits (enable, ready, divider).
      AHBSRAM2PUBC    : Boolean := False;
      --  Write-only. Defines the public protection of the BKPSRAM
      --  configuration bits (enable, ready, divider).
      BKPSRAMPUBC     : Boolean := False;
      --  Write-only. Defines the public protection of the AXISRAM1
      --  configuration bits (enable, ready, divider).
      AXISRAM1PUBC    : Boolean := False;
      --  Write-only. Defines the public protection of the AXISRAM2
      --  configuration bits (enable, ready, divider).
      AXISRAM2PUBC    : Boolean := False;
      --  Write-only. Defines the public protection of the FLEXRAM
      --  configuration bits (enable, ready, divider).
      FLEXRAMPUBC     : Boolean := False;
      --  Write-only. Defines the public protection of the NPUCACHERAM
      --  configuration bits (enable, ready, divider).
      CACHEAXIRAMPUBC : Boolean := False;
      --  Write-only. Defines the public protection of the VENCRAM
      --  configuration bits (enable, ready, divider).
      VENCRAMPUBC     : Boolean := False;
      --  unspecified
      Reserved_12_31  : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PUBCFGCR5_Register use record
      AXISRAM3PUBC    at 0 range 0 .. 0;
      AXISRAM4PUBC    at 0 range 1 .. 1;
      AXISRAM5PUBC    at 0 range 2 .. 2;
      AXISRAM6PUBC    at 0 range 3 .. 3;
      AHBSRAM1PUBC    at 0 range 4 .. 4;
      AHBSRAM2PUBC    at 0 range 5 .. 5;
      BKPSRAMPUBC     at 0 range 6 .. 6;
      AXISRAM1PUBC    at 0 range 7 .. 7;
      AXISRAM2PUBC    at 0 range 8 .. 8;
      FLEXRAMPUBC     at 0 range 9 .. 9;
      CACHEAXIRAMPUBC at 0 range 10 .. 10;
      VENCRAMPUBC     at 0 range 11 .. 11;
      Reserved_12_31  at 0 range 12 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset and clock control
   type RCC_Peripheral is record
      --  RCC control register
      RCC_CR          : aliased RCC_CR_Register;
      --  RCC status register
      RCC_SR          : aliased RCC_SR_Register;
      --  RCC Stop mode control register
      RCC_STOPCR      : aliased RCC_STOPCR_Register;
      --  RCC configuration register 1
      RCC_CFGR1       : aliased RCC_CFGR1_Register;
      --  RCC configuration register 2
      RCC_CFGR2       : aliased RCC_CFGR2_Register;
      --  RCC clock protection register
      RCC_CKPROTR     : aliased RCC_CKPROTR_Register;
      --  RCC backup domain protection register
      RCC_BDCR        : aliased RCC_BDCR_Register;
      --  RCC reset status register for hardware
      RCC_HWRSR       : aliased RCC_HWRSR_Register;
      --  RCC reset register
      RCC_RSR         : aliased RCC_RSR_Register;
      --  RCC LSE configuration register
      RCC_LSECFGR     : aliased RCC_LSECFGR_Register;
      --  RCC MSI configuration register
      RCC_MSICFGR     : aliased RCC_MSICFGR_Register;
      --  RCC HSI configuration register
      RCC_HSICFGR     : aliased RCC_HSICFGR_Register;
      --  RCC HSI monitor control register
      RCC_HSIMCR      : aliased RCC_HSIMCR_Register;
      --  RCC HSI monitor status register
      RCC_HSIMSR      : aliased RCC_HSIMSR_Register;
      --  RCC HSE configuration register
      RCC_HSECFGR     : aliased RCC_HSECFGR_Register;
      --  RCC PLL1 configuration register 1
      RCC_PLL1CFGR1   : aliased RCC_PLL1CFGR1_Register;
      --  RCC PLL1 configuration register 2
      RCC_PLL1CFGR2   : aliased RCC_PLL1CFGR2_Register;
      --  RCC PLL1 configuration register 3
      RCC_PLL1CFGR3   : aliased RCC_PLL1CFGR3_Register;
      --  RCC PLL2 configuration register 1
      RCC_PLL2CFGR1   : aliased RCC_PLL2CFGR1_Register;
      --  RCC PLL2 configuration register 2
      RCC_PLL2CFGR2   : aliased RCC_PLL2CFGR2_Register;
      --  RCC PLL2 configuration register 3
      RCC_PLL2CFGR3   : aliased RCC_PLL2CFGR3_Register;
      --  RCC PLL3 configuration register 1
      RCC_PLL3CFGR1   : aliased RCC_PLL3CFGR1_Register;
      --  RCC PLL3 configuration register 2
      RCC_PLL3CFGR2   : aliased RCC_PLL3CFGR2_Register;
      --  RCC PLL3 configuration register 3
      RCC_PLL3CFGR3   : aliased RCC_PLL3CFGR3_Register;
      --  RCC PLL4 configuration register 1
      RCC_PLL4CFGR1   : aliased RCC_PLL4CFGR1_Register;
      --  RCC PLL4 configuration register 2
      RCC_PLL4CFGR2   : aliased RCC_PLL4CFGR2_Register;
      --  RCC PLL4 configuration register 3
      RCC_PLL4CFGR3   : aliased RCC_PLL4CFGR3_Register;
      --  RCC IC1 configuration register
      RCC_IC1CFGR     : aliased RCC_IC1CFGR_Register;
      --  RCC IC2 configuration register
      RCC_IC2CFGR     : aliased RCC_IC2CFGR_Register;
      --  RCC IC3 configuration register
      RCC_IC3CFGR     : aliased RCC_IC3CFGR_Register;
      --  RCC IC4 configuration register
      RCC_IC4CFGR     : aliased RCC_IC4CFGR_Register;
      --  RCC IC5 configuration register
      RCC_IC5CFGR     : aliased RCC_IC5CFGR_Register;
      --  RCC IC6 configuration register
      RCC_IC6CFGR     : aliased RCC_IC6CFGR_Register;
      --  RCC IC7 configuration register
      RCC_IC7CFGR     : aliased RCC_IC7CFGR_Register;
      --  RCC IC8 configuration register
      RCC_IC8CFGR     : aliased RCC_IC8CFGR_Register;
      --  RCC IC9 configuration register
      RCC_IC9CFGR     : aliased RCC_IC9CFGR_Register;
      --  RCC IC10 configuration register
      RCC_IC10CFGR    : aliased RCC_IC10CFGR_Register;
      --  RCC IC11 configuration register
      RCC_IC11CFGR    : aliased RCC_IC11CFGR_Register;
      --  RCC IC12 configuration register
      RCC_IC12CFGR    : aliased RCC_IC12CFGR_Register;
      --  RCC IC13 configuration register
      RCC_IC13CFGR    : aliased RCC_IC13CFGR_Register;
      --  RCC IC14 configuration register
      RCC_IC14CFGR    : aliased RCC_IC14CFGR_Register;
      --  RCC IC15 configuration register
      RCC_IC15CFGR    : aliased RCC_IC15CFGR_Register;
      --  RCC IC16 configuration register
      RCC_IC16CFGR    : aliased RCC_IC16CFGR_Register;
      --  RCC IC17 configuration register
      RCC_IC17CFGR    : aliased RCC_IC17CFGR_Register;
      --  RCC IC18 configuration register
      RCC_IC18CFGR    : aliased RCC_IC18CFGR_Register;
      --  RCC IC19 configuration register
      RCC_IC19CFGR    : aliased RCC_IC19CFGR_Register;
      --  RCC IC20 configuration register
      RCC_IC20CFGR    : aliased RCC_IC20CFGR_Register;
      --  RCC clock-source interrupt enable register
      RCC_CIER        : aliased RCC_CIER_Register;
      --  RCC clock-source interrupt flag register
      RCC_CIFR        : aliased RCC_CIFR_Register;
      --  RCC clock-source interrupt Clear register
      RCC_CICR        : aliased RCC_CICR_Register;
      --  RCC clock configuration for independent peripheral register1
      RCC_CCIPR1      : aliased RCC_CCIPR1_Register;
      --  RCC clock configuration for independent peripheral register 2
      RCC_CCIPR2      : aliased RCC_CCIPR2_Register;
      --  RCC clock configuration for independent peripheral register3
      RCC_CCIPR3      : aliased RCC_CCIPR3_Register;
      --  RCC clock configuration for independent peripheral register4
      RCC_CCIPR4      : aliased RCC_CCIPR4_Register;
      --  RCC lock configuration for independent peripheral register5
      RCC_CCIPR5      : aliased RCC_CCIPR5_Register;
      --  RCC clock configuration for independent peripheral register6
      RCC_CCIPR6      : aliased RCC_CCIPR6_Register;
      --  RCC clock configuration for independent peripheral register7
      RCC_CCIPR7      : aliased RCC_CCIPR7_Register;
      --  RCC clock configuration for independent peripheral register8
      RCC_CCIPR8      : aliased RCC_CCIPR8_Register;
      --  RCC clock configuration for independent peripheral register9
      RCC_CCIPR9      : aliased RCC_CCIPR9_Register;
      --  RCC clock configuration for independent peripheral register12
      RCC_CCIPR12     : aliased RCC_CCIPR12_Register;
      --  RCC clock configuration for independent peripheral register13
      RCC_CCIPR13     : aliased RCC_CCIPR13_Register;
      --  RCC clock configuration for independent peripheral register14
      RCC_CCIPR14     : aliased RCC_CCIPR14_Register;
      --  RCC SoC buses reset register
      RCC_BUSRSTR     : aliased RCC_BUSRSTR_Register;
      --  RCC miscellaneous configurations reset register
      RCC_MISCRSTR    : aliased RCC_MISCRSTR_Register;
      --  RCC memories reset register
      RCC_MEMRSTR     : aliased RCC_MEMRSTR_Register;
      --  RCC AHB1 Reset register
      RCC_AHB1RSTR    : aliased RCC_AHB1RSTR_Register;
      --  RCC AHB2 reset register
      RCC_AHB2RSTR    : aliased RCC_AHB2RSTR_Register;
      --  RCC AHB3 reset register
      RCC_AHB3RSTR    : aliased RCC_AHB3RSTR_Register;
      --  RCC AHB4 reset register
      RCC_AHB4RSTR    : aliased RCC_AHB4RSTR_Register;
      --  RCC AHB5 reset register
      RCC_AHB5RSTR    : aliased RCC_AHB5RSTR_Register;
      --  RCC APB1L reset register
      RCC_APB1LRSTR   : aliased RCC_APB1LRSTR_Register;
      --  RCC APB1H reset register
      RCC_APB1HRSTR   : aliased RCC_APB1HRSTR_Register;
      --  RCC APB2 reset register
      RCC_APB2RSTR    : aliased RCC_APB2RSTR_Register;
      --  RCC APB4L reset register
      RCC_APB4LRSTR   : aliased RCC_APB4LRSTR_Register;
      --  RCC APB4H reset register
      RCC_APB4HRSTR   : aliased RCC_APB4HRSTR_Register;
      --  RCC APB5 reset register
      RCC_APB5RSTR    : aliased RCC_APB5RSTR_Register;
      --  RCC IC dividers enable register
      RCC_DIVENR      : aliased RCC_DIVENR_Register;
      --  RCC SoC buses enable register
      RCC_BUSENR      : aliased RCC_BUSENR_Register;
      --  RCC miscellaneous configuration enable register
      RCC_MISCENR     : aliased RCC_MISCENR_Register;
      --  RCC memory enable register
      RCC_MEMENR      : aliased RCC_MEMENR_Register;
      --  RCC AHB1 enable register
      RCC_AHB1ENR     : aliased RCC_AHB1ENR_Register;
      --  RCC AHB2 enable register
      RCC_AHB2ENR     : aliased RCC_AHB2ENR_Register;
      --  RCC AHB3 enable register
      RCC_AHB3ENR     : aliased RCC_AHB3ENR_Register;
      --  RCC AHB4 enable register
      RCC_AHB4ENR     : aliased RCC_AHB4ENR_Register;
      --  RCC AHB5 enable register
      RCC_AHB5ENR     : aliased RCC_AHB5ENR_Register;
      --  RCC APB1L enable register
      RCC_APB1LENR    : aliased RCC_APB1LENR_Register;
      --  RCC APB1H enable register
      RCC_APB1HENR    : aliased RCC_APB1HENR_Register;
      --  RCC APB2 enable register
      RCC_APB2ENR     : aliased RCC_APB2ENR_Register;
      --  RCC APB3 enable register
      RCC_APB3ENR     : aliased RCC_APB3ENR_Register;
      --  RCC APB4L enable register
      RCC_APB4LENR    : aliased RCC_APB4LENR_Register;
      --  RCC APB4H enable register
      RCC_APB4HENR    : aliased RCC_APB4HENR_Register;
      --  RCC APB5 enable register
      RCC_APB5ENR     : aliased RCC_APB5ENR_Register;
      --  RCC dividers Sleep enable register
      RCC_DIVLPENR    : aliased RCC_DIVLPENR_Register;
      --  RCC SoC buses Sleep enable register
      RCC_BUSLPENR    : aliased RCC_BUSLPENR_Register;
      --  RCC miscellaneous configurations Sleep enable register
      RCC_MISCLPENR   : aliased RCC_MISCLPENR_Register;
      --  RCC memory Sleep enable register
      RCC_MEMLPENR    : aliased RCC_MEMLPENR_Register;
      --  RCC AHB1 Sleep enable register
      RCC_AHB1LPENR   : aliased RCC_AHB1LPENR_Register;
      --  RCC AHB2 Sleep enable register
      RCC_AHB2LPENR   : aliased RCC_AHB2LPENR_Register;
      --  RCC AHB3 Sleep enable register
      RCC_AHB3LPENR   : aliased RCC_AHB3LPENR_Register;
      --  RCC AHB4 Sleep enable register
      RCC_AHB4LPENR   : aliased RCC_AHB4LPENR_Register;
      --  RCC AHB5 Sleep enable register
      RCC_AHB5LPENR   : aliased RCC_AHB5LPENR_Register;
      --  RCC APB1L Sleep enable register
      RCC_APB1LLPENR  : aliased RCC_APB1LLPENR_Register;
      --  RCC APB1H Sleep enable register
      RCC_APB1HLPENR  : aliased RCC_APB1HLPENR_Register;
      --  RCC APB2 Sleep enable register
      RCC_APB2LPENR   : aliased RCC_APB2LPENR_Register;
      --  RCC APB3 Sleep enable register
      RCC_APB3LPENR   : aliased RCC_APB3LPENR_Register;
      --  RCC APB4L Sleep enable register
      RCC_APB4LLPENR  : aliased RCC_APB4LLPENR_Register;
      --  RCC APB4H Sleep enable register
      RCC_APB4HLPENR  : aliased RCC_APB4HLPENR_Register;
      --  RCC APB5 Sleep enable register
      RCC_APB5LPENR   : aliased RCC_APB5LPENR_Register;
      --  RCC APB5 Sleep enable register
      RCC_RDCR        : aliased RCC_RDCR_Register;
      --  RCC oscillator secure configuration register0
      RCC_SECCFGR0    : aliased RCC_SECCFGR0_Register;
      --  RCC oscillator privilege configuration register0
      RCC_PRIVCFGR0   : aliased RCC_PRIVCFGR0_Register;
      --  RCC oscillator lock configuration register0
      RCC_LOCKCFGR0   : aliased RCC_LOCKCFGR0_Register;
      --  RCC oscillator public configuration register0
      RCC_PUBCFGR0    : aliased RCC_PUBCFGR0_Register;
      --  RCC PLL secure configuration register1
      RCC_SECCFGR1    : aliased RCC_SECCFGR1_Register;
      --  RCC PLL privilege configuration register1
      RCC_PRIVCFGR1   : aliased RCC_PRIVCFGR1_Register;
      --  RCC PLL lock configuration register1
      RCC_LOCKCFGR1   : aliased RCC_LOCKCFGR1_Register;
      --  RCC PLL public configuration register1
      RCC_PUBCFGR1    : aliased RCC_PUBCFGR1_Register;
      --  RCC divider secure configuration register2
      RCC_SECCFGR2    : aliased RCC_SECCFGR2_Register;
      --  RCC divider privilege configuration register2
      RCC_PRIVCFGR2   : aliased RCC_PRIVCFGR2_Register;
      --  RCC divider lock configuration register2
      RCC_LOCKCFGR2   : aliased RCC_LOCKCFGR2_Register;
      --  RCC divider public configuration register2
      RCC_PUBCFGR2    : aliased RCC_PUBCFGR2_Register;
      --  RCC system secure configuration register3
      RCC_SECCFGR3    : aliased RCC_SECCFGR3_Register;
      --  RCC system privilege configuration register3
      RCC_PRIVCFGR3   : aliased RCC_PRIVCFGR3_Register;
      --  RCC system lock configuration register3
      RCC_LOCKCFGR3   : aliased RCC_LOCKCFGR3_Register;
      --  RCC system public configuration register3
      RCC_PUBCFGR3    : aliased RCC_PUBCFGR3_Register;
      --  RCC bus secure configuration register4
      RCC_SECCFGR4    : aliased RCC_SECCFGR4_Register;
      --  RCC bus privilege configuration register4
      RCC_PRIVCFGR4   : aliased RCC_PRIVCFGR4_Register;
      --  RCC bus lock configuration register4
      RCC_LOCKCFGR4   : aliased RCC_LOCKCFGR4_Register;
      --  RCC bus public configuration register4
      RCC_PUBCFGR4    : aliased RCC_PUBCFGR4_Register;
      --  RCC bus public configuration register4
      RCC_PUBCFGR5    : aliased RCC_PUBCFGR5_Register;
      --  RCC control set register
      RCC_CSR         : aliased RCC_CSR_Register;
      --  RCC Stop configuration register
      RCC_STOPCSR     : aliased RCC_STOPCSR_Register;
      --  RCC bus reset set register
      RCC_BUSRSTSR    : aliased RCC_BUSRSTSR_Register;
      --  RCC miscellaneous reset register
      RCC_MISCRSTSR   : aliased RCC_MISCRSTSR_Register;
      --  RCC memory reset register
      RCC_MEMRSTSR    : aliased RCC_MEMRSTSR_Register;
      --  RCC AHB1 reset register
      RCC_AHB1RSTSR   : aliased RCC_AHB1RSTSR_Register;
      --  RCC AHB2 reset register
      RCC_AHB2RSTSR   : aliased RCC_AHB2RSTSR_Register;
      --  RCC AHB3 reset register
      RCC_AHB3RSTSR   : aliased RCC_AHB3RSTSR_Register;
      --  RCC AHB4 reset register
      RCC_AHB4RSTSR   : aliased RCC_AHB4RSTSR_Register;
      --  RCC AHB5 reset register
      RCC_AHB5RSTSR   : aliased RCC_AHB5RSTSR_Register;
      --  RCC APB1L reset register
      RCC_APB1LRSTSR  : aliased RCC_APB1LRSTSR_Register;
      --  RCC APB1H reset register
      RCC_APB1HRSTSR  : aliased RCC_APB1HRSTSR_Register;
      --  RCC APB2 reset register
      RCC_APB2RSTSR   : aliased RCC_APB2RSTSR_Register;
      --  RCC APB4L reset register
      RCC_APB4LRSTSR  : aliased RCC_APB4LRSTSR_Register;
      --  RCC APB4H reset register
      RCC_APB4HRSTSR  : aliased RCC_APB4HRSTSR_Register;
      --  RCC APB5 reset register
      RCC_APB5RSTSR   : aliased RCC_APB5RSTSR_Register;
      --  RCC Divider enable register
      RCC_DIVENSR     : aliased RCC_DIVENSR_Register;
      --  RCC bus enable register
      RCC_BUSENSR     : aliased RCC_BUSENSR_Register;
      --  RCC miscellaneous enable register
      RCC_MISCENSR    : aliased RCC_MISCENSR_Register;
      --  RCC memory enable register
      RCC_MEMENSR     : aliased RCC_MEMENSR_Register;
      --  RCC AHB1 enable register
      RCC_AHB1ENSR    : aliased RCC_AHB1ENSR_Register;
      --  RCC AHB2 enable register
      RCC_AHB2ENSR    : aliased RCC_AHB2ENSR_Register;
      --  RCC AHB3 enable register
      RCC_AHB3ENSR    : aliased RCC_AHB3ENSR_Register;
      --  RCC AHB4 enable register
      RCC_AHB4ENSR    : aliased RCC_AHB4ENSR_Register;
      --  RCC AHB5 enable register
      RCC_AHB5ENSR    : aliased RCC_AHB5ENSR_Register;
      --  RCC APB1L enable register
      RCC_APB1LENSR   : aliased RCC_APB1LENSR_Register;
      --  RCC APB1H enable register
      RCC_APB1HENSR   : aliased RCC_APB1HENSR_Register;
      --  RCC APB2 enable register
      RCC_APB2ENSR    : aliased RCC_APB2ENSR_Register;
      --  RCC APB3 enable register
      RCC_APB3ENSR    : aliased RCC_APB3ENSR_Register;
      --  RCC APB4L enable register
      RCC_APB4LENSR   : aliased RCC_APB4LENSR_Register;
      --  RCC APB4H enable register
      RCC_APB4HENSR   : aliased RCC_APB4HENSR_Register;
      --  RCC APB5 enable register
      RCC_APB5ENSR    : aliased RCC_APB5ENSR_Register;
      --  RCC divider Sleep enable register
      RCC_DIVLPENSR   : aliased RCC_DIVLPENSR_Register;
      --  RCC bus Sleep enable register
      RCC_BUSLPENSR   : aliased RCC_BUSLPENSR_Register;
      --  RCC miscellaneous Sleep enable register
      RCC_MISCLPENSR  : aliased RCC_MISCLPENSR_Register;
      --  RCC memory sleep enable register
      RCC_MEMLPENSR   : aliased RCC_MEMLPENSR_Register;
      --  RCC AHB1 Sleep enable register
      RCC_AHB1LPENSR  : aliased RCC_AHB1LPENSR_Register;
      --  RCC AHB2 Sleep enable register
      RCC_AHB2LPENSR  : aliased RCC_AHB2LPENSR_Register;
      --  RCC AHB3 Sleep enable register
      RCC_AHB3LPENSR  : aliased RCC_AHB3LPENSR_Register;
      --  RCC AHB4 Sleep enable register
      RCC_AHB4LPENSR  : aliased RCC_AHB4LPENSR_Register;
      --  RCC AHB5 Sleep enable register
      RCC_AHB5LPENSR  : aliased RCC_AHB5LPENSR_Register;
      --  RCC APB1L Sleep enable register
      RCC_APB1LLPENSR : aliased RCC_APB1LLPENSR_Register;
      --  RCC APB1H Sleep enable register
      RCC_APB1HLPENSR : aliased RCC_APB1HLPENSR_Register;
      --  RCC APB2 Sleep enable register
      RCC_APB2LPENSR  : aliased RCC_APB2LPENSR_Register;
      --  RCC APB3 Sleep enable register
      RCC_APB3LPENSR  : aliased RCC_APB3LPENSR_Register;
      --  RCC APB4L Sleep enable register
      RCC_APB4LLPENSR : aliased RCC_APB4LLPENSR_Register;
      --  RCC APB4H Sleep enable register
      RCC_APB4HLPENSR : aliased RCC_APB4HLPENSR_Register;
      --  RCC APB5 Sleep enable register
      RCC_APB5LPENSR  : aliased RCC_APB5LPENSR_Register;
      --  RCC oscillator privilege configuration register0
      RCC_PRIVCFGSR0  : aliased RCC_PRIVCFGSR0_Register;
      --  RCC oscillator public configuration register0
      RCC_PUBCFGSR0   : aliased RCC_PUBCFGSR0_Register;
      --  RCC PLL privilege configuration register1
      RCC_PRIVCFGSR1  : aliased RCC_PRIVCFGSR1_Register;
      --  RCC PLL public configuration register1
      RCC_PUBCFGSR1   : aliased RCC_PUBCFGSR1_Register;
      --  RCC divider privilege configuration register2
      RCC_PRIVCFGSR2  : aliased RCC_PRIVCFGSR2_Register;
      --  RCC divider public configuration register2
      RCC_PUBCFGSR2   : aliased RCC_PUBCFGSR2_Register;
      --  RCC system secure configuration register3
      RCC_SECCFGSR3   : aliased RCC_SECCFGSR3_Register;
      --  RCC system privilege configuration register3
      RCC_PRIVCFGSR3  : aliased RCC_PRIVCFGSR3_Register;
      --  RCC system lock configuration register3
      RCC_LOCKCFGSR3  : aliased RCC_LOCKCFGSR3_Register;
      --  RCC system public configuration register3
      RCC_PUBCFGSR3   : aliased RCC_PUBCFGSR3_Register;
      --  RCC privilege configuration register4
      RCC_PRIVCFGSR4  : aliased RCC_PRIVCFGSR4_Register;
      --  RCC public configuration register4
      RCC_PUBCFGSR4   : aliased RCC_PUBCFGSR4_Register;
      --  RCC public configuration register4
      RCC_PUBCFGSR5   : aliased RCC_PUBCFGSR5_Register;
      --  RCC control Clear register
      RCC_CCR         : aliased RCC_CCR_Register;
      --  RCC StopCCR configuration register
      RCC_STOPCCR     : aliased RCC_STOPCCR_Register;
      --  RCC bus reset register
      RCC_BUSRSTCR    : aliased RCC_BUSRSTCR_Register;
      --  RCC miscellaneous reset register
      RCC_MISCRSTCR   : aliased RCC_MISCRSTCR_Register;
      --  RCC memory reset register
      RCC_MEMRSTCR    : aliased RCC_MEMRSTCR_Register;
      --  RCC AHB1 reset register
      RCC_AHB1RSTCR   : aliased RCC_AHB1RSTCR_Register;
      --  RCC AHB2 Reset register
      RCC_AHB2RSTCR   : aliased RCC_AHB2RSTCR_Register;
      --  RCC AHB3 reset register
      RCC_AHB3RSTCR   : aliased RCC_AHB3RSTCR_Register;
      --  RCC AHB4 reset register
      RCC_AHB4RSTCR   : aliased RCC_AHB4RSTCR_Register;
      --  RCC AHB5 reset register
      RCC_AHB5RSTCR   : aliased RCC_AHB5RSTCR_Register;
      --  RCC APB1L reset register
      RCC_APB1LRSTCR  : aliased RCC_APB1LRSTCR_Register;
      --  RCC APB1H reset register
      RCC_APB1HRSTCR  : aliased RCC_APB1HRSTCR_Register;
      --  RCC APB2 reset register
      RCC_APB2RSTCR   : aliased RCC_APB2RSTCR_Register;
      --  RCC APB4L reset register
      RCC_APB4LRSTCR  : aliased RCC_APB4LRSTCR_Register;
      --  RCC APB4H reset register
      RCC_APB4HRSTCR  : aliased RCC_APB4HRSTCR_Register;
      --  RCC APB5 reset register
      RCC_APB5RSTCR   : aliased RCC_APB5RSTCR_Register;
      --  RCC divider enable register
      RCC_DIVENCR     : aliased RCC_DIVENCR_Register;
      --  RCC bus enable register
      RCC_BUSENCR     : aliased RCC_BUSENCR_Register;
      --  RCC miscellaneous enable register
      RCC_MISCENCR    : aliased RCC_MISCENCR_Register;
      --  RCC memory enable register
      RCC_MEMENCR     : aliased RCC_MEMENCR_Register;
      --  RCC AHB1 enable register
      RCC_AHB1ENCR    : aliased RCC_AHB1ENCR_Register;
      --  RCC AHB2 enable register
      RCC_AHB2ENCR    : aliased RCC_AHB2ENCR_Register;
      --  RCC AHB3 enable register
      RCC_AHB3ENCR    : aliased RCC_AHB3ENCR_Register;
      --  RCC AHB4 enable register
      RCC_AHB4ENCR    : aliased RCC_AHB4ENCR_Register;
      --  RCC AHB5 enable register
      RCC_AHB5ENCR    : aliased RCC_AHB5ENCR_Register;
      --  RCC APB1L enable register
      RCC_APB1LENCR   : aliased RCC_APB1LENCR_Register;
      --  RCC APB1H enable register
      RCC_APB1HENCR   : aliased RCC_APB1HENCR_Register;
      --  RCC APB2 enable register
      RCC_APB2ENCR    : aliased RCC_APB2ENCR_Register;
      --  RCC APB3 enable register
      RCC_APB3ENCR    : aliased RCC_APB3ENCR_Register;
      --  RCC APB4L enable register
      RCC_APB4LENCR   : aliased RCC_APB4LENCR_Register;
      --  RCC APB4H enable register
      RCC_APB4HENCR   : aliased RCC_APB4HENCR_Register;
      --  RCC APB5 enable register
      RCC_APB5ENCR    : aliased RCC_APB5ENCR_Register;
      --  RCC divider Sleep enable register
      RCC_DIVLPENCR   : aliased RCC_DIVLPENCR_Register;
      --  RCC bus Sleep enable register
      RCC_BUSLPENCR   : aliased RCC_BUSLPENCR_Register;
      --  RCC miscellaneous Sleep enable register
      RCC_MISCLPENCR  : aliased RCC_MISCLPENCR_Register;
      --  RCC memory Sleep enable register
      RCC_MEMLPENCR   : aliased RCC_MEMLPENCR_Register;
      --  RCC AHB1 Sleep enable register
      RCC_AHB1LPENCR  : aliased RCC_AHB1LPENCR_Register;
      --  RCC AHB2 Sleep enable register
      RCC_AHB2LPENCR  : aliased RCC_AHB2LPENCR_Register;
      --  RCC AHB3 Sleep enable register
      RCC_AHB3LPENCR  : aliased RCC_AHB3LPENCR_Register;
      --  RCC AHB4 Sleep enable register
      RCC_AHB4LPENCR  : aliased RCC_AHB4LPENCR_Register;
      --  RCC AHB5 Sleep enable register
      RCC_AHB5LPENCR  : aliased RCC_AHB5LPENCR_Register;
      --  RCC APB1L Sleep enable register
      RCC_APB1LLPENCR : aliased RCC_APB1LLPENCR_Register;
      --  RCC APB1H Sleep enable register
      RCC_APB1HLPENCR : aliased RCC_APB1HLPENCR_Register;
      --  RCC APB2 Sleep enable register
      RCC_APB2LPENCR  : aliased RCC_APB2LPENCR_Register;
      --  RCC APB3 Sleep enable register
      RCC_APB3LPENCR  : aliased RCC_APB3LPENCR_Register;
      --  RCC APB4L Sleep enable register
      RCC_APB4LLPENCR : aliased RCC_APB4LLPENCR_Register;
      --  RCC APB4H Sleep enable register
      RCC_APB4HLPENCR : aliased RCC_APB4HLPENCR_Register;
      --  RCC APB5 Sleep enable register
      RCC_APB5LPENCR  : aliased RCC_APB5LPENCR_Register;
      --  RCC oscillator privilege configuration register0
      RCC_PRIVCFGCR0  : aliased RCC_PRIVCFGCR0_Register;
      --  RCC oscillator public configuration register0
      RCC_PUBCFGCR0   : aliased RCC_PUBCFGCR0_Register;
      --  RCC PLL privilege configuration register1
      RCC_PRIVCFGCR1  : aliased RCC_PRIVCFGCR1_Register;
      --  RCC PLL public configuration register1
      RCC_PUBCFGCR1   : aliased RCC_PUBCFGCR1_Register;
      --  RCC divider privilege configuration register2
      RCC_PRIVCFGCR2  : aliased RCC_PRIVCFGCR2_Register;
      --  RCC divider public configuration register2
      RCC_PUBCFGCR2   : aliased RCC_PUBCFGCR2_Register;
      --  RCC system privilege configuration register3
      RCC_PRIVCFGCR3  : aliased RCC_PRIVCFGCR3_Register;
      --  RCC system public configuration register3
      RCC_PUBCFGCR3   : aliased RCC_PUBCFGCR3_Register;
      --  RCC privilege configuration register4
      RCC_PRIVCFGCR4  : aliased RCC_PRIVCFGCR4_Register;
      --  RCC public configuration register4
      RCC_PUBCFGCR4   : aliased RCC_PUBCFGCR4_Register;
      --  RCC public configuration register4
      RCC_PUBCFGCR5   : aliased RCC_PUBCFGCR5_Register;
   end record
     with Volatile;

   for RCC_Peripheral use record
      RCC_CR          at 16#0# range 0 .. 31;
      RCC_SR          at 16#4# range 0 .. 31;
      RCC_STOPCR      at 16#8# range 0 .. 31;
      RCC_CFGR1       at 16#20# range 0 .. 31;
      RCC_CFGR2       at 16#24# range 0 .. 31;
      RCC_CKPROTR     at 16#28# range 0 .. 31;
      RCC_BDCR        at 16#2C# range 0 .. 31;
      RCC_HWRSR       at 16#30# range 0 .. 31;
      RCC_RSR         at 16#34# range 0 .. 31;
      RCC_LSECFGR     at 16#40# range 0 .. 31;
      RCC_MSICFGR     at 16#44# range 0 .. 31;
      RCC_HSICFGR     at 16#48# range 0 .. 31;
      RCC_HSIMCR      at 16#4C# range 0 .. 31;
      RCC_HSIMSR      at 16#50# range 0 .. 31;
      RCC_HSECFGR     at 16#54# range 0 .. 31;
      RCC_PLL1CFGR1   at 16#80# range 0 .. 31;
      RCC_PLL1CFGR2   at 16#84# range 0 .. 31;
      RCC_PLL1CFGR3   at 16#88# range 0 .. 31;
      RCC_PLL2CFGR1   at 16#90# range 0 .. 31;
      RCC_PLL2CFGR2   at 16#94# range 0 .. 31;
      RCC_PLL2CFGR3   at 16#98# range 0 .. 31;
      RCC_PLL3CFGR1   at 16#A0# range 0 .. 31;
      RCC_PLL3CFGR2   at 16#A4# range 0 .. 31;
      RCC_PLL3CFGR3   at 16#A8# range 0 .. 31;
      RCC_PLL4CFGR1   at 16#B0# range 0 .. 31;
      RCC_PLL4CFGR2   at 16#B4# range 0 .. 31;
      RCC_PLL4CFGR3   at 16#B8# range 0 .. 31;
      RCC_IC1CFGR     at 16#C4# range 0 .. 31;
      RCC_IC2CFGR     at 16#C8# range 0 .. 31;
      RCC_IC3CFGR     at 16#CC# range 0 .. 31;
      RCC_IC4CFGR     at 16#D0# range 0 .. 31;
      RCC_IC5CFGR     at 16#D4# range 0 .. 31;
      RCC_IC6CFGR     at 16#D8# range 0 .. 31;
      RCC_IC7CFGR     at 16#DC# range 0 .. 31;
      RCC_IC8CFGR     at 16#E0# range 0 .. 31;
      RCC_IC9CFGR     at 16#E4# range 0 .. 31;
      RCC_IC10CFGR    at 16#E8# range 0 .. 31;
      RCC_IC11CFGR    at 16#EC# range 0 .. 31;
      RCC_IC12CFGR    at 16#F0# range 0 .. 31;
      RCC_IC13CFGR    at 16#F4# range 0 .. 31;
      RCC_IC14CFGR    at 16#F8# range 0 .. 31;
      RCC_IC15CFGR    at 16#FC# range 0 .. 31;
      RCC_IC16CFGR    at 16#100# range 0 .. 31;
      RCC_IC17CFGR    at 16#104# range 0 .. 31;
      RCC_IC18CFGR    at 16#108# range 0 .. 31;
      RCC_IC19CFGR    at 16#10C# range 0 .. 31;
      RCC_IC20CFGR    at 16#110# range 0 .. 31;
      RCC_CIER        at 16#124# range 0 .. 31;
      RCC_CIFR        at 16#128# range 0 .. 31;
      RCC_CICR        at 16#12C# range 0 .. 31;
      RCC_CCIPR1      at 16#144# range 0 .. 31;
      RCC_CCIPR2      at 16#148# range 0 .. 31;
      RCC_CCIPR3      at 16#14C# range 0 .. 31;
      RCC_CCIPR4      at 16#150# range 0 .. 31;
      RCC_CCIPR5      at 16#154# range 0 .. 31;
      RCC_CCIPR6      at 16#158# range 0 .. 31;
      RCC_CCIPR7      at 16#15C# range 0 .. 31;
      RCC_CCIPR8      at 16#160# range 0 .. 31;
      RCC_CCIPR9      at 16#164# range 0 .. 31;
      RCC_CCIPR12     at 16#170# range 0 .. 31;
      RCC_CCIPR13     at 16#174# range 0 .. 31;
      RCC_CCIPR14     at 16#178# range 0 .. 31;
      RCC_BUSRSTR     at 16#204# range 0 .. 31;
      RCC_MISCRSTR    at 16#208# range 0 .. 31;
      RCC_MEMRSTR     at 16#20C# range 0 .. 31;
      RCC_AHB1RSTR    at 16#210# range 0 .. 31;
      RCC_AHB2RSTR    at 16#214# range 0 .. 31;
      RCC_AHB3RSTR    at 16#218# range 0 .. 31;
      RCC_AHB4RSTR    at 16#21C# range 0 .. 31;
      RCC_AHB5RSTR    at 16#220# range 0 .. 31;
      RCC_APB1LRSTR   at 16#224# range 0 .. 31;
      RCC_APB1HRSTR   at 16#228# range 0 .. 31;
      RCC_APB2RSTR    at 16#22C# range 0 .. 31;
      RCC_APB4LRSTR   at 16#234# range 0 .. 31;
      RCC_APB4HRSTR   at 16#238# range 0 .. 31;
      RCC_APB5RSTR    at 16#23C# range 0 .. 31;
      RCC_DIVENR      at 16#240# range 0 .. 31;
      RCC_BUSENR      at 16#244# range 0 .. 31;
      RCC_MISCENR     at 16#248# range 0 .. 31;
      RCC_MEMENR      at 16#24C# range 0 .. 31;
      RCC_AHB1ENR     at 16#250# range 0 .. 31;
      RCC_AHB2ENR     at 16#254# range 0 .. 31;
      RCC_AHB3ENR     at 16#258# range 0 .. 31;
      RCC_AHB4ENR     at 16#25C# range 0 .. 31;
      RCC_AHB5ENR     at 16#260# range 0 .. 31;
      RCC_APB1LENR    at 16#264# range 0 .. 31;
      RCC_APB1HENR    at 16#268# range 0 .. 31;
      RCC_APB2ENR     at 16#26C# range 0 .. 31;
      RCC_APB3ENR     at 16#270# range 0 .. 31;
      RCC_APB4LENR    at 16#274# range 0 .. 31;
      RCC_APB4HENR    at 16#278# range 0 .. 31;
      RCC_APB5ENR     at 16#27C# range 0 .. 31;
      RCC_DIVLPENR    at 16#280# range 0 .. 31;
      RCC_BUSLPENR    at 16#284# range 0 .. 31;
      RCC_MISCLPENR   at 16#288# range 0 .. 31;
      RCC_MEMLPENR    at 16#28C# range 0 .. 31;
      RCC_AHB1LPENR   at 16#290# range 0 .. 31;
      RCC_AHB2LPENR   at 16#294# range 0 .. 31;
      RCC_AHB3LPENR   at 16#298# range 0 .. 31;
      RCC_AHB4LPENR   at 16#29C# range 0 .. 31;
      RCC_AHB5LPENR   at 16#2A0# range 0 .. 31;
      RCC_APB1LLPENR  at 16#2A4# range 0 .. 31;
      RCC_APB1HLPENR  at 16#2A8# range 0 .. 31;
      RCC_APB2LPENR   at 16#2AC# range 0 .. 31;
      RCC_APB3LPENR   at 16#2B0# range 0 .. 31;
      RCC_APB4LLPENR  at 16#2B4# range 0 .. 31;
      RCC_APB4HLPENR  at 16#2B8# range 0 .. 31;
      RCC_APB5LPENR   at 16#2BC# range 0 .. 31;
      RCC_RDCR        at 16#44C# range 0 .. 31;
      RCC_SECCFGR0    at 16#780# range 0 .. 31;
      RCC_PRIVCFGR0   at 16#784# range 0 .. 31;
      RCC_LOCKCFGR0   at 16#788# range 0 .. 31;
      RCC_PUBCFGR0    at 16#78C# range 0 .. 31;
      RCC_SECCFGR1    at 16#790# range 0 .. 31;
      RCC_PRIVCFGR1   at 16#794# range 0 .. 31;
      RCC_LOCKCFGR1   at 16#798# range 0 .. 31;
      RCC_PUBCFGR1    at 16#79C# range 0 .. 31;
      RCC_SECCFGR2    at 16#7A0# range 0 .. 31;
      RCC_PRIVCFGR2   at 16#7A4# range 0 .. 31;
      RCC_LOCKCFGR2   at 16#7A8# range 0 .. 31;
      RCC_PUBCFGR2    at 16#7AC# range 0 .. 31;
      RCC_SECCFGR3    at 16#7B0# range 0 .. 31;
      RCC_PRIVCFGR3   at 16#7B4# range 0 .. 31;
      RCC_LOCKCFGR3   at 16#7B8# range 0 .. 31;
      RCC_PUBCFGR3    at 16#7BC# range 0 .. 31;
      RCC_SECCFGR4    at 16#7C0# range 0 .. 31;
      RCC_PRIVCFGR4   at 16#7C4# range 0 .. 31;
      RCC_LOCKCFGR4   at 16#7C8# range 0 .. 31;
      RCC_PUBCFGR4    at 16#7CC# range 0 .. 31;
      RCC_PUBCFGR5    at 16#7D0# range 0 .. 31;
      RCC_CSR         at 16#800# range 0 .. 31;
      RCC_STOPCSR     at 16#808# range 0 .. 31;
      RCC_BUSRSTSR    at 16#A04# range 0 .. 31;
      RCC_MISCRSTSR   at 16#A08# range 0 .. 31;
      RCC_MEMRSTSR    at 16#A0C# range 0 .. 31;
      RCC_AHB1RSTSR   at 16#A10# range 0 .. 31;
      RCC_AHB2RSTSR   at 16#A14# range 0 .. 31;
      RCC_AHB3RSTSR   at 16#A18# range 0 .. 31;
      RCC_AHB4RSTSR   at 16#A1C# range 0 .. 31;
      RCC_AHB5RSTSR   at 16#A20# range 0 .. 31;
      RCC_APB1LRSTSR  at 16#A24# range 0 .. 31;
      RCC_APB1HRSTSR  at 16#A28# range 0 .. 31;
      RCC_APB2RSTSR   at 16#A2C# range 0 .. 31;
      RCC_APB4LRSTSR  at 16#A34# range 0 .. 31;
      RCC_APB4HRSTSR  at 16#A38# range 0 .. 31;
      RCC_APB5RSTSR   at 16#A3C# range 0 .. 31;
      RCC_DIVENSR     at 16#A40# range 0 .. 31;
      RCC_BUSENSR     at 16#A44# range 0 .. 31;
      RCC_MISCENSR    at 16#A48# range 0 .. 31;
      RCC_MEMENSR     at 16#A4C# range 0 .. 31;
      RCC_AHB1ENSR    at 16#A50# range 0 .. 31;
      RCC_AHB2ENSR    at 16#A54# range 0 .. 31;
      RCC_AHB3ENSR    at 16#A58# range 0 .. 31;
      RCC_AHB4ENSR    at 16#A5C# range 0 .. 31;
      RCC_AHB5ENSR    at 16#A60# range 0 .. 31;
      RCC_APB1LENSR   at 16#A64# range 0 .. 31;
      RCC_APB1HENSR   at 16#A68# range 0 .. 31;
      RCC_APB2ENSR    at 16#A6C# range 0 .. 31;
      RCC_APB3ENSR    at 16#A70# range 0 .. 31;
      RCC_APB4LENSR   at 16#A74# range 0 .. 31;
      RCC_APB4HENSR   at 16#A78# range 0 .. 31;
      RCC_APB5ENSR    at 16#A7C# range 0 .. 31;
      RCC_DIVLPENSR   at 16#A80# range 0 .. 31;
      RCC_BUSLPENSR   at 16#A84# range 0 .. 31;
      RCC_MISCLPENSR  at 16#A88# range 0 .. 31;
      RCC_MEMLPENSR   at 16#A8C# range 0 .. 31;
      RCC_AHB1LPENSR  at 16#A90# range 0 .. 31;
      RCC_AHB2LPENSR  at 16#A94# range 0 .. 31;
      RCC_AHB3LPENSR  at 16#A98# range 0 .. 31;
      RCC_AHB4LPENSR  at 16#A9C# range 0 .. 31;
      RCC_AHB5LPENSR  at 16#AA0# range 0 .. 31;
      RCC_APB1LLPENSR at 16#AA4# range 0 .. 31;
      RCC_APB1HLPENSR at 16#AA8# range 0 .. 31;
      RCC_APB2LPENSR  at 16#AAC# range 0 .. 31;
      RCC_APB3LPENSR  at 16#AB0# range 0 .. 31;
      RCC_APB4LLPENSR at 16#AB4# range 0 .. 31;
      RCC_APB4HLPENSR at 16#AB8# range 0 .. 31;
      RCC_APB5LPENSR  at 16#ABC# range 0 .. 31;
      RCC_PRIVCFGSR0  at 16#F84# range 0 .. 31;
      RCC_PUBCFGSR0   at 16#F8C# range 0 .. 31;
      RCC_PRIVCFGSR1  at 16#F94# range 0 .. 31;
      RCC_PUBCFGSR1   at 16#F9C# range 0 .. 31;
      RCC_PRIVCFGSR2  at 16#FA4# range 0 .. 31;
      RCC_PUBCFGSR2   at 16#FAC# range 0 .. 31;
      RCC_SECCFGSR3   at 16#FB0# range 0 .. 31;
      RCC_PRIVCFGSR3  at 16#FB4# range 0 .. 31;
      RCC_LOCKCFGSR3  at 16#FB8# range 0 .. 31;
      RCC_PUBCFGSR3   at 16#FBC# range 0 .. 31;
      RCC_PRIVCFGSR4  at 16#FC4# range 0 .. 31;
      RCC_PUBCFGSR4   at 16#FCC# range 0 .. 31;
      RCC_PUBCFGSR5   at 16#FD0# range 0 .. 31;
      RCC_CCR         at 16#1000# range 0 .. 31;
      RCC_STOPCCR     at 16#1008# range 0 .. 31;
      RCC_BUSRSTCR    at 16#1204# range 0 .. 31;
      RCC_MISCRSTCR   at 16#1208# range 0 .. 31;
      RCC_MEMRSTCR    at 16#120C# range 0 .. 31;
      RCC_AHB1RSTCR   at 16#1210# range 0 .. 31;
      RCC_AHB2RSTCR   at 16#1214# range 0 .. 31;
      RCC_AHB3RSTCR   at 16#1218# range 0 .. 31;
      RCC_AHB4RSTCR   at 16#121C# range 0 .. 31;
      RCC_AHB5RSTCR   at 16#1220# range 0 .. 31;
      RCC_APB1LRSTCR  at 16#1224# range 0 .. 31;
      RCC_APB1HRSTCR  at 16#1228# range 0 .. 31;
      RCC_APB2RSTCR   at 16#122C# range 0 .. 31;
      RCC_APB4LRSTCR  at 16#1234# range 0 .. 31;
      RCC_APB4HRSTCR  at 16#1238# range 0 .. 31;
      RCC_APB5RSTCR   at 16#123C# range 0 .. 31;
      RCC_DIVENCR     at 16#1240# range 0 .. 31;
      RCC_BUSENCR     at 16#1244# range 0 .. 31;
      RCC_MISCENCR    at 16#1248# range 0 .. 31;
      RCC_MEMENCR     at 16#124C# range 0 .. 31;
      RCC_AHB1ENCR    at 16#1250# range 0 .. 31;
      RCC_AHB2ENCR    at 16#1254# range 0 .. 31;
      RCC_AHB3ENCR    at 16#1258# range 0 .. 31;
      RCC_AHB4ENCR    at 16#125C# range 0 .. 31;
      RCC_AHB5ENCR    at 16#1260# range 0 .. 31;
      RCC_APB1LENCR   at 16#1264# range 0 .. 31;
      RCC_APB1HENCR   at 16#1268# range 0 .. 31;
      RCC_APB2ENCR    at 16#126C# range 0 .. 31;
      RCC_APB3ENCR    at 16#1270# range 0 .. 31;
      RCC_APB4LENCR   at 16#1274# range 0 .. 31;
      RCC_APB4HENCR   at 16#1278# range 0 .. 31;
      RCC_APB5ENCR    at 16#127C# range 0 .. 31;
      RCC_DIVLPENCR   at 16#1280# range 0 .. 31;
      RCC_BUSLPENCR   at 16#1284# range 0 .. 31;
      RCC_MISCLPENCR  at 16#1288# range 0 .. 31;
      RCC_MEMLPENCR   at 16#128C# range 0 .. 31;
      RCC_AHB1LPENCR  at 16#1290# range 0 .. 31;
      RCC_AHB2LPENCR  at 16#1294# range 0 .. 31;
      RCC_AHB3LPENCR  at 16#1298# range 0 .. 31;
      RCC_AHB4LPENCR  at 16#129C# range 0 .. 31;
      RCC_AHB5LPENCR  at 16#12A0# range 0 .. 31;
      RCC_APB1LLPENCR at 16#12A4# range 0 .. 31;
      RCC_APB1HLPENCR at 16#12A8# range 0 .. 31;
      RCC_APB2LPENCR  at 16#12AC# range 0 .. 31;
      RCC_APB3LPENCR  at 16#12B0# range 0 .. 31;
      RCC_APB4LLPENCR at 16#12B4# range 0 .. 31;
      RCC_APB4HLPENCR at 16#12B8# range 0 .. 31;
      RCC_APB5LPENCR  at 16#12BC# range 0 .. 31;
      RCC_PRIVCFGCR0  at 16#1784# range 0 .. 31;
      RCC_PUBCFGCR0   at 16#178C# range 0 .. 31;
      RCC_PRIVCFGCR1  at 16#1794# range 0 .. 31;
      RCC_PUBCFGCR1   at 16#179C# range 0 .. 31;
      RCC_PRIVCFGCR2  at 16#17A4# range 0 .. 31;
      RCC_PUBCFGCR2   at 16#17AC# range 0 .. 31;
      RCC_PRIVCFGCR3  at 16#17B4# range 0 .. 31;
      RCC_PUBCFGCR3   at 16#17BC# range 0 .. 31;
      RCC_PRIVCFGCR4  at 16#17C4# range 0 .. 31;
      RCC_PUBCFGCR4   at 16#17CC# range 0 .. 31;
      RCC_PUBCFGCR5   at 16#17D0# range 0 .. 31;
   end record;

   --  Reset and clock control
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => RCC_Base;

   --  Reset and clock control
   RCC_S_Periph : aliased RCC_Peripheral
     with Import, Address => RCC_S_Base;

end Interfaces.STM32.RCC;
