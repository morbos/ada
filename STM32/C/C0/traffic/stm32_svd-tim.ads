--  This spec has been automatically generated from STM32C011.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.TIM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype TIM1_CR1_CMS_Field is HAL.UInt2;
   subtype TIM1_CR1_CKD_Field is HAL.UInt2;

   --  TIM1 control register 1
   type TIM1_CR1_Register is record
      --  Counter enable Note: External clock, gated mode and encoder mode can
      --  work only if the CEN bit has been previously set by software. However
      --  trigger mode can set the CEN bit automatically by hardware.
      CEN            : Boolean := False;
      --  Update disable This bit is set and cleared by software to
      --  enable/disable UEV event generation. Counter overflow/underflow
      --  Setting the UG bit Update generation through the slave mode
      --  controller Buffered registers are then loaded with their preload
      --  values.
      UDIS           : Boolean := False;
      --  Update request source This bit is set and cleared by software to
      --  select the UEV event sources. Counter overflow/underflow Setting the
      --  UG bit Update generation through the slave mode controller
      URS            : Boolean := False;
      --  One pulse mode
      OPM            : Boolean := False;
      --  Direction Note: This bit is read only when the timer is configured in
      --  Center-aligned mode or Encoder mode.
      DIR            : Boolean := False;
      --  Center-aligned mode selection Note: Switch from edge-aligned mode to
      --  center-aligned mode as long as the counter is enabled (CEN=1) is not
      --  allowed
      CMS            : TIM1_CR1_CMS_Field := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division This bit-field indicates the division ratio between
      --  the timer clock (CK_INT) frequency and the dead-time and sampling
      --  clock (tDTS)used by the dead-time generators and the digital filters
      --  (ETR, TIx): Note: tDTS = 1/fDTS, tCK_INT = 1/fCK_INT.
      CKD            : TIM1_CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM1_CR1_Register use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      DIR            at 0 range 4 .. 4;
      CMS            at 0 range 5 .. 6;
      ARPE           at 0 range 7 .. 7;
      CKD            at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      UIFREMAP       at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype TIM1_CR2_MMS_Field is HAL.UInt3;
   subtype TIM1_CR2_MMS2_Field is HAL.UInt4;

   --  TIM1 control register 2
   type TIM1_CR2_Register is record
      --  Capture/compare preloaded control Note: This bit acts only on
      --  channels that have a complementary output.
      CCPC           : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Capture/compare control update selection Note: This bit acts only on
      --  channels that have a complementary output.
      CCUS           : Boolean := False;
      --  Capture/compare DMA selection
      CCDS           : Boolean := False;
      --  Master mode selection These bits allow selected information to be
      --  sent in master mode to slave timers for synchronization (TRGO). The
      --  combination is as follows: Note: The clock of the slave timer or ADC
      --  must be enabled prior to receive events from the master timer, and
      --  must not be changed on-the-fly while triggers are received from the
      --  master timer.
      MMS            : TIM1_CR2_MMS_Field := 16#0#;
      --  TI1 selection
      TI1S           : Boolean := False;
      --  Output Idle state 1 (OC1 output) Note: This bit can not be modified
      --  as long as LOCK level 1, 2 or 3 has been programmed (LOCK bits in
      --  TIMx_BDTR register).
      OIS1           : Boolean := False;
      --  Output Idle state 1 (OC1N output) Note: This bit can not be modified
      --  as long as LOCK level 1, 2 or 3 has been programmed (LOCK bits in
      --  TIMx_BDTR register).
      OIS1N          : Boolean := False;
      --  Output Idle state 2 (OC2 output) Refer to OIS1 bit
      OIS2           : Boolean := False;
      --  Output Idle state 2 (OC2N output) Refer to OIS1N bit
      OIS2N          : Boolean := False;
      --  Output Idle state 3 (OC3 output) Refer to OIS1 bit
      OIS3           : Boolean := False;
      --  Output Idle state 3 (OC3N output) Refer to OIS1N bit
      OIS3N          : Boolean := False;
      --  Output Idle state 4 (OC4 output) Refer to OIS1 bit
      OIS4           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Output Idle state 5 (OC5 output) Refer to OIS1 bit
      OIS5           : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Output Idle state 6 (OC6 output) Refer to OIS1 bit
      OIS6           : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Master mode selection 2 These bits allow the information to be sent
      --  to ADC for synchronization (TRGO2) to be selected. The combination is
      --  as follows: Note: The clock of the slave timer or ADC must be enabled
      --  prior to receive events from the master timer, and must not be
      --  changed on-the-fly while triggers are received from the master timer.
      MMS2           : TIM1_CR2_MMS2_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CR2_Register use record
      CCPC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCUS           at 0 range 2 .. 2;
      CCDS           at 0 range 3 .. 3;
      MMS            at 0 range 4 .. 6;
      TI1S           at 0 range 7 .. 7;
      OIS1           at 0 range 8 .. 8;
      OIS1N          at 0 range 9 .. 9;
      OIS2           at 0 range 10 .. 10;
      OIS2N          at 0 range 11 .. 11;
      OIS3           at 0 range 12 .. 12;
      OIS3N          at 0 range 13 .. 13;
      OIS4           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      OIS5           at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      OIS6           at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      MMS2           at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TIM1_SMCR_SMS1_Field is HAL.UInt3;
   subtype TIM1_SMCR_TS1_Field is HAL.UInt3;
   subtype TIM1_SMCR_ETF_Field is HAL.UInt4;
   subtype TIM1_SMCR_ETPS_Field is HAL.UInt2;
   subtype TIM1_SMCR_TS2_Field is HAL.UInt2;

   --  TIM1 slave mode control register
   type TIM1_SMCR_Register is record
      --  Slave mode selection When external signals are selected the active
      --  edge of the trigger signal (TRGI) is linked to the polarity selected
      --  on the external input (see Input Control register and Control
      --  Register description. Note: The gated mode must not be used if
      --  TI1F_ED is selected as the trigger input (TS=00100). Indeed, TI1F_ED
      --  outputs 1 pulse for each transition on TI1F, whereas the gated mode
      --  checks the level of the trigger signal. Note: The clock of the slave
      --  peripherals (timer, ADC, ...) receiving the TRGO or the TRGO2 signals
      --  must be enabled prior to receive events from the master timer, and
      --  the clock frequency (prescaler) must not be changed on-the-fly while
      --  triggers are received from the master timer.
      SMS1           : TIM1_SMCR_SMS1_Field := 16#0#;
      --  OCREF clear selection This bit is used to select the OCREF clear
      --  source.
      OCCS           : Boolean := False;
      --  Trigger selection This bit-field selects the trigger input to be used
      --  to synchronize the counter. Others: Reserved See for more details on
      --  ITRx meaning for each Timer. Note: These bits must be changed only
      --  when they are not used (e.g. when SMS=000) to avoid wrong edge
      --  detections at the transition.
      TS1            : TIM1_SMCR_TS1_Field := 16#0#;
      --  Master/slave mode
      MSM            : Boolean := False;
      --  External trigger filter This bit-field then defines the frequency
      --  used to sample ETRP signal and the length of the digital filter
      --  applied to ETRP. The digital filter is made of an event counter in
      --  which N consecutive events are needed to validate a transition on the
      --  output:
      ETF            : TIM1_SMCR_ETF_Field := 16#0#;
      --  External trigger prescaler External trigger signal ETRP frequency
      --  must be at most 1/4 of fCK_INT frequency. A prescaler can be enabled
      --  to reduce ETRP frequency. It is useful when inputting fast external
      --  clocks.
      ETPS           : TIM1_SMCR_ETPS_Field := 16#0#;
      --  External clock enable This bit enables External clock mode 2. Note:
      --  Setting the ECE bit has the same effect as selecting external clock
      --  mode 1 with TRGI connected to ETRF (SMS=111 and TS=00111). It is
      --  possible to simultaneously use external clock mode 2 with the
      --  following slave modes: reset mode, gated mode and trigger mode.
      --  Nevertheless, TRGI must not be connected to ETRF in this case (TS
      --  bits must not be 00111). If external clock mode 1 and external clock
      --  mode 2 are enabled at the same time, the external clock input is
      --  ETRF.
      ECE            : Boolean := False;
      --  External trigger polarity This bit selects whether ETR or ETR is used
      --  for trigger operations
      ETP            : Boolean := False;
      --  Slave mode selection When external signals are selected the active
      --  edge of the trigger signal (TRGI) is linked to the polarity selected
      --  on the external input (see Input Control register and Control
      --  Register description. Note: The gated mode must not be used if
      --  TI1F_ED is selected as the trigger input (TS=00100). Indeed, TI1F_ED
      --  outputs 1 pulse for each transition on TI1F, whereas the gated mode
      --  checks the level of the trigger signal. Note: The clock of the slave
      --  peripherals (timer, ADC, ...) receiving the TRGO or the TRGO2 signals
      --  must be enabled prior to receive events from the master timer, and
      --  the clock frequency (prescaler) must not be changed on-the-fly while
      --  triggers are received from the master timer.
      SMS2           : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Trigger selection This bit-field selects the trigger input to be used
      --  to synchronize the counter. Others: Reserved See for more details on
      --  ITRx meaning for each Timer. Note: These bits must be changed only
      --  when they are not used (e.g. when SMS=000) to avoid wrong edge
      --  detections at the transition.
      TS2            : TIM1_SMCR_TS2_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_SMCR_Register use record
      SMS1           at 0 range 0 .. 2;
      OCCS           at 0 range 3 .. 3;
      TS1            at 0 range 4 .. 6;
      MSM            at 0 range 7 .. 7;
      ETF            at 0 range 8 .. 11;
      ETPS           at 0 range 12 .. 13;
      ECE            at 0 range 14 .. 14;
      ETP            at 0 range 15 .. 15;
      SMS2           at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      TS2            at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  TIM1 DMA/interrupt enable register
   type TIM1_DIER_Register is record
      --  Update interrupt enable
      UIE            : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Capture/Compare 2 interrupt enable
      CC2IE          : Boolean := False;
      --  Capture/Compare 3 interrupt enable
      CC3IE          : Boolean := False;
      --  Capture/Compare 4 interrupt enable
      CC4IE          : Boolean := False;
      --  COM interrupt enable
      COMIE          : Boolean := False;
      --  Trigger interrupt enable
      TIE            : Boolean := False;
      --  Break interrupt enable
      BIE            : Boolean := False;
      --  Update DMA request enable
      UDE            : Boolean := False;
      --  Capture/Compare 1 DMA request enable
      CC1DE          : Boolean := False;
      --  Capture/Compare 2 DMA request enable
      CC2DE          : Boolean := False;
      --  Capture/Compare 3 DMA request enable
      CC3DE          : Boolean := False;
      --  Capture/Compare 4 DMA request enable
      CC4DE          : Boolean := False;
      --  COM DMA request enable
      COMDE          : Boolean := False;
      --  Trigger DMA request enable
      TDE            : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM1_DIER_Register use record
      UIE            at 0 range 0 .. 0;
      CC1IE          at 0 range 1 .. 1;
      CC2IE          at 0 range 2 .. 2;
      CC3IE          at 0 range 3 .. 3;
      CC4IE          at 0 range 4 .. 4;
      COMIE          at 0 range 5 .. 5;
      TIE            at 0 range 6 .. 6;
      BIE            at 0 range 7 .. 7;
      UDE            at 0 range 8 .. 8;
      CC1DE          at 0 range 9 .. 9;
      CC2DE          at 0 range 10 .. 10;
      CC3DE          at 0 range 11 .. 11;
      CC4DE          at 0 range 12 .. 12;
      COMDE          at 0 range 13 .. 13;
      TDE            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   --  TIM1 status register
   type TIM1_SR_Register is record
      --  Update interrupt flag This bit is set by hardware on an update event.
      --  It is cleared by software. At overflow or underflow regarding the
      --  repetition counter value (update if repetition counter = 0) and if
      --  the UDIS=0 in the TIMx_CR1 register. When CNT is reinitialized by
      --  software using the UG bit in TIMx_EGR register, if URS=0 and UDIS=0
      --  in the TIMx_CR1 register. When CNT is reinitialized by a trigger
      --  event (refer to control register (TIM1_SMCRTIMx_SMCR)N/A), if URS=0
      --  and UDIS=0 in the TIMx_CR1 register.
      UIF            : Boolean := False;
      --  Capture/Compare 1 interrupt flag This flag is set by hardware. It is
      --  cleared by software (input capture or output compare mode) or by
      --  reading the TIMx_CCR1 register (input capture mode only). If channel
      --  CC1 is configured as output: this flag is set when he content of the
      --  counter TIMx_CNT matches the content of the TIMx_CCR1 register. When
      --  the content of TIMx_CCR1 is greater than the content of TIMx_ARR, the
      --  CC1IF bit goes high on the counter overflow (in up-counting and
      --  up/down-counting modes) or underflow (in down-counting mode). There
      --  are 3 possible options for flag setting in center-aligned mode, refer
      --  to the CMS bits in the TIMx_CR1 register for the full description. If
      --  channel CC1 is configured as input: this bit is set when counter
      --  value has been captured in TIMx_CCR1 register (an edge has been
      --  detected on IC1, as per the edge sensitivity defined with the CC1P
      --  and CC1NP bits setting, in TIMx_CCER).
      CC1IF          : Boolean := False;
      --  Capture/Compare 2 interrupt flag Refer to CC1IF description
      CC2IF          : Boolean := False;
      --  Capture/Compare 3 interrupt flag Refer to CC1IF description
      CC3IF          : Boolean := False;
      --  Capture/Compare 4 interrupt flag Refer to CC1IF description
      CC4IF          : Boolean := False;
      --  COM interrupt flag
      COMIF          : Boolean := False;
      --  Trigger interrupt flag This flag is set by hardware on the TRG
      --  trigger event (active edge detected on TRGI input when the slave mode
      --  controller is enabled in all modes but gated mode. It is set when the
      --  counter starts or stops when gated mode is selected. It is cleared by
      --  software.
      TIF            : Boolean := False;
      --  Break interrupt flag This flag is set by hardware as soon as the
      --  break input goes active. It can be cleared by software if the break
      --  input is not active.
      BIF            : Boolean := False;
      --  Break 2 interrupt flag This flag is set by hardware as soon as the
      --  break 2 input goes active. It can be cleared by software if the break
      --  2 input is not active.
      B2IF           : Boolean := False;
      --  Capture/Compare 1 overcapture flag This flag is set by hardware only
      --  when the corresponding channel is configured in input capture mode.
      --  It is cleared by software by writing it to 0.
      CC1OF          : Boolean := False;
      --  Capture/Compare 2 overcapture flag Refer to CC1OF description
      CC2OF          : Boolean := False;
      --  Capture/Compare 3 overcapture flag Refer to CC1OF description
      CC3OF          : Boolean := False;
      --  Capture/Compare 4 overcapture flag Refer to CC1OF description
      CC4OF          : Boolean := False;
      --  System Break interrupt flag This flag is set by hardware as soon as
      --  the system break input goes active. It can be cleared by software if
      --  the system break input is not active. This flag must be reset to
      --  re-start PWM operation.
      SBIF           : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Compare 5 interrupt flag Refer to CC1IF description (Note: Channel 5
      --  can only be configured as output)
      CC5IF          : Boolean := False;
      --  Compare 6 interrupt flag Refer to CC1IF description (Note: Channel 6
      --  can only be configured as output)
      CC6IF          : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      CC2IF          at 0 range 2 .. 2;
      CC3IF          at 0 range 3 .. 3;
      CC4IF          at 0 range 4 .. 4;
      COMIF          at 0 range 5 .. 5;
      TIF            at 0 range 6 .. 6;
      BIF            at 0 range 7 .. 7;
      B2IF           at 0 range 8 .. 8;
      CC1OF          at 0 range 9 .. 9;
      CC2OF          at 0 range 10 .. 10;
      CC3OF          at 0 range 11 .. 11;
      CC4OF          at 0 range 12 .. 12;
      SBIF           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CC5IF          at 0 range 16 .. 16;
      CC6IF          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  TIM1 event generation register
   type TIM1_EGR_Register is record
      --  Write-only. Update generation This bit can be set by software, it is
      --  automatically cleared by hardware.
      UG            : Boolean := False;
      --  Write-only. Capture/Compare 1 generation This bit is set by software
      --  in order to generate an event, it is automatically cleared by
      --  hardware. If channel CC1 is configured as output: CC1IF flag is set,
      --  Corresponding interrupt or DMA request is sent if enabled. If channel
      --  CC1 is configured as input: The current value of the counter is
      --  captured in TIMx_CCR1 register. The CC1IF flag is set, the
      --  corresponding interrupt or DMA request is sent if enabled. The CC1OF
      --  flag is set if the CC1IF flag was already high.
      CC1G          : Boolean := False;
      --  Write-only. Capture/Compare 2 generation Refer to CC1G description
      CC2G          : Boolean := False;
      --  Write-only. Capture/Compare 3 generation Refer to CC1G description
      CC3G          : Boolean := False;
      --  Write-only. Capture/Compare 4 generation Refer to CC1G description
      CC4G          : Boolean := False;
      --  Write-only. Capture/Compare control update generation This bit can be
      --  set by software, it is automatically cleared by hardware Note: This
      --  bit acts only on channels having a complementary output.
      COMG          : Boolean := False;
      --  Write-only. Trigger generation This bit is set by software in order
      --  to generate an event, it is automatically cleared by hardware.
      TG            : Boolean := False;
      --  Write-only. Break generation This bit is set by software in order to
      --  generate an event, it is automatically cleared by hardware.
      BG            : Boolean := False;
      --  Write-only. Break 2 generation This bit is set by software in order
      --  to generate an event, it is automatically cleared by hardware.
      B2G           : Boolean := False;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM1_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      CC3G          at 0 range 3 .. 3;
      CC4G          at 0 range 4 .. 4;
      COMG          at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      BG            at 0 range 7 .. 7;
      B2G           at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   subtype TIM1_CCMR1_input_CC1S_Field is HAL.UInt2;
   subtype TIM1_CCMR1_input_IC1PSC_Field is HAL.UInt2;
   subtype TIM1_CCMR1_input_IC1F_Field is HAL.UInt4;
   subtype TIM1_CCMR1_input_CC2S_Field is HAL.UInt2;
   subtype TIM1_CCMR1_input_IC2PSC_Field is HAL.UInt2;
   subtype TIM1_CCMR1_input_IC2F_Field is HAL.UInt4;

   --  TIM1 capture/compare mode register 1 [alternate]
   type TIM1_CCMR1_input_Register is record
      --  Capture/Compare 1 Selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC1S bits
      --  are writable only when the channel is OFF (CC1E = 0 in TIMx_CCER).
      CC1S           : TIM1_CCMR1_input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler This bit-field defines the ratio of the
      --  prescaler acting on CC1 input (IC1). The prescaler is reset as soon
      --  as CC1E=0 (TIMx_CCER register).
      IC1PSC         : TIM1_CCMR1_input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter This bit-field defines the frequency used to
      --  sample TI1 input and the length of the digital filter applied to TI1.
      --  The digital filter is made of an event counter in which N consecutive
      --  events are needed to validate a transition on the output:
      IC1F           : TIM1_CCMR1_input_IC1F_Field := 16#0#;
      --  Capture/Compare 2 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC2S bits
      --  are writable only when the channel is OFF (CC2E = 0 in TIMx_CCER).
      CC2S           : TIM1_CCMR1_input_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler Refer to IC1PSC[1:0] description.
      IC2PSC         : TIM1_CCMR1_input_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter Refer to IC1F[3:0] description.
      IC2F           : TIM1_CCMR1_input_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCMR1_input_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM1_CCMR1_output_CC1S_Field is HAL.UInt2;
   subtype TIM1_CCMR1_output_OC1M1_Field is HAL.UInt3;
   subtype TIM1_CCMR1_output_CC2S_Field is HAL.UInt2;
   subtype TIM1_CCMR1_output_OC2M1_Field is HAL.UInt3;

   --  TIM1 capture/compare mode register 1 [alternate]
   type TIM1_CCMR1_output_Register is record
      --  Capture/Compare 1 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC1S bits
      --  are writable only when the channel is OFF (CC1E = 0 in TIMx_CCER).
      CC1S           : TIM1_CCMR1_output_CC1S_Field := 16#0#;
      --  Output Compare 1 fast enable This bit decreases the latency between a
      --  trigger event and a transition on the timer output. It must be used
      --  in one-pulse mode (OPM bit set in TIMx_CR1 register), to have the
      --  output pulse starting as soon as possible after the starting trigger.
      OC1FE          : Boolean := False;
      --  Output Compare 1 preload enable Note: These bits can not be modified
      --  as long as LOCK level 3 has been programmed (LOCK bits in TIMx_BDTR
      --  register) and CC1S=00 (the channel is configured in output). The PWM
      --  mode can be used without validating the preload register only in one
      --  pulse mode (OPM bit set in TIMx_CR1 register). Else the behavior is
      --  not guaranteed.
      OC1PE          : Boolean := False;
      --  Output Compare 1 mode These bits define the behavior of the output
      --  reference signal OC1REF from which OC1 and OC1N are derived. OC1REF
      --  is active high whereas OC1 and OC1N active level depends on CC1P and
      --  CC1NP bits. Note: These bits can not be modified as long as LOCK
      --  level 3 has been programmed (LOCK bits in TIMx_BDTR register) and
      --  CC1S=00 (the channel is configured in output). Note: In PWM mode, the
      --  OCREF level changes only when the result of the comparison changes or
      --  when the output compare mode switches from frozen mode to PWM mode.
      --  Note: On channels having a complementary output, this bit field is
      --  preloaded. If the CCPC bit is set in the TIMx_CR2 register then the
      --  OC1M active bits take the new value from the preloaded bits only when
      --  a COM event is generated. Note: The OC1M[3] bit is not contiguous,
      --  located in bit 16.
      OC1M1          : TIM1_CCMR1_output_OC1M1_Field := 16#0#;
      --  Output Compare 1 clear enable
      OC1CE          : Boolean := False;
      --  Capture/Compare 2 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC2S bits
      --  are writable only when the channel is OFF (CC2E = 0 in TIMx_CCER).
      CC2S           : TIM1_CCMR1_output_CC2S_Field := 16#0#;
      --  Output Compare 2 fast enable Refer to OC1FE description.
      OC2FE          : Boolean := False;
      --  Output Compare 2 preload enable Refer to OC1PE description.
      OC2PE          : Boolean := False;
      --  Output Compare 2 mode Refer to OC1M[3:0] description.
      OC2M1          : TIM1_CCMR1_output_OC2M1_Field := 16#0#;
      --  Output Compare 2 clear enable Refer to OC1CE description.
      OC2CE          : Boolean := False;
      --  Output Compare 1 mode These bits define the behavior of the output
      --  reference signal OC1REF from which OC1 and OC1N are derived. OC1REF
      --  is active high whereas OC1 and OC1N active level depends on CC1P and
      --  CC1NP bits. Note: These bits can not be modified as long as LOCK
      --  level 3 has been programmed (LOCK bits in TIMx_BDTR register) and
      --  CC1S=00 (the channel is configured in output). Note: In PWM mode, the
      --  OCREF level changes only when the result of the comparison changes or
      --  when the output compare mode switches from frozen mode to PWM mode.
      --  Note: On channels having a complementary output, this bit field is
      --  preloaded. If the CCPC bit is set in the TIMx_CR2 register then the
      --  OC1M active bits take the new value from the preloaded bits only when
      --  a COM event is generated. Note: The OC1M[3] bit is not contiguous,
      --  located in bit 16.
      OC1M2          : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Output Compare 2 mode Refer to OC1M[3:0] description.
      OC2M2          : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCMR1_output_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M1          at 0 range 4 .. 6;
      OC1CE          at 0 range 7 .. 7;
      CC2S           at 0 range 8 .. 9;
      OC2FE          at 0 range 10 .. 10;
      OC2PE          at 0 range 11 .. 11;
      OC2M1          at 0 range 12 .. 14;
      OC2CE          at 0 range 15 .. 15;
      OC1M2          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC2M2          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype TIM1_CCMR2_input_CC3S_Field is HAL.UInt2;
   subtype TIM1_CCMR2_input_IC3PSC_Field is HAL.UInt2;
   subtype TIM1_CCMR2_input_IC3F_Field is HAL.UInt4;
   subtype TIM1_CCMR2_input_CC4S_Field is HAL.UInt2;
   subtype TIM1_CCMR2_input_IC4PSC_Field is HAL.UInt2;
   subtype TIM1_CCMR2_input_IC4F_Field is HAL.UInt4;

   --  TIM1 capture/compare mode register 2 [alternate]
   type TIM1_CCMR2_input_Register is record
      --  Capture/compare 3 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC3S bits
      --  are writable only when the channel is OFF (CC3E = 0 in TIMx_CCER).
      CC3S           : TIM1_CCMR2_input_CC3S_Field := 16#0#;
      --  Input capture 3 prescaler Refer to IC1PSC[1:0] description.
      IC3PSC         : TIM1_CCMR2_input_IC3PSC_Field := 16#0#;
      --  Input capture 3 filter Refer to IC1F[3:0] description.
      IC3F           : TIM1_CCMR2_input_IC3F_Field := 16#0#;
      --  Capture/Compare 4 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC4S bits
      --  are writable only when the channel is OFF (CC4E = 0 in TIMx_CCER).
      CC4S           : TIM1_CCMR2_input_CC4S_Field := 16#0#;
      --  Input capture 4 prescaler Refer to IC1PSC[1:0] description.
      IC4PSC         : TIM1_CCMR2_input_IC4PSC_Field := 16#0#;
      --  Input capture 4 filter Refer to IC1F[3:0] description.
      IC4F           : TIM1_CCMR2_input_IC4F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCMR2_input_Register use record
      CC3S           at 0 range 0 .. 1;
      IC3PSC         at 0 range 2 .. 3;
      IC3F           at 0 range 4 .. 7;
      CC4S           at 0 range 8 .. 9;
      IC4PSC         at 0 range 10 .. 11;
      IC4F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM1_CCMR2_output_CC3S_Field is HAL.UInt2;
   subtype TIM1_CCMR2_output_OC3M1_Field is HAL.UInt3;
   subtype TIM1_CCMR2_output_CC4S_Field is HAL.UInt2;
   subtype TIM1_CCMR2_output_OC4M1_Field is HAL.UInt3;

   --  TIM1 capture/compare mode register 2 [alternate]
   type TIM1_CCMR2_output_Register is record
      --  Capture/Compare 3 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC3S bits
      --  are writable only when the channel is OFF (CC3E = 0 in TIMx_CCER).
      CC3S           : TIM1_CCMR2_output_CC3S_Field := 16#0#;
      --  Output compare 3 fast enable Refer to OC1FE description.
      OC3FE          : Boolean := False;
      --  Output compare 3 preload enable Refer to OC1PE description.
      OC3PE          : Boolean := False;
      --  Output compare 3 mode Refer to OC1M[3:0] description.
      OC3M1          : TIM1_CCMR2_output_OC3M1_Field := 16#0#;
      --  Output compare 3 clear enable Refer to OC1CE description.
      OC3CE          : Boolean := False;
      --  Capture/Compare 4 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC4S bits
      --  are writable only when the channel is OFF (CC4E = 0 in TIMx_CCER).
      CC4S           : TIM1_CCMR2_output_CC4S_Field := 16#0#;
      --  Output compare 4 fast enable Refer to OC1FE description.
      OC4FE          : Boolean := False;
      --  Output compare 4 preload enable Refer to OC1PE description.
      OC4PE          : Boolean := False;
      --  Output compare 4 mode Refer to OC3M[3:0] description.
      OC4M1          : TIM1_CCMR2_output_OC4M1_Field := 16#0#;
      --  Output compare 4 clear enable Refer to OC1CE description.
      OC4CE          : Boolean := False;
      --  Output compare 3 mode Refer to OC1M[3:0] description.
      OC3M2          : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Output compare 4 mode Refer to OC3M[3:0] description.
      OC4M2          : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCMR2_output_Register use record
      CC3S           at 0 range 0 .. 1;
      OC3FE          at 0 range 2 .. 2;
      OC3PE          at 0 range 3 .. 3;
      OC3M1          at 0 range 4 .. 6;
      OC3CE          at 0 range 7 .. 7;
      CC4S           at 0 range 8 .. 9;
      OC4FE          at 0 range 10 .. 10;
      OC4PE          at 0 range 11 .. 11;
      OC4M1          at 0 range 12 .. 14;
      OC4CE          at 0 range 15 .. 15;
      OC3M2          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC4M2          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  TIM1 capture/compare enable register	
   type TIM1_CCER_Register is record
      --  Capture/Compare 1 output enable When CC1 channel is configured as
      --  output, the OC1 level depends on MOE, OSSI, OSSR, OIS1, OIS1N and
      --  CC1NE bits, regardless of the CC1E bits state. Refer to for details.
      --  Note: On channels having a complementary output, this bit is
      --  preloaded. If the CCPC bit is set in the TIMx_CR2 register then the
      --  CC1E active bit takes the new value from the preloaded bit only when
      --  a Commutation event is generated.
      CC1E           : Boolean := False;
      --  Capture/Compare 1 output polarity When CC1 channel is configured as
      --  input, both CC1NP/CC1P bits select the active polarity of TI1FP1 and
      --  TI2FP1 for trigger or capture operations. CC1NP=0,
      --  CC1P=0:	non-inverted/rising edge. The circuit is sensitive to TIxFP1
      --  rising edge (capture or trigger operations in reset, external clock
      --  or trigger mode), TIxFP1 is not inverted (trigger operation in gated
      --  mode or encoder mode). CC1NP=0, CC1P=1:	inverted/falling edge. The
      --  circuit is sensitive to TIxFP1 falling edge (capture or trigger
      --  operations in reset, external clock or trigger mode), TIxFP1 is
      --  inverted (trigger operation in gated mode or encoder mode). CC1NP=1,
      --  CC1P=1:	non-inverted/both edges/ The circuit is sensitive to both
      --  TIxFP1 rising and falling edges (capture or trigger operations in
      --  reset, external clock or trigger mode), TIxFP1is not inverted
      --  (trigger operation in gated mode). This configuration must not be
      --  used in encoder mode. CC1NP=1, CC1P=0:	The configuration is reserved,
      --  it must not be used. Note: This bit is not writable as soon as LOCK
      --  level 2 or 3 has been programmed (LOCK bits in TIMx_BDTR register).
      --  On channels having a complementary output, this bit is preloaded. If
      --  the CCPC bit is set in the TIMx_CR2 register then the CC1P active bit
      --  takes the new value from the preloaded bit only when a Commutation
      --  event is generated.
      CC1P           : Boolean := False;
      --  Capture/Compare 1 complementary output enable On channels having a
      --  complementary output, this bit is preloaded. If the CCPC bit is set
      --  in the TIMx_CR2 register then the CC1NE active bit takes the new
      --  value from the preloaded bit only when a Commutation event is
      --  generated.
      CC1NE          : Boolean := False;
      --  Capture/Compare 1 complementary output polarity CC1 channel
      --  configured as output: CC1 channel configured as input: This bit is
      --  used in conjunction with CC1P to define the polarity of TI1FP1 and
      --  TI2FP1. Refer to CC1P description. Note: This bit is not writable as
      --  soon as LOCK level 2 or 3 has been programmed (LOCK bits in TIMx_BDTR
      --  register) and CC1S=00 (channel configured as output). On channels
      --  having a complementary output, this bit is preloaded. If the CCPC bit
      --  is set in the TIMx_CR2 register then the CC1NP active bit takes the
      --  new value from the preloaded bit only when a Commutation event is
      --  generated.
      CC1NP          : Boolean := False;
      --  Capture/Compare 2 output enable Refer to CC1E description
      CC2E           : Boolean := False;
      --  Capture/Compare 2 output polarity Refer to CC1P description
      CC2P           : Boolean := False;
      --  Capture/Compare 2 complementary output enable Refer to CC1NE
      --  description
      CC2NE          : Boolean := False;
      --  Capture/Compare 2 complementary output polarity Refer to CC1NP
      --  description
      CC2NP          : Boolean := False;
      --  Capture/Compare 3 output enable Refer to CC1E description
      CC3E           : Boolean := False;
      --  Capture/Compare 3 output polarity Refer to CC1P description
      CC3P           : Boolean := False;
      --  Capture/Compare 3 complementary output enable Refer to CC1NE
      --  description
      CC3NE          : Boolean := False;
      --  Capture/Compare 3 complementary output polarity Refer to CC1NP
      --  description
      CC3NP          : Boolean := False;
      --  Capture/Compare 4 output enable Refer to CC1E description
      CC4E           : Boolean := False;
      --  Capture/Compare 4 output polarity Refer to CC1P description
      CC4P           : Boolean := False;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Capture/Compare 4 complementary output polarity Refer to CC1NP
      --  description
      CC4NP          : Boolean := False;
      --  Capture/Compare 5 output enable Refer to CC1E description
      CC5E           : Boolean := False;
      --  Capture/Compare 5 output polarity Refer to CC1P description
      CC5P           : Boolean := False;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Capture/Compare 6 output enable Refer to CC1E description
      CC6E           : Boolean := False;
      --  Capture/Compare 6 output polarity Refer to CC1P description
      CC6P           : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCER_Register use record
      CC1E           at 0 range 0 .. 0;
      CC1P           at 0 range 1 .. 1;
      CC1NE          at 0 range 2 .. 2;
      CC1NP          at 0 range 3 .. 3;
      CC2E           at 0 range 4 .. 4;
      CC2P           at 0 range 5 .. 5;
      CC2NE          at 0 range 6 .. 6;
      CC2NP          at 0 range 7 .. 7;
      CC3E           at 0 range 8 .. 8;
      CC3P           at 0 range 9 .. 9;
      CC3NE          at 0 range 10 .. 10;
      CC3NP          at 0 range 11 .. 11;
      CC4E           at 0 range 12 .. 12;
      CC4P           at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      CC4NP          at 0 range 15 .. 15;
      CC5E           at 0 range 16 .. 16;
      CC5P           at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      CC6E           at 0 range 20 .. 20;
      CC6P           at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype TIM1_CNT_CNT_Field is HAL.UInt16;

   --  TIM1 counter
   type TIM1_CNT_Register is record
      --  Counter value
      CNT            : TIM1_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  Read-only. UIF copy This bit is a read-only copy of the UIF bit of
      --  the TIMx_ISR register. If the UIFREMAP bit in the TIMxCR1 is reset,
      --  bit 31 is reserved and read at 0.
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM1_BDTR_DTG_Field is HAL.UInt8;
   subtype TIM1_BDTR_LOCK_Field is HAL.UInt2;
   subtype TIM1_BDTR_BKF_Field is HAL.UInt4;
   subtype TIM1_BDTR_BK2F_Field is HAL.UInt4;

   --  TIM1 break and dead-time register	
   type TIM1_BDTR_Register is record
      --  Dead-time generator setup
      DTG            : TIM1_BDTR_DTG_Field := 16#0#;
      --  Lock configuration These bits offer a write protection against
      --  software errors. Note: The LOCK bits can be written only once after
      --  the reset. Once the TIMx_BDTR register has been written, their
      --  content is frozen until the next reset.
      LOCK           : TIM1_BDTR_LOCK_Field := 16#0#;
      --  Off-state selection for Idle mode This bit is used when MOE=0 due to
      --  a break event or by a software write, on channels configured as
      --  outputs. See OC/OCN enable description for more details (enable
      --  register (TIM1_CCERTIMx_CCER)N/A). Note: This bit can not be modified
      --  as soon as the LOCK level 2 has been programmed (LOCK bits in
      --  TIMx_BDTR register).
      OSSI           : Boolean := False;
      --  Off-state selection for Run mode This bit is used when MOE=1 on
      --  channels having a complementary output which are configured as
      --  outputs. OSSR is not implemented if no complementary output is
      --  implemented in the timer. See OC/OCN enable description for more
      --  details (enable register (TIM1_CCERTIMx_CCER)N/A). Note: This bit can
      --  not be modified as soon as the LOCK level 2 has been programmed (LOCK
      --  bits in TIMx_BDTR register).
      OSSR           : Boolean := False;
      --  Break enable This bit enables the complete break protection
      --  (including all sources connected to bk_acth and BKIN sources, as per
      --  ). Note: This bit cannot be modified when LOCK level 1 has been
      --  programmed (LOCK bits in TIMx_BDTR register). Note: Any write
      --  operation to this bit takes a delay of 1 APB clock cycle to become
      --  effective.
      BKE            : Boolean := False;
      --  Break polarity Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register). Note:
      --  Any write operation to this bit takes a delay of 1 APB clock cycle to
      --  become effective.
      BKP            : Boolean := False;
      --  Automatic output enable Note: This bit can not be modified as long as
      --  LOCK level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      AOE            : Boolean := False;
      --  Main output enable This bit is cleared asynchronously by hardware as
      --  soon as one of the break inputs is active (BRK or BRK2). It is set by
      --  software or automatically depending on the AOE bit. It is acting only
      --  on the channels which are configured in output. In response to a
      --  break event or if MOE is written to 0: OC and OCN outputs are
      --  disabled or forced to idle state depending on the OSSI bit. See
      --  OC/OCN enable description for more details (enable register
      --  (TIM1_CCERTIMx_CCER)N/A).
      MOE            : Boolean := False;
      --  Break filter This bit-field defines the frequency used to sample BRK
      --  input and the length of the digital filter applied to BRK. The
      --  digital filter is made of an event counter in which N consecutive
      --  events are needed to validate a transition on the output: Note: This
      --  bit cannot be modified when LOCK level 1 has been programmed (LOCK
      --  bits in TIMx_BDTR register).
      BKF            : TIM1_BDTR_BKF_Field := 16#0#;
      --  Break 2 filter This bit-field defines the frequency used to sample
      --  BRK2 input and the length of the digital filter applied to BRK2. The
      --  digital filter is made of an event counter in which N consecutive
      --  events are needed to validate a transition on the output: Note: This
      --  bit cannot be modified when LOCK level 1 has been programmed (LOCK
      --  bits in TIMx_BDTR register).
      BK2F           : TIM1_BDTR_BK2F_Field := 16#0#;
      --  Break 2 enable Note: The BRK2 must only be used with OSSR = OSSI = 1.
      --  Note: This bit cannot be modified when LOCK level 1 has been
      --  programmed (LOCK bits in TIMx_BDTR register). Note: Any write
      --  operation to this bit takes a delay of 1 APB clock cycle to become
      --  effective.
      BK2E           : Boolean := False;
      --  Break 2 polarity Note: This bit cannot be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register). Note:
      --  Any write operation to this bit takes a delay of 1 APB clock cycle to
      --  become effective.
      BK2P           : Boolean := False;
      --  Break Disarm This bit is cleared by hardware when no break source is
      --  active. The BKDSRM bit must be set by software to release the
      --  bidirectional output control (open-drain output in Hi-Z state) and
      --  then be polled it until it is reset by hardware, indicating that the
      --  fault condition has disappeared. Note: Any write operation to this
      --  bit takes a delay of 1 APB clock cycle to become effective.
      BKDSRM         : Boolean := False;
      --  Break2 Disarm Refer to BKDSRM description
      BK2DSRM        : Boolean := False;
      --  Break Bidirectional In the bidirectional mode (BKBID bit set to 1),
      --  the break input is configured both in input mode and in open drain
      --  output mode. Any active break event asserts a low logic level on the
      --  Break input to indicate an internal break event to external devices.
      --  Note: This bit cannot be modified as long as LOCK level 1 has been
      --  programmed (LOCK bits in TIMx_BDTR register). Note: Any write
      --  operation to this bit takes a delay of 1 APB clock cycle to become
      --  effective.
      BKBID          : Boolean := False;
      --  Break2 bidirectional Refer to BKBID description
      BK2BID         : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_BDTR_Register use record
      DTG            at 0 range 0 .. 7;
      LOCK           at 0 range 8 .. 9;
      OSSI           at 0 range 10 .. 10;
      OSSR           at 0 range 11 .. 11;
      BKE            at 0 range 12 .. 12;
      BKP            at 0 range 13 .. 13;
      AOE            at 0 range 14 .. 14;
      MOE            at 0 range 15 .. 15;
      BKF            at 0 range 16 .. 19;
      BK2F           at 0 range 20 .. 23;
      BK2E           at 0 range 24 .. 24;
      BK2P           at 0 range 25 .. 25;
      BKDSRM         at 0 range 26 .. 26;
      BK2DSRM        at 0 range 27 .. 27;
      BKBID          at 0 range 28 .. 28;
      BK2BID         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype TIM1_DCR_DBA_Field is HAL.UInt5;
   subtype TIM1_DCR_DBL_Field is HAL.UInt5;

   --  TIM1 DMA control register
   type TIM1_DCR_Register is record
      --  DMA base address This 5-bits vector defines the base-address for DMA
      --  transfers (when read/write access are done through the TIMx_DMAR
      --  address). DBA is defined as an offset starting from the address of
      --  the TIMx_CR1 register. Example: ...
      DBA            : TIM1_DCR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA burst length This 5-bit vector defines the length of DMA
      --  transfers (the timer recognizes a burst transfer when a read or a
      --  write access is done to the TIMx_DMAR address), i.e. the number of
      --  transfers. Transfers can be in half-words or in bytes (see example
      --  below). ... Example: Let us consider the following transfer: DBL = 7
      --  bytes & DBA = TIMx_CR1. If DBL = 7 bytes and DBA = TIMx_CR1
      --  represents the address of the byte to be transferred, the address of
      --  the transfer should be given by the following equation: (TIMx_CR1
      --  address) + DBA + (DMA index), where DMA index = DBL In this example,
      --  7 bytes are added to (TIMx_CR1 address) + DBA, which gives us the
      --  address from/to which the data is copied. In this case, the transfer
      --  is done to 7 registers starting from the following address: (TIMx_CR1
      --  address) + DBA According to the configuration of the DMA Data Size,
      --  several cases may occur: If the DMA Data Size is configured in
      --  half-words, 16-bit data is transferred to each of the 7 registers. If
      --  the DMA Data Size is configured in bytes, the data is also
      --  transferred to 7 registers: the first register contains the first MSB
      --  byte, the second register, the first LSB byte and so on. So with the
      --  transfer Timer, one also has to specify the size of data transferred
      --  by DMA.
      DBL            : TIM1_DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM1_DCR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype TIM1_CCMR3_OC5M1_Field is HAL.UInt3;
   subtype TIM1_CCMR3_OC6M1_Field is HAL.UInt3;

   --  TIM1 capture/compare mode register 3	
   type TIM1_CCMR3_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Output compare 5 fast enable Refer to OC1FE description.
      OC5FE          : Boolean := False;
      --  Output compare 5 preload enable Refer to OC1PE description.
      OC5PE          : Boolean := False;
      --  Output compare 5 mode Refer to OC1M description.
      OC5M1          : TIM1_CCMR3_OC5M1_Field := 16#0#;
      --  Output compare 5 clear enable Refer to OC1CE description.
      OC5CE          : Boolean := False;
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  Output compare 6 fast enable Refer to OC1FE description.
      OC6FE          : Boolean := False;
      --  Output compare 6 preload enable Refer to OC1PE description.
      OC6PE          : Boolean := False;
      --  Output compare 6 mode Refer to OC1M description.
      OC6M1          : TIM1_CCMR3_OC6M1_Field := 16#0#;
      --  Output compare 6 clear enable Refer to OC1CE description.
      OC6CE          : Boolean := False;
      --  Output compare 5 mode Refer to OC1M description.
      OC5M2          : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Output compare 6 mode Refer to OC1M description.
      OC6M2          : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCMR3_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      OC5FE          at 0 range 2 .. 2;
      OC5PE          at 0 range 3 .. 3;
      OC5M1          at 0 range 4 .. 6;
      OC5CE          at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      OC6FE          at 0 range 10 .. 10;
      OC6PE          at 0 range 11 .. 11;
      OC6M1          at 0 range 12 .. 14;
      OC6CE          at 0 range 15 .. 15;
      OC5M2          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC6M2          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype TIM1_CCR5_CCR5_Field is HAL.UInt16;

   --  TIM1_CCR5_GC5C array
   type TIM1_CCR5_GC5C_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for TIM1_CCR5_GC5C
   type TIM1_CCR5_GC5C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GC5C as a value
            Val : HAL.UInt3;
         when True =>
            --  GC5C as an array
            Arr : TIM1_CCR5_GC5C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for TIM1_CCR5_GC5C_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  TIM1 capture/compare register 5
   type TIM1_CCR5_Register is record
      --  Capture/Compare 5 value CCR5 is the value to be loaded in the actual
      --  capture/compare 5 register (preload value). It is loaded permanently
      --  if the preload feature is not selected in the TIMx_CCMR3 register
      --  (bit OC5PE). Else the preload value is copied in the active
      --  capture/compare 5 register when an update event occurs. The active
      --  capture/compare register contains the value to be compared to the
      --  counter TIMx_CNT and signaled on OC5 output.
      CCR5           : TIM1_CCR5_CCR5_Field := 16#0#;
      --  unspecified
      Reserved_16_28 : HAL.UInt13 := 16#0#;
      --  Group Channel 5 and Channel 1 Distortion on Channel 1 output: This
      --  bit can either have immediate effect or be preloaded and taken into
      --  account after an update event (if preload feature is selected in
      --  TIMxCCMR1). Note: it is also possible to apply this distortion on
      --  combined PWM signals.
      GC5C           : TIM1_CCR5_GC5C_Field :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCR5_Register use record
      CCR5           at 0 range 0 .. 15;
      Reserved_16_28 at 0 range 16 .. 28;
      GC5C           at 0 range 29 .. 31;
   end record;

   subtype TIM1_AF1_ETRSEL_Field is HAL.UInt4;

   --  TIM1 alternate function option register 1
   type TIM1_AF1_Register is record
      --  BRK BKIN input enable This bit enables the BKIN alternate function
      --  input for the timers BRK input. BKIN input is ORed with the other BRK
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKINE          : Boolean := True;
      --  unspecified
      Reserved_1_8   : HAL.UInt8 := 16#0#;
      --  BRK BKIN input polarity This bit selects the BKIN alternate function
      --  input sensitivity. It must be programmed together with the BKP
      --  polarity bit. Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      BKINP          : Boolean := False;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  ETR source selection These bits select the ETR input source. Others:
      --  Reserved Note: These bits can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      ETRSEL         : TIM1_AF1_ETRSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_AF1_Register use record
      BKINE          at 0 range 0 .. 0;
      Reserved_1_8   at 0 range 1 .. 8;
      BKINP          at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      ETRSEL         at 0 range 14 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  TIM1 Alternate function register 2
   type TIM1_AF2_Register is record
      --  BRK2 BKIN input enable This bit enables the BKIN2 alternate function
      --  input for the timers BRK2 input. BKIN2 input is ORed with the other
      --  BRK2 sources. Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      BK2INE         : Boolean := True;
      --  unspecified
      Reserved_1_8   : HAL.UInt8 := 16#0#;
      --  BRK2 BKIN2 input polarity This bit selects the BKIN2 alternate
      --  function input sensitivity. It must be programmed together with the
      --  BK2P polarity bit. Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      BK2INP         : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_AF2_Register use record
      BK2INE         at 0 range 0 .. 0;
      Reserved_1_8   at 0 range 1 .. 8;
      BK2INP         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype TIM1_TISEL_TI1SEL_Field is HAL.UInt4;
   subtype TIM1_TISEL_TI2SEL_Field is HAL.UInt4;
   subtype TIM1_TISEL_TI3SEL_Field is HAL.UInt4;
   subtype TIM1_TISEL_TI4SEL_Field is HAL.UInt4;

   --  TIM1 timer input selection register
   type TIM1_TISEL_Register is record
      --  selects TI1[0] to TI1[15] input Others: Reserved
      TI1SEL         : TIM1_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  selects TI2[0] to TI2[15] input Others: Reserved
      TI2SEL         : TIM1_TISEL_TI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  selects TI3[0] to TI3[15] input Others: Reserved
      TI3SEL         : TIM1_TISEL_TI3SEL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  selects TI4[0] to TI4[15] input Others: Reserved
      TI4SEL         : TIM1_TISEL_TI4SEL_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_TISEL_Register use record
      TI1SEL         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TI2SEL         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TI3SEL         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TI4SEL         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TIM3_CR1_CMS_Field is HAL.UInt2;
   subtype TIM3_CR1_CKD_Field is HAL.UInt2;

   --  TIM3 control register 1
   type TIM3_CR1_Register is record
      --  Counter enable Note: External clock, gated mode and encoder mode can
      --  work only if the CEN bit has been previously set by software. However
      --  trigger mode can set the CEN bit automatically by hardware. CEN is
      --  cleared automatically in one-pulse mode, when an update event occurs.
      CEN            : Boolean := False;
      --  Update disable This bit is set and cleared by software to
      --  enable/disable UEV event generation. Counter overflow/underflow
      --  Setting the UG bit Update generation through the slave mode
      --  controller Buffered registers are then loaded with their preload
      --  values.
      UDIS           : Boolean := False;
      --  Update request source This bit is set and cleared by software to
      --  select the UEV event sources. Counter overflow/underflow Setting the
      --  UG bit Update generation through the slave mode controller
      URS            : Boolean := False;
      --  One-pulse mode
      OPM            : Boolean := False;
      --  Direction Note: This bit is read only when the timer is configured in
      --  Center-aligned mode or Encoder mode.
      DIR            : Boolean := False;
      --  Center-aligned mode selection Note: It is not allowed to switch from
      --  edge-aligned mode to center-aligned mode as long as the counter is
      --  enabled (CEN=1)
      CMS            : TIM3_CR1_CMS_Field := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division This bit-field indicates the division ratio between
      --  the timer clock (CK_INT) frequency and sampling clock used by the
      --  digital filters (ETR, TIx),
      CKD            : TIM3_CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM3_CR1_Register use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      DIR            at 0 range 4 .. 4;
      CMS            at 0 range 5 .. 6;
      ARPE           at 0 range 7 .. 7;
      CKD            at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      UIFREMAP       at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype TIM3_CR2_MMS_Field is HAL.UInt3;

   --  TIM3 control register 2
   type TIM3_CR2_Register is record
      --  unspecified
      Reserved_0_2  : HAL.UInt3 := 16#0#;
      --  Capture/compare DMA selection
      CCDS          : Boolean := False;
      --  Master mode selection These bits permit to select the information to
      --  be sent in master mode to slave timers for synchronization (TRGO).
      --  The combination is as follows: When the Counter Enable signal is
      --  controlled by the trigger input, there is a delay on TRGO, except if
      --  the master/slave mode is selected (see the MSM bit description in
      --  TIMx_SMCR register). Note: The clock of the slave timer or ADC must
      --  be enabled prior to receive events from the master timer, and must
      --  not be changed on-the-fly while triggers are received from the master
      --  timer.
      MMS           : TIM3_CR2_MMS_Field := 16#0#;
      --  TI1 selection
      TI1S          : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM3_CR2_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      CCDS          at 0 range 3 .. 3;
      MMS           at 0 range 4 .. 6;
      TI1S          at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM3_SMCR_SMS1_Field is HAL.UInt3;
   subtype TIM3_SMCR_TS1_Field is HAL.UInt3;
   subtype TIM3_SMCR_ETF_Field is HAL.UInt4;
   subtype TIM3_SMCR_ETPS_Field is HAL.UInt2;
   subtype TIM3_SMCR_TS2_Field is HAL.UInt2;

   --  TIM3 slave mode control register
   type TIM3_SMCR_Register is record
      --  Slave mode selection When external signals are selected the active
      --  edge of the trigger signal (TRGI) is linked to the polarity selected
      --  on the external input (see Input Control register and Control
      --  Register description. reinitializes the counter, generates an update
      --  of the registers and starts the counter. Note: The gated mode must
      --  not be used if TI1F_ED is selected as the trigger input (TS=00100).
      --  Indeed, TI1F_ED outputs 1 pulse for each transition on TI1F, whereas
      --  the gated mode checks the level of the trigger signal. Note: The
      --  clock of the slave peripherals (timer, ADC, ...) receiving the TRGO
      --  or the TRGO2 signals must be enabled prior to receive events from the
      --  master timer, and the clock frequency (prescaler) must not be changed
      --  on-the-fly while triggers are received from the master timer.
      SMS1           : TIM3_SMCR_SMS1_Field := 16#0#;
      --  OCREF clear selection This bit is used to select the OCREF clear
      --  source
      OCCS           : Boolean := False;
      --  Trigger selection This bit-field selects the trigger input to be used
      --  to synchronize the counter. Others: Reserved See for more details on
      --  ITRx meaning for each Timer. Note: These bits must be changed only
      --  when they are not used (e.g. when SMS=000) to avoid wrong edge
      --  detections at the transition.
      TS1            : TIM3_SMCR_TS1_Field := 16#0#;
      --  Master/Slave mode
      MSM            : Boolean := False;
      --  External trigger filter This bit-field then defines the frequency
      --  used to sample ETRP signal and the length of the digital filter
      --  applied to ETRP. The digital filter is made of an event counter in
      --  which N consecutive events are needed to validate a transition on the
      --  output:
      ETF            : TIM3_SMCR_ETF_Field := 16#0#;
      --  External trigger prescaler External trigger signal ETRP frequency
      --  must be at most 1/4 of CK_INT frequency. A prescaler can be enabled
      --  to reduce ETRP frequency. It is useful when inputting fast external
      --  clocks.
      ETPS           : TIM3_SMCR_ETPS_Field := 16#0#;
      --  External clock enable This bit enables External clock mode 2. Note:
      --  Setting the ECE bit has the same effect as selecting external clock
      --  mode 1 with TRGI connected to ETRF (SMS=111 and TS=00111). It is
      --  possible to simultaneously use external clock mode 2 with the
      --  following slave modes: reset mode, gated mode and trigger mode.
      --  Nevertheless, TRGI must not be connected to ETRF in this case (TS
      --  bits must not be 00111). If external clock mode 1 and external clock
      --  mode 2 are enabled at the same time, the external clock input is
      --  ETRF.
      ECE            : Boolean := False;
      --  External trigger polarity This bit selects whether ETR or ETR is used
      --  for trigger operations
      ETP            : Boolean := False;
      --  Slave mode selection When external signals are selected the active
      --  edge of the trigger signal (TRGI) is linked to the polarity selected
      --  on the external input (see Input Control register and Control
      --  Register description. reinitializes the counter, generates an update
      --  of the registers and starts the counter. Note: The gated mode must
      --  not be used if TI1F_ED is selected as the trigger input (TS=00100).
      --  Indeed, TI1F_ED outputs 1 pulse for each transition on TI1F, whereas
      --  the gated mode checks the level of the trigger signal. Note: The
      --  clock of the slave peripherals (timer, ADC, ...) receiving the TRGO
      --  or the TRGO2 signals must be enabled prior to receive events from the
      --  master timer, and the clock frequency (prescaler) must not be changed
      --  on-the-fly while triggers are received from the master timer.
      SMS2           : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Trigger selection This bit-field selects the trigger input to be used
      --  to synchronize the counter. Others: Reserved See for more details on
      --  ITRx meaning for each Timer. Note: These bits must be changed only
      --  when they are not used (e.g. when SMS=000) to avoid wrong edge
      --  detections at the transition.
      TS2            : TIM3_SMCR_TS2_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_SMCR_Register use record
      SMS1           at 0 range 0 .. 2;
      OCCS           at 0 range 3 .. 3;
      TS1            at 0 range 4 .. 6;
      MSM            at 0 range 7 .. 7;
      ETF            at 0 range 8 .. 11;
      ETPS           at 0 range 12 .. 13;
      ECE            at 0 range 14 .. 14;
      ETP            at 0 range 15 .. 15;
      SMS2           at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      TS2            at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  TIM3 DMA/Interrupt enable register
   type TIM3_DIER_Register is record
      --  Update interrupt enable
      UIE            : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Capture/Compare 2 interrupt enable
      CC2IE          : Boolean := False;
      --  Capture/Compare 3 interrupt enable
      CC3IE          : Boolean := False;
      --  Capture/Compare 4 interrupt enable
      CC4IE          : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Trigger interrupt enable
      TIE            : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Update DMA request enable
      UDE            : Boolean := False;
      --  Capture/Compare 1 DMA request enable
      CC1DE          : Boolean := False;
      --  Capture/Compare 2 DMA request enable
      CC2DE          : Boolean := False;
      --  Capture/Compare 3 DMA request enable
      CC3DE          : Boolean := False;
      --  Capture/Compare 4 DMA request enable
      CC4DE          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Trigger DMA request enable
      TDE            : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM3_DIER_Register use record
      UIE            at 0 range 0 .. 0;
      CC1IE          at 0 range 1 .. 1;
      CC2IE          at 0 range 2 .. 2;
      CC3IE          at 0 range 3 .. 3;
      CC4IE          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      TIE            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      UDE            at 0 range 8 .. 8;
      CC1DE          at 0 range 9 .. 9;
      CC2DE          at 0 range 10 .. 10;
      CC3DE          at 0 range 11 .. 11;
      CC4DE          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TDE            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   --  TIM3 status register
   type TIM3_SR_Register is record
      --  Update interrupt flag This bit is set by hardware on an update event.
      --  It is cleared by software. At overflow or underflow and if UDIS=0 in
      --  the TIMx_CR1 register. When CNT is reinitialized by software using
      --  the UG bit in TIMx_EGR register, if URS=0 and UDIS=0 in the TIMx_CR1
      --  register. When CNT is reinitialized by a trigger event (refer to the
      --  synchro control register description), if URS=0 and UDIS=0 in the
      --  TIMx_CR1 register.
      UIF            : Boolean := False;
      --  Capture/compare 1 interrupt flag This flag is set by hardware. It is
      --  cleared by software (input capture or output compare mode) or by
      --  reading the TIMx_CCR1 register (input capture mode only). If channel
      --  CC1 is configured as output: this flag is set when the content of the
      --  counter TIMx_CNT matches the content of the TIMx_CCR1 register. When
      --  the content of TIMx_CCR1 is greater than the content of TIMx_ARR, the
      --  CC1IF bit goes high on the counter overflow (in up-counting and
      --  up/down-counting modes) or underflow (in down-counting mode). There
      --  are 3 possible options for flag setting in center-aligned mode, refer
      --  to the CMS bits in the TIMx_CR1 register for the full description. If
      --  channel CC1 is configured as input: this bit is set when counter
      --  value has been captured in TIMx_CCR1 register (an edge has been
      --  detected on IC1, as per the edge sensitivity defined with the CC1P
      --  and CC1NP bits setting, in TIMx_CCER).
      CC1IF          : Boolean := False;
      --  Capture/Compare 2 interrupt flag Refer to CC1IF description
      CC2IF          : Boolean := False;
      --  Capture/Compare 3 interrupt flag Refer to CC1IF description
      CC3IF          : Boolean := False;
      --  Capture/Compare 4 interrupt flag Refer to CC1IF description
      CC4IF          : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Trigger interrupt flag This flag is set by hardware on the TRG
      --  trigger event (active edge detected on TRGI input when the slave mode
      --  controller is enabled in all modes but gated mode. It is set when the
      --  counter starts or stops when gated mode is selected. It is cleared by
      --  software.
      TIF            : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Capture/Compare 1 overcapture flag This flag is set by hardware only
      --  when the corresponding channel is configured in input capture mode.
      --  It is cleared by software by writing it to 0.
      CC1OF          : Boolean := False;
      --  Capture/compare 2 overcapture flag refer to CC1OF description
      CC2OF          : Boolean := False;
      --  Capture/Compare 3 overcapture flag refer to CC1OF description
      CC3OF          : Boolean := False;
      --  Capture/Compare 4 overcapture flag refer to CC1OF description
      CC4OF          : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM3_SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      CC2IF          at 0 range 2 .. 2;
      CC3IF          at 0 range 3 .. 3;
      CC4IF          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      TIF            at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      CC1OF          at 0 range 9 .. 9;
      CC2OF          at 0 range 10 .. 10;
      CC3OF          at 0 range 11 .. 11;
      CC4OF          at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   --  TIM3 event generation register
   type TIM3_EGR_Register is record
      --  Write-only. Update generation This bit can be set by software, it is
      --  automatically cleared by hardware.
      UG            : Boolean := False;
      --  Write-only. Capture/compare 1 generation This bit is set by software
      --  in order to generate an event, it is automatically cleared by
      --  hardware. If channel CC1 is configured as output: CC1IF flag is set,
      --  Corresponding interrupt or DMA request is sent if enabled. If channel
      --  CC1 is configured as input: The current value of the counter is
      --  captured in TIMx_CCR1 register. The CC1IF flag is set, the
      --  corresponding interrupt or DMA request is sent if enabled. The CC1OF
      --  flag is set if the CC1IF flag was already high.
      CC1G          : Boolean := False;
      --  Write-only. Capture/compare 2 generation Refer to CC1G description
      CC2G          : Boolean := False;
      --  Write-only. Capture/compare 3 generation Refer to CC1G description
      CC3G          : Boolean := False;
      --  Write-only. Capture/compare 4 generation Refer to CC1G description
      CC4G          : Boolean := False;
      --  unspecified
      Reserved_5_5  : HAL.Bit := 16#0#;
      --  Write-only. Trigger generation This bit is set by software in order
      --  to generate an event, it is automatically cleared by hardware.
      TG            : Boolean := False;
      --  unspecified
      Reserved_7_15 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM3_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      CC3G          at 0 range 3 .. 3;
      CC4G          at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   subtype TIM3_CCMR1_input_CC1S_Field is HAL.UInt2;
   subtype TIM3_CCMR1_input_IC1PSC_Field is HAL.UInt2;
   subtype TIM3_CCMR1_input_IC1F_Field is HAL.UInt4;
   subtype TIM3_CCMR1_input_CC2S_Field is HAL.UInt2;
   subtype TIM3_CCMR1_input_IC2PSC_Field is HAL.UInt2;
   subtype TIM3_CCMR1_input_IC2F_Field is HAL.UInt4;

   --  TIM3 capture/compare mode register 1 [alternate]
   type TIM3_CCMR1_input_Register is record
      --  Capture/Compare 1 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC1S bits
      --  are writable only when the channel is OFF (CC1E = 0 in TIMx_CCER).
      CC1S           : TIM3_CCMR1_input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler This bit-field defines the ratio of the
      --  prescaler acting on CC1 input (IC1). The prescaler is reset as soon
      --  as CC1E=0 (TIMx_CCER register).
      IC1PSC         : TIM3_CCMR1_input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter This bit-field defines the frequency used to
      --  sample TI1 input and the length of the digital filter applied to TI1.
      --  The digital filter is made of an event counter in which N consecutive
      --  events are needed to validate a transition on the output:
      IC1F           : TIM3_CCMR1_input_IC1F_Field := 16#0#;
      --  Capture/compare 2 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC2S bits
      --  are writable only when the channel is OFF (CC2E = 0 in TIMx_CCER).
      CC2S           : TIM3_CCMR1_input_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : TIM3_CCMR1_input_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : TIM3_CCMR1_input_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_CCMR1_input_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM3_CCMR1_output_CC1S_Field is HAL.UInt2;
   subtype TIM3_CCMR1_output_OC1M1_Field is HAL.UInt3;
   subtype TIM3_CCMR1_output_CC2S_Field is HAL.UInt2;
   subtype TIM3_CCMR1_output_OC2M1_Field is HAL.UInt3;

   --  TIM3 capture/compare mode register 1 [alternate]
   type TIM3_CCMR1_output_Register is record
      --  Capture/Compare 1 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC1S bits
      --  are writable only when the channel is OFF (CC1E = 0 in TIMx_CCER).
      CC1S           : TIM3_CCMR1_output_CC1S_Field := 16#0#;
      --  Output compare 1 fast enable This bit decreases the latency between a
      --  trigger event and a transition on the timer output. It must be used
      --  in one-pulse mode (OPM bit set in TIMx_CR1 register), to have the
      --  output pulse starting as soon as possible after the starting trigger.
      OC1FE          : Boolean := False;
      --  Output compare 1 preload enable Note: The PWM mode can be used
      --  without validating the preload register only in one-pulse mode (OPM
      --  bit set in TIMx_CR1 register). Else the behavior is not guaranteed.
      OC1PE          : Boolean := False;
      --  Output compare 1 mode These bits define the behavior of the output
      --  reference signal OC1REF from which OC1 and OC1N are derived. OC1REF
      --  is active high whereas OC1 and OC1N active level depends on CC1P and
      --  CC1NP bits. Note: In PWM mode, the OCREF level changes only when the
      --  result of the comparison changes or when the output compare mode
      --  switches from frozen mode to PWM mode. Note: The OC1M[3] bit is not
      --  contiguous, located in bit 16.
      OC1M1          : TIM3_CCMR1_output_OC1M1_Field := 16#0#;
      --  Output compare 1 clear enable
      OC1CE          : Boolean := False;
      --  Capture/Compare 2 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC2S bits
      --  are writable only when the channel is OFF (CC2E = 0 in TIMx_CCER).
      CC2S           : TIM3_CCMR1_output_CC2S_Field := 16#0#;
      --  Output compare 2 fast enable
      OC2FE          : Boolean := False;
      --  Output compare 2 preload enable
      OC2PE          : Boolean := False;
      --  Output compare 2 mode refer to OC1M description on bits 6:4
      OC2M1          : TIM3_CCMR1_output_OC2M1_Field := 16#0#;
      --  Output compare 2 clear enable
      OC2CE          : Boolean := False;
      --  Output compare 1 mode These bits define the behavior of the output
      --  reference signal OC1REF from which OC1 and OC1N are derived. OC1REF
      --  is active high whereas OC1 and OC1N active level depends on CC1P and
      --  CC1NP bits. Note: In PWM mode, the OCREF level changes only when the
      --  result of the comparison changes or when the output compare mode
      --  switches from frozen mode to PWM mode. Note: The OC1M[3] bit is not
      --  contiguous, located in bit 16.
      OC1M2          : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Output compare 2 mode refer to OC1M description on bits 6:4
      OC2M2          : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_CCMR1_output_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M1          at 0 range 4 .. 6;
      OC1CE          at 0 range 7 .. 7;
      CC2S           at 0 range 8 .. 9;
      OC2FE          at 0 range 10 .. 10;
      OC2PE          at 0 range 11 .. 11;
      OC2M1          at 0 range 12 .. 14;
      OC2CE          at 0 range 15 .. 15;
      OC1M2          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC2M2          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype TIM3_CCMR2_input_CC3S_Field is HAL.UInt2;
   subtype TIM3_CCMR2_input_IC3PSC_Field is HAL.UInt2;
   subtype TIM3_CCMR2_input_IC3F_Field is HAL.UInt4;
   subtype TIM3_CCMR2_input_CC4S_Field is HAL.UInt2;
   subtype TIM3_CCMR2_input_IC4PSC_Field is HAL.UInt2;
   subtype TIM3_CCMR2_input_IC4F_Field is HAL.UInt4;

   --  TIM3 capture/compare mode register 2 [alternate]
   type TIM3_CCMR2_input_Register is record
      --  Capture/Compare 3 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC3S bits
      --  are writable only when the channel is OFF (CC3E = 0 in TIMx_CCER).
      CC3S           : TIM3_CCMR2_input_CC3S_Field := 16#0#;
      --  Input capture 3 prescaler
      IC3PSC         : TIM3_CCMR2_input_IC3PSC_Field := 16#0#;
      --  Input capture 3 filter
      IC3F           : TIM3_CCMR2_input_IC3F_Field := 16#0#;
      --  Capture/Compare 4 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC4S bits
      --  are writable only when the channel is OFF (CC4E = 0 in TIMx_CCER).
      CC4S           : TIM3_CCMR2_input_CC4S_Field := 16#0#;
      --  Input capture 4 prescaler
      IC4PSC         : TIM3_CCMR2_input_IC4PSC_Field := 16#0#;
      --  Input capture 4 filter
      IC4F           : TIM3_CCMR2_input_IC4F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_CCMR2_input_Register use record
      CC3S           at 0 range 0 .. 1;
      IC3PSC         at 0 range 2 .. 3;
      IC3F           at 0 range 4 .. 7;
      CC4S           at 0 range 8 .. 9;
      IC4PSC         at 0 range 10 .. 11;
      IC4F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM3_CCMR2_output_CC3S_Field is HAL.UInt2;
   subtype TIM3_CCMR2_output_OC3M1_Field is HAL.UInt3;
   subtype TIM3_CCMR2_output_CC4S_Field is HAL.UInt2;
   subtype TIM3_CCMR2_output_OC4M1_Field is HAL.UInt3;

   --  TIM3 capture/compare mode register 2 [alternate]
   type TIM3_CCMR2_output_Register is record
      --  Capture/Compare 3 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC3S bits
      --  are writable only when the channel is OFF (CC3E = 0 in TIMx_CCER).
      CC3S           : TIM3_CCMR2_output_CC3S_Field := 16#0#;
      --  Output compare 3 fast enable
      OC3FE          : Boolean := False;
      --  Output compare 3 preload enable
      OC3PE          : Boolean := False;
      --  Output compare 3 mode Refer to OC1M description (bits 6:4 in
      --  TIMx_CCMR1 register)
      OC3M1          : TIM3_CCMR2_output_OC3M1_Field := 16#0#;
      --  Output compare 3 clear enable
      OC3CE          : Boolean := False;
      --  Capture/Compare 4 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC4S bits
      --  are writable only when the channel is OFF (CC4E = 0 in TIMx_CCER).
      CC4S           : TIM3_CCMR2_output_CC4S_Field := 16#0#;
      --  Output compare 4 fast enable
      OC4FE          : Boolean := False;
      --  Output compare 4 preload enable
      OC4PE          : Boolean := False;
      --  Output compare 4 mode Refer to OC1M description (bits 6:4 in
      --  TIMx_CCMR1 register)
      OC4M1          : TIM3_CCMR2_output_OC4M1_Field := 16#0#;
      --  Output compare 4 clear enable
      OC4CE          : Boolean := False;
      --  Output compare 3 mode Refer to OC1M description (bits 6:4 in
      --  TIMx_CCMR1 register)
      OC3M2          : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Output compare 4 mode Refer to OC1M description (bits 6:4 in
      --  TIMx_CCMR1 register)
      OC4M2          : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_CCMR2_output_Register use record
      CC3S           at 0 range 0 .. 1;
      OC3FE          at 0 range 2 .. 2;
      OC3PE          at 0 range 3 .. 3;
      OC3M1          at 0 range 4 .. 6;
      OC3CE          at 0 range 7 .. 7;
      CC4S           at 0 range 8 .. 9;
      OC4FE          at 0 range 10 .. 10;
      OC4PE          at 0 range 11 .. 11;
      OC4M1          at 0 range 12 .. 14;
      OC4CE          at 0 range 15 .. 15;
      OC3M2          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC4M2          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  TIM3 capture/compare enable register	
   type TIM3_CCER_Register is record
      --  Capture/Compare 1 output enable.
      CC1E           : Boolean := False;
      --  Capture/Compare 1 output Polarity. When CC1 channel is configured as
      --  input, both CC1NP/CC1P bits select the active polarity of TI1FP1 and
      --  TI2FP1 for trigger or capture operations. CC1NP=0,
      --  CC1P=0:	non-inverted/rising edge. The circuit is sensitive to TIxFP1
      --  rising edge (capture or trigger operations in reset, external clock
      --  or trigger mode), TIxFP1 is not inverted (trigger operation in gated
      --  mode or encoder mode). CC1NP=0, CC1P=1:	inverted/falling edge. The
      --  circuit is sensitive to TIxFP1 falling edge (capture or trigger
      --  operations in reset, external clock or trigger mode), TIxFP1 is
      --  inverted (trigger operation in gated mode or encoder mode). CC1NP=1,
      --  CC1P=1:	non-inverted/both edges. The circuit is sensitive to both
      --  TIxFP1 rising and falling edges (capture or trigger operations in
      --  reset, external clock or trigger mode), TIxFP1is not inverted
      --  (trigger operation in gated mode). This configuration must not be
      --  used in encoder mode. CC1NP=1, CC1P=0:	This configuration is
      --  reserved, it must not be used.
      CC1P           : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Capture/Compare 1 output Polarity. CC1 channel configured as output:
      --  CC1NP must be kept cleared in this case. CC1 channel configured as
      --  input: This bit is used in conjunction with CC1P to define
      --  TI1FP1/TI2FP1 polarity. refer to CC1P description.
      CC1NP          : Boolean := False;
      --  Capture/Compare 2 output enable. Refer to CC1E description
      CC2E           : Boolean := False;
      --  Capture/Compare 2 output Polarity. refer to CC1P description
      CC2P           : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Capture/Compare 2 output Polarity. Refer to CC1NP description
      CC2NP          : Boolean := False;
      --  Capture/Compare 3 output enable. Refer to CC1E description
      CC3E           : Boolean := False;
      --  Capture/Compare 3 output Polarity. Refer to CC1P description
      CC3P           : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Capture/Compare 3 output Polarity. Refer to CC1NP description
      CC3NP          : Boolean := False;
      --  Capture/Compare 4 output enable. refer to CC1E description
      CC4E           : Boolean := False;
      --  Capture/Compare 4 output Polarity. Refer to CC1P description
      CC4P           : Boolean := False;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Capture/Compare 4 output Polarity. Refer to CC1NP description
      CC4NP          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM3_CCER_Register use record
      CC1E           at 0 range 0 .. 0;
      CC1P           at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      CC1NP          at 0 range 3 .. 3;
      CC2E           at 0 range 4 .. 4;
      CC2P           at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      CC2NP          at 0 range 7 .. 7;
      CC3E           at 0 range 8 .. 8;
      CC3P           at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      CC3NP          at 0 range 11 .. 11;
      CC4E           at 0 range 12 .. 12;
      CC4P           at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      CC4NP          at 0 range 15 .. 15;
   end record;

   subtype TIM3_CNT_CNT_Field is HAL.UInt16;

   --  TIM3 counter [alternate]
   type TIM3_CNT_Register is record
      --  counter value
      CNT            : TIM3_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM3_CNT_alternate_CNT_Field is HAL.UInt16;

   --  TIM3 counter [alternate]
   type TIM3_CNT_alternate_Register is record
      --  counter value
      CNT            : TIM3_CNT_alternate_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  UIF Copy This bit is a read-only copy of the UIF bit of the TIMx_ISR
      --  register
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_CNT_alternate_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM3_ARR_ARR_Field is HAL.UInt16;

   --  TIM3 auto-reload register
   type TIM3_ARR_Register is record
      --  Auto-reload value ARR is the value to be loaded in the actual
      --  auto-reload register. Refer to the for more details about ARR update
      --  and behavior. The counter is blocked while the auto-reload value is
      --  null.
      ARR            : TIM3_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#FFFF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_ARR_Register use record
      ARR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM3_CCR1_CCR1_Field is HAL.UInt16;

   --  TIM3 capture/compare register 1
   type TIM3_CCR1_Register is record
      --  Capture/Compare 1 value If channel CC1 is configured as output: CCR1
      --  is the value to be loaded in the actual capture/compare 1 register
      --  (preload value). It is loaded permanently if the preload feature is
      --  not selected in the TIMx_CCMR1 register (bit OC1PE). Else the preload
      --  value is copied in the active capture/compare 1 register when an
      --  update event occurs. The active capture/compare register contains the
      --  value to be compared to the counter TIMx_CNT and signaled on OC1
      --  output. If channel CC1is configured as input: CCR1 is the counter
      --  value transferred by the last input capture 1 event (IC1). The
      --  TIMx_CCR1 register is read-only and cannot be programmed.
      CCR1           : TIM3_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_CCR1_Register use record
      CCR1           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM3_CCR2_CCR2_Field is HAL.UInt16;

   --  TIM3 capture/compare register 2
   type TIM3_CCR2_Register is record
      --  Capture/Compare 2 value If channel CC2 is configured as output: CCR2
      --  is the value to be loaded in the actual capture/compare 2 register
      --  (preload value). It is loaded permanently if the preload feature is
      --  not selected in the TIMx_CCMR1 register (bit OC2PE). Else the preload
      --  value is copied in the active capture/compare 2 register when an
      --  update event occurs. The active capture/compare register contains the
      --  value to be compared to the counter TIMx_CNT and signalled on OC2
      --  output. If channel CC2 is configured as input: CCR2 is the counter
      --  value transferred by the last input capture 2 event (IC2). The
      --  TIMx_CCR2 register is read-only and cannot be programmed.
      CCR2           : TIM3_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_CCR2_Register use record
      CCR2           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM3_CCR3_CCR3_Field is HAL.UInt16;

   --  TIM3 capture/compare register 3
   type TIM3_CCR3_Register is record
      --  Capture/Compare value If channel CC3 is configured as output: CCR3 is
      --  the value to be loaded in the actual capture/compare 3 register
      --  (preload value). It is loaded permanently if the preload feature is
      --  not selected in the TIMx_CCMR2 register (bit OC3PE). Else the preload
      --  value is copied in the active capture/compare 3 register when an
      --  update event occurs. The active capture/compare register contains the
      --  value to be compared to the counter TIMx_CNT and signalled on OC3
      --  output. If channel CC3is configured as input: CCR3 is the counter
      --  value transferred by the last input capture 3 event (IC3). The
      --  TIMx_CCR3 register is read-only and cannot be programmed.
      CCR3           : TIM3_CCR3_CCR3_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_CCR3_Register use record
      CCR3           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM3_CCR4_CCR4_Field is HAL.UInt16;

   --  TIM3 capture/compare register 4
   type TIM3_CCR4_Register is record
      --  Capture/Compare value if CC4 channel is configured as output (CC4S
      --  bits): CCR4 is the value to be loaded in the actual capture/compare 4
      --  register (preload value). It is loaded permanently if the preload
      --  feature is not selected in the TIMx_CCMR2 register (bit OC4PE). Else
      --  the preload value is copied in the active capture/compare 4 register
      --  when an update event occurs. The active capture/compare register
      --  contains the value to be compared to the counter TIMx_CNT and
      --  signalled on OC4 output. if CC4 channel is configured as input (CC4S
      --  bits in TIMx_CCMR4 register): CCR4 is the counter value transferred
      --  by the last input capture 4 event (IC4). The TIMx_CCR4 register is
      --  read-only and cannot be programmed.
      CCR4           : TIM3_CCR4_CCR4_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_CCR4_Register use record
      CCR4           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM3_DCR_DBA_Field is HAL.UInt5;
   subtype TIM3_DCR_DBL_Field is HAL.UInt5;

   --  TIM3 DMA control register
   type TIM3_DCR_Register is record
      --  DMA base address This 5-bit vector defines the base-address for DMA
      --  transfers (when read/write access are done through the TIMx_DMAR
      --  address). DBA is defined as an offset starting from the address of
      --  the TIMx_CR1 register. Example: ... Example: Let us consider the
      --  following transfer: DBL = 7 transfers & DBA = TIMx_CR1. In this case
      --  the transfer is done to/from 7 registers starting from the TIMx_CR1
      --  address.
      DBA            : TIM3_DCR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA burst length This 5-bit vector defines the number of DMA
      --  transfers (the timer recognizes a burst transfer when a read or a
      --  write access is done to the TIMx_DMAR address). ...
      DBL            : TIM3_DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM3_DCR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype TIM3_AF1_ETRSEL_Field is HAL.UInt4;

   --  TIM3 alternate function option register 1
   type TIM3_AF1_Register is record
      --  unspecified
      Reserved_0_13  : HAL.UInt14 := 16#0#;
      --  ETR source selection These bits select the ETR input source. Others:
      --  Reserved
      ETRSEL         : TIM3_AF1_ETRSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_AF1_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      ETRSEL         at 0 range 14 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TIM3_TISEL_TI1SEL_Field is HAL.UInt4;
   subtype TIM3_TISEL_TI2SEL_Field is HAL.UInt4;
   subtype TIM3_TISEL_TI3SEL_Field is HAL.UInt4;

   --  TIM3 timer input selection register
   type TIM3_TISEL_Register is record
      --  TI1[0] to TI1[15] input selection These bits select the TI1[0] to
      --  TI1[15] input source. Others: Reserved
      TI1SEL         : TIM3_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  TI2[0] to TI2[15] input selection These bits select the TI2[0] to
      --  TI2[15] input source. Others: Reserved
      TI2SEL         : TIM3_TISEL_TI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  TI3[0] to TI3[15] input selection These bits select the TI3[0] to
      --  TI3[15] input source. Others: Reserved
      TI3SEL         : TIM3_TISEL_TI3SEL_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM3_TISEL_Register use record
      TI1SEL         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TI2SEL         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TI3SEL         at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM14_CR1_CKD_Field is HAL.UInt2;

   --  TIM14 control register 1
   type TIM14_CR1_Register is record
      --  Counter enable Note: External clock and gated mode can work only if
      --  the CEN bit has been previously set by software. However trigger mode
      --  can set the CEN bit automatically by hardware.
      CEN            : Boolean := False;
      --  Update disable This bit is set and cleared by software to
      --  enable/disable update interrupt (UEV) event generation. Counter
      --  overflow Setting the UG bit. Buffered registers are then loaded with
      --  their preload values.
      UDIS           : Boolean := False;
      --  Update request source This bit is set and cleared by software to
      --  select the update interrupt (UEV) sources. Counter overflow Setting
      --  the UG bit
      URS            : Boolean := False;
      --  One-pulse mode
      OPM            : Boolean := False;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division This bit-field indicates the division ratio between
      --  the timer clock (CK_INT) frequency and sampling clock used by the
      --  digital filters (TIx),
      CKD            : TIM14_CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM14_CR1_Register use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      ARPE           at 0 range 7 .. 7;
      CKD            at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      UIFREMAP       at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   --  TIM14 Interrupt enable register
   type TIM14_DIER_Register is record
      --  Update interrupt enable
      UIE           : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC1IE         : Boolean := False;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM14_DIER_Register use record
      UIE           at 0 range 0 .. 0;
      CC1IE         at 0 range 1 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   --  TIM14 status register
   type TIM14_SR_Register is record
      --  Update interrupt flag This bit is set by hardware on an update event.
      --  It is cleared by software. At overflow and if UDIS=0 in the TIMx_CR1
      --  register. When CNT is reinitialized by software using the UG bit in
      --  TIMx_EGR register, if URS=0 and UDIS=0 in the TIMx_CR1 register.
      UIF            : Boolean := False;
      --  Capture/compare 1 interrupt flag This flag is set by hardware. It is
      --  cleared by software (input capture or output compare mode) or by
      --  reading the TIMx_CCR1 register (input capture mode only). If channel
      --  CC1 is configured as output: this flag is set when he content of the
      --  counter TIMx_CNT matches the content of the TIMx_CCR1 register. When
      --  the content of TIMx_CCR1 is greater than the content of TIMx_ARR, the
      --  CC1IF bit goes high on the counter overflow (in up-counting and
      --  up/down-counting modes) or underflow (in down-counting mode). There
      --  are 3 possible options for flag setting in center-aligned mode, refer
      --  to the CMS bits in the TIMx_CR1 register for the full description. If
      --  channel CC1 is configured as input: this bit is set when counter
      --  value has been captured in TIMx_CCR1 register (an edge has been
      --  detected on IC1, as per the edge sensitivity defined with the CC1P
      --  and CC1NP bits setting, in TIMx_CCER).
      CC1IF          : Boolean := False;
      --  unspecified
      Reserved_2_8   : HAL.UInt7 := 16#0#;
      --  Capture/Compare 1 overcapture flag This flag is set by hardware only
      --  when the corresponding channel is configured in input capture mode.
      --  It is cleared by software by writing it to 0.
      CC1OF          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM14_SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      Reserved_2_8   at 0 range 2 .. 8;
      CC1OF          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  TIM14 event generation register
   type TIM14_EGR_Register is record
      --  Write-only. Update generation This bit can be set by software, it is
      --  automatically cleared by hardware.
      UG            : Boolean := False;
      --  Write-only. Capture/compare 1 generation This bit is set by software
      --  in order to generate an event, it is automatically cleared by
      --  hardware. If channel CC1 is configured as output: CC1IF flag is set,
      --  Corresponding interrupt or is sent if enabled. If channel CC1 is
      --  configured as input: The current value of the counter is captured in
      --  TIMx_CCR1 register. The CC1IF flag is set, the corresponding
      --  interrupt is sent if enabled. The CC1OF flag is set if the CC1IF flag
      --  was already high.
      CC1G          : Boolean := False;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM14_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   subtype TIM14_CCMR1_input_CC1S_Field is HAL.UInt2;
   subtype TIM14_CCMR1_input_IC1PSC_Field is HAL.UInt2;
   subtype TIM14_CCMR1_input_IC1F_Field is HAL.UInt4;

   --  TIM14 capture/compare mode register 1 [alternate]
   type TIM14_CCMR1_input_Register is record
      --  Capture/Compare 1 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC1S bits
      --  are writable only when the channel is OFF (CC1E = 0 in TIMx_CCER).
      CC1S          : TIM14_CCMR1_input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler This bit-field defines the ratio of the
      --  prescaler acting on CC1 input (IC1). The prescaler is reset as soon
      --  as CC1E=0 (TIMx_CCER register).
      IC1PSC        : TIM14_CCMR1_input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter This bit-field defines the frequency used to
      --  sample TI1 input and the length of the digital filter applied to TI1.
      --  The digital filter is made of an event counter in which N consecutive
      --  events are needed to validate a transition on the output:
      IC1F          : TIM14_CCMR1_input_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM14_CCMR1_input_Register use record
      CC1S          at 0 range 0 .. 1;
      IC1PSC        at 0 range 2 .. 3;
      IC1F          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIM14_CCMR1_output_CC1S_Field is HAL.UInt2;
   subtype TIM14_CCMR1_output_OC1M1_Field is HAL.UInt3;

   --  TIM14 capture/compare mode register 1 [alternate]
   type TIM14_CCMR1_output_Register is record
      --  Capture/Compare 1 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC1S bits
      --  are writable only when the channel is OFF (CC1E = 0 in TIMx_CCER).
      CC1S           : TIM14_CCMR1_output_CC1S_Field := 16#0#;
      --  Output compare 1 fast enable This bit decreases the latency between a
      --  trigger event and a transition on the timer output. It must be used
      --  in one-pulse mode (OPM bit set in TIMx_CR1 register), to have the
      --  output pulse starting as soon as possible after the starting trigger.
      OC1FE          : Boolean := False;
      --  Output compare 1 preload enable Note: The PWM mode can be used
      --  without validating the preload register only in one pulse mode (OPM
      --  bit set in TIMx_CR1 register). Else the behavior is not guaranteed.
      OC1PE          : Boolean := False;
      --  Output compare 1 mode (refer to bit 16 for OC1M[3]) These bits define
      --  the behavior of the output reference signal OC1REF from which OC1 is
      --  derived. OC1REF is active high whereas OC1 active level depends on
      --  CC1P bit. Others: Reserved Note: In PWM mode 1 or 2, the OCREF level
      --  changes when the result of the comparison changes or when the output
      --  compare mode switches from frozen to PWM mode. Note: The OC1M[3] bit
      --  is not contiguous, located in bit 16.
      OC1M1          : TIM14_CCMR1_output_OC1M1_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Output compare 1 mode (refer to bit 16 for OC1M[3]) These bits define
      --  the behavior of the output reference signal OC1REF from which OC1 is
      --  derived. OC1REF is active high whereas OC1 active level depends on
      --  CC1P bit. Others: Reserved Note: In PWM mode 1 or 2, the OCREF level
      --  changes when the result of the comparison changes or when the output
      --  compare mode switches from frozen to PWM mode. Note: The OC1M[3] bit
      --  is not contiguous, located in bit 16.
      OC1M2          : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM14_CCMR1_output_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M1          at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      OC1M2          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  TIM14 capture/compare enable register
   type TIM14_CCER_Register is record
      --  Capture/Compare 1 output enable.
      CC1E          : Boolean := False;
      --  Capture/Compare 1 output Polarity. When CC1 channel is configured as
      --  input, both CC1NP/CC1P bits select the active polarity of TI1FP1 and
      --  TI2FP1 for trigger or capture operations. CC1NP=0,
      --  CC1P=0:	non-inverted/rising edge. The circuit is sensitive to TIxFP1
      --  rising edge (capture or trigger operations in reset, external clock
      --  or trigger mode), TIxFP1 is not inverted (trigger operation in gated
      --  mode or encoder mode). CC1NP=0, CC1P=1:	inverted/falling edge. The
      --  circuit is sensitive to TIxFP1 falling edge (capture or trigger
      --  operations in reset, external clock or trigger mode), TIxFP1 is
      --  inverted (trigger operation in gated mode or encoder mode). CC1NP=1,
      --  CC1P=1:	non-inverted/both edges/ The circuit is sensitive to both
      --  TIxFP1 rising and falling edges (capture or trigger operations in
      --  reset, external clock or trigger mode), TIxFP1is not inverted
      --  (trigger operation in gated mode). This configuration must not be
      --  used in encoder mode. CC1NP=1, CC1P=0:	This configuration is
      --  reserved, it must not be used.
      CC1P          : Boolean := False;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Capture/Compare 1 complementary output Polarity. CC1 channel
      --  configured as output: CC1NP must be kept cleared. CC1 channel
      --  configured as input: CC1NP bit is used in conjunction with CC1P to
      --  define TI1FP1 polarity (refer to CC1P description).
      CC1NP         : Boolean := False;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM14_CCER_Register use record
      CC1E          at 0 range 0 .. 0;
      CC1P          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      CC1NP         at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype TIM14_CNT_CNT_Field is HAL.UInt16;

   --  TIM14 counter
   type TIM14_CNT_Register is record
      --  Counter value
      CNT            : TIM14_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  UIF Copy This bit is a read-only copy of the UIF bit in the TIMx_ISR
      --  register.
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM14_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM14_TISEL_TI1SEL_Field is HAL.UInt4;

   --  TIM14 timer input selection register
   type TIM14_TISEL_Register is record
      --  selects TI1[0] to TI1[15] input Others: Reserved
      TI1SEL        : TIM14_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM14_TISEL_Register use record
      TI1SEL        at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype TIM16_CR1_CKD_Field is HAL.UInt2;

   --  TIM16 control register 1
   type TIM16_CR1_Register is record
      --  Counter enable Note: External clock and gated mode can work only if
      --  the CEN bit has been previously set by software. However trigger mode
      --  can set the CEN bit automatically by hardware.
      CEN            : Boolean := False;
      --  Update disable This bit is set and cleared by software to
      --  enable/disable UEV event generation. Counter overflow/underflow
      --  Setting the UG bit Update generation through the slave mode
      --  controller Buffered registers are then loaded with their preload
      --  values.
      UDIS           : Boolean := False;
      --  Update request source This bit is set and cleared by software to
      --  select the UEV event sources. Counter overflow/underflow Setting the
      --  UG bit Update generation through the slave mode controller
      URS            : Boolean := False;
      --  One pulse mode
      OPM            : Boolean := False;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division This bit-field indicates the division ratio between
      --  the timer clock (CK_INT) frequency and the dead-time and sampling
      --  clock (tDTS)used by the dead-time generators and the digital filters
      --  (TIx),
      CKD            : TIM16_CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM16_CR1_Register use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      ARPE           at 0 range 7 .. 7;
      CKD            at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      UIFREMAP       at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   --  TIM16 control register 2
   type TIM16_CR2_Register is record
      --  Capture/compare preloaded control Note: This bit acts only on
      --  channels that have a complementary output.
      CCPC           : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Capture/compare control update selection Note: This bit acts only on
      --  channels that have a complementary output.
      CCUS           : Boolean := False;
      --  Capture/compare DMA selection
      CCDS           : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Output Idle state 1 (OC1 output) Note: This bit can not be modified
      --  as long as LOCK level 1, 2 or 3 has been programmed (LOCK bits in
      --  TIMx_BDTR register).
      OIS1           : Boolean := False;
      --  Output Idle state 1 (OC1N output) Note: This bit can not be modified
      --  as long as LOCK level 1, 2 or 3 has been programmed (LOCK bits in
      --  TIMx_BDTR register).
      OIS1N          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM16_CR2_Register use record
      CCPC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCUS           at 0 range 2 .. 2;
      CCDS           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      OIS1           at 0 range 8 .. 8;
      OIS1N          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  TIM16 DMA/interrupt enable register
   type TIM16_DIER_Register is record
      --  Update interrupt enable
      UIE            : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  COM interrupt enable
      COMIE          : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Break interrupt enable
      BIE            : Boolean := False;
      --  Update DMA request enable
      UDE            : Boolean := False;
      --  Capture/Compare 1 DMA request enable
      CC1DE          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM16_DIER_Register use record
      UIE            at 0 range 0 .. 0;
      CC1IE          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      COMIE          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      BIE            at 0 range 7 .. 7;
      UDE            at 0 range 8 .. 8;
      CC1DE          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  TIM16 status register
   type TIM16_SR_Register is record
      --  Update interrupt flag This bit is set by hardware on an update event.
      --  It is cleared by software. At overflow regarding the repetition
      --  counter value (update if repetition counter = 0) and if the UDIS=0 in
      --  the TIMx_CR1 register. When CNT is reinitialized by software using
      --  the UG bit in TIMx_EGR register, if URS=0 and UDIS=0 in the TIMx_CR1
      --  register.
      UIF            : Boolean := False;
      --  Capture/Compare 1 interrupt flag This flag is set by hardware. It is
      --  cleared by software (input capture or output compare mode) or by
      --  reading the TIMx_CCR1 register (input capture mode only). If channel
      --  CC1 is configured as output: this flag is set when the content of the
      --  counter TIMx_CNT matches the content of the TIMx_CCR1 register. When
      --  the content of TIMx_CCR1 is greater than the content of TIMx_ARR, the
      --  CC1IF bit goes high on the counter overflow (in up-counting and
      --  up/down-counting modes) or underflow (in down-counting mode). There
      --  are 3 possible options for flag setting in center-aligned mode, refer
      --  to the CMS bits in the TIMx_CR1 register for the full description. If
      --  channel CC1 is configured as input: this bit is set when counter
      --  value has been captured in TIMx_CCR1 register (an edge has been
      --  detected on IC1, as per the edge sensitivity defined with the CC1P
      --  and CC1NP bits setting, in TIMx_CCER).
      CC1IF          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  COM interrupt flag
      COMIF          : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Break interrupt flag This flag is set by hardware as soon as the
      --  break input goes active. It can be cleared by software if the break
      --  input is not active.
      BIF            : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Capture/Compare 1 overcapture flag This flag is set by hardware only
      --  when the corresponding channel is configured in input capture mode.
      --  It is cleared by software by writing it to 0.
      CC1OF          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM16_SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      COMIF          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      BIF            at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CC1OF          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  TIM16 event generation register
   type TIM16_EGR_Register is record
      --  Write-only. Update generation This bit can be set by software, it is
      --  automatically cleared by hardware.
      UG            : Boolean := False;
      --  Write-only. Capture/Compare 1 generation This bit is set by software
      --  in order to generate an event, it is automatically cleared by
      --  hardware. If channel CC1 is configured as output: CC1IF flag is set,
      --  Corresponding interrupt or DMA request is sent if enabled. If channel
      --  CC1 is configured as input: The current value of the counter is
      --  captured in TIMx_CCR1 register. The CC1IF flag is set, the
      --  corresponding interrupt or DMA request is sent if enabled. The CC1OF
      --  flag is set if the CC1IF flag was already high.
      CC1G          : Boolean := False;
      --  unspecified
      Reserved_2_4  : HAL.UInt3 := 16#0#;
      --  Write-only. Capture/Compare control update generation This bit can be
      --  set by software, it is automatically cleared by hardware. Note: This
      --  bit acts only on channels that have a complementary output.
      COMG          : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Write-only. Break generation This bit is set by software in order to
      --  generate an event, it is automatically cleared by hardware.
      BG            : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM16_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      Reserved_2_4  at 0 range 2 .. 4;
      COMG          at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      BG            at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM16_CCMR1_input_CC1S_Field is HAL.UInt2;
   subtype TIM16_CCMR1_input_IC1PSC_Field is HAL.UInt2;
   subtype TIM16_CCMR1_input_IC1F_Field is HAL.UInt4;

   --  TIM16 capture/compare mode register 1 [alternate]
   type TIM16_CCMR1_input_Register is record
      --  Capture/Compare 1 Selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Others:
      --  Reserved Note: CC1S bits are writable only when the channel is OFF
      --  (CC1E = 0 in TIMx_CCER).
      CC1S          : TIM16_CCMR1_input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler This bit-field defines the ratio of the
      --  prescaler acting on CC1 input (IC1). The prescaler is reset as soon
      --  as CC1E=0 (TIMx_CCER register).
      IC1PSC        : TIM16_CCMR1_input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter This bit-field defines the frequency used to
      --  sample TI1 input and the length of the digital filter applied to TI1.
      --  The digital filter is made of an event counter in which N consecutive
      --  events are needed to validate a transition on the output:
      IC1F          : TIM16_CCMR1_input_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_CCMR1_input_Register use record
      CC1S          at 0 range 0 .. 1;
      IC1PSC        at 0 range 2 .. 3;
      IC1F          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIM16_CCMR1_output_CC1S_Field is HAL.UInt2;
   subtype TIM16_CCMR1_output_OC1M1_Field is HAL.UInt3;

   --  TIM16 capture/compare mode register 1 [alternate]
   type TIM16_CCMR1_output_Register is record
      --  Capture/Compare 1 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Others:
      --  Reserved Note: CC1S bits are writable only when the channel is OFF
      --  (CC1E = 0 in TIMx_CCER).
      CC1S           : TIM16_CCMR1_output_CC1S_Field := 16#0#;
      --  Output Compare 1 fast enable This bit decreases the latency between a
      --  trigger event and a transition on the timer output. It must be used
      --  in one-pulse mode (OPM bit set in TIMx_CR1 register), to have the
      --  output pulse starting as soon as possible after the starting trigger.
      OC1FE          : Boolean := False;
      --  Output Compare 1 preload enable Note: These bits can not be modified
      --  as long as LOCK level 3 has been programmed (LOCK bits in TIMx_BDTR
      --  register) and CC1S=00 (the channel is configured in output). The PWM
      --  mode can be used without validating the preload register only in one
      --  pulse mode (OPM bit set in TIMx_CR1 register). Else the behavior is
      --  not guaranteed.
      OC1PE          : Boolean := False;
      --  Output Compare 1 mode These bits define the behavior of the output
      --  reference signal OC1REF from which OC1 and OC1N are derived. OC1REF
      --  is active high whereas OC1 and OC1N active level depends on CC1P and
      --  CC1NP bits. All other values: Reserved Note: These bits can not be
      --  modified as long as LOCK level 3 has been programmed (LOCK bits in
      --  TIMx_BDTR register) and CC1S=00 (the channel is configured in
      --  output). In PWM mode 1 or 2, the OCREF level changes only when the
      --  result of the comparison changes or when the output compare mode
      --  switches from frozen mode to PWM mode. The OC1M[3] bit is not
      --  contiguous, located in bit 16.
      OC1M1          : TIM16_CCMR1_output_OC1M1_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Output Compare 1 mode These bits define the behavior of the output
      --  reference signal OC1REF from which OC1 and OC1N are derived. OC1REF
      --  is active high whereas OC1 and OC1N active level depends on CC1P and
      --  CC1NP bits. All other values: Reserved Note: These bits can not be
      --  modified as long as LOCK level 3 has been programmed (LOCK bits in
      --  TIMx_BDTR register) and CC1S=00 (the channel is configured in
      --  output). In PWM mode 1 or 2, the OCREF level changes only when the
      --  result of the comparison changes or when the output compare mode
      --  switches from frozen mode to PWM mode. The OC1M[3] bit is not
      --  contiguous, located in bit 16.
      OC1M2          : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_CCMR1_output_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M1          at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      OC1M2          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  TIM16 capture/compare enable register
   type TIM16_CCER_Register is record
      --  Capture/Compare 1 output enable When CC1 channel is configured as
      --  output, the OC1 level depends on MOE, OSSI, OSSR, OIS1, OIS1N and
      --  CC1NE bits, regardless of the CC1E bits state. Refer to for details.
      CC1E          : Boolean := False;
      --  Capture/Compare 1 output polarity When CC1 channel is configured as
      --  input, both CC1NP/CC1P bits select the active polarity of TI1FP1 and
      --  TI2FP1 for trigger or capture operations. CC1NP=0,
      --  CC1P=0:	non-inverted/rising edge. The circuit is sensitive to TIxFP1
      --  rising edge (capture or trigger operations in reset, external clock
      --  or trigger mode), TIxFP1 is not inverted (trigger operation in gated
      --  mode or encoder mode). CC1NP=0, CC1P=1:	inverted/falling edge. The
      --  circuit is sensitive to TIxFP1 falling edge (capture or trigger
      --  operations in reset, external clock or trigger mode), TIxFP1 is
      --  inverted (trigger operation in gated mode or encoder mode). CC1NP=1,
      --  CC1P=1:	non-inverted/both edges/ The circuit is sensitive to both
      --  TIxFP1 rising and falling edges (capture or trigger operations in
      --  reset, external clock or trigger mode), TIxFP1is not inverted
      --  (trigger operation in gated mode). This configuration must not be
      --  used in encoder mode. CC1NP=1, CC1P=0:	this configuration is
      --  reserved, it must not be used. Note: This bit is not writable as soon
      --  as LOCK level 2 or 3 has been programmed (LOCK bits in TIMx_BDTR
      --  register). On channels that have a complementary output, this bit is
      --  preloaded. If the CCPC bit is set in the TIMx_CR2 register then the
      --  CC1P active bit takes the new value from the preloaded bit only when
      --  a Commutation event is generated.
      CC1P          : Boolean := False;
      --  Capture/Compare 1 complementary output enable
      CC1NE         : Boolean := False;
      --  Capture/Compare 1 complementary output polarity CC1 channel
      --  configured as output: CC1 channel configured as input: This bit is
      --  used in conjunction with CC1P to define the polarity of TI1FP1 and
      --  TI2FP1. Refer to the description of CC1P. Note: This bit is not
      --  writable as soon as LOCK level 2 or 3 has been programmed (LOCK bits
      --  in TIMx_BDTR register) and CC1S=00 (the channel is configured in
      --  output). On channels that have a complementary output, this bit is
      --  preloaded. If the CCPC bit is set in the TIMx_CR2 register then the
      --  CC1NP active bit takes the new value from the preloaded bit only when
      --  a commutation event is generated.
      CC1NP         : Boolean := False;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM16_CCER_Register use record
      CC1E          at 0 range 0 .. 0;
      CC1P          at 0 range 1 .. 1;
      CC1NE         at 0 range 2 .. 2;
      CC1NP         at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype TIM16_CNT_CNT_Field is HAL.UInt16;

   --  TIM16 counter
   type TIM16_CNT_Register is record
      --  Counter value
      CNT            : TIM16_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  Read-only. UIF Copy This bit is a read-only copy of the UIF bit of
      --  the TIMx_ISR register. If the UIFREMAP bit in TIMx_CR1 is reset, bit
      --  31 is reserved and read as 0.
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM16_RCR_REP_Field is HAL.UInt8;

   --  TIM16 repetition counter register
   type TIM16_RCR_Register is record
      --  Repetition counter value These bits allow the user to set-up the
      --  update rate of the compare registers (i.e. periodic transfers from
      --  preload to active registers) when preload registers are enable, as
      --  well as the update interrupt generation rate, if this interrupt is
      --  enable. Each time the REP_CNT related downcounter reaches zero, an
      --  update event is generated and it restarts counting from REP value. As
      --  REP_CNT is reloaded with REP value only at the repetition update
      --  event U_RC, any write to the TIMx_RCR register is not taken in
      --  account until the next repetition update event. It means in PWM mode
      --  (REP+1) corresponds to the number of PWM periods in edge-aligned
      --  mode.
      REP           : TIM16_RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM16_RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM16_BDTR_DTG_Field is HAL.UInt8;
   subtype TIM16_BDTR_LOCK_Field is HAL.UInt2;
   subtype TIM16_BDTR_BKF_Field is HAL.UInt4;

   --  TIM16 break and dead-time register
   type TIM16_BDTR_Register is record
      --  Dead-time generator setup
      DTG            : TIM16_BDTR_DTG_Field := 16#0#;
      --  Lock configuration These bits offer a write protection against
      --  software errors. Note: The LOCK bits can be written only once after
      --  the reset. Once the TIMx_BDTR register has been written, their
      --  content is frozen until the next reset.
      LOCK           : TIM16_BDTR_LOCK_Field := 16#0#;
      --  Off-state selection for Idle mode This bit is used when MOE=0 on
      --  channels configured as outputs. See OC/OCN enable description for
      --  more details (enable register (TIM16_CCER)(TIMx_CCER)(x = 16 to 17)
      --  on page 1793). Note: This bit can not be modified as soon as the LOCK
      --  level 2 has been programmed (LOCK bits in TIMx_BDTR register).
      OSSI           : Boolean := False;
      --  Off-state selection for Run mode This bit is used when MOE=1 on
      --  channels that have a complementary output which are configured as
      --  outputs. OSSR is not implemented if no complementary output is
      --  implemented in the timer. See OC/OCN enable description for more
      --  details (enable register (TIM16_CCER)(TIMx_CCER)(x = 16 to 17) on
      --  page 1793). Note: This bit can not be modified as soon as the LOCK
      --  level 2 has been programmed (LOCK bits in TIMx_BDTR register).
      OSSR           : Boolean := False;
      --  Break enable 1; Break inputs (BRK and CCS clock failure event)
      --  enabled Note: This bit cannot be modified when LOCK level 1 has been
      --  programmed (LOCK bits in TIMx_BDTR register). Any write operation to
      --  this bit takes a delay of 1 APB clock cycle to become effective.
      BKE            : Boolean := False;
      --  Break polarity Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register). Any
      --  write operation to this bit takes a delay of 1 APB clock cycle to
      --  become effective.
      BKP            : Boolean := False;
      --  Automatic output enable Note: This bit can not be modified as long as
      --  LOCK level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      AOE            : Boolean := False;
      --  Main output enable This bit is cleared asynchronously by hardware as
      --  soon as the break input is active. It is set by software or
      --  automatically depending on the AOE bit. It is acting only on the
      --  channels which are configured in output. enable register
      --  (TIM16_CCER)(TIMx_CCER)(x = 16 to 17) on page 1793).
      MOE            : Boolean := False;
      --  Break filter This bit-field defines the frequency used to sample BRK
      --  input and the length of the digital filter applied to BRK. The
      --  digital filter is made of an event counter in which N events are
      --  needed to validate a transition on the output: This bit cannot be
      --  modified when LOCK level 1 has been programmed (LOCK bits in
      --  TIMx_BDTR register).
      BKF            : TIM16_BDTR_BKF_Field := 16#0#;
      --  unspecified
      Reserved_20_25 : HAL.UInt6 := 16#0#;
      --  Break Disarm This bit is cleared by hardware when no break source is
      --  active. The BKDSRM bit must be set by software to release the
      --  bidirectional output control (open-drain output in Hi-Z state) and
      --  then be polled it until it is reset by hardware, indicating that the
      --  fault condition has disappeared. Note: Any write operation to this
      --  bit takes a delay of 1 APB clock cycle to become effective.
      BKDSRM         : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Break Bidirectional In the bidirectional mode (BKBID bit set to 1),
      --  the break input is configured both in input mode and in open drain
      --  output mode. Any active break event asserts a low logic level on the
      --  Break input to indicate an internal break event to external devices.
      --  Note: This bit cannot be modified as long as LOCK level 1 has been
      --  programmed (LOCK bits in TIMx_BDTR register). Note: Any write
      --  operation to this bit takes a delay of 1 APB clock cycle to become
      --  effective.
      BKBID          : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_BDTR_Register use record
      DTG            at 0 range 0 .. 7;
      LOCK           at 0 range 8 .. 9;
      OSSI           at 0 range 10 .. 10;
      OSSR           at 0 range 11 .. 11;
      BKE            at 0 range 12 .. 12;
      BKP            at 0 range 13 .. 13;
      AOE            at 0 range 14 .. 14;
      MOE            at 0 range 15 .. 15;
      BKF            at 0 range 16 .. 19;
      Reserved_20_25 at 0 range 20 .. 25;
      BKDSRM         at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      BKBID          at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype TIM16_DCR_DBA_Field is HAL.UInt5;
   subtype TIM16_DCR_DBL_Field is HAL.UInt5;

   --  TIM16 DMA control register
   type TIM16_DCR_Register is record
      --  DMA base address This 5-bit field defines the base-address for DMA
      --  transfers (when read/write access are done through the TIMx_DMAR
      --  address). DBA is defined as an offset starting from the address of
      --  the TIMx_CR1 register. Example: ... Example: Let us consider the
      --  following transfer: DBL = 7 transfers and DBA = TIMx_CR1. In this
      --  case the transfer is done to/from 7 registers starting from the
      --  TIMx_CR1 address.
      DBA            : TIM16_DCR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA burst length This 5-bit field defines the length of DMA transfers
      --  (the timer recognizes a burst transfer when a read or a write access
      --  is done to the TIMx_DMAR address), i.e. the number of transfers.
      --  Transfers can be in half-words or in bytes (see example below). ...
      DBL            : TIM16_DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM16_DCR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   --  TIM16 alternate function register 1
   type TIM16_AF1_Register is record
      --  BRK BKIN input enable This bit enables the BKIN alternate function
      --  input for the timers BRK input. BKIN input is ORed with the other BRK
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKINE          : Boolean := True;
      --  unspecified
      Reserved_1_8   : HAL.UInt8 := 16#0#;
      --  BRK BKIN input polarity This bit selects the BKIN alternate function
      --  input sensitivity. It must be programmed together with the BKP
      --  polarity bit. Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      BKINP          : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_AF1_Register use record
      BKINE          at 0 range 0 .. 0;
      Reserved_1_8   at 0 range 1 .. 8;
      BKINP          at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype TIM16_TISEL_TI1SEL_Field is HAL.UInt4;

   --  TIM16 input selection register
   type TIM16_TISEL_Register is record
      --  selects TI1[0] to TI1[15] input Others: Reserved
      TI1SEL        : TIM16_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_TISEL_Register use record
      TI1SEL        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype TIM17_CR1_CKD_Field is HAL.UInt2;

   --  TIM17 control register 1
   type TIM17_CR1_Register is record
      --  Counter enable Note: External clock and gated mode can work only if
      --  the CEN bit has been previously set by software. However trigger mode
      --  can set the CEN bit automatically by hardware.
      CEN            : Boolean := False;
      --  Update disable This bit is set and cleared by software to
      --  enable/disable UEV event generation. Counter overflow/underflow
      --  Setting the UG bit Update generation through the slave mode
      --  controller Buffered registers are then loaded with their preload
      --  values.
      UDIS           : Boolean := False;
      --  Update request source This bit is set and cleared by software to
      --  select the UEV event sources. Counter overflow/underflow Setting the
      --  UG bit Update generation through the slave mode controller
      URS            : Boolean := False;
      --  One pulse mode
      OPM            : Boolean := False;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division This bit-field indicates the division ratio between
      --  the timer clock (CK_INT) frequency and the dead-time and sampling
      --  clock (tDTS)used by the dead-time generators and the digital filters
      --  (TIx),
      CKD            : TIM17_CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM17_CR1_Register use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      ARPE           at 0 range 7 .. 7;
      CKD            at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      UIFREMAP       at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   --  TIM17 control register 2
   type TIM17_CR2_Register is record
      --  Capture/compare preloaded control Note: This bit acts only on
      --  channels that have a complementary output.
      CCPC           : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Capture/compare control update selection Note: This bit acts only on
      --  channels that have a complementary output.
      CCUS           : Boolean := False;
      --  Capture/compare DMA selection
      CCDS           : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Output Idle state 1 (OC1 output) Note: This bit can not be modified
      --  as long as LOCK level 1, 2 or 3 has been programmed (LOCK bits in
      --  TIMx_BDTR register).
      OIS1           : Boolean := False;
      --  Output Idle state 1 (OC1N output) Note: This bit can not be modified
      --  as long as LOCK level 1, 2 or 3 has been programmed (LOCK bits in
      --  TIMx_BDTR register).
      OIS1N          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM17_CR2_Register use record
      CCPC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCUS           at 0 range 2 .. 2;
      CCDS           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      OIS1           at 0 range 8 .. 8;
      OIS1N          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  TIM17 DMA/interrupt enable register
   type TIM17_DIER_Register is record
      --  Update interrupt enable
      UIE            : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  COM interrupt enable
      COMIE          : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Break interrupt enable
      BIE            : Boolean := False;
      --  Update DMA request enable
      UDE            : Boolean := False;
      --  Capture/Compare 1 DMA request enable
      CC1DE          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM17_DIER_Register use record
      UIE            at 0 range 0 .. 0;
      CC1IE          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      COMIE          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      BIE            at 0 range 7 .. 7;
      UDE            at 0 range 8 .. 8;
      CC1DE          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  TIM17 status register
   type TIM17_SR_Register is record
      --  Update interrupt flag This bit is set by hardware on an update event.
      --  It is cleared by software. At overflow regarding the repetition
      --  counter value (update if repetition counter = 0) and if the UDIS=0 in
      --  the TIMx_CR1 register. When CNT is reinitialized by software using
      --  the UG bit in TIMx_EGR register, if URS=0 and UDIS=0 in the TIMx_CR1
      --  register.
      UIF            : Boolean := False;
      --  Capture/Compare 1 interrupt flag This flag is set by hardware. It is
      --  cleared by software (input capture or output compare mode) or by
      --  reading the TIMx_CCR1 register (input capture mode only). If channel
      --  CC1 is configured as output: this flag is set when the content of the
      --  counter TIMx_CNT matches the content of the TIMx_CCR1 register. When
      --  the content of TIMx_CCR1 is greater than the content of TIMx_ARR, the
      --  CC1IF bit goes high on the counter overflow (in up-counting and
      --  up/down-counting modes) or underflow (in down-counting mode). There
      --  are 3 possible options for flag setting in center-aligned mode, refer
      --  to the CMS bits in the TIMx_CR1 register for the full description. If
      --  channel CC1 is configured as input: this bit is set when counter
      --  value has been captured in TIMx_CCR1 register (an edge has been
      --  detected on IC1, as per the edge sensitivity defined with the CC1P
      --  and CC1NP bits setting, in TIMx_CCER).
      CC1IF          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  COM interrupt flag
      COMIF          : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Break interrupt flag This flag is set by hardware as soon as the
      --  break input goes active. It can be cleared by software if the break
      --  input is not active.
      BIF            : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Capture/Compare 1 overcapture flag This flag is set by hardware only
      --  when the corresponding channel is configured in input capture mode.
      --  It is cleared by software by writing it to 0.
      CC1OF          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM17_SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      COMIF          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      BIF            at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CC1OF          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  TIM17 event generation register
   type TIM17_EGR_Register is record
      --  Write-only. Update generation This bit can be set by software, it is
      --  automatically cleared by hardware.
      UG            : Boolean := False;
      --  Write-only. Capture/Compare 1 generation This bit is set by software
      --  in order to generate an event, it is automatically cleared by
      --  hardware. If channel CC1 is configured as output: CC1IF flag is set,
      --  Corresponding interrupt or DMA request is sent if enabled. If channel
      --  CC1 is configured as input: The current value of the counter is
      --  captured in TIMx_CCR1 register. The CC1IF flag is set, the
      --  corresponding interrupt or DMA request is sent if enabled. The CC1OF
      --  flag is set if the CC1IF flag was already high.
      CC1G          : Boolean := False;
      --  unspecified
      Reserved_2_4  : HAL.UInt3 := 16#0#;
      --  Write-only. Capture/Compare control update generation This bit can be
      --  set by software, it is automatically cleared by hardware. Note: This
      --  bit acts only on channels that have a complementary output.
      COMG          : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Write-only. Break generation This bit is set by software in order to
      --  generate an event, it is automatically cleared by hardware.
      BG            : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM17_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      Reserved_2_4  at 0 range 2 .. 4;
      COMG          at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      BG            at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM17_CCMR1_input_CC1S_Field is HAL.UInt2;
   subtype TIM17_CCMR1_input_IC1PSC_Field is HAL.UInt2;
   subtype TIM17_CCMR1_input_IC1F_Field is HAL.UInt4;

   --  TIM17 capture/compare mode register 1 [alternate]
   type TIM17_CCMR1_input_Register is record
      --  Capture/Compare 1 Selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Others:
      --  Reserved Note: CC1S bits are writable only when the channel is OFF
      --  (CC1E = 0 in TIMx_CCER).
      CC1S          : TIM17_CCMR1_input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler This bit-field defines the ratio of the
      --  prescaler acting on CC1 input (IC1). The prescaler is reset as soon
      --  as CC1E=0 (TIMx_CCER register).
      IC1PSC        : TIM17_CCMR1_input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter This bit-field defines the frequency used to
      --  sample TI1 input and the length of the digital filter applied to TI1.
      --  The digital filter is made of an event counter in which N consecutive
      --  events are needed to validate a transition on the output:
      IC1F          : TIM17_CCMR1_input_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_CCMR1_input_Register use record
      CC1S          at 0 range 0 .. 1;
      IC1PSC        at 0 range 2 .. 3;
      IC1F          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIM17_CCMR1_output_CC1S_Field is HAL.UInt2;
   subtype TIM17_CCMR1_output_OC1M1_Field is HAL.UInt3;

   --  TIM17 capture/compare mode register 1 [alternate]
   type TIM17_CCMR1_output_Register is record
      --  Capture/Compare 1 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Others:
      --  Reserved Note: CC1S bits are writable only when the channel is OFF
      --  (CC1E = 0 in TIMx_CCER).
      CC1S           : TIM17_CCMR1_output_CC1S_Field := 16#0#;
      --  Output Compare 1 fast enable This bit decreases the latency between a
      --  trigger event and a transition on the timer output. It must be used
      --  in one-pulse mode (OPM bit set in TIMx_CR1 register), to have the
      --  output pulse starting as soon as possible after the starting trigger.
      OC1FE          : Boolean := False;
      --  Output Compare 1 preload enable Note: These bits can not be modified
      --  as long as LOCK level 3 has been programmed (LOCK bits in TIMx_BDTR
      --  register) and CC1S=00 (the channel is configured in output). The PWM
      --  mode can be used without validating the preload register only in one
      --  pulse mode (OPM bit set in TIMx_CR1 register). Else the behavior is
      --  not guaranteed.
      OC1PE          : Boolean := False;
      --  Output Compare 1 mode These bits define the behavior of the output
      --  reference signal OC1REF from which OC1 and OC1N are derived. OC1REF
      --  is active high whereas OC1 and OC1N active level depends on CC1P and
      --  CC1NP bits. All other values: Reserved Note: These bits can not be
      --  modified as long as LOCK level 3 has been programmed (LOCK bits in
      --  TIMx_BDTR register) and CC1S=00 (the channel is configured in
      --  output). In PWM mode 1 or 2, the OCREF level changes only when the
      --  result of the comparison changes or when the output compare mode
      --  switches from frozen mode to PWM mode. The OC1M[3] bit is not
      --  contiguous, located in bit 16.
      OC1M1          : TIM17_CCMR1_output_OC1M1_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Output Compare 1 mode These bits define the behavior of the output
      --  reference signal OC1REF from which OC1 and OC1N are derived. OC1REF
      --  is active high whereas OC1 and OC1N active level depends on CC1P and
      --  CC1NP bits. All other values: Reserved Note: These bits can not be
      --  modified as long as LOCK level 3 has been programmed (LOCK bits in
      --  TIMx_BDTR register) and CC1S=00 (the channel is configured in
      --  output). In PWM mode 1 or 2, the OCREF level changes only when the
      --  result of the comparison changes or when the output compare mode
      --  switches from frozen mode to PWM mode. The OC1M[3] bit is not
      --  contiguous, located in bit 16.
      OC1M2          : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_CCMR1_output_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M1          at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      OC1M2          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  TIM17 capture/compare enable register
   type TIM17_CCER_Register is record
      --  Capture/Compare 1 output enable When CC1 channel is configured as
      --  output, the OC1 level depends on MOE, OSSI, OSSR, OIS1, OIS1N and
      --  CC1NE bits, regardless of the CC1E bits state. Refer to for details.
      CC1E          : Boolean := False;
      --  Capture/Compare 1 output polarity When CC1 channel is configured as
      --  input, both CC1NP/CC1P bits select the active polarity of TI1FP1 and
      --  TI2FP1 for trigger or capture operations. CC1NP=0,
      --  CC1P=0:	non-inverted/rising edge. The circuit is sensitive to TIxFP1
      --  rising edge (capture or trigger operations in reset, external clock
      --  or trigger mode), TIxFP1 is not inverted (trigger operation in gated
      --  mode or encoder mode). CC1NP=0, CC1P=1:	inverted/falling edge. The
      --  circuit is sensitive to TIxFP1 falling edge (capture or trigger
      --  operations in reset, external clock or trigger mode), TIxFP1 is
      --  inverted (trigger operation in gated mode or encoder mode). CC1NP=1,
      --  CC1P=1:	non-inverted/both edges/ The circuit is sensitive to both
      --  TIxFP1 rising and falling edges (capture or trigger operations in
      --  reset, external clock or trigger mode), TIxFP1is not inverted
      --  (trigger operation in gated mode). This configuration must not be
      --  used in encoder mode. CC1NP=1, CC1P=0:	this configuration is
      --  reserved, it must not be used. Note: This bit is not writable as soon
      --  as LOCK level 2 or 3 has been programmed (LOCK bits in TIMx_BDTR
      --  register). On channels that have a complementary output, this bit is
      --  preloaded. If the CCPC bit is set in the TIMx_CR2 register then the
      --  CC1P active bit takes the new value from the preloaded bit only when
      --  a Commutation event is generated.
      CC1P          : Boolean := False;
      --  Capture/Compare 1 complementary output enable
      CC1NE         : Boolean := False;
      --  Capture/Compare 1 complementary output polarity CC1 channel
      --  configured as output: CC1 channel configured as input: This bit is
      --  used in conjunction with CC1P to define the polarity of TI1FP1 and
      --  TI2FP1. Refer to the description of CC1P. Note: This bit is not
      --  writable as soon as LOCK level 2 or 3 has been programmed (LOCK bits
      --  in TIMx_BDTR register) and CC1S=00 (the channel is configured in
      --  output). On channels that have a complementary output, this bit is
      --  preloaded. If the CCPC bit is set in the TIMx_CR2 register then the
      --  CC1NP active bit takes the new value from the preloaded bit only when
      --  a commutation event is generated.
      CC1NP         : Boolean := False;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM17_CCER_Register use record
      CC1E          at 0 range 0 .. 0;
      CC1P          at 0 range 1 .. 1;
      CC1NE         at 0 range 2 .. 2;
      CC1NP         at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype TIM17_CNT_CNT_Field is HAL.UInt16;

   --  TIM17 counter
   type TIM17_CNT_Register is record
      --  Counter value
      CNT            : TIM17_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  Read-only. UIF Copy This bit is a read-only copy of the UIF bit of
      --  the TIMx_ISR register. If the UIFREMAP bit in TIMx_CR1 is reset, bit
      --  31 is reserved and read as 0.
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM17_RCR_REP_Field is HAL.UInt8;

   --  TIM17 repetition counter register
   type TIM17_RCR_Register is record
      --  Repetition counter value These bits allow the user to set-up the
      --  update rate of the compare registers (i.e. periodic transfers from
      --  preload to active registers) when preload registers are enable, as
      --  well as the update interrupt generation rate, if this interrupt is
      --  enable. Each time the REP_CNT related downcounter reaches zero, an
      --  update event is generated and it restarts counting from REP value. As
      --  REP_CNT is reloaded with REP value only at the repetition update
      --  event U_RC, any write to the TIMx_RCR register is not taken in
      --  account until the next repetition update event. It means in PWM mode
      --  (REP+1) corresponds to the number of PWM periods in edge-aligned
      --  mode.
      REP           : TIM17_RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM17_RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM17_BDTR_DTG_Field is HAL.UInt8;
   subtype TIM17_BDTR_LOCK_Field is HAL.UInt2;
   subtype TIM17_BDTR_BKF_Field is HAL.UInt4;

   --  TIM17 break and dead-time register
   type TIM17_BDTR_Register is record
      --  Dead-time generator setup
      DTG            : TIM17_BDTR_DTG_Field := 16#0#;
      --  Lock configuration These bits offer a write protection against
      --  software errors. Note: The LOCK bits can be written only once after
      --  the reset. Once the TIMx_BDTR register has been written, their
      --  content is frozen until the next reset.
      LOCK           : TIM17_BDTR_LOCK_Field := 16#0#;
      --  Off-state selection for Idle mode This bit is used when MOE=0 on
      --  channels configured as outputs. See OC/OCN enable description for
      --  more details (enable register (TIM16_CCER)(TIMx_CCER)(x = 16 to 17)
      --  on page 1793). Note: This bit can not be modified as soon as the LOCK
      --  level 2 has been programmed (LOCK bits in TIMx_BDTR register).
      OSSI           : Boolean := False;
      --  Off-state selection for Run mode This bit is used when MOE=1 on
      --  channels that have a complementary output which are configured as
      --  outputs. OSSR is not implemented if no complementary output is
      --  implemented in the timer. See OC/OCN enable description for more
      --  details (enable register (TIM16_CCER)(TIMx_CCER)(x = 16 to 17) on
      --  page 1793). Note: This bit can not be modified as soon as the LOCK
      --  level 2 has been programmed (LOCK bits in TIMx_BDTR register).
      OSSR           : Boolean := False;
      --  Break enable 1; Break inputs (BRK and CCS clock failure event)
      --  enabled Note: This bit cannot be modified when LOCK level 1 has been
      --  programmed (LOCK bits in TIMx_BDTR register). Any write operation to
      --  this bit takes a delay of 1 APB clock cycle to become effective.
      BKE            : Boolean := False;
      --  Break polarity Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register). Any
      --  write operation to this bit takes a delay of 1 APB clock cycle to
      --  become effective.
      BKP            : Boolean := False;
      --  Automatic output enable Note: This bit can not be modified as long as
      --  LOCK level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      AOE            : Boolean := False;
      --  Main output enable This bit is cleared asynchronously by hardware as
      --  soon as the break input is active. It is set by software or
      --  automatically depending on the AOE bit. It is acting only on the
      --  channels which are configured in output. enable register
      --  (TIM16_CCER)(TIMx_CCER)(x = 16 to 17) on page 1793).
      MOE            : Boolean := False;
      --  Break filter This bit-field defines the frequency used to sample BRK
      --  input and the length of the digital filter applied to BRK. The
      --  digital filter is made of an event counter in which N events are
      --  needed to validate a transition on the output: This bit cannot be
      --  modified when LOCK level 1 has been programmed (LOCK bits in
      --  TIMx_BDTR register).
      BKF            : TIM17_BDTR_BKF_Field := 16#0#;
      --  unspecified
      Reserved_20_25 : HAL.UInt6 := 16#0#;
      --  Break Disarm This bit is cleared by hardware when no break source is
      --  active. The BKDSRM bit must be set by software to release the
      --  bidirectional output control (open-drain output in Hi-Z state) and
      --  then be polled it until it is reset by hardware, indicating that the
      --  fault condition has disappeared. Note: Any write operation to this
      --  bit takes a delay of 1 APB clock cycle to become effective.
      BKDSRM         : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Break Bidirectional In the bidirectional mode (BKBID bit set to 1),
      --  the break input is configured both in input mode and in open drain
      --  output mode. Any active break event asserts a low logic level on the
      --  Break input to indicate an internal break event to external devices.
      --  Note: This bit cannot be modified as long as LOCK level 1 has been
      --  programmed (LOCK bits in TIMx_BDTR register). Note: Any write
      --  operation to this bit takes a delay of 1 APB clock cycle to become
      --  effective.
      BKBID          : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_BDTR_Register use record
      DTG            at 0 range 0 .. 7;
      LOCK           at 0 range 8 .. 9;
      OSSI           at 0 range 10 .. 10;
      OSSR           at 0 range 11 .. 11;
      BKE            at 0 range 12 .. 12;
      BKP            at 0 range 13 .. 13;
      AOE            at 0 range 14 .. 14;
      MOE            at 0 range 15 .. 15;
      BKF            at 0 range 16 .. 19;
      Reserved_20_25 at 0 range 20 .. 25;
      BKDSRM         at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      BKBID          at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype TIM17_DCR_DBA_Field is HAL.UInt5;
   subtype TIM17_DCR_DBL_Field is HAL.UInt5;

   --  TIM17 DMA control register
   type TIM17_DCR_Register is record
      --  DMA base address This 5-bit field defines the base-address for DMA
      --  transfers (when read/write access are done through the TIMx_DMAR
      --  address). DBA is defined as an offset starting from the address of
      --  the TIMx_CR1 register. Example: ... Example: Let us consider the
      --  following transfer: DBL = 7 transfers and DBA = TIMx_CR1. In this
      --  case the transfer is done to/from 7 registers starting from the
      --  TIMx_CR1 address.
      DBA            : TIM17_DCR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA burst length This 5-bit field defines the length of DMA transfers
      --  (the timer recognizes a burst transfer when a read or a write access
      --  is done to the TIMx_DMAR address), i.e. the number of transfers.
      --  Transfers can be in half-words or in bytes (see example below). ...
      DBL            : TIM17_DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM17_DCR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   --  TIM17 alternate function register 1
   type TIM17_AF1_Register is record
      --  BRK BKIN input enable This bit enables the BKIN alternate function
      --  input for the timers BRK input. BKIN input is ORed with the other BRK
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKINE          : Boolean := True;
      --  unspecified
      Reserved_1_8   : HAL.UInt8 := 16#0#;
      --  BRK BKIN input polarity This bit selects the BKIN alternate function
      --  input sensitivity. It must be programmed together with the BKP
      --  polarity bit. Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      BKINP          : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_AF1_Register use record
      BKINE          at 0 range 0 .. 0;
      Reserved_1_8   at 0 range 1 .. 8;
      BKINP          at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype TIM17_TISEL_TI1SEL_Field is HAL.UInt4;

   --  TIM17 input selection register
   type TIM17_TISEL_Register is record
      --  selects TI1[0] to TI1[15] input Others: Reserved
      TI1SEL        : TIM17_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_TISEL_Register use record
      TI1SEL        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TIM1_Disc is
     (INPUT,
      OUTPUT);

   --  Advanced-control timer
   type TIM1_Peripheral
     (Discriminent : TIM1_Disc := INPUT)
   is record
      --  TIM1 control register 1
      TIM1_CR1          : aliased TIM1_CR1_Register;
      --  TIM1 control register 2
      TIM1_CR2          : aliased TIM1_CR2_Register;
      --  TIM1 slave mode control register
      TIM1_SMCR         : aliased TIM1_SMCR_Register;
      --  TIM1 DMA/interrupt enable register
      TIM1_DIER         : aliased TIM1_DIER_Register;
      --  TIM1 status register
      TIM1_SR           : aliased TIM1_SR_Register;
      --  TIM1 event generation register
      TIM1_EGR          : aliased TIM1_EGR_Register;
      --  TIM1 capture/compare enable register	
      TIM1_CCER         : aliased TIM1_CCER_Register;
      --  TIM1 counter
      TIM1_CNT          : aliased TIM1_CNT_Register;
      --  TIM1 prescaler
      TIM1_PSC          : aliased HAL.UInt16;
      --  TIM1 auto-reload register
      TIM1_ARR          : aliased HAL.UInt16;
      --  TIM1 repetition counter register
      TIM1_RCR          : aliased HAL.UInt16;
      --  TIM1 capture/compare register 1
      TIM1_CCR1         : aliased HAL.UInt16;
      --  TIM1 capture/compare register 2
      TIM1_CCR2         : aliased HAL.UInt16;
      --  TIM1 capture/compare register 3
      TIM1_CCR3         : aliased HAL.UInt16;
      --  TIM1 capture/compare register 4
      TIM1_CCR4         : aliased HAL.UInt16;
      --  TIM1 break and dead-time register	
      TIM1_BDTR         : aliased TIM1_BDTR_Register;
      --  TIM1 DMA control register
      TIM1_DCR          : aliased TIM1_DCR_Register;
      --  TIM1 DMA address for full transfer	
      TIM1_DMAR         : aliased HAL.UInt32;
      --  TIM1 capture/compare mode register 3	
      TIM1_CCMR3        : aliased TIM1_CCMR3_Register;
      --  TIM1 capture/compare register 5
      TIM1_CCR5         : aliased TIM1_CCR5_Register;
      --  TIM1 capture/compare register 6
      TIM1_CCR6         : aliased HAL.UInt16;
      --  TIM1 alternate function option register 1
      TIM1_AF1          : aliased TIM1_AF1_Register;
      --  TIM1 Alternate function register 2
      TIM1_AF2          : aliased TIM1_AF2_Register;
      --  TIM1 timer input selection register
      TIM1_TISEL        : aliased TIM1_TISEL_Register;
      case Discriminent is
         when INPUT =>
            --  TIM1 capture/compare mode register 1 [alternate]
            TIM1_CCMR1_input : aliased TIM1_CCMR1_input_Register;
            --  TIM1 capture/compare mode register 2 [alternate]
            TIM1_CCMR2_input : aliased TIM1_CCMR2_input_Register;
         when OUTPUT =>
            --  TIM1 capture/compare mode register 1 [alternate]
            TIM1_CCMR1_output : aliased TIM1_CCMR1_output_Register;
            --  TIM1 capture/compare mode register 2 [alternate]
            TIM1_CCMR2_output : aliased TIM1_CCMR2_output_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM1_Peripheral use record
      TIM1_CR1          at 16#0# range 0 .. 15;
      TIM1_CR2          at 16#4# range 0 .. 31;
      TIM1_SMCR         at 16#8# range 0 .. 31;
      TIM1_DIER         at 16#C# range 0 .. 15;
      TIM1_SR           at 16#10# range 0 .. 31;
      TIM1_EGR          at 16#14# range 0 .. 15;
      TIM1_CCER         at 16#20# range 0 .. 31;
      TIM1_CNT          at 16#24# range 0 .. 31;
      TIM1_PSC          at 16#28# range 0 .. 15;
      TIM1_ARR          at 16#2C# range 0 .. 15;
      TIM1_RCR          at 16#30# range 0 .. 15;
      TIM1_CCR1         at 16#34# range 0 .. 15;
      TIM1_CCR2         at 16#38# range 0 .. 15;
      TIM1_CCR3         at 16#3C# range 0 .. 15;
      TIM1_CCR4         at 16#40# range 0 .. 15;
      TIM1_BDTR         at 16#44# range 0 .. 31;
      TIM1_DCR          at 16#48# range 0 .. 15;
      TIM1_DMAR         at 16#4C# range 0 .. 31;
      TIM1_CCMR3        at 16#54# range 0 .. 31;
      TIM1_CCR5         at 16#58# range 0 .. 31;
      TIM1_CCR6         at 16#5C# range 0 .. 15;
      TIM1_AF1          at 16#60# range 0 .. 31;
      TIM1_AF2          at 16#64# range 0 .. 31;
      TIM1_TISEL        at 16#68# range 0 .. 31;
      TIM1_CCMR1_input  at 16#18# range 0 .. 31;
      TIM1_CCMR2_input  at 16#1C# range 0 .. 31;
      TIM1_CCMR1_output at 16#18# range 0 .. 31;
      TIM1_CCMR2_output at 16#1C# range 0 .. 31;
   end record;

   --  Advanced-control timer
   TIM1_Periph : aliased TIM1_Peripheral
     with Import, Address => TIM1_Base;

   type TIM3_Disc is
     (INPUT,
      OUTPUT,
      Default,
      ALTERNATE);

   --  General-purpose timer
   type TIM3_Peripheral
     (Discriminent : TIM3_Disc := INPUT)
   is record
      --  TIM3 control register 1
      TIM3_CR1           : aliased TIM3_CR1_Register;
      --  TIM3 control register 2
      TIM3_CR2           : aliased TIM3_CR2_Register;
      --  TIM3 slave mode control register
      TIM3_SMCR          : aliased TIM3_SMCR_Register;
      --  TIM3 DMA/Interrupt enable register
      TIM3_DIER          : aliased TIM3_DIER_Register;
      --  TIM3 status register
      TIM3_SR            : aliased TIM3_SR_Register;
      --  TIM3 event generation register
      TIM3_EGR           : aliased TIM3_EGR_Register;
      --  TIM3 capture/compare enable register	
      TIM3_CCER          : aliased TIM3_CCER_Register;
      --  TIM3 prescaler
      TIM3_PSC           : aliased HAL.UInt16;
      --  TIM3 auto-reload register
      TIM3_ARR           : aliased TIM3_ARR_Register;
      --  TIM3 capture/compare register 1
      TIM3_CCR1          : aliased TIM3_CCR1_Register;
      --  TIM3 capture/compare register 2
      TIM3_CCR2          : aliased TIM3_CCR2_Register;
      --  TIM3 capture/compare register 3
      TIM3_CCR3          : aliased TIM3_CCR3_Register;
      --  TIM3 capture/compare register 4
      TIM3_CCR4          : aliased TIM3_CCR4_Register;
      --  TIM3 DMA control register
      TIM3_DCR           : aliased TIM3_DCR_Register;
      --  TIM3 DMA address for full transfer
      TIM3_DMAR          : aliased HAL.UInt16;
      --  TIM3 alternate function option register 1
      TIM3_AF1           : aliased TIM3_AF1_Register;
      --  TIM3 timer input selection register
      TIM3_TISEL         : aliased TIM3_TISEL_Register;
      case Discriminent is
         when INPUT =>
            --  TIM3 capture/compare mode register 1 [alternate]
            TIM3_CCMR1_input : aliased TIM3_CCMR1_input_Register;
            --  TIM3 capture/compare mode register 2 [alternate]
            TIM3_CCMR2_input : aliased TIM3_CCMR2_input_Register;
         when OUTPUT =>
            --  TIM3 capture/compare mode register 1 [alternate]
            TIM3_CCMR1_output : aliased TIM3_CCMR1_output_Register;
            --  TIM3 capture/compare mode register 2 [alternate]
            TIM3_CCMR2_output : aliased TIM3_CCMR2_output_Register;
         when Default =>
            --  TIM3 counter [alternate]
            TIM3_CNT : aliased TIM3_CNT_Register;
         when ALTERNATE =>
            --  TIM3 counter [alternate]
            TIM3_CNT_alternate : aliased TIM3_CNT_alternate_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM3_Peripheral use record
      TIM3_CR1           at 16#0# range 0 .. 15;
      TIM3_CR2           at 16#4# range 0 .. 15;
      TIM3_SMCR          at 16#8# range 0 .. 31;
      TIM3_DIER          at 16#C# range 0 .. 15;
      TIM3_SR            at 16#10# range 0 .. 15;
      TIM3_EGR           at 16#14# range 0 .. 15;
      TIM3_CCER          at 16#20# range 0 .. 15;
      TIM3_PSC           at 16#28# range 0 .. 15;
      TIM3_ARR           at 16#2C# range 0 .. 31;
      TIM3_CCR1          at 16#34# range 0 .. 31;
      TIM3_CCR2          at 16#38# range 0 .. 31;
      TIM3_CCR3          at 16#3C# range 0 .. 31;
      TIM3_CCR4          at 16#40# range 0 .. 31;
      TIM3_DCR           at 16#48# range 0 .. 15;
      TIM3_DMAR          at 16#4C# range 0 .. 15;
      TIM3_AF1           at 16#60# range 0 .. 31;
      TIM3_TISEL         at 16#68# range 0 .. 31;
      TIM3_CCMR1_input   at 16#18# range 0 .. 31;
      TIM3_CCMR2_input   at 16#1C# range 0 .. 31;
      TIM3_CCMR1_output  at 16#18# range 0 .. 31;
      TIM3_CCMR2_output  at 16#1C# range 0 .. 31;
      TIM3_CNT           at 16#24# range 0 .. 31;
      TIM3_CNT_alternate at 16#24# range 0 .. 31;
   end record;

   --  General-purpose timer
   TIM3_Periph : aliased TIM3_Peripheral
     with Import, Address => TIM3_Base;

   type TIM14_Disc is
     (INPUT,
      OUTPUT);

   --  General-purpose timers
   type TIM14_Peripheral
     (Discriminent : TIM14_Disc := INPUT)
   is record
      --  TIM14 control register 1
      TIM14_CR1          : aliased TIM14_CR1_Register;
      --  TIM14 Interrupt enable register
      TIM14_DIER         : aliased TIM14_DIER_Register;
      --  TIM14 status register
      TIM14_SR           : aliased TIM14_SR_Register;
      --  TIM14 event generation register
      TIM14_EGR          : aliased TIM14_EGR_Register;
      --  TIM14 capture/compare enable register
      TIM14_CCER         : aliased TIM14_CCER_Register;
      --  TIM14 counter
      TIM14_CNT          : aliased TIM14_CNT_Register;
      --  TIM14 prescaler
      TIM14_PSC          : aliased HAL.UInt16;
      --  TIM14 auto-reload register
      TIM14_ARR          : aliased HAL.UInt16;
      --  TIM14 capture/compare register 1
      TIM14_CCR1         : aliased HAL.UInt16;
      --  TIM14 timer input selection register
      TIM14_TISEL        : aliased TIM14_TISEL_Register;
      case Discriminent is
         when INPUT =>
            --  TIM14 capture/compare mode register 1 [alternate]
            TIM14_CCMR1_input : aliased TIM14_CCMR1_input_Register;
         when OUTPUT =>
            --  TIM14 capture/compare mode register 1 [alternate]
            TIM14_CCMR1_output : aliased TIM14_CCMR1_output_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM14_Peripheral use record
      TIM14_CR1          at 16#0# range 0 .. 15;
      TIM14_DIER         at 16#C# range 0 .. 15;
      TIM14_SR           at 16#10# range 0 .. 15;
      TIM14_EGR          at 16#14# range 0 .. 15;
      TIM14_CCER         at 16#20# range 0 .. 15;
      TIM14_CNT          at 16#24# range 0 .. 31;
      TIM14_PSC          at 16#28# range 0 .. 15;
      TIM14_ARR          at 16#2C# range 0 .. 15;
      TIM14_CCR1         at 16#34# range 0 .. 15;
      TIM14_TISEL        at 16#68# range 0 .. 15;
      TIM14_CCMR1_input  at 16#18# range 0 .. 31;
      TIM14_CCMR1_output at 16#18# range 0 .. 31;
   end record;

   --  General-purpose timers
   TIM14_Periph : aliased TIM14_Peripheral
     with Import, Address => TIM14_Base;

   type TIM16_Disc is
     (INPUT,
      OUTPUT);

   --  General-purpose timers
   type TIM16_Peripheral
     (Discriminent : TIM16_Disc := INPUT)
   is record
      --  TIM16 control register 1
      TIM16_CR1          : aliased TIM16_CR1_Register;
      --  TIM16 control register 2
      TIM16_CR2          : aliased TIM16_CR2_Register;
      --  TIM16 DMA/interrupt enable register
      TIM16_DIER         : aliased TIM16_DIER_Register;
      --  TIM16 status register
      TIM16_SR           : aliased TIM16_SR_Register;
      --  TIM16 event generation register
      TIM16_EGR          : aliased TIM16_EGR_Register;
      --  TIM16 capture/compare enable register
      TIM16_CCER         : aliased TIM16_CCER_Register;
      --  TIM16 counter
      TIM16_CNT          : aliased TIM16_CNT_Register;
      --  TIM16 prescaler
      TIM16_PSC          : aliased HAL.UInt16;
      --  TIM16 auto-reload register
      TIM16_ARR          : aliased HAL.UInt16;
      --  TIM16 repetition counter register
      TIM16_RCR          : aliased TIM16_RCR_Register;
      --  TIM16 capture/compare register 1
      TIM16_CCR1         : aliased HAL.UInt16;
      --  TIM16 break and dead-time register
      TIM16_BDTR         : aliased TIM16_BDTR_Register;
      --  TIM16 DMA control register
      TIM16_DCR          : aliased TIM16_DCR_Register;
      --  TIM16 DMA address for full transfer
      TIM16_DMAR         : aliased HAL.UInt16;
      --  TIM16 alternate function register 1
      TIM16_AF1          : aliased TIM16_AF1_Register;
      --  TIM16 input selection register
      TIM16_TISEL        : aliased TIM16_TISEL_Register;
      case Discriminent is
         when INPUT =>
            --  TIM16 capture/compare mode register 1 [alternate]
            TIM16_CCMR1_input : aliased TIM16_CCMR1_input_Register;
         when OUTPUT =>
            --  TIM16 capture/compare mode register 1 [alternate]
            TIM16_CCMR1_output : aliased TIM16_CCMR1_output_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM16_Peripheral use record
      TIM16_CR1          at 16#0# range 0 .. 15;
      TIM16_CR2          at 16#4# range 0 .. 15;
      TIM16_DIER         at 16#C# range 0 .. 15;
      TIM16_SR           at 16#10# range 0 .. 15;
      TIM16_EGR          at 16#14# range 0 .. 15;
      TIM16_CCER         at 16#20# range 0 .. 15;
      TIM16_CNT          at 16#24# range 0 .. 31;
      TIM16_PSC          at 16#28# range 0 .. 15;
      TIM16_ARR          at 16#2C# range 0 .. 15;
      TIM16_RCR          at 16#30# range 0 .. 15;
      TIM16_CCR1         at 16#34# range 0 .. 15;
      TIM16_BDTR         at 16#44# range 0 .. 31;
      TIM16_DCR          at 16#48# range 0 .. 15;
      TIM16_DMAR         at 16#4C# range 0 .. 15;
      TIM16_AF1          at 16#60# range 0 .. 31;
      TIM16_TISEL        at 16#68# range 0 .. 31;
      TIM16_CCMR1_input  at 16#18# range 0 .. 31;
      TIM16_CCMR1_output at 16#18# range 0 .. 31;
   end record;

   --  General-purpose timers
   TIM16_Periph : aliased TIM16_Peripheral
     with Import, Address => TIM16_Base;

   type TIM17_Disc is
     (INPUT,
      OUTPUT);

   --  General-purpose timers
   type TIM17_Peripheral
     (Discriminent : TIM17_Disc := INPUT)
   is record
      --  TIM17 control register 1
      TIM17_CR1          : aliased TIM17_CR1_Register;
      --  TIM17 control register 2
      TIM17_CR2          : aliased TIM17_CR2_Register;
      --  TIM17 DMA/interrupt enable register
      TIM17_DIER         : aliased TIM17_DIER_Register;
      --  TIM17 status register
      TIM17_SR           : aliased TIM17_SR_Register;
      --  TIM17 event generation register
      TIM17_EGR          : aliased TIM17_EGR_Register;
      --  TIM17 capture/compare enable register
      TIM17_CCER         : aliased TIM17_CCER_Register;
      --  TIM17 counter
      TIM17_CNT          : aliased TIM17_CNT_Register;
      --  TIM17 prescaler
      TIM17_PSC          : aliased HAL.UInt16;
      --  TIM17 auto-reload register
      TIM17_ARR          : aliased HAL.UInt16;
      --  TIM17 repetition counter register
      TIM17_RCR          : aliased TIM17_RCR_Register;
      --  TIM17 capture/compare register 1
      TIM17_CCR1         : aliased HAL.UInt16;
      --  TIM17 break and dead-time register
      TIM17_BDTR         : aliased TIM17_BDTR_Register;
      --  TIM17 DMA control register
      TIM17_DCR          : aliased TIM17_DCR_Register;
      --  TIM17 DMA address for full transfer
      TIM17_DMAR         : aliased HAL.UInt16;
      --  TIM17 alternate function register 1
      TIM17_AF1          : aliased TIM17_AF1_Register;
      --  TIM17 input selection register
      TIM17_TISEL        : aliased TIM17_TISEL_Register;
      case Discriminent is
         when INPUT =>
            --  TIM17 capture/compare mode register 1 [alternate]
            TIM17_CCMR1_input : aliased TIM17_CCMR1_input_Register;
         when OUTPUT =>
            --  TIM17 capture/compare mode register 1 [alternate]
            TIM17_CCMR1_output : aliased TIM17_CCMR1_output_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM17_Peripheral use record
      TIM17_CR1          at 16#0# range 0 .. 15;
      TIM17_CR2          at 16#4# range 0 .. 15;
      TIM17_DIER         at 16#C# range 0 .. 15;
      TIM17_SR           at 16#10# range 0 .. 15;
      TIM17_EGR          at 16#14# range 0 .. 15;
      TIM17_CCER         at 16#20# range 0 .. 15;
      TIM17_CNT          at 16#24# range 0 .. 31;
      TIM17_PSC          at 16#28# range 0 .. 15;
      TIM17_ARR          at 16#2C# range 0 .. 15;
      TIM17_RCR          at 16#30# range 0 .. 15;
      TIM17_CCR1         at 16#34# range 0 .. 15;
      TIM17_BDTR         at 16#44# range 0 .. 31;
      TIM17_DCR          at 16#48# range 0 .. 15;
      TIM17_DMAR         at 16#4C# range 0 .. 15;
      TIM17_AF1          at 16#60# range 0 .. 31;
      TIM17_TISEL        at 16#68# range 0 .. 31;
      TIM17_CCMR1_input  at 16#18# range 0 .. 31;
      TIM17_CCMR1_output at 16#18# range 0 .. 31;
   end record;

   --  General-purpose timers
   TIM17_Periph : aliased TIM17_Peripheral
     with Import, Address => TIM17_Base;

end STM32_SVD.TIM;
