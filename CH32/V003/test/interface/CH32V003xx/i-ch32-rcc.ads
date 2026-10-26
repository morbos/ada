--
--  Copyright (C) 2026, AdaCore
--

--  This spec has been automatically generated from CH32V003xx.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.CH32.RCC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTLR_HSITRIM_Field is Interfaces.Bit_Types.UInt5;
   subtype CTLR_HSICAL_Field is Interfaces.Bit_Types.Byte;

   --  Clock control register
   type CTLR_Register is record
      --  Internal High Speed clock enable
      HSION          : Boolean := True;
      --  Read-only. Internal High Speed clock ready flag
      HSIRDY         : Boolean := True;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Internal High Speed clock trimming
      HSITRIM        : CTLR_HSITRIM_Field := 16#10#;
      --  Read-only. Internal High Speed clock Calibration
      HSICAL         : CTLR_HSICAL_Field := 16#0#;
      --  External High Speed clock enable
      HSEON          : Boolean := False;
      --  Read-only. External High Speed clock ready flag
      HSERDY         : Boolean := False;
      --  External High Speed clock Bypass
      HSEBYP         : Boolean := False;
      --  Clock Security System enable
      CSSON          : Boolean := False;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  PLL enable
      PLLON          : Boolean := False;
      --  Read-only. PLL clock ready flag
      PLLRDY         : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLR_Register use record
      HSION          at 0 range 0 .. 0;
      HSIRDY         at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      HSITRIM        at 0 range 3 .. 7;
      HSICAL         at 0 range 8 .. 15;
      HSEON          at 0 range 16 .. 16;
      HSERDY         at 0 range 17 .. 17;
      HSEBYP         at 0 range 18 .. 18;
      CSSON          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      PLLON          at 0 range 24 .. 24;
      PLLRDY         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype CFGR0_SW_Field is Interfaces.Bit_Types.UInt2;
   subtype CFGR0_SWS_Field is Interfaces.Bit_Types.UInt2;
   subtype CFGR0_HPRE_Field is Interfaces.Bit_Types.UInt4;
   --  CFGR0_PPRE array element
   subtype CFGR0_PPRE_Element is Interfaces.Bit_Types.UInt3;

   --  CFGR0_PPRE array
   type CFGR0_PPRE_Field_Array is array (1 .. 2) of CFGR0_PPRE_Element
     with Component_Size => 3, Size => 6;

   --  Type definition for CFGR0_PPRE
   type CFGR0_PPRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPRE as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  PPRE as an array
            Arr : CFGR0_PPRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for CFGR0_PPRE_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   subtype CFGR0_ADCPRE_Field is Interfaces.Bit_Types.UInt2;
   subtype CFGR0_MCO_Field is Interfaces.Bit_Types.UInt3;

   --  Clock configuration register (RCC_CFGR0)
   type CFGR0_Register is record
      --  System clock Switch
      SW             : CFGR0_SW_Field := 16#0#;
      --  Read-only. System Clock Switch Status
      SWS            : CFGR0_SWS_Field := 16#0#;
      --  AHB prescaler
      HPRE           : CFGR0_HPRE_Field := 16#0#;
      --  APB Low speed prescaler (APB1)
      PPRE           : CFGR0_PPRE_Field := (As_Array => False, Val => 16#0#);
      --  ADC prescaler
      ADCPRE         : CFGR0_ADCPRE_Field := 16#0#;
      --  PLL entry clock source
      PLLSRC         : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Microcontroller clock output
      MCO            : CFGR0_MCO_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR0_Register use record
      SW             at 0 range 0 .. 1;
      SWS            at 0 range 2 .. 3;
      HPRE           at 0 range 4 .. 7;
      PPRE           at 0 range 8 .. 13;
      ADCPRE         at 0 range 14 .. 15;
      PLLSRC         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      MCO            at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Clock interrupt register (RCC_INTR)
   type INTR_Register is record
      --  Read-only. LSI Ready Interrupt flag
      LSIRDYF        : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. HSI Ready Interrupt flag
      HSIRDYF        : Boolean := False;
      --  Read-only. HSE Ready Interrupt flag
      HSERDYF        : Boolean := False;
      --  Read-only. PLL Ready Interrupt flag
      PLLRDYF        : Boolean := False;
      --  unspecified
      Reserved_5_6   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Read-only. Clock Security System Interrupt flag
      CSSF           : Boolean := False;
      --  LSI Ready Interrupt Enable
      LSIRDYIE       : Boolean := False;
      --  unspecified
      Reserved_9_9   : Interfaces.Bit_Types.Bit := 16#0#;
      --  HSI Ready Interrupt Enable
      HSIRDYIE       : Boolean := False;
      --  HSE Ready Interrupt Enable
      HSERDYIE       : Boolean := False;
      --  PLL Ready Interrupt Enable
      PLLRDYIE       : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. LSI Ready Interrupt Clear
      LSIRDYC        : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. HSI Ready Interrupt Clear
      HSIRDYC        : Boolean := False;
      --  Write-only. HSE Ready Interrupt Clear
      HSERDYC        : Boolean := False;
      --  Write-only. PLL Ready Interrupt Clear
      PLLRDYC        : Boolean := False;
      --  unspecified
      Reserved_21_22 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Clock security system interrupt clear
      CSSC           : Boolean := False;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTR_Register use record
      LSIRDYF        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      HSIRDYF        at 0 range 2 .. 2;
      HSERDYF        at 0 range 3 .. 3;
      PLLRDYF        at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      CSSF           at 0 range 7 .. 7;
      LSIRDYIE       at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      HSIRDYIE       at 0 range 10 .. 10;
      HSERDYIE       at 0 range 11 .. 11;
      PLLRDYIE       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      LSIRDYC        at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      HSIRDYC        at 0 range 18 .. 18;
      HSERDYC        at 0 range 19 .. 19;
      PLLRDYC        at 0 range 20 .. 20;
      Reserved_21_22 at 0 range 21 .. 22;
      CSSC           at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  APB2 peripheral reset register (RCC_APB2PRSTR)
   type APB2PRSTR_Register is record
      --  Alternate function I/O reset
      AFIORST        : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  IO port A reset
      IOPARST        : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  IO port C reset
      IOPCRST        : Boolean := False;
      --  IO port D reset
      IOPDRST        : Boolean := False;
      --  unspecified
      Reserved_6_8   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  ADC 1 interface reset
      ADC1RST        : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM1 timer reset
      TIM1RST        : Boolean := False;
      --  SPI 1 reset
      SPI1RST        : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART1 reset
      USART1RST      : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2PRSTR_Register use record
      AFIORST        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      IOPARST        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      IOPCRST        at 0 range 4 .. 4;
      IOPDRST        at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      ADC1RST        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TIM1RST        at 0 range 11 .. 11;
      SPI1RST        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1RST      at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  APB1 peripheral reset register (RCC_APB1PRSTR)
   type APB1PRSTR_Register is record
      --  unspecified
      Reserved_0_10  : Interfaces.Bit_Types.UInt11 := 16#0#;
      --  Window watchdog reset
      WWDGRST        : Boolean := False;
      --  unspecified
      Reserved_12_20 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  I2C1 reset
      I2C1RST        : Boolean := False;
      --  unspecified
      Reserved_22_27 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Power interface reset
      PWRRST         : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1PRSTR_Register use record
      Reserved_0_10  at 0 range 0 .. 10;
      WWDGRST        at 0 range 11 .. 11;
      Reserved_12_20 at 0 range 12 .. 20;
      I2C1RST        at 0 range 21 .. 21;
      Reserved_22_27 at 0 range 22 .. 27;
      PWRRST         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  AHB Peripheral Clock enable register (RCC_AHBPCENR)
   type AHBPCENR_Register is record
      --  DMA clock enable
      DMA1EN        : Boolean := False;
      --  unspecified
      Reserved_1_1  : Interfaces.Bit_Types.Bit := 16#0#;
      --  SRAM interface clock enable
      SRAMEN        : Boolean := True;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBPCENR_Register use record
      DMA1EN        at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      SRAMEN        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  APB2 peripheral clock enable register (RCC_APB2PCENR)
   type APB2PCENR_Register is record
      --  Alternate function I/O clock enable
      AFIOEN         : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  I/O port A clock enable
      IOPAEN         : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  I/O port C clock enable
      IOPCEN         : Boolean := False;
      --  I/O port D clock enable
      IOPDEN         : Boolean := False;
      --  unspecified
      Reserved_6_8   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  ADC1 interface clock enable
      ADC1EN         : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM1 Timer clock enable
      TIM1EN         : Boolean := False;
      --  SPI 1 clock enable
      SPI1EN         : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART1 clock enable
      USART1EN       : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2PCENR_Register use record
      AFIOEN         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      IOPAEN         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      IOPCEN         at 0 range 4 .. 4;
      IOPDEN         at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      ADC1EN         at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TIM1EN         at 0 range 11 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1EN       at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  APB1 peripheral clock enable register (RCC_APB1PCENR)
   type APB1PCENR_Register is record
      --  Timer 2 clock enable
      TIM2EN         : Boolean := False;
      --  unspecified
      Reserved_1_10  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Window watchdog clock enable
      WWDGEN         : Boolean := False;
      --  unspecified
      Reserved_12_20 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  I2C 1 clock enable
      I2C1EN         : Boolean := False;
      --  unspecified
      Reserved_22_27 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Power interface clock enable
      PWREN          : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1PCENR_Register use record
      TIM2EN         at 0 range 0 .. 0;
      Reserved_1_10  at 0 range 1 .. 10;
      WWDGEN         at 0 range 11 .. 11;
      Reserved_12_20 at 0 range 12 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      Reserved_22_27 at 0 range 22 .. 27;
      PWREN          at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Control/status register (RCC_RSTSCKR)
   type RSTSCKR_Register is record
      --  Internal low speed oscillator enable
      LSION          : Boolean := False;
      --  Read-only. Internal low speed oscillator ready
      LSIRDY         : Boolean := False;
      --  unspecified
      Reserved_2_23  : Interfaces.Bit_Types.UInt22 := 16#0#;
      --  Remove reset flag
      RMVF           : Boolean := False;
      --  unspecified
      Reserved_25_25 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. PIN reset flag
      PINRSTF        : Boolean := True;
      --  Read-only. POR/PDR reset flag
      PORRSTF        : Boolean := True;
      --  Read-only. Software reset flag
      SFTRSTF        : Boolean := False;
      --  Read-only. Independent watchdog reset flag
      IWDGRSTF       : Boolean := False;
      --  Read-only. Window watchdog reset flag
      WWDGRSTF       : Boolean := False;
      --  Read-only. Low-power reset flag
      LPWRRSTF       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTSCKR_Register use record
      LSION          at 0 range 0 .. 0;
      LSIRDY         at 0 range 1 .. 1;
      Reserved_2_23  at 0 range 2 .. 23;
      RMVF           at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      PINRSTF        at 0 range 26 .. 26;
      PORRSTF        at 0 range 27 .. 27;
      SFTRSTF        at 0 range 28 .. 28;
      IWDGRSTF       at 0 range 29 .. 29;
      WWDGRSTF       at 0 range 30 .. 30;
      LPWRRSTF       at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset and clock control
   type RCC_Peripheral is record
      --  Clock control register
      CTLR      : aliased CTLR_Register;
      --  Clock configuration register (RCC_CFGR0)
      CFGR0     : aliased CFGR0_Register;
      --  Clock interrupt register (RCC_INTR)
      INTR      : aliased INTR_Register;
      --  APB2 peripheral reset register (RCC_APB2PRSTR)
      APB2PRSTR : aliased APB2PRSTR_Register;
      --  APB1 peripheral reset register (RCC_APB1PRSTR)
      APB1PRSTR : aliased APB1PRSTR_Register;
      --  AHB Peripheral Clock enable register (RCC_AHBPCENR)
      AHBPCENR  : aliased AHBPCENR_Register;
      --  APB2 peripheral clock enable register (RCC_APB2PCENR)
      APB2PCENR : aliased APB2PCENR_Register;
      --  APB1 peripheral clock enable register (RCC_APB1PCENR)
      APB1PCENR : aliased APB1PCENR_Register;
      --  Control/status register (RCC_RSTSCKR)
      RSTSCKR   : aliased RSTSCKR_Register;
   end record
     with Volatile;

   for RCC_Peripheral use record
      CTLR      at 16#0# range 0 .. 31;
      CFGR0     at 16#4# range 0 .. 31;
      INTR      at 16#8# range 0 .. 31;
      APB2PRSTR at 16#C# range 0 .. 31;
      APB1PRSTR at 16#10# range 0 .. 31;
      AHBPCENR  at 16#14# range 0 .. 31;
      APB2PCENR at 16#18# range 0 .. 31;
      APB1PCENR at 16#1C# range 0 .. 31;
      RSTSCKR   at 16#24# range 0 .. 31;
   end record;

   --  Reset and clock control
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => RCC_Base;

end Interfaces.CH32.RCC;
