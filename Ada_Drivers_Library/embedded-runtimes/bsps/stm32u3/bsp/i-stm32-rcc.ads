--
--  Copyright (C) 2026, AdaCore
--

--  This spec has been automatically generated from STM32U3C5.svd

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

   --  RCC clock control register
   type RCC_CR_Register is record
      --  MSIS clock enable
      MSISON         : Boolean := True;
      --  MSI enable for some peripheral kernels
      MSIKERON       : Boolean := False;
      --  Read-only. MSIS clock ready flag
      MSISRDY        : Boolean := True;
      --  MSIK clock enable
      MSIKON         : Boolean := True;
      --  Read-only. MSIK clock ready flag
      MSIKRDY        : Boolean := True;
      --  MSIRC1 PLL mode enable
      MSIPLL1EN      : Boolean := False;
      --  MSIRC0 PLL mode enable
      MSIPLL0EN      : Boolean := False;
      --  MSIRC1 PLL mode fast startup
      MSIPLL1FAST    : Boolean := False;
      --  MSIRC0 PLL mode fast startup
      MSIPLL0FAST    : Boolean := False;
      --  Read-only. MSIRC1 PLL mode ready flag
      MSIPLL1RDY     : Boolean := False;
      --  Read-only. MSIRC0 PLL mode ready flag
      MSIPLL0RDY     : Boolean := False;
      --  HSI16 clock enable
      HSION          : Boolean := False;
      --  HSI16 enable for some peripheral kernels
      HSIKERON       : Boolean := False;
      --  Read-only. HSI16 clock ready flag
      HSIRDY         : Boolean := False;
      --  HSI48 clock enable
      HSI48ON        : Boolean := False;
      --  Read-only. HSI48 clock ready flag
      HSI48RDY       : Boolean := False;
      --  HSE clock enable
      HSEON          : Boolean := False;
      --  Read-only. HSE clock ready flag
      HSERDY         : Boolean := False;
      --  HSE crystal oscillator bypass
      HSEBYP         : Boolean := False;
      --  Clock security system enable
      HSECSSON       : Boolean := False;
      --  HSE external clock bypass mode
      HSEEXT         : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CR_Register use record
      MSISON         at 0 range 0 .. 0;
      MSIKERON       at 0 range 1 .. 1;
      MSISRDY        at 0 range 2 .. 2;
      MSIKON         at 0 range 3 .. 3;
      MSIKRDY        at 0 range 4 .. 4;
      MSIPLL1EN      at 0 range 5 .. 5;
      MSIPLL0EN      at 0 range 6 .. 6;
      MSIPLL1FAST    at 0 range 7 .. 7;
      MSIPLL0FAST    at 0 range 8 .. 8;
      MSIPLL1RDY     at 0 range 9 .. 9;
      MSIPLL0RDY     at 0 range 10 .. 10;
      HSION          at 0 range 11 .. 11;
      HSIKERON       at 0 range 12 .. 12;
      HSIRDY         at 0 range 13 .. 13;
      HSI48ON        at 0 range 14 .. 14;
      HSI48RDY       at 0 range 15 .. 15;
      HSEON          at 0 range 16 .. 16;
      HSERDY         at 0 range 17 .. 17;
      HSEBYP         at 0 range 18 .. 18;
      HSECSSON       at 0 range 19 .. 19;
      HSEEXT         at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype RCC_ICSCR1_MSICAL1_Field is Interfaces.Bit_Types.UInt6;
   subtype RCC_ICSCR1_MSICAL0_Field is Interfaces.Bit_Types.UInt6;
   subtype RCC_ICSCR1_MSIPLL1N_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_ICSCR1_MSIKDIV_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_ICSCR1_MSISDIV_Field is Interfaces.Bit_Types.UInt2;

   --  RCC internal clock source calibration register 1
   type RCC_ICSCR1_Register is record
      --  Read-only. MSIRC1 clock calibration for MSI ranges 4 to 7
      MSICAL1        : RCC_ICSCR1_MSICAL1_Field := 16#0#;
      --  Read-only. MSIRC0 clock calibration for MSI ranges 0 to 3
      MSICAL0        : RCC_ICSCR1_MSICAL0_Field := 16#0#;
      --  unspecified
      Reserved_12_18 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  MSIRCx (x = 0, 1) PLL mode HSE input division
      MSIHSINDIV     : Boolean := False;
      --  MSIRC1 PLL mode input clock selection
      MSIPLL1SEL     : Boolean := False;
      --  MSIRC0 PLL mode input clock selection
      MSIPLL0SEL     : Boolean := False;
      --  MSI bias mode selection
      MSIBIAS        : Boolean := False;
      --  MSI clock range selection
      MSIRGSEL       : Boolean := False;
      --  MSIRC1 PLL mode with LSE multiplication factor
      MSIPLL1N       : RCC_ICSCR1_MSIPLL1N_Field := 16#0#;
      --  MSIK oscillator division
      MSIKDIV        : RCC_ICSCR1_MSIKDIV_Field := 16#1#;
      --  MSIK clock source selection
      MSIKSEL        : Boolean := True;
      --  MSIS oscillator division
      MSISDIV        : RCC_ICSCR1_MSISDIV_Field := 16#1#;
      --  MSIS clock source selection
      MSISSEL        : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_ICSCR1_Register use record
      MSICAL1        at 0 range 0 .. 5;
      MSICAL0        at 0 range 6 .. 11;
      Reserved_12_18 at 0 range 12 .. 18;
      MSIHSINDIV     at 0 range 19 .. 19;
      MSIPLL1SEL     at 0 range 20 .. 20;
      MSIPLL0SEL     at 0 range 21 .. 21;
      MSIBIAS        at 0 range 22 .. 22;
      MSIRGSEL       at 0 range 23 .. 23;
      MSIPLL1N       at 0 range 24 .. 25;
      MSIKDIV        at 0 range 26 .. 27;
      MSIKSEL        at 0 range 28 .. 28;
      MSISDIV        at 0 range 29 .. 30;
      MSISSEL        at 0 range 31 .. 31;
   end record;

   subtype RCC_ICSCR2_MSITRIM1_Field is Interfaces.Bit_Types.UInt6;
   subtype RCC_ICSCR2_MSITRIM0_Field is Interfaces.Bit_Types.UInt6;

   --  RCC internal clock source calibration register 2
   type RCC_ICSCR2_Register is record
      --  MSIRC1 clock trimming for ranges 4 to 7
      MSITRIM1       : RCC_ICSCR2_MSITRIM1_Field := 16#20#;
      --  MSIRC0 clock trimming for ranges 0 to 3
      MSITRIM0       : RCC_ICSCR2_MSITRIM0_Field := 16#20#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_ICSCR2_Register use record
      MSITRIM1       at 0 range 0 .. 5;
      MSITRIM0       at 0 range 6 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype RCC_ICSCR3_HSICAL_Field is Interfaces.Bit_Types.UInt12;
   subtype RCC_ICSCR3_HSITRIM_Field is Interfaces.Bit_Types.UInt5;

   --  RCC internal clock source calibration register 3
   type RCC_ICSCR3_Register is record
      --  Read-only. HSI clock calibration
      HSICAL         : RCC_ICSCR3_HSICAL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  HSI clock trimming
      HSITRIM        : RCC_ICSCR3_HSITRIM_Field := 16#10#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_ICSCR3_Register use record
      HSICAL         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HSITRIM        at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype RCC_CRRCR_HSI48CAL_Field is Interfaces.Bit_Types.UInt9;

   --  RCC clock recovery RC register
   type RCC_CRRCR_Register is record
      --  Read-only. HSI48 clock calibration
      HSI48CAL      : RCC_CRRCR_HSI48CAL_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CRRCR_Register use record
      HSI48CAL      at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RCC_CFGR1_SW_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CFGR1_SWS_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CFGR1_MCO2SEL_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_CFGR1_MCO2PRE_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CFGR1_MCOSEL_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_CFGR1_MCOPRE_Field is Interfaces.Bit_Types.UInt3;

   --  RCC clock configuration register 1
   type RCC_CFGR1_Register is record
      --  System clock switch
      SW             : RCC_CFGR1_SW_Field := 16#0#;
      --  Read-only. System clock switch status
      SWS            : RCC_CFGR1_SWS_Field := 16#0#;
      --  Wake-up from Stop and CSS backup clock selection
      STOPWUCK       : Boolean := False;
      --  Wake-up from Stop kernel clock automatic enable selection
      STOPKERWUCK    : Boolean := False;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Microcontroller clock output 2
      MCO2SEL        : RCC_CFGR1_MCO2SEL_Field := 16#0#;
      --  Microcontroller clock output 2 prescaler
      MCO2PRE        : RCC_CFGR1_MCO2PRE_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Microcontroller clock output
      MCOSEL         : RCC_CFGR1_MCOSEL_Field := 16#0#;
      --  Microcontroller clock output prescaler
      MCOPRE         : RCC_CFGR1_MCOPRE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CFGR1_Register use record
      SW             at 0 range 0 .. 1;
      SWS            at 0 range 2 .. 3;
      STOPWUCK       at 0 range 4 .. 4;
      STOPKERWUCK    at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      MCO2SEL        at 0 range 16 .. 19;
      MCO2PRE        at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      MCOSEL         at 0 range 24 .. 27;
      MCOPRE         at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype RCC_CFGR2_HPRE_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_CFGR2_PPRE1_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CFGR2_PPRE2_Field is Interfaces.Bit_Types.UInt3;

   --  RCC clock configuration register 2
   type RCC_CFGR2_Register is record
      --  AHB prescaler
      HPRE           : RCC_CFGR2_HPRE_Field := 16#0#;
      --  APB1 prescaler
      PPRE1          : RCC_CFGR2_PPRE1_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  APB2 prescaler
      PPRE2          : RCC_CFGR2_PPRE2_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CFGR2_Register use record
      HPRE           at 0 range 0 .. 3;
      PPRE1          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PPRE2          at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype RCC_CFGR3_PPRE3_Field is Interfaces.Bit_Types.UInt3;

   --  RCC clock configuration register 3
   type RCC_CFGR3_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  APB3 prescaler
      PPRE3         : RCC_CFGR3_PPRE3_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CFGR3_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      PPRE3         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_CFGR4_BOOSTSEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CFGR4_BOOSTDIV_Field is Interfaces.Bit_Types.UInt4;

   --  RCC clock configuration register 4
   type RCC_CFGR4_Register is record
      --  EPOD booster input clock source selection
      BOOSTSEL       : RCC_CFGR4_BOOSTSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_11  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  EPOD booster input clock prescaler
      BOOSTDIV       : RCC_CFGR4_BOOSTDIV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CFGR4_Register use record
      BOOSTSEL       at 0 range 0 .. 1;
      Reserved_2_11  at 0 range 2 .. 11;
      BOOSTDIV       at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RCC clock interrupt enable register
   type RCC_CIER_Register is record
      --  LSI ready interrupt enable
      LSIRDYIE       : Boolean := False;
      --  LSE ready interrupt enable
      LSERDYIE       : Boolean := False;
      --  MSIS ready interrupt enable
      MSISRDYIE      : Boolean := False;
      --  HSI16 ready interrupt enable
      HSIRDYIE       : Boolean := False;
      --  HSE ready interrupt enable
      HSERDYIE       : Boolean := False;
      --  HSI48 ready interrupt enable
      HSI48RDYIE     : Boolean := False;
      --  MSIRC1 PLL mode ready interrupt enable
      MSIPLL1RDYIE   : Boolean := False;
      --  MSIRC0 PLL mode ready interrupt enable
      MSIPLL0RDYIE   : Boolean := False;
      --  MSI PLL mode with LSE unlock interrupt enable
      MSIPLLUIE      : Boolean := False;
      --  MSI PLL mode with HSE unlock interrupt enable
      MSIPLLHSUIE    : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  MSIK ready interrupt enable
      MSIKRDYIE      : Boolean := False;
      --  LSE clock security system interrupt enable
      LSECSSIE       : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CIER_Register use record
      LSIRDYIE       at 0 range 0 .. 0;
      LSERDYIE       at 0 range 1 .. 1;
      MSISRDYIE      at 0 range 2 .. 2;
      HSIRDYIE       at 0 range 3 .. 3;
      HSERDYIE       at 0 range 4 .. 4;
      HSI48RDYIE     at 0 range 5 .. 5;
      MSIPLL1RDYIE   at 0 range 6 .. 6;
      MSIPLL0RDYIE   at 0 range 7 .. 7;
      MSIPLLUIE      at 0 range 8 .. 8;
      MSIPLLHSUIE    at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      MSIKRDYIE      at 0 range 11 .. 11;
      LSECSSIE       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC clock interrupt flag register
   type RCC_CIFR_Register is record
      --  Read-only. LSI ready interrupt flag
      LSIRDYF        : Boolean;
      --  Read-only. LSE ready interrupt flag
      LSERDYF        : Boolean;
      --  Read-only. MSIS ready interrupt flag
      MSISRDYF       : Boolean;
      --  Read-only. HSI16 ready interrupt flag
      HSIRDYF        : Boolean;
      --  Read-only. HSE ready interrupt flag
      HSERDYF        : Boolean;
      --  Read-only. HSI48 ready interrupt flag
      HSI48RDYF      : Boolean;
      --  Read-only. MSIRC1 PLL mode ready interrupt enable
      MSIPLL1RDYF    : Boolean;
      --  Read-only. MSIRC0 PLL mode ready interrupt flag
      MSIPLL0RDYF    : Boolean;
      --  Read-only. MSI PLL mode with LSE unlock interrupt flag
      MSIPLLUF       : Boolean;
      --  Read-only. MSI PLL mode with HSE unlock interrupt flag
      MSIPLLHSUF     : Boolean;
      --  Read-only. Clock security system interrupt flag
      CSSF           : Boolean;
      --  Read-only. MSIK ready interrupt flag
      MSIKRDYF       : Boolean;
      --  Read-only. LSE clock security system interrupt flag
      LSECSSF        : Boolean;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CIFR_Register use record
      LSIRDYF        at 0 range 0 .. 0;
      LSERDYF        at 0 range 1 .. 1;
      MSISRDYF       at 0 range 2 .. 2;
      HSIRDYF        at 0 range 3 .. 3;
      HSERDYF        at 0 range 4 .. 4;
      HSI48RDYF      at 0 range 5 .. 5;
      MSIPLL1RDYF    at 0 range 6 .. 6;
      MSIPLL0RDYF    at 0 range 7 .. 7;
      MSIPLLUF       at 0 range 8 .. 8;
      MSIPLLHSUF     at 0 range 9 .. 9;
      CSSF           at 0 range 10 .. 10;
      MSIKRDYF       at 0 range 11 .. 11;
      LSECSSF        at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC clock interrupt clear register
   type RCC_CICR_Register is record
      --  Write-only. LSI ready interrupt clear
      LSIRDYC        : Boolean := False;
      --  Write-only. LSE ready interrupt clear
      LSERDYC        : Boolean := False;
      --  Write-only. MSIS ready interrupt clear
      MSISRDYC       : Boolean := False;
      --  Write-only. HSI16 ready interrupt clear
      HSIRDYC        : Boolean := False;
      --  Write-only. HSE ready interrupt clear
      HSERDYC        : Boolean := False;
      --  Write-only. HSI48 ready interrupt clear
      HSI48RDYC      : Boolean := False;
      --  Write-only. MSIRC1 PLL mode ready interrupt clear
      MSIPLL1RDYC    : Boolean := False;
      --  Write-only. MSIRC0 PLL mode ready interrupt clear
      MSIPLL0RDYC    : Boolean := False;
      --  Write-only. MSI PLL mode with LSE unlock interrupt clear
      MSIPLLUC       : Boolean := False;
      --  Write-only. MSI PLL mode with HSE unlock interrupt clear
      MSIPLLHSUC     : Boolean := False;
      --  Write-only. Clock security system interrupt clear
      CSSC           : Boolean := False;
      --  Write-only. MSIK oscillator ready interrupt clear
      MSIKRDYC       : Boolean := False;
      --  Write-only. LSE CSS interrupt clear
      LSECSSC        : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CICR_Register use record
      LSIRDYC        at 0 range 0 .. 0;
      LSERDYC        at 0 range 1 .. 1;
      MSISRDYC       at 0 range 2 .. 2;
      HSIRDYC        at 0 range 3 .. 3;
      HSERDYC        at 0 range 4 .. 4;
      HSI48RDYC      at 0 range 5 .. 5;
      MSIPLL1RDYC    at 0 range 6 .. 6;
      MSIPLL0RDYC    at 0 range 7 .. 7;
      MSIPLLUC       at 0 range 8 .. 8;
      MSIPLLHSUC     at 0 range 9 .. 9;
      CSSC           at 0 range 10 .. 10;
      MSIKRDYC       at 0 range 11 .. 11;
      LSECSSC        at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC AHB1 peripheral reset register 1
   type RCC_AHB1RSTR1_Register is record
      --  GPDMA1 reset
      GPDMA1RST      : Boolean := False;
      --  unspecified
      Reserved_1_2   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  ADF1 reset
      ADF1RST        : Boolean := False;
      --  HSP1 reset
      HSP1RST        : Boolean := False;
      --  unspecified
      Reserved_5_11  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  CRC reset
      CRCRST         : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  TSC reset
      TSCRST         : Boolean := False;
      --  RAMCFG reset
      RAMCFGRST      : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1RSTR1_Register use record
      GPDMA1RST      at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      ADF1RST        at 0 range 3 .. 3;
      HSP1RST        at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      CRCRST         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TSCRST         at 0 range 16 .. 16;
      RAMCFGRST      at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  RCC AHB2 peripheral reset register 1
   type RCC_AHB2RSTR1_Register is record
      --  I/O port i reset (i = H to A)
      GPIOARST       : Boolean := False;
      --  I/O port i reset (i = H to A)
      GPIOBRST       : Boolean := False;
      --  I/O port i reset (i = H to A)
      GPIOCRST       : Boolean := False;
      --  I/O port i reset (i = H to A)
      GPIODRST       : Boolean := False;
      --  I/O port i reset (i = H to A)
      GPIOERST       : Boolean := False;
      --  I/O port i reset (i = H to A)
      GPIOFRST       : Boolean := False;
      --  I/O port i reset (i = H to A)
      GPIOGRST       : Boolean := False;
      --  I/O port i reset (i = H to A)
      GPIOHRST       : Boolean := False;
      --  unspecified
      Reserved_8_9   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  ADC12 reset
      ADC12RST       : Boolean := False;
      --  DAC1 reset
      DAC1RST        : Boolean := False;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  AES hardware accelerator reset
      AESRST         : Boolean := False;
      --  HASH reset
      HASHRST        : Boolean := False;
      --  Random number generator reset
      RNGRST         : Boolean := False;
      --  PKA reset
      PKARST         : Boolean := False;
      --  SAES hardware accelerator reset
      SAESRST        : Boolean := False;
      --  CCB reset
      CCBRST         : Boolean := False;
      --  unspecified
      Reserved_22_26 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  SDMMC1 reset
      SDMMC1RST      : Boolean := False;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2RSTR1_Register use record
      GPIOARST       at 0 range 0 .. 0;
      GPIOBRST       at 0 range 1 .. 1;
      GPIOCRST       at 0 range 2 .. 2;
      GPIODRST       at 0 range 3 .. 3;
      GPIOERST       at 0 range 4 .. 4;
      GPIOFRST       at 0 range 5 .. 5;
      GPIOGRST       at 0 range 6 .. 6;
      GPIOHRST       at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      ADC12RST       at 0 range 10 .. 10;
      DAC1RST        at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      AESRST         at 0 range 16 .. 16;
      HASHRST        at 0 range 17 .. 17;
      RNGRST         at 0 range 18 .. 18;
      PKARST         at 0 range 19 .. 19;
      SAESRST        at 0 range 20 .. 20;
      CCBRST         at 0 range 21 .. 21;
      Reserved_22_26 at 0 range 22 .. 26;
      SDMMC1RST      at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  RCC AHB2 peripheral reset register 2
   type RCC_AHB2RSTR2_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  OCTOSPI1 reset
      OCTOSPI1RST   : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2RSTR2_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      OCTOSPI1RST   at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC APB1 peripheral reset register 1
   type RCC_APB1RSTR1_Register is record
      --  TIMj reset
      TIM2RST        : Boolean := False;
      --  TIMj reset
      TIM3RST        : Boolean := False;
      --  TIMj reset
      TIM4RST        : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIMj reset
      TIM6RST        : Boolean := False;
      --  TIMj reset
      TIM7RST        : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SPI3 reset
      SPI3RST        : Boolean := False;
      --  SPI4 reset
      SPI4RST        : Boolean := False;
      --  unspecified
      Reserved_10_13 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  SPI2 reset
      SPI2RST        : Boolean := False;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
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
      --  I3C1 reset
      I3C1RST        : Boolean := False;
      --  CRS reset
      CRSRST         : Boolean := False;
      --  unspecified
      Reserved_25_27 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  OPAMP reset
      OPAMPRST       : Boolean := False;
      --  VREFBUF reset
      VREFRST        : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1RSTR1_Register use record
      TIM2RST        at 0 range 0 .. 0;
      TIM3RST        at 0 range 1 .. 1;
      TIM4RST        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TIM6RST        at 0 range 4 .. 4;
      TIM7RST        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SPI3RST        at 0 range 8 .. 8;
      SPI4RST        at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      SPI2RST        at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2RST      at 0 range 17 .. 17;
      USART3RST      at 0 range 18 .. 18;
      UART4RST       at 0 range 19 .. 19;
      UART5RST       at 0 range 20 .. 20;
      I2C1RST        at 0 range 21 .. 21;
      I2C2RST        at 0 range 22 .. 22;
      I3C1RST        at 0 range 23 .. 23;
      CRSRST         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      OPAMPRST       at 0 range 28 .. 28;
      VREFRST        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  RCC APB1 peripheral reset register 2
   type RCC_APB1RSTR2_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  I2C4 reset
      I2C4RST        : Boolean := False;
      --  unspecified
      Reserved_2_4   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  LPTIM2 reset
      LPTIM2RST      : Boolean := False;
      --  unspecified
      Reserved_6_8   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  FDCAN1 and FDCAN2 reset
      FDCANRST       : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1RSTR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      I2C4RST        at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      LPTIM2RST      at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      FDCANRST       at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  RCC APB2 peripheral reset register
   type RCC_APB2RSTR_Register is record
      --  unspecified
      Reserved_0_10  : Interfaces.Bit_Types.UInt11 := 16#0#;
      --  TIM1 reset
      TIM1RST        : Boolean := False;
      --  SPI1 reset
      SPI1RST        : Boolean := False;
      --  TIM8 reset
      TIM8RST        : Boolean := False;
      --  USART1 reset
      USART1RST      : Boolean := False;
      --  TIM12 reset
      TIM12RST       : Boolean := False;
      --  TIMi reset
      TIM15RST       : Boolean := False;
      --  TIMi reset
      TIM16RST       : Boolean := False;
      --  TIMi reset
      TIM17RST       : Boolean := False;
      --  unspecified
      Reserved_19_20 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SAI1 reset
      SAI1RST        : Boolean := False;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  USB1 reset
      USB1RST        : Boolean := False;
      --  unspecified
      Reserved_25_26 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  I3C2 reset
      I3C2RST        : Boolean := False;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB2RSTR_Register use record
      Reserved_0_10  at 0 range 0 .. 10;
      TIM1RST        at 0 range 11 .. 11;
      SPI1RST        at 0 range 12 .. 12;
      TIM8RST        at 0 range 13 .. 13;
      USART1RST      at 0 range 14 .. 14;
      TIM12RST       at 0 range 15 .. 15;
      TIM15RST       at 0 range 16 .. 16;
      TIM16RST       at 0 range 17 .. 17;
      TIM17RST       at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      SAI1RST        at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      USB1RST        at 0 range 24 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      I3C2RST        at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  RCC APB3 peripheral reset register
   type RCC_APB3RSTR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  SYSCFG reset
      SYSCFGRST      : Boolean := False;
      --  unspecified
      Reserved_2_5   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  LPUART1 reset
      LPUART1RST     : Boolean := False;
      --  I2C3 reset
      I2C3RST        : Boolean := False;
      --  unspecified
      Reserved_8_10  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  LPTIM1 reset
      LPTIM1RST      : Boolean := False;
      --  LPTIMi reset
      LPTIM3RST      : Boolean := False;
      --  LPTIMi reset
      LPTIM4RST      : Boolean := False;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  COMP reset
      COMPRST        : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB3RSTR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      SYSCFGRST      at 0 range 1 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      LPUART1RST     at 0 range 6 .. 6;
      I2C3RST        at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      LPTIM1RST      at 0 range 11 .. 11;
      LPTIM3RST      at 0 range 12 .. 12;
      LPTIM4RST      at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      COMPRST        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RCC AHB1 peripheral clock enable register 1
   type RCC_AHB1ENR1_Register is record
      --  GPDMA1 clock enable
      GPDMA1EN       : Boolean := False;
      --  unspecified
      Reserved_1_2   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  ADF1 clock enable
      ADF1EN         : Boolean := False;
      --  HSP1 clock enable
      HSP1EN         : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  FLASH clock enable
      FLASHEN        : Boolean := True;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  CRC clock enable
      CRCEN          : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Touch sensing controller clock enable
      TSCEN          : Boolean := False;
      --  RAMCFG clock enable
      RAMCFGEN       : Boolean := False;
      --  unspecified
      Reserved_18_23 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  GTZC1 clock enable
      GTZC1EN        : Boolean := False;
      --  unspecified
      Reserved_25_29 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  SRAM4 clock enable
      SRAM4EN        : Boolean := True;
      --  SRAM1 clock enable
      SRAM1EN        : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1ENR1_Register use record
      GPDMA1EN       at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      ADF1EN         at 0 range 3 .. 3;
      HSP1EN         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      FLASHEN        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CRCEN          at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TSCEN          at 0 range 16 .. 16;
      RAMCFGEN       at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      GTZC1EN        at 0 range 24 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      SRAM4EN        at 0 range 30 .. 30;
      SRAM1EN        at 0 range 31 .. 31;
   end record;

   --  RCC AHB2 peripheral clock enable register 1
   type RCC_AHB2ENR1_Register is record
      --  I/O port i clock enable (i = H to A)
      GPIOAEN        : Boolean := False;
      --  I/O port i clock enable (i = H to A)
      GPIOBEN        : Boolean := False;
      --  I/O port i clock enable (i = H to A)
      GPIOCEN        : Boolean := False;
      --  I/O port i clock enable (i = H to A)
      GPIODEN        : Boolean := False;
      --  I/O port i clock enable (i = H to A)
      GPIOEEN        : Boolean := False;
      --  I/O port i clock enable (i = H to A)
      GPIOFEN        : Boolean := False;
      --  I/O port i clock enable (i = H to A)
      GPIOGEN        : Boolean := False;
      --  I/O port i clock enable (i = H to A)
      GPIOHEN        : Boolean := False;
      --  unspecified
      Reserved_8_9   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  ADC12 clock enable
      ADC12EN        : Boolean := False;
      --  DAC1 clock enable
      DAC1EN         : Boolean := False;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  AES clock enable
      AESEN          : Boolean := False;
      --  HASH clock enable
      HASHEN         : Boolean := False;
      --  RNG clock enable
      RNGEN          : Boolean := False;
      --  PKA clock enable
      PKAEN          : Boolean := False;
      --  SAES clock enable
      SAESEN         : Boolean := False;
      --  CCB clock enable
      CCBEN          : Boolean := False;
      --  unspecified
      Reserved_22_26 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  SDMMC1 clock enable
      SDMMC1EN       : Boolean := False;
      --  unspecified
      Reserved_28_29 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SRAM2 clock enable
      SRAM2EN        : Boolean := True;
      --  SRAM3 clock enable
      SRAM3EN        : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2ENR1_Register use record
      GPIOAEN        at 0 range 0 .. 0;
      GPIOBEN        at 0 range 1 .. 1;
      GPIOCEN        at 0 range 2 .. 2;
      GPIODEN        at 0 range 3 .. 3;
      GPIOEEN        at 0 range 4 .. 4;
      GPIOFEN        at 0 range 5 .. 5;
      GPIOGEN        at 0 range 6 .. 6;
      GPIOHEN        at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      ADC12EN        at 0 range 10 .. 10;
      DAC1EN         at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      AESEN          at 0 range 16 .. 16;
      HASHEN         at 0 range 17 .. 17;
      RNGEN          at 0 range 18 .. 18;
      PKAEN          at 0 range 19 .. 19;
      SAESEN         at 0 range 20 .. 20;
      CCBEN          at 0 range 21 .. 21;
      Reserved_22_26 at 0 range 22 .. 26;
      SDMMC1EN       at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      SRAM2EN        at 0 range 30 .. 30;
      SRAM3EN        at 0 range 31 .. 31;
   end record;

   --  RCC AHB2 peripheral clock enable register 2
   type RCC_AHB2ENR2_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  OCTOSPI1 clock enable
      OCTOSPI1EN    : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2ENR2_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      OCTOSPI1EN    at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC AHB1 peripheral clock enable register 2
   type RCC_AHB1ENR2_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  PWR clock enable
      PWREN         : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1ENR2_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      PWREN         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC APB1 peripheral clock enable register 1
   type RCC_APB1ENR1_Register is record
      --  TIMj clock enable
      TIM2EN         : Boolean := False;
      --  TIMj clock enable
      TIM3EN         : Boolean := False;
      --  TIMj clock enable
      TIM4EN         : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIMj clock enable
      TIM6EN         : Boolean := False;
      --  TIMj clock enable
      TIM7EN         : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SPI3 clock enable
      SPI3EN         : Boolean := False;
      --  SPI4 clock enable
      SPI4EN         : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  WWDG clock enable
      WWDGEN         : Boolean := False;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SPI2 clock enable
      SPI2EN         : Boolean := False;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  USART2 clock enable
      USART2EN       : Boolean := False;
      --  USART3 clock enable
      USART3EN       : Boolean := False;
      --  UART4 clock enable
      UART4EN        : Boolean := False;
      --  UART5 clock enable
      UART5EN        : Boolean := False;
      --  I2C1 clock enable
      I2C1EN         : Boolean := False;
      --  I2C2 clock enable
      I2C2EN         : Boolean := False;
      --  I3C1 clock enable
      I3C1EN         : Boolean := False;
      --  CRS clock enable
      CRSEN          : Boolean := False;
      --  unspecified
      Reserved_25_27 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  OPAMP clock enable
      OPAMPEN        : Boolean := False;
      --  VREFBUF clock enable
      VREFEN         : Boolean := False;
      --  RTC and TAMP APB clock enable
      RTCAPBEN       : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1ENR1_Register use record
      TIM2EN         at 0 range 0 .. 0;
      TIM3EN         at 0 range 1 .. 1;
      TIM4EN         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TIM6EN         at 0 range 4 .. 4;
      TIM7EN         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SPI3EN         at 0 range 8 .. 8;
      SPI4EN         at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDGEN         at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2EN         at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2EN       at 0 range 17 .. 17;
      USART3EN       at 0 range 18 .. 18;
      UART4EN        at 0 range 19 .. 19;
      UART5EN        at 0 range 20 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      I2C2EN         at 0 range 22 .. 22;
      I3C1EN         at 0 range 23 .. 23;
      CRSEN          at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      OPAMPEN        at 0 range 28 .. 28;
      VREFEN         at 0 range 29 .. 29;
      RTCAPBEN       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  RCC APB1 peripheral clock enable register 2
   type RCC_APB1ENR2_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  I2C4 clock enable
      I2C4EN         : Boolean := False;
      --  unspecified
      Reserved_2_4   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  LPTIM2 clock enable
      LPTIM2EN       : Boolean := False;
      --  unspecified
      Reserved_6_8   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  FDCAN1 and FDCAN2 clock enable
      FDCANEN        : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1ENR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      I2C4EN         at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      LPTIM2EN       at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      FDCANEN        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  RCC APB2 peripheral clock enable register
   type RCC_APB2ENR_Register is record
      --  unspecified
      Reserved_0_10  : Interfaces.Bit_Types.UInt11 := 16#0#;
      --  TIM1 clock enable
      TIM1EN         : Boolean := False;
      --  SPI1 clock enable
      SPI1EN         : Boolean := False;
      --  TIM8 clock enable
      TIM8EN         : Boolean := False;
      --  USART1clock enable
      USART1EN       : Boolean := False;
      --  TIM12 clock enable
      TIM12EN        : Boolean := False;
      --  TIMi clock enable
      TIM15EN        : Boolean := False;
      --  TIMi clock enable
      TIM16EN        : Boolean := False;
      --  TIMi clock enable
      TIM17EN        : Boolean := False;
      --  unspecified
      Reserved_19_20 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SAI1 clock enable
      SAI1EN         : Boolean := False;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  USB1 clock enable
      USB1EN         : Boolean := False;
      --  unspecified
      Reserved_25_26 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  I3C2 clock enable
      I3C2EN         : Boolean := False;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB2ENR_Register use record
      Reserved_0_10  at 0 range 0 .. 10;
      TIM1EN         at 0 range 11 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      TIM8EN         at 0 range 13 .. 13;
      USART1EN       at 0 range 14 .. 14;
      TIM12EN        at 0 range 15 .. 15;
      TIM15EN        at 0 range 16 .. 16;
      TIM16EN        at 0 range 17 .. 17;
      TIM17EN        at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      SAI1EN         at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      USB1EN         at 0 range 24 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      I3C2EN         at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  RCC APB3 peripheral clock enable register
   type RCC_APB3ENR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  SYSCFG clock enable
      SYSCFGEN       : Boolean := False;
      --  unspecified
      Reserved_2_5   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  LPUART1 clock enable
      LPUART1EN      : Boolean := False;
      --  I2C3 clock enable
      I2C3EN         : Boolean := False;
      --  unspecified
      Reserved_8_10  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  LPTIM1 clock enable
      LPTIM1EN       : Boolean := False;
      --  LPTIMi clock enable
      LPTIM3EN       : Boolean := False;
      --  LPTIMi clock enable
      LPTIM4EN       : Boolean := False;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  COMP clock enable
      COMPEN         : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB3ENR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      SYSCFGEN       at 0 range 1 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      LPUART1EN      at 0 range 6 .. 6;
      I2C3EN         at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      LPTIM1EN       at 0 range 11 .. 11;
      LPTIM3EN       at 0 range 12 .. 12;
      LPTIM4EN       at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      COMPEN         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RCC AHB1 peripheral clock enable in Sleep mode register
   type RCC_AHB1SLPENR1_Register is record
      --  GPDMA1 clock enable during Sleep mode
      GPDMA1SLPEN    : Boolean := True;
      --  unspecified
      Reserved_1_2   : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  ADF1 clock enable during Sleep mode.
      ADF1SLPEN      : Boolean := True;
      --  HSP1 clock enable during Sleep mode.
      HSP1SLPEN      : Boolean := True;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  FLASH clock enable during Sleep mode
      FLASHSLPEN     : Boolean := True;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  CRC clock enable during Sleep mode
      CRCSLPEN       : Boolean := True;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  TSC clock enable during Sleep mode
      TSCSLPEN       : Boolean := True;
      --  RAMCFG clock enable during Sleep mode
      RAMCFGSLPEN    : Boolean := True;
      --  unspecified
      Reserved_18_23 : Interfaces.Bit_Types.UInt6 := 16#3F#;
      --  GTZC1 clock enable during Sleep mode
      GTZC1SLPEN     : Boolean := True;
      --  unspecified
      Reserved_25_28 : Interfaces.Bit_Types.UInt4 := 16#F#;
      --  ICACHE clock enable during Sleep mode
      ICACHESLPEN    : Boolean := True;
      --  SRAM4 clock enable during Sleep mode
      SRAM4SLPEN     : Boolean := True;
      --  SRAM1 clock enable during Sleep mode
      SRAM1SLPEN     : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1SLPENR1_Register use record
      GPDMA1SLPEN    at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      ADF1SLPEN      at 0 range 3 .. 3;
      HSP1SLPEN      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      FLASHSLPEN     at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CRCSLPEN       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TSCSLPEN       at 0 range 16 .. 16;
      RAMCFGSLPEN    at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      GTZC1SLPEN     at 0 range 24 .. 24;
      Reserved_25_28 at 0 range 25 .. 28;
      ICACHESLPEN    at 0 range 29 .. 29;
      SRAM4SLPEN     at 0 range 30 .. 30;
      SRAM1SLPEN     at 0 range 31 .. 31;
   end record;

   --  RCC AHB2 peripheral clock enable in Sleep mode register 1
   type RCC_AHB2SLPENR1_Register is record
      --  I/O port i clock enable during Sleep mode (i = A to H)
      GPIOASLPEN     : Boolean := True;
      --  I/O port i clock enable during Sleep mode (i = A to H)
      GPIOBSLPEN     : Boolean := True;
      --  I/O port i clock enable during Sleep mode (i = A to H)
      GPIOCSLPEN     : Boolean := True;
      --  I/O port i clock enable during Sleep mode (i = A to H)
      GPIODSLPEN     : Boolean := True;
      --  I/O port i clock enable during Sleep mode (i = A to H)
      GPIOESLPEN     : Boolean := True;
      --  I/O port i clock enable during Sleep mode (i = A to H)
      GPIOFSLPEN     : Boolean := True;
      --  I/O port i clock enable during Sleep mode (i = A to H)
      GPIOGSLPEN     : Boolean := True;
      --  I/O port i clock enable during Sleep mode (i = A to H)
      GPIOHSLPEN     : Boolean := True;
      --  unspecified
      Reserved_8_9   : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  ADC12 clock enable during Sleep mode
      ADC12SLPEN     : Boolean := True;
      --  DAC1 clock enable during Sleep mode
      DAC1SLPEN      : Boolean := True;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#F#;
      --  AES clock enable during Sleep mode
      AESSLPEN       : Boolean := True;
      --  HASH clock enable during Sleep mode
      HASHSLPEN      : Boolean := True;
      --  RNG clock enable during Sleep mode
      RNGSLPEN       : Boolean := True;
      --  PKA clock enable during Sleep mode
      PKASLPEN       : Boolean := True;
      --  SAES accelerator clock enable during Sleep mode
      SAESSLPEN      : Boolean := True;
      --  CCB accelerator clock enable during Sleep mode
      CCBSLPEN       : Boolean := True;
      --  unspecified
      Reserved_22_26 : Interfaces.Bit_Types.UInt5 := 16#1F#;
      --  SDMMC1 clock enable during Sleep mode
      SDMMC1SLPEN    : Boolean := True;
      --  unspecified
      Reserved_28_29 : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  SRAM2 clock enable during Sleep mode
      SRAM2SLPEN     : Boolean := True;
      --  SRAM3 clock enable during Sleep mode
      SRAM3SLPEN     : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2SLPENR1_Register use record
      GPIOASLPEN     at 0 range 0 .. 0;
      GPIOBSLPEN     at 0 range 1 .. 1;
      GPIOCSLPEN     at 0 range 2 .. 2;
      GPIODSLPEN     at 0 range 3 .. 3;
      GPIOESLPEN     at 0 range 4 .. 4;
      GPIOFSLPEN     at 0 range 5 .. 5;
      GPIOGSLPEN     at 0 range 6 .. 6;
      GPIOHSLPEN     at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      ADC12SLPEN     at 0 range 10 .. 10;
      DAC1SLPEN      at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      AESSLPEN       at 0 range 16 .. 16;
      HASHSLPEN      at 0 range 17 .. 17;
      RNGSLPEN       at 0 range 18 .. 18;
      PKASLPEN       at 0 range 19 .. 19;
      SAESSLPEN      at 0 range 20 .. 20;
      CCBSLPEN       at 0 range 21 .. 21;
      Reserved_22_26 at 0 range 22 .. 26;
      SDMMC1SLPEN    at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      SRAM2SLPEN     at 0 range 30 .. 30;
      SRAM3SLPEN     at 0 range 31 .. 31;
   end record;

   --  RCC AHB2 peripheral clock enable in Sleep mode register 2
   type RCC_AHB2SLPENR2_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.Bit_Types.UInt4 := 16#F#;
      --  OCTOSPI1 clock enable during Sleep mode
      OCTOSPI1SLPEN : Boolean := True;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#7FFFFFF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2SLPENR2_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      OCTOSPI1SLPEN at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC AHB1 peripheral clock enable in Sleep mode register 2
   type RCC_AHB1SLPENR2_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  PWR clock enable during Sleep mode
      PWRSLPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#1FFFFFFF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1SLPENR2_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      PWRSLPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC APB1 peripheral clock enable in Sleep mode register 1
   type RCC_APB1SLPENR1_Register is record
      --  TIMj clock enable during Sleep mode
      TIM2SLPEN      : Boolean := True;
      --  TIMj clock enable during Sleep mode
      TIM3SLPEN      : Boolean := True;
      --  TIMj clock enable during Sleep mode
      TIM4SLPEN      : Boolean := True;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#1#;
      --  TIMj clock enable during Sleep mode
      TIM6SLPEN      : Boolean := True;
      --  TIMj clock enable during Sleep mode
      TIM7SLPEN      : Boolean := True;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  SPI3 clock enable during Sleep mode
      SPI3SLPEN      : Boolean := True;
      --  SPI4 clock enable during Sleep mode
      SPI4SLPEN      : Boolean := True;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#1#;
      --  WWDG clock enable during Sleep mode
      WWDGSLPEN      : Boolean := True;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  SPI2 clock enable during Sleep mode
      SPI2SLPEN      : Boolean := True;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  USART2 clock enable during Sleep mode
      USART2SLPEN    : Boolean := True;
      --  USART3 clock enable during Sleep mode
      USART3SLPEN    : Boolean := True;
      --  UART4 clock enable during Sleep mode
      UART4SLPEN     : Boolean := True;
      --  UART5 clock enable during Sleep mode
      UART5SLPEN     : Boolean := True;
      --  I2C1 clock enable during Sleep mode
      I2C1SLPEN      : Boolean := True;
      --  I2C2 clock enable during Sleep mode
      I2C2SLPEN      : Boolean := True;
      --  I3C1 clock enable during Sleep mode
      I3C1SLPEN      : Boolean := True;
      --  CRS clock enable during Sleep mode
      CRSSLPEN       : Boolean := True;
      --  unspecified
      Reserved_25_27 : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  OPAMP clock enable during Sleep mode
      OPAMPSLPEN     : Boolean := True;
      --  VREFBUF clock enable during Sleep mode
      VREFSLPEN      : Boolean := True;
      --  RTC and TAMP APB clock enable during Sleep mode
      RTCAPBSLPEN    : Boolean := True;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1SLPENR1_Register use record
      TIM2SLPEN      at 0 range 0 .. 0;
      TIM3SLPEN      at 0 range 1 .. 1;
      TIM4SLPEN      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TIM6SLPEN      at 0 range 4 .. 4;
      TIM7SLPEN      at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SPI3SLPEN      at 0 range 8 .. 8;
      SPI4SLPEN      at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDGSLPEN      at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2SLPEN      at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2SLPEN    at 0 range 17 .. 17;
      USART3SLPEN    at 0 range 18 .. 18;
      UART4SLPEN     at 0 range 19 .. 19;
      UART5SLPEN     at 0 range 20 .. 20;
      I2C1SLPEN      at 0 range 21 .. 21;
      I2C2SLPEN      at 0 range 22 .. 22;
      I3C1SLPEN      at 0 range 23 .. 23;
      CRSSLPEN       at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      OPAMPSLPEN     at 0 range 28 .. 28;
      VREFSLPEN      at 0 range 29 .. 29;
      RTCAPBSLPEN    at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  RCC APB1 peripheral clock enable in Sleep mode register 2
   type RCC_APB1SLPENR2_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#1#;
      --  I2C4 clock enable during Sleep mode
      I2C4SLPEN      : Boolean := True;
      --  unspecified
      Reserved_2_4   : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  LPTIM2 clock enable during Sleep mode
      LPTIM2SLPEN    : Boolean := True;
      --  unspecified
      Reserved_6_8   : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  FDCAN clock enable during Sleep mode
      FDCANSLPEN     : Boolean := True;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#3FFFFF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1SLPENR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      I2C4SLPEN      at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      LPTIM2SLPEN    at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      FDCANSLPEN     at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  RCC APB2 peripheral clock enable in Sleep mode register
   type RCC_APB2SLPENR_Register is record
      --  unspecified
      Reserved_0_10  : Interfaces.Bit_Types.UInt11 := 16#7FF#;
      --  TIM1 clock enable during Sleep mode
      TIM1SLPEN      : Boolean := True;
      --  SPI1 clock enable during Sleep mode
      SPI1SLPEN      : Boolean := True;
      --  TIM8 clock enable during Sleep mode
      TIM8SLPEN      : Boolean := True;
      --  USART1clock enable during Sleep mode
      USART1SLPEN    : Boolean := True;
      --  TIM12 clock enable during Sleep mode
      TIM12SLPEN     : Boolean := True;
      --  TIMi clock enable during Sleep mode
      TIM15SLPEN     : Boolean := True;
      --  TIMi clock enable during Sleep mode
      TIM16SLPEN     : Boolean := True;
      --  TIMi clock enable during Sleep mode
      TIM17SLPEN     : Boolean := True;
      --  unspecified
      Reserved_19_20 : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  SAI1 clock enable during Sleep mode
      SAI1SLPEN      : Boolean := True;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  USB1 clock enable during Sleep mode
      USB1SLPEN      : Boolean := True;
      --  unspecified
      Reserved_25_26 : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  I3C2 clock enable during Sleep mode
      I3C2SLPEN      : Boolean := True;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#F#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB2SLPENR_Register use record
      Reserved_0_10  at 0 range 0 .. 10;
      TIM1SLPEN      at 0 range 11 .. 11;
      SPI1SLPEN      at 0 range 12 .. 12;
      TIM8SLPEN      at 0 range 13 .. 13;
      USART1SLPEN    at 0 range 14 .. 14;
      TIM12SLPEN     at 0 range 15 .. 15;
      TIM15SLPEN     at 0 range 16 .. 16;
      TIM16SLPEN     at 0 range 17 .. 17;
      TIM17SLPEN     at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      SAI1SLPEN      at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      USB1SLPEN      at 0 range 24 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      I3C2SLPEN      at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  RCC APB3 peripheral clock enable in Sleep mode register
   type RCC_APB3SLPENR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#1#;
      --  SYSCFG clock enable during Sleep mode
      SYSCFGSLPEN    : Boolean := True;
      --  unspecified
      Reserved_2_5   : Interfaces.Bit_Types.UInt4 := 16#F#;
      --  LPUART1 clock enable during Sleep mode
      LPUART1SLPEN   : Boolean := True;
      --  I2C3 clock enable during Sleep mode
      I2C3SLPEN      : Boolean := True;
      --  unspecified
      Reserved_8_10  : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  LPTIM1clock enable during Sleep mode
      LPTIM1SLPEN    : Boolean := True;
      --  LPTIMi clock enable during Sleep mode
      LPTIM3SLPEN    : Boolean := True;
      --  LPTIMi clock enable during Sleep mode
      LPTIM4SLPEN    : Boolean := True;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#1#;
      --  COMP clock enable during Sleep mode
      COMPSLPEN      : Boolean := True;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#FFFF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB3SLPENR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      SYSCFGSLPEN    at 0 range 1 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      LPUART1SLPEN   at 0 range 6 .. 6;
      I2C3SLPEN      at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      LPTIM1SLPEN    at 0 range 11 .. 11;
      LPTIM3SLPEN    at 0 range 12 .. 12;
      LPTIM4SLPEN    at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      COMPSLPEN      at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RCC AHB1 peripheral clock enable in Stop mode register
   type RCC_AHB1STPENR1_Register is record
      --  GPDMA1 clock enable during Stop mode.
      GPDMA1STPEN    : Boolean := True;
      --  unspecified
      Reserved_1_2   : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  ADF1 clock enable during Stop mode.
      ADF1STPEN      : Boolean := True;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#F#;
      --  FLASH clock enable during Stop mode
      FLASHSTPEN     : Boolean := True;
      --  unspecified
      Reserved_9_16  : Interfaces.Bit_Types.Byte := 16#FF#;
      --  RAMCFG clock enable during Stop mode
      RAMCFGSTPEN    : Boolean := True;
      --  unspecified
      Reserved_18_23 : Interfaces.Bit_Types.UInt6 := 16#3F#;
      --  GTZC1 clock enable during Stop mode
      GTZC1STPEN     : Boolean := True;
      --  unspecified
      Reserved_25_29 : Interfaces.Bit_Types.UInt5 := 16#1F#;
      --  SRAM4 clock enable during Stop mode
      SRAM4STPEN     : Boolean := True;
      --  SRAM1 clock enable during Stop mode
      SRAM1STPEN     : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1STPENR1_Register use record
      GPDMA1STPEN    at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      ADF1STPEN      at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      FLASHSTPEN     at 0 range 8 .. 8;
      Reserved_9_16  at 0 range 9 .. 16;
      RAMCFGSTPEN    at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      GTZC1STPEN     at 0 range 24 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      SRAM4STPEN     at 0 range 30 .. 30;
      SRAM1STPEN     at 0 range 31 .. 31;
   end record;

   --  RCC AHB2 peripheral clock enable in Stop mode register 1
   type RCC_AHB2STPENR1_Register is record
      --  I/O port i clock enable during Stop mode (i = H to A)
      GPIOASTPEN     : Boolean := True;
      --  I/O port i clock enable during Stop mode (i = H to A)
      GPIOBSTPEN     : Boolean := True;
      --  I/O port i clock enable during Stop mode (i = H to A)
      GPIOCSTPEN     : Boolean := True;
      --  I/O port i clock enable during Stop mode (i = H to A)
      GPIODSTPEN     : Boolean := True;
      --  I/O port i clock enable during Stop mode (i = H to A)
      GPIOESTPEN     : Boolean := True;
      --  I/O port i clock enable during Stop mode (i = H to A)
      GPIOFSTPEN     : Boolean := True;
      --  I/O port i clock enable during Stop mode (i = H to A)
      GPIOGSTPEN     : Boolean := True;
      --  I/O port i clock enable during Stop mode (i = H to A)
      GPIOHSTPEN     : Boolean := True;
      --  unspecified
      Reserved_8_10  : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  DAC1 clock enable during Stop mode
      DAC1STPEN      : Boolean := True;
      --  unspecified
      Reserved_12_29 : Interfaces.Bit_Types.UInt18 := 16#3FFFF#;
      --  SRAM2 clock enable during Stop mode
      SRAM2STPEN     : Boolean := True;
      --  SRAM3 clock enable during Stop mode
      SRAM3STPEN     : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2STPENR1_Register use record
      GPIOASTPEN     at 0 range 0 .. 0;
      GPIOBSTPEN     at 0 range 1 .. 1;
      GPIOCSTPEN     at 0 range 2 .. 2;
      GPIODSTPEN     at 0 range 3 .. 3;
      GPIOESTPEN     at 0 range 4 .. 4;
      GPIOFSTPEN     at 0 range 5 .. 5;
      GPIOGSTPEN     at 0 range 6 .. 6;
      GPIOHSTPEN     at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      DAC1STPEN      at 0 range 11 .. 11;
      Reserved_12_29 at 0 range 12 .. 29;
      SRAM2STPEN     at 0 range 30 .. 30;
      SRAM3STPEN     at 0 range 31 .. 31;
   end record;

   --  RCC APB1 peripheral clock enable in Stop mode register 1
   type RCC_APB1STPENR1_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#FF#;
      --  SPI3 clock enable during Stop mode
      SPI3STPEN      : Boolean := True;
      --  SPI4 clock enable during Stop mode
      SPI4STPEN      : Boolean := True;
      --  unspecified
      Reserved_10_13 : Interfaces.Bit_Types.UInt4 := 16#F#;
      --  SPI2 clock enable during Stop mode
      SPI2STPEN      : Boolean := True;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  USART2 clock enable during Stop mode
      USART2STPEN    : Boolean := True;
      --  USART3 clock enable during Stop mode
      USART3STPEN    : Boolean := True;
      --  UART4 clock enable during Stop mode
      UART4STPEN     : Boolean := True;
      --  UART5 clock enable during Stop mode
      UART5STPEN     : Boolean := True;
      --  I2C1 clock enable during Stop mode
      I2C1STPEN      : Boolean := True;
      --  I2C2 clock enable during Stop mode
      I2C2STPEN      : Boolean := True;
      --  I3C1 clock enable during Stop mode
      I3C1STPEN      : Boolean := True;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#F#;
      --  OPAMP clock enable during Stop mode
      OPAMPSTPEN     : Boolean := True;
      --  VREFBUF clock enable during Stop mode
      VREFSTPEN      : Boolean := True;
      --  RTC and TAMP APB clock enable during Stop mode
      RTCAPBSTPEN    : Boolean := True;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1STPENR1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SPI3STPEN      at 0 range 8 .. 8;
      SPI4STPEN      at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      SPI2STPEN      at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2STPEN    at 0 range 17 .. 17;
      USART3STPEN    at 0 range 18 .. 18;
      UART4STPEN     at 0 range 19 .. 19;
      UART5STPEN     at 0 range 20 .. 20;
      I2C1STPEN      at 0 range 21 .. 21;
      I2C2STPEN      at 0 range 22 .. 22;
      I3C1STPEN      at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      OPAMPSTPEN     at 0 range 28 .. 28;
      VREFSTPEN      at 0 range 29 .. 29;
      RTCAPBSTPEN    at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  RCC APB1 peripheral clock enable in Stop mode register 2
   type RCC_APB1STPENR2_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#1#;
      --  I2C4 clock enable during Stop mode
      I2C4STPEN     : Boolean := True;
      --  unspecified
      Reserved_2_4  : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  LPTIM2 clock enable during Stop mode
      LPTIM2STPEN   : Boolean := True;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#3FFFFFF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1STPENR2_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      I2C4STPEN     at 0 range 1 .. 1;
      Reserved_2_4  at 0 range 2 .. 4;
      LPTIM2STPEN   at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  RCC APB2 peripheral clock enable in Stop mode register
   type RCC_APB2STPENR_Register is record
      --  unspecified
      Reserved_0_11  : Interfaces.Bit_Types.UInt12 := 16#FFF#;
      --  SPI1 clock enable during Stop mode
      SPI1STPEN      : Boolean := True;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#1#;
      --  USART1clock enable during Stop mode
      USART1STPEN    : Boolean := True;
      --  unspecified
      Reserved_15_23 : Interfaces.Bit_Types.UInt9 := 16#1FF#;
      --  USB1 clock enable during Stop mode
      USB1STPEN      : Boolean := True;
      --  unspecified
      Reserved_25_26 : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  I3C2 clock enable during Stop mode
      I3C2STPEN      : Boolean := True;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#F#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB2STPENR_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      SPI1STPEN      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1STPEN    at 0 range 14 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      USB1STPEN      at 0 range 24 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      I3C2STPEN      at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  RCC APB3 peripheral clock enable in Stop mode register
   type RCC_APB3STPENR_Register is record
      --  unspecified
      Reserved_0_5   : Interfaces.Bit_Types.UInt6 := 16#3F#;
      --  LPUART1 clock enable during Stop mode
      LPUART1STPEN   : Boolean := True;
      --  I2C3 clock enable during Stop mode
      I2C3STPEN      : Boolean := True;
      --  unspecified
      Reserved_8_10  : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  LPTIM1clock enable during Stop mode
      LPTIM1STPEN    : Boolean := True;
      --  LPTIMi clock enable during Stop mode
      LPTIM3STPEN    : Boolean := True;
      --  LPTIMi clock enable during Stop mode
      LPTIM4STPEN    : Boolean := True;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#1#;
      --  COMP clock enable during Stop mode
      COMPSTPEN      : Boolean := True;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#FFFF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB3STPENR_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      LPUART1STPEN   at 0 range 6 .. 6;
      I2C3STPEN      at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      LPTIM1STPEN    at 0 range 11 .. 11;
      LPTIM3STPEN    at 0 range 12 .. 12;
      LPTIM4STPEN    at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      COMPSTPEN      at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RCC_CCIPR1_LPTIM2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR1_SYSTICKSEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR1_ICLKSEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR1_TIMICSEL_Field is Interfaces.Bit_Types.UInt3;

   --  RCC peripheral independent clock configuration register 1
   type RCC_CCIPR1_Register is record
      --  USART1 kernel clock source selection
      USART1SEL      : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART3 kernel clock source selection
      USART3SEL      : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  UART4 kernel clock source selection
      UART4SEL       : Boolean := False;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  UART5 kernel clock source selection
      UART5SEL       : Boolean := False;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  I3C1 kernel clock source selection
      I3C1SEL        : Boolean := False;
      --  unspecified
      Reserved_9_9   : Interfaces.Bit_Types.Bit := 16#0#;
      --  I2C1 kernel clock source selection
      I2C1SEL        : Boolean := False;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  I2C2 kernel clock source selection
      I2C2SEL        : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  I3C2 kernel clock source selection
      I3C2SEL        : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  SPI2 kernel clock source selection
      SPI2SEL        : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Low-power timer 2 kernel clock source selection
      LPTIM2SEL      : RCC_CCIPR1_LPTIM2SEL_Field := 16#0#;
      --  SPI1 kernel clock source selection
      SPI1SEL        : Boolean := False;
      --  unspecified
      Reserved_21_21 : Interfaces.Bit_Types.Bit := 16#0#;
      --  SysTick clock source selection
      SYSTICKSEL     : RCC_CCIPR1_SYSTICKSEL_Field := 16#0#;
      --  FDCAN1 and FDCAN2 kernel clock source selection
      FDCANSEL       : Boolean := False;
      --  unspecified
      Reserved_25_25 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Intermediate clock source selection
      ICLKSEL        : RCC_CCIPR1_ICLKSEL_Field := 16#0#;
      --  USB1 kernel clock prescaler selection
      USB1SEL        : Boolean := False;
      --  Clock sources for TIM16,TIM17, and LPTIM2 internal input capture
      TIMICSEL       : RCC_CCIPR1_TIMICSEL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR1_Register use record
      USART1SEL      at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      USART3SEL      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      UART4SEL       at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      UART5SEL       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      I3C1SEL        at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      I2C1SEL        at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      I2C2SEL        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      I3C2SEL        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SPI2SEL        at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      LPTIM2SEL      at 0 range 18 .. 19;
      SPI1SEL        at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      SYSTICKSEL     at 0 range 22 .. 23;
      FDCANSEL       at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      ICLKSEL        at 0 range 26 .. 27;
      USB1SEL        at 0 range 28 .. 28;
      TIMICSEL       at 0 range 29 .. 31;
   end record;

   subtype RCC_CCIPR2_ADF1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR2_SAI1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR2_ADCDACPRE_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_CCIPR2_ADCDACSEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC peripheral independent clock configuration register 2
   type RCC_CCIPR2_Register is record
      --  ADF1 kernel clock source selection
      ADF1SEL        : RCC_CCIPR2_ADF1SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  SPI3 kernel clock source selection
      SPI3SEL        : Boolean := False;
      --  unspecified
      Reserved_4_4   : Interfaces.Bit_Types.Bit := 16#0#;
      --  SAI1 kernel clock source selection
      SAI1SEL        : RCC_CCIPR2_SAI1SEL_Field := 16#0#;
      --  SPI4 kernel clock source selection
      SPI4SEL        : Boolean := False;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  I2C4 kernel clock source selection
      I2C4SEL        : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  RNG kernel clock source selection
      RNGSEL         : Boolean := False;
      --  ADC12 and DAC1 kernel clock prescaler
      ADCDACPRE      : RCC_CCIPR2_ADCDACPRE_Field := 16#0#;
      --  ADC12 and DAC1 intermediate kernel clock source selection
      ADCDACSEL      : RCC_CCIPR2_ADCDACSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  DAC1 sample and hold clock source selection
      DAC1SHSEL      : Boolean := False;
      --  OCTOSPI1 kernel clock source selection
      OCTOSPISEL     : Boolean := False;
      --  unspecified
      Reserved_21_21 : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART2 kernel clock source selection
      USART2SEL      : Boolean := False;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR2_Register use record
      ADF1SEL        at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SPI3SEL        at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SAI1SEL        at 0 range 5 .. 6;
      SPI4SEL        at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      I2C4SEL        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      RNGSEL         at 0 range 11 .. 11;
      ADCDACPRE      at 0 range 12 .. 15;
      ADCDACSEL      at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DAC1SHSEL      at 0 range 19 .. 19;
      OCTOSPISEL     at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      USART2SEL      at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype RCC_CCIPR3_LPUART1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR3_LPTIM34SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR3_LPTIM1SEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC peripheral independent clock configuration register 3
   type RCC_CCIPR3_Register is record
      --  LPUART1 kernel clock source selection
      LPUART1SEL     : RCC_CCIPR3_LPUART1SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_5   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  I2C3 kernel clock source selection
      I2C3SEL        : Boolean := False;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  LPTIM3 and LPTIM4 kernel clock source selection
      LPTIM34SEL     : RCC_CCIPR3_LPTIM34SEL_Field := 16#0#;
      --  LPTIM1 kernel clock source selection
      LPTIM1SEL      : RCC_CCIPR3_LPTIM1SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR3_Register use record
      LPUART1SEL     at 0 range 0 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      I2C3SEL        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LPTIM34SEL     at 0 range 8 .. 9;
      LPTIM1SEL      at 0 range 10 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype RCC_BDCR_LSEDRV_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_BDCR_RTCSEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC backup domain control register
   type RCC_BDCR_Register is record
      --  LSE oscillator enable
      LSEON          : Boolean := False;
      --  LSE oscillator ready
      LSERDY         : Boolean := False;
      --  LSE oscillator bypass
      LSEBYP         : Boolean := False;
      --  LSE oscillator drive capability
      LSEDRV         : RCC_BDCR_LSEDRV_Field := 16#0#;
      --  CSS on LSE enable
      LSECSSON       : Boolean := False;
      --  CSS on LSE failure detection
      LSECSSD        : Boolean := False;
      --  LSE system clock (LSESYS) enable
      LSESYSEN       : Boolean := False;
      --  RTC and TAMP clock source selection
      RTCSEL         : RCC_BDCR_RTCSEL_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  LSE system clock (LSESYS) ready
      LSESYSRDY      : Boolean := False;
      --  LSE clock glitch filter enable
      LSEGFON        : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  RTC and TAMP clock enable
      RTCEN          : Boolean := False;
      --  Backup domain software reset
      BDRST          : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Low-speed clock output (LSCO) enable
      LSCOEN         : Boolean := False;
      --  Low-speed clock output selection
      LSCOSEL        : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_BDCR_Register use record
      LSEON          at 0 range 0 .. 0;
      LSERDY         at 0 range 1 .. 1;
      LSEBYP         at 0 range 2 .. 2;
      LSEDRV         at 0 range 3 .. 4;
      LSECSSON       at 0 range 5 .. 5;
      LSECSSD        at 0 range 6 .. 6;
      LSESYSEN       at 0 range 7 .. 7;
      RTCSEL         at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      LSESYSRDY      at 0 range 11 .. 11;
      LSEGFON        at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      RTCEN          at 0 range 15 .. 15;
      BDRST          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      LSCOEN         at 0 range 24 .. 24;
      LSCOSEL        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype RCC_CSR_MSIKDIVS_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CSR_MSISDIVS_Field is Interfaces.Bit_Types.UInt2;

   --  RCC control/status register
   type RCC_CSR_Register is record
      --  LSI oscillator enable
      LSION          : Boolean := False;
      --  LSI oscillator ready
      LSIRDY         : Boolean := False;
      --  Low-speed clock divider configuration
      LSIPREDIV      : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  MSIK oscillator division after Standby mode
      MSIKDIVS       : RCC_CSR_MSIKDIVS_Field := 16#1#;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#1#;
      --  MSIS oscillator division after Standby mode
      MSISDIVS       : RCC_CSR_MSISDIVS_Field := 16#1#;
      --  unspecified
      Reserved_14_22 : Interfaces.Bit_Types.UInt9 := 16#1#;
      --  Remove reset flag
      RMVF           : Boolean := False;
      --  unspecified
      Reserved_24_24 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Option-byte loader reset flag
      OBLRSTF        : Boolean := False;
      --  NRST pin reset flag
      PINRSTF        : Boolean := True;
      --  BOR flag
      BORRSTF        : Boolean := True;
      --  Software reset flag
      SFTRSTF        : Boolean := False;
      --  Independent watchdog reset flag
      IWDGRSTF       : Boolean := False;
      --  Window watchdog reset flag
      WWDGRSTF       : Boolean := False;
      --  Low-power reset flag
      LPWRRSTF       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CSR_Register use record
      LSION          at 0 range 0 .. 0;
      LSIRDY         at 0 range 1 .. 1;
      LSIPREDIV      at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      MSIKDIVS       at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      MSISDIVS       at 0 range 12 .. 13;
      Reserved_14_22 at 0 range 14 .. 22;
      RMVF           at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      OBLRSTF        at 0 range 25 .. 25;
      PINRSTF        at 0 range 26 .. 26;
      BORRSTF        at 0 range 27 .. 27;
      SFTRSTF        at 0 range 28 .. 28;
      IWDGRSTF       at 0 range 29 .. 29;
      WWDGRSTF       at 0 range 30 .. 30;
      LPWRRSTF       at 0 range 31 .. 31;
   end record;

   --  RCC secure configuration register
   type RCC_SECCFGR_Register is record
      --  HSI clock configuration and status bit security
      HSISEC         : Boolean := False;
      --  HSE clock configuration, status bits, and HSE_CSS security
      HSESEC         : Boolean := False;
      --  MSI clock configuration and status bit security
      MSISEC         : Boolean := False;
      --  LSI clock configuration and status bit security
      LSISEC         : Boolean := False;
      --  LSE clock configuration and status bit security
      LSESEC         : Boolean := False;
      --  SYSCLK clock selection, STOPWUCK bit, clock output on MCO
      --  configuration security
      SYSCLKSEC      : Boolean := False;
      --  AHBx/APBx prescaler configuration bit security
      PRESCSEC       : Boolean := False;
      --  EPOD booster configuration bit security
      BOOSTSEC       : Boolean := False;
      --  unspecified
      Reserved_8_9   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Intermediate clock source selection security
      ICLKSEC        : Boolean := False;
      --  HSI48 clock configuration and status bit security
      HSI48SEC       : Boolean := False;
      --  Remove reset flag security
      RMVFSEC        : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SECCFGR_Register use record
      HSISEC         at 0 range 0 .. 0;
      HSESEC         at 0 range 1 .. 1;
      MSISEC         at 0 range 2 .. 2;
      LSISEC         at 0 range 3 .. 3;
      LSESEC         at 0 range 4 .. 4;
      SYSCLKSEC      at 0 range 5 .. 5;
      PRESCSEC       at 0 range 6 .. 6;
      BOOSTSEC       at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      ICLKSEC        at 0 range 10 .. 10;
      HSI48SEC       at 0 range 11 .. 11;
      RMVFSEC        at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC privilege configuration register
   type RCC_PRIVCFGR_Register is record
      --  RCC secure function privilege configuration
      SPRIV         : Boolean := False;
      --  RCC nonsecure function privilege configuration
      NSPRIV        : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGR_Register use record
      SPRIV         at 0 range 0 .. 0;
      NSPRIV        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RCC register block
   type RCC_Peripheral is record
      --  RCC clock control register
      RCC_CR          : aliased RCC_CR_Register;
      --  RCC internal clock source calibration register 1
      RCC_ICSCR1      : aliased RCC_ICSCR1_Register;
      --  RCC internal clock source calibration register 2
      RCC_ICSCR2      : aliased RCC_ICSCR2_Register;
      --  RCC internal clock source calibration register 3
      RCC_ICSCR3      : aliased RCC_ICSCR3_Register;
      --  RCC clock recovery RC register
      RCC_CRRCR       : aliased RCC_CRRCR_Register;
      --  RCC clock configuration register 1
      RCC_CFGR1       : aliased RCC_CFGR1_Register;
      --  RCC clock configuration register 2
      RCC_CFGR2       : aliased RCC_CFGR2_Register;
      --  RCC clock configuration register 3
      RCC_CFGR3       : aliased RCC_CFGR3_Register;
      --  RCC clock configuration register 4
      RCC_CFGR4       : aliased RCC_CFGR4_Register;
      --  RCC clock interrupt enable register
      RCC_CIER        : aliased RCC_CIER_Register;
      --  RCC clock interrupt flag register
      RCC_CIFR        : aliased RCC_CIFR_Register;
      --  RCC clock interrupt clear register
      RCC_CICR        : aliased RCC_CICR_Register;
      --  RCC AHB1 peripheral reset register 1
      RCC_AHB1RSTR1   : aliased RCC_AHB1RSTR1_Register;
      --  RCC AHB2 peripheral reset register 1
      RCC_AHB2RSTR1   : aliased RCC_AHB2RSTR1_Register;
      --  RCC AHB2 peripheral reset register 2
      RCC_AHB2RSTR2   : aliased RCC_AHB2RSTR2_Register;
      --  RCC APB1 peripheral reset register 1
      RCC_APB1RSTR1   : aliased RCC_APB1RSTR1_Register;
      --  RCC APB1 peripheral reset register 2
      RCC_APB1RSTR2   : aliased RCC_APB1RSTR2_Register;
      --  RCC APB2 peripheral reset register
      RCC_APB2RSTR    : aliased RCC_APB2RSTR_Register;
      --  RCC APB3 peripheral reset register
      RCC_APB3RSTR    : aliased RCC_APB3RSTR_Register;
      --  RCC AHB1 peripheral clock enable register 1
      RCC_AHB1ENR1    : aliased RCC_AHB1ENR1_Register;
      --  RCC AHB2 peripheral clock enable register 1
      RCC_AHB2ENR1    : aliased RCC_AHB2ENR1_Register;
      --  RCC AHB2 peripheral clock enable register 2
      RCC_AHB2ENR2    : aliased RCC_AHB2ENR2_Register;
      --  RCC AHB1 peripheral clock enable register 2
      RCC_AHB1ENR2    : aliased RCC_AHB1ENR2_Register;
      --  RCC APB1 peripheral clock enable register 1
      RCC_APB1ENR1    : aliased RCC_APB1ENR1_Register;
      --  RCC APB1 peripheral clock enable register 2
      RCC_APB1ENR2    : aliased RCC_APB1ENR2_Register;
      --  RCC APB2 peripheral clock enable register
      RCC_APB2ENR     : aliased RCC_APB2ENR_Register;
      --  RCC APB3 peripheral clock enable register
      RCC_APB3ENR     : aliased RCC_APB3ENR_Register;
      --  RCC AHB1 peripheral clock enable in Sleep mode register
      RCC_AHB1SLPENR1 : aliased RCC_AHB1SLPENR1_Register;
      --  RCC AHB2 peripheral clock enable in Sleep mode register 1
      RCC_AHB2SLPENR1 : aliased RCC_AHB2SLPENR1_Register;
      --  RCC AHB2 peripheral clock enable in Sleep mode register 2
      RCC_AHB2SLPENR2 : aliased RCC_AHB2SLPENR2_Register;
      --  RCC AHB1 peripheral clock enable in Sleep mode register 2
      RCC_AHB1SLPENR2 : aliased RCC_AHB1SLPENR2_Register;
      --  RCC APB1 peripheral clock enable in Sleep mode register 1
      RCC_APB1SLPENR1 : aliased RCC_APB1SLPENR1_Register;
      --  RCC APB1 peripheral clock enable in Sleep mode register 2
      RCC_APB1SLPENR2 : aliased RCC_APB1SLPENR2_Register;
      --  RCC APB2 peripheral clock enable in Sleep mode register
      RCC_APB2SLPENR  : aliased RCC_APB2SLPENR_Register;
      --  RCC APB3 peripheral clock enable in Sleep mode register
      RCC_APB3SLPENR  : aliased RCC_APB3SLPENR_Register;
      --  RCC AHB1 peripheral clock enable in Stop mode register
      RCC_AHB1STPENR1 : aliased RCC_AHB1STPENR1_Register;
      --  RCC AHB2 peripheral clock enable in Stop mode register 1
      RCC_AHB2STPENR1 : aliased RCC_AHB2STPENR1_Register;
      --  RCC APB1 peripheral clock enable in Stop mode register 1
      RCC_APB1STPENR1 : aliased RCC_APB1STPENR1_Register;
      --  RCC APB1 peripheral clock enable in Stop mode register 2
      RCC_APB1STPENR2 : aliased RCC_APB1STPENR2_Register;
      --  RCC APB2 peripheral clock enable in Stop mode register
      RCC_APB2STPENR  : aliased RCC_APB2STPENR_Register;
      --  RCC APB3 peripheral clock enable in Stop mode register
      RCC_APB3STPENR  : aliased RCC_APB3STPENR_Register;
      --  RCC peripheral independent clock configuration register 1
      RCC_CCIPR1      : aliased RCC_CCIPR1_Register;
      --  RCC peripheral independent clock configuration register 2
      RCC_CCIPR2      : aliased RCC_CCIPR2_Register;
      --  RCC peripheral independent clock configuration register 3
      RCC_CCIPR3      : aliased RCC_CCIPR3_Register;
      --  RCC backup domain control register
      RCC_BDCR        : aliased RCC_BDCR_Register;
      --  RCC control/status register
      RCC_CSR         : aliased RCC_CSR_Register;
      --  RCC secure configuration register
      RCC_SECCFGR     : aliased RCC_SECCFGR_Register;
      --  RCC privilege configuration register
      RCC_PRIVCFGR    : aliased RCC_PRIVCFGR_Register;
   end record
     with Volatile;

   for RCC_Peripheral use record
      RCC_CR          at 16#0# range 0 .. 31;
      RCC_ICSCR1      at 16#8# range 0 .. 31;
      RCC_ICSCR2      at 16#C# range 0 .. 31;
      RCC_ICSCR3      at 16#10# range 0 .. 31;
      RCC_CRRCR       at 16#14# range 0 .. 31;
      RCC_CFGR1       at 16#1C# range 0 .. 31;
      RCC_CFGR2       at 16#20# range 0 .. 31;
      RCC_CFGR3       at 16#24# range 0 .. 31;
      RCC_CFGR4       at 16#28# range 0 .. 31;
      RCC_CIER        at 16#50# range 0 .. 31;
      RCC_CIFR        at 16#54# range 0 .. 31;
      RCC_CICR        at 16#58# range 0 .. 31;
      RCC_AHB1RSTR1   at 16#60# range 0 .. 31;
      RCC_AHB2RSTR1   at 16#64# range 0 .. 31;
      RCC_AHB2RSTR2   at 16#68# range 0 .. 31;
      RCC_APB1RSTR1   at 16#74# range 0 .. 31;
      RCC_APB1RSTR2   at 16#78# range 0 .. 31;
      RCC_APB2RSTR    at 16#7C# range 0 .. 31;
      RCC_APB3RSTR    at 16#80# range 0 .. 31;
      RCC_AHB1ENR1    at 16#88# range 0 .. 31;
      RCC_AHB2ENR1    at 16#8C# range 0 .. 31;
      RCC_AHB2ENR2    at 16#90# range 0 .. 31;
      RCC_AHB1ENR2    at 16#94# range 0 .. 31;
      RCC_APB1ENR1    at 16#9C# range 0 .. 31;
      RCC_APB1ENR2    at 16#A0# range 0 .. 31;
      RCC_APB2ENR     at 16#A4# range 0 .. 31;
      RCC_APB3ENR     at 16#A8# range 0 .. 31;
      RCC_AHB1SLPENR1 at 16#B0# range 0 .. 31;
      RCC_AHB2SLPENR1 at 16#B4# range 0 .. 31;
      RCC_AHB2SLPENR2 at 16#B8# range 0 .. 31;
      RCC_AHB1SLPENR2 at 16#BC# range 0 .. 31;
      RCC_APB1SLPENR1 at 16#C4# range 0 .. 31;
      RCC_APB1SLPENR2 at 16#C8# range 0 .. 31;
      RCC_APB2SLPENR  at 16#CC# range 0 .. 31;
      RCC_APB3SLPENR  at 16#D0# range 0 .. 31;
      RCC_AHB1STPENR1 at 16#D8# range 0 .. 31;
      RCC_AHB2STPENR1 at 16#DC# range 0 .. 31;
      RCC_APB1STPENR1 at 16#EC# range 0 .. 31;
      RCC_APB1STPENR2 at 16#F0# range 0 .. 31;
      RCC_APB2STPENR  at 16#F4# range 0 .. 31;
      RCC_APB3STPENR  at 16#F8# range 0 .. 31;
      RCC_CCIPR1      at 16#100# range 0 .. 31;
      RCC_CCIPR2      at 16#104# range 0 .. 31;
      RCC_CCIPR3      at 16#108# range 0 .. 31;
      RCC_BDCR        at 16#110# range 0 .. 31;
      RCC_CSR         at 16#114# range 0 .. 31;
      RCC_SECCFGR     at 16#130# range 0 .. 31;
      RCC_PRIVCFGR    at 16#134# range 0 .. 31;
   end record;

   --  RCC register block
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => RCC_Base;

   --  RCC register block
   SEC_RCC_Periph : aliased RCC_Peripheral
     with Import, Address => SEC_RCC_Base;

end Interfaces.STM32.RCC;
