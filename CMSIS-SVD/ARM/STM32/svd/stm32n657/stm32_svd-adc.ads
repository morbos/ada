--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.ADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  ADC_ISR_AWD array
   type ADC_ISR_AWD_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC_ISR_AWD
   type ADC_ISR_AWD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AWD as a value
            Val : HAL.UInt3;
         when True =>
            --  AWD as an array
            Arr : ADC_ISR_AWD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC_ISR_AWD_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  ADC interrupt and status register
   type ADC_ISR_Register is record
      --  ADC ready
      ADRDY          : Boolean := False;
      --  End of sampling flag
      EOSMP          : Boolean := False;
      --  End of conversion flag
      EOC            : Boolean := False;
      --  End of regular sequence flag
      EOS            : Boolean := False;
      --  ADC overrun
      OVR            : Boolean := False;
      --  Injected channel end of conversion flag
      JEOC           : Boolean := False;
      --  Injected channel end of sequence flag
      JEOS           : Boolean := False;
      --  Analog watchdog 1 flag
      AWD            : ADC_ISR_AWD_Field := (As_Array => False, Val => 16#0#);
      --  Injected context queue overflow
      JQOVF          : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_ISR_Register use record
      ADRDY          at 0 range 0 .. 0;
      EOSMP          at 0 range 1 .. 1;
      EOC            at 0 range 2 .. 2;
      EOS            at 0 range 3 .. 3;
      OVR            at 0 range 4 .. 4;
      JEOC           at 0 range 5 .. 5;
      JEOS           at 0 range 6 .. 6;
      AWD            at 0 range 7 .. 9;
      JQOVF          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  ADC interrupt enable register
   type ADC_IER_Register is record
      --  ADC ready interrupt enable
      ADRDYIE        : Boolean := False;
      --  End of sampling flag interrupt enable for regular conversions
      EOSMPIE        : Boolean := False;
      --  End of regular conversion interrupt enable
      EOCIE          : Boolean := False;
      --  End of regular sequence of conversions interrupt enable
      EOSIE          : Boolean := False;
      --  Overrun interrupt enable
      OVRIE          : Boolean := False;
      --  End of injected conversion interrupt enable
      JEOCIE         : Boolean := False;
      --  End of injected sequence of conversions interrupt enable
      JEOSIE         : Boolean := False;
      --  Analog watchdog 1 interrupt enable
      AWD1IE         : Boolean := False;
      --  Analog watchdog 2 interrupt enable
      AWD2IE         : Boolean := False;
      --  Analog watchdog 3 interrupt enable
      AWD3IE         : Boolean := False;
      --  Injected context queue overflow interrupt enable
      JQOVFIE        : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_IER_Register use record
      ADRDYIE        at 0 range 0 .. 0;
      EOSMPIE        at 0 range 1 .. 1;
      EOCIE          at 0 range 2 .. 2;
      EOSIE          at 0 range 3 .. 3;
      OVRIE          at 0 range 4 .. 4;
      JEOCIE         at 0 range 5 .. 5;
      JEOSIE         at 0 range 6 .. 6;
      AWD1IE         at 0 range 7 .. 7;
      AWD2IE         at 0 range 8 .. 8;
      AWD3IE         at 0 range 9 .. 9;
      JQOVFIE        at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  ADC control register
   type ADC_CR_Register is record
      --  ADC enable control
      ADEN          : Boolean := False;
      --  ADC disable command
      ADDIS         : Boolean := False;
      --  ADC start of regular conversion
      ADSTART       : Boolean := False;
      --  ADC start of injected conversion
      JADSTART      : Boolean := False;
      --  ADC stop of regular conversion command
      ADSTP         : Boolean := False;
      --  ADC stop of injected conversion command
      JADSTP        : Boolean := False;
      --  unspecified
      Reserved_6_28 : HAL.UInt23 := 16#0#;
      --  Deep-power-down enable
      DEEPPWD       : Boolean := True;
      --  Differential mode for calibration
      ADCALDIF      : Boolean := False;
      --  ADC calibration
      ADCAL         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CR_Register use record
      ADEN          at 0 range 0 .. 0;
      ADDIS         at 0 range 1 .. 1;
      ADSTART       at 0 range 2 .. 2;
      JADSTART      at 0 range 3 .. 3;
      ADSTP         at 0 range 4 .. 4;
      JADSTP        at 0 range 5 .. 5;
      Reserved_6_28 at 0 range 6 .. 28;
      DEEPPWD       at 0 range 29 .. 29;
      ADCALDIF      at 0 range 30 .. 30;
      ADCAL         at 0 range 31 .. 31;
   end record;

   subtype ADC_CFGR1_DMNGT_Field is HAL.UInt2;
   subtype ADC_CFGR1_RES_Field is HAL.UInt2;
   subtype ADC_CFGR1_EXTSEL_Field is HAL.UInt5;
   subtype ADC_CFGR1_EXTEN_Field is HAL.UInt2;
   subtype ADC_CFGR1_DISCNUM_Field is HAL.UInt3;
   subtype ADC_CFGR1_AWD1CH_Field is HAL.UInt5;

   --  ADC configuration register
   type ADC_CFGR1_Register is record
      --  Data management configuration
      DMNGT          : ADC_CFGR1_DMNGT_Field := 16#0#;
      --  Data resolution
      RES            : ADC_CFGR1_RES_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  External trigger selection for regular group
      EXTSEL         : ADC_CFGR1_EXTSEL_Field := 16#0#;
      --  External trigger enable and polarity selection for regular channels
      EXTEN          : ADC_CFGR1_EXTEN_Field := 16#0#;
      --  Overrun mode
      OVRMOD         : Boolean := False;
      --  Single / Continuous conversion mode for regular conversions
      CONT           : Boolean := False;
      --  Delayed conversion mode
      AUTDLY         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Discontinuous mode for regular channels
      DISCEN         : Boolean := False;
      --  Discontinuous mode channel count
      DISCNUM        : ADC_CFGR1_DISCNUM_Field := 16#0#;
      --  Discontinuous mode on injected channels
      JDISCEN        : Boolean := False;
      --  JSQR queue mode
      JQM            : Boolean := False;
      --  Enable the watchdog 1 on a single channel or on all channels
      AWD1SGL        : Boolean := False;
      --  Analog watchdog 1 enable on regular channels
      AWD1EN         : Boolean := False;
      --  Analog watchdog 1 enable on injected channels
      JAWD1EN        : Boolean := False;
      --  Automatic injected group conversion
      JAUTO          : Boolean := False;
      --  Analog watchdog 1 channel selection
      AWD1CH         : ADC_CFGR1_AWD1CH_Field := 16#0#;
      --  Injected queue disable
      JQDIS          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CFGR1_Register use record
      DMNGT          at 0 range 0 .. 1;
      RES            at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      EXTSEL         at 0 range 5 .. 9;
      EXTEN          at 0 range 10 .. 11;
      OVRMOD         at 0 range 12 .. 12;
      CONT           at 0 range 13 .. 13;
      AUTDLY         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      DISCEN         at 0 range 16 .. 16;
      DISCNUM        at 0 range 17 .. 19;
      JDISCEN        at 0 range 20 .. 20;
      JQM            at 0 range 21 .. 21;
      AWD1SGL        at 0 range 22 .. 22;
      AWD1EN         at 0 range 23 .. 23;
      JAWD1EN        at 0 range 24 .. 24;
      JAUTO          at 0 range 25 .. 25;
      AWD1CH         at 0 range 26 .. 30;
      JQDIS          at 0 range 31 .. 31;
   end record;

   subtype ADC_CFGR2_OVSS_Field is HAL.UInt4;
   subtype ADC_CFGR2_OSR_Field is HAL.UInt10;
   subtype ADC_CFGR2_LSHIFT_Field is HAL.UInt4;

   --  ADC configuration register 2
   type ADC_CFGR2_Register is record
      --  Regular oversampling enable
      ROVSE          : Boolean := False;
      --  Injected oversampling enable
      JOVSE          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  Oversampling shift
      OVSS           : ADC_CFGR2_OVSS_Field := 16#0#;
      --  Triggered regular oversampling
      TROVS          : Boolean := False;
      --  Regular oversampling mode
      ROVSM          : Boolean := False;
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  Bulb sampling mode
      BULB           : Boolean := False;
      --  Software trigger bit for sampling time control trigger mode
      SWTRIG         : Boolean := False;
      --  Sampling time control trigger mode
      SMPTRIG        : Boolean := False;
      --  Oversampling ratio
      OSR            : ADC_CFGR2_OSR_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Left shift factor
      LSHIFT         : ADC_CFGR2_LSHIFT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CFGR2_Register use record
      ROVSE          at 0 range 0 .. 0;
      JOVSE          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVSS           at 0 range 5 .. 8;
      TROVS          at 0 range 9 .. 9;
      ROVSM          at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      BULB           at 0 range 13 .. 13;
      SWTRIG         at 0 range 14 .. 14;
      SMPTRIG        at 0 range 15 .. 15;
      OSR            at 0 range 16 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      LSHIFT         at 0 range 28 .. 31;
   end record;

   --  ADC_SMPR1_SMP array element
   subtype ADC_SMPR1_SMP_Element is HAL.UInt3;

   --  ADC_SMPR1_SMP array
   type ADC_SMPR1_SMP_Field_Array is array (0 .. 9) of ADC_SMPR1_SMP_Element
     with Component_Size => 3, Size => 30;

   --  Type definition for ADC_SMPR1_SMP
   type ADC_SMPR1_SMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SMP as a value
            Val : HAL.UInt30;
         when True =>
            --  SMP as an array
            Arr : ADC_SMPR1_SMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 30;

   for ADC_SMPR1_SMP_Field use record
      Val at 0 range 0 .. 29;
      Arr at 0 range 0 .. 29;
   end record;

   --  ADC sample time register 1
   type ADC_SMPR1_Register is record
      --  Channel x sampling time selection
      SMP            : ADC_SMPR1_SMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_SMPR1_Register use record
      SMP            at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  ADC_SMPR2_SMP array element
   subtype ADC_SMPR2_SMP_Element is HAL.UInt3;

   --  ADC_SMPR2_SMP array
   type ADC_SMPR2_SMP_Field_Array is array (10 .. 19)
     of ADC_SMPR2_SMP_Element
     with Component_Size => 3, Size => 30;

   --  Type definition for ADC_SMPR2_SMP
   type ADC_SMPR2_SMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SMP as a value
            Val : HAL.UInt30;
         when True =>
            --  SMP as an array
            Arr : ADC_SMPR2_SMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 30;

   for ADC_SMPR2_SMP_Field use record
      Val at 0 range 0 .. 29;
      Arr at 0 range 0 .. 29;
   end record;

   --  ADC sample time register 2
   type ADC_SMPR2_Register is record
      --  Channel x sampling time selection
      SMP            : ADC_SMPR2_SMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_SMPR2_Register use record
      SMP            at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ADC_PCSEL_PCSEL_Field is HAL.UInt20;

   --  ADC channel preselection register
   type ADC_PCSEL_Register is record
      --  Channel i (Vless thansub>INPless than/sub>[i]) preselection
      PCSEL          : ADC_PCSEL_PCSEL_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_PCSEL_Register use record
      PCSEL          at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ADC_SQR1_L_Field is HAL.UInt4;
   subtype ADC_SQR1_SQ1_Field is HAL.UInt5;
   subtype ADC_SQR1_SQ2_Field is HAL.UInt5;
   subtype ADC_SQR1_SQ3_Field is HAL.UInt5;
   subtype ADC_SQR1_SQ4_Field is HAL.UInt5;

   --  ADC regular sequence register 1
   type ADC_SQR1_Register is record
      --  Regular channel sequence length
      L              : ADC_SQR1_L_Field := 16#0#;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  1st conversion in regular sequence
      SQ1            : ADC_SQR1_SQ1_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  2nd conversion in regular sequence
      SQ2            : ADC_SQR1_SQ2_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  3rd conversion in regular sequence
      SQ3            : ADC_SQR1_SQ3_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  4th conversion in regular sequence
      SQ4            : ADC_SQR1_SQ4_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_SQR1_Register use record
      L              at 0 range 0 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      SQ1            at 0 range 6 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SQ2            at 0 range 12 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      SQ3            at 0 range 18 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SQ4            at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ADC_SQR2_SQ5_Field is HAL.UInt5;
   subtype ADC_SQR2_SQ6_Field is HAL.UInt5;
   subtype ADC_SQR2_SQ7_Field is HAL.UInt5;
   subtype ADC_SQR2_SQ8_Field is HAL.UInt5;
   subtype ADC_SQR2_SQ9_Field is HAL.UInt5;

   --  ADC regular sequence register 2
   type ADC_SQR2_Register is record
      --  5th conversion in regular sequence
      SQ5            : ADC_SQR2_SQ5_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  6th conversion in regular sequence
      SQ6            : ADC_SQR2_SQ6_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  7th conversion in regular sequence
      SQ7            : ADC_SQR2_SQ7_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  8th conversion in regular sequence
      SQ8            : ADC_SQR2_SQ8_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  9th conversion in regular sequence
      SQ9            : ADC_SQR2_SQ9_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_SQR2_Register use record
      SQ5            at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SQ6            at 0 range 6 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SQ7            at 0 range 12 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      SQ8            at 0 range 18 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SQ9            at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ADC_SQR3_SQ10_Field is HAL.UInt5;
   subtype ADC_SQR3_SQ11_Field is HAL.UInt5;
   subtype ADC_SQR3_SQ12_Field is HAL.UInt5;
   subtype ADC_SQR3_SQ13_Field is HAL.UInt5;
   subtype ADC_SQR3_SQ14_Field is HAL.UInt5;

   --  ADC regular sequence register 3
   type ADC_SQR3_Register is record
      --  10th conversion in regular sequence
      SQ10           : ADC_SQR3_SQ10_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  11th conversion in regular sequence
      SQ11           : ADC_SQR3_SQ11_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  12th conversion in regular sequence
      SQ12           : ADC_SQR3_SQ12_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  13th conversion in regular sequence
      SQ13           : ADC_SQR3_SQ13_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  14th conversion in regular sequence
      SQ14           : ADC_SQR3_SQ14_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_SQR3_Register use record
      SQ10           at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SQ11           at 0 range 6 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SQ12           at 0 range 12 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      SQ13           at 0 range 18 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SQ14           at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ADC_SQR4_SQ15_Field is HAL.UInt5;
   subtype ADC_SQR4_SQ16_Field is HAL.UInt5;

   --  ADC regular sequence register 4
   type ADC_SQR4_Register is record
      --  15th conversion in regular sequence
      SQ15           : ADC_SQR4_SQ15_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  16th conversion in regular sequence
      SQ16           : ADC_SQR4_SQ16_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_SQR4_Register use record
      SQ15           at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SQ16           at 0 range 6 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype ADC_JSQR_JL_Field is HAL.UInt2;
   subtype ADC_JSQR_JEXTSEL_Field is HAL.UInt5;
   subtype ADC_JSQR_JEXTEN_Field is HAL.UInt2;
   subtype ADC_JSQR_JSQ1_Field is HAL.UInt5;
   subtype ADC_JSQR_JSQ2_Field is HAL.UInt5;
   subtype ADC_JSQR_JSQ3_Field is HAL.UInt5;
   subtype ADC_JSQR_JSQ4_Field is HAL.UInt5;

   --  ADC injected sequence register
   type ADC_JSQR_Register is record
      --  Injected channel sequence length
      JL             : ADC_JSQR_JL_Field := 16#0#;
      --  External trigger selection for injected group
      JEXTSEL        : ADC_JSQR_JEXTSEL_Field := 16#0#;
      --  External trigger enable and polarity selection for injected channels
      JEXTEN         : ADC_JSQR_JEXTEN_Field := 16#0#;
      --  1st conversion in the injected sequence
      JSQ1           : ADC_JSQR_JSQ1_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  2nd conversion in the injected sequence
      JSQ2           : ADC_JSQR_JSQ2_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  3rd conversion in the injected sequence
      JSQ3           : ADC_JSQR_JSQ3_Field := 16#0#;
      --  unspecified
      Reserved_26_26 : HAL.Bit := 16#0#;
      --  4th conversion in the injected sequence
      JSQ4           : ADC_JSQR_JSQ4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_JSQR_Register use record
      JL             at 0 range 0 .. 1;
      JEXTSEL        at 0 range 2 .. 6;
      JEXTEN         at 0 range 7 .. 8;
      JSQ1           at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      JSQ2           at 0 range 15 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      JSQ3           at 0 range 21 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      JSQ4           at 0 range 27 .. 31;
   end record;

   subtype ADC_OFCFGR_OFFSET_CH_Field is HAL.UInt5;

   --  ADC offset 1 configuration register
   type ADC_OFCFGR_Register is record
      --  unspecified
      Reserved_0_23 : HAL.UInt24 := 16#0#;
      --  Positive offset enable
      POSOFF        : Boolean := False;
      --  Unsigned saturation enable
      USAT          : Boolean := False;
      --  Signed saturation enable
      SSAT          : Boolean := False;
      --  Channel selection for the data offset y
      OFFSET_CH     : ADC_OFCFGR_OFFSET_CH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_OFCFGR_Register use record
      Reserved_0_23 at 0 range 0 .. 23;
      POSOFF        at 0 range 24 .. 24;
      USAT          at 0 range 25 .. 25;
      SSAT          at 0 range 26 .. 26;
      OFFSET_CH     at 0 range 27 .. 31;
   end record;

   subtype ADC_OFR_OFFSET_Field is HAL.UInt22;

   --  ADC offset 1 register
   type ADC_OFR_Register is record
      --  Data offset y for the channel programmed into OFFSETy_CH[4:0] bits
      OFFSET         : ADC_OFR_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_OFR_Register use record
      OFFSET         at 0 range 0 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype ADC_GCOMP_GCOMPCOEFF_Field is HAL.UInt14;

   --  ADC gain compensation register
   type ADC_GCOMP_Register is record
      --  Gain compensation coefficient
      GCOMPCOEFF     : ADC_GCOMP_GCOMPCOEFF_Field := 16#1000#;
      --  unspecified
      Reserved_14_30 : HAL.UInt17 := 16#0#;
      --  Gain compensation mode
      GCOMP          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_GCOMP_Register use record
      GCOMPCOEFF     at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      GCOMP          at 0 range 31 .. 31;
   end record;

   subtype ADC_AWD2CR_AWD2CH_Field is HAL.UInt20;

   --  ADC Analog Watchdog 2 Configuration Register
   type ADC_AWD2CR_Register is record
      --  Analog watchdog 2 channel selection
      AWD2CH         : ADC_AWD2CR_AWD2CH_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_AWD2CR_Register use record
      AWD2CH         at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ADC_AWD3CR_AWD3CH_Field is HAL.UInt20;

   --  ADC Analog Watchdog 3 Configuration Register
   type ADC_AWD3CR_Register is record
      --  Analog watchdog 3 channel selection
      AWD3CH         : ADC_AWD3CR_AWD3CH_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_AWD3CR_Register use record
      AWD3CH         at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ADC_AWD1LTR_LTR_Field is HAL.UInt23;

   --  ADC analog watchdog 1 lower threshold register
   type ADC_AWD1LTR_Register is record
      --  Analog watchdog 1 lower threshold
      LTR            : ADC_AWD1LTR_LTR_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_AWD1LTR_Register use record
      LTR            at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype ADC_AWD1HTR_HTR_Field is HAL.UInt23;
   subtype ADC_AWD1HTR_AWDFILT_Field is HAL.UInt3;

   --  ADC analog watchdog 1 higher threshold register
   type ADC_AWD1HTR_Register is record
      --  Analog watchdog 1 higher threshold
      HTR            : ADC_AWD1HTR_HTR_Field := 16#3FFFFF#;
      --  unspecified
      Reserved_23_28 : HAL.UInt6 := 16#0#;
      --  Analog watchdog filtering parameter
      AWDFILT        : ADC_AWD1HTR_AWDFILT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_AWD1HTR_Register use record
      HTR            at 0 range 0 .. 22;
      Reserved_23_28 at 0 range 23 .. 28;
      AWDFILT        at 0 range 29 .. 31;
   end record;

   subtype ADC_AWD2LTR_LTR_Field is HAL.UInt23;

   --  ADC analog watchdog 2 lower threshold register
   type ADC_AWD2LTR_Register is record
      --  Analog watchdog 2 lower threshold
      LTR            : ADC_AWD2LTR_LTR_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_AWD2LTR_Register use record
      LTR            at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype ADC_AWD2HTR_HTR_Field is HAL.UInt23;

   --  ADC analog watchdog 2 higher threshold register
   type ADC_AWD2HTR_Register is record
      --  Analog watchdog 2 higher threshold
      HTR            : ADC_AWD2HTR_HTR_Field := 16#3FFFFF#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_AWD2HTR_Register use record
      HTR            at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype ADC_AWD3LTR_LTR_Field is HAL.UInt23;

   --  ADC analog watchdog 3 lower threshold register
   type ADC_AWD3LTR_Register is record
      --  Analog watchdog 3 lower threshold
      LTR            : ADC_AWD3LTR_LTR_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_AWD3LTR_Register use record
      LTR            at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype ADC_AWD3HTR_HTR_Field is HAL.UInt23;

   --  ADC analog watchdog 3 higher threshold register
   type ADC_AWD3HTR_Register is record
      --  Analog watchdog 3 higher threshold
      HTR            : ADC_AWD3HTR_HTR_Field := 16#3FFFFF#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_AWD3HTR_Register use record
      HTR            at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype ADC_DIFSEL_DIFSEL_Field is HAL.UInt20;

   --  ADC Differential mode selection register
   type ADC_DIFSEL_Register is record
      --  Differential mode for channels 19 to 0.
      DIFSEL         : ADC_DIFSEL_DIFSEL_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_DIFSEL_Register use record
      DIFSEL         at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ADC_CALFACT_CALFACT_S_Field is HAL.UInt9;
   subtype ADC_CALFACT_CALFACT_D_Field is HAL.UInt9;

   --  ADC calibration factors
   type ADC_CALFACT_Register is record
      --  Calibration factors In Single-ended mode
      CALFACT_S      : ADC_CALFACT_CALFACT_S_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Calibration factors in Differential mode
      CALFACT_D      : ADC_CALFACT_CALFACT_D_Field := 16#0#;
      --  unspecified
      Reserved_25_30 : HAL.UInt6 := 16#0#;
      --  Calibration additional offset
      CALADDOS       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CALFACT_Register use record
      CALFACT_S      at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      CALFACT_D      at 0 range 16 .. 24;
      Reserved_25_30 at 0 range 25 .. 30;
      CALADDOS       at 0 range 31 .. 31;
   end record;

   --  ADC option register
   type ADC_OR_Register is record
      --  Internal reference voltage selection
      SELREF        : Boolean := False;
      --  Bandgap selection
      SELBG         : Boolean := False;
      --  VDDCORE enable
      VDDCOREEN     : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_OR_Register use record
      SELREF        at 0 range 0 .. 0;
      SELBG         at 0 range 1 .. 1;
      VDDCOREEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog-to-digital converters
   type ADC_Peripheral is record
      --  ADC interrupt and status register
      ADC_ISR     : aliased ADC_ISR_Register;
      --  ADC interrupt enable register
      ADC_IER     : aliased ADC_IER_Register;
      --  ADC control register
      ADC_CR      : aliased ADC_CR_Register;
      --  ADC configuration register
      ADC_CFGR1   : aliased ADC_CFGR1_Register;
      --  ADC configuration register 2
      ADC_CFGR2   : aliased ADC_CFGR2_Register;
      --  ADC sample time register 1
      ADC_SMPR1   : aliased ADC_SMPR1_Register;
      --  ADC sample time register 2
      ADC_SMPR2   : aliased ADC_SMPR2_Register;
      --  ADC channel preselection register
      ADC_PCSEL   : aliased ADC_PCSEL_Register;
      --  ADC regular sequence register 1
      ADC_SQR1    : aliased ADC_SQR1_Register;
      --  ADC regular sequence register 2
      ADC_SQR2    : aliased ADC_SQR2_Register;
      --  ADC regular sequence register 3
      ADC_SQR3    : aliased ADC_SQR3_Register;
      --  ADC regular sequence register 4
      ADC_SQR4    : aliased ADC_SQR4_Register;
      --  ADC regular data register
      ADC_DR      : aliased HAL.UInt32;
      --  ADC injected sequence register
      ADC_JSQR    : aliased ADC_JSQR_Register;
      --  ADC offset 1 configuration register
      ADC_OFCFGR1 : aliased ADC_OFCFGR_Register;
      --  ADC offset 2 configuration register
      ADC_OFCFGR2 : aliased ADC_OFCFGR_Register;
      --  ADC offset 3 configuration register
      ADC_OFCFGR3 : aliased ADC_OFCFGR_Register;
      --  ADC offset 4 configuration register
      ADC_OFCFGR4 : aliased ADC_OFCFGR_Register;
      --  ADC offset 1 register
      ADC_OFR1    : aliased ADC_OFR_Register;
      --  ADC offset 2 register
      ADC_OFR2    : aliased ADC_OFR_Register;
      --  ADC offset 3 register
      ADC_OFR3    : aliased ADC_OFR_Register;
      --  ADC offset 4 register
      ADC_OFR4    : aliased ADC_OFR_Register;
      --  ADC gain compensation register
      ADC_GCOMP   : aliased ADC_GCOMP_Register;
      --  ADC injected channel 1 data register
      ADC_JDR1    : aliased HAL.UInt32;
      --  ADC injected channel 2 data register
      ADC_JDR2    : aliased HAL.UInt32;
      --  ADC injected channel 3 data register
      ADC_JDR3    : aliased HAL.UInt32;
      --  ADC injected channel 4 data register
      ADC_JDR4    : aliased HAL.UInt32;
      --  ADC Analog Watchdog 2 Configuration Register
      ADC_AWD2CR  : aliased ADC_AWD2CR_Register;
      --  ADC Analog Watchdog 3 Configuration Register
      ADC_AWD3CR  : aliased ADC_AWD3CR_Register;
      --  ADC analog watchdog 1 lower threshold register
      ADC_AWD1LTR : aliased ADC_AWD1LTR_Register;
      --  ADC analog watchdog 1 higher threshold register
      ADC_AWD1HTR : aliased ADC_AWD1HTR_Register;
      --  ADC analog watchdog 2 lower threshold register
      ADC_AWD2LTR : aliased ADC_AWD2LTR_Register;
      --  ADC analog watchdog 2 higher threshold register
      ADC_AWD2HTR : aliased ADC_AWD2HTR_Register;
      --  ADC analog watchdog 3 lower threshold register
      ADC_AWD3LTR : aliased ADC_AWD3LTR_Register;
      --  ADC analog watchdog 3 higher threshold register
      ADC_AWD3HTR : aliased ADC_AWD3HTR_Register;
      --  ADC Differential mode selection register
      ADC_DIFSEL  : aliased ADC_DIFSEL_Register;
      --  ADC calibration factors
      ADC_CALFACT : aliased ADC_CALFACT_Register;
      --  ADC option register
      ADC_OR      : aliased ADC_OR_Register;
   end record
     with Volatile;

   for ADC_Peripheral use record
      ADC_ISR     at 16#0# range 0 .. 31;
      ADC_IER     at 16#4# range 0 .. 31;
      ADC_CR      at 16#8# range 0 .. 31;
      ADC_CFGR1   at 16#C# range 0 .. 31;
      ADC_CFGR2   at 16#10# range 0 .. 31;
      ADC_SMPR1   at 16#14# range 0 .. 31;
      ADC_SMPR2   at 16#18# range 0 .. 31;
      ADC_PCSEL   at 16#1C# range 0 .. 31;
      ADC_SQR1    at 16#30# range 0 .. 31;
      ADC_SQR2    at 16#34# range 0 .. 31;
      ADC_SQR3    at 16#38# range 0 .. 31;
      ADC_SQR4    at 16#3C# range 0 .. 31;
      ADC_DR      at 16#40# range 0 .. 31;
      ADC_JSQR    at 16#4C# range 0 .. 31;
      ADC_OFCFGR1 at 16#50# range 0 .. 31;
      ADC_OFCFGR2 at 16#54# range 0 .. 31;
      ADC_OFCFGR3 at 16#58# range 0 .. 31;
      ADC_OFCFGR4 at 16#5C# range 0 .. 31;
      ADC_OFR1    at 16#60# range 0 .. 31;
      ADC_OFR2    at 16#64# range 0 .. 31;
      ADC_OFR3    at 16#68# range 0 .. 31;
      ADC_OFR4    at 16#6C# range 0 .. 31;
      ADC_GCOMP   at 16#70# range 0 .. 31;
      ADC_JDR1    at 16#80# range 0 .. 31;
      ADC_JDR2    at 16#84# range 0 .. 31;
      ADC_JDR3    at 16#88# range 0 .. 31;
      ADC_JDR4    at 16#8C# range 0 .. 31;
      ADC_AWD2CR  at 16#A0# range 0 .. 31;
      ADC_AWD3CR  at 16#A4# range 0 .. 31;
      ADC_AWD1LTR at 16#A8# range 0 .. 31;
      ADC_AWD1HTR at 16#AC# range 0 .. 31;
      ADC_AWD2LTR at 16#B0# range 0 .. 31;
      ADC_AWD2HTR at 16#B4# range 0 .. 31;
      ADC_AWD3LTR at 16#B8# range 0 .. 31;
      ADC_AWD3HTR at 16#BC# range 0 .. 31;
      ADC_DIFSEL  at 16#C0# range 0 .. 31;
      ADC_CALFACT at 16#C4# range 0 .. 31;
      ADC_OR      at 16#D0# range 0 .. 31;
   end record;

   --  Analog-to-digital converters
   ADC1_Periph : aliased ADC_Peripheral
     with Import, Address => ADC1_Base;

   --  Analog-to-digital converters
   ADC1_S_Periph : aliased ADC_Peripheral
     with Import, Address => ADC1_S_Base;

   --  Analog-to-digital converters
   ADC2_Periph : aliased ADC_Peripheral
     with Import, Address => ADC2_Base;

   --  Analog-to-digital converters
   ADC2_S_Periph : aliased ADC_Peripheral
     with Import, Address => ADC2_S_Base;

end STM32_SVD.ADC;
