--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.TIMx is
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
      --  Center-aligned mode selection Note: It is not allowed to switch from
      --  edge-aligned mode to center-aligned mode as long as the counter is
      --  enabled (CEN=1)
      CMS            : TIM1_CR1_CMS_Field := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division This bit-field indicates the division ratio between
      --  the timer clock (tim_ker_ck) frequency and the dead-time and sampling
      --  clock (tDTS)used by the dead-time generators and the digital filters
      --  (tim_etr_in, tim_tix),
      CKD            : TIM1_CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  Dithering enable Note: The DITHEN bit can only be modified when CEN
      --  bit is reset.
      DITHEN         : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
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
      DITHEN         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype TIM1_CR2_MMS_1_Field is HAL.UInt3;
   subtype TIM1_CR2_MMS2_Field is HAL.UInt4;

   --  TIM1 control register 2
   type TIM1_CR2_Register is record
      --  CCPC
      CCPC           : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  CCUS
      CCUS           : Boolean := False;
      --  CCDS
      CCDS           : Boolean := False;
      --  MMS_1
      MMS_1          : TIM1_CR2_MMS_1_Field := 16#0#;
      --  TI1S
      TI1S           : Boolean := False;
      --  OIS1
      OIS1           : Boolean := False;
      --  OIS1N
      OIS1N          : Boolean := False;
      --  OIS2
      OIS2           : Boolean := False;
      --  OIS2N
      OIS2N          : Boolean := False;
      --  OIS3
      OIS3           : Boolean := False;
      --  OIS3N
      OIS3N          : Boolean := False;
      --  OIS4
      OIS4           : Boolean := False;
      --  OIS4N
      OIS4N          : Boolean := False;
      --  OIS5
      OIS5           : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  OIS6
      OIS6           : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  MMS2
      MMS2           : TIM1_CR2_MMS2_Field := 16#0#;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  MMS_2
      MMS_2          : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CR2_Register use record
      CCPC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCUS           at 0 range 2 .. 2;
      CCDS           at 0 range 3 .. 3;
      MMS_1          at 0 range 4 .. 6;
      TI1S           at 0 range 7 .. 7;
      OIS1           at 0 range 8 .. 8;
      OIS1N          at 0 range 9 .. 9;
      OIS2           at 0 range 10 .. 10;
      OIS2N          at 0 range 11 .. 11;
      OIS3           at 0 range 12 .. 12;
      OIS3N          at 0 range 13 .. 13;
      OIS4           at 0 range 14 .. 14;
      OIS4N          at 0 range 15 .. 15;
      OIS5           at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      OIS6           at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      MMS2           at 0 range 20 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      MMS_2          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype TIM1_SMCR_SMS1_Field is HAL.UInt3;
   subtype TIM1_SMCR_TS1_Field is HAL.UInt3;
   subtype TIM1_SMCR_ETF_Field is HAL.UInt4;
   subtype TIM1_SMCR_ETPS_Field is HAL.UInt2;
   subtype TIM1_SMCR_TS2_Field is HAL.UInt2;

   --  TIM1 slave mode control register
   type TIM1_SMCR_Register is record
      --  Slave mode selection When external signals are selected the active
      --  edge of the trigger signal (tim_trgi) is linked to the polarity
      --  selected on the external input (see Input Control register and
      --  Control Register description. Note: The gated mode must not be used
      --  if tim_ti1f_ed is selected as the trigger input (TS=00100). Indeed,
      --  tim_ti1f_ed outputs 1 pulse for each transition on TI1F, whereas the
      --  gated mode checks the level of the trigger signal. Note: The clock of
      --  the slave peripherals (timer, ADC, ...) receiving the tim_trgo or the
      --  tim_trgo2 signals must be enabled prior to receive events from the
      --  master timer, and the clock frequency (prescaler) must not be changed
      --  on-the-fly while triggers are received from the master timer.
      SMS1           : TIM1_SMCR_SMS1_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trigger selection - bit 4:3 Refer to TS[2:0] description - bits 6:4
      --  null Trigger selection This bitfield is combined with TS[4:3] bits.
      --  This bit-field selects the trigger input to be used to synchronize
      --  the counter. others: Reserved See for more details on tim_itrx
      --  meaning for each Timer. Note: These bits must be changed only when
      --  they are not used (e.g. when SMS=000) to avoid wrong edge detections
      --  at the transition.
      TS1            : TIM1_SMCR_TS1_Field := 16#0#;
      --  Master/slave mode
      MSM            : Boolean := False;
      --  External trigger filter This bit-field then defines the frequency
      --  used to sample tim_etrp signal and the length of the digital filter
      --  applied to tim_etrp. The digital filter is made of an event counter
      --  in which N consecutive events are needed to validate a transition on
      --  the output:
      ETF            : TIM1_SMCR_ETF_Field := 16#0#;
      --  External trigger prescaler External trigger signal tim_etrp frequency
      --  must be at most 1/4 of TIMxCLK frequency. A prescaler can be enabled
      --  to reduce tim_etrp frequency. It is useful when inputting fast
      --  external clocks on tim_etr_in.
      ETPS           : TIM1_SMCR_ETPS_Field := 16#0#;
      --  External clock enable This bit enables External clock mode 2. Note:
      --  Setting the ECE bit has the same effect as selecting external clock
      --  mode 1 with tim_trgi connected to tim_etrf (SMS=111 and TS=00111). It
      --  is possible to simultaneously use external clock mode 2 with the
      --  following slave modes: reset mode, gated mode and trigger mode.
      --  Nevertheless, tim_trgi must not be connected to tim_etrf in this case
      --  (TS bits must not be 00111). If external clock mode 1 and external
      --  clock mode 2 are enabled at the same time, the external clock input
      --  is tim_etrf.
      ECE            : Boolean := False;
      --  External trigger polarity This bit selects whether tim_etr_in or
      --  tim_etr_in is used for trigger operations
      ETP            : Boolean := False;
      --  Slave mode selection When external signals are selected the active
      --  edge of the trigger signal (tim_trgi) is linked to the polarity
      --  selected on the external input (see Input Control register and
      --  Control Register description. Note: The gated mode must not be used
      --  if tim_ti1f_ed is selected as the trigger input (TS=00100). Indeed,
      --  tim_ti1f_ed outputs 1 pulse for each transition on TI1F, whereas the
      --  gated mode checks the level of the trigger signal. Note: The clock of
      --  the slave peripherals (timer, ADC, ...) receiving the tim_trgo or the
      --  tim_trgo2 signals must be enabled prior to receive events from the
      --  master timer, and the clock frequency (prescaler) must not be changed
      --  on-the-fly while triggers are received from the master timer.
      SMS2           : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Trigger selection - bit 4:3 Refer to TS[2:0] description - bits 6:4
      --  null Trigger selection This bitfield is combined with TS[4:3] bits.
      --  This bit-field selects the trigger input to be used to synchronize
      --  the counter. others: Reserved See for more details on tim_itrx
      --  meaning for each Timer. Note: These bits must be changed only when
      --  they are not used (e.g. when SMS=000) to avoid wrong edge detections
      --  at the transition.
      TS2            : TIM1_SMCR_TS2_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  SMS preload enable This bit selects whether the SMS[3:0] bitfield is
      --  preloaded
      SMSPE          : Boolean := False;
      --  SMS preload source This bit selects whether the events that triggers
      --  the SMS[3:0] bitfield transfer from preload to active
      SMSPS          : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_SMCR_Register use record
      SMS1           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TS1            at 0 range 4 .. 6;
      MSM            at 0 range 7 .. 7;
      ETF            at 0 range 8 .. 11;
      ETPS           at 0 range 12 .. 13;
      ECE            at 0 range 14 .. 14;
      ETP            at 0 range 15 .. 15;
      SMS2           at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      TS2            at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      SMSPE          at 0 range 24 .. 24;
      SMSPS          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  TIM1 DMA/interrupt enable register
   type TIM1_DIER_Register is record
      --  Update interrupt enable
      UIE            : Boolean := False;
      --  Capture/compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Capture/compare 2 interrupt enable
      CC2IE          : Boolean := False;
      --  Capture/compare 3 interrupt enable
      CC3IE          : Boolean := False;
      --  Capture/compare 4 interrupt enable
      CC4IE          : Boolean := False;
      --  COM interrupt enable
      COMIE          : Boolean := False;
      --  Trigger interrupt enable
      TIE            : Boolean := False;
      --  Break interrupt enable
      BIE            : Boolean := False;
      --  Update DMA request enable
      UDE            : Boolean := False;
      --  Capture/compare 1 DMA request enable
      CC1DE          : Boolean := False;
      --  Capture/compare 2 DMA request enable
      CC2DE          : Boolean := False;
      --  Capture/compare 3 DMA request enable
      CC3DE          : Boolean := False;
      --  Capture/compare 4 DMA request enable
      CC4DE          : Boolean := False;
      --  COM DMA request enable
      COMDE          : Boolean := False;
      --  Trigger DMA request enable
      TDE            : Boolean := False;
      --  unspecified
      Reserved_15_19 : HAL.UInt5 := 16#0#;
      --  Index interrupt enable
      IDXIE          : Boolean := False;
      --  Direction change interrupt enable
      DIRIE          : Boolean := False;
      --  Index error interrupt enable
      IERRIE         : Boolean := False;
      --  Transition error interrupt enable
      TERRIE         : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
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
      Reserved_15_19 at 0 range 15 .. 19;
      IDXIE          at 0 range 20 .. 20;
      DIRIE          at 0 range 21 .. 21;
      IERRIE         at 0 range 22 .. 22;
      TERRIE         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  TIM1 status register
   type TIM1_SR_Register is record
      --  Update interrupt flag This bit is set by hardware on an update event.
      --  It is cleared by software. At overflow or underflow regarding the
      --  repetition counter value (update if repetition counter = 0) and if
      --  the UDIS=0 in the TIMx_CR1 register. When CNT is reinitialized by
      --  software using the UG bit in TIMx_EGR register, if URS=0 and UDIS=0
      --  in the TIMx_CR1 register. When CNT is reinitialized by a trigger
      --  event (refer to control register (TIMx_SMCR)(x = 1, 8, 20)), if URS=0
      --  and UDIS=0 in the TIMx_CR1 register.
      UIF            : Boolean := False;
      --  Capture/compare 1 interrupt flag This flag is set by hardware. It is
      --  cleared by software (input capture or output compare mode) or by
      --  reading the TIMx_CCR1 register (input capture mode only). If channel
      --  CC1 is configured as output: this flag is set when the content of the
      --  counter TIMx_CNT matches the content of the TIMx_CCR1 register. When
      --  the content of TIMx_CCR1 is greater than the content of TIMx_ARR, the
      --  CC1IF bit goes high on the counter overflow (in up-counting and
      --  up/down-counting modes) or underflow (in downcounting mode). There
      --  are 3 possible options for flag setting in center-aligned mode, refer
      --  to the CMS bits in the TIMx_CR1 register for the full description. If
      --  channel CC1 is configured as input: this bit is set when counter
      --  value has been captured in TIMx_CCR1 register (an edge has been
      --  detected on IC1, as per the edge sensitivity defined with the CC1P
      --  and CC1NP bits setting, in TIMx_CCER).
      CC1IF          : Boolean := False;
      --  Capture/compare 2 interrupt flag Refer to CC1IF description
      CC2IF          : Boolean := False;
      --  Capture/compare 3 interrupt flag Refer to CC1IF description
      CC3IF          : Boolean := False;
      --  Capture/compare 4 interrupt flag Refer to CC1IF description
      CC4IF          : Boolean := False;
      --  COM interrupt flag This flag is set by hardware on COM event (when
      --  capture/compare Control bits - CCxE, CCxNE, OCxM - have been
      --  updated). It is cleared by software.
      COMIF          : Boolean := False;
      --  Trigger interrupt flag This flag is set by hardware on the TRG
      --  trigger event (active edge detected on tim_trgi input when the slave
      --  mode controller is enabled in all modes but gated mode. It is set
      --  when the counter starts or stops when gated mode is selected. It is
      --  cleared by software.
      TIF            : Boolean := False;
      --  Break interrupt flag This flag is set by hardware as soon as the
      --  break input goes active. It can be cleared by software if the break
      --  input is not active.
      BIF            : Boolean := False;
      --  Break 2 interrupt flag This flag is set by hardware as soon as the
      --  break 2 input goes active. It can be cleared by software if the break
      --  2 input is not active.
      B2IF           : Boolean := False;
      --  Capture/compare 1 overcapture flag This flag is set by hardware only
      --  when the corresponding channel is configured in input capture mode.
      --  It is cleared by software by writing it to 0 .
      CC1OF          : Boolean := False;
      --  Capture/compare 2 overcapture flag Refer to CC1OF description
      CC2OF          : Boolean := False;
      --  Capture/compare 3 overcapture flag Refer to CC1OF description
      CC3OF          : Boolean := False;
      --  Capture/compare 4 overcapture flag Refer to CC1OF description
      CC4OF          : Boolean := False;
      --  System break interrupt flag This flag is set by hardware as soon as
      --  the system break input goes active. It can be cleared by software if
      --  the system break input is not active. This flag must be reset to
      --  re-start PWM operation.
      SBIF           : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Compare 5 interrupt flag Refer to CC1IF description Note: Channel 5
      --  can only be configured as output.
      CC5IF          : Boolean := False;
      --  Compare 6 interrupt flag Refer to CC1IF description Note: Channel 6
      --  can only be configured as output.
      CC6IF          : Boolean := False;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Index interrupt flag This flag is set by hardware when an index event
      --  is detected. It is cleared by software by writing it to 0 .
      IDXF           : Boolean := False;
      --  Direction change interrupt flag This flag is set by hardware when the
      --  direction changes in encoder mode (DIR bit value in TIMx_CR is
      --  changing). It is cleared by software by writing it to 0 .
      DIRF           : Boolean := False;
      --  Index error interrupt flag This flag is set by hardware when an index
      --  error is detected. It is cleared by software by writing it to 0 .
      IERRF          : Boolean := False;
      --  Transition error interrupt flag This flag is set by hardware when a
      --  transition error is detected in encoder mode. It is cleared by
      --  software by writing it to 0 .
      TERRF          : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
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
      Reserved_18_19 at 0 range 18 .. 19;
      IDXF           at 0 range 20 .. 20;
      DIRF           at 0 range 21 .. 21;
      IERRF          at 0 range 22 .. 22;
      TERRF          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  TIM1 event generation register
   type TIM1_EGR_Register is record
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
      --  Write-only. Capture/compare control update generation This bit can be
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

   subtype TIM1_CCMR1_Input_CC1S_Field is HAL.UInt2;
   subtype TIM1_CCMR1_Input_IC1PSC_Field is HAL.UInt2;
   subtype TIM1_CCMR1_Input_IC1F_Field is HAL.UInt4;
   subtype TIM1_CCMR1_Input_CC2S_Field is HAL.UInt2;
   subtype TIM1_CCMR1_Input_IC2PSC_Field is HAL.UInt2;
   subtype TIM1_CCMR1_Input_IC2F_Field is HAL.UInt4;

   --  TIM1 capture/compare mode register 1 [alternate]
   type TIM1_CCMR1_Input_Register is record
      --  Capture/compare 1 Selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC1S bits
      --  are writable only when the channel is OFF (CC1E = 0 in TIMx_CCER).
      CC1S           : TIM1_CCMR1_Input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler This bit-field defines the ratio of the
      --  prescaler acting on CC1 input (tim_ic1). The prescaler is reset as
      --  soon as CC1E= 0 (TIMx_CCER register).
      IC1PSC         : TIM1_CCMR1_Input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter This bit-field defines the frequency used to
      --  sample tim_ti1 input and the length of the digital filter applied to
      --  tim_ti1. The digital filter is made of an event counter in which N
      --  consecutive events are needed to validate a transition on the output:
      IC1F           : TIM1_CCMR1_Input_IC1F_Field := 16#0#;
      --  Capture/compare 2 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC2S bits
      --  are writable only when the channel is OFF (CC2E = 0 in TIMx_CCER).
      CC2S           : TIM1_CCMR1_Input_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : TIM1_CCMR1_Input_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : TIM1_CCMR1_Input_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCMR1_Input_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM1_CCMR1_Output_CC1S_Field is HAL.UInt2;
   subtype TIM1_CCMR1_Output_OC1M1_Field is HAL.UInt3;
   subtype TIM1_CCMR1_Output_CC2S_Field is HAL.UInt2;
   subtype TIM1_CCMR1_Output_OC2M1_Field is HAL.UInt3;

   --  TIM1 capture/compare mode register 1 [alternate]
   type TIM1_CCMR1_Output_Register is record
      --  Capture/compare 1 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC1S bits
      --  are writable only when the channel is OFF (CC1E = 0 in TIMx_CCER).
      CC1S           : TIM1_CCMR1_Output_CC1S_Field := 16#0#;
      --  Output compare 1 fast enable This bit decreases the latency between a
      --  trigger event and a transition on the timer output. It must be used
      --  in one-pulse mode (OPM bit set in TIMx_CR1 register), to have the
      --  output pulse starting as soon as possible after the starting trigger.
      OC1FE          : Boolean := False;
      --  Output compare 1 preload enable Note: These bits can not be modified
      --  as long as LOCK level 3 has been programmed (LOCK bits in TIMx_BDTR
      --  register) and CC1S= 00 (the channel is configured in output). The PWM
      --  mode can be used without validating the preload register only in one
      --  pulse mode (OPM bit set in TIMx_CR1 register). Else the behavior is
      --  not guaranteed.
      OC1PE          : Boolean := False;
      --  Output compare 1 mode These bits define the behavior of the output
      --  reference signal tim_oc1ref from which tim_oc1 and tim_oc1n are
      --  derived. tim_oc1ref is active high whereas tim_oc1 and tim_oc1n
      --  active level depends on CC1P and CC1NP bits. Note: These bits can not
      --  be modified as long as LOCK level 3 has been programmed (LOCK bits in
      --  TIMx_BDTR register) and CC1S= 00 (the channel is configured in
      --  output). Note: In PWM mode, the OCREF level changes only when the
      --  result of the comparison changes or when the output compare mode
      --  switches from frozen  mode to PWM  mode. Note: On
      --  channels having a complementary output, this bit field is preloaded.
      --  If the CCPC bit is set in the TIMx_CR2 register then the OC1M active
      --  bits take the new value from the preloaded bits only when a COM event
      --  is generated.
      OC1M1          : TIM1_CCMR1_Output_OC1M1_Field := 16#0#;
      --  Output compare 1 clear enable
      OC1CE          : Boolean := False;
      --  Capture/compare 2 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC2S bits
      --  are writable only when the channel is OFF (CC2E = 0 in TIMx_CCER).
      CC2S           : TIM1_CCMR1_Output_CC2S_Field := 16#0#;
      --  Output compare 2 fast enable
      OC2FE          : Boolean := False;
      --  Output compare 2 preload enable
      OC2PE          : Boolean := False;
      --  Output compare 2 mode
      OC2M1          : TIM1_CCMR1_Output_OC2M1_Field := 16#0#;
      --  Output compare 2 clear enable
      OC2CE          : Boolean := False;
      --  Output compare 1 mode These bits define the behavior of the output
      --  reference signal tim_oc1ref from which tim_oc1 and tim_oc1n are
      --  derived. tim_oc1ref is active high whereas tim_oc1 and tim_oc1n
      --  active level depends on CC1P and CC1NP bits. Note: These bits can not
      --  be modified as long as LOCK level 3 has been programmed (LOCK bits in
      --  TIMx_BDTR register) and CC1S= 00 (the channel is configured in
      --  output). Note: In PWM mode, the OCREF level changes only when the
      --  result of the comparison changes or when the output compare mode
      --  switches from frozen  mode to PWM  mode. Note: On
      --  channels having a complementary output, this bit field is preloaded.
      --  If the CCPC bit is set in the TIMx_CR2 register then the OC1M active
      --  bits take the new value from the preloaded bits only when a COM event
      --  is generated.
      OC1M2          : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Output compare 2 mode
      OC2M2          : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCMR1_Output_Register use record
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

   subtype TIM1_CCMR2_Input_CC3S_Field is HAL.UInt2;
   subtype TIM1_CCMR2_Input_IC3PSC_Field is HAL.UInt2;
   subtype TIM1_CCMR2_Input_IC3F_Field is HAL.UInt4;
   subtype TIM1_CCMR2_Input_CC4S_Field is HAL.UInt2;
   subtype TIM1_CCMR2_Input_IC4PSC_Field is HAL.UInt2;
   subtype TIM1_CCMR2_Input_IC4F_Field is HAL.UInt4;

   --  TIM1 capture/compare mode register 2 [alternate]
   type TIM1_CCMR2_Input_Register is record
      --  Capture/compare 3 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC3S bits
      --  are writable only when the channel is OFF (CC3E = 0 in TIMx_CCER).
      CC3S           : TIM1_CCMR2_Input_CC3S_Field := 16#0#;
      --  Input capture 3 prescaler
      IC3PSC         : TIM1_CCMR2_Input_IC3PSC_Field := 16#0#;
      --  Input capture 3 filter
      IC3F           : TIM1_CCMR2_Input_IC3F_Field := 16#0#;
      --  Capture/compare 4 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC4S bits
      --  are writable only when the channel is OFF (CC4E = 0 in TIMx_CCER).
      CC4S           : TIM1_CCMR2_Input_CC4S_Field := 16#0#;
      --  Input capture 4 prescaler
      IC4PSC         : TIM1_CCMR2_Input_IC4PSC_Field := 16#0#;
      --  Input capture 4 filter
      IC4F           : TIM1_CCMR2_Input_IC4F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCMR2_Input_Register use record
      CC3S           at 0 range 0 .. 1;
      IC3PSC         at 0 range 2 .. 3;
      IC3F           at 0 range 4 .. 7;
      CC4S           at 0 range 8 .. 9;
      IC4PSC         at 0 range 10 .. 11;
      IC4F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM1_CCMR2_Output_CC3S_Field is HAL.UInt2;
   subtype TIM1_CCMR2_Output_OC3M1_Field is HAL.UInt3;
   subtype TIM1_CCMR2_Output_CC4S_Field is HAL.UInt2;
   subtype TIM1_CCMR2_Output_OC4M1_Field is HAL.UInt3;

   --  TIM1 capture/compare mode register 2 [alternate]
   type TIM1_CCMR2_Output_Register is record
      --  Capture/compare 3 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC3S bits
      --  are writable only when the channel is OFF (CC3E = 0 in TIMx_CCER).
      CC3S           : TIM1_CCMR2_Output_CC3S_Field := 16#0#;
      --  Output compare 3 fast enable
      OC3FE          : Boolean := False;
      --  Output compare 3 preload enable
      OC3PE          : Boolean := False;
      --  Output compare 3 mode These bits define the behavior of the output
      --  reference signal tim_oc3ref from which tim_oc3 and tim_oc3n are
      --  derived. tim_oc3ref is active high whereas tim_oc3 and tim_oc3n
      --  active level depends on CC3P and CC3NP bits. Note: These bits can not
      --  be modified as long as LOCK level 3 has been programmed (LOCK bits in
      --  TIMx_BDTR register) and CC1S= 00 (the channel is configured in
      --  output). Note: In PWM mode, the OCREF level changes only when the
      --  result of the comparison changes or when the output compare mode
      --  switches from frozen  mode to PWM  mode. On channels
      --  having a complementary output, this bit field is preloaded. If the
      --  CCPC bit is set in the TIMx_CR2 register then the OC3M active bits
      --  take the new value from the preloaded bits only when a COM event is
      --  generated.
      OC3M1          : TIM1_CCMR2_Output_OC3M1_Field := 16#0#;
      --  Output compare 3 clear enable
      OC3CE          : Boolean := False;
      --  Capture/compare 4 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC4S bits
      --  are writable only when the channel is OFF (CC4E = 0 in TIMx_CCER).
      CC4S           : TIM1_CCMR2_Output_CC4S_Field := 16#0#;
      --  Output compare 4 fast enable
      OC4FE          : Boolean := False;
      --  Output compare 4 preload enable
      OC4PE          : Boolean := False;
      --  Output compare 4 mode Refer to OC3M[3:0] bit description
      OC4M1          : TIM1_CCMR2_Output_OC4M1_Field := 16#0#;
      --  Output compare 4 clear enable
      OC4CE          : Boolean := False;
      --  Output compare 3 mode These bits define the behavior of the output
      --  reference signal tim_oc3ref from which tim_oc3 and tim_oc3n are
      --  derived. tim_oc3ref is active high whereas tim_oc3 and tim_oc3n
      --  active level depends on CC3P and CC3NP bits. Note: These bits can not
      --  be modified as long as LOCK level 3 has been programmed (LOCK bits in
      --  TIMx_BDTR register) and CC1S= 00 (the channel is configured in
      --  output). Note: In PWM mode, the OCREF level changes only when the
      --  result of the comparison changes or when the output compare mode
      --  switches from frozen  mode to PWM  mode. On channels
      --  having a complementary output, this bit field is preloaded. If the
      --  CCPC bit is set in the TIMx_CR2 register then the OC3M active bits
      --  take the new value from the preloaded bits only when a COM event is
      --  generated.
      OC3M2          : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Output compare 4 mode Refer to OC3M[3:0] bit description
      OC4M2          : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCMR2_Output_Register use record
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
      --  Capture/compare 1 output enable When CC1 channel is configured as
      --  output, the OC1 level depends on MOE, OSSI, OSSR, OIS1, OIS1N and
      --  CC1NE bits, regardless of the CC1E bits state. Refer to for details.
      --  Note: On channels having a complementary output, this bit is
      --  preloaded. If the CCPC bit is set in the TIMx_CR2 register then the
      --  CC1E active bit takes the new value from the preloaded bit only when
      --  a Commutation event is generated.
      CC1E           : Boolean := False;
      --  Capture/compare 1 output polarity When CC1 channel is configured as
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
      --  used in encoder mode. CC1NP=1, CC1P=0:	the configuration is reserved,
      --  it must not be used. Note: This bit is not writable as soon as LOCK
      --  level 2 or 3 has been programmed (LOCK bits in TIMx_BDTR register).
      --  Note: On channels having a complementary output, this bit is
      --  preloaded. If the CCPC bit is set in the TIMx_CR2 register then the
      --  CC1P active bit takes the new value from the preloaded bit only when
      --  a Commutation event is generated.
      CC1P           : Boolean := False;
      --  Capture/compare 1 complementary output enable Note: On channels
      --  having a complementary output, this bit is preloaded. If the CCPC bit
      --  is set in the TIMx_CR2 register then the CC1NE active bit takes the
      --  new value from the preloaded bit only when a Commutation event is
      --  generated.
      CC1NE          : Boolean := False;
      --  Capture/compare 1 complementary output polarity CC1 channel
      --  configured as output: CC1 channel configured as input: This bit is
      --  used in conjunction with CC1P to define the polarity of tim_ti1fp1
      --  and tim_ti2fp1. Refer to CC1P description. Note: This bit is not
      --  writable as soon as LOCK level 2 or 3 has been programmed (LOCK bits
      --  in TIMx_BDTR register) and CC1S= 00  (channel configured as
      --  output). Note: On channels having a complementary output, this bit is
      --  preloaded. If the CCPC bit is set in the TIMx_CR2 register then the
      --  CC1NP active bit takes the new value from the preloaded bit only when
      --  a Commutation event is generated.
      CC1NP          : Boolean := False;
      --  Capture/compare 2 output enable Refer to CC1E description
      CC2E           : Boolean := False;
      --  Capture/compare 2 output polarity Refer to CC1P description
      CC2P           : Boolean := False;
      --  Capture/compare 2 complementary output enable Refer to CC1NE
      --  description
      CC2NE          : Boolean := False;
      --  Capture/compare 2 complementary output polarity Refer to CC1NP
      --  description
      CC2NP          : Boolean := False;
      --  Capture/compare 3 output enable Refer to CC1E description
      CC3E           : Boolean := False;
      --  Capture/compare 3 output polarity Refer to CC1P description
      CC3P           : Boolean := False;
      --  Capture/compare 3 complementary output enable Refer to CC1NE
      --  description
      CC3NE          : Boolean := False;
      --  Capture/compare 3 complementary output polarity Refer to CC1NP
      --  description
      CC3NP          : Boolean := False;
      --  Capture/compare 4 output enable Refer to CC1E description
      CC4E           : Boolean := False;
      --  Capture/compare 4 output polarity Refer to CC1P description
      CC4P           : Boolean := False;
      --  Capture/compare 4 complementary output enable Refer to CC1NE
      --  description
      CC4NE          : Boolean := False;
      --  Capture/compare 4 complementary output polarity Refer to CC1NP
      --  description
      CC4NP          : Boolean := False;
      --  Capture/compare 5 output enable Refer to CC1E description
      CC5E           : Boolean := False;
      --  Capture/compare 5 output polarity Refer to CC1P description
      CC5P           : Boolean := False;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Capture/compare 6 output enable Refer to CC1E description
      CC6E           : Boolean := False;
      --  Capture/compare 6 output polarity Refer to CC1P description
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
      CC4NE          at 0 range 14 .. 14;
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
      --  Counter value Non-dithering mode (DITHEN = 0) The register holds the
      --  counter value. Dithering mode (DITHEN = 1) The register only holds
      --  the non-dithered part in CNT[15:0]. The fractional part is not
      --  available.
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

   subtype TIM1_ARR_ARR_Field is HAL.UInt20;

   --  TIM1 auto-reload register
   type TIM1_ARR_Register is record
      --  Auto-reload value ARR is the value to be loaded in the actual
      --  auto-reload register. Refer to the for more details about ARR update
      --  and behavior. The counter is blocked while the auto-reload value is
      --  null. Non-dithering mode (DITHEN = 0) The register holds the
      --  auto-reload value. Dithering mode (DITHEN = 1) The register holds the
      --  integer part in ARR[19:4]. The ARR[3:0] bitfield contains the
      --  dithered part.
      ARR            : TIM1_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM1_CCR1_CCR1_Field is HAL.UInt20;

   --  TIM1 capture/compare register 1
   type TIM1_CCR1_Register is record
      --  Capture/compare 1 value If channel CC1 is configured as output: CCR1
      --  is the value to be loaded in the actual capture/compare 1 register
      --  (preload value). It is loaded permanently if the preload feature is
      --  not selected in the TIMx_CCMR1 register (bit OC1PE). Else the preload
      --  value is copied in the active capture/compare 1 register when an
      --  update event occurs. The active capture/compare register contains the
      --  value to be compared to the counter TIMx_CNT and signaled on tim_oc1
      --  output. Non-dithering mode (DITHEN = 0) The register holds the
      --  compare value in CCR1[15:0]. The CCR1[19:16] bits are reset.
      --  Dithering mode (DITHEN = 1) The register holds the integer part in
      --  CCR1[19:4]. The CCR1[3:0] bitfield contains the dithered part. If
      --  channel CC1 is configured as input: CR1 is the counter value
      --  transferred by the last input capture 1 event (tim_ic1). The
      --  TIMx_CCR1 register is read-only and cannot be programmed.
      --  Non-dithering mode (DITHEN = 0) The register holds the capture value
      --  in CCR1[15:0]. The CCR1[19:16] bits are reset. Dithering mode (DITHEN
      --  = 1) The register holds the capture in CCR1[19:4]. The CCR1[3:0] bits
      --  are reset.
      CCR1           : TIM1_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCR1_Register use record
      CCR1           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM1_CCR2_CCR2_Field is HAL.UInt20;

   --  TIM1 capture/compare register 2
   type TIM1_CCR2_Register is record
      --  Capture/compare 2 value If channel CC2 is configured as output: CCR2
      --  is the value to be loaded in the actual capture/compare 2 register
      --  (preload value). It is loaded permanently if the preload feature is
      --  not selected in the TIMx_CCMR1 register (bit OC2PE). Else the preload
      --  value is copied in the active capture/compare 2 register when an
      --  update event occurs. The active capture/compare register contains the
      --  value to be compared to the counter TIMx_CNT and signaled on tim_oc2
      --  output. Non-dithering mode (DITHEN = 0) The register holds the
      --  compare value in CCR2[15:0]. The CCR2[19:16] bits are reset.
      --  Dithering mode (DITHEN = 1) The register holds the integer part in
      --  CCR2[19:4]. The CCR2[3:0] bitfield contains the dithered part. If
      --  channel CC2 is configured as input: CCR2 is the counter value
      --  transferred by the last input capture 2 event (tim_ic2). The
      --  TIMx_CCR2 register is read-only and cannot be programmed.
      --  Non-dithering mode (DITHEN = 0) The register holds the capture value
      --  in CCR2[15:0]. The CCR2[19:16] bits are reset. Dithering mode (DITHEN
      --  = 1) The register holds the capture in CCR2[19:4]. The CCR2[3:0] bits
      --  are reset.
      CCR2           : TIM1_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCR2_Register use record
      CCR2           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM1_CCR3_CCR3_Field is HAL.UInt20;

   --  TIM1 capture/compare register 3
   type TIM1_CCR3_Register is record
      --  Capture/compare value If channel CC3 is configured as output: CCR3 is
      --  the value to be loaded in the actual capture/compare 3 register
      --  (preload value). It is loaded permanently if the preload feature is
      --  not selected in the TIMx_CCMR2 register (bit OC3PE). Else the preload
      --  value is copied in the active capture/compare 3 register when an
      --  update event occurs. The active capture/compare register contains the
      --  value to be compared to the counter TIMx_CNT and signaled on tim_oc3
      --  output. Non-dithering mode (DITHEN = 0) The register holds the
      --  compare value in CCR3[15:0]. The CCR3[19:16] bits are reset.
      --  Dithering mode (DITHEN = 1) The register holds the integer part in
      --  CCR3[19:4]. The CCR3[3:0] bitfield contains the dithered part. If
      --  channel CC3 is configured as input: CCR3 is the counter value
      --  transferred by the last input capture 3 event (tim_ic3). The
      --  TIMx_CCR3 register is read-only and cannot be programmed.
      --  Non-dithering mode (DITHEN = 0) The register holds the capture value
      --  in CCR3[15:0]. The CCR3[19:16] bits are reset. Dithering mode (DITHEN
      --  = 1) The register holds the capture in CCR3[19:4]. The CCR3[3:0] bits
      --  are reset.
      CCR3           : TIM1_CCR3_CCR3_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCR3_Register use record
      CCR3           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM1_CCR4_CCR4_Field is HAL.UInt20;

   --  TIM1 capture/compare register 4
   type TIM1_CCR4_Register is record
      --  Capture/compare value If channel CC4 is configured as output: CCR4 is
      --  the value to be loaded in the actual capture/compare 4 register
      --  (preload value). It is loaded permanently if the preload feature is
      --  not selected in the TIMx_CCMR2 register (bit OC4PE). Else the preload
      --  value is copied in the active capture/compare 4 register when an
      --  update event occurs. The active capture/compare register contains the
      --  value to be compared to the counter TIMx_CNT and signalled on tim_oc4
      --  output. Non-dithering mode (DITHEN = 0) The register holds the
      --  compare value in CCR4[15:0]. The CCR4[19:16] bits are reset.
      --  Dithering mode (DITHEN = 1) The register holds the integer part in
      --  CCR4[19:4]. The CCR4[3:0] bitfield contains the dithered part. If
      --  channel CC4 is configured as input: CCR4 is the counter value
      --  transferred by the last input capture 4 event (tim_ic4). The
      --  TIMx_CCR4 register is read-only and cannot be programmed.
      --  Non-dithering mode (DITHEN = 0) The register holds the capture value
      --  in CCR4[15:0]. The CCR4[19:16] bits are reset. Dithering mode (DITHEN
      --  = 1) The register holds the capture in CCR4[19:4]. The CCR4[3:0] bits
      --  are reset.
      CCR4           : TIM1_CCR4_CCR4_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCR4_Register use record
      CCR4           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM1_BDTR_DTG_Field is HAL.UInt8;
   subtype TIM1_BDTR_LOCK_Field is HAL.UInt2;
   subtype TIM1_BDTR_BKF_Field is HAL.UInt4;
   subtype TIM1_BDTR_BK2F_Field is HAL.UInt4;

   --  TIM1 break and dead-time register
   type TIM1_BDTR_Register is record
      --  Dead-time generator setup This bit-field defines the duration of the
      --  dead-time inserted between the complementary outputs. DT correspond
      --  to this duration. DTG[7:5]=0xx = DT=DTG[7:0]x tdtg with tdtg=tDTS.
      --  DTG[7:5]=10x = DT=(64+DTG[5:0])xtdtg with Tdtg=2xtDTS. DTG[7:5]=110 =
      --  DT=(32+DTG[4:0])xtdtg with Tdtg=8xtDTS. DTG[7:5]=111 =
      --  DT=(32+DTG[4:0])xtdtg with Tdtg=16xtDTS. Example if TDTS=125ns
      --  (8MHz), dead-time possible values are: 0 to 15875 ns by 125 ns steps,
      --  16 us to 31750 ns by 250 ns steps, 32 us to 63us by 1 us steps, 64 us
      --  to 126 us by 2 us steps Note: This bit-field can not be modified as
      --  long as LOCK level 1, 2 or 3 has been programmed (LOCK bits in
      --  TIMx_BDTR register).
      DTG            : TIM1_BDTR_DTG_Field := 16#0#;
      --  Lock configuration These bits offer a write protection against
      --  software errors. Note: The LOCK bits can be written only once after
      --  the reset. Once the TIMx_BDTR register has been written, their
      --  content is frozen until the next reset.
      LOCK           : TIM1_BDTR_LOCK_Field := 16#0#;
      --  Off-state selection for idle mode This bit is used when MOE=0 due to
      --  a break event or by a software write, on channels configured as
      --  outputs. See OC/OCN enable description for more details (enable
      --  register (TIMx_CCER)(x = 1, 8, 20)). Note: This bit can not be
      --  modified as soon as the LOCK level 2 has been programmed (LOCK bits
      --  in TIMx_BDTR register).
      OSSI           : Boolean := False;
      --  Off-state selection for Run mode This bit is used when MOE=1 on
      --  channels having a complementary output which are configured as
      --  outputs. OSSR is not implemented if no complementary output is
      --  implemented in the timer. See OC/OCN enable description for more
      --  details (enable register (TIMx_CCER)(x = 1, 8, 20)). Note: This bit
      --  can not be modified as soon as the LOCK level 2 has been programmed
      --  (LOCK bits in TIMx_BDTR register).
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
      --  soon as one of the break inputs is active (tim_brk or tim_brk2). It
      --  is set by software or automatically depending on the AOE bit. It is
      --  acting only on the channels which are configured in output. In
      --  response to a break event or if MOE is written to 0: OC and OCN
      --  outputs are disabled or forced to idle state depending on the OSSI
      --  bit. enable register (TIMx_CCER)(x = 1, 8, 20)).
      MOE            : Boolean := False;
      --  Break filter This bit-field defines the frequency used to sample
      --  tim_brk input and the length of the digital filter applied to
      --  tim_brk. The digital filter is made of an event counter in which N
      --  consecutive events are needed to validate a transition on the output:
      --  Note: This bit cannot be modified when LOCK level 1 has been
      --  programmed (LOCK bits in TIMx_BDTR register).
      BKF            : TIM1_BDTR_BKF_Field := 16#0#;
      --  Break 2 filter This bit-field defines the frequency used to sample
      --  tim_brk2 input and the length of the digital filter applied to
      --  tim_brk2. The digital filter is made of an event counter in which N
      --  consecutive events are needed to validate a transition on the output:
      --  Note: This bit cannot be modified when LOCK level 1 has been
      --  programmed (LOCK bits in TIMx_BDTR register).
      BK2F           : TIM1_BDTR_BK2F_Field := 16#0#;
      --  Break 2 enable This bit enables the complete break 2 protection
      --  (including all sources connected to bk_acth and BKIN sources, as per
      --  ). Note: The BRKIN2 must only be used with OSSR = OSSI = 1. Note:
      --  This bit cannot be modified when LOCK level 1 has been programmed
      --  (LOCK bits in TIMx_BDTR register). Note: Any write operation to this
      --  bit takes a delay of 1 APB clock cycle to become effective.
      BK2E           : Boolean := False;
      --  Break 2 polarity Note: This bit cannot be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register). Note:
      --  Any write operation to this bit takes a delay of 1 APB clock cycle to
      --  become effective.
      BK2P           : Boolean := False;
      --  Break disarm This bit is cleared by hardware when no break source is
      --  active. The BKDSRM bit must be set by software to release the
      --  bidirectional output control (open-drain output in Hi-Z state) and
      --  then be polled it until it is reset by hardware, indicating that the
      --  fault condition has disappeared. Note: Any write operation to this
      --  bit takes a delay of 1 APB clock cycle to become effective.
      BKDSRM         : Boolean := False;
      --  Break2 disarm Refer to BKDSRM description
      BK2DSRM        : Boolean := False;
      --  Break bidirectional In the bidirectional mode (BKBID bit set to 1),
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

   subtype TIM1_CCR5_CCR5_Field is HAL.UInt20;

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
      --  Capture/compare 5 value CCR5 is the value to be loaded in the actual
      --  capture/compare 5 register (preload value). It is loaded permanently
      --  if the preload feature is not selected in the TIMx_CCMR3 register
      --  (bit OC5PE). Else the preload value is copied in the active
      --  capture/compare 5 register when an update event occurs. The active
      --  capture/compare register contains the value to be compared to the
      --  counter TIMx_CNT and signaled on tim_oc5 output. Non-dithering mode
      --  (DITHEN = 0) The register holds the compare value in CCR5[15:0]. The
      --  CCR5[19:16] bits are reset. Dithering mode (DITHEN = 1) The register
      --  holds the integer part in CCR5[19:4]. The CCR5[3:0] bitfield contains
      --  the dithered part.
      CCR5           : TIM1_CCR5_CCR5_Field := 16#0#;
      --  unspecified
      Reserved_20_28 : HAL.UInt9 := 16#0#;
      --  Group channel 5 and channel 1 Distortion on channel 1 output: This
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
      CCR5           at 0 range 0 .. 19;
      Reserved_20_28 at 0 range 20 .. 28;
      GC5C           at 0 range 29 .. 31;
   end record;

   subtype TIM1_CCR6_CCR6_Field is HAL.UInt20;

   --  TIM1 capture/compare register 6
   type TIM1_CCR6_Register is record
      --  Capture/compare 6 value CCR6 is the value to be loaded in the actual
      --  capture/compare 6 register (preload value). It is loaded permanently
      --  if the preload feature is not selected in the TIMx_CCMR3 register
      --  (bit OC6PE). Else the preload value is copied in the active
      --  capture/compare 6 register when an update event occurs. The active
      --  capture/compare register contains the value to be compared to the
      --  counter TIMx_CNT and signaled on tim_oc6 output. Non-dithering mode
      --  (DITHEN = 0) The register holds the compare value in CCR6[15:0]. The
      --  CCR6[19:16] bits are reset. Dithering mode (DITHEN = 1) The register
      --  holds the integer part in CCR6[19:4]. The CCR6[3:0] bitfield contains
      --  the dithered part.
      CCR6           : TIM1_CCR6_CCR6_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_CCR6_Register use record
      CCR6           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM1_CCMR3_OC5M1_Field is HAL.UInt3;
   subtype TIM1_CCMR3_OC6M1_Field is HAL.UInt3;

   --  TIM1 capture/compare mode register 3
   type TIM1_CCMR3_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Output compare 5 fast enable
      OC5FE          : Boolean := False;
      --  Output compare 5 preload enable
      OC5PE          : Boolean := False;
      --  Output compare 5 mode
      OC5M1          : TIM1_CCMR3_OC5M1_Field := 16#0#;
      --  Output compare 5 clear enable
      OC5CE          : Boolean := False;
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  Output compare 6 fast enable
      OC6FE          : Boolean := False;
      --  Output compare 6 preload enable
      OC6PE          : Boolean := False;
      --  Output compare 6 mode
      OC6M1          : TIM1_CCMR3_OC6M1_Field := 16#0#;
      --  Output compare 6 clear enable
      OC6CE          : Boolean := False;
      --  Output compare 5 mode
      OC5M2          : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Output compare 6 mode
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

   subtype TIM1_DTR2_DTGF_Field is HAL.UInt8;

   --  TIM1 timer deadtime register 2
   type TIM1_DTR2_Register is record
      --  Dead-time falling edge generator setup This bit-field defines the
      --  duration of the dead-time inserted between the complementary outputs,
      --  on the falling edge. DTGF[7:5]=0xx = DTF=DTGF[7:0]x tdtg with
      --  tdtg=tDTS. DTGF[7:5]=10x = DTF=(64+DTGF[5:0])xtdtg with Tdtg=2xtDTS.
      --  DTGF[7:5]=110 = DTF=(32+DTGF[4:0])xtdtg with Tdtg=8xtDTS.
      --  DTGF[7:5]=111 = DTF=(32+DTGF[4:0])xtdtg with Tdtg=16xtDTS. Example if
      --  TDTS=125ns (8MHz), dead-time possible values are: 0 to 15875 ns by
      --  125 ns steps, 16 us to 31750 ns by 250 ns steps, 32 us to 63us by 1
      --  us steps, 64 us to 126 us by 2 us steps Note: This bit-field can not
      --  be modified as long as LOCK level 1, 2 or 3 has been programmed (LOCK
      --  bits in TIMx_BDTR register).
      DTGF           : TIM1_DTR2_DTGF_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Deadtime asymmetric enable Note: This bit can not be modified as long
      --  as LOCK level 1, 2 or 3 has been programmed (LOCK bits in TIMx_BDTR
      --  register).
      DTAE           : Boolean := False;
      --  Deadtime preload enable Note: This bit can not be modified as long as
      --  LOCK level 1, 2 or 3 has been programmed (LOCK bits in TIMx_BDTR
      --  register).
      DTPE           : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_DTR2_Register use record
      DTGF           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DTAE           at 0 range 16 .. 16;
      DTPE           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TIM1_ECR_IDIR_Field is HAL.UInt2;
   subtype TIM1_ECR_IBLK_Field is HAL.UInt2;
   subtype TIM1_ECR_IPOS_Field is HAL.UInt2;
   subtype TIM1_ECR_PW_Field is HAL.UInt8;
   subtype TIM1_ECR_PWPRSC_Field is HAL.UInt3;

   --  TIM1 timer encoder control register
   type TIM1_ECR_Register is record
      --  Index enable This bit indicates if the Index event resets the
      --  counter.
      IE             : Boolean := False;
      --  Index direction This bit indicates in which direction the Index event
      --  resets the counter. Note: The IDR[1:0] bitfield must be written when
      --  IE bit is reset (index disabled).
      IDIR           : TIM1_ECR_IDIR_Field := 16#0#;
      --  Index blanking This bit indicates if the Index event is conditioned
      --  by the tim_ti3 input
      IBLK           : TIM1_ECR_IBLK_Field := 16#0#;
      --  First index This bit indicates if the first index only is taken into
      --  account
      FIDX           : Boolean := False;
      --  Index positioning In quadrature encoder mode (SMS[3:0] = 0001, 0010,
      --  0011, 1110, 1111), this bit indicates in which AB input configuration
      --  the Index event resets the counter. In directional clock mode or
      --  clock plus direction mode (SMS[3:0] = 1010, 1011, 1100, 1101), these
      --  bits indicates on which level the Index event resets the counter. In
      --  bidirectional clock mode, this applies for both clock inputs. x0:
      --  Index resets the counter when clock is 0 x1: Index resets the counter
      --  when clock is 1 Note: IPOS[1] bit is not significant
      IPOS           : TIM1_ECR_IPOS_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Pulse width This bitfield defines the pulse duration, as following:
      --  tPW = PW[7:0] x tPWG
      PW             : TIM1_ECR_PW_Field := 16#0#;
      --  Pulse width prescaler This bitfield sets the clock prescaler for the
      --  pulse generator, as following: tPWG = (2(PWPRSC[2:0])) x ttim_ker_ck
      PWPRSC         : TIM1_ECR_PWPRSC_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_ECR_Register use record
      IE             at 0 range 0 .. 0;
      IDIR           at 0 range 1 .. 2;
      IBLK           at 0 range 3 .. 4;
      FIDX           at 0 range 5 .. 5;
      IPOS           at 0 range 6 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      PW             at 0 range 16 .. 23;
      PWPRSC         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype TIM1_TISEL_TI1SEL_Field is HAL.UInt4;
   subtype TIM1_TISEL_TI2SEL_Field is HAL.UInt4;
   subtype TIM1_TISEL_TI3SEL_Field is HAL.UInt4;
   subtype TIM1_TISEL_TI4SEL_Field is HAL.UInt4;

   --  TIM1 timer input selection register
   type TIM1_TISEL_Register is record
      --  Selects tim_ti1[0..15] input ... Refer to for interconnects list.
      TI1SEL         : TIM1_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Selects tim_ti2[0..15] input ... Refer to for interconnects list.
      TI2SEL         : TIM1_TISEL_TI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Selects tim_ti3[0..15] input ... Refer to for interconnects list.
      TI3SEL         : TIM1_TISEL_TI3SEL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Selects tim_ti4[0..15] input ... Refer to for interconnects list.
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

   subtype TIM1_AF1_ETRSEL_Field is HAL.UInt4;

   --  TIM1 alternate function option register 1
   type TIM1_AF1_Register is record
      --  TIMx_BKIN input enable This bit enables the TIMx_BKIN alternate
      --  function input for the timer s tim_brk input. TIMx_BKIN input is ORed
      --  with the other tim_brk sources. Note: This bit can not be modified as
      --  long as LOCK level 1 has been programmed (LOCK bits in TIMx_BDTR
      --  register).
      BKINE          : Boolean := True;
      --  tim_brk_cmp1 enable This bit enables the tim_brk_cmp1 for the timer s
      --  tim_brk input. tim_brk_cmp1 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP1E        : Boolean := False;
      --  tim_brk_cmp2 enable This bit enables the tim_brk_cmp2 for the timer s
      --  tim_brk input. tim_brk_cmp2 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP2E        : Boolean := False;
      --  tim_brk_cmp3 enable This bit enables the tim_brk_cmp3 for the timer s
      --  tim_brk input. tim_brk_cmp3 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP3E        : Boolean := False;
      --  tim_brk_cmp4 enable This bit enables the tim_brk_cmp4 for the timer s
      --  tim_brk input. tim_brk_cmp4 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP4E        : Boolean := False;
      --  tim_brk_cmp5 enable This bit enables the tim_brk_cmp5 for the timer s
      --  tim_brk input. tim_brk_cmp5 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP5E        : Boolean := False;
      --  tim_brk_cmp6 enable This bit enables the tim_brk_cmp6 for the timer s
      --  tim_brk input. tim_brk_cmp6 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP6E        : Boolean := False;
      --  tim_brk_cmp7 enable This bit enables the tim_brk_cmp7 for the timer s
      --  tim_brk input. tim_brk_cmp7 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP7E        : Boolean := False;
      --  tim_brk_cmp8 enable This bit enables the tim_brk_cmp8 for the timer s
      --  tim_brk input. tim_brk_cmp8 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP8E        : Boolean := False;
      --  TIMx_BKIN input polarity This bit selects the TIMx_BKIN alternate
      --  function input sensitivity. It must be programmed together with the
      --  BKP polarity bit. Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      BKINP          : Boolean := False;
      --  tim_brk_cmp1 input polarity This bit selects the tim_brk_cmp1 input
      --  sensitivity. It must be programmed together with the BKP polarity
      --  bit. Note: This bit can not be modified as long as LOCK level 1 has
      --  been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP1P        : Boolean := False;
      --  tim_brk_cmp2 input polarity This bit selects the tim_brk_cmp2 input
      --  sensitivity. It must be programmed together with the BKP polarity
      --  bit. Note: This bit can not be modified as long as LOCK level 1 has
      --  been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP2P        : Boolean := False;
      --  tim_brk_cmp3 input polarity This bit selects the tim_brk_cmp3 input
      --  sensitivity. It must be programmed together with the BKP polarity
      --  bit. Note: This bit can not be modified as long as LOCK level 1 has
      --  been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP3P        : Boolean := False;
      --  tim_brk_cmp4 input polarity This bit selects the tim_brk_cmp4 input
      --  sensitivity. It must be programmed together with the BKP polarity
      --  bit. Note: This bit can not be modified as long as LOCK level 1 has
      --  been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP4P        : Boolean := False;
      --  etr_in source selection These bits select the etr_in input source.
      --  ... Refer to for product specific implementation. Note: These bits
      --  can not be modified as long as LOCK level 1 has been programmed (LOCK
      --  bits in TIMx_BDTR register).
      ETRSEL         : TIM1_AF1_ETRSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_AF1_Register use record
      BKINE          at 0 range 0 .. 0;
      BKCMP1E        at 0 range 1 .. 1;
      BKCMP2E        at 0 range 2 .. 2;
      BKCMP3E        at 0 range 3 .. 3;
      BKCMP4E        at 0 range 4 .. 4;
      BKCMP5E        at 0 range 5 .. 5;
      BKCMP6E        at 0 range 6 .. 6;
      BKCMP7E        at 0 range 7 .. 7;
      BKCMP8E        at 0 range 8 .. 8;
      BKINP          at 0 range 9 .. 9;
      BKCMP1P        at 0 range 10 .. 10;
      BKCMP2P        at 0 range 11 .. 11;
      BKCMP3P        at 0 range 12 .. 12;
      BKCMP4P        at 0 range 13 .. 13;
      ETRSEL         at 0 range 14 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TIM1_AF2_OCRSEL_Field is HAL.UInt3;

   --  TIM1 alternate function register 2
   type TIM1_AF2_Register is record
      --  TIMx_BKIN2 input enable This bit enables the TIMx_BKIN2 alternate
      --  function input for the timer s tim_brk2 input. TIMx_BKIN2 input is
      --  ORed with the other tim_brk2 sources. Note: This bit can not be
      --  modified as long as LOCK level 1 has been programmed (LOCK bits in
      --  TIMx_BDTR register).
      BK2INE         : Boolean := True;
      --  tim_brk2_cmp1 enable This bit enables the tim_brk2_cmp1 for the timer
      --  s tim_brk2 input. tim_brk2_cmp1 output is ORed with the other
      --  tim_brk2 sources. Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      BK2CMP1E       : Boolean := False;
      --  tim_brk2_cmp2 enable This bit enables the tim_brk2_cmp2 for the timer
      --  s tim_brk2 input. tim_brk2_cmp2 output is ORed with the other
      --  tim_brk2 sources. Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      BK2CMP2E       : Boolean := False;
      --  tim_brk2_cmp3 enable This bit enables the tim_brk2_cmp3 for the timer
      --  s tim_brk2 input. tim_brk2_cmp3 output is ORed with the other
      --  tim_brk2 sources. Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      BK2CMP3E       : Boolean := False;
      --  tim_brk2_cmp4 enable This bit enables the tim_brk2_cmp4 for the timer
      --  s tim_brk2 input. tim_brk2_cmp4 output is ORed with the other
      --  tim_brk2 sources. Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      BK2CMP4E       : Boolean := False;
      --  tim_brk2_cmp5 enable This bit enables the tim_brk2_cmp5 for the timer
      --  s tim_brk2 input. tim_brk2_cmp5 output is ORed with the other
      --  tim_brk2 sources. Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      BK2CMP5E       : Boolean := False;
      --  tim_brk2_cmp6 enable This bit enables the tim_brk2_cmp6 for the timer
      --  s tim_brk2 input. tim_brk2_cmp6 output is ORed with the other
      --  tim_brk2 sources. Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      BK2CMP6E       : Boolean := False;
      --  tim_brk2_cmp7 enable This bit enables the tim_brk2_cmp7 for the timer
      --  s tim_brk2 input. tim_brk2_cmp7 output is ORed with the other
      --  tim_brk2 sources. Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      BK2CMP7E       : Boolean := False;
      --  tim_brk2_cmp8 enable This bit enables the tim_brk2_cmp8 for the timer
      --  s tim_brk2 input. tim_brk2_cmp8 output is ORed with the other
      --  tim_brk2 sources. Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      BK2CMP8E       : Boolean := False;
      --  TIMx_BKIN2 input polarity This bit selects the TIMx_BKIN2 alternate
      --  function input sensitivity. It must be programmed together with the
      --  BK2P polarity bit. Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      BK2INP         : Boolean := False;
      --  tim_brk2_cmp1 input polarity This bit selects the tim_brk2_cmp1 input
      --  sensitivity. It must be programmed together with the BK2P polarity
      --  bit. Note: This bit can not be modified as long as LOCK level 1 has
      --  been programmed (LOCK bits in TIMx_BDTR register).
      BK2CMP1P       : Boolean := False;
      --  tim_brk2_cmp2 input polarity This bit selects the tim_brk2_cmp2 input
      --  sensitivity. It must be programmed together with the BK2P polarity
      --  bit. Note: This bit can not be modified as long as LOCK level 1 has
      --  been programmed (LOCK bits in TIMx_BDTR register).
      BK2CMP2P       : Boolean := False;
      --  tim_brk2_cmp3 input polarity This bit selects the tim_brk2_cmp3 input
      --  sensitivity. It must be programmed together with the BK2P polarity
      --  bit. Note: This bit can not be modified as long as LOCK level 1 has
      --  been programmed (LOCK bits in TIMx_BDTR register).
      BK2CMP3P       : Boolean := False;
      --  tim_brk2_cmp4 input polarity This bit selects the tim_brk2_cmp4 input
      --  sensitivity. It must be programmed together with the BK2P polarity
      --  bit. Note: This bit can not be modified as long as LOCK level 1 has
      --  been programmed (LOCK bits in TIMx_BDTR register).
      BK2CMP4P       : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  ocref_clr source selection These bits select the ocref_clr input
      --  source. ... Refer to for product specific information. Note: These
      --  bits can not be modified as long as LOCK level 1 has been programmed
      --  (LOCK bits in TIMx_BDTR register).
      OCRSEL         : TIM1_AF2_OCRSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_AF2_Register use record
      BK2INE         at 0 range 0 .. 0;
      BK2CMP1E       at 0 range 1 .. 1;
      BK2CMP2E       at 0 range 2 .. 2;
      BK2CMP3E       at 0 range 3 .. 3;
      BK2CMP4E       at 0 range 4 .. 4;
      BK2CMP5E       at 0 range 5 .. 5;
      BK2CMP6E       at 0 range 6 .. 6;
      BK2CMP7E       at 0 range 7 .. 7;
      BK2CMP8E       at 0 range 8 .. 8;
      BK2INP         at 0 range 9 .. 9;
      BK2CMP1P       at 0 range 10 .. 10;
      BK2CMP2P       at 0 range 11 .. 11;
      BK2CMP3P       at 0 range 12 .. 12;
      BK2CMP4P       at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      OCRSEL         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype TIM1_DCR_DBA_Field is HAL.UInt5;
   subtype TIM1_DCR_DBL_Field is HAL.UInt5;
   subtype TIM1_DCR_DBSS_Field is HAL.UInt4;

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
      --  bytes & DBA = TIM2_CR1. If DBL = 7 bytes and DBA = TIM2_CR1
      --  represents the address of the byte to be transferred, the address of
      --  the transfer should be given by the following equation: (TIMx_CR1
      --  address) + DBA + (DMA index), where DMA index = DBL In this example,
      --  7 bytes are added to (TIMx_CR1 address) + DBA, which gives us the
      --  address from/to which the data are copied. In this case, the transfer
      --  is done to 7 registers starting from the following address: (TIMx_CR1
      --  address) + DBA According to the configuration of the DMA Data Size,
      --  several cases may occur: If the DMA Data Size is configured in
      --  half-words, 16-bit data are transferred to each of the 7 registers.
      --  If the DMA Data Size is configured in bytes, the data are also
      --  transferred to 7 registers: the first register contains the first MSB
      --  byte, the second register, the first LSB byte and so on. So with the
      --  transfer Timer, one also has to specify the size of data transferred
      --  by DMA.
      DBL            : TIM1_DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  DMA burst source selection This bitfield defines the interrupt source
      --  that triggers the DMA burst transfers (the timer recognizes a burst
      --  transfer when a read or a write access is done to the TIMx_DMAR
      --  address). Others: reserved
      DBSS           : TIM1_DCR_DBSS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_DCR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DBSS           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM1_HWCFGR2_PSC_LINEAR_Field is HAL.UInt4;
   subtype TIM1_HWCFGR2_PSC_WIDTH16_Field is HAL.UInt4;
   subtype TIM1_HWCFGR2_CNT_WIDTH_Field is HAL.UInt8;
   subtype TIM1_HWCFGR2_OPTIONREG_OUT_Field is HAL.UInt8;

   --  TIM1 hardware configuration 2 register
   type TIM1_HWCFGR2_Register is record
      --  Read-only. Prescaler linear Others: Reserved
      PSC_LINEAR     : TIM1_HWCFGR2_PSC_LINEAR_Field;
      --  Read-only. Prescaler width Others: Reserved
      PSC_WIDTH16    : TIM1_HWCFGR2_PSC_WIDTH16_Field;
      --  Read-only. Counter width Others: Reserved
      CNT_WIDTH      : TIM1_HWCFGR2_CNT_WIDTH_Field;
      --  Read-only. Option register number (0 to 16).
      OPTIONREG_OUT  : TIM1_HWCFGR2_OPTIONREG_OUT_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_HWCFGR2_Register use record
      PSC_LINEAR     at 0 range 0 .. 3;
      PSC_WIDTH16    at 0 range 4 .. 7;
      CNT_WIDTH      at 0 range 8 .. 15;
      OPTIONREG_OUT  at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TIM1_HWCFGR1_NB_OF_CC_Field is HAL.UInt4;
   subtype TIM1_HWCFGR1_NB_OF_DT_Field is HAL.UInt4;
   subtype TIM1_HWCFGR1_NB_OF_SM_Field is HAL.UInt4;
   subtype TIM1_HWCFGR1_RCR_IMPL_Field is HAL.UInt4;
   subtype TIM1_HWCFGR1_ETR_IMPL_Field is HAL.UInt4;
   subtype TIM1_HWCFGR1_BK_IMPL_Field is HAL.UInt4;
   subtype TIM1_HWCFGR1_DMA_IMPL_Field is HAL.UInt4;
   subtype TIM1_HWCFGR1_CNT_DIR_Field is HAL.UInt4;

   --  TIM1 hardware configuration 1 register
   type TIM1_HWCFGR1_Register is record
      --  Read-only. Number of capture / compare channel Others: Reserved
      NB_OF_CC : TIM1_HWCFGR1_NB_OF_CC_Field;
      --  Read-only. Number of complementary outputs and dead-time generators
      --  0x0 0x1 0x2 0x3 0x4 Others: Reserved
      NB_OF_DT : TIM1_HWCFGR1_NB_OF_DT_Field;
      --  Read-only. Number of synchronization module Others: Reserved
      NB_OF_SM : TIM1_HWCFGR1_NB_OF_SM_Field;
      --  Read-only. Repetition counter implementation Others: Reserved
      RCR_IMPL : TIM1_HWCFGR1_RCR_IMPL_Field;
      --  Read-only. External trigger implementation Others: Reserved
      ETR_IMPL : TIM1_HWCFGR1_ETR_IMPL_Field;
      --  Read-only. Break circuit implementation Others: Reserved
      BK_IMPL  : TIM1_HWCFGR1_BK_IMPL_Field;
      --  Read-only. DMA features implementation Others: Reserved
      DMA_IMPL : TIM1_HWCFGR1_DMA_IMPL_Field;
      --  Read-only. Counter direction Others: Reserved
      CNT_DIR  : TIM1_HWCFGR1_CNT_DIR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_HWCFGR1_Register use record
      NB_OF_CC at 0 range 0 .. 3;
      NB_OF_DT at 0 range 4 .. 7;
      NB_OF_SM at 0 range 8 .. 11;
      RCR_IMPL at 0 range 12 .. 15;
      ETR_IMPL at 0 range 16 .. 19;
      BK_IMPL  at 0 range 20 .. 23;
      DMA_IMPL at 0 range 24 .. 27;
      CNT_DIR  at 0 range 28 .. 31;
   end record;

   subtype TIM1_VERR_MINREV_Field is HAL.UInt4;
   subtype TIM1_VERR_MAJREV_Field is HAL.UInt4;

   --  TIM1 IP version register
   type TIM1_VERR_Register is record
      --  Read-only. Minor revision number. 0x2
      MINREV        : TIM1_VERR_MINREV_Field;
      --  Read-only. Major revision number. 0x4
      MAJREV        : TIM1_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIM10_CR1_CKD_Field is HAL.UInt2;

   type TIM10_CR1_Register is record
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
      --  the timer clock (tim_ker_ck) frequency and sampling clock used by the
      --  digital filters (tim_tix),
      CKD            : TIM10_CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  Dithering enable Note: The DITHEN bit can only be modified when CEN
      --  bit is reset.
      DITHEN         : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM10_CR1_Register use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      ARPE           at 0 range 7 .. 7;
      CKD            at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      UIFREMAP       at 0 range 11 .. 11;
      DITHEN         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   type TIM10_DIER_Register is record
      --  Update interrupt enable
      UIE           : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC1IE         : Boolean := False;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM10_DIER_Register use record
      UIE           at 0 range 0 .. 0;
      CC1IE         at 0 range 1 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   type TIM10_SR_Register is record
      --  Update interrupt flag This bit is set by hardware on an update event.
      --  It is cleared by software. At overflow and if UDIS= 0 in the TIMx_CR1
      --  register. When CNT is reinitialized by software using the UG bit in
      --  TIMx_EGR register, if URS= 0 and UDIS= 0 in the TIMx_CR1 register.
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
      --  detected on tim_ic1, as per the edge sensitivity defined with the
      --  CC1P and CC1NP bits setting, in TIMx_CCER).
      CC1IF          : Boolean := False;
      --  unspecified
      Reserved_2_8   : HAL.UInt7 := 16#0#;
      --  Capture/Compare 1 overcapture flag This flag is set by hardware only
      --  when the corresponding channel is configured in input capture mode.
      --  It is cleared by software by writing it to 0 .
      CC1OF          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM10_SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      Reserved_2_8   at 0 range 2 .. 8;
      CC1OF          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   type TIM10_EGR_Register is record
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

   for TIM10_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   subtype TIM10_CCMR1_INPUT_CC1S_Field is HAL.UInt2;
   subtype TIM10_CCMR1_INPUT_IC1PSC_Field is HAL.UInt2;
   subtype TIM10_CCMR1_INPUT_IC1F_Field is HAL.UInt4;

   --  TIM10 capture/compare mode register 1 [alternate]
   type TIM10_CCMR1_INPUT_Register is record
      --  Capture/Compare 1 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC1S bits
      --  are writable only when the channel is OFF (CC1E = 0 in TIMx_CCER).
      CC1S          : TIM10_CCMR1_INPUT_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler This bit-field defines the ratio of the
      --  prescaler acting on CC1 input (tim_ic1). The prescaler is reset as
      --  soon as CC1E= 0 (TIMx_CCER register).
      IC1PSC        : TIM10_CCMR1_INPUT_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter This bit-field defines the frequency used to
      --  sample tim_ti1 input and the length of the digital filter applied to
      --  tim_ti1. The digital filter is made of an event counter in which N
      --  consecutive events are needed to validate a transition on the output:
      IC1F          : TIM10_CCMR1_INPUT_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM10_CCMR1_INPUT_Register use record
      CC1S          at 0 range 0 .. 1;
      IC1PSC        at 0 range 2 .. 3;
      IC1F          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIM10_CCMR1_OUTPUT_CC1S_Field is HAL.UInt2;
   subtype TIM10_CCMR1_OUTPUT_OC1M1_Field is HAL.UInt3;

   --  TIM10 capture/compare mode register 1 [alternate]
   type TIM10_CCMR1_OUTPUT_Register is record
      --  Capture/Compare 1 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC1S bits
      --  are writable only when the channel is OFF (CC1E = 0 in TIMx_CCER).
      CC1S           : TIM10_CCMR1_OUTPUT_CC1S_Field := 16#0#;
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
      --  the behavior of the output reference signal tim_oc1ref from which
      --  tim_oc1 is derived. tim_oc1ref is active high whereas tim_oc1 active
      --  level depends on CC1P bit. Others: Reserved Note: In PWM mode 1 or 2,
      --  the OCREF level changes when the result of the comparison changes or
      --  when the output compare mode switches from frozen to PWM mode.
      OC1M1          : TIM10_CCMR1_OUTPUT_OC1M1_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Output compare 1 mode (refer to bit 16 for OC1M[3]) These bits define
      --  the behavior of the output reference signal tim_oc1ref from which
      --  tim_oc1 is derived. tim_oc1ref is active high whereas tim_oc1 active
      --  level depends on CC1P bit. Others: Reserved Note: In PWM mode 1 or 2,
      --  the OCREF level changes when the result of the comparison changes or
      --  when the output compare mode switches from frozen to PWM mode.
      OC1M2          : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM10_CCMR1_OUTPUT_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M1          at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      OC1M2          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   type TIM10_CCER_Register is record
      --  Capture/Compare 1 output enable.
      CC1E          : Boolean := False;
      --  Capture/Compare 1 output Polarity. When CC1 channel is configured as
      --  input, both CC1NP/CC1P bits select the active polarity of tim_ti1fp1
      --  for capture operations. CC1NP=0, CC1P=0:	non-inverted/rising edge.
      --  The circuit is sensitive to tim_ti1fp1 rising edge (capture or
      --  trigger operations in reset, external clock or trigger mode), TIxFP1
      --  is not inverted (trigger operation in gated mode or encoder mode).
      --  CC1NP=0, CC1P=1:	inverted/falling edge. The circuit is sensitive to
      --  tim_ti1fp1 falling edge (capture or trigger operations in reset,
      --  external clock or trigger mode), tim_ti1fp1 is inverted (trigger
      --  operation in gated mode or encoder mode). CC1NP=1,
      --  CC1P=1:	non-inverted/both edges/ The circuit is sensitive to both
      --  tim_ti1fp1 rising and falling edges (capture or trigger operations in
      --  reset, external clock or trigger mode), tim_ti1fp1 not inverted
      --  (trigger operation in gated mode). This configuration must not be
      --  used in encoder mode. CC1NP=1, CC1P=0:	This configuration is
      --  reserved, it must not be used.
      CC1P          : Boolean := False;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Capture/Compare 1 complementary output Polarity. CC1 channel
      --  configured as output: CC1NP must be kept cleared. CC1 channel
      --  configured as input: CC1NP bit is used in conjunction with CC1P to
      --  define tim_ti1fp1 polarity (refer to CC1P description).
      CC1NP         : Boolean := False;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM10_CCER_Register use record
      CC1E          at 0 range 0 .. 0;
      CC1P          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      CC1NP         at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype TIM10_CNT_CNT_Field is HAL.UInt16;

   type TIM10_CNT_Register is record
      --  Counter value Non-dithering mode (DITHEN = 0) The register holds the
      --  counter value. Dithering mode (DITHEN = 1) The register only holds
      --  the non-dithered part in CNT[15:0]. The fractional part is not
      --  available.
      CNT            : TIM10_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  UIF Copy This bit is a read-only copy of the UIF bit in the TIMx_ISR
      --  register.
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM10_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM10_ARR_ARR_Field is HAL.UInt20;

   type TIM10_ARR_Register is record
      --  Auto-reload value ARR is the value to be loaded in the actual
      --  auto-reload register. Refer to the for more details about ARR update
      --  and behavior. The counter is blocked while the auto-reload value is
      --  null. Non-dithering mode (DITHEN = 0) The register holds the
      --  auto-reload value in ARR[15:0]. The ARR[19:16] bits are reset.
      --  Dithering mode (DITHEN = 1) The register holds the integer part in
      --  ARR[19:4]. The ARR[3:0] bitfield contains the dithered part.
      ARR            : TIM10_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM10_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM10_CCR1_CCR1_Field is HAL.UInt20;

   type TIM10_CCR1_Register is record
      --  Capture/compare 1 value If channel CC1 is configured as output: CCR1
      --  is the value to be loaded in the actual capture/compare 1 register
      --  (preload value). It is loaded permanently if the preload feature is
      --  not selected in the TIMx_CCMR1 register (bit OC1PE). Else the preload
      --  value is copied in the active capture/compare 1 register when an
      --  update event occurs. The active capture/compare register contains the
      --  value to be compared to the counter TIMx_CNT and signaled on tim_oc1
      --  output. Non-dithering mode (DITHEN = 0) The register holds the
      --  compare value in CCR1[15:0]. The CCR1[19:16] bits are reset.
      --  Dithering mode (DITHEN = 1) The register holds the integer part in
      --  CCR1[19:4]. The CCR1[3:0] bitfield contains the dithered part. If
      --  channel CC1 is configured as input: CR1 is the counter value
      --  transferred by the last input capture 1 event (tim_ic1). The
      --  TIMx_CCR1 register is read-only and cannot be programmed.
      --  Non-dithering mode (DITHEN = 0) The register holds the capture value
      --  in CCR1[15:0]. The CCR1[19:16] bits are reset. Dithering mode (DITHEN
      --  = 1) The register holds the capture in CCR1[19:4]. The CCR1[3:0] bits
      --  are reset.
      CCR1           : TIM10_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM10_CCR1_Register use record
      CCR1           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM10_TISEL_TI1SEL_Field is HAL.UInt4;

   type TIM10_TISEL_Register is record
      --  selects tim_ti1_in[0..15] input ... Refer to for interconnects list.
      TI1SEL        : TIM10_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM10_TISEL_Register use record
      TI1SEL        at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype TIM10_HWCFGR2_PSC_LINEAR_Field is HAL.UInt4;
   subtype TIM10_HWCFGR2_PSC_WIDTH16_Field is HAL.UInt4;
   subtype TIM10_HWCFGR2_CNT_WIDTH_Field is HAL.UInt8;
   subtype TIM10_HWCFGR2_OPTIONREG_OUT_Field is HAL.UInt8;

   --  TIM10 hardware configuration 2 register
   type TIM10_HWCFGR2_Register is record
      --  Read-only. Prescaler linear Others: Reserved
      PSC_LINEAR     : TIM10_HWCFGR2_PSC_LINEAR_Field;
      --  Read-only. Prescaler width Others: Reserved
      PSC_WIDTH16    : TIM10_HWCFGR2_PSC_WIDTH16_Field;
      --  Read-only. Counter width Others: Reserved
      CNT_WIDTH      : TIM10_HWCFGR2_CNT_WIDTH_Field;
      --  Read-only. Option register number (0 to 16).
      OPTIONREG_OUT  : TIM10_HWCFGR2_OPTIONREG_OUT_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM10_HWCFGR2_Register use record
      PSC_LINEAR     at 0 range 0 .. 3;
      PSC_WIDTH16    at 0 range 4 .. 7;
      CNT_WIDTH      at 0 range 8 .. 15;
      OPTIONREG_OUT  at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TIM10_HWCFGR1_NB_OF_CC_Field is HAL.UInt4;
   subtype TIM10_HWCFGR1_NB_OF_DT_Field is HAL.UInt4;
   subtype TIM10_HWCFGR1_NB_OF_SM_Field is HAL.UInt4;
   subtype TIM10_HWCFGR1_RCR_IMPL_Field is HAL.UInt4;
   subtype TIM10_HWCFGR1_ETR_IMPL_Field is HAL.UInt4;
   subtype TIM10_HWCFGR1_BK_IMPL_Field is HAL.UInt4;
   subtype TIM10_HWCFGR1_DMA_IMPL_Field is HAL.UInt4;
   subtype TIM10_HWCFGR1_CNT_DIR_Field is HAL.UInt4;

   --  TIM10 hardware configuration 1 register
   type TIM10_HWCFGR1_Register is record
      --  Read-only. Number of capture / compare channel Others: Reserved
      NB_OF_CC : TIM10_HWCFGR1_NB_OF_CC_Field;
      --  Read-only. Number of complementary outputs and dead-time generators
      --  0x0 0x1 0x2 0x3 0x4 Others: Reserved
      NB_OF_DT : TIM10_HWCFGR1_NB_OF_DT_Field;
      --  Read-only. Number of synchronization module Others: Reserved
      NB_OF_SM : TIM10_HWCFGR1_NB_OF_SM_Field;
      --  Read-only. Repetition counter implementation Others: Reserved
      RCR_IMPL : TIM10_HWCFGR1_RCR_IMPL_Field;
      --  Read-only. External trigger implementation Others: Reserved
      ETR_IMPL : TIM10_HWCFGR1_ETR_IMPL_Field;
      --  Read-only. Break circuit implementation Others: Reserved
      BK_IMPL  : TIM10_HWCFGR1_BK_IMPL_Field;
      --  Read-only. DMA features implementation Others: Reserved
      DMA_IMPL : TIM10_HWCFGR1_DMA_IMPL_Field;
      --  Read-only. Counter direction Others: Reserved
      CNT_DIR  : TIM10_HWCFGR1_CNT_DIR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM10_HWCFGR1_Register use record
      NB_OF_CC at 0 range 0 .. 3;
      NB_OF_DT at 0 range 4 .. 7;
      NB_OF_SM at 0 range 8 .. 11;
      RCR_IMPL at 0 range 12 .. 15;
      ETR_IMPL at 0 range 16 .. 19;
      BK_IMPL  at 0 range 20 .. 23;
      DMA_IMPL at 0 range 24 .. 27;
      CNT_DIR  at 0 range 28 .. 31;
   end record;

   subtype TIM10_VERR_MINREV_Field is HAL.UInt4;
   subtype TIM10_VERR_MAJREV_Field is HAL.UInt4;

   type TIM10_VERR_Register is record
      --  Read-only. Minor revision number. 0x2
      MINREV        : TIM10_VERR_MINREV_Field;
      --  Read-only. Major revision number. 0x4
      MAJREV        : TIM10_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM10_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIM12_CR1_CKD_Field is HAL.UInt2;

   type TIM12_CR1_Register is record
      --  Counter enable CEN is cleared automatically in one-pulse mode, when
      --  an update event occurs. Note: External clock and gated mode can work
      --  only if the CEN bit has been previously set by software. However
      --  trigger mode can set the CEN bit automatically by hardware.
      CEN            : Boolean := False;
      --  Update disable This bit is set and cleared by software to
      --  enable/disable update event (UEV) generation. Counter overflow
      --  Setting the UG bit Buffered registers are then loaded with their
      --  preload values.
      UDIS           : Boolean := False;
      --  Update request source This bit is set and cleared by software to
      --  select the UEV event sources. Counter overflow Setting the UG bit
      --  Update generation through the slave mode controller
      URS            : Boolean := False;
      --  One-pulse mode
      OPM            : Boolean := False;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division This bit-field indicates the division ratio between
      --  the timer clock (tim_ker_ck) frequency and sampling clock used by the
      --  digital filters (tim_tix),
      CKD            : TIM12_CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  Dithering enable Note: The DITHEN bit can only be modified when CEN
      --  bit is reset.
      DITHEN         : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM12_CR1_Register use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      ARPE           at 0 range 7 .. 7;
      CKD            at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      UIFREMAP       at 0 range 11 .. 11;
      DITHEN         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype TIM12_CR2_MMS_Field is HAL.UInt3;

   type TIM12_CR2_Register is record
      --  unspecified
      Reserved_0_3  : HAL.UInt4 := 16#0#;
      --  Master mode selection These bits allow to select the information to
      --  be sent in master mode to slave timers for synchronization
      --  (tim_trgo). The combination is as follows:
      MMS           : TIM12_CR2_MMS_Field := 16#0#;
      --  tim_ti1 selection
      TI1S          : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM12_CR2_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      MMS           at 0 range 4 .. 6;
      TI1S          at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM12_SMCR_SMS1_Field is HAL.UInt3;
   subtype TIM12_SMCR_TS1_Field is HAL.UInt3;
   subtype TIM12_SMCR_TS2_Field is HAL.UInt2;

   type TIM12_SMCR_Register is record
      --  Slave mode selection When external signals are selected the active
      --  edge of the trigger signal (tim_trgi) is linked to the polarity
      --  selected on the external input (see Input Control register and
      --  Control Register description. Other codes: reserved. Note: The gated
      --  mode (including gated + reset mode) must not be used if tim_ti1f_ed
      --  is selected as the trigger input (TS= 00100 ). Indeed, tim_ti1f_ed
      --  outputs 1 pulse for each transition on tim_ti1f, whereas the gated
      --  mode checks the level of the trigger signal. Note: The clock of the
      --  slave peripherals (timer, ADC,...) receiving the tim_trgo signals
      --  must be enabled prior to receive events from the master timer, and
      --  must not be changed on-the-fly while triggers are received from the
      --  master timer.
      SMS1           : TIM12_SMCR_SMS1_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trigger selection This TS[4:0] bitfield selects the trigger input to
      --  be used to synchronize the counter. Others: Reserved See for more
      --  details on the meaning of tim_itrx for each timer. Note: These bits
      --  must be changed only when they are not used (e.g. when SMS= 000 ) to
      --  avoid wrong edge detections at the transition.
      TS1            : TIM12_SMCR_TS1_Field := 16#0#;
      --  Master/Slave mode
      MSM            : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Slave mode selection When external signals are selected the active
      --  edge of the trigger signal (tim_trgi) is linked to the polarity
      --  selected on the external input (see Input Control register and
      --  Control Register description. Other codes: reserved. Note: The gated
      --  mode (including gated + reset mode) must not be used if tim_ti1f_ed
      --  is selected as the trigger input (TS= 00100 ). Indeed, tim_ti1f_ed
      --  outputs 1 pulse for each transition on tim_ti1f, whereas the gated
      --  mode checks the level of the trigger signal. Note: The clock of the
      --  slave peripherals (timer, ADC,...) receiving the tim_trgo signals
      --  must be enabled prior to receive events from the master timer, and
      --  must not be changed on-the-fly while triggers are received from the
      --  master timer.
      SMS2           : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Trigger selection This TS[4:0] bitfield selects the trigger input to
      --  be used to synchronize the counter. Others: Reserved See for more
      --  details on the meaning of tim_itrx for each timer. Note: These bits
      --  must be changed only when they are not used (e.g. when SMS= 000 ) to
      --  avoid wrong edge detections at the transition.
      TS2            : TIM12_SMCR_TS2_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM12_SMCR_Register use record
      SMS1           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TS1            at 0 range 4 .. 6;
      MSM            at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      SMS2           at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      TS2            at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   type TIM12_DIER_Register is record
      --  Update interrupt enable
      UIE           : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC1IE         : Boolean := False;
      --  Capture/Compare 2 interrupt enable
      CC2IE         : Boolean := False;
      --  unspecified
      Reserved_3_5  : HAL.UInt3 := 16#0#;
      --  Trigger interrupt enable
      TIE           : Boolean := False;
      --  unspecified
      Reserved_7_15 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM12_DIER_Register use record
      UIE           at 0 range 0 .. 0;
      CC1IE         at 0 range 1 .. 1;
      CC2IE         at 0 range 2 .. 2;
      Reserved_3_5  at 0 range 3 .. 5;
      TIE           at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   type TIM12_SR_Register is record
      --  Update interrupt flag This bit is set by hardware on an update event.
      --  It is cleared by software. At overflow and if UDIS= 0 in the TIMx_CR1
      --  register. When CNT is reinitialized by software using the UG bit in
      --  TIMx_EGR register, if URS= 0 and UDIS= 0 in the TIMx_CR1 register.
      --  When CNT is reinitialized by a trigger event (refer tocontrol
      --  register (TIM12_SMCR) ), if URS= 0 and UDIS= 0 in the TIMx_CR1
      --  register.
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
      --  detected on tim_ic1, as per the edge sensitivity defined with the
      --  CC1P and CC1NP bits setting, in TIMx_CCER).
      CC1IF          : Boolean := False;
      --  Capture/Compare 2 interrupt flag refer to CC1IF description
      CC2IF          : Boolean := False;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Trigger interrupt flag This flag is set by hardware on the TRG
      --  trigger event (active edge detected on tim_trgi input when the slave
      --  mode controller is enabled in all modes but gated mode. It is set
      --  when the counter starts or stops when gated mode is selected. It is
      --  cleared by software.
      TIF            : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Capture/Compare 1 overcapture flag This flag is set by hardware only
      --  when the corresponding channel is configured in input capture mode.
      --  It is cleared by software by writing it to 0 .
      CC1OF          : Boolean := False;
      --  Capture/compare 2 overcapture flag refer to CC1OF description
      CC2OF          : Boolean := False;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM12_SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      CC2IF          at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      TIF            at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      CC1OF          at 0 range 9 .. 9;
      CC2OF          at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   type TIM12_EGR_Register is record
      --  Write-only. Update generation This bit can be set by software, it is
      --  automatically cleared by hardware.
      UG            : Boolean := False;
      --  Write-only. Capture/compare 1 generation This bit is set by software
      --  to generate an event, it is automatically cleared by hardware. If
      --  channel CC1 is configured as output: the CC1IF flag is set, the
      --  corresponding interrupt is sent if enabled. If channel CC1 is
      --  configured as input: The current counter value is captured in the
      --  TIMx_CCR1 register. The CC1IF flag is set, the corresponding
      --  interrupt is sent if enabled. The CC1OF flag is set if the CC1IF flag
      --  was already high.
      CC1G          : Boolean := False;
      --  Write-only. Capture/compare 2 generation refer to CC1G description
      CC2G          : Boolean := False;
      --  unspecified
      Reserved_3_5  : HAL.UInt3 := 16#0#;
      --  Write-only. Trigger generation This bit is set by software in order
      --  to generate an event, it is automatically cleared by hardware.
      TG            : Boolean := False;
      --  unspecified
      Reserved_7_15 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM12_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      Reserved_3_5  at 0 range 3 .. 5;
      TG            at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   subtype TIM12_CCMR1_INPUT_CC1S_Field is HAL.UInt2;
   subtype TIM12_CCMR1_INPUT_IC1PSC_Field is HAL.UInt2;
   subtype TIM12_CCMR1_INPUT_IC1F_Field is HAL.UInt4;
   subtype TIM12_CCMR1_INPUT_CC2S_Field is HAL.UInt2;
   subtype TIM12_CCMR1_INPUT_IC2PSC_Field is HAL.UInt2;
   subtype TIM12_CCMR1_INPUT_IC2F_Field is HAL.UInt4;

   --  TIM12 capture/compare mode register 1 [alternate]	
   type TIM12_CCMR1_INPUT_Register is record
      --  Capture/Compare 1 selection This bitfield defines the direction of
      --  the channel (input/output) as well as the used input. Note: The CC1S
      --  bits are writable only when the channel is OFF (CC1E = 0 in
      --  TIMx_CCER).
      CC1S           : TIM12_CCMR1_INPUT_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler This bitfield defines the ratio of the
      --  prescaler acting on the CC1 input (tim_ic1). The prescaler is reset
      --  as soon as CC1E= 0 (TIMx_CCER register).
      IC1PSC         : TIM12_CCMR1_INPUT_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter This bitfield defines the frequency used to
      --  sample the tim_ti1 input and the length of the digital filter applied
      --  to tim_ti1. The digital filter is made of an event counter in which N
      --  consecutive events are needed to validate a transition on the output:
      IC1F           : TIM12_CCMR1_INPUT_IC1F_Field := 16#0#;
      --  Capture/compare 2 selection This bitfield defines the direction of
      --  the channel (input/output) as well as the used input. Note: The CC2S
      --  bits are writable only when the channel is OFF (CC2E = 0 in
      --  TIMx_CCER).
      CC2S           : TIM12_CCMR1_INPUT_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : TIM12_CCMR1_INPUT_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : TIM12_CCMR1_INPUT_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM12_CCMR1_INPUT_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM12_CCMR1_OUTPUT_CC1S_Field is HAL.UInt2;
   subtype TIM12_CCMR1_OUTPUT_OC1M1_Field is HAL.UInt3;
   subtype TIM12_CCMR1_OUTPUT_CC2S_Field is HAL.UInt2;
   subtype TIM12_CCMR1_OUTPUT_OC2M1_Field is HAL.UInt3;

   --  TIM12 capture/compare mode register 1 [alternate]	
   type TIM12_CCMR1_OUTPUT_Register is record
      --  Capture/Compare 1 selection This bitfield defines the direction of
      --  the channel (input/output) as well as the used input. Note: The CC1S
      --  bits are writable only when the channel is OFF (CC1E = 0 in
      --  TIMx_CCER).
      CC1S           : TIM12_CCMR1_OUTPUT_CC1S_Field := 16#0#;
      --  Output compare 1 fast enable This bit is used to accelerate the
      --  effect of an event on the trigger in input on the CC output.
      OC1FE          : Boolean := False;
      --  Output compare 1 preload enable Note: The PWM mode can be used
      --  without validating the preload register only in one-pulse mode (OPM
      --  bit set in the TIMx_CR1 register). Else the behavior is not
      --  guaranteed.
      OC1PE          : Boolean := False;
      --  Output compare 1 mode (refer to bit 16 for OC1M[3]) These bits define
      --  the behavior of the output reference signal tim_oc1ref from which
      --  tim_oc1 is derived. tim_oc1ref is active high whereas the active
      --  level of tim_oc1 depends on the CC1P. Note: In PWM mode 1 or 2, the
      --  OCREF level changes only when the result of the comparison changes or
      --  when the output compare mode switches from frozen  mode to
      --  PWM  mode.
      OC1M1          : TIM12_CCMR1_OUTPUT_OC1M1_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Capture/Compare 2 selection This bitfield defines the direction of
      --  the channel (input/output) as well as the used input. Note: The CC2S
      --  bits are writable only when the channel is OFF (CC2E = 0 in
      --  TIMx_CCER).
      CC2S           : TIM12_CCMR1_OUTPUT_CC2S_Field := 16#0#;
      --  Output compare 2 fast enable
      OC2FE          : Boolean := False;
      --  Output compare 2 preload enable
      OC2PE          : Boolean := False;
      --  Output compare 2 mode Refer to OC1M[3:0] for bit description.
      OC2M1          : TIM12_CCMR1_OUTPUT_OC2M1_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Output compare 1 mode (refer to bit 16 for OC1M[3]) These bits define
      --  the behavior of the output reference signal tim_oc1ref from which
      --  tim_oc1 is derived. tim_oc1ref is active high whereas the active
      --  level of tim_oc1 depends on the CC1P. Note: In PWM mode 1 or 2, the
      --  OCREF level changes only when the result of the comparison changes or
      --  when the output compare mode switches from frozen  mode to
      --  PWM  mode.
      OC1M2          : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Output compare 2 mode Refer to OC1M[3:0] for bit description.
      OC2M2          : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM12_CCMR1_OUTPUT_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M1          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CC2S           at 0 range 8 .. 9;
      OC2FE          at 0 range 10 .. 10;
      OC2PE          at 0 range 11 .. 11;
      OC2M1          at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      OC1M2          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC2M2          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   type TIM12_CCER_Register is record
      --  Capture/Compare 1 output enable.
      CC1E          : Boolean := False;
      --  Capture/Compare 1 output Polarity. When CC1 channel is configured as
      --  input, both CC1NP/CC1P bits select the active polarity of tim_ti1fp1
      --  and tim_ti2fp1 for trigger or capture operations. CC1NP=0,
      --  CC1P=0:	non-inverted/rising edge. The circuit is sensitive to
      --  tim_tixfp1 rising edge (capture or trigger operations in reset,
      --  external clock or trigger mode), tim_tixfp1 is not inverted (trigger
      --  operation in gated mode or encoder mode). CC1NP=0,
      --  CC1P=1:	inverted/falling edge. The circuit is sensitive to tim_tixfp1
      --  falling edge (capture or trigger operations in reset, external clock
      --  or trigger mode), tim_tixfp1 is inverted (trigger operation in gated
      --  mode or encoder mode). CC1NP=1, CC1P=1:	non-inverted/both edges/ The
      --  circuit is sensitive to both tim_tixfp1 rising and falling edges
      --  (capture or trigger operations in reset, external clock or trigger
      --  mode), tim_tixfp1 is not inverted (trigger operation in gated mode).
      --  This configuration must not be used in encoder mode. CC1NP=1,
      --  CC1P=0:	This configuration is reserved, it must not be used.
      CC1P          : Boolean := False;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Capture/Compare 1 complementary output Polarity CC1 channel
      --  configured as output: CC1NP must be kept cleared CC1 channel
      --  configured as input: CC1NP is used in conjunction with CC1P to define
      --  tim_ti1fp1/tim_ti2fp1 polarity (refer to CC1P description).
      CC1NP         : Boolean := False;
      --  Capture/Compare 2 output enable Refer to CC1E description
      CC2E          : Boolean := False;
      --  Capture/Compare 2 output Polarity Refer to CC1P description
      CC2P          : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Capture/Compare 2 output Polarity Refer to CC1NP description
      CC2NP         : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM12_CCER_Register use record
      CC1E          at 0 range 0 .. 0;
      CC1P          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      CC1NP         at 0 range 3 .. 3;
      CC2E          at 0 range 4 .. 4;
      CC2P          at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      CC2NP         at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM12_CNT_CNT_Field is HAL.UInt16;

   type TIM12_CNT_Register is record
      --  Counter value Non-dithering mode (DITHEN = 0) The register holds the
      --  counter value. Dithering mode (DITHEN = 1) The register only holds
      --  the non-dithered part in CNT[15:0]. The fractional part is not
      --  available.
      CNT            : TIM12_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  UIF Copy This bit is a read-only copy of the UIF bit in the TIMx_ISR
      --  register.
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM12_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM12_ARR_ARR_Field is HAL.UInt20;

   type TIM12_ARR_Register is record
      --  Auto-reload value ARR is the value to be loaded in the actual
      --  auto-reload register. Refer to the for more details about ARR update
      --  and behavior. The counter is blocked while the auto-reload value is
      --  null. Non-dithering mode (DITHEN = 0) The register holds the
      --  auto-reload value in ARR[15:0]. The ARR[19:16] bits are reset.
      --  Dithering mode (DITHEN = 1) The register holds the integer part in
      --  ARR[19:4]. The ARR[3:0] bitfield contains the dithered part.
      ARR            : TIM12_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM12_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM12_CCR1_CCR1_Field is HAL.UInt20;

   type TIM12_CCR1_Register is record
      --  Capture/compare 1 value If channel CC1 is configured as output: CCR1
      --  is the value to be loaded in the actual capture/compare 1 register
      --  (preload value). It is loaded permanently if the preload feature is
      --  not selected in the TIMx_CCMR1 register (bit OC1PE). Else the preload
      --  value is copied in the active capture/compare 1 register when an
      --  update event occurs. The active capture/compare register contains the
      --  value to be compared to the counter TIMx_CNT and signaled on tim_oc1
      --  output. Non-dithering mode (DITHEN = 0) The register holds the
      --  compare value in CCR1[15:0]. The CCR1[19:16] bits are reset.
      --  Dithering mode (DITHEN = 1) The register holds the integer part in
      --  CCR1[19:4]. The CCR1[3:0] bitfield contains the dithered part. If
      --  channel CC1 is configured as input: CR1 is the counter value
      --  transferred by the last input capture 1 event (tim_ic1). The
      --  TIMx_CCR1 register is read-only and cannot be programmed.
      --  Non-dithering mode (DITHEN = 0) The register holds the capture value
      --  in CCR1[15:0]. The CCR1[19:16] bits are reset. Dithering mode (DITHEN
      --  = 1) The register holds the capture in CCR1[19:4]. The CCR1[3:0] bits
      --  are reset.
      CCR1           : TIM12_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM12_CCR1_Register use record
      CCR1           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM12_CCR2_CCR2_Field is HAL.UInt20;

   type TIM12_CCR2_Register is record
      --  Capture/compare 2 value If channel CC2 is configured as output: CCR2
      --  is the value to be loaded in the actual capture/compare 2 register
      --  (preload value). It is loaded permanently if the preload feature is
      --  not selected in the TIMx_CCMR2 register (bit OC2PE). Else the preload
      --  value is copied in the active capture/compare 2 register when an
      --  update event occurs. The active capture/compare register contains the
      --  value to be compared to the counter TIMx_CNT and signalled on tim_oc2
      --  output. Non-dithering mode (DITHEN = 0) The register holds the
      --  compare value in CCR2[15:0]. The CCR2[19:16] bits are reset.
      --  Dithering mode (DITHEN = 1) The register holds the integer part in
      --  CCR2[19:4]. The CCR2[3:0] bitfield contains the dithered part. If
      --  channel CC2 is configured as input: CCR2 is the counter value
      --  transferred by the last input capture 1 event (tim_ic2). The
      --  TIMx_CCR2 register is read-only and cannot be programmed.
      --  Non-dithering mode (DITHEN = 0) The register holds the capture value
      --  in CCR2[15:0]. The CCR2[19:16] bits are reset. Dithering mode (DITHEN
      --  = 1) The register holds the capture in CCR2[19:4]. The CCR2[3:0] bits
      --  are reset.
      CCR2           : TIM12_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM12_CCR2_Register use record
      CCR2           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM12_TISEL_TI1SEL_Field is HAL.UInt4;
   subtype TIM12_TISEL_TI2SEL_Field is HAL.UInt4;

   type TIM12_TISEL_Register is record
      --  selects tim_ti1_in[0..15] input ... Refer to for interconnects list.
      TI1SEL         : TIM12_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  selects tim_ti2_in[0..15] input ... Refer to for interconnects list.
      TI2SEL         : TIM12_TISEL_TI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM12_TISEL_Register use record
      TI1SEL         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TI2SEL         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype TIM12_HWCFGR2_PSC_LINEAR_Field is HAL.UInt4;
   subtype TIM12_HWCFGR2_PSC_WIDTH16_Field is HAL.UInt4;
   subtype TIM12_HWCFGR2_CNT_WIDTH_Field is HAL.UInt8;
   subtype TIM12_HWCFGR2_OPTIONREG_OUT_Field is HAL.UInt8;

   --  TIM12 hardware configuration 2 register
   type TIM12_HWCFGR2_Register is record
      --  Read-only. Prescaler linear Others: Reserved
      PSC_LINEAR     : TIM12_HWCFGR2_PSC_LINEAR_Field;
      --  Read-only. Prescaler width Others: Reserved
      PSC_WIDTH16    : TIM12_HWCFGR2_PSC_WIDTH16_Field;
      --  Read-only. Counter width Others: Reserved
      CNT_WIDTH      : TIM12_HWCFGR2_CNT_WIDTH_Field;
      --  Read-only. Option register number (0 to 16).
      OPTIONREG_OUT  : TIM12_HWCFGR2_OPTIONREG_OUT_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM12_HWCFGR2_Register use record
      PSC_LINEAR     at 0 range 0 .. 3;
      PSC_WIDTH16    at 0 range 4 .. 7;
      CNT_WIDTH      at 0 range 8 .. 15;
      OPTIONREG_OUT  at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TIM12_HWCFGR1_NB_OF_CC_Field is HAL.UInt4;
   subtype TIM12_HWCFGR1_NB_OF_DT_Field is HAL.UInt4;
   subtype TIM12_HWCFGR1_NB_OF_SM_Field is HAL.UInt4;
   subtype TIM12_HWCFGR1_RCR_IMPL_Field is HAL.UInt4;
   subtype TIM12_HWCFGR1_ETR_IMPL_Field is HAL.UInt4;
   subtype TIM12_HWCFGR1_BK_IMPL_Field is HAL.UInt4;
   subtype TIM12_HWCFGR1_DMA_IMPL_Field is HAL.UInt4;
   subtype TIM12_HWCFGR1_CNT_DIR_Field is HAL.UInt4;

   --  TIM12 hardware configuration 1 register
   type TIM12_HWCFGR1_Register is record
      --  Read-only. Number of capture / compare channel Others: Reserved
      NB_OF_CC : TIM12_HWCFGR1_NB_OF_CC_Field;
      --  Read-only. Number of complementary outputs and dead-time generators
      --  0x0 0x1 0x2 0x3 0x4 Others: Reserved
      NB_OF_DT : TIM12_HWCFGR1_NB_OF_DT_Field;
      --  Read-only. Number of synchronization module Others: Reserved
      NB_OF_SM : TIM12_HWCFGR1_NB_OF_SM_Field;
      --  Read-only. Repetition counter implementation Others: Reserved
      RCR_IMPL : TIM12_HWCFGR1_RCR_IMPL_Field;
      --  Read-only. External trigger implementation Others: Reserved
      ETR_IMPL : TIM12_HWCFGR1_ETR_IMPL_Field;
      --  Read-only. Break circuit implementation Others: Reserved
      BK_IMPL  : TIM12_HWCFGR1_BK_IMPL_Field;
      --  Read-only. DMA features implementation Others: Reserved
      DMA_IMPL : TIM12_HWCFGR1_DMA_IMPL_Field;
      --  Read-only. Counter direction Others: Reserved
      CNT_DIR  : TIM12_HWCFGR1_CNT_DIR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM12_HWCFGR1_Register use record
      NB_OF_CC at 0 range 0 .. 3;
      NB_OF_DT at 0 range 4 .. 7;
      NB_OF_SM at 0 range 8 .. 11;
      RCR_IMPL at 0 range 12 .. 15;
      ETR_IMPL at 0 range 16 .. 19;
      BK_IMPL  at 0 range 20 .. 23;
      DMA_IMPL at 0 range 24 .. 27;
      CNT_DIR  at 0 range 28 .. 31;
   end record;

   subtype TIM12_VERR_MINREV_Field is HAL.UInt4;
   subtype TIM12_VERR_MAJREV_Field is HAL.UInt4;

   type TIM12_VERR_Register is record
      --  Read-only. Minor revision number. 0x2
      MINREV        : TIM12_VERR_MINREV_Field;
      --  Read-only. Major revision number. 0x4
      MAJREV        : TIM12_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM12_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIM15_CR1_CKD_Field is HAL.UInt2;

   --  TIM15 control register 1
   type TIM15_CR1_Register is record
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
      --  One-pulse mode
      OPM            : Boolean := False;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division This bitfield indicates the division ratio between the
      --  timer clock (tim_ker_ck) frequency and the dead-time and sampling
      --  clock (tDTS) used by the dead-time generators and the digital filters
      --  (tim_tix)
      CKD            : TIM15_CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  Dithering enable Note: The DITHEN bit can only be modified when CEN
      --  bit is reset.
      DITHEN         : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM15_CR1_Register use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      ARPE           at 0 range 7 .. 7;
      CKD            at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      UIFREMAP       at 0 range 11 .. 11;
      DITHEN         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype TIM15_CR2_MMS_Field is HAL.UInt3;

   --  TIM15 control register 2
   type TIM15_CR2_Register is record
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
      --  Master mode selection These bits allow to select the information to
      --  be sent in master mode to slave timers for synchronization
      --  (tim_trgo). The combination is as follows:
      MMS            : TIM15_CR2_MMS_Field := 16#0#;
      --  tim_ti1 selection
      TI1S           : Boolean := False;
      --  Output Idle state 1 (tim_oc1 output) Note: This bit can not be
      --  modified as long as LOCK level 1, 2 or 3 has been programmed (LOCK
      --  bits in TIM15_BKR register).
      OIS1           : Boolean := False;
      --  Output Idle state 1 (tim_oc1n output) Note: This bit can not be
      --  modified as long as LOCK level 1, 2 or 3 has been programmed (LOCK
      --  bits in TIM15_BKR register).
      OIS1N          : Boolean := False;
      --  Output idle state 2 (tim_oc2 output) Note: This bit cannot be
      --  modified as long as LOCK level 1, 2 or 3 has been programmed (LOCK
      --  bits in the TIM15_BKR register).
      OIS2           : Boolean := False;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM15_CR2_Register use record
      CCPC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCUS           at 0 range 2 .. 2;
      CCDS           at 0 range 3 .. 3;
      MMS            at 0 range 4 .. 6;
      TI1S           at 0 range 7 .. 7;
      OIS1           at 0 range 8 .. 8;
      OIS1N          at 0 range 9 .. 9;
      OIS2           at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype TIM15_SMCR_SMS1_Field is HAL.UInt3;
   subtype TIM15_SMCR_TS1_Field is HAL.UInt3;
   subtype TIM15_SMCR_TS2_Field is HAL.UInt2;

   --  TIM15 slave mode control register
   type TIM15_SMCR_Register is record
      --  Slave mode selection When external signals are selected the active
      --  edge of the trigger signal (tim_trgi) is linked to the polarity
      --  selected on the external input (see Input Control register and
      --  Control Register description. Others: Reserved. Note: The gated mode
      --  must not be used if tim_ti1f_ed is selected as the trigger input (TS=
      --  00100 ). Indeed, tim_ti1f_ed outputs 1 pulse for each transition on
      --  tim_ti1f, whereas the gated mode checks the level of the trigger
      --  signal. Note: The clock of the slave peripherals (timer, ADC, ...)
      --  receiving the tim_trgo signal must be enabled prior to receive events
      --  from the master timer, and the clock frequency (prescaler) must not
      --  be changed on-the-fly while triggers are received from the master
      --  timer.
      SMS1           : TIM15_SMCR_SMS1_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trigger selection This bit field selects the trigger input to be used
      --  to synchronize the counter. Others: Reserved See for more details on
      --  tim_itrx meaning for each timer. Note: These bits must be changed
      --  only when they are not used (e.g. when SMS=000) to avoid wrong edge
      --  detections at the transition.
      TS1            : TIM15_SMCR_TS1_Field := 16#0#;
      --  Master/slave mode
      MSM            : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Slave mode selection When external signals are selected the active
      --  edge of the trigger signal (tim_trgi) is linked to the polarity
      --  selected on the external input (see Input Control register and
      --  Control Register description. Others: Reserved. Note: The gated mode
      --  must not be used if tim_ti1f_ed is selected as the trigger input (TS=
      --  00100 ). Indeed, tim_ti1f_ed outputs 1 pulse for each transition on
      --  tim_ti1f, whereas the gated mode checks the level of the trigger
      --  signal. Note: The clock of the slave peripherals (timer, ADC, ...)
      --  receiving the tim_trgo signal must be enabled prior to receive events
      --  from the master timer, and the clock frequency (prescaler) must not
      --  be changed on-the-fly while triggers are received from the master
      --  timer.
      SMS2           : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Trigger selection This bit field selects the trigger input to be used
      --  to synchronize the counter. Others: Reserved See for more details on
      --  tim_itrx meaning for each timer. Note: These bits must be changed
      --  only when they are not used (e.g. when SMS=000) to avoid wrong edge
      --  detections at the transition.
      TS2            : TIM15_SMCR_TS2_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_SMCR_Register use record
      SMS1           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TS1            at 0 range 4 .. 6;
      MSM            at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      SMS2           at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      TS2            at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  TIM15 DMA/interrupt enable register
   type TIM15_DIER_Register is record
      --  Update interrupt enable
      UIE            : Boolean := False;
      --  Capture/Compare 1 interrupt enable
      CC1IE          : Boolean := False;
      --  Capture/Compare 2 interrupt enable
      CC2IE          : Boolean := False;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
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
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  COM DMA request enable
      COMDE          : Boolean := False;
      --  Trigger DMA request enable
      TDE            : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM15_DIER_Register use record
      UIE            at 0 range 0 .. 0;
      CC1IE          at 0 range 1 .. 1;
      CC2IE          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      COMIE          at 0 range 5 .. 5;
      TIE            at 0 range 6 .. 6;
      BIE            at 0 range 7 .. 7;
      UDE            at 0 range 8 .. 8;
      CC1DE          at 0 range 9 .. 9;
      CC2DE          at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      COMDE          at 0 range 13 .. 13;
      TDE            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   --  TIM15 status register
   type TIM15_SR_Register is record
      --  Update interrupt flag This bit is set by hardware on an update event.
      --  It is cleared by software. At overflow regarding the repetition
      --  counter value (update if repetition counter = 0) and if the UDIS=0 in
      --  the TIM15_CR1 register. When CNT is reinitialized by software using
      --  the UG bit in TIM15_EGR register, if URS=0 and UDIS=0 in the
      --  TIM15_CR1 register. When CNT is reinitialized by a trigger event
      --  (refer to control register (TIM15_SMCR)), if URS=0 and UDIS=0 in the
      --  TIM15_CR1 register.
      UIF            : Boolean := False;
      --  Capture/Compare 1 interrupt flag This flag is set by hardware. It is
      --  cleared by software (input capture or output compare mode) or by
      --  reading the TIMx_CCR1 register (input capture mode only). If channel
      --  CC1 is configured as output: this flag is set when the content of the
      --  counter TIMx_CNT matches the content of the TIMx_CCR1 register. When
      --  the content of TIMx_CCR1 is greater than the content of TIMx_ARR, the
      --  CC1IF bit goes high on the counter overflow (in up-counting and
      --  up/down-counting modes) or underflow (in downcounting mode). There
      --  are 3 possible options for flag setting in center-aligned mode, refer
      --  to the CMS bits in the TIMx_CR1 register for the full description. If
      --  channel CC1 is configured as input: this bit is set when counter
      --  value has been captured in TIMx_CCR1 register (an edge has been
      --  detected on IC1, as per the edge sensitivity defined with the CC1P
      --  and CC1NP bits setting, in TIMx_CCER).
      CC1IF          : Boolean := False;
      --  Capture/Compare 2 interrupt flag refer to CC1IF description
      CC2IF          : Boolean := False;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  COM interrupt flag This flag is set by hardware on a COM event (once
      --  the capture/compare control bits CCxE, CCxNE, OCxM  have been
      --  updated). It is cleared by software.
      COMIF          : Boolean := False;
      --  Trigger interrupt flag This flag is set by hardware on the TRG
      --  trigger event (active edge detected on tim_trgi input when the slave
      --  mode controller is enabled in all modes but gated mode, both edges in
      --  case gated mode is selected). It is set when the counter starts or
      --  stops when gated mode is selected. It is cleared by software.
      TIF            : Boolean := False;
      --  Break interrupt flag This flag is set by hardware as soon as the
      --  break input goes active. It can be cleared by software if the break
      --  input is not active.
      BIF            : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Capture/Compare 1 overcapture flag This flag is set by hardware only
      --  when the corresponding channel is configured in input capture mode.
      --  It is cleared by software by writing it to 0 .
      CC1OF          : Boolean := False;
      --  Capture/Compare 2 overcapture flag Refer to CC1OF description
      CC2OF          : Boolean := False;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM15_SR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      CC2IF          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      COMIF          at 0 range 5 .. 5;
      TIF            at 0 range 6 .. 6;
      BIF            at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CC1OF          at 0 range 9 .. 9;
      CC2OF          at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   --  TIM15 event generation register
   type TIM15_EGR_Register is record
      --  Write-only. Update generation This bit can be set by software, it is
      --  automatically cleared by hardware.
      UG            : Boolean := False;
      --  Write-only. Capture/Compare 1 generation This bit is set by software
      --  in order to generate an event, it is automatically cleared by
      --  hardware. 1	 A capture/compare event is generated on channel 1: If
      --  channel CC1 is configured as output: CC1IF flag is set, Corresponding
      --  interrupt or DMA request is sent if enabled. If channel CC1 is
      --  configured as input: The current value of the counter is captured in
      --  TIM15_CCR1 register. The CC1IF flag is set, the corresponding
      --  interrupt or DMA request is sent if enabled. The CC1OF flag is set if
      --  the CC1IF flag was already high.
      CC1G          : Boolean := False;
      --  Write-only. Capture/Compare 2 generation Refer to CC1G description
      CC2G          : Boolean := False;
      --  unspecified
      Reserved_3_4  : HAL.UInt2 := 16#0#;
      --  Capture/Compare control update generation This bit can be set by
      --  software, it is automatically cleared by hardware. Note: This bit
      --  acts only on channels that have a complementary output.
      COMG          : Boolean := False;
      --  Write-only. Trigger generation This bit is set by software in order
      --  to generate an event, it is automatically cleared by hardware.
      TG            : Boolean := False;
      --  Write-only. Break generation This bit is set by software in order to
      --  generate an event, it is automatically cleared by hardware.
      BG            : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM15_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      COMG          at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      BG            at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM15_CCMR1_Intput_CC1S_Field is HAL.UInt2;
   subtype TIM15_CCMR1_Intput_IC1PSC_Field is HAL.UInt2;
   subtype TIM15_CCMR1_Intput_IC1F_Field is HAL.UInt4;
   subtype TIM15_CCMR1_Intput_CC2S_Field is HAL.UInt2;
   subtype TIM15_CCMR1_Intput_IC2PSC_Field is HAL.UInt2;
   subtype TIM15_CCMR1_Intput_IC2F_Field is HAL.UInt4;

   --  TIM15 capture/compare mode register 1 [alternate]	
   type TIM15_CCMR1_Intput_Register is record
      --  Capture/Compare 1 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC1S bits
      --  are writable only when the channel is OFF (CC1E = 0 in TIM15_CCER).
      CC1S           : TIM15_CCMR1_Intput_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler This bit-field defines the ratio of the
      --  prescaler acting on CC1 input (tim_ic1). The prescaler is reset as
      --  soon as CC1E= 0 (TIM15_CCER register).
      IC1PSC         : TIM15_CCMR1_Intput_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter This bit-field defines the frequency used to
      --  sample tim_ti1 input and the length of the digital filter applied to
      --  tim_ti1. The digital filter is made of an event counter in which N
      --  consecutive events are needed to validate a transition on the output:
      IC1F           : TIM15_CCMR1_Intput_IC1F_Field := 16#0#;
      --  Capture/Compare 2 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC2S bits
      --  are writable only when the channel is OFF (CC2E = 0 in TIM15_CCER).
      CC2S           : TIM15_CCMR1_Intput_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : TIM15_CCMR1_Intput_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : TIM15_CCMR1_Intput_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_CCMR1_Intput_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM15_CCMR1_Output_CC1S_Field is HAL.UInt2;
   subtype TIM15_CCMR1_Output_OC1M1_Field is HAL.UInt3;
   subtype TIM15_CCMR1_Output_CC2S_Field is HAL.UInt2;
   subtype TIM15_CCMR1_Output_OC2M1_Field is HAL.UInt3;

   --  TIM15 capture/compare mode register 1 [alternate]	
   type TIM15_CCMR1_Output_Register is record
      --  Capture/Compare 1 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC1S bits
      --  are writable only when the channel is OFF (CC1E = 0 in TIM15_CCER).
      CC1S           : TIM15_CCMR1_Output_CC1S_Field := 16#0#;
      --  Output Compare 1 fast enable This bit decreases the latency between a
      --  trigger event and a transition on the timer output. It must be used
      --  in one-pulse mode (OPM bit set in TIMx_CR1 register), to have the
      --  output pulse starting as soon as possible after the starting trigger.
      OC1FE          : Boolean := False;
      --  Output Compare 1 preload enable Note: These bits can not be modified
      --  as long as LOCK level 3 has been programmed (LOCK bits in TIM15_BDTR
      --  register) and CC1S= 00 (the channel is configured in output). The PWM
      --  mode can be used without validating the preload register only in one
      --  pulse mode (OPM bit set in TIM15_CR1 register). Else the behavior is
      --  not guaranteed.
      OC1PE          : Boolean := False;
      --  Output compare 1 mode These bits define the behavior of the output
      --  reference signal tim_oc1ref from which tim_oc1 and tim_oc1n are
      --  derived. tim_oc1ref is active high whereas tim_oc1 and tim_oc1n
      --  active level depends on CC1P and CC1NP bits. Note: These bits can not
      --  be modified as long as LOCK level 3 has been programmed (LOCK bits in
      --  TIM15_BDTR register) and CC1S= 00 (the channel is configured in
      --  output). In PWM mode, the tim_ocxref level changes only when the
      --  result of the comparison changes or when the output compare mode
      --  switches from frozen  mode to PWM  mode. On channels
      --  that have a complementary output, this bit field is preloaded. If the
      --  CCPC bit is set in the TIM15_CR2 register then the OC1M active bits
      --  take the new value from the preloaded bits only when a COM event is
      --  generated.
      OC1M1          : TIM15_CCMR1_Output_OC1M1_Field := 16#0#;
      --  Output compare 1 clear enable
      OC1CE          : Boolean := False;
      --  Capture/Compare 2 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC2S bits
      --  are writable only when the channel is OFF (CC2E = 0 in TIM15_CCER).
      CC2S           : TIM15_CCMR1_Output_CC2S_Field := 16#0#;
      --  Output compare 2 fast enable
      OC2FE          : Boolean := False;
      --  Output compare 2 preload enable
      OC2PE          : Boolean := False;
      --  Output compare 2 mode
      OC2M1          : TIM15_CCMR1_Output_OC2M1_Field := 16#0#;
      --  Output compare 2 clear enable
      OC2CE          : Boolean := False;
      --  Output compare 1 mode These bits define the behavior of the output
      --  reference signal tim_oc1ref from which tim_oc1 and tim_oc1n are
      --  derived. tim_oc1ref is active high whereas tim_oc1 and tim_oc1n
      --  active level depends on CC1P and CC1NP bits. Note: These bits can not
      --  be modified as long as LOCK level 3 has been programmed (LOCK bits in
      --  TIM15_BDTR register) and CC1S= 00 (the channel is configured in
      --  output). In PWM mode, the tim_ocxref level changes only when the
      --  result of the comparison changes or when the output compare mode
      --  switches from frozen  mode to PWM  mode. On channels
      --  that have a complementary output, this bit field is preloaded. If the
      --  CCPC bit is set in the TIM15_CR2 register then the OC1M active bits
      --  take the new value from the preloaded bits only when a COM event is
      --  generated.
      OC1M2          : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Output compare 2 mode
      OC2M2          : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_CCMR1_Output_Register use record
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

   --  TIM15 capture/compare enable register
   type TIM15_CCER_Register is record
      --  Capture/Compare 1 output enable When CC1 channel is configured as
      --  output, the OC1 level depends on MOE, OSSI, OSSR, OIS1, OIS1N and
      --  CC1NE bits, regardless of the CC1E bits state. Refer to for details.
      CC1E          : Boolean := False;
      --  Capture/Compare 1 output polarity CC1 channel configured as output:
      --  When CC1 channel is configured as input, both CC1NP/CC1P bits select
      --  the active polarity of TI1FP1 and TI2FP1 for trigger or capture
      --  operations. CC1NP=0, CC1P=0:	non-inverted/rising edge. The circuit is
      --  sensitive to TIxFP1 rising edge (capture or trigger operations in
      --  reset, external clock or trigger mode), TIxFP1 is not inverted
      --  (trigger operation in gated mode or encoder mode). CC1NP=0,
      --  CC1P=1:	inverted/falling edge. The circuit is sensitive to TIxFP1
      --  falling edge (capture or trigger operations in reset, external clock
      --  or trigger mode), TIxFP1 is inverted (trigger operation in gated mode
      --  or encoder mode). CC1NP=1, CC1P=1:	non-inverted/both edges/ The
      --  circuit is sensitive to both TIxFP1 rising and falling edges (capture
      --  or trigger operations in reset, external clock or trigger mode),
      --  TIxFP1is not inverted (trigger operation in gated mode). This
      --  configuration must not be used in encoder mode. CC1NP=1, CC1P=0:	this
      --  configuration is reserved, it must not be used. Note: This bit is not
      --  writable as soon as LOCK level 2 or 3 has been programmed (LOCK bits
      --  in TIM15_BDTR register). On channels that have a complementary
      --  output, this bit is preloaded. If the CCPC bit is set in the
      --  TIM15_CR2 register then the CC1P active bit takes the new value from
      --  the preloaded bit only when a Commutation event is generated.
      CC1P          : Boolean := False;
      --  Capture/Compare 1 complementary output enable
      CC1NE         : Boolean := False;
      --  Capture/Compare 1 complementary output polarity CC1 channel
      --  configured as output: CC1 channel configured as input: This bit is
      --  used in conjunction with CC1P to define the polarity of tim_ti1fp1
      --  and tim_ti2fp1. Refer to CC1P description. Note: This bit is not
      --  writable as soon as LOCK level 2 or 3 has been programmed (LOCK bits
      --  in TIM15_BDTR register) and CC1S= 00  (the channel is
      --  configured in output). On channels that have a complementary output,
      --  this bit is preloaded. If the CCPC bit is set in the TIM15_CR2
      --  register then the CC1NP active bit takes the new value from the
      --  preloaded bit only when a Commutation event is generated.
      CC1NP         : Boolean := False;
      --  Capture/Compare 2 output enable Refer to CC1E description
      CC2E          : Boolean := False;
      --  Capture/Compare 2 output polarity Refer to CC1P description
      CC2P          : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Capture/Compare 2 complementary output polarity Refer to CC1NP
      --  description
      CC2NP         : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM15_CCER_Register use record
      CC1E          at 0 range 0 .. 0;
      CC1P          at 0 range 1 .. 1;
      CC1NE         at 0 range 2 .. 2;
      CC1NP         at 0 range 3 .. 3;
      CC2E          at 0 range 4 .. 4;
      CC2P          at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      CC2NP         at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM15_CNT_CNT_Field is HAL.UInt16;

   --  TIM15 counter
   type TIM15_CNT_Register is record
      --  Counter value Non-dithering mode (DITHEN = 0) The register holds the
      --  counter value. Dithering mode (DITHEN = 1) The register only holds
      --  the non-dithered part in CNT[15:0]. The fractional part is not
      --  available.
      CNT            : TIM15_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  Read-only. UIF Copy This bit is a read-only copy of the UIF bit in
      --  the TIM15_ISR register.
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM15_ARR_ARR_Field is HAL.UInt20;

   --  TIM15 auto-reload register
   type TIM15_ARR_Register is record
      --  Auto-reload value ARR is the value to be loaded in the actual
      --  auto-reload register. Refer to the for more details about ARR update
      --  and behavior. The counter is blocked while the auto-reload value is
      --  null. Non-dithering mode (DITHEN = 0) The register holds the
      --  auto-reload value in ARR[15:0]. The ARR[19:16] bits are reset.
      --  Dithering mode (DITHEN = 1) The register holds the integer part in
      --  ARR[19:4]. The ARR[3:0] bitfield contains the dithered part.
      ARR            : TIM15_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM15_RCR_REP_Field is HAL.UInt8;

   --  TIM15 repetition counter register
   type TIM15_RCR_Register is record
      --  Repetition counter reload value This bitfield defines the update rate
      --  of the compare registers (i.e. periodic transfers from preload to
      --  active registers) when preload registers are enable. It also defines
      --  the update interrupt generation rate, if this interrupt is enable.
      --  When the repetition down-counter reaches zero, an update event is
      --  generated and it restarts counting from REP value. As the reptition
      --  counter is reloaded with REP value only at the repetition update
      --  event UEV, any write to the TIM15_RCR register is not taken in
      --  account until the next repetition update event. It means in PWM mode
      --  (REP+1) corresponds to the number of PWM periods in edge-aligned
      --  mode: the number of PWM periods in edge-aligned mode the number of
      --  half PWM period in center-aligned mode
      REP           : TIM15_RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM15_RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype TIM15_CCR1_CCR1_Field is HAL.UInt20;

   --  TIM15 capture/compare register 1
   type TIM15_CCR1_Register is record
      --  Capture/compare 1 value If channel CC1 is configured as output: CCR1
      --  is the value to be loaded in the actual capture/compare 1 register
      --  (preload value). It is loaded permanently if the preload feature is
      --  not selected in the TIM15_CCMR1 register (bit OC1PE). Else the
      --  preload value is copied in the active capture/compare 1 register when
      --  an update event occurs. The active capture/compare register contains
      --  the value to be compared to the counter TIM15_CNT and signaled on
      --  tim_oc1 output. Non-dithering mode (DITHEN = 0) The register holds
      --  the compare value in CCR1[15:0]. The CCR1[19:16] bits are reset.
      --  Dithering mode (DITHEN = 1) The register holds the integer part in
      --  CCR1[19:4]. The CCR1[3:0] bitfield contains the dithered part. If
      --  channel CC1 is configured as input: CR1 is the counter value
      --  transferred by the last input capture 1 event (tim_ic1). The
      --  TIMx_CCR1 register is read-only and cannot be programmed.
      --  Non-dithering mode (DITHEN = 0) The register holds the capture value
      --  in CCR1[15:0]. The CCR1[19:16] bits are reset. Dithering mode (DITHEN
      --  = 1) The register holds the capture in CCR1[19:4]. The CCR1[3:0] bits
      --  are reset.
      CCR1           : TIM15_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_CCR1_Register use record
      CCR1           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM15_CCR2_CCR2_Field is HAL.UInt20;

   --  TIM15 capture/compare register 2
   type TIM15_CCR2_Register is record
      --  Capture/compare 2 value If channel CC2 is configured as output: CCR2
      --  is the value to be loaded in the actual capture/compare 2 register
      --  (preload value). It is loaded permanently if the preload feature is
      --  not selected in the TIM15_CCMR2 register (bit OC2PE). Else the
      --  preload value is copied in the active capture/compare 2 register when
      --  an update event occurs. The active capture/compare register contains
      --  the value to be compared to the counter TIM15_CNT and signalled on
      --  tim_oc2 output. Non-dithering mode (DITHEN = 0) The register holds
      --  the compare value in CCR2[15:0]. The CCR2[19:16] bits are reset.
      --  Dithering mode (DITHEN = 1) The register holds the integer part in
      --  CCR2[19:4]. The CCR2[3:0] bitfield contains the dithered part. If
      --  channel CC2 is configured as input: CCR2 is the counter value
      --  transferred by the last input capture 1 event (tim_ic2). The
      --  TIMx_CCR2 register is read-only and cannot be programmed.
      --  Non-dithering mode (DITHEN = 0) The register holds the capture value
      --  in CCR2[15:0]. The CCR2[19:16] bits are reset. Dithering mode (DITHEN
      --  = 1) The register holds the capture in CCR2[19:4]. The CCR2[3:0] bits
      --  are reset.
      CCR2           : TIM15_CCR2_CCR2_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_CCR2_Register use record
      CCR2           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM15_BDTR_DTG_Field is HAL.UInt8;
   subtype TIM15_BDTR_LOCK_Field is HAL.UInt2;
   subtype TIM15_BDTR_BKF_Field is HAL.UInt4;

   --  TIM15 break and dead-time register
   type TIM15_BDTR_Register is record
      --  Dead-time generator setup This bit-field defines the duration of the
      --  dead-time inserted between the complementary outputs. DT correspond
      --  to this duration. DTG[7:5]=0xx = DT=DTG[7:0]x tdtg with tdtg=tDTS
      --  DTG[7:5]=10x = DT=(64+DTG[5:0])xtdtg with Tdtg=2xtDTS DTG[7:5]=110 =
      --  DT=(32+DTG[4:0])xtdtg with Tdtg=8xtDTS DTG[7:5]=111 =
      --  DT=(32+DTG[4:0])xtdtg with Tdtg=16xtDTS Example if TDTS=125ns (8MHz),
      --  dead-time possible values are: 0 to 15875 ns by 125 ns steps, 16 us
      --  to 31750 ns by 250 ns steps, 32 us to 63 us by 1 us steps, 64 us to
      --  126 us by 2 us steps Note: This bit-field can not be modified as long
      --  as LOCK level 1, 2 or 3 has been programmed (LOCK bits in TIM15_BDTR
      --  register).
      DTG            : TIM15_BDTR_DTG_Field := 16#0#;
      --  Lock configuration These bits offer a write protection against
      --  software errors. Note: The LOCK bits can be written only once after
      --  the reset. Once the TIM15_BDTR register has been written, their
      --  content is frozen until the next reset.
      LOCK           : TIM15_BDTR_LOCK_Field := 16#0#;
      --  Off-state selection for Idle mode This bit is used when MOE=0 on
      --  channels configured as outputs. See tim_ocx/tim_ocxn enable
      --  description for more details (capture/compare enable register
      --  (TIM15_CCER) on page  1427). Note: This bit can not be modified as
      --  soon as the LOCK level 2 has been programmed (LOCK bits in TIM15_BDTR
      --  register).
      OSSI           : Boolean := False;
      --  Off-state selection for Run mode This bit is used when MOE=1 on
      --  channels that have a complementary output which are configured as
      --  outputs. OSSR is not implemented if no complementary output is
      --  implemented in the timer. See tim_ocx/tim_ocxn enable description for
      --  more details (capture/compare enable register (TIM15_CCER) on page
      --   1427). Note: This bit can not be modified as soon as the LOCK level
      --  2 has been programmed (LOCK bits in TIM15_BDTR register).
      OSSR           : Boolean := False;
      --  Break enable 1; Break inputs (tim_brk and tim_sys_brk clock failure
      --  event) enabled This bit cannot be modified when LOCK level 1 has been
      --  programmed (LOCK bits in TIM15_BDTR register). Note: Any write
      --  operation to this bit takes a delay of 1 APB clock cycle to become
      --  effective.
      BKE            : Boolean := False;
      --  Break polarity Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIM15_BDTR register). Any
      --  write operation to this bit takes a delay of 1 APB clock cycle to
      --  become effective.
      BKP            : Boolean := False;
      --  Automatic output enable Note: This bit can not be modified as long as
      --  LOCK level 1 has been programmed (LOCK bits in TIM15_BDTR register).
      AOE            : Boolean := False;
      --  Main output enable This bit is cleared asynchronously by hardware as
      --  soon as the tim_brk input is active. It is set by software or
      --  automatically depending on the AOE bit. It is acting only on the
      --  channels which are configured in output. See tim_ocx/tim_ocxn enable
      --  description for more details (capture/compare enable register
      --  (TIM15_CCER) on page  1427).
      MOE            : Boolean := False;
      --  Break filter This bit-field defines the frequency used to sample the
      --  tim_brk input signal and the length of the digital filter applied to
      --  tim_brk. The digital filter is made of an event counter in which N
      --  events are needed to validate a transition on the output: Note: This
      --  bit cannot be modified when LOCK level 1 has been programmed (LOCK
      --  bits in TIM15_BDTR register).
      BKF            : TIM15_BDTR_BKF_Field := 16#0#;
      --  unspecified
      Reserved_20_25 : HAL.UInt6 := 16#0#;
      --  Break disarm This bit is cleared by hardware when no break source is
      --  active. The BKDSRM bit must be set by software to release the
      --  bidirectional output control (open-drain output in Hi-Z state) and
      --  then be polled until it is reset by hardware, indicating that the
      --  fault condition has disappeared. Note: Any write operation to this
      --  bit takes a delay of 1 APB clock cycle to become effective.
      BKDSRM         : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Break bidirectional In the bidirectional mode (BKBID bit set to 1),
      --  the break input is configured both in input mode and in open drain
      --  output mode. Any active break event asserts a low logic level on the
      --  Break input to indicate an internal break event to external devices.
      --  Note: This bit cannot be modified as long as LOCK level 1 has been
      --  programmed (LOCK bits in TIM15_BDTR register). Note: Any write
      --  operation to this bit takes a delay of 1 APB clock cycle to become
      --  effective.
      BKBID          : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_BDTR_Register use record
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

   subtype TIM15_DTR2_DTGF_Field is HAL.UInt8;

   --  TIM15 timer deadtime register 2
   type TIM15_DTR2_Register is record
      --  Dead-time falling edge generator setup This bit-field defines the
      --  duration of the dead-time inserted between the complementary outputs,
      --  on the falling edge. DTGF[7:5]=0xx = DTF=DTGF[7:0]x tdtg with
      --  tdtg=tDTS. DTGF[7:5]=10x = DTF=(64+DTGF[5:0])xtdtg with Tdtg=2xtDTS.
      --  DTGF[7:5]=110 = DTF=(32+DTGF[4:0])xtdtg with Tdtg=8xtDTS.
      --  DTGF[7:5]=111 = DTF=(32+DTGF[4:0])xtdtg with Tdtg=16xtDTS. Example if
      --  TDTS=125ns (8MHz), dead-time possible values are: 0 to 15875 ns by
      --  125 ns steps, 16 us to 31750 ns by 250 ns steps, 32 us to 63us by 1
      --  us steps, 64 us to 126 us by 2 us steps Note: This bit-field can not
      --  be modified as long as LOCK level 1, 2 or 3 has been programmed (LOCK
      --  bits in TIM15_BDTR register).
      DTGF           : TIM15_DTR2_DTGF_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Deadtime asymmetric enable Note: This bit can not be modified as long
      --  as LOCK level 1, 2 or 3 has been programmed (LOCK bits in TIM15_BDTR
      --  register).
      DTAE           : Boolean := False;
      --  Deadtime preload enable Note: This bit can not be modified as long as
      --  LOCK level 1, 2 or 3 has been programmed (LOCK bits in TIM15_BDTR
      --  register).
      DTPE           : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_DTR2_Register use record
      DTGF           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DTAE           at 0 range 16 .. 16;
      DTPE           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TIM15_TISEL_TI1SEL_Field is HAL.UInt4;
   subtype TIM15_TISEL_TI2SEL_Field is HAL.UInt4;

   --  TIM15 input selection register
   type TIM15_TISEL_Register is record
      --  selects tim_ti1_in[0..15] input ... Refer to for interconnects list.
      TI1SEL         : TIM15_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  selects tim_ti2_in[0..15] input ... Refer to for interconnects list.
      TI2SEL         : TIM15_TISEL_TI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_TISEL_Register use record
      TI1SEL         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TI2SEL         at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  TIM15 alternate function register 1
   type TIM15_AF1_Register is record
      --  TIMx_BKIN input enable This bit enables the TIMx_BKIN alternate
      --  function input for the timer s tim_brk input. TIMx_BKIN input is ORed
      --  with the other tim_brk sources. Note: This bit can not be modified as
      --  long as LOCK level 1 has been programmed (LOCK bits in TIM15_BDTR
      --  register).
      BKINE          : Boolean := True;
      --  tim_brk_cmp1 enable This bit enables the tim_brk_cmp1 for the timer s
      --  tim_brk input. tim_brk_cmp1 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIM15_BDTR register).
      BKCMP1E        : Boolean := False;
      --  tim_brk_cmp2 enable This bit enables the tim_brk_cmp2 for the timer s
      --  tim_brk input. tim_brk_cmp2 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIM15_BDTR register).
      BKCMP2E        : Boolean := False;
      --  tim_brk_cmp3 enable This bit enables the tim_brk_cmp3 for the timer s
      --  tim_brk input. tim_brk_cmp3 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIM15_BDTR register).
      BKCMP3E        : Boolean := False;
      --  tim_brk_cmp4 enable This bit enables the tim_brk_cmp4 for the timer s
      --  tim_brk input. tim_brk_cmp4 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIM15_BDTR register).
      BKCMP4E        : Boolean := False;
      --  tim_brk_cmp5 enable This bit enables the tim_brk_cmp5 for the timer s
      --  tim_brk input. tim_brk_cmp5 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIM15_BDTR register).
      BKCMP5E        : Boolean := False;
      --  tim_brk_cmp6 enable This bit enables the tim_brk_cmp6 for the timer s
      --  tim_brk input. tim_brk_cmp6 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIM15_BDTR register).
      BKCMP6E        : Boolean := False;
      --  tim_brk_cmp7 enable This bit enables the tim_brk_cmp7 for the timer s
      --  tim_brk input. COMP7 output is ORed with the other tim_brk sources.
      --  Note: This bit can not be modified as long as LOCK level 1 has been
      --  programmed (LOCK bits in TIM15_BDTR register).
      BKCMP7E        : Boolean := False;
      --  tim_brk_cmp8 enable This bit enables the tim_brk_cmp8 for the timer s
      --  tim_brk input. mdf_brkx output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIM15_BDTR register).
      BKCMP8E        : Boolean := False;
      --  TIMx_BKIN input polarity This bit selects the TIMx_BKIN alternate
      --  function input sensitivity. It must be programmed together with the
      --  BKP polarity bit. Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIM15_BDTR register).
      BKINP          : Boolean := False;
      --  tim_brk_cmp1 input polarity This bit selects the tim_brk_cmp1 input
      --  sensitivity. It must be programmed together with the BKP polarity
      --  bit. Note: This bit can not be modified as long as LOCK level 1 has
      --  been programmed (LOCK bits in TIM15_BDTR register).
      BKCMP1P        : Boolean := False;
      --  tim_brk_cmp2 input polarity This bit selects the tim_brk_cmp2 input
      --  sensitivity. It must be programmed together with the BKP polarity
      --  bit. Note: This bit can not be modified as long as LOCK level 1 has
      --  been programmed (LOCK bits in TIM15_BDTR register).
      BKCMP2P        : Boolean := False;
      --  tim_brk_cmp3 input polarity This bit selects the tim_brk_cmp3 input
      --  sensitivity. It must be programmed together with the BKP polarity
      --  bit. Note: This bit can not be modified as long as LOCK level 1 has
      --  been programmed (LOCK bits in TIM15_BDTR register).
      BKCMP3P        : Boolean := False;
      --  tim_brk_cmp4 input polarity This bit selects the tim_brk_cmp4 input
      --  sensitivity. It must be programmed together with the BKP polarity
      --  bit. Note: This bit can not be modified as long as LOCK level 1 has
      --  been programmed (LOCK bits in TIM15_BDTR register).
      BKCMP4P        : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_AF1_Register use record
      BKINE          at 0 range 0 .. 0;
      BKCMP1E        at 0 range 1 .. 1;
      BKCMP2E        at 0 range 2 .. 2;
      BKCMP3E        at 0 range 3 .. 3;
      BKCMP4E        at 0 range 4 .. 4;
      BKCMP5E        at 0 range 5 .. 5;
      BKCMP6E        at 0 range 6 .. 6;
      BKCMP7E        at 0 range 7 .. 7;
      BKCMP8E        at 0 range 8 .. 8;
      BKINP          at 0 range 9 .. 9;
      BKCMP1P        at 0 range 10 .. 10;
      BKCMP2P        at 0 range 11 .. 11;
      BKCMP3P        at 0 range 12 .. 12;
      BKCMP4P        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype TIM15_AF2_OCRSEL_Field is HAL.UInt3;

   --  TIM15 alternate function register 2
   type TIM15_AF2_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  ocref_clr source selection These bits select the ocref_clr input
      --  source. Refer to for product specific implementation. Note: These
      --  bits can not be modified as long as LOCK level 1 has been programmed
      --  (LOCK bits in TIM15_BDTR register).
      OCRSEL         : TIM15_AF2_OCRSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_AF2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      OCRSEL         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype TIM15_DCR_DBA_Field is HAL.UInt5;
   subtype TIM15_DCR_DBL_Field is HAL.UInt5;
   subtype TIM15_DCR_DBSS_Field is HAL.UInt4;

   --  TIM15 DMA control register
   type TIM15_DCR_Register is record
      --  DMA base address This 5-bit field defines the base-address for DMA
      --  transfers (when read/write access are done through the TIM15_DMAR
      --  address). DBA is defined as an offset starting from the address of
      --  the TIM15_CR1 register. Example: ...
      DBA            : TIM15_DCR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA burst length This 5-bit field defines the length of DMA transfers
      --  (the timer recognizes a burst transfer when a read or a write access
      --  is done to the TIM15_DMAR address). ...
      DBL            : TIM15_DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  DMA burst source selection This bitfield defines the interrupt source
      --  that triggers the DMA burst transfers (the timer recognizes a burst
      --  transfer when a read or a write access is done to the TIMx_DMAR
      --  address). Other: reserved
      DBSS           : TIM15_DCR_DBSS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_DCR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DBSS           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM15_HWCFGR2_PSC_LINEAR_Field is HAL.UInt4;
   subtype TIM15_HWCFGR2_PSC_WIDTH16_Field is HAL.UInt4;
   subtype TIM15_HWCFGR2_CNT_WIDTH_Field is HAL.UInt8;
   subtype TIM15_HWCFGR2_OPTIONREG_OUT_Field is HAL.UInt8;

   --  TIM15 hardware configuration 2 register
   type TIM15_HWCFGR2_Register is record
      --  Read-only. Prescaler linear Others: Reserved
      PSC_LINEAR     : TIM15_HWCFGR2_PSC_LINEAR_Field;
      --  Read-only. Prescaler width Others: Reserved
      PSC_WIDTH16    : TIM15_HWCFGR2_PSC_WIDTH16_Field;
      --  Read-only. Counter width Others: Reserved
      CNT_WIDTH      : TIM15_HWCFGR2_CNT_WIDTH_Field;
      --  Read-only. Option register number (0 to 16).
      OPTIONREG_OUT  : TIM15_HWCFGR2_OPTIONREG_OUT_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_HWCFGR2_Register use record
      PSC_LINEAR     at 0 range 0 .. 3;
      PSC_WIDTH16    at 0 range 4 .. 7;
      CNT_WIDTH      at 0 range 8 .. 15;
      OPTIONREG_OUT  at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TIM15_HWCFGR1_NB_OF_CC_Field is HAL.UInt4;
   subtype TIM15_HWCFGR1_NB_OF_DT_Field is HAL.UInt4;
   subtype TIM15_HWCFGR1_NB_OF_SM_Field is HAL.UInt4;
   subtype TIM15_HWCFGR1_RCR_IMPL_Field is HAL.UInt4;
   subtype TIM15_HWCFGR1_ETR_IMPL_Field is HAL.UInt4;
   subtype TIM15_HWCFGR1_BK_IMPL_Field is HAL.UInt4;
   subtype TIM15_HWCFGR1_DMA_IMPL_Field is HAL.UInt4;
   subtype TIM15_HWCFGR1_CNT_DIR_Field is HAL.UInt4;

   --  TIM15 hardware configuration 1 register
   type TIM15_HWCFGR1_Register is record
      --  Read-only. Number of capture / compare channel Others: Reserved
      NB_OF_CC : TIM15_HWCFGR1_NB_OF_CC_Field;
      --  Read-only. Number of complementary outputs and dead-time generators
      --  0x0 0x1 0x2 0x3 0x4 Others: Reserved
      NB_OF_DT : TIM15_HWCFGR1_NB_OF_DT_Field;
      --  Read-only. Number of synchronization module Others: Reserved
      NB_OF_SM : TIM15_HWCFGR1_NB_OF_SM_Field;
      --  Read-only. Repetition counter implementation Others: Reserved
      RCR_IMPL : TIM15_HWCFGR1_RCR_IMPL_Field;
      --  Read-only. External trigger implementation Others: Reserved
      ETR_IMPL : TIM15_HWCFGR1_ETR_IMPL_Field;
      --  Read-only. Break circuit implementation Others: Reserved
      BK_IMPL  : TIM15_HWCFGR1_BK_IMPL_Field;
      --  Read-only. DMA features implementation Others: Reserved
      DMA_IMPL : TIM15_HWCFGR1_DMA_IMPL_Field;
      --  Read-only. Counter direction Others: Reserved
      CNT_DIR  : TIM15_HWCFGR1_CNT_DIR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_HWCFGR1_Register use record
      NB_OF_CC at 0 range 0 .. 3;
      NB_OF_DT at 0 range 4 .. 7;
      NB_OF_SM at 0 range 8 .. 11;
      RCR_IMPL at 0 range 12 .. 15;
      ETR_IMPL at 0 range 16 .. 19;
      BK_IMPL  at 0 range 20 .. 23;
      DMA_IMPL at 0 range 24 .. 27;
      CNT_DIR  at 0 range 28 .. 31;
   end record;

   subtype TIM15_VERR_MINREV_Field is HAL.UInt4;
   subtype TIM15_VERR_MAJREV_Field is HAL.UInt4;

   --  TIM15 IP version register
   type TIM15_VERR_Register is record
      --  Read-only. Minor revision number. 0x2
      MINREV        : TIM15_VERR_MINREV_Field;
      --  Read-only. Major revision number. 0x4
      MAJREV        : TIM15_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM15_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIM2_CR1_CMS_Field is HAL.UInt2;
   subtype TIM2_CR1_CKD_Field is HAL.UInt2;

   --  TIM2 control register 1
   type TIM2_CR1_Register is record
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
      CMS            : TIM2_CR1_CMS_Field := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division This bit-field indicates the division ratio between
      --  the timer clock (tim_ker_ck) frequency and sampling clock used by the
      --  digital filters (tim_etr_in, tim_tix),
      CKD            : TIM2_CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  Dithering Enable Note: The DITHEN bit can only be modified when CEN
      --  bit is reset.
      DITHEN         : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for TIM2_CR1_Register use record
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
      DITHEN         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype TIM2_CR2_MMS1_Field is HAL.UInt3;

   --  TIM2 control register 2
   type TIM2_CR2_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Capture/compare DMA selection
      CCDS           : Boolean := False;
      --  Master mode selection These bits allow to select the information to
      --  be sent in master mode to slave timers for synchronization
      --  (tim_trgo). The combination is as follows: tim_trgo, except if the
      --  master/slave mode is selected (see the MSM bit description in
      --  TIMx_SMCR register). Others: Reserved Note: The clock of the slave
      --  timer or ADC must be enabled prior to receive events from the master
      --  timer, and must not be changed on-the-fly while triggers are received
      --  from the master timer.
      MMS1           : TIM2_CR2_MMS1_Field := 16#0#;
      --  tim_ti1 selection
      TI1S           : Boolean := False;
      --  unspecified
      Reserved_8_24  : HAL.UInt17 := 16#0#;
      --  Master mode selection These bits allow to select the information to
      --  be sent in master mode to slave timers for synchronization
      --  (tim_trgo). The combination is as follows: tim_trgo, except if the
      --  master/slave mode is selected (see the MSM bit description in
      --  TIMx_SMCR register). Others: Reserved Note: The clock of the slave
      --  timer or ADC must be enabled prior to receive events from the master
      --  timer, and must not be changed on-the-fly while triggers are received
      --  from the master timer.
      MMS2           : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_CR2_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      CCDS           at 0 range 3 .. 3;
      MMS1           at 0 range 4 .. 6;
      TI1S           at 0 range 7 .. 7;
      Reserved_8_24  at 0 range 8 .. 24;
      MMS2           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype TIM2_SMCR_SMS1_Field is HAL.UInt3;
   subtype TIM2_SMCR_TS1_Field is HAL.UInt3;
   subtype TIM2_SMCR_ETF_Field is HAL.UInt4;
   subtype TIM2_SMCR_ETPS_Field is HAL.UInt2;
   subtype TIM2_SMCR_TS2_Field is HAL.UInt2;

   --  TIM2 slave mode control register
   type TIM2_SMCR_Register is record
      --  Slave mode selection When external signals are selected the active
      --  edge of the trigger signal (tim_trgi) is linked to the polarity
      --  selected on the external input (see Input Control register and
      --  Control Register description. Note: The gated mode must not be used
      --  if tim_ti1f_ed is selected as the trigger input (TS=00100). Indeed,
      --  tim_ti1f_ed outputs 1 pulse for each transition on tim_ti1f, whereas
      --  the gated mode checks the level of the trigger signal. Note: The
      --  clock of the slave peripherals (timer, ADC, ...) receiving the
      --  tim_trgo signal must be enabled prior to receive events from the
      --  master timer, and the clock frequency (prescaler) must not be changed
      --  on-the-fly while triggers are received from the master timer.
      SMS1           : TIM2_SMCR_SMS1_Field := 16#0#;
      --  OCREF clear selection This bit is used to select the OCREF clear
      --  source Note: If the OCREF clear selection feature is not supported,
      --  this bit is reserved and forced by hardware to 0 . .
      OCCS           : Boolean := False;
      --  Trigger selection (see bits 21:20 for TS[4:3]) This bit-field selects
      --  the trigger input to be used to synchronize the counter. Others:
      --  Reserved See for product specific implementation details. Note: These
      --  bits must be changed only when they are not used (e.g. when SMS=000)
      --  to avoid wrong edge detections at the transition.
      TS1            : TIM2_SMCR_TS1_Field := 16#0#;
      --  Master/Slave mode
      MSM            : Boolean := False;
      --  External trigger filter This bit-field then defines the frequency
      --  used to sample tim_etrp signal and the length of the digital filter
      --  applied to tim_etrp. The digital filter is made of an event counter
      --  in which N consecutive events are needed to validate a transition on
      --  the output:
      ETF            : TIM2_SMCR_ETF_Field := 16#0#;
      --  External trigger prescaler External trigger signal tim_etrp frequency
      --  must be at most 1/4 of tim_ker_ck frequency. A prescaler can be
      --  enabled to reduce tim_etrp frequency. It is useful when inputting
      --  fast external clocks on tim_etr_in.
      ETPS           : TIM2_SMCR_ETPS_Field := 16#0#;
      --  External clock enable This bit enables External clock mode 2. Note:
      --  Setting the ECE bit has the same effect as selecting external clock
      --  mode 1 with tim_trgi connected to tim_etrf (SMS=111 and TS=00111). It
      --  is possible to simultaneously use external clock mode 2 with the
      --  following slave modes: reset mode, gated mode and trigger mode.
      --  Nevertheless, tim_trgi must not be connected to tim_etrf in this case
      --  (TS bits must not be 00111). If external clock mode 1 and external
      --  clock mode 2 are enabled at the same time, the external clock input
      --  is tim_etrf.
      ECE            : Boolean := False;
      --  External trigger polarity This bit selects whether tim_etr_in or
      --  tim_etr_in is used for trigger operations
      ETP            : Boolean := False;
      --  Slave mode selection When external signals are selected the active
      --  edge of the trigger signal (tim_trgi) is linked to the polarity
      --  selected on the external input (see Input Control register and
      --  Control Register description. Note: The gated mode must not be used
      --  if tim_ti1f_ed is selected as the trigger input (TS=00100). Indeed,
      --  tim_ti1f_ed outputs 1 pulse for each transition on tim_ti1f, whereas
      --  the gated mode checks the level of the trigger signal. Note: The
      --  clock of the slave peripherals (timer, ADC, ...) receiving the
      --  tim_trgo signal must be enabled prior to receive events from the
      --  master timer, and the clock frequency (prescaler) must not be changed
      --  on-the-fly while triggers are received from the master timer.
      SMS2           : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Trigger selection (see bits 21:20 for TS[4:3]) This bit-field selects
      --  the trigger input to be used to synchronize the counter. Others:
      --  Reserved See for product specific implementation details. Note: These
      --  bits must be changed only when they are not used (e.g. when SMS=000)
      --  to avoid wrong edge detections at the transition.
      TS2            : TIM2_SMCR_TS2_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  SMS preload enable This bit selects whether the SMS[3:0] bitfield is
      --  preloaded
      SMSPE          : Boolean := False;
      --  SMS preload source This bit selects whether the events that triggers
      --  the SMS[3:0] bitfield transfer from preload to active
      SMSPS          : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_SMCR_Register use record
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
      Reserved_22_23 at 0 range 22 .. 23;
      SMSPE          at 0 range 24 .. 24;
      SMSPS          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  TIM2 DMA/Interrupt enable register
   type TIM2_DIER_Register is record
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
      Reserved_15_19 : HAL.UInt5 := 16#0#;
      --  Index interrupt enable
      IDXIE          : Boolean := False;
      --  Direction change interrupt enable
      DIRIE          : Boolean := False;
      --  Index error interrupt enable
      IERRIE         : Boolean := False;
      --  Transition error interrupt enable
      TERRIE         : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_DIER_Register use record
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
      Reserved_15_19 at 0 range 15 .. 19;
      IDXIE          at 0 range 20 .. 20;
      DIRIE          at 0 range 21 .. 21;
      IERRIE         at 0 range 22 .. 22;
      TERRIE         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  TIM2 status register
   type TIM2_SR_Register is record
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
      --  up/down-counting modes) or underflow (in downcounting mode). There
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
      --  trigger event (active edge detected on tim_trgi input when the slave
      --  mode controller is enabled in all modes but gated mode. It is set
      --  when the counter starts or stops when gated mode is selected. It is
      --  cleared by software.
      TIF            : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Capture/Compare 1 overcapture flag This flag is set by hardware only
      --  when the corresponding channel is configured in input capture mode.
      --  It is cleared by software by writing it to 0 .
      CC1OF          : Boolean := False;
      --  Capture/compare 2 overcapture flag refer to CC1OF description
      CC2OF          : Boolean := False;
      --  Capture/Compare 3 overcapture flag refer to CC1OF description
      CC3OF          : Boolean := False;
      --  Capture/Compare 4 overcapture flag refer to CC1OF description
      CC4OF          : Boolean := False;
      --  unspecified
      Reserved_13_19 : HAL.UInt7 := 16#0#;
      --  Index interrupt flag This flag is set by hardware when an index event
      --  is detected. It is cleared by software by writing it to 0 .
      IDXF           : Boolean := False;
      --  Direction change interrupt flag This flag is set by hardware when the
      --  direction changes in encoder mode (DIR bit value in TIMx_CR is
      --  changing). It is cleared by software by writing it to 0 .
      DIRF           : Boolean := False;
      --  Index error interrupt flag This flag is set by hardware when an index
      --  error is detected. It is cleared by software by writing it to 0 .
      IERRF          : Boolean := False;
      --  Transition error interrupt flag This flag is set by hardware when a
      --  transition error is detected in encoder mode. It is cleared by
      --  software by writing it to 0 .
      TERRF          : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_SR_Register use record
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
      Reserved_13_19 at 0 range 13 .. 19;
      IDXF           at 0 range 20 .. 20;
      DIRF           at 0 range 21 .. 21;
      IERRF          at 0 range 22 .. 22;
      TERRF          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  TIM2 event generation register
   type TIM2_EGR_Register is record
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

   for TIM2_EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      CC3G          at 0 range 3 .. 3;
      CC4G          at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   subtype TIM2_CCMR1_Input_CC1S_Field is HAL.UInt2;
   subtype TIM2_CCMR1_Input_IC1PSC_Field is HAL.UInt2;
   subtype TIM2_CCMR1_Input_IC1F_Field is HAL.UInt4;
   subtype TIM2_CCMR1_Input_CC2S_Field is HAL.UInt2;
   subtype TIM2_CCMR1_Input_IC2PSC_Field is HAL.UInt2;
   subtype TIM2_CCMR1_Input_IC2F_Field is HAL.UInt4;

   --  TIM2 capture/compare mode register 1 [alternate]
   type TIM2_CCMR1_Input_Register is record
      --  Capture/Compare 1 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC1S bits
      --  are writable only when the channel is OFF (CC1E = 0 in TIMx_CCER).
      CC1S           : TIM2_CCMR1_Input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler This bit-field defines the ratio of the
      --  prescaler acting on CC1 input (tim_ic1). The prescaler is reset as
      --  soon as CC1E=0 (TIMx_CCER register).
      IC1PSC         : TIM2_CCMR1_Input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter This bit-field defines the frequency used to
      --  sample tim_ti1 input and the length of the digital filter applied to
      --  tim_ti1. The digital filter is made of an event counter in which N
      --  consecutive events are needed to validate a transition on the output:
      IC1F           : TIM2_CCMR1_Input_IC1F_Field := 16#0#;
      --  Capture/compare 2 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC2S bits
      --  are writable only when the channel is OFF (CC2E = 0 in TIMx_CCER).
      CC2S           : TIM2_CCMR1_Input_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : TIM2_CCMR1_Input_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : TIM2_CCMR1_Input_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_CCMR1_Input_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM2_CCMR1_Output_CC1S_Field is HAL.UInt2;
   subtype TIM2_CCMR1_Output_OC1M1_Field is HAL.UInt3;
   subtype TIM2_CCMR1_Output_CC2S_Field is HAL.UInt2;
   subtype TIM2_CCMR1_Output_OC2M1_Field is HAL.UInt3;

   --  TIM2 capture/compare mode register 1 [alternate]
   type TIM2_CCMR1_Output_Register is record
      --  Capture/Compare 1 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC1S bits
      --  are writable only when the channel is OFF (CC1E = 0 in TIMx_CCER).
      CC1S           : TIM2_CCMR1_Output_CC1S_Field := 16#0#;
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
      --  reference signal tim_oc1ref from which tim_oc1 is derived. tim_oc1ref
      --  is active high whereas tim_oc1 active level depends on CC1P bit.
      --  Note: In PWM mode, the tim_ocref_clr level changes only when the
      --  result of the comparison changes or when the output compare mode
      --  switches from frozen  mode to PWM  mode.
      OC1M1          : TIM2_CCMR1_Output_OC1M1_Field := 16#0#;
      --  Output compare 1 clear enable
      OC1CE          : Boolean := False;
      --  Capture/Compare 2 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC2S bits
      --  are writable only when the channel is OFF (CC2E = 0 in TIMx_CCER).
      CC2S           : TIM2_CCMR1_Output_CC2S_Field := 16#0#;
      --  Output compare 2 fast enable
      OC2FE          : Boolean := False;
      --  Output compare 2 preload enable
      OC2PE          : Boolean := False;
      --  Output compare 2 mode refer to OC1M description on bits 6:4
      OC2M1          : TIM2_CCMR1_Output_OC2M1_Field := 16#0#;
      --  Output compare 2 clear enable
      OC2CE          : Boolean := False;
      --  Output compare 1 mode These bits define the behavior of the output
      --  reference signal tim_oc1ref from which tim_oc1 is derived. tim_oc1ref
      --  is active high whereas tim_oc1 active level depends on CC1P bit.
      --  Note: In PWM mode, the tim_ocref_clr level changes only when the
      --  result of the comparison changes or when the output compare mode
      --  switches from frozen  mode to PWM  mode.
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

   for TIM2_CCMR1_Output_Register use record
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

   subtype TIM2_CCMR2_Input_CC3S_Field is HAL.UInt2;
   subtype TIM2_CCMR2_Input_IC3PSC_Field is HAL.UInt2;
   subtype TIM2_CCMR2_Input_IC3F_Field is HAL.UInt4;
   subtype TIM2_CCMR2_Input_CC4S_Field is HAL.UInt2;
   subtype TIM2_CCMR2_Input_IC4PSC_Field is HAL.UInt2;
   subtype TIM2_CCMR2_Input_IC4F_Field is HAL.UInt4;

   --  TIM2 capture/compare mode register 2 [alternate]
   type TIM2_CCMR2_Input_Register is record
      --  Capture/Compare 3 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC3S bits
      --  are writable only when the channel is OFF (CC3E = 0 in TIMx_CCER).
      CC3S           : TIM2_CCMR2_Input_CC3S_Field := 16#0#;
      --  Input capture 3 prescaler
      IC3PSC         : TIM2_CCMR2_Input_IC3PSC_Field := 16#0#;
      --  Input capture 3 filter
      IC3F           : TIM2_CCMR2_Input_IC3F_Field := 16#0#;
      --  Capture/Compare 4 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC4S bits
      --  are writable only when the channel is OFF (CC4E = 0 in TIMx_CCER).
      CC4S           : TIM2_CCMR2_Input_CC4S_Field := 16#0#;
      --  Input capture 4 prescaler
      IC4PSC         : TIM2_CCMR2_Input_IC4PSC_Field := 16#0#;
      --  Input capture 4 filter
      IC4F           : TIM2_CCMR2_Input_IC4F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_CCMR2_Input_Register use record
      CC3S           at 0 range 0 .. 1;
      IC3PSC         at 0 range 2 .. 3;
      IC3F           at 0 range 4 .. 7;
      CC4S           at 0 range 8 .. 9;
      IC4PSC         at 0 range 10 .. 11;
      IC4F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM2_CCMR2_Output_CC3S_Field is HAL.UInt2;
   subtype TIM2_CCMR2_Output_OC3M1_Field is HAL.UInt3;
   subtype TIM2_CCMR2_Output_CC4S_Field is HAL.UInt2;
   subtype TIM2_CCMR2_Output_OC4M1_Field is HAL.UInt3;

   --  TIM2 capture/compare mode register 2 [alternate]
   type TIM2_CCMR2_Output_Register is record
      --  Capture/Compare 3 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC3S bits
      --  are writable only when the channel is OFF (CC3E = 0 in TIMx_CCER).
      CC3S           : TIM2_CCMR2_Output_CC3S_Field := 16#0#;
      --  Output compare 3 fast enable
      OC3FE          : Boolean := False;
      --  Output compare 3 preload enable
      OC3PE          : Boolean := False;
      --  Output compare 3 mode Refer to OC1M description (bits 6:4 in
      --  TIMx_CCMR1 register)
      OC3M1          : TIM2_CCMR2_Output_OC3M1_Field := 16#0#;
      --  Output compare 3 clear enable
      OC3CE          : Boolean := False;
      --  Capture/Compare 4 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Note: CC4S bits
      --  are writable only when the channel is OFF (CC4E = 0 in TIMx_CCER).
      CC4S           : TIM2_CCMR2_Output_CC4S_Field := 16#0#;
      --  Output compare 4 fast enable
      OC4FE          : Boolean := False;
      --  Output compare 4 preload enable
      OC4PE          : Boolean := False;
      --  Output compare 4 mode Refer to OC1M description (bits 6:4 in
      --  TIMx_CCMR1 register)
      OC4M1          : TIM2_CCMR2_Output_OC4M1_Field := 16#0#;
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

   for TIM2_CCMR2_Output_Register use record
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

   --  TIM2 capture/compare enable register
   type TIM2_CCER_Register is record
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
      --  used in encoder mode. CC1NP=1, CC1P=0:	this configuration is
      --  reserved, it must not be used.
      CC1P           : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Capture/Compare 1 output Polarity. CC1 channel configured as output:
      --  CC1NP must be kept cleared in this case. CC1 channel configured as
      --  input: This bit is used in conjunction with CC1P to define
      --  tim_ti1fp1/tim_ti2fp1 polarity. refer to CC1P description.
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

   for TIM2_CCER_Register use record
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

   subtype TIM2_ECR_IDIR_Field is HAL.UInt2;
   subtype TIM2_ECR_IBLK_Field is HAL.UInt2;
   subtype TIM2_ECR_IPOS_Field is HAL.UInt2;
   subtype TIM2_ECR_PW_Field is HAL.UInt8;
   subtype TIM2_ECR_PWPRSC_Field is HAL.UInt3;

   --  TIM2 timer encoder control register
   type TIM2_ECR_Register is record
      --  Index enable This bit indicates if the Index event resets the
      --  counter.
      IE             : Boolean := False;
      --  Index direction This bit indicates in which direction the Index event
      --  resets the counter. Note: The IDR[1:0] bitfield must be written when
      --  IE bit is reset (index disabled).
      IDIR           : TIM2_ECR_IDIR_Field := 16#0#;
      --  Index blanking This bit indicates if the Index event is conditioned
      --  by the tim_ti3 input
      IBLK           : TIM2_ECR_IBLK_Field := 16#0#;
      --  First index This bit indicates if the first index only is taken into
      --  account
      FIDX           : Boolean := False;
      --  Index positioning In quadrature encoder mode (SMS[3:0] = 0001, 0010,
      --  0011, 1110, 1111), this bit indicates in which AB input configuration
      --  the Index event resets the counter. In directional clock mode or
      --  clock plus direction mode (SMS[3:0] = 1010, 1011, 1100, 1101), these
      --  bits indicates on which level the Index event resets the counter. In
      --  bidirectional clock mode, this applies for both clock inputs. x0:
      --  Index resets the counter when clock is 0 x1: Index resets the counter
      --  when clock is 1 Note: IPOS[1] bit is not significant
      IPOS           : TIM2_ECR_IPOS_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Pulse width This bitfield defines the pulse duration, as following:
      --  tPW = PW[7:0] x tPWG
      PW             : TIM2_ECR_PW_Field := 16#0#;
      --  Pulse width prescaler This bitfield sets the clock prescaler for the
      --  pulse generator, as following: tPWG = (2(PWPRSC[2:0])) x ttim_ker_ck
      PWPRSC         : TIM2_ECR_PWPRSC_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_ECR_Register use record
      IE             at 0 range 0 .. 0;
      IDIR           at 0 range 1 .. 2;
      IBLK           at 0 range 3 .. 4;
      FIDX           at 0 range 5 .. 5;
      IPOS           at 0 range 6 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      PW             at 0 range 16 .. 23;
      PWPRSC         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype TIM2_TISEL_TI1SEL_Field is HAL.UInt4;
   subtype TIM2_TISEL_TI2SEL_Field is HAL.UInt4;
   subtype TIM2_TISEL_TI3SEL_Field is HAL.UInt4;
   subtype TIM2_TISEL_TI4SEL_Field is HAL.UInt4;

   --  TIM2 timer input selection register
   type TIM2_TISEL_Register is record
      --  Selects tim_ti1[0..15] input ... Refer to for product specific
      --  implementation.
      TI1SEL         : TIM2_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Selects tim_ti2[0..15] input ... Refer to for product specific
      --  implementation.
      TI2SEL         : TIM2_TISEL_TI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Selects tim_ti3[0..15] input ... Refer to for product specific
      --  implementation.
      TI3SEL         : TIM2_TISEL_TI3SEL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Selects tim_ti4[0..15] input ... Refer to for product specific
      --  implementation.
      TI4SEL         : TIM2_TISEL_TI4SEL_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_TISEL_Register use record
      TI1SEL         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TI2SEL         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TI3SEL         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TI4SEL         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TIM2_AF1_ETRSEL_Field is HAL.UInt4;

   --  TIM2 alternate function register 1
   type TIM2_AF1_Register is record
      --  unspecified
      Reserved_0_13  : HAL.UInt14 := 16#0#;
      --  etr_in source selection These bits select the etr_in input source.
      --  ... Refer to for product specific implementation.
      ETRSEL         : TIM2_AF1_ETRSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_AF1_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      ETRSEL         at 0 range 14 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TIM2_AF2_OCRSEL_Field is HAL.UInt3;

   --  TIM2 alternate function register 2
   type TIM2_AF2_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  ocref_clr source selection These bits select the ocref_clr input
      --  source. ... Refer to for product specific implementation.
      OCRSEL         : TIM2_AF2_OCRSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_AF2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      OCRSEL         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype TIM2_DCR_DBA_Field is HAL.UInt5;
   subtype TIM2_DCR_DBL_Field is HAL.UInt5;
   subtype TIM2_DCR_DBSS_Field is HAL.UInt4;

   --  TIM2 DMA control register
   type TIM2_DCR_Register is record
      --  DMA base address This 5-bits vector defines the base-address for DMA
      --  transfers (when read/write access are done through the TIMx_DMAR
      --  address). DBA is defined as an offset starting from the address of
      --  the TIMx_CR1 register. Example: ...
      DBA            : TIM2_DCR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA burst length This 5-bit vector defines the length of DMA
      --  transfers (the timer recognizes a burst transfer when a read or a
      --  write access is done to the TIMx_DMAR address), i.e. the number of
      --  transfers. Transfers can be in half-words or in bytes (see example
      --  below). ... Example: Let us consider the following transfer: DBL = 7
      --  bytes & DBA = TIM2_CR1. If DBL = 7 bytes and DBA = TIM2_CR1
      --  represents the address of the byte to be transferred, the address of
      --  the transfer should be given by the following equation: (TIMx_CR1
      --  address) + DBA + (DMA index), where DMA index = DBL In this example,
      --  7 bytes are added to (TIMx_CR1 address) + DBA, which gives us the
      --  address from/to which the data are copied. In this case, the transfer
      --  is done to 7 registers starting from the following address: (TIMx_CR1
      --  address) + DBA According to the configuration of the DMA Data Size,
      --  several cases may occur: If the DMA Data Size is configured in
      --  half-words, 16-bit data are transferred to each of the 7 registers.
      --  If the DMA Data Size is configured in bytes, the data are also
      --  transferred to 7 registers: the first register contains the first MSB
      --  byte, the second register, the first LSB byte and so on. So with the
      --  transfer Timer, one also has to specify the size of data transferred
      --  by DMA.
      DBL            : TIM2_DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  DMA burst source selection This bitfield defines the interrupt source
      --  that triggers the DMA burst transfers (the timer recognizes a burst
      --  transfer when a read or a write access is done to the TIMx_DMAR
      --  address). Others: reserved
      DBSS           : TIM2_DCR_DBSS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_DCR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DBSS           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM2_HWCFGR2_PSC_LINEAR_Field is HAL.UInt4;
   subtype TIM2_HWCFGR2_PSC_WIDTH16_Field is HAL.UInt4;
   subtype TIM2_HWCFGR2_CNT_WIDTH_Field is HAL.UInt8;
   subtype TIM2_HWCFGR2_OPTIONREG_OUT_Field is HAL.UInt8;

   --  TIM2 hardware configuration 2 register
   type TIM2_HWCFGR2_Register is record
      --  Read-only. Prescaler linear Others: Reserved
      PSC_LINEAR     : TIM2_HWCFGR2_PSC_LINEAR_Field;
      --  Read-only. Prescaler width Others: Reserved
      PSC_WIDTH16    : TIM2_HWCFGR2_PSC_WIDTH16_Field;
      --  Read-only. Counter width Others: Reserved
      CNT_WIDTH      : TIM2_HWCFGR2_CNT_WIDTH_Field;
      --  Read-only. Option register number (0 to 16).
      OPTIONREG_OUT  : TIM2_HWCFGR2_OPTIONREG_OUT_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_HWCFGR2_Register use record
      PSC_LINEAR     at 0 range 0 .. 3;
      PSC_WIDTH16    at 0 range 4 .. 7;
      CNT_WIDTH      at 0 range 8 .. 15;
      OPTIONREG_OUT  at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TIM2_HWCFGR1_NB_OF_CC_Field is HAL.UInt4;
   subtype TIM2_HWCFGR1_NB_OF_DT_Field is HAL.UInt4;
   subtype TIM2_HWCFGR1_NB_OF_SM_Field is HAL.UInt4;
   subtype TIM2_HWCFGR1_RCR_IMPL_Field is HAL.UInt4;
   subtype TIM2_HWCFGR1_ETR_IMPL_Field is HAL.UInt4;
   subtype TIM2_HWCFGR1_BK_IMPL_Field is HAL.UInt4;
   subtype TIM2_HWCFGR1_DMA_IMPL_Field is HAL.UInt4;
   subtype TIM2_HWCFGR1_CNT_DIR_Field is HAL.UInt4;

   --  TIM2 hardware configuration 1 register
   type TIM2_HWCFGR1_Register is record
      --  Read-only. Number of capture / compare channel Others: Reserved
      NB_OF_CC : TIM2_HWCFGR1_NB_OF_CC_Field;
      --  Read-only. Number of complementary outputs and dead-time generators
      --  0x0 0x1 0x2 0x3 0x4 Others: Reserved
      NB_OF_DT : TIM2_HWCFGR1_NB_OF_DT_Field;
      --  Read-only. Number of synchronization module Others: Reserved
      NB_OF_SM : TIM2_HWCFGR1_NB_OF_SM_Field;
      --  Read-only. Repetition counter implementation Others: Reserved
      RCR_IMPL : TIM2_HWCFGR1_RCR_IMPL_Field;
      --  Read-only. External trigger implementation Others: Reserved
      ETR_IMPL : TIM2_HWCFGR1_ETR_IMPL_Field;
      --  Read-only. Break circuit implementation Others: Reserved
      BK_IMPL  : TIM2_HWCFGR1_BK_IMPL_Field;
      --  Read-only. DMA features implementation Others: Reserved
      DMA_IMPL : TIM2_HWCFGR1_DMA_IMPL_Field;
      --  Read-only. Counter direction Others: Reserved
      CNT_DIR  : TIM2_HWCFGR1_CNT_DIR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_HWCFGR1_Register use record
      NB_OF_CC at 0 range 0 .. 3;
      NB_OF_DT at 0 range 4 .. 7;
      NB_OF_SM at 0 range 8 .. 11;
      RCR_IMPL at 0 range 12 .. 15;
      ETR_IMPL at 0 range 16 .. 19;
      BK_IMPL  at 0 range 20 .. 23;
      DMA_IMPL at 0 range 24 .. 27;
      CNT_DIR  at 0 range 28 .. 31;
   end record;

   subtype TIM2_VERR_MINREV_Field is HAL.UInt4;
   subtype TIM2_VERR_MAJREV_Field is HAL.UInt4;

   --  TIM2 IP version register
   type TIM2_VERR_Register is record
      --  Read-only. Minor revision number. 0x2
      MINREV        : TIM2_VERR_MINREV_Field;
      --  Read-only. Major revision number. 0x4
      MAJREV        : TIM2_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
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
      --  the timer clock (tim_ker_ck) frequency and the dead-time and sampling
      --  clock (tDTS)used by the dead-time generators and the digital filters
      --  (tim_tix),
      CKD            : TIM16_CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : Boolean := False;
      --  Dithering enable Note: The DITHEN bit can only be modified when CEN
      --  bit is reset.
      DITHEN         : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
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
      DITHEN         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
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
      --  Output Idle state 1 (tim_oc1 output) Note: This bit can not be
      --  modified as long as LOCK level 1, 2 or 3 has been programmed (LOCK
      --  bits in TIMx_BKR register).
      OIS1           : Boolean := False;
      --  Output Idle state 1 (tim_oc1n output) Note: This bit can not be
      --  modified as long as LOCK level 1, 2 or 3 has been programmed (LOCK
      --  bits in TIMx_BKR register).
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
      Reserved_10_12 : HAL.UInt3 := 16#0#;
      --  COM DMA request enable
      COMDE          : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
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
      Reserved_10_12 at 0 range 10 .. 12;
      COMDE          at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
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
      --  COM interrupt flag This flag is set by hardware on a COM event (once
      --  the capture/compare control bits CCxE, CCxNE, OCxM  have been
      --  updated). It is cleared by software.
      COMIF          : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Break interrupt flag This flag is set by hardware as soon as the
      --  tim_brk input goes active. It can be cleared by software if the break
      --  input is not active.
      BIF            : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Capture/Compare 1 overcapture flag This flag is set by hardware only
      --  when the corresponding channel is configured in input capture mode.
      --  It is cleared by software by writing it to 0 .
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

   subtype TIM16_CCMR1_Intput_CC1S_Field is HAL.UInt2;
   subtype TIM16_CCMR1_Intput_IC1PSC_Field is HAL.UInt2;
   subtype TIM16_CCMR1_Intput_IC1F_Field is HAL.UInt4;

   --  TIM16 capture/compare mode register 1 [alternate]
   type TIM16_CCMR1_Intput_Register is record
      --  Capture/Compare 1 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Others:
      --  Reserved Note: CC1S bits are writable only when the channel is OFF
      --  (CC1E = 0 in TIMx_CCER).
      CC1S          : TIM16_CCMR1_Intput_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler This bit-field defines the ratio of the
      --  prescaler acting on CC1 input (tim_ic1). The prescaler is reset as
      --  soon as CC1E= 0 (TIMx_CCER register).
      IC1PSC        : TIM16_CCMR1_Intput_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter This bit-field defines the frequency used to
      --  sample tim_ti1 input and the length of the digital filter applied to
      --  tim_ti1. The digital filter is made of an event counter in which N
      --  consecutive events are needed to validate a transition on the output:
      IC1F          : TIM16_CCMR1_Intput_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_CCMR1_Intput_Register use record
      CC1S          at 0 range 0 .. 1;
      IC1PSC        at 0 range 2 .. 3;
      IC1F          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIM16_CCMR1_Output_CC1S_Field is HAL.UInt2;
   subtype TIM16_CCMR1_Output_OC1M1_Field is HAL.UInt3;

   --  TIM16 capture/compare mode register 1 [alternate]
   type TIM16_CCMR1_Output_Register is record
      --  Capture/Compare 1 selection This bit-field defines the direction of
      --  the channel (input/output) as well as the used input. Others:
      --  Reserved Note: CC1S bits are writable only when the channel is OFF
      --  (CC1E = 0 in TIMx_CCER).
      CC1S           : TIM16_CCMR1_Output_CC1S_Field := 16#0#;
      --  Output Compare 1 fast enable This bit decreases the latency between a
      --  trigger event and a transition on the timer output. It must be used
      --  in one-pulse mode (OPM bit set in TIMx_CR1 register), to have the
      --  output pulse starting as soon as possible after the starting trigger.
      OC1FE          : Boolean := False;
      --  Output Compare 1 preload enable Note: These bits can not be modified
      --  as long as LOCK level 3 has been programmed (LOCK bits in TIMx_BDTR
      --  register) and CC1S= 00 (the channel is configured in output). The PWM
      --  mode can be used without validating the preload register only in one
      --  pulse mode (OPM bit set in TIMx_CR1 register). Else the behavior is
      --  not guaranteed.
      OC1PE          : Boolean := False;
      --  Output Compare 1 mode These bits define the behavior of the output
      --  reference signal tim_oc1ref from which tim_oc1 and tim_oc1n are
      --  derived. tim_oc1ref is active high whereas tim_oc1 and tim_oc1n
      --  active level depends on CC1P and CC1NP bits. Others: Reserved Note:
      --  These bits can not be modified as long as LOCK level 3 has been
      --  programmed (LOCK bits in TIMx_BDTR register) and CC1S= 00 (the
      --  channel is configured in output). In PWM mode 1 or 2, the tim_oc1ref
      --  level changes only when the result of the comparison changes or when
      --  the output compare mode switches from frozen  mode to PWM
      --   mode.
      OC1M1          : TIM16_CCMR1_Output_OC1M1_Field := 16#0#;
      --  Output Compare 1 clear enable
      OC1CE          : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Output Compare 1 mode These bits define the behavior of the output
      --  reference signal tim_oc1ref from which tim_oc1 and tim_oc1n are
      --  derived. tim_oc1ref is active high whereas tim_oc1 and tim_oc1n
      --  active level depends on CC1P and CC1NP bits. Others: Reserved Note:
      --  These bits can not be modified as long as LOCK level 3 has been
      --  programmed (LOCK bits in TIMx_BDTR register) and CC1S= 00 (the
      --  channel is configured in output). In PWM mode 1 or 2, the tim_oc1ref
      --  level changes only when the result of the comparison changes or when
      --  the output compare mode switches from frozen  mode to PWM
      --   mode.
      OC1M2          : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_CCMR1_Output_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M1          at 0 range 4 .. 6;
      OC1CE          at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
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
      --  used in conjunction with CC1P to define the polarity of tim_ti1fp1.
      --  Refer to the description of CC1P. Note: This bit is not writable as
      --  soon as LOCK level 2 or 3 has been programmed (LOCK bits in TIMx_BDTR
      --  register) and CC1S= 00  (the channel is configured in
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
      --  Counter value Non-dithering mode (DITHEN = 0) The register holds the
      --  counter value. Dithering mode (DITHEN = 1) The register only holds
      --  the non-dithered part in CNT[15:0]. The fractional part is not
      --  available.
      CNT            : TIM16_CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  Read-only. UIF Copy This bit is a read-only copy of the UIF bit of
      --  the TIMx_ISR register. If the UIFREMAP bit in TIMx_CR1 is reset, bit
      --  31 is reserved.
      UIFCPY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPY         at 0 range 31 .. 31;
   end record;

   subtype TIM16_ARR_ARR_Field is HAL.UInt20;

   --  TIM16 auto-reload register
   type TIM16_ARR_Register is record
      --  Auto-reload value ARR is the value to be loaded in the actual
      --  auto-reload register. Refer to the for more details about ARR update
      --  and behavior. The counter is blocked while the auto-reload value is
      --  null. Non-dithering mode (DITHEN = 0) The register holds the
      --  auto-reload value in ARR[15:0]. The ARR[19:16] bits are reset.
      --  Dithering mode (DITHEN = 1) The register holds the integer part in
      --  ARR[19:4]. The ARR[3:0] bitfield contains the dithered part.
      ARR            : TIM16_ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_ARR_Register use record
      ARR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM16_RCR_REP_Field is HAL.UInt8;

   --  TIM16 repetition counter register
   type TIM16_RCR_Register is record
      --  Repetition counter reload value This bitfield defines the update rate
      --  of the compare registers (i.e. periodic transfers from preload to
      --  active registers) when preload registers are enable. It also defines
      --  the update interrupt generation rate, if this interrupt is enable.
      --  When the repetition down-counter reaches zero, an update event is
      --  generated and it restarts counting from REP value. As the repetition
      --  counter is reloaded with REP value only at the repetition update
      --  event UEV, any write to the TIMx_RCR register is not taken in account
      --  until the next repetition update event. It means in PWM mode (REP+1)
      --  corresponds to the number of PWM periods in edge-aligned mode: the
      --  number of PWM periods in edge-aligned mode the number of half PWM
      --  period in center-aligned mode
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

   subtype TIM16_CCR1_CCR1_Field is HAL.UInt20;

   --  TIM16 capture/compare register 1
   type TIM16_CCR1_Register is record
      --  Capture/Compare 1 value If channel CC1 is configured as output: CCR1
      --  is the value to be loaded in the actual capture/compare 1 register
      --  (preload value). It is loaded permanently if the preload feature is
      --  not selected in the TIMx_CCMR1 register (bit OC1PE). Else the preload
      --  value is copied in the active capture/compare 1 register when an
      --  update event occurs. The active capture/compare register contains the
      --  value to be compared to the counter TIMx_CNT and signaled on tim_oc1
      --  output. Non-dithering mode (DITHEN = 0) The register holds the
      --  compare value in CCR1[15:0]. The CCR1[19:16] bits are reset.
      --  Dithering mode (DITHEN = 1) The register holds the integer part in
      --  CCR1[19:4]. The CCR1[3:0] bitfield contains the dithered part. If
      --  channel CC1 is configured as input: CCR1 is the counter value
      --  transferred by the last input capture 1 event (tim_ic1).
      --  Non-dithering mode (DITHEN = 0) The register holds the capture value
      --  in CCR1[15:0]. The CCR1[19:16] bits are reset. Dithering mode (DITHEN
      --  = 1) The register holds the capture in CCR1[19:4]. The CCR1[3:0] bits
      --  are reset.
      CCR1           : TIM16_CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_CCR1_Register use record
      CCR1           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM16_BDTR_DTG_Field is HAL.UInt8;
   subtype TIM16_BDTR_LOCK_Field is HAL.UInt2;
   subtype TIM16_BDTR_BKF_Field is HAL.UInt4;

   --  TIM16 break and dead-time register
   type TIM16_BDTR_Register is record
      --  Dead-time generator setup This bit-field defines the duration of the
      --  dead-time inserted between the complementary outputs. DT correspond
      --  to this duration. DTG[7:5]=0xx = DT=DTG[7:0]x tdtg with tdtg=tDTS
      --  DTG[7:5]=10x = DT=(64+DTG[5:0])xtdtg with Tdtg=2xtDTS DTG[7:5]=110 =
      --  DT=(32+DTG[4:0])xtdtg with Tdtg=8xtDTS DTG[7:5]=111 =
      --  DT=(32+DTG[4:0])xtdtg with Tdtg=16xtDTS Example if TDTS=125ns (8MHz),
      --  dead-time possible values are: 0 to 15875 ns by 125 ns steps, 16 us
      --  to 31750 ns by 250 ns steps, 32 us to 63 us by 1 us steps, 64 us to
      --  126 us by 2 us steps Note: This bit-field can not be modified as long
      --  as LOCK level 1, 2 or 3 has been programmed (LOCK bits in TIMx_BDTR
      --  register).
      DTG            : TIM16_BDTR_DTG_Field := 16#0#;
      --  Lock configuration These bits offer a write protection against
      --  software errors. Note: The LOCK bits can be written only once after
      --  the reset. Once the TIMx_BDTR register has been written, their
      --  content is frozen until the next reset.
      LOCK           : TIM16_BDTR_LOCK_Field := 16#0#;
      --  Off-state selection for Idle mode This bit is used when MOE=0 on
      --  channels configured as outputs. See tim_oc1/tim_oc1n enable
      --  description for more details (capture/compare enable register
      --  (TIMx_CCER)(x = 16 to 17) on page  1457). Note: This bit can not be
      --  modified as soon as the LOCK level 2 has been programmed (LOCK bits
      --  in TIMx_BDTR register).
      OSSI           : Boolean := False;
      --  Off-state selection for Run mode This bit is used when MOE=1 on
      --  channels that have a complementary output which are configured as
      --  outputs. OSSR is not implemented if no complementary output is
      --  implemented in the timer. See tim_oc1/tim_oc1n enable description for
      --  more details (capture/compare enable register (TIMx_CCER)(x = 16 to
      --  17) on page  1457). Note: This bit can not be modified as soon as
      --  the LOCK level 2 has been programmed (LOCK bits in TIMx_BDTR
      --  register).
      OSSR           : Boolean := False;
      --  Break enable 1; Break inputs (tim_brk and tim_sys_brk event) enabled
      --  Note: This bit cannot be modified when LOCK level 1 has been
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
      --  soon as the tim_brk input is active. It is set by software or
      --  automatically depending on the AOE bit. It is acting only on the
      --  channels which are configured in output. See tim_oc1/tim_oc1n enable
      --  description for more details (capture/compare enable register
      --  (TIMx_CCER)(x = 16 to 17) on page  1457).
      MOE            : Boolean := False;
      --  Break filter This bit-field defines the frequency used to sample
      --  tim_brk input and the length of the digital filter applied to
      --  tim_brk. The digital filter is made of an event counter in which N
      --  events are needed to validate a transition on the output: This bit
      --  cannot be modified when LOCK level 1 has been programmed (LOCK bits
      --  in TIMx_BDTR register).
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

   subtype TIM16_DTR2_DTGF_Field is HAL.UInt8;

   --  TIM16 timer deadtime register 2
   type TIM16_DTR2_Register is record
      --  Dead-time falling edge generator setup This bit-field defines the
      --  duration of the dead-time inserted between the complementary outputs,
      --  on the falling edge. DTGF[7:5]=0xx = DTF=DTGF[7:0]x tdtg with
      --  tdtg=tDTS. DTGF[7:5]=10x = DTF=(64+DTGF[5:0])xtdtg with Tdtg=2xtDTS.
      --  DTGF[7:5]=110 = DTF=(32+DTGF[4:0])xtdtg with Tdtg=8xtDTS.
      --  DTGF[7:5]=111 = DTF=(32+DTGF[4:0])xtdtg with Tdtg=16xtDTS. Example if
      --  TDTS=125ns (8MHz), dead-time possible values are: 0 to 15875 ns by
      --  125 ns steps, 16 us to 31750 ns by 250 ns steps, 32 us to 63us by 1
      --  us steps, 64 us to 126 us by 2 us steps Note: This bit-field can not
      --  be modified as long as LOCK level 1, 2 or 3 has been programmed (LOCK
      --  bits in TIMx_BDTR register).
      DTGF           : TIM16_DTR2_DTGF_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Deadtime asymmetric enable Note: This bit can not be modified as long
      --  as LOCK level 1, 2 or 3 has been programmed (LOCK bits in TIMx_BDTR
      --  register).
      DTAE           : Boolean := False;
      --  Deadtime preload enable Note: This bit can not be modified as long as
      --  LOCK level 1, 2 or 3 has been programmed (LOCK bits in TIMx_BDTR
      --  register).
      DTPE           : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_DTR2_Register use record
      DTGF           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DTAE           at 0 range 16 .. 16;
      DTPE           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TIM16_TISEL_TI1SEL_Field is HAL.UInt4;

   --  TIM16 input selection register
   type TIM16_TISEL_Register is record
      --  selects tim_ti1_in[0..15] input ... Refer to for interconnects list.
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

   --  TIM16 alternate function register 1
   type TIM16_AF1_Register is record
      --  TIMx_BKIN input enable This bit enables the TIMx_BKIN alternate
      --  function input for the timer s tim_brk input. TIMx_BKIN input is ORed
      --  with the other tim_brk sources. Note: This bit can not be modified as
      --  long as LOCK level 1 has been programmed (LOCK bits in TIMx_BDTR
      --  register).
      BKINE          : Boolean := True;
      --  tim_brk_cmp1 enable This bit enables the tim_brk_cmp1 for the timer s
      --  tim_brk input. tim_brk_cmp1 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP1E        : Boolean := False;
      --  tim_brk_cmp2 enable This bit enables the tim_brk_cmp2 for the timer s
      --  tim_brk input. tim_brk_cmp2 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP2E        : Boolean := False;
      --  tim_brk_cmp3 enable This bit enables the tim_brk_cmp3 for the timer s
      --  tim_brk input. tim_brk_cmp3 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP3E        : Boolean := False;
      --  tim_brk_cmp4 enable This bit enables the tim_brk_cmp4 for the timer s
      --  tim_brk input. tim_brk_cmp4 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP4E        : Boolean := False;
      --  tim_brk_cmp5 enable This bit enables the tim_brk_cmp5 for the timer s
      --  tim_brk input. tim_brk_cmp5 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP5E        : Boolean := False;
      --  tim_brk_cmp6 enable This bit enables the tim_brk_cmp6 for the timer s
      --  tim_brk input. tim_brk_cmp6 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP6E        : Boolean := False;
      --  tim_brk_cmp7 enable This bit enables the tim_brk_cmp7 for the timer s
      --  tim_brk input. tim_brk_cmp7 output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP7E        : Boolean := False;
      --  tim_brk_cmp8 enable This bit enables the tim_brk_cmp8 for the timer s
      --  tim_brk input. mdf_brkx output is ORed with the other tim_brk
      --  sources. Note: This bit can not be modified as long as LOCK level 1
      --  has been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP8E        : Boolean := False;
      --  TIMx_BKIN input polarity This bit selects the TIMx_BKIN alternate
      --  function input sensitivity. It must be programmed together with the
      --  BKP polarity bit. Note: This bit can not be modified as long as LOCK
      --  level 1 has been programmed (LOCK bits in TIMx_BDTR register).
      BKINP          : Boolean := False;
      --  tim_brk_cmp1 input polarity This bit selects the tim_brk_cmp1 input
      --  sensitivity. It must be programmed together with the BKP polarity
      --  bit. Note: This bit can not be modified as long as LOCK level 1 has
      --  been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP1P        : Boolean := False;
      --  tim_brk_cmp2 input polarity This bit selects the tim_brk_cmp2 input
      --  sensitivity. It must be programmed together with the BKP polarity
      --  bit. Note: This bit can not be modified as long as LOCK level 1 has
      --  been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP2P        : Boolean := False;
      --  tim_brk_cmp3 input polarity This bit selects the tim_brk_cmp3 input
      --  sensitivity. It must be programmed together with the BKP polarity
      --  bit. Note: This bit can not be modified as long as LOCK level 1 has
      --  been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP3P        : Boolean := False;
      --  tim_brk_cmp4 input polarity This bit selects the tim_brk_cmp4 input
      --  sensitivity. It must be programmed together with the BKP polarity
      --  bit. Note: This bit can not be modified as long as LOCK level 1 has
      --  been programmed (LOCK bits in TIMx_BDTR register).
      BKCMP4P        : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_AF1_Register use record
      BKINE          at 0 range 0 .. 0;
      BKCMP1E        at 0 range 1 .. 1;
      BKCMP2E        at 0 range 2 .. 2;
      BKCMP3E        at 0 range 3 .. 3;
      BKCMP4E        at 0 range 4 .. 4;
      BKCMP5E        at 0 range 5 .. 5;
      BKCMP6E        at 0 range 6 .. 6;
      BKCMP7E        at 0 range 7 .. 7;
      BKCMP8E        at 0 range 8 .. 8;
      BKINP          at 0 range 9 .. 9;
      BKCMP1P        at 0 range 10 .. 10;
      BKCMP2P        at 0 range 11 .. 11;
      BKCMP3P        at 0 range 12 .. 12;
      BKCMP4P        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype TIM16_AF2_OCRSEL_Field is HAL.UInt3;

   --  TIM16 alternate function register 2
   type TIM16_AF2_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  tim_ocref_clr source selection These bits select the tim_ocref_clr
      --  input source. Refer to for product specific implementation. Note:
      --  These bits can not be modified as long as LOCK level 1 has been
      --  programmed (LOCK bits in TIMx_BDTR register).
      OCRSEL         : TIM16_AF2_OCRSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_AF2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      OCRSEL         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype TIM16_DCR_DBA_Field is HAL.UInt5;
   subtype TIM16_DCR_DBL_Field is HAL.UInt5;
   subtype TIM16_DCR_DBSS_Field is HAL.UInt4;

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
      --  DMA burst source selection This bitfield defines the interrupt source
      --  that triggers the DMA burst transfers (the timer recognizes a burst
      --  transfer when a read or a write access is done to the TIMx_DMAR
      --  address). Other: reserved
      DBSS           : TIM16_DCR_DBSS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_DCR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DBSS           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TIM16_HWCFGR2_PSC_LINEAR_Field is HAL.UInt4;
   subtype TIM16_HWCFGR2_PSC_WIDTH16_Field is HAL.UInt4;
   subtype TIM16_HWCFGR2_CNT_WIDTH_Field is HAL.UInt8;
   subtype TIM16_HWCFGR2_OPTIONREG_OUT_Field is HAL.UInt8;

   --  TIM16 hardware configuration 2 register
   type TIM16_HWCFGR2_Register is record
      --  Read-only. Prescaler linear Others: Reserved
      PSC_LINEAR     : TIM16_HWCFGR2_PSC_LINEAR_Field;
      --  Read-only. Prescaler width Others: Reserved
      PSC_WIDTH16    : TIM16_HWCFGR2_PSC_WIDTH16_Field;
      --  Read-only. Counter width Others: Reserved
      CNT_WIDTH      : TIM16_HWCFGR2_CNT_WIDTH_Field;
      --  Read-only. Option register number (0 to 16).
      OPTIONREG_OUT  : TIM16_HWCFGR2_OPTIONREG_OUT_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_HWCFGR2_Register use record
      PSC_LINEAR     at 0 range 0 .. 3;
      PSC_WIDTH16    at 0 range 4 .. 7;
      CNT_WIDTH      at 0 range 8 .. 15;
      OPTIONREG_OUT  at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TIM16_HWCFGR1_NB_OF_CC_Field is HAL.UInt4;
   subtype TIM16_HWCFGR1_NB_OF_DT_Field is HAL.UInt4;
   subtype TIM16_HWCFGR1_NB_OF_SM_Field is HAL.UInt4;
   subtype TIM16_HWCFGR1_RCR_IMPL_Field is HAL.UInt4;
   subtype TIM16_HWCFGR1_ETR_IMPL_Field is HAL.UInt4;
   subtype TIM16_HWCFGR1_BK_IMPL_Field is HAL.UInt4;
   subtype TIM16_HWCFGR1_DMA_IMPL_Field is HAL.UInt4;
   subtype TIM16_HWCFGR1_CNT_DIR_Field is HAL.UInt4;

   --  TIM16 hardware configuration 1 register
   type TIM16_HWCFGR1_Register is record
      --  Read-only. Number of capture / compare channel Others: Reserved
      NB_OF_CC : TIM16_HWCFGR1_NB_OF_CC_Field;
      --  Read-only. Number of complementary outputs and dead-time generators
      --  0x0 0x1 0x2 0x3 0x4 Others: Reserved
      NB_OF_DT : TIM16_HWCFGR1_NB_OF_DT_Field;
      --  Read-only. Number of synchronization module Others: Reserved
      NB_OF_SM : TIM16_HWCFGR1_NB_OF_SM_Field;
      --  Read-only. Repetition counter implementation Others: Reserved
      RCR_IMPL : TIM16_HWCFGR1_RCR_IMPL_Field;
      --  Read-only. External trigger implementation Others: Reserved
      ETR_IMPL : TIM16_HWCFGR1_ETR_IMPL_Field;
      --  Read-only. Break circuit implementation Others: Reserved
      BK_IMPL  : TIM16_HWCFGR1_BK_IMPL_Field;
      --  Read-only. DMA features implementation Others: Reserved
      DMA_IMPL : TIM16_HWCFGR1_DMA_IMPL_Field;
      --  Read-only. Counter direction Others: Reserved
      CNT_DIR  : TIM16_HWCFGR1_CNT_DIR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_HWCFGR1_Register use record
      NB_OF_CC at 0 range 0 .. 3;
      NB_OF_DT at 0 range 4 .. 7;
      NB_OF_SM at 0 range 8 .. 11;
      RCR_IMPL at 0 range 12 .. 15;
      ETR_IMPL at 0 range 16 .. 19;
      BK_IMPL  at 0 range 20 .. 23;
      DMA_IMPL at 0 range 24 .. 27;
      CNT_DIR  at 0 range 28 .. 31;
   end record;

   subtype TIM16_VERR_MINREV_Field is HAL.UInt4;
   subtype TIM16_VERR_MAJREV_Field is HAL.UInt4;

   --  TIM16 IP version register
   type TIM16_VERR_Register is record
      --  Read-only. Minor revision number. 0x2
      MINREV        : TIM16_VERR_MINREV_Field;
      --  Read-only. Major revision number. 0x4
      MAJREV        : TIM16_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TIM1_Disc is
     (Input,
      Output);

   --  TIM1 address block description
   type TIM1_Peripheral
     (Discriminent : TIM1_Disc := Input)
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
      TIM1_ARR          : aliased TIM1_ARR_Register;
      --  TIM1 repetition counter register
      TIM1_RCR          : aliased HAL.UInt16;
      --  TIM1 capture/compare register 1
      TIM1_CCR1         : aliased TIM1_CCR1_Register;
      --  TIM1 capture/compare register 2
      TIM1_CCR2         : aliased TIM1_CCR2_Register;
      --  TIM1 capture/compare register 3
      TIM1_CCR3         : aliased TIM1_CCR3_Register;
      --  TIM1 capture/compare register 4
      TIM1_CCR4         : aliased TIM1_CCR4_Register;
      --  TIM1 break and dead-time register
      TIM1_BDTR         : aliased TIM1_BDTR_Register;
      --  TIM1 capture/compare register 5
      TIM1_CCR5         : aliased TIM1_CCR5_Register;
      --  TIM1 capture/compare register 6
      TIM1_CCR6         : aliased TIM1_CCR6_Register;
      --  TIM1 capture/compare mode register 3
      TIM1_CCMR3        : aliased TIM1_CCMR3_Register;
      --  TIM1 timer deadtime register 2
      TIM1_DTR2         : aliased TIM1_DTR2_Register;
      --  TIM1 timer encoder control register
      TIM1_ECR          : aliased TIM1_ECR_Register;
      --  TIM1 timer input selection register
      TIM1_TISEL        : aliased TIM1_TISEL_Register;
      --  TIM1 alternate function option register 1
      TIM1_AF1          : aliased TIM1_AF1_Register;
      --  TIM1 alternate function register 2
      TIM1_AF2          : aliased TIM1_AF2_Register;
      --  TIM1 DMA control register
      TIM1_DCR          : aliased TIM1_DCR_Register;
      --  TIM1 DMA address for full transfer
      TIM1_DMAR         : aliased HAL.UInt32;
      --  TIM1 hardware configuration 2 register
      TIM1_HWCFGR2      : aliased TIM1_HWCFGR2_Register;
      --  TIM1 hardware configuration 1 register
      TIM1_HWCFGR1      : aliased TIM1_HWCFGR1_Register;
      --  TIM1 IP version register
      TIM1_VERR         : aliased TIM1_VERR_Register;
      --  TIM1 IP identification register
      TIM1_IPIDR        : aliased HAL.UInt32;
      --  TIM1 size ID register
      TIM1_SIDR         : aliased HAL.UInt32;
      case Discriminent is
         when Input =>
            --  TIM1 capture/compare mode register 1 [alternate]
            TIM1_CCMR1_Input : aliased TIM1_CCMR1_Input_Register;
            --  TIM1 capture/compare mode register 2 [alternate]
            TIM1_CCMR2_Input : aliased TIM1_CCMR2_Input_Register;
         when Output =>
            --  TIM1 capture/compare mode register 1 [alternate]
            TIM1_CCMR1_Output : aliased TIM1_CCMR1_Output_Register;
            --  TIM1 capture/compare mode register 2 [alternate]
            TIM1_CCMR2_Output : aliased TIM1_CCMR2_Output_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM1_Peripheral use record
      TIM1_CR1          at 16#0# range 0 .. 15;
      TIM1_CR2          at 16#4# range 0 .. 31;
      TIM1_SMCR         at 16#8# range 0 .. 31;
      TIM1_DIER         at 16#C# range 0 .. 31;
      TIM1_SR           at 16#10# range 0 .. 31;
      TIM1_EGR          at 16#14# range 0 .. 15;
      TIM1_CCER         at 16#20# range 0 .. 31;
      TIM1_CNT          at 16#24# range 0 .. 31;
      TIM1_PSC          at 16#28# range 0 .. 15;
      TIM1_ARR          at 16#2C# range 0 .. 31;
      TIM1_RCR          at 16#30# range 0 .. 15;
      TIM1_CCR1         at 16#34# range 0 .. 31;
      TIM1_CCR2         at 16#38# range 0 .. 31;
      TIM1_CCR3         at 16#3C# range 0 .. 31;
      TIM1_CCR4         at 16#40# range 0 .. 31;
      TIM1_BDTR         at 16#44# range 0 .. 31;
      TIM1_CCR5         at 16#48# range 0 .. 31;
      TIM1_CCR6         at 16#4C# range 0 .. 31;
      TIM1_CCMR3        at 16#50# range 0 .. 31;
      TIM1_DTR2         at 16#54# range 0 .. 31;
      TIM1_ECR          at 16#58# range 0 .. 31;
      TIM1_TISEL        at 16#5C# range 0 .. 31;
      TIM1_AF1          at 16#60# range 0 .. 31;
      TIM1_AF2          at 16#64# range 0 .. 31;
      TIM1_DCR          at 16#3DC# range 0 .. 31;
      TIM1_DMAR         at 16#3E0# range 0 .. 31;
      TIM1_HWCFGR2      at 16#3EC# range 0 .. 31;
      TIM1_HWCFGR1      at 16#3F0# range 0 .. 31;
      TIM1_VERR         at 16#3F4# range 0 .. 31;
      TIM1_IPIDR        at 16#3F8# range 0 .. 31;
      TIM1_SIDR         at 16#3FC# range 0 .. 31;
      TIM1_CCMR1_Input  at 16#18# range 0 .. 31;
      TIM1_CCMR2_Input  at 16#1C# range 0 .. 31;
      TIM1_CCMR1_Output at 16#18# range 0 .. 31;
      TIM1_CCMR2_Output at 16#1C# range 0 .. 31;
   end record;

   --  TIM1 address block description
   TIM1_Periph : aliased TIM1_Peripheral
     with Import, Address => TIM1_Base;

   --  TIM1 address block description
   TIM8_Periph : aliased TIM1_Peripheral
     with Import, Address => TIM8_Base;

   --  TIM1 address block description
   TIM1_S_Periph : aliased TIM1_Peripheral
     with Import, Address => TIM1_S_Base;

   --  TIM1 address block description
   TIM20_Periph : aliased TIM1_Peripheral
     with Import, Address => TIM20_Base;

   --  TIM1 address block description
   TIM20_S_Periph : aliased TIM1_Peripheral
     with Import, Address => TIM20_S_Base;

   --  TIM1 address block description
   TIM8_S_Periph : aliased TIM1_Peripheral
     with Import, Address => TIM8_S_Base;

   type TIM10_Disc is
     (Input,
      Output);

   --  General-purpose timers
   type TIM10_Peripheral
     (Discriminent : TIM10_Disc := Input)
   is record
      TIM10_CR1          : aliased TIM10_CR1_Register;
      TIM10_DIER         : aliased TIM10_DIER_Register;
      TIM10_SR           : aliased TIM10_SR_Register;
      TIM10_EGR          : aliased TIM10_EGR_Register;
      TIM10_CCER         : aliased TIM10_CCER_Register;
      TIM10_CNT          : aliased TIM10_CNT_Register;
      TIM10_PSC          : aliased HAL.UInt16;
      TIM10_ARR          : aliased TIM10_ARR_Register;
      TIM10_CCR1         : aliased TIM10_CCR1_Register;
      TIM10_TISEL        : aliased TIM10_TISEL_Register;
      --  TIM10 hardware configuration 2 register
      TIM10_HWCFGR2      : aliased TIM10_HWCFGR2_Register;
      --  TIM10 hardware configuration 1 register
      TIM10_HWCFGR1      : aliased TIM10_HWCFGR1_Register;
      TIM10_VERR         : aliased TIM10_VERR_Register;
      TIM10_IPIDR        : aliased HAL.UInt32;
      TIM10_SIDR         : aliased HAL.UInt32;
      case Discriminent is
         when Input =>
            --  TIM10 capture/compare mode register 1 [alternate]
            TIM10_CCMR1_INPUT : aliased TIM10_CCMR1_INPUT_Register;
         when Output =>
            --  TIM10 capture/compare mode register 1 [alternate]
            TIM10_CCMR1_OUTPUT : aliased TIM10_CCMR1_OUTPUT_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM10_Peripheral use record
      TIM10_CR1          at 16#0# range 0 .. 15;
      TIM10_DIER         at 16#C# range 0 .. 15;
      TIM10_SR           at 16#10# range 0 .. 15;
      TIM10_EGR          at 16#14# range 0 .. 15;
      TIM10_CCER         at 16#20# range 0 .. 15;
      TIM10_CNT          at 16#24# range 0 .. 31;
      TIM10_PSC          at 16#28# range 0 .. 15;
      TIM10_ARR          at 16#2C# range 0 .. 31;
      TIM10_CCR1         at 16#34# range 0 .. 31;
      TIM10_TISEL        at 16#5C# range 0 .. 15;
      TIM10_HWCFGR2      at 16#3EC# range 0 .. 31;
      TIM10_HWCFGR1      at 16#3F0# range 0 .. 31;
      TIM10_VERR         at 16#3F4# range 0 .. 31;
      TIM10_IPIDR        at 16#3F8# range 0 .. 31;
      TIM10_SIDR         at 16#3FC# range 0 .. 31;
      TIM10_CCMR1_INPUT  at 16#18# range 0 .. 31;
      TIM10_CCMR1_OUTPUT at 16#18# range 0 .. 31;
   end record;

   --  General-purpose timers
   TIM10_Periph : aliased TIM10_Peripheral
     with Import, Address => TIM10_Base;

   --  General-purpose timers
   TIM10_S_Periph : aliased TIM10_Peripheral
     with Import, Address => TIM10_S_Base;

   --  General-purpose timers
   TIM11_S_Periph : aliased TIM10_Peripheral
     with Import, Address => TIM11_S_Base;

   --  General-purpose timers
   TIM13_S_Periph : aliased TIM10_Peripheral
     with Import, Address => TIM13_S_Base;

   --  General-purpose timers
   TIM14_S_Periph : aliased TIM10_Peripheral
     with Import, Address => TIM14_S_Base;

   --  General-purpose timers
   TIM11_Periph : aliased TIM10_Peripheral
     with Import, Address => TIM11_Base;

   --  General-purpose timers
   TIM13_Periph : aliased TIM10_Peripheral
     with Import, Address => TIM13_Base;

   --  General-purpose timers
   TIM14_Periph : aliased TIM10_Peripheral
     with Import, Address => TIM14_Base;

   type TIM12_S_Disc is
     (Input,
      Output);

   --  General-purpose timers
   type TIM12_S_Peripheral
     (Discriminent : TIM12_S_Disc := Input)
   is record
      TIM12_CR1          : aliased TIM12_CR1_Register;
      TIM12_CR2          : aliased TIM12_CR2_Register;
      TIM12_SMCR         : aliased TIM12_SMCR_Register;
      TIM12_DIER         : aliased TIM12_DIER_Register;
      TIM12_SR           : aliased TIM12_SR_Register;
      TIM12_EGR          : aliased TIM12_EGR_Register;
      TIM12_CCER         : aliased TIM12_CCER_Register;
      TIM12_CNT          : aliased TIM12_CNT_Register;
      TIM12_PSC          : aliased HAL.UInt16;
      TIM12_ARR          : aliased TIM12_ARR_Register;
      TIM12_CCR1         : aliased TIM12_CCR1_Register;
      TIM12_CCR2         : aliased TIM12_CCR2_Register;
      TIM12_TISEL        : aliased TIM12_TISEL_Register;
      --  TIM12 hardware configuration 2 register
      TIM12_HWCFGR2      : aliased TIM12_HWCFGR2_Register;
      --  TIM12 hardware configuration 1 register
      TIM12_HWCFGR1      : aliased TIM12_HWCFGR1_Register;
      TIM12_VERR         : aliased TIM12_VERR_Register;
      TIM12_IPIDR        : aliased HAL.UInt32;
      TIM12_SIDR         : aliased HAL.UInt32;
      case Discriminent is
         when Input =>
            --  TIM12 capture/compare mode register 1 [alternate]	
            TIM12_CCMR1_INPUT : aliased TIM12_CCMR1_INPUT_Register;
         when Output =>
            --  TIM12 capture/compare mode register 1 [alternate]	
            TIM12_CCMR1_OUTPUT : aliased TIM12_CCMR1_OUTPUT_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM12_S_Peripheral use record
      TIM12_CR1          at 16#0# range 0 .. 15;
      TIM12_CR2          at 16#4# range 0 .. 15;
      TIM12_SMCR         at 16#8# range 0 .. 31;
      TIM12_DIER         at 16#C# range 0 .. 15;
      TIM12_SR           at 16#10# range 0 .. 15;
      TIM12_EGR          at 16#14# range 0 .. 15;
      TIM12_CCER         at 16#20# range 0 .. 15;
      TIM12_CNT          at 16#24# range 0 .. 31;
      TIM12_PSC          at 16#28# range 0 .. 15;
      TIM12_ARR          at 16#2C# range 0 .. 31;
      TIM12_CCR1         at 16#34# range 0 .. 31;
      TIM12_CCR2         at 16#38# range 0 .. 31;
      TIM12_TISEL        at 16#5C# range 0 .. 15;
      TIM12_HWCFGR2      at 16#3EC# range 0 .. 31;
      TIM12_HWCFGR1      at 16#3F0# range 0 .. 31;
      TIM12_VERR         at 16#3F4# range 0 .. 31;
      TIM12_IPIDR        at 16#3F8# range 0 .. 31;
      TIM12_SIDR         at 16#3FC# range 0 .. 31;
      TIM12_CCMR1_INPUT  at 16#18# range 0 .. 31;
      TIM12_CCMR1_OUTPUT at 16#18# range 0 .. 31;
   end record;

   --  General-purpose timers
   TIM12_S_Periph : aliased TIM12_S_Peripheral
     with Import, Address => TIM12_S_Base;

   --  General-purpose timers
   TIM12_Periph : aliased TIM12_S_Peripheral
     with Import, Address => TIM12_Base;

   type TIM15_S_Disc is
     (Intput,
      Output);

   --  General purpose timers
   type TIM15_S_Peripheral
     (Discriminent : TIM15_S_Disc := Intput)
   is record
      --  TIM15 control register 1
      TIM15_CR1          : aliased TIM15_CR1_Register;
      --  TIM15 control register 2
      TIM15_CR2          : aliased TIM15_CR2_Register;
      --  TIM15 slave mode control register
      TIM15_SMCR         : aliased TIM15_SMCR_Register;
      --  TIM15 DMA/interrupt enable register
      TIM15_DIER         : aliased TIM15_DIER_Register;
      --  TIM15 status register
      TIM15_SR           : aliased TIM15_SR_Register;
      --  TIM15 event generation register
      TIM15_EGR          : aliased TIM15_EGR_Register;
      --  TIM15 capture/compare enable register
      TIM15_CCER         : aliased TIM15_CCER_Register;
      --  TIM15 counter
      TIM15_CNT          : aliased TIM15_CNT_Register;
      --  TIM15 prescaler
      TIM15_PSC          : aliased HAL.UInt16;
      --  TIM15 auto-reload register
      TIM15_ARR          : aliased TIM15_ARR_Register;
      --  TIM15 repetition counter register
      TIM15_RCR          : aliased TIM15_RCR_Register;
      --  TIM15 capture/compare register 1
      TIM15_CCR1         : aliased TIM15_CCR1_Register;
      --  TIM15 capture/compare register 2
      TIM15_CCR2         : aliased TIM15_CCR2_Register;
      --  TIM15 break and dead-time register
      TIM15_BDTR         : aliased TIM15_BDTR_Register;
      --  TIM15 timer deadtime register 2
      TIM15_DTR2         : aliased TIM15_DTR2_Register;
      --  TIM15 input selection register
      TIM15_TISEL        : aliased TIM15_TISEL_Register;
      --  TIM15 alternate function register 1
      TIM15_AF1          : aliased TIM15_AF1_Register;
      --  TIM15 alternate function register 2
      TIM15_AF2          : aliased TIM15_AF2_Register;
      --  TIM15 DMA control register
      TIM15_DCR          : aliased TIM15_DCR_Register;
      --  TIM15 DMA address for full transfer
      TIM15_DMAR         : aliased HAL.UInt32;
      --  TIM15 hardware configuration 2 register
      TIM15_HWCFGR2      : aliased TIM15_HWCFGR2_Register;
      --  TIM15 hardware configuration 1 register
      TIM15_HWCFGR1      : aliased TIM15_HWCFGR1_Register;
      --  TIM15 IP version register
      TIM15_VERR         : aliased TIM15_VERR_Register;
      --  TIM15 IP identification register
      TIM15_IPIDR        : aliased HAL.UInt32;
      --  TIM15 size ID register
      TIM15_SIDR         : aliased HAL.UInt32;
      case Discriminent is
         when Intput =>
            --  TIM15 capture/compare mode register 1 [alternate]	
            TIM15_CCMR1_Intput : aliased TIM15_CCMR1_Intput_Register;
         when Output =>
            --  TIM15 capture/compare mode register 1 [alternate]	
            TIM15_CCMR1_Output : aliased TIM15_CCMR1_Output_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM15_S_Peripheral use record
      TIM15_CR1          at 16#0# range 0 .. 15;
      TIM15_CR2          at 16#4# range 0 .. 15;
      TIM15_SMCR         at 16#8# range 0 .. 31;
      TIM15_DIER         at 16#C# range 0 .. 15;
      TIM15_SR           at 16#10# range 0 .. 15;
      TIM15_EGR          at 16#14# range 0 .. 15;
      TIM15_CCER         at 16#20# range 0 .. 15;
      TIM15_CNT          at 16#24# range 0 .. 31;
      TIM15_PSC          at 16#28# range 0 .. 15;
      TIM15_ARR          at 16#2C# range 0 .. 31;
      TIM15_RCR          at 16#30# range 0 .. 15;
      TIM15_CCR1         at 16#34# range 0 .. 31;
      TIM15_CCR2         at 16#38# range 0 .. 31;
      TIM15_BDTR         at 16#44# range 0 .. 31;
      TIM15_DTR2         at 16#54# range 0 .. 31;
      TIM15_TISEL        at 16#5C# range 0 .. 31;
      TIM15_AF1          at 16#60# range 0 .. 31;
      TIM15_AF2          at 16#64# range 0 .. 31;
      TIM15_DCR          at 16#3DC# range 0 .. 31;
      TIM15_DMAR         at 16#3E0# range 0 .. 31;
      TIM15_HWCFGR2      at 16#3EC# range 0 .. 31;
      TIM15_HWCFGR1      at 16#3F0# range 0 .. 31;
      TIM15_VERR         at 16#3F4# range 0 .. 31;
      TIM15_IPIDR        at 16#3F8# range 0 .. 31;
      TIM15_SIDR         at 16#3FC# range 0 .. 31;
      TIM15_CCMR1_Intput at 16#18# range 0 .. 31;
      TIM15_CCMR1_Output at 16#18# range 0 .. 31;
   end record;

   --  General purpose timers
   TIM15_S_Periph : aliased TIM15_S_Peripheral
     with Import, Address => TIM15_S_Base;

   --  General purpose timers
   TIM15_Periph : aliased TIM15_S_Peripheral
     with Import, Address => TIM15_Base;

   type TIM2_Disc is
     (Input,
      Output);

   --  General-purpose timers
   type TIM2_Peripheral
     (Discriminent : TIM2_Disc := Input)
   is record
      --  TIM2 control register 1
      TIM2_CR1          : aliased TIM2_CR1_Register;
      --  TIM2 control register 2
      TIM2_CR2          : aliased TIM2_CR2_Register;
      --  TIM2 slave mode control register
      TIM2_SMCR         : aliased TIM2_SMCR_Register;
      --  TIM2 DMA/Interrupt enable register
      TIM2_DIER         : aliased TIM2_DIER_Register;
      --  TIM2 status register
      TIM2_SR           : aliased TIM2_SR_Register;
      --  TIM2 event generation register
      TIM2_EGR          : aliased TIM2_EGR_Register;
      --  TIM2 capture/compare enable register
      TIM2_CCER         : aliased TIM2_CCER_Register;
      --  TIM2 counter
      TIM2_CNT          : aliased HAL.UInt32;
      --  TIM2 prescaler
      TIM2_PSC          : aliased HAL.UInt16;
      --  TIM2 auto-reload register
      TIM2_ARR          : aliased HAL.UInt32;
      --  TIM2 capture/compare register 1
      TIM2_CCR1         : aliased HAL.UInt32;
      --  TIM2 capture/compare register 2
      TIM2_CCR2         : aliased HAL.UInt32;
      --  TIM2 capture/compare register 3
      TIM2_CCR3         : aliased HAL.UInt32;
      --  TIM2 capture/compare register 4
      TIM2_CCR4         : aliased HAL.UInt32;
      --  TIM2 timer encoder control register
      TIM2_ECR          : aliased TIM2_ECR_Register;
      --  TIM2 timer input selection register
      TIM2_TISEL        : aliased TIM2_TISEL_Register;
      --  TIM2 alternate function register 1
      TIM2_AF1          : aliased TIM2_AF1_Register;
      --  TIM2 alternate function register 2
      TIM2_AF2          : aliased TIM2_AF2_Register;
      --  TIM2 DMA control register
      TIM2_DCR          : aliased TIM2_DCR_Register;
      --  TIM2 DMA address for full transfer
      TIM2_DMAR         : aliased HAL.UInt32;
      --  TIM2 hardware configuration 2 register
      TIM2_HWCFGR2      : aliased TIM2_HWCFGR2_Register;
      --  TIM2 hardware configuration 1 register
      TIM2_HWCFGR1      : aliased TIM2_HWCFGR1_Register;
      --  TIM2 IP version register
      TIM2_VERR         : aliased TIM2_VERR_Register;
      --  TIM2 IP identification register
      TIM2_IPIDR        : aliased HAL.UInt32;
      --  TIM2 size ID register
      TIM2_SIDR         : aliased HAL.UInt32;
      case Discriminent is
         when Input =>
            --  TIM2 capture/compare mode register 1 [alternate]
            TIM2_CCMR1_Input : aliased TIM2_CCMR1_Input_Register;
            --  TIM2 capture/compare mode register 2 [alternate]
            TIM2_CCMR2_Input : aliased TIM2_CCMR2_Input_Register;
         when Output =>
            --  TIM2 capture/compare mode register 1 [alternate]
            TIM2_CCMR1_Output : aliased TIM2_CCMR1_Output_Register;
            --  TIM2 capture/compare mode register 2 [alternate]
            TIM2_CCMR2_Output : aliased TIM2_CCMR2_Output_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM2_Peripheral use record
      TIM2_CR1          at 16#0# range 0 .. 15;
      TIM2_CR2          at 16#4# range 0 .. 31;
      TIM2_SMCR         at 16#8# range 0 .. 31;
      TIM2_DIER         at 16#C# range 0 .. 31;
      TIM2_SR           at 16#10# range 0 .. 31;
      TIM2_EGR          at 16#14# range 0 .. 15;
      TIM2_CCER         at 16#20# range 0 .. 15;
      TIM2_CNT          at 16#24# range 0 .. 31;
      TIM2_PSC          at 16#28# range 0 .. 15;
      TIM2_ARR          at 16#2C# range 0 .. 31;
      TIM2_CCR1         at 16#34# range 0 .. 31;
      TIM2_CCR2         at 16#38# range 0 .. 31;
      TIM2_CCR3         at 16#3C# range 0 .. 31;
      TIM2_CCR4         at 16#40# range 0 .. 31;
      TIM2_ECR          at 16#58# range 0 .. 31;
      TIM2_TISEL        at 16#5C# range 0 .. 31;
      TIM2_AF1          at 16#60# range 0 .. 31;
      TIM2_AF2          at 16#64# range 0 .. 31;
      TIM2_DCR          at 16#3DC# range 0 .. 31;
      TIM2_DMAR         at 16#3E0# range 0 .. 31;
      TIM2_HWCFGR2      at 16#3EC# range 0 .. 31;
      TIM2_HWCFGR1      at 16#3F0# range 0 .. 31;
      TIM2_VERR         at 16#3F4# range 0 .. 31;
      TIM2_IPIDR        at 16#3F8# range 0 .. 31;
      TIM2_SIDR         at 16#3FC# range 0 .. 31;
      TIM2_CCMR1_Input  at 16#18# range 0 .. 31;
      TIM2_CCMR2_Input  at 16#1C# range 0 .. 31;
      TIM2_CCMR1_Output at 16#18# range 0 .. 31;
      TIM2_CCMR2_Output at 16#1C# range 0 .. 31;
   end record;

   --  General-purpose timers
   TIM2_Periph : aliased TIM2_Peripheral
     with Import, Address => TIM2_Base;

   --  General-purpose timers
   TIM3_Periph : aliased TIM2_Peripheral
     with Import, Address => TIM3_Base;

   --  General-purpose timers
   TIM4_Periph : aliased TIM2_Peripheral
     with Import, Address => TIM4_Base;

   --  General-purpose timers
   TIM5_Periph : aliased TIM2_Peripheral
     with Import, Address => TIM5_Base;

   --  General-purpose timers
   TIM2_S_Periph : aliased TIM2_Peripheral
     with Import, Address => TIM2_S_Base;

   --  General-purpose timers
   TIM3_S_Periph : aliased TIM2_Peripheral
     with Import, Address => TIM3_S_Base;

   --  General-purpose timers
   TIM4_S_Periph : aliased TIM2_Peripheral
     with Import, Address => TIM4_S_Base;

   --  General-purpose timers
   TIM5_S_Periph : aliased TIM2_Peripheral
     with Import, Address => TIM5_S_Base;

   type TIM16_Disc is
     (Intput,
      Output);

   --  General purpose timers
   type TIM16_Peripheral
     (Discriminent : TIM16_Disc := Intput)
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
      TIM16_ARR          : aliased TIM16_ARR_Register;
      --  TIM16 repetition counter register
      TIM16_RCR          : aliased TIM16_RCR_Register;
      --  TIM16 capture/compare register 1
      TIM16_CCR1         : aliased TIM16_CCR1_Register;
      --  TIM16 break and dead-time register
      TIM16_BDTR         : aliased TIM16_BDTR_Register;
      --  TIM16 timer deadtime register 2
      TIM16_DTR2         : aliased TIM16_DTR2_Register;
      --  TIM16 input selection register
      TIM16_TISEL        : aliased TIM16_TISEL_Register;
      --  TIM16 alternate function register 1
      TIM16_AF1          : aliased TIM16_AF1_Register;
      --  TIM16 alternate function register 2
      TIM16_AF2          : aliased TIM16_AF2_Register;
      --  TIM16 DMA control register
      TIM16_DCR          : aliased TIM16_DCR_Register;
      --  TIM16/TIM17 DMA address for full transfer
      TIM16_DMAR         : aliased HAL.UInt32;
      --  TIM16 hardware configuration 2 register
      TIM16_HWCFGR2      : aliased TIM16_HWCFGR2_Register;
      --  TIM16 hardware configuration 1 register
      TIM16_HWCFGR1      : aliased TIM16_HWCFGR1_Register;
      --  TIM16 IP version register
      TIM16_VERR         : aliased TIM16_VERR_Register;
      --  TIM16 IP identification register
      TIM16_IPIDR        : aliased HAL.UInt32;
      --  TIM16 size ID register
      TIM16_SIDR         : aliased HAL.UInt32;
      case Discriminent is
         when Intput =>
            --  TIM16 capture/compare mode register 1 [alternate]
            TIM16_CCMR1_Intput : aliased TIM16_CCMR1_Intput_Register;
         when Output =>
            --  TIM16 capture/compare mode register 1 [alternate]
            TIM16_CCMR1_Output : aliased TIM16_CCMR1_Output_Register;
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
      TIM16_ARR          at 16#2C# range 0 .. 31;
      TIM16_RCR          at 16#30# range 0 .. 15;
      TIM16_CCR1         at 16#34# range 0 .. 31;
      TIM16_BDTR         at 16#44# range 0 .. 31;
      TIM16_DTR2         at 16#54# range 0 .. 31;
      TIM16_TISEL        at 16#5C# range 0 .. 31;
      TIM16_AF1          at 16#60# range 0 .. 31;
      TIM16_AF2          at 16#64# range 0 .. 31;
      TIM16_DCR          at 16#3DC# range 0 .. 31;
      TIM16_DMAR         at 16#3E0# range 0 .. 31;
      TIM16_HWCFGR2      at 16#3EC# range 0 .. 31;
      TIM16_HWCFGR1      at 16#3F0# range 0 .. 31;
      TIM16_VERR         at 16#3F4# range 0 .. 31;
      TIM16_IPIDR        at 16#3F8# range 0 .. 31;
      TIM16_SIDR         at 16#3FC# range 0 .. 31;
      TIM16_CCMR1_Intput at 16#18# range 0 .. 31;
      TIM16_CCMR1_Output at 16#18# range 0 .. 31;
   end record;

   --  General purpose timers
   TIM16_Periph : aliased TIM16_Peripheral
     with Import, Address => TIM16_Base;

   --  General purpose timers
   TIM16_S_Periph : aliased TIM16_Peripheral
     with Import, Address => TIM16_S_Base;

   --  General purpose timers
   TIM17_Periph : aliased TIM16_Peripheral
     with Import, Address => TIM17_Base;

   --  General purpose timers
   TIM17_S_Periph : aliased TIM16_Peripheral
     with Import, Address => TIM17_S_Base;

end STM32_SVD.TIMx;
