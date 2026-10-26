--  This spec has been automatically generated from CH32V003xx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package CH32_SVD.ADC1 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  status register
   type STATR_Register is record
      --  Analog watchdog flag
      AWD           : Boolean := False;
      --  Regular channel end of conversion
      EOC           : Boolean := False;
      --  Injected channel end of conversion
      JEOC          : Boolean := False;
      --  Injected channel start flag
      JSTRT         : Boolean := False;
      --  Regular channel start flag
      STRT          : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATR_Register use record
      AWD           at 0 range 0 .. 0;
      EOC           at 0 range 1 .. 1;
      JEOC          at 0 range 2 .. 2;
      JSTRT         at 0 range 3 .. 3;
      STRT          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype CTLR1_AWDCH_Field is HAL.UInt5;
   subtype CTLR1_DISCNUM_Field is HAL.UInt3;
   subtype CTLR1_ADC_CAL_VOL_Field is HAL.UInt2;

   --  control register 1/TKEY_V_CTLR
   type CTLR1_Register is record
      --  Analog watchdog channel select bits
      AWDCH          : CTLR1_AWDCH_Field := 16#0#;
      --  Interrupt enable for EOC
      EOCIE          : Boolean := False;
      --  Analog watchdog interrupt enable
      AWDIE          : Boolean := False;
      --  Interrupt enable for injected channels
      JEOCIE         : Boolean := False;
      --  Scan mode enable
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
      DISCNUM        : CTLR1_DISCNUM_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Analog watchdog enable on injected channels
      JAWDEN         : Boolean := False;
      --  Analog watchdog enable on regular channels
      AWDEN          : Boolean := False;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  ADC Calibration voltage selection
      ADC_CAL_VOL    : CTLR1_ADC_CAL_VOL_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLR1_Register use record
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
      Reserved_16_21 at 0 range 16 .. 21;
      JAWDEN         at 0 range 22 .. 22;
      AWDEN          at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      ADC_CAL_VOL    at 0 range 25 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype CTLR2_JEXTSEL_Field is HAL.UInt3;
   subtype CTLR2_EXTSEL_Field is HAL.UInt3;

   --  control register 2
   type CTLR2_Register is record
      --  A/D converter ON / OFF
      ADON           : Boolean := False;
      --  Continuous conversion
      CONT           : Boolean := False;
      --  A/D calibration
      CAL            : Boolean := False;
      --  Reset calibration
      RSTCAL         : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Direct memory access mode
      DMA            : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Data alignment
      ALIGN          : Boolean := False;
      --  External event select for injected group
      JEXTSEL        : CTLR2_JEXTSEL_Field := 16#0#;
      --  External trigger conversion mode for injected channels
      JEXTTRIG       : Boolean := False;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  External event select for regular group
      EXTSEL         : CTLR2_EXTSEL_Field := 16#0#;
      --  External trigger conversion mode for regular channels
      EXTTRIG        : Boolean := False;
      --  Start conversion of injected channels
      JSWSTART       : Boolean := False;
      --  Start conversion of regular channels
      SWSTART        : Boolean := False;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLR2_Register use record
      ADON           at 0 range 0 .. 0;
      CONT           at 0 range 1 .. 1;
      CAL            at 0 range 2 .. 2;
      RSTCAL         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      DMA            at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      ALIGN          at 0 range 11 .. 11;
      JEXTSEL        at 0 range 12 .. 14;
      JEXTTRIG       at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      EXTSEL         at 0 range 17 .. 19;
      EXTTRIG        at 0 range 20 .. 20;
      JSWSTART       at 0 range 21 .. 21;
      SWSTART        at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype SAMPTR1_CHARGE1_SMP10_TKCG10_Field is HAL.UInt3;
   subtype SAMPTR1_CHARGE1_SMP11_TKCG11_Field is HAL.UInt3;
   subtype SAMPTR1_CHARGE1_SMP12_TKCG12_Field is HAL.UInt3;
   subtype SAMPTR1_CHARGE1_SMP13_TKCG13_Field is HAL.UInt3;
   subtype SAMPTR1_CHARGE1_SMP14_TKCG14_Field is HAL.UInt3;
   subtype SAMPTR1_CHARGE1_SMP15_TKCG15_Field is HAL.UInt3;

   --  sample time register 1
   type SAMPTR1_CHARGE1_Register is record
      --  Channel 10 sample time selection
      SMP10_TKCG10   : SAMPTR1_CHARGE1_SMP10_TKCG10_Field := 16#0#;
      --  Channel 11 sample time selection
      SMP11_TKCG11   : SAMPTR1_CHARGE1_SMP11_TKCG11_Field := 16#0#;
      --  Channel 12 sample time selection
      SMP12_TKCG12   : SAMPTR1_CHARGE1_SMP12_TKCG12_Field := 16#0#;
      --  Channel 13 sample time selection
      SMP13_TKCG13   : SAMPTR1_CHARGE1_SMP13_TKCG13_Field := 16#0#;
      --  Channel 14 sample time selection
      SMP14_TKCG14   : SAMPTR1_CHARGE1_SMP14_TKCG14_Field := 16#0#;
      --  Channel 15 sample time selection
      SMP15_TKCG15   : SAMPTR1_CHARGE1_SMP15_TKCG15_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAMPTR1_CHARGE1_Register use record
      SMP10_TKCG10   at 0 range 0 .. 2;
      SMP11_TKCG11   at 0 range 3 .. 5;
      SMP12_TKCG12   at 0 range 6 .. 8;
      SMP13_TKCG13   at 0 range 9 .. 11;
      SMP14_TKCG14   at 0 range 12 .. 14;
      SMP15_TKCG15   at 0 range 15 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype SAMPTR2_CHARGE2_SMP0_TKCG0_Field is HAL.UInt3;
   subtype SAMPTR2_CHARGE2_SMP1_TKCG1_Field is HAL.UInt3;
   subtype SAMPTR2_CHARGE2_SMP2_TKCG2_Field is HAL.UInt3;
   subtype SAMPTR2_CHARGE2_SMP3_TKCG3_Field is HAL.UInt3;
   subtype SAMPTR2_CHARGE2_SMP4_TKCG4_Field is HAL.UInt3;
   subtype SAMPTR2_CHARGE2_SMP5_TKCG5_Field is HAL.UInt3;
   subtype SAMPTR2_CHARGE2_SMP6_TKCG6_Field is HAL.UInt3;
   subtype SAMPTR2_CHARGE2_SMP7_TKCG7_Field is HAL.UInt3;
   subtype SAMPTR2_CHARGE2_SMP8_TKCG8_Field is HAL.UInt3;
   subtype SAMPTR2_CHARGE2_SMP9_TKCG9_Field is HAL.UInt3;

   --  sample time register 2
   type SAMPTR2_CHARGE2_Register is record
      --  Channel 0 sample time selection
      SMP0_TKCG0     : SAMPTR2_CHARGE2_SMP0_TKCG0_Field := 16#0#;
      --  Channel 1 sample time selection
      SMP1_TKCG1     : SAMPTR2_CHARGE2_SMP1_TKCG1_Field := 16#0#;
      --  Channel 2 sample time selection
      SMP2_TKCG2     : SAMPTR2_CHARGE2_SMP2_TKCG2_Field := 16#0#;
      --  Channel 3 sample time selection
      SMP3_TKCG3     : SAMPTR2_CHARGE2_SMP3_TKCG3_Field := 16#0#;
      --  Channel 4 sample time selection
      SMP4_TKCG4     : SAMPTR2_CHARGE2_SMP4_TKCG4_Field := 16#0#;
      --  Channel 5 sample time selection
      SMP5_TKCG5     : SAMPTR2_CHARGE2_SMP5_TKCG5_Field := 16#0#;
      --  Channel 6 sample time selection
      SMP6_TKCG6     : SAMPTR2_CHARGE2_SMP6_TKCG6_Field := 16#0#;
      --  Channel 7 sample time selection
      SMP7_TKCG7     : SAMPTR2_CHARGE2_SMP7_TKCG7_Field := 16#0#;
      --  Channel 8 sample time selection
      SMP8_TKCG8     : SAMPTR2_CHARGE2_SMP8_TKCG8_Field := 16#0#;
      --  Channel 9 sample time selection
      SMP9_TKCG9     : SAMPTR2_CHARGE2_SMP9_TKCG9_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAMPTR2_CHARGE2_Register use record
      SMP0_TKCG0     at 0 range 0 .. 2;
      SMP1_TKCG1     at 0 range 3 .. 5;
      SMP2_TKCG2     at 0 range 6 .. 8;
      SMP3_TKCG3     at 0 range 9 .. 11;
      SMP4_TKCG4     at 0 range 12 .. 14;
      SMP5_TKCG5     at 0 range 15 .. 17;
      SMP6_TKCG6     at 0 range 18 .. 20;
      SMP7_TKCG7     at 0 range 21 .. 23;
      SMP8_TKCG8     at 0 range 24 .. 26;
      SMP9_TKCG9     at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype IOFR1_JOFFSET1_Field is HAL.UInt10;

   --  injected channel data offset register x
   type IOFR1_Register is record
      --  Data offset for injected channel x
      JOFFSET1       : IOFR1_JOFFSET1_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOFR1_Register use record
      JOFFSET1       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype IOFR2_JOFFSET2_Field is HAL.UInt10;

   --  injected channel data offset register x
   type IOFR2_Register is record
      --  Data offset for injected channel x
      JOFFSET2       : IOFR2_JOFFSET2_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOFR2_Register use record
      JOFFSET2       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype IOFR3_JOFFSET3_Field is HAL.UInt10;

   --  injected channel data offset register x
   type IOFR3_Register is record
      --  Data offset for injected channel x
      JOFFSET3       : IOFR3_JOFFSET3_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOFR3_Register use record
      JOFFSET3       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype IOFR4_JOFFSET4_Field is HAL.UInt10;

   --  injected channel data offset register x
   type IOFR4_Register is record
      --  Data offset for injected channel x
      JOFFSET4       : IOFR4_JOFFSET4_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOFR4_Register use record
      JOFFSET4       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype WDHTR_HT_Field is HAL.UInt10;

   --  watchdog higher threshold register
   type WDHTR_Register is record
      --  Analog watchdog higher threshold
      HT             : WDHTR_HT_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDHTR_Register use record
      HT             at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype WDLTR_LT_Field is HAL.UInt10;

   --  watchdog lower threshold register
   type WDLTR_Register is record
      --  Analog watchdog lower threshold
      LT             : WDLTR_LT_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDLTR_Register use record
      LT             at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  RSQR1_SQ array element
   subtype RSQR1_SQ_Element is HAL.UInt5;

   --  RSQR1_SQ array
   type RSQR1_SQ_Field_Array is array (13 .. 16) of RSQR1_SQ_Element
     with Component_Size => 5, Size => 20;

   --  Type definition for RSQR1_SQ
   type RSQR1_SQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SQ as a value
            Val : HAL.UInt20;
         when True =>
            --  SQ as an array
            Arr : RSQR1_SQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for RSQR1_SQ_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   subtype RSQR1_L_Field is HAL.UInt4;

   --  regular sequence register 1
   type RSQR1_Register is record
      --  13th conversion in regular sequence
      SQ             : RSQR1_SQ_Field := (As_Array => False, Val => 16#0#);
      --  Regular channel sequence length
      L              : RSQR1_L_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSQR1_Register use record
      SQ             at 0 range 0 .. 19;
      L              at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RSQR2_SQ array element
   subtype RSQR2_SQ_Element is HAL.UInt5;

   --  RSQR2_SQ array
   type RSQR2_SQ_Field_Array is array (7 .. 12) of RSQR2_SQ_Element
     with Component_Size => 5, Size => 30;

   --  Type definition for RSQR2_SQ
   type RSQR2_SQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SQ as a value
            Val : HAL.UInt30;
         when True =>
            --  SQ as an array
            Arr : RSQR2_SQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 30;

   for RSQR2_SQ_Field use record
      Val at 0 range 0 .. 29;
      Arr at 0 range 0 .. 29;
   end record;

   --  regular sequence register 2
   type RSQR2_Register is record
      --  7th conversion in regular sequence
      SQ             : RSQR2_SQ_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSQR2_Register use record
      SQ             at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  RSQR3_SQ array element
   subtype RSQR3_SQ_Element is HAL.UInt5;

   --  RSQR3_SQ array
   type RSQR3_SQ_Field_Array is array (1 .. 6) of RSQR3_SQ_Element
     with Component_Size => 5, Size => 30;

   --  Type definition for RSQR3_SQ
   type RSQR3_SQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SQ as a value
            Val : HAL.UInt30;
         when True =>
            --  SQ as an array
            Arr : RSQR3_SQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 30;

   for RSQR3_SQ_Field use record
      Val at 0 range 0 .. 29;
      Arr at 0 range 0 .. 29;
   end record;

   --  regular sequence register 3
   type RSQR3_Register is record
      --  1st conversion in regular sequence
      SQ             : RSQR3_SQ_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSQR3_Register use record
      SQ             at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  ISQR_JSQ array element
   subtype ISQR_JSQ_Element is HAL.UInt5;

   --  ISQR_JSQ array
   type ISQR_JSQ_Field_Array is array (1 .. 4) of ISQR_JSQ_Element
     with Component_Size => 5, Size => 20;

   --  Type definition for ISQR_JSQ
   type ISQR_JSQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  JSQ as a value
            Val : HAL.UInt20;
         when True =>
            --  JSQ as an array
            Arr : ISQR_JSQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for ISQR_JSQ_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   subtype ISQR_JL_Field is HAL.UInt2;

   --  injected sequence register
   type ISQR_Register is record
      --  1st conversion in injected sequence
      JSQ            : ISQR_JSQ_Field := (As_Array => False, Val => 16#0#);
      --  Injected sequence length
      JL             : ISQR_JL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISQR_Register use record
      JSQ            at 0 range 0 .. 19;
      JL             at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype IDATAR_IDATA_Field is HAL.UInt16;

   --  injected data register 1
   type IDATAR_Register is record
      --  Read-only. Injected data
      IDATA          : IDATAR_IDATA_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDATAR_Register use record
      IDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DLYR_DLYVLU_Field is HAL.UInt9;

   --  delay data register
   type DLYR_Register is record
      --  External trigger data delay time configuration
      DLYVLU         : DLYR_DLYVLU_Field := 16#0#;
      --  External trigger source delay selection
      DLYSRC         : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLYR_Register use record
      DLYVLU         at 0 range 0 .. 8;
      DLYSRC         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog to digital converter
   type ADC1_Peripheral is record
      --  status register
      STATR           : aliased STATR_Register;
      --  control register 1/TKEY_V_CTLR
      CTLR1           : aliased CTLR1_Register;
      --  control register 2
      CTLR2           : aliased CTLR2_Register;
      --  sample time register 1
      SAMPTR1_CHARGE1 : aliased SAMPTR1_CHARGE1_Register;
      --  sample time register 2
      SAMPTR2_CHARGE2 : aliased SAMPTR2_CHARGE2_Register;
      --  injected channel data offset register x
      IOFR1           : aliased IOFR1_Register;
      --  injected channel data offset register x
      IOFR2           : aliased IOFR2_Register;
      --  injected channel data offset register x
      IOFR3           : aliased IOFR3_Register;
      --  injected channel data offset register x
      IOFR4           : aliased IOFR4_Register;
      --  watchdog higher threshold register
      WDHTR           : aliased WDHTR_Register;
      --  watchdog lower threshold register
      WDLTR           : aliased WDLTR_Register;
      --  regular sequence register 1
      RSQR1           : aliased RSQR1_Register;
      --  regular sequence register 2
      RSQR2           : aliased RSQR2_Register;
      --  regular sequence register 3
      RSQR3           : aliased RSQR3_Register;
      --  injected sequence register
      ISQR            : aliased ISQR_Register;
      --  injected data register 1
      IDATAR1         : aliased IDATAR_Register;
      --  injected data register 2
      IDATAR2         : aliased IDATAR_Register;
      --  injected data register 3
      IDATAR3         : aliased IDATAR_Register;
      --  injected data register 4
      IDATAR4         : aliased IDATAR_Register;
      --  regular data register
      RDATAR          : aliased HAL.UInt32;
      --  delay data register
      DLYR            : aliased DLYR_Register;
   end record
     with Volatile;

   for ADC1_Peripheral use record
      STATR           at 16#0# range 0 .. 31;
      CTLR1           at 16#4# range 0 .. 31;
      CTLR2           at 16#8# range 0 .. 31;
      SAMPTR1_CHARGE1 at 16#C# range 0 .. 31;
      SAMPTR2_CHARGE2 at 16#10# range 0 .. 31;
      IOFR1           at 16#14# range 0 .. 31;
      IOFR2           at 16#18# range 0 .. 31;
      IOFR3           at 16#1C# range 0 .. 31;
      IOFR4           at 16#20# range 0 .. 31;
      WDHTR           at 16#24# range 0 .. 31;
      WDLTR           at 16#28# range 0 .. 31;
      RSQR1           at 16#2C# range 0 .. 31;
      RSQR2           at 16#30# range 0 .. 31;
      RSQR3           at 16#34# range 0 .. 31;
      ISQR            at 16#38# range 0 .. 31;
      IDATAR1         at 16#3C# range 0 .. 31;
      IDATAR2         at 16#40# range 0 .. 31;
      IDATAR3         at 16#44# range 0 .. 31;
      IDATAR4         at 16#48# range 0 .. 31;
      RDATAR          at 16#4C# range 0 .. 31;
      DLYR            at 16#50# range 0 .. 31;
   end record;

   --  Analog to digital converter
   ADC1_Periph : aliased ADC1_Peripheral
     with Import, Address => ADC1_Base;

end CH32_SVD.ADC1;
