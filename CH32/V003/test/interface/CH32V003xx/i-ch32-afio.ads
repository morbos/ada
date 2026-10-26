--
--  Copyright (C) 2026, AdaCore
--

--  This spec has been automatically generated from CH32V003xx.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.CH32.AFIO is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype PCFR_TIM1RM_Field is Interfaces.Bit_Types.UInt2;
   subtype PCFR_TIM2RM_Field is Interfaces.Bit_Types.UInt2;
   subtype PCFR_SWCFG_Field is Interfaces.Bit_Types.UInt3;

   --  AF remap and debug I/O configuration register (AFIO_PCFR)
   type PCFR_Register is record
      --  SPI1 remapping
      SPI1RM          : Boolean := False;
      --  I2C1 remapping
      I2C1RM          : Boolean := False;
      --  USART1 remapping
      USART1RM        : Boolean := False;
      --  unspecified
      Reserved_3_5    : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  TIM1 remapping
      TIM1RM          : PCFR_TIM1RM_Field := 16#0#;
      --  TIM2 remapping
      TIM2RM          : PCFR_TIM2RM_Field := 16#0#;
      --  unspecified
      Reserved_10_14  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Port A1/Port A2 mapping on OSCIN/OSCOUT
      PA12RM          : Boolean := False;
      --  unspecified
      Reserved_16_16  : Interfaces.Bit_Types.Bit := 16#0#;
      --  ADC 1 External trigger injected conversion remapping
      ADC1_ETRGINJ_RM : Boolean := False;
      --  ADC 1 external trigger regular conversion remapping
      ADC1_ETRGREG_RM : Boolean := False;
      --  unspecified
      Reserved_19_20  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  USART1 remapping
      USART1REMAP1    : Boolean := False;
      --  I2C1 remapping
      I2C1REMAP1      : Boolean := False;
      --  TIM1_CH1 channel selection
      TIM1_IREMAP     : Boolean := False;
      --  Write-only. Serial wire JTAG configuration
      SWCFG           : PCFR_SWCFG_Field := 16#0#;
      --  unspecified
      Reserved_27_31  : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCFR_Register use record
      SPI1RM          at 0 range 0 .. 0;
      I2C1RM          at 0 range 1 .. 1;
      USART1RM        at 0 range 2 .. 2;
      Reserved_3_5    at 0 range 3 .. 5;
      TIM1RM          at 0 range 6 .. 7;
      TIM2RM          at 0 range 8 .. 9;
      Reserved_10_14  at 0 range 10 .. 14;
      PA12RM          at 0 range 15 .. 15;
      Reserved_16_16  at 0 range 16 .. 16;
      ADC1_ETRGINJ_RM at 0 range 17 .. 17;
      ADC1_ETRGREG_RM at 0 range 18 .. 18;
      Reserved_19_20  at 0 range 19 .. 20;
      USART1REMAP1    at 0 range 21 .. 21;
      I2C1REMAP1      at 0 range 22 .. 22;
      TIM1_IREMAP     at 0 range 23 .. 23;
      SWCFG           at 0 range 24 .. 26;
      Reserved_27_31  at 0 range 27 .. 31;
   end record;

   --  EXTICR_EXTI array element
   subtype EXTICR_EXTI_Element is Interfaces.Bit_Types.UInt2;

   --  EXTICR_EXTI array
   type EXTICR_EXTI_Field_Array is array (0 .. 7) of EXTICR_EXTI_Element
     with Component_Size => 2, Size => 16;

   --  Type definition for EXTICR_EXTI
   type EXTICR_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  EXTI as an array
            Arr : EXTICR_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTICR_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  External interrupt configuration register (AFIO_EXTICR)
   type EXTICR_Register is record
      --  EXTI0 configuration
      EXTI           : EXTICR_EXTI_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTICR_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Alternate function I/O
   type AFIO_Peripheral is record
      --  AF remap and debug I/O configuration register (AFIO_PCFR)
      PCFR   : aliased PCFR_Register;
      --  External interrupt configuration register (AFIO_EXTICR)
      EXTICR : aliased EXTICR_Register;
   end record
     with Volatile;

   for AFIO_Peripheral use record
      PCFR   at 16#4# range 0 .. 31;
      EXTICR at 16#8# range 0 .. 31;
   end record;

   --  Alternate function I/O
   AFIO_Periph : aliased AFIO_Peripheral
     with Import, Address => AFIO_Base;

end Interfaces.CH32.AFIO;
