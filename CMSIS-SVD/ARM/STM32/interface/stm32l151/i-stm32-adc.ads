--
--  Copyright (C) 2019, AdaCore
--

--  This spec has been automatically generated from STM32L151.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.ADC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  status register
   type SR_Register is record
      --  Analog watchdog flag
      AWD            : Boolean := False;
      --  Regular channel end of conversion
      EOC            : Boolean := False;
      --  Injected channel end of conversion
      JEOC           : Boolean := False;
      --  Injected channel start flag
      JSTRT          : Boolean := False;
      --  Regular channel start flag
      STRT           : Boolean := False;
      --  Overrun
      OVR            : Boolean := False;
      --  Read-only. ADC ON status
      ADONS          : Boolean := False;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Regular channel not ready
      RCNR           : Boolean := False;
      --  Read-only. Injected channel not ready
      JCNR           : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      AWD            at 0 range 0 .. 0;
      EOC            at 0 range 1 .. 1;
      JEOC           at 0 range 2 .. 2;
      JSTRT          at 0 range 3 .. 3;
      STRT           at 0 range 4 .. 4;
      OVR            at 0 range 5 .. 5;
      ADONS          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RCNR           at 0 range 8 .. 8;
      JCNR           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype CR1_AWDCH_Field is Interfaces.Bit_Types.UInt5;
   subtype CR1_DISCNUM_Field is Interfaces.Bit_Types.UInt3;
   subtype CR1_RES_Field is Interfaces.Bit_Types.UInt2;

   --  control register 1
   type CR1_Register is record
      --  Analog watchdog channel select bits
      AWDCH          : CR1_AWDCH_Field := 16#0#;
      --  Interrupt enable for EOC
      EOCIE          : Boolean := False;
      --  Analog watchdog interrupt enable
      AWDIE          : Boolean := False;
      --  Interrupt enable for injected channels
      JEOCIE         : Boolean := False;
      --  Scan mode
      SCAN           : Boolean := False;
      --  Enable the watchdog on a single channel in scan mode
      AWDSGL         : Boolean := False;
      --  Automatic injected group conversion
      JAUTO          : Boolean := False;
      --  Discontinuous mode on regular channels
      DISCEN         : Boolean := False;
      --  Discontinuous mode on injected channels
      JDISCEN        : Boolean := False;
      --  Discontinuous mode channel count
      DISCNUM        : CR1_DISCNUM_Field := 16#0#;
      --  Power down during the delay phase
      PDD            : Boolean := False;
      --  Power down during the idle phase
      PDI            : Boolean := False;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Analog watchdog enable on injected channels
      JAWDEN         : Boolean := False;
      --  Analog watchdog enable on regular channels
      AWDEN          : Boolean := False;
      --  Resolution
      RES            : CR1_RES_Field := 16#0#;
      --  Overrun interrupt enable
      OVRIE          : Boolean := False;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      AWDCH          at 0 range 0 .. 4;
      EOCIE          at 0 range 5 .. 5;
      AWDIE          at 0 range 6 .. 6;
      JEOCIE         at 0 range 7 .. 7;
      SCAN           at 0 range 8 .. 8;
      AWDSGL         at 0 range 9 .. 9;
      JAUTO          at 0 range 10 .. 10;
      DISCEN         at 0 range 11 .. 11;
      JDISCEN        at 0 range 12 .. 12;
      DISCNUM        at 0 range 13 .. 15;
      PDD            at 0 range 16 .. 16;
      PDI            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      JAWDEN         at 0 range 22 .. 22;
      AWDEN          at 0 range 23 .. 23;
      RES            at 0 range 24 .. 25;
      OVRIE          at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype CR2_DELS_Field is Interfaces.Bit_Types.UInt3;
   subtype CR2_JEXTSEL_Field is Interfaces.Bit_Types.UInt4;
   subtype CR2_JEXTEN_Field is Interfaces.Bit_Types.UInt2;
   subtype CR2_EXTSEL_Field is Interfaces.Bit_Types.UInt4;
   subtype CR2_EXTEN_Field is Interfaces.Bit_Types.UInt2;

   --  control register 2
   type CR2_Register is record
      --  A/D Converter ON / OFF
      ADON           : Boolean := False;
      --  Continuous conversion
      CONT           : Boolean := False;
      --  ADC configuration
      ADC_CFG        : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Delay selection
      DELS           : CR2_DELS_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Direct memory access mode
      DMA            : Boolean := False;
      --  DMA disable selection
      DDS            : Boolean := False;
      --  End of conversion selection
      EOCS           : Boolean := False;
      --  Data alignment
      ALIGN          : Boolean := False;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  External event select for injected group
      JEXTSEL        : CR2_JEXTSEL_Field := 16#0#;
      --  External trigger enable for injected channels
      JEXTEN         : CR2_JEXTEN_Field := 16#0#;
      --  Start conversion of injected channels
      JSWSTART       : Boolean := False;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  External event select for regular group
      EXTSEL         : CR2_EXTSEL_Field := 16#0#;
      --  External trigger enable for regular channels
      EXTEN          : CR2_EXTEN_Field := 16#0#;
      --  Start conversion of regular channels
      SWSTART        : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      ADON           at 0 range 0 .. 0;
      CONT           at 0 range 1 .. 1;
      ADC_CFG        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DELS           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DMA            at 0 range 8 .. 8;
      DDS            at 0 range 9 .. 9;
      EOCS           at 0 range 10 .. 10;
      ALIGN          at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      JEXTSEL        at 0 range 16 .. 19;
      JEXTEN         at 0 range 20 .. 21;
      JSWSTART       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      EXTSEL         at 0 range 24 .. 27;
      EXTEN          at 0 range 28 .. 29;
      SWSTART        at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype SMPR_SMP_Field is Interfaces.Bit_Types.UInt30;

   --  sample time register 1
   type SMPR_Register is record
      --  Channel sampling time selection
      SMP            : SMPR_SMP_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMPR_Register use record
      SMP            at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype JOFR1_JOFFSET1_Field is Interfaces.Bit_Types.UInt12;

   --  injected channel data offset register x
   type JOFR1_Register is record
      --  Data offset for injected channel x
      JOFFSET1       : JOFR1_JOFFSET1_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JOFR1_Register use record
      JOFFSET1       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype JOFR2_JOFFSET2_Field is Interfaces.Bit_Types.UInt12;

   --  injected channel data offset register x
   type JOFR2_Register is record
      --  Data offset for injected channel x
      JOFFSET2       : JOFR2_JOFFSET2_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JOFR2_Register use record
      JOFFSET2       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype JOFR3_JOFFSET3_Field is Interfaces.Bit_Types.UInt12;

   --  injected channel data offset register x
   type JOFR3_Register is record
      --  Data offset for injected channel x
      JOFFSET3       : JOFR3_JOFFSET3_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JOFR3_Register use record
      JOFFSET3       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype JOFR4_JOFFSET4_Field is Interfaces.Bit_Types.UInt12;

   --  injected channel data offset register x
   type JOFR4_Register is record
      --  Data offset for injected channel x
      JOFFSET4       : JOFR4_JOFFSET4_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JOFR4_Register use record
      JOFFSET4       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype HTR_HT_Field is Interfaces.Bit_Types.UInt12;

   --  watchdog higher threshold register
   type HTR_Register is record
      --  Analog watchdog higher threshold
      HT             : HTR_HT_Field := 16#FFF#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HTR_Register use record
      HT             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype LTR_LT_Field is Interfaces.Bit_Types.UInt12;

   --  watchdog lower threshold register
   type LTR_Register is record
      --  Analog watchdog lower threshold
      LT             : LTR_LT_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTR_Register use record
      LT             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  SQR1_SQ array element
   subtype SQR1_SQ_Element is Interfaces.Bit_Types.UInt5;

   --  SQR1_SQ array
   type SQR1_SQ_Field_Array is array (25 .. 28) of SQR1_SQ_Element
     with Component_Size => 5, Size => 20;

   --  Type definition for SQR1_SQ
   type SQR1_SQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SQ as a value
            Val : Interfaces.Bit_Types.UInt20;
         when True =>
            --  SQ as an array
            Arr : SQR1_SQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for SQR1_SQ_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   subtype SQR1_L_Field is Interfaces.Bit_Types.UInt4;

   --  regular sequence register 1
   type SQR1_Register is record
      --  25th conversion in regular sequence
      SQ             : SQR1_SQ_Field := (As_Array => False, Val => 16#0#);
      --  Regular channel sequence length
      L              : SQR1_L_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SQR1_Register use record
      SQ             at 0 range 0 .. 19;
      L              at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  SQR2_SQ array element
   subtype SQR2_SQ_Element is Interfaces.Bit_Types.UInt5;

   --  SQR2_SQ array
   type SQR2_SQ_Field_Array is array (19 .. 24) of SQR2_SQ_Element
     with Component_Size => 5, Size => 30;

   --  Type definition for SQR2_SQ
   type SQR2_SQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SQ as a value
            Val : Interfaces.Bit_Types.UInt30;
         when True =>
            --  SQ as an array
            Arr : SQR2_SQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 30;

   for SQR2_SQ_Field use record
      Val at 0 range 0 .. 29;
      Arr at 0 range 0 .. 29;
   end record;

   --  regular sequence register 2
   type SQR2_Register is record
      --  19th conversion in regular sequence
      SQ             : SQR2_SQ_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SQR2_Register use record
      SQ             at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  SQR3_SQ array element
   subtype SQR3_SQ_Element is Interfaces.Bit_Types.UInt5;

   --  SQR3_SQ array
   type SQR3_SQ_Field_Array is array (13 .. 18) of SQR3_SQ_Element
     with Component_Size => 5, Size => 30;

   --  Type definition for SQR3_SQ
   type SQR3_SQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SQ as a value
            Val : Interfaces.Bit_Types.UInt30;
         when True =>
            --  SQ as an array
            Arr : SQR3_SQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 30;

   for SQR3_SQ_Field use record
      Val at 0 range 0 .. 29;
      Arr at 0 range 0 .. 29;
   end record;

   --  regular sequence register 3
   type SQR3_Register is record
      --  13th conversion in regular sequence
      SQ             : SQR3_SQ_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SQR3_Register use record
      SQ             at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  SQR4_SQ array element
   subtype SQR4_SQ_Element is Interfaces.Bit_Types.UInt5;

   --  SQR4_SQ array
   type SQR4_SQ_Field_Array is array (7 .. 12) of SQR4_SQ_Element
     with Component_Size => 5, Size => 30;

   --  Type definition for SQR4_SQ
   type SQR4_SQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SQ as a value
            Val : Interfaces.Bit_Types.UInt30;
         when True =>
            --  SQ as an array
            Arr : SQR4_SQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 30;

   for SQR4_SQ_Field use record
      Val at 0 range 0 .. 29;
      Arr at 0 range 0 .. 29;
   end record;

   --  regular sequence register 4
   type SQR4_Register is record
      --  7th conversion in regular sequence
      SQ             : SQR4_SQ_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SQR4_Register use record
      SQ             at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  SQR5_SQ array element
   subtype SQR5_SQ_Element is Interfaces.Bit_Types.UInt5;

   --  SQR5_SQ array
   type SQR5_SQ_Field_Array is array (1 .. 6) of SQR5_SQ_Element
     with Component_Size => 5, Size => 30;

   --  Type definition for SQR5_SQ
   type SQR5_SQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SQ as a value
            Val : Interfaces.Bit_Types.UInt30;
         when True =>
            --  SQ as an array
            Arr : SQR5_SQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 30;

   for SQR5_SQ_Field use record
      Val at 0 range 0 .. 29;
      Arr at 0 range 0 .. 29;
   end record;

   --  regular sequence register 5
   type SQR5_Register is record
      --  1st conversion in regular sequence
      SQ             : SQR5_SQ_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SQR5_Register use record
      SQ             at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  JSQR_JSQ array element
   subtype JSQR_JSQ_Element is Interfaces.Bit_Types.UInt5;

   --  JSQR_JSQ array
   type JSQR_JSQ_Field_Array is array (1 .. 4) of JSQR_JSQ_Element
     with Component_Size => 5, Size => 20;

   --  Type definition for JSQR_JSQ
   type JSQR_JSQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  JSQ as a value
            Val : Interfaces.Bit_Types.UInt20;
         when True =>
            --  JSQ as an array
            Arr : JSQR_JSQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for JSQR_JSQ_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   subtype JSQR_JL_Field is Interfaces.Bit_Types.UInt2;

   --  injected sequence register
   type JSQR_Register is record
      --  1st conversion in injected sequence
      JSQ            : JSQR_JSQ_Field := (As_Array => False, Val => 16#0#);
      --  Injected sequence length
      JL             : JSQR_JL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JSQR_Register use record
      JSQ            at 0 range 0 .. 19;
      JL             at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype JDR_JDATA_Field is Interfaces.Bit_Types.Short;

   --  injected data register x
   type JDR_Register is record
      --  Read-only. Injected data
      JDATA          : JDR_JDATA_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JDR_Register use record
      JDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DR_RegularDATA_Field is Interfaces.Bit_Types.Short;

   --  regular data register
   type DR_Register is record
      --  Read-only. Regular data
      RegularDATA    : DR_RegularDATA_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      RegularDATA    at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SMPR0_SMP_Field is Interfaces.Bit_Types.UInt6;

   --  sample time register 0
   type SMPR0_Register is record
      --  Channel Sample time selection
      SMP           : SMPR0_SMP_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMPR0_Register use record
      SMP           at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  ADC common status register
   type CSR_Register is record
      --  Read-only. Analog watchdog flag of the ADC
      AWD1          : Boolean;
      --  Read-only. End of conversion of the ADC
      EOC1          : Boolean;
      --  Read-only. Injected channel end of conversion of the ADC
      JEOC1         : Boolean;
      --  Read-only. Injected channel Start flag of the ADC
      JSTRT1        : Boolean;
      --  Read-only. Regular channel Start flag of the ADC
      STRT1         : Boolean;
      --  Read-only. Overrun flag of the ADC
      OVR1          : Boolean;
      --  Read-only. ADON Status of ADC1
      ADONS1        : Boolean;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      AWD1          at 0 range 0 .. 0;
      EOC1          at 0 range 1 .. 1;
      JEOC1         at 0 range 2 .. 2;
      JSTRT1        at 0 range 3 .. 3;
      STRT1         at 0 range 4 .. 4;
      OVR1          at 0 range 5 .. 5;
      ADONS1        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype CCR_ADCPRE_Field is Interfaces.Bit_Types.UInt2;

   --  ADC common control register
   type CCR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.Short := 16#0#;
      --  ADC prescaler
      ADCPRE         : CCR_ADCPRE_Field := 16#0#;
      --  unspecified
      Reserved_18_22 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Temperature sensor and VREFINT enable
      TSVREFE        : Boolean := False;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      ADCPRE         at 0 range 16 .. 17;
      Reserved_18_22 at 0 range 18 .. 22;
      TSVREFE        at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog-to-digital converter
   type ADC_Peripheral is record
      --  status register
      SR    : aliased SR_Register;
      --  control register 1
      CR1   : aliased CR1_Register;
      --  control register 2
      CR2   : aliased CR2_Register;
      --  sample time register 1
      SMPR1 : aliased SMPR_Register;
      --  sample time register 2
      SMPR2 : aliased SMPR_Register;
      --  sample time register 3
      SMPR3 : aliased SMPR_Register;
      --  injected channel data offset register x
      JOFR1 : aliased JOFR1_Register;
      --  injected channel data offset register x
      JOFR2 : aliased JOFR2_Register;
      --  injected channel data offset register x
      JOFR3 : aliased JOFR3_Register;
      --  injected channel data offset register x
      JOFR4 : aliased JOFR4_Register;
      --  watchdog higher threshold register
      HTR   : aliased HTR_Register;
      --  watchdog lower threshold register
      LTR   : aliased LTR_Register;
      --  regular sequence register 1
      SQR1  : aliased SQR1_Register;
      --  regular sequence register 2
      SQR2  : aliased SQR2_Register;
      --  regular sequence register 3
      SQR3  : aliased SQR3_Register;
      --  regular sequence register 4
      SQR4  : aliased SQR4_Register;
      --  regular sequence register 5
      SQR5  : aliased SQR5_Register;
      --  injected sequence register
      JSQR  : aliased JSQR_Register;
      --  injected data register x
      JDR1  : aliased JDR_Register;
      --  injected data register x
      JDR2  : aliased JDR_Register;
      --  injected data register x
      JDR3  : aliased JDR_Register;
      --  injected data register x
      JDR4  : aliased JDR_Register;
      --  regular data register
      DR    : aliased DR_Register;
      --  sample time register 0
      SMPR0 : aliased SMPR0_Register;
      --  ADC common status register
      CSR   : aliased CSR_Register;
      --  ADC common control register
      CCR   : aliased CCR_Register;
   end record
     with Volatile;

   for ADC_Peripheral use record
      SR    at 16#0# range 0 .. 31;
      CR1   at 16#4# range 0 .. 31;
      CR2   at 16#8# range 0 .. 31;
      SMPR1 at 16#C# range 0 .. 31;
      SMPR2 at 16#10# range 0 .. 31;
      SMPR3 at 16#14# range 0 .. 31;
      JOFR1 at 16#18# range 0 .. 31;
      JOFR2 at 16#1C# range 0 .. 31;
      JOFR3 at 16#20# range 0 .. 31;
      JOFR4 at 16#24# range 0 .. 31;
      HTR   at 16#28# range 0 .. 31;
      LTR   at 16#2C# range 0 .. 31;
      SQR1  at 16#30# range 0 .. 31;
      SQR2  at 16#34# range 0 .. 31;
      SQR3  at 16#38# range 0 .. 31;
      SQR4  at 16#3C# range 0 .. 31;
      SQR5  at 16#40# range 0 .. 31;
      JSQR  at 16#44# range 0 .. 31;
      JDR1  at 16#48# range 0 .. 31;
      JDR2  at 16#4C# range 0 .. 31;
      JDR3  at 16#50# range 0 .. 31;
      JDR4  at 16#54# range 0 .. 31;
      DR    at 16#58# range 0 .. 31;
      SMPR0 at 16#5C# range 0 .. 31;
      CSR   at 16#300# range 0 .. 31;
      CCR   at 16#304# range 0 .. 31;
   end record;

   --  Analog-to-digital converter
   ADC_Periph : aliased ADC_Peripheral
     with Import, Address => System'To_Address (16#40012400#);

end Interfaces.STM32.ADC;
