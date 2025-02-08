--  This spec has been automatically generated from STM32MP25_CM33.svd

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
      --  ADC ready This bit is set by hardware after the ADC has been enabled
      --  (bit ADEN=1) and when the ADC reaches a state where it is ready to
      --  accept conversion requests. It is cleared by software writing 1 to
      --  it.
      ADRDY          : Boolean := False;
      --  End of sampling flag This bit is set by hardware during the
      --  conversion of any channel (only for regular channels), at the end of
      --  the sampling phase. Note: When the OVR flag is raised, the EOSMP flag
      --  is not generated correctly.
      EOSMP          : Boolean := False;
      --  End of conversion flag This bit is set by hardware at the end of each
      --  regular conversion of a channel when a new data is available in the
      --  ADC_DR register. It is cleared by software writing 1 to it or by
      --  reading the ADC_DR register
      EOC            : Boolean := False;
      --  End of regular sequence flag This bit is set by hardware at the end
      --  of the conversions of a regular sequence of channels. It is cleared
      --  by software writing 1 to it.
      EOS            : Boolean := False;
      --  ADC overrun This bit is set by hardware when an overrun occurs on a
      --  regular channel (a new conversion has completed while the EOC flag
      --  was already set) or when adc_hclk clock is too slow to manage the
      --  data. It is cleared by software writing 1 to it.
      OVR            : Boolean := False;
      --  Injected channel end of conversion flag This bit is set by hardware
      --  at the end of each injected conversion of a channel when a new data
      --  is available in the corresponding ADC_JDRy register. It is cleared by
      --  software writing 1 to it, or by reading the corresponding ADC_JDRy
      --  register
      JEOC           : Boolean := False;
      --  Injected channel end of sequence flag This bit is set by hardware at
      --  the end of the conversions of all injected channels in the group. It
      --  is cleared by software writing 1 to it.
      JEOS           : Boolean := False;
      --  Analog watchdog 1 flag This bit is set by hardware when the converted
      --  voltage crosses the values programmed in the fields LTR[22:0] and
      --  HTR[22:0] of ADC_AWD1LTR and ADC_AWD1HTR registers. It is cleared by
      --  software. writing 1 to it.
      AWD            : ADC_ISR_AWD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
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
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  ADC interrupt enable register
   type ADC_IER_Register is record
      --  ADC ready interrupt enable This bit is set and cleared by software to
      --  enable/disable the ADC Ready interrupt. Note: The software is allowed
      --  to write this bit only when ADSTART=0 and JADSTART=0 (which ensures
      --  that no conversion is ongoing).
      ADRDYIE        : Boolean := False;
      --  End of sampling flag interrupt enable for regular conversions This
      --  bit is set and cleared by software to enable/disable the end of the
      --  sampling phase interrupt for regular conversions. Note: The software
      --  is allowed to write this bit only when ADSTART=0 (which ensures that
      --  no regular conversion is ongoing).
      EOSMPIE        : Boolean := False;
      --  End of regular conversion interrupt enable This bit is set and
      --  cleared by software to enable/disable the end of a regular conversion
      --  interrupt. Note: The software is allowed to write this bit only when
      --  ADSTART=0 (which ensures that no regular conversion is ongoing).
      EOCIE          : Boolean := False;
      --  End of regular sequence of conversions interrupt enable This bit is
      --  set and cleared by software to enable/disable the end of regular
      --  sequence of conversions interrupt. Note: The software is allowed to
      --  write this bit only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
      EOSIE          : Boolean := False;
      --  Overrun interrupt enable This bit is set and cleared by software to
      --  enable/disable the Overrun interrupt of a regular conversion. Note:
      --  The software is allowed to write this bit only when ADSTART=0 (which
      --  ensures that no regular conversion is ongoing).
      OVRIE          : Boolean := False;
      --  End of injected conversion interrupt enable This bit is set and
      --  cleared by software to enable/disable the end of an injected
      --  conversion interrupt. Note: The software is allowed to write this bit
      --  only when JADSTART=0 (which ensures that no injected conversion is
      --  ongoing).
      JEOCIE         : Boolean := False;
      --  End of injected sequence of conversions interrupt enable This bit is
      --  set and cleared by software to enable/disable the end of injected
      --  sequence of conversions interrupt. Note: The software is allowed to
      --  write this bit only when JADSTART=0 (which ensures that no injected
      --  conversion is ongoing).
      JEOSIE         : Boolean := False;
      --  Analog watchdog 1 interrupt enable This bit is set and cleared by
      --  software to enable/disable the analog watchdog 1 interrupt. Note: The
      --  software is allowed to write this bit only when ADSTART=0 and
      --  JADSTART=0 (which ensures that no conversion is ongoing).
      AWD1IE         : Boolean := False;
      --  Analog watchdog 2 interrupt enable This bit is set and cleared by
      --  software to enable/disable the analog watchdog 2 interrupt. Note: The
      --  software is allowed to write this bit only when ADSTART=0 and
      --  JADSTART=0 (which ensures that no conversion is ongoing).
      AWD2IE         : Boolean := False;
      --  Analog watchdog 3 interrupt enable This bit is set and cleared by
      --  software to enable/disable the analog watchdog 2 interrupt. Note: The
      --  software is allowed to write this bit only when ADSTART=0 and
      --  JADSTART=0 (which ensures that no conversion is ongoing).
      AWD3IE         : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
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
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  ADC control register
   type ADC_CR_Register is record
      --  ADC enable control This bit is set by software to enable the ADC. The
      --  ADC is effectively ready to operate once the ADRDY flag has been set.
      --  It is cleared by hardware when the ADC is disabled, after the
      --  execution of the ADDIS command. Note: The software is allowed to set
      --  ADEN only when all the bits of ADC_CR registers are cleared (ADCAL=0,
      --  JADSTART=0, ADSTART=0, ADSTP=0, ADDIS=0 and ADEN=0).
      ADEN          : Boolean := False;
      --  ADC disable command This bit is set by software to disable the ADC
      --  (ADDIS command) and place it into power-down state (OFF state). It is
      --  cleared by hardware once the ADC is effectively disabled (ADEN is
      --  also cleared by hardware at this time). Note: The software is allowed
      --  to set ADDIS only when ADEN=1, ADDIS=0 and both ADSTART=0 and
      --  JADSTART=0 (which ensures that no conversion is ongoing).
      ADDIS         : Boolean := False;
      --  ADC start of regular conversion This bit is set by software to start
      --  ADC conversion of regular channels. Depending on the configuration
      --  bits EXTEN[1:0], a conversion starts immediately (software trigger
      --  configuration) or once a regular hardware trigger event occurs
      --  (hardware trigger configuration). This bit is cleared by hardware: in
      --  single conversion mode when software trigger is selected (EXTSEL=0x0
      --  and DISEN=1): at the assertion of the end of regular conversion
      --  sequence (EOS) flag. in all cases: after the execution of the ADSTP
      --  command, at the same time that ADSTP is cleared by hardware. Note:
      --  The software is allowed to set ADSTART only when ADEN=1 and ADDIS=0
      --  (ADC is enabled and there is no pending request to disable the ADC).
      --  Note: In auto-injection mode (JAUTO=1), regular and auto-injected
      --  conversions are started by setting ADSTART bit (JADSTART must be kept
      --  cleared)
      ADSTART       : Boolean := False;
      --  ADC start of injected conversion This bit is set by software to start
      --  ADC conversion of injected channels. Depending on the configuration
      --  bits JEXTEN[1:0], a conversion starts immediately (software trigger
      --  configuration) or once an injected hardware trigger event occurs
      --  (hardware trigger configuration). This bit is cleared by hardware: In
      --  single conversion mode when software trigger is selected (JEXTSEL=0x0
      --  and JDISEN=1): at the assertion of the end of injected conversion
      --  sequence (JEOS) flag. In all cases: after the execution of the JADSTP
      --  command, at the same time that JADSTP is cleared by hardware. Note:
      --  The software is allowed to set JADSTART only when ADEN=1,ADDIS=0 and
      --  JAUTO= 0 (ADC is enabled and there is no pending request to disable
      --  the ADC). Note: In auto-injection mode (JAUTO=1), regular and
      --  auto-injected conversions are started by setting ADSTART bit
      --  (JADSTART must be kept cleared).
      JADSTART      : Boolean := False;
      --  ADC stop of regular conversion command This bit is set by software to
      --  stop and discard an ongoing regular conversion (ADSTP Command). It is
      --  cleared by hardware when the conversion is effectively discarded. and
      --  the ADC regular sequence and triggers can be re-configured. The ADC
      --  is then ready to accept a new start of regular conversions (ADSTART
      --  command). When a software trigger is used, ADSTART bit is cleared by
      --  hardware. However it is necessary to write ADSTP bit to reconfigure
      --  the ADC. Note: In auto-injection mode (JAUTO=1), setting ADSTP bit
      --  aborts both regular and injected conversions (do not use ADSTP).
      ADSTP         : Boolean := False;
      --  ADC stop of injected conversion command This bit is set by software
      --  to stop and discard an ongoing injected conversion (JADSTP command).
      --  It is cleared by hardware when the conversion is effectively
      --  discarded and the ADC injected sequence and triggers can be
      --  reconfigured. The ADC is then ready to accept a new start of injected
      --  conversions (JADSTART command). When a software trigger is used,
      --  JADSTART bit is cleared by hardware, but JADSTP bit must be
      --  programmed to reconfigure the ADC. Note: In auto-injection mode
      --  (JAUTO=1), setting ADSTP bit aborts both regular and injected
      --  conversions (do not use JADSTP).
      JADSTP        : Boolean := False;
      --  unspecified
      Reserved_6_28 : HAL.UInt23 := 16#0#;
      --  Deep-power-down enable This bit is set and cleared by software to put
      --  the ADC in Deep-power-down mode. Note: The software is allowed to
      --  write this bit only when the ADC is disabled (ADCAL=0 and ADEN=0).
      DEEPPWD       : Boolean := True;
      --  Differential mode for calibration This bit is set and cleared by
      --  software to configure the single-ended or differential input mode for
      --  the calibration. Note: The software is allowed to write this bit only
      --  when the ADC is disabled and is not calibrating (ADCAL=0, JADSTART=0,
      --  JADSTP=0, ADSTART=0, ADSTP=0, ADDIS=0 and ADEN=0).
      ADCALDIF      : Boolean := False;
      --  ADC calibration This bit is set by software to enter ADC Calibration
      --  mode. Note: The software is allowed to update the calibration factor
      --  by writing ADC_CALFACT only when ADEN=1, ADCAL=1, ADSTART=0 and
      --  JADSTART=0 (ADC enabled, Calibration mode enabled and no conversion
      --  ongoing).
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
      --  Data management configuration These bits are set and cleared by
      --  software to select how the ADC interface output data are managed.
      --  Note: The software is allowed to write these bits only when ADSTART=0
      --  and JADSTART=0 (which ensures that no conversion is ongoing).
      DMNGT          : ADC_CFGR1_DMNGT_Field := 16#0#;
      --  Data resolution These bits are written by software to select the
      --  resolution of the conversion. Note: The software is allowed to write
      --  these bits only when ADSTART=0 and JADSTART=0 (which ensures that no
      --  conversion is ongoing).
      RES            : ADC_CFGR1_RES_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  External trigger selection for regular group These bits select the
      --  external event used to trigger the start of conversion of a regular
      --  group: ... Note: The software is allowed to write these bits only
      --  when ADSTART=0 (which ensures that no regular conversion is ongoing).
      EXTSEL         : ADC_CFGR1_EXTSEL_Field := 16#0#;
      --  External trigger enable and polarity selection for regular channels
      --  These bits are set and cleared by software to select the external
      --  trigger polarity and enable the trigger of a regular group. Note: The
      --  software is allowed to write these bits only when ADSTART=0 (which
      --  ensures that no regular conversion is ongoing).
      EXTEN          : ADC_CFGR1_EXTEN_Field := 16#0#;
      --  Overrun mode This bit is set and cleared by software and configure
      --  the way data overrun is managed. Note: The software is allowed to
      --  write this bit only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
      OVRMOD         : Boolean := False;
      --  Single / continuous conversion mode for regular conversions This bit
      --  is set and cleared by software. If it is set, regular conversion
      --  takes place continuously until it is cleared. Note: It is not
      --  possible to have both discontinuous mode and continuous mode enabled:
      --  DISCEN and CONT cannot both be set (DISCEN takes priority). Note: The
      --  software is allowed to write this bit only when ADSTART=0 (which
      --  ensures that no regular conversion is ongoing).
      CONT           : Boolean := False;
      --  Delayed conversion mode This bit is set and cleared by software to
      --  enable/disable the auto-delayed conversion mode.sup./sup Note: The
      --  software is allowed to write this bit only when ADSTART=0 and
      --  JADSTART=0 (which ensures that no conversion is ongoing).
      AUTDLY         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Discontinuous mode for regular channels This bit is set and cleared
      --  by software to enable/disable discontinuous mode for regular
      --  channels. Note: It is not possible to have both discontinuous mode
      --  and continuous mode enabled: DISCEN and CONT cannot both be set
      --  (DISCEN takes priority). Note: It is not possible to use
      --  auto-injection mode and discontinuous mode simultaneously: the DISCEN
      --  and JDISCEN bits must be kept cleared by software when JAUTO is set.
      --  Note: The software is allowed to write this bit only when ADSTART=0
      --  (which ensures that no regular conversion is ongoing).
      DISCEN         : Boolean := False;
      --  Discontinuous mode channel count These bits are written by software
      --  to define the number of regular channels to be converted in
      --  discontinuous mode, after receiving an external trigger. ... Note:
      --  The software is allowed to write these bits only when ADSTART=0
      --  (which ensures that no regular conversion is ongoing).
      DISCNUM        : ADC_CFGR1_DISCNUM_Field := 16#0#;
      --  Discontinuous mode on injected channels This bit is set and cleared
      --  by software to enable/disable discontinuous mode on the injected
      --  channels of a group. Note: The software is allowed to write this bit
      --  only when JADSTART=0 (which ensures that no injected conversion is
      --  ongoing). Note: It is not possible to use auto-injection mode and
      --  discontinuous mode simultaneously: the DISCEN and JDISCEN bits must
      --  be kept cleared by software when JAUTO is set.
      JDISCEN        : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  Enable the watchdog 1 on a single channel or on all channels This bit
      --  is set and cleared by software to enable the analog watchdog on the
      --  channel identified by the AWD1CH[4:0] bits or on all the channels
      --  Note: The software is allowed to write these bits only when ADSTART=0
      --  and JADSTART=0 (which ensures that no conversion is ongoing).
      AWD1SGL        : Boolean := False;
      --  Analog watchdog 1 enable on regular channels This bit is set and
      --  cleared by software Note: The software is allowed to write this bit
      --  only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      AWD1EN         : Boolean := False;
      --  Analog watchdog 1 enable on injected channels This bit is set and
      --  cleared by software Note: The software is allowed to write this bit
      --  only when JADSTART=0 (which ensures that no injected conversion is
      --  ongoing).
      JAWD1EN        : Boolean := False;
      --  Automatic injected group conversion This bit is set and cleared by
      --  software to enable/disable automatic injected group conversion after
      --  regular group conversion. Note: The software is allowed to write this
      --  bit only when ADSTART=0 and JADSTART=0 (which ensures that no regular
      --  nor injected conversion is ongoing).
      JAUTO          : Boolean := False;
      --  Analog watchdog 1 channel selection These bits are set and cleared by
      --  software. They select the input channel to be guarded by the analog
      --  watchdog. ..... others: reserved, must not be used Note: Some
      --  channels are not connected physically. Keep the corresponding
      --  AWD1CH[4:0] setting to the reset value. Note: The channel selected by
      --  AWD1CH must be also selected into the SQRi or JSQRi registers. Note:
      --  The software is allowed to write these bits only when ADSTART=0 and
      --  JADSTART=0 (which ensures that no conversion is ongoing).
      AWD1CH         : ADC_CFGR1_AWD1CH_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
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
      Reserved_21_21 at 0 range 21 .. 21;
      AWD1SGL        at 0 range 22 .. 22;
      AWD1EN         at 0 range 23 .. 23;
      JAWD1EN        at 0 range 24 .. 24;
      JAUTO          at 0 range 25 .. 25;
      AWD1CH         at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ADC_CFGR2_OVSS_Field is HAL.UInt4;
   subtype ADC_CFGR2_OVSR_Field is HAL.UInt10;
   subtype ADC_CFGR2_LSHIFT_Field is HAL.UInt4;

   --  ADC configuration register 2
   type ADC_CFGR2_Register is record
      --  Regular oversampling enable This bit is set and cleared by software
      --  to enable regular oversampling. Note: The software is allowed to
      --  write this bit only when ADSTART=0 (which ensures that no conversion
      --  is ongoing)
      ROVSE          : Boolean := False;
      --  Injected oversampling enable This bit is set and cleared by software
      --  to enable injected oversampling. Note: The software is allowed to
      --  write this bit only when JADSTART=0 (which ensures that no conversion
      --  is ongoing)
      JOVSE          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  Oversampling shift This bit field is set and cleared by software to
      --  define the right shifting applied to the raw oversampling result.
      --  Other: reserved, must not be used Note: The software is allowed to
      --  write this bit only when ADSTART=0 and JADSTART=0 (which ensures that
      --  no conversion is ongoing).
      OVSS           : ADC_CFGR2_OVSS_Field := 16#0#;
      --  Triggered regular oversampling This bit is set and cleared by
      --  software to enable triggered oversampling Note: The software is
      --  allowed to write this bit only when ADSTART=0 and JADSTART=0 (which
      --  ensures that no conversion is ongoing).
      TROVS          : Boolean := False;
      --  Regular oversampling mode This bit is set and cleared by software to
      --  select the regular oversampling mode. Note: The software is allowed
      --  to write this bit only when ADSTART=0 and JADSTART=0 (which ensures
      --  that no conversion is ongoing). It is recommended to clear both JOVSE
      --  and GCOMP when ROVSM=0.
      ROVSM          : Boolean := False;
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  Bulb sampling mode This bit is set and cleared by software to enable
      --  the bulb sampling mode. BULB bit must not be set when the SWTRIG bit
      --  is set. The very first ADC conversion is performed with the sampling
      --  time specified in SMPx bits. Note: The software is allowed to write
      --  this bit only when ADSTART=0 and JADSTART=0 (which ensures that no
      --  conversion is ongoing). When the discontinuous mode is used, only
      --  DISCNUM[2:0]=000 configuration is compatible with bulb mode.
      BULB           : Boolean := False;
      --  Software trigger bit for sampling time control trigger mode This bit
      --  is set and cleared by software to trigger the conversion in sampling
      --  time control trigger mode. Note: The software is allowed to write
      --  this bit only when ADSTART=0, JADSTART=0 (which ensures that no
      --  conversion is ongoing), SMPTRIG=1, and EXTEN[0:1]=00.
      SWTRIG         : Boolean := False;
      --  Sampling time control trigger mode This bit is set and cleared by
      --  software to enable the sampling time control trigger mode. If
      --  EXTEN[1:0] bits are set to 01, the sampling time starts on the
      --  trigger rising edge, and the conversion starts on the trigger falling
      --  edge. The SMPTRIG bit must not be set when the SMPTRIG bit is set.
      --  When EXTEN[1:0] bits are set to 00, set SWTRIG to start the sampling
      --  and clear the BULB bit to start the conversion. Note: The software is
      --  allowed to write this bit only when ADSTART=0 and JADSTART=0 (which
      --  ensures that no conversion is ongoing). When the discontinuous mode
      --  is used, only DISCNUM[2:0]=000 configuration is compatible with
      --  sampling time control trigger mode.
      SMPTRIG        : Boolean := False;
      --  Oversampling ratio This bit field is set and cleared by software to
      --  define the oversampling ratio. ... Note: The software is allowed to
      --  write this bit only when ADSTART=0 and JADSTART=0 (which ensures that
      --  no conversion is ongoing).
      OVSR           : ADC_CFGR2_OVSR_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Left shift factor This bit field is set and cleared by software to
      --  define the left shifting applied to the final result with or without
      --  oversampling. Note: The software is allowed to write this bit only
      --  when ADSTART=0 and JADSTART=0 (which ensures that no conversion is
      --  ongoing).
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
      OVSR           at 0 range 16 .. 25;
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
      --  Channel x sampling time selection (x=9 to 0) These bits are written
      --  by software to select the sampling time individually for each
      --  channel. During sample cycles, the channel selection bits must remain
      --  unchanged. Note: The software is allowed to write these bits only
      --  when ADSTART=0 and JADSTART=0 (which ensures that no conversion is
      --  ongoing). Note: Some channels are not connected physically. Keep the
      --  corresponding SMPx[2:0] setting to the reset value.
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
      --  Channel x sampling time selection (x=19 to 10) These bits are written
      --  by software to select the sampling time individually for each
      --  channel. During sampling cycles, the channel selection bits must
      --  remain unchanged. Note: The software is allowed to write these bits
      --  only when ADSTART=0 and JADSTART=0 (which ensures that no conversion
      --  is ongoing). Note: Some channels are not connected physically. Keep
      --  the corresponding SMPx[2:0] setting to the reset value.
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
      --  Channel i (VsubINP/sub[i]) preselection These bits are written by
      --  software to preselect the input channel I/O to be converted. Note:
      --  The software is allowed to write these bits only when ADSTART=0 and
      --  JADSTART=0 (which ensures that no conversion is ongoing).
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
      --  Regular channel sequence length These bits are written by software to
      --  define the total number of conversions in the regular channel
      --  conversion sequence. ... Note: The software is allowed to write these
      --  bits only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      L              : ADC_SQR1_L_Field := 16#0#;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  1st conversion in regular sequence These bits are written by software
      --  with the channel number (0 to 19) assigned as the 1st in the regular
      --  conversion sequence. Note: The software is allowed to write these
      --  bits only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      SQ1            : ADC_SQR1_SQ1_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  2nd conversion in regular sequence These bits are written by software
      --  with the channel number (0 to 19) assigned as the 2nd in the regular
      --  conversion sequence. Note: The software is allowed to write these
      --  bits only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      SQ2            : ADC_SQR1_SQ2_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  3rd conversion in regular sequence These bits are written by software
      --  with the channel number (0 to 19) assigned as the 3rd in the regular
      --  conversion sequence. Note: The software is allowed to write these
      --  bits only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      SQ3            : ADC_SQR1_SQ3_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  4th conversion in regular sequence These bits are written by software
      --  with the channel number (0 to 19) assigned as the 4th in the regular
      --  conversion sequence. Note: The software is allowed to write these
      --  bits only when ADSTART = 0 (which ensures that no regular conversion
      --  is ongoing).
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
      --  5th conversion in regular sequence These bits are written by software
      --  with the channel number (0 to 19) assigned as the 5th in the regular
      --  conversion sequence. Note: The software is allowed to write these
      --  bits only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      SQ5            : ADC_SQR2_SQ5_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  6th conversion in regular sequence These bits are written by software
      --  with the channel number (0 to 19) assigned as the 6th in the regular
      --  conversion sequence. Note: The software is allowed to write these
      --  bits only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      SQ6            : ADC_SQR2_SQ6_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  7th conversion in regular sequence These bits are written by software
      --  with the channel number (0 to 19) assigned as the 7th in the regular
      --  conversion sequence. Note: The software is allowed to write these
      --  bits only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      SQ7            : ADC_SQR2_SQ7_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  8th conversion in regular sequence These bits are written by software
      --  with the channel number (0 to 19) assigned as the 8th in the regular
      --  conversion sequence Note: The software is allowed to write these bits
      --  only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
      SQ8            : ADC_SQR2_SQ8_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  9th conversion in regular sequence These bits are written by software
      --  with the channel number (0 to 19) assigned as the 9th in the regular
      --  conversion sequence. Note: The software is allowed to write these
      --  bits only when ADSTART=0 (which ensures that no regular conversion is
      --  ongoing).
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
      --  10th conversion in regular sequence These bits are written by
      --  software with the channel number (0 to 19) assigned as the 10th in
      --  the regular conversion sequence. Note: The software is allowed to
      --  write these bits only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
      SQ10           : ADC_SQR3_SQ10_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  11th conversion in regular sequence These bits are written by
      --  software with the channel number (0 to 19) assigned as the 11th in
      --  the regular conversion sequence. Note: The software is allowed to
      --  write these bits only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
      SQ11           : ADC_SQR3_SQ11_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  12th conversion in regular sequence These bits are written by
      --  software with the channel number (0 to 19) assigned as the 12th in
      --  the regular conversion sequence. Note: The software is allowed to
      --  write these bits only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
      SQ12           : ADC_SQR3_SQ12_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  13th conversion in regular sequence These bits are written by
      --  software with the channel number (0 to 19) assigned as the 13th in
      --  the regular conversion sequence. Note: The software is allowed to
      --  write these bits only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
      SQ13           : ADC_SQR3_SQ13_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  14th conversion in regular sequence These bits are written by
      --  software with the channel number (0 to 19) assigned as the 14th in
      --  the regular conversion sequence. Note: The software is allowed to
      --  write these bits only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
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
      --  15th conversion in regular sequence These bits are written by
      --  software with the channel number (0 to 19) assigned as the 15th in
      --  the regular conversion sequence. Note: The software is allowed to
      --  write these bits only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
      SQ15           : ADC_SQR4_SQ15_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  16th conversion in regular sequence These bits are written by
      --  software with the channel number (0 to 19) assigned as the 16th in
      --  the regular conversion sequence. Note: The software is allowed to
      --  write these bits only when ADSTART=0 (which ensures that no regular
      --  conversion is ongoing).
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
      --  Injected channel sequence length These bits are written by software
      --  to define the total number of conversions in the injected channel
      --  conversion sequence. Note: The software is allowed to write these
      --  bits only when JADSTART=0 (which ensures that no injected conversion
      --  is ongoing).
      JL             : ADC_JSQR_JL_Field := 16#0#;
      --  External trigger selection for injected group These bits select the
      --  external event used to trigger the start of conversion of an injected
      --  group: ... Note: The software is allowed to write these bits only
      --  when JADSTART=0 (which ensures that no injected conversion is
      --  ongoing).
      JEXTSEL        : ADC_JSQR_JEXTSEL_Field := 16#0#;
      --  External trigger enable and polarity selection for injected channels
      --  These bits are set and cleared by software to select the external
      --  trigger polarity and enable the trigger of an injected group. Note:
      --  The software is allowed to write these bits only when JADSTART=0
      --  (which ensures that no injected conversion is ongoing).
      JEXTEN         : ADC_JSQR_JEXTEN_Field := 16#0#;
      --  1st conversion in the injected sequence These bits are written by
      --  software with the channel number (0 to 19) assigned as the 1st in the
      --  injected conversion sequence. Note: The software is allowed to write
      --  these bits only when JADSTART=0 (which ensures that no injected
      --  conversion is ongoing).
      JSQ1           : ADC_JSQR_JSQ1_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  2nd conversion in the injected sequence These bits are written by
      --  software with the channel number (0 to 19) assigned as the 2nd in the
      --  injected conversion sequence. Note: The software is allowed to write
      --  these bits only when JADSTART=0 (which ensures that no injected
      --  conversion is ongoing).
      JSQ2           : ADC_JSQR_JSQ2_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  3rd conversion in the injected sequence These bits are written by
      --  software with the channel number (0 to 19) assigned as the 3rd in the
      --  injected conversion sequence. Note: The software is allowed to write
      --  these bits only when JADSTART=0 (which ensures that no injected
      --  conversion is ongoing).
      JSQ3           : ADC_JSQR_JSQ3_Field := 16#0#;
      --  unspecified
      Reserved_26_26 : HAL.Bit := 16#0#;
      --  4th conversion in the injected sequence These bits are written by
      --  software with the channel number (0 to 19) assigned as the 4th in the
      --  injected conversion sequence. Note: The software is allowed to write
      --  these bits only when JADSTART=0 (which ensures that no injected
      --  conversion is ongoing).
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
      --  Positive offset enable This bit is set and cleared by software to
      --  enable the positive offset Note: The software is allowed to write
      --  these bits only when ADSTART=0 and JADSTART=0 (which ensures that no
      --  conversion is ongoing).
      POSOFF        : Boolean := False;
      --  Unsigned saturation enable This bit is set and cleared by software to
      --  enable the unsigned saturation feature. Note: The software is allowed
      --  to write these bits only when ADSTART= and JADSTART=0 (which ensures
      --  that no conversion is ongoing).
      USAT          : Boolean := False;
      --  Signed saturation enable This bit is set and cleared by software to
      --  enable the signed saturation feature.(see Section: Data register,
      --  data alignment and offset (ADC_DR, ADC_JDRy, OFFSETy, OFFSETy_CH,
      --  OVSS, LSHIFT, USAT, SSAT, POSOFF)). Note: The software is allowed to
      --  write these bits only when ADSTART=0 and JADSTART=0 (which ensures
      --  that no conversion is ongoing).
      SSAT          : Boolean := False;
      --  Channel selection for the data offset y These bits are written by
      --  software to define the channel to which the offset programmed in bits
      --  OFFSET[21:0] applies. Note: The software is allowed to write these
      --  bits only when ADSTART=0 and JADSTART=0 (which ensures that no
      --  conversion is ongoing). Note: Some channels are not connected
      --  physically and must not be selected for the data offset y.
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
      --  Data offset y for the channel programmed in OFFSETy_CH[4:0] bits
      --  These bits are written by software to define the offset y to be
      --  subtracted from the raw converted data when converting a channel (can
      --  be regular or injected). The channel to which applies the data offset
      --  y must be programmed in the OFFSETy_CH[4:0] bits. The conversion
      --  result can be read from in the ADC_DR (regular conversion) or from in
      --  the ADC_JDRyi registers (injected conversion). Note: The software is
      --  allowed to write these bits only when ADSTART=0 and JADSTART=0 (which
      --  ensures that no conversion is ongoing).
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
      --  Gain compensation coefficient These bits are set and cleared by
      --  software to program the gain compensation coefficient. ... ... The
      --  coefficient is divided by 4096 to get the gain factor ranging from 0
      --  to 3.9999756 Note: This gain compensation is only applied when GCOMP
      --  bit is set. Note: The software is allowed to write this bit only when
      --  ADSTART =0 and JADSTART=0 (which ensure that no conversion is
      --  ongoing).
      GCOMPCOEFF     : ADC_GCOMP_GCOMPCOEFF_Field := 16#1000#;
      --  unspecified
      Reserved_14_30 : HAL.UInt17 := 16#0#;
      --  Gain compensation mode This bit is set and cleared by software to
      --  enable the Gain compensation mode. Note: The software is allowed to
      --  write this bit only when ADSTART=0 and JADSTART=0 (which ensure that
      --  no conversion is ongoing)
      GCOMP          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_GCOMP_Register use record
      GCOMPCOEFF     at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      GCOMP          at 0 range 31 .. 31;
   end record;

   subtype ADC_AWD2CR_AWDCH_Field is HAL.UInt20;

   --  ADC Analog Watchdog 2 Configuration Register
   type ADC_AWD2CR_Register is record
      --  Analog watchdog 2 channel selection These bits are set and cleared by
      --  software. They enable and select the input channels to be guarded by
      --  the analog watchdog 2. AWDCH[i] = 0: ADC analog input channel i is
      --  not monitored by AWD2 AWDCH[i] = 1: ADC analog input channel i is
      --  monitored by AWD2 When AWDCH[19:0] = 000..0, the analog Watchdog 2 is
      --  disabled Note: The channels selected by AWDCH must be also selected
      --  in the SQRi or JSQRi registers. Note: The software is allowed to
      --  write these bits only when ADSTART=0 and JADSTART=0 (which ensures
      --  that no conversion is ongoing). Note: Some channels are not connected
      --  physically and must not be selected for the analog watchdog.
      AWDCH          : ADC_AWD2CR_AWDCH_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_AWD2CR_Register use record
      AWDCH          at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ADC_AWD3CR_AWDCH_Field is HAL.UInt20;

   --  ADC Analog Watchdog 3 Configuration Register
   type ADC_AWD3CR_Register is record
      --  Analog watchdog 3 channel selection These bits are set and cleared by
      --  software. They enable and select the input channels to be guarded by
      --  the analog watchdog 3. AWDCH[i] = 0: ADC analog input channel i is
      --  not monitored by AWD3 AWDCH[i] = 1: ADC analog input channel i is
      --  monitored by AWD3 When AWDCH[19:0] = 000..0, the analog Watchdog 3 is
      --  disabled Note: The channels selected by AWDCH must be also selected
      --  in the SQRi or JSQRi registers. Note: The software is allowed to
      --  write these bits only when ADSTART=0 and JADSTART=0 (which ensures
      --  that no conversion is ongoing). Note: Some channels are not connected
      --  physically and must not be selected for the analog watchdog.
      AWDCH          : ADC_AWD3CR_AWDCH_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_AWD3CR_Register use record
      AWDCH          at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ADC_AWD1LTR_LTR_Field is HAL.UInt23;

   --  ADC analog watchdog 1 lower threshold register
   type ADC_AWD1LTR_Register is record
      --  Analog watchdog 1 lower threshold These bits are set and cleared by
      --  software to define the lower threshold for analog watchdog 1. Refer
      --  to Section41.4.29: Analog window watchdog (AWD1EN, JAWD1EN, AWD1SGL,
      --  AWD1CH, AWDCH of ADC_AWD2CR and ADC_AWD3CR, HTR, LTR, AWDFILT).
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
      --  Analog watchdog 1 higher threshold These bits are set and cleared by
      --  software to define the higher threshold for analog watchdog 1. Refer
      --  to Analog windows watchdog section.
      HTR            : ADC_AWD1HTR_HTR_Field := 16#3FFFFF#;
      --  unspecified
      Reserved_23_28 : HAL.UInt6 := 16#0#;
      --  Analog watchdog filtering parameter These bits are set and cleared by
      --  software. ...
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
      --  Analog watchdog 2 lower threshold These bits are set and cleared by
      --  software to define the lower threshold for analog watchdog 2. Refer
      --  to Analog windows watchdog section.
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
      --  Analog watchdog 2 higher threshold These bits are set and cleared by
      --  software to define the higher threshold for analog watchdog 2. Refer
      --  to Analog windows watchdog section.
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
      --  Analog watchdog 3 lower threshold These bits are set and cleared by
      --  software to define the lower threshold for analog watchdog 3. Refer
      --  to Analog windows watchdog section.
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
      --  Analog watchdog 3 higher threshold These bits are set and cleared by
      --  software to define the higher threshold for analog watchdog 3. Refer
      --  to Analog windows watchdog section.
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

   --  ADC differential mode selection register
   type ADC_DIFSEL_Register is record
      --  Differential mode for channels 19 to 0. These bits are set and
      --  cleared by software. They allow to select if a channel is configured
      --  as single-ended or differential mode. DIFSEL[i] = 0: ADC analog input
      --  channel is configured in single-ended mode DIFSEL[i] = 1: ADC analog
      --  input channel i is configured in differential mode Note: The DIFSEL
      --  bits corresponding to channels that are either connected to a
      --  single-ended I/O port or to an internal channel must be kept their
      --  reset value (single-ended input mode). Note: The software is allowed
      --  to write these bits only when ADSTART=0 and JADSTART=0 (which ensures
      --  that no conversion is ongoing).
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
      --  Calibration factors In single-ended mode These bits are written by
      --  hardware or by software. Once a single-ended input calibration is
      --  complete, they are updated by hardware with the calibration factors.
      --  The software can write these bits with a new calibration factor. If
      --  the new calibration factor is different from the current one stored
      --  in the analog ADC, it is applied once a new single-ended conversion
      --  is launched. Note: The software is allowed to write these bits only
      --  when ADEN=1, ADCAL=1, ADSTART=0 and JADSTART=0 (ADC is enabled, no
      --  calibration is ongoing and no conversion is ongoing). Note: This bit
      --  can only be cleared by a power-on reset.
      CALFACT_S      : ADC_CALFACT_CALFACT_S_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Calibration factors in differential mode These bits are written by
      --  hardware or by software. Once a differential input calibration is
      --  complete, they are updated by hardware with the calibration factors.
      --  The software can write these bits with a new calibration factor. If
      --  the new calibration factor is different from the current one stored
      --  in the analog ADC, it is applied once a new differential conversion
      --  is launched. Note: The software is allowed to write these bits only
      --  when ADEN=1, ADCAL=1, ADSTART=0 and JADSTART=0 (ADC is enabled, no
      --  calibration is ongoing and no conversion is ongoing).
      CALFACT_D      : ADC_CALFACT_CALFACT_D_Field := 16#0#;
      --  unspecified
      Reserved_25_30 : HAL.UInt6 := 16#0#;
      --  Calibration additional offset This bit is set by software to add a
      --  positive offset at the input stage of ADC for calibration purpose.
      --  Note: The software is allowed to write these bits only when ADEN=1,
      --  ADCAL=1, ADSTART=0, and JADSTART=0 (ADC is enabled, no calibration is
      --  ongoing and no conversion is ongoing).
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

   --  ADC_OR_OP array
   type ADC_OR_OP_Field_Array is array (0 .. 4) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for ADC_OR_OP
   type ADC_OR_OP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OP as a value
            Val : HAL.UInt5;
         when True =>
            --  OP as an array
            Arr : ADC_OR_OP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for ADC_OR_OP_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  ADC option register
   type ADC_OR_Register is record
      --  Option bit 0 This bit is set and cleared by software to enable the
      --  internal reference buffer. The software is allowed to write this bit
      --  only when ADC is disabled.
      OP            : ADC_OR_OP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_OR_Register use record
      OP            at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ADC register block
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
      --  ADC differential mode selection register
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

   --  ADC register block
   ADC_Periph : aliased ADC_Peripheral
     with Import, Address => ADC_Base;

   --  ADC register block
   ADC12_Common_S_Periph : aliased ADC_Peripheral
     with Import, Address => ADC12_Common_S_Base;

   --  ADC register block
   ADC1_S_Periph : aliased ADC_Peripheral
     with Import, Address => ADC1_S_Base;

   --  ADC register block
   ADC2_Periph : aliased ADC_Peripheral
     with Import, Address => ADC2_Base;

   --  ADC register block
   ADC2_S_Periph : aliased ADC_Peripheral
     with Import, Address => ADC2_S_Base;

end STM32_SVD.ADC;
