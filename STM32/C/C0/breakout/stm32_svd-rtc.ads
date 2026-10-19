--  This spec has been automatically generated from STM32C011.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.RTC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RTC_TR_SU_Field is HAL.UInt4;
   subtype RTC_TR_ST_Field is HAL.UInt3;
   subtype RTC_TR_MNU_Field is HAL.UInt4;
   subtype RTC_TR_MNT_Field is HAL.UInt3;
   subtype RTC_TR_HU_Field is HAL.UInt4;
   subtype RTC_TR_HT_Field is HAL.UInt2;

   --  RTC time register
   type RTC_TR_Register is record
      --  Second units in BCD format
      SU             : RTC_TR_SU_Field := 16#0#;
      --  Second tens in BCD format
      ST             : RTC_TR_ST_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Minute units in BCD format
      MNU            : RTC_TR_MNU_Field := 16#0#;
      --  Minute tens in BCD format
      MNT            : RTC_TR_MNT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Hour units in BCD format
      HU             : RTC_TR_HU_Field := 16#0#;
      --  Hour tens in BCD format
      HT             : RTC_TR_HT_Field := 16#0#;
      --  AM/PM notation
      PM             : Boolean := False;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_TR_Register use record
      SU             at 0 range 0 .. 3;
      ST             at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MNU            at 0 range 8 .. 11;
      MNT            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HU             at 0 range 16 .. 19;
      HT             at 0 range 20 .. 21;
      PM             at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype RTC_DR_DU_Field is HAL.UInt4;
   subtype RTC_DR_DT_Field is HAL.UInt2;
   subtype RTC_DR_MU_Field is HAL.UInt4;
   subtype RTC_DR_WDU_Field is HAL.UInt3;
   subtype RTC_DR_YU_Field is HAL.UInt4;
   subtype RTC_DR_YT_Field is HAL.UInt4;

   --  RTC date register
   type RTC_DR_Register is record
      --  Date units in BCD format
      DU             : RTC_DR_DU_Field := 16#1#;
      --  Date tens in BCD format
      DT             : RTC_DR_DT_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Month units in BCD format
      MU             : RTC_DR_MU_Field := 16#1#;
      --  Month tens in BCD format
      MT             : Boolean := False;
      --  Week day units ...
      WDU            : RTC_DR_WDU_Field := 16#1#;
      --  Year units in BCD format
      YU             : RTC_DR_YU_Field := 16#0#;
      --  Year tens in BCD format
      YT             : RTC_DR_YT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_DR_Register use record
      DU             at 0 range 0 .. 3;
      DT             at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MU             at 0 range 8 .. 11;
      MT             at 0 range 12 .. 12;
      WDU            at 0 range 13 .. 15;
      YU             at 0 range 16 .. 19;
      YT             at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RTC_SSR_SS_Field is HAL.UInt16;

   --  RTC sub second register
   type RTC_SSR_Register is record
      --  Read-only. Sub second value SS[15:0] is the value in the synchronous
      --  prescaler counter. The fraction of a second is given by the formula
      --  below: Second fraction = (PREDIV_S - SS) / (PREDIV_S + 1) Note: SS
      --  can be larger than PREDIV_S only after a shift operation. In that
      --  case, the correct time/date is one second less than as indicated by
      --  RTC_TR/RTC_DR.
      SS             : RTC_SSR_SS_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_SSR_Register use record
      SS             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RTC initialization control and status register
   type RTC_ICSR_Register is record
      --  Read-only. Alarm A write flag This bit is set by hardware when alarm
      --  A values can be changed, after the ALRAE bit has been set to 0 in
      --  RTC_CR. It is cleared by hardware in initialization mode.
      ALRAWF         : Boolean := True;
      --  unspecified
      Reserved_1_2   : HAL.UInt2 := 16#3#;
      --  Read-only. Shift operation pending This flag is set by hardware as
      --  soon as a shift operation is initiated by a write to the RTC_SHIFTR
      --  register. It is cleared by hardware when the corresponding shift
      --  operation has been executed. Writing to the SHPF bit has no effect.
      SHPF           : Boolean := False;
      --  Read-only. Initialization status flag This bit is set by hardware
      --  when the calendar year field is different from 0 (Power-on reset
      --  state).
      INITS          : Boolean := False;
      --  Registers synchronization flag This bit is set by hardware each time
      --  the calendar registers are copied into the shadow registers (RTC_SSR,
      --  RTC_TR and RTC_DR). This bit is cleared by hardware in initialization
      --  mode, while a shift operation is pending (SHPF = 1), or when in
      --  bypass shadow register mode (BYPSHAD = 1). This bit can also be
      --  cleared by software. It is cleared either by software or by hardware
      --  in initialization mode.
      RSF            : Boolean := False;
      --  Read-only. Initialization flag When this bit is set to 1, the RTC is
      --  in initialization state, and the time, date and prescaler registers
      --  can be updated.
      INITF          : Boolean := False;
      --  Initialization mode
      INIT           : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Read-only. Recalibration pending Flag The RECALPF status flag is
      --  automatically set to 1 when software writes to the RTC_CALR register,
      --  indicating that the RTC_CALR register is blocked. When the new
      --  calibration settings are taken into account, this bit returns to 0.
      --  Refer to .
      RECALPF        : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_ICSR_Register use record
      ALRAWF         at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      SHPF           at 0 range 3 .. 3;
      INITS          at 0 range 4 .. 4;
      RSF            at 0 range 5 .. 5;
      INITF          at 0 range 6 .. 6;
      INIT           at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      RECALPF        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype RTC_PRER_PREDIV_S_Field is HAL.UInt15;
   subtype RTC_PRER_PREDIV_A_Field is HAL.UInt7;

   --  RTC prescaler register
   type RTC_PRER_Register is record
      --  Synchronous prescaler factor This is the synchronous division factor:
      --  ck_spre frequency = ck_apre frequency/(PREDIV_S+1)
      PREDIV_S       : RTC_PRER_PREDIV_S_Field := 16#FF#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Asynchronous prescaler factor This is the asynchronous division
      --  factor: ck_apre frequency = RTCCLK frequency/(PREDIV_A+1)
      PREDIV_A       : RTC_PRER_PREDIV_A_Field := 16#7F#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_PRER_Register use record
      PREDIV_S       at 0 range 0 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PREDIV_A       at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype RTC_CR_OSEL_Field is HAL.UInt2;

   --  RTC control register
   type RTC_CR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Timestamp event active edge TSE must be reset when TSEDGE is changed
      --  to avoid unwanted TSF setting.
      TSEDGE         : Boolean := False;
      --  RTC_REFIN reference clock detection enable (50 or 60 Hz) Note:
      --  PREDIV_S must be 0x00FF.
      REFCKON        : Boolean := False;
      --  Bypass the shadow registers Note: If the frequency of the APB1 clock
      --  is less than seven times the frequency of RTCCLK, BYPSHAD must be set
      --  to 1.
      BYPSHAD        : Boolean := False;
      --  Hour format
      FMT            : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Alarm A enable
      ALRAE          : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  timestamp enable
      TSE            : Boolean := False;
      --  Alarm A interrupt enable
      ALRAIE         : Boolean := False;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  Timestamp interrupt enable
      TSIE           : Boolean := False;
      --  Write-only. Add 1 hour (summer time change) When this bit is set
      --  outside initialization mode, 1 hour is added to the calendar time.
      --  This bit is always read as 0.
      ADD1H          : Boolean := False;
      --  Write-only. Subtract 1 hour (winter time change) When this bit is set
      --  outside initialization mode, 1 hour is subtracted to the calendar
      --  time if the current hour is not 0. This bit is always read as 0.
      --  Setting this bit has no effect when current hour is 0.
      SUB1H          : Boolean := False;
      --  Backup This bit can be written by the user to memorize whether the
      --  daylight saving time change has been performed or not.
      BKP            : Boolean := False;
      --  Calibration output selection When COE = 1, this bit selects which
      --  signal is output on CALIB. These frequencies are valid for RTCCLK at
      --  32.768 kHz and prescalers at their default values (PREDIV_A = 127 and
      --  PREDIV_S = 255). Refer to .
      COSEL          : Boolean := False;
      --  Output polarity This bit is used to configure the polarity of
      --  TAMPALRM output.
      POL            : Boolean := False;
      --  Output selection These bits are used to select the flag to be routed
      --  to TAMPALRM output.
      OSEL           : RTC_CR_OSEL_Field := 16#0#;
      --  Calibration output enable This bit enables the CALIB output
      COE            : Boolean := False;
      --  unspecified
      Reserved_24_28 : HAL.UInt5 := 16#0#;
      --  TAMPALRM pull-up enable
      TAMPALRM_PU    : Boolean := False;
      --  TAMPALRM output type
      TAMPALRM_TYPE  : Boolean := False;
      --  RTC_OUT2 output enable Setting this bit allows to remap the RTC
      --  outputs on RTC_OUT2 as follows: OUT2EN = 0: RTC output 2 disable If
      --  OSEL different of 00 or TAMPOE = 1: TAMPALRM is output on RTC_OUT1 If
      --  OSEL = 00 and TAMPOE = 0 and COE = 1: CALIB is output on RTC_OUT1
      --  OUT2EN = 1: RTC output 2 enable If (OSEL different of 00 or TAMPOE =
      --  1) and COE = 0: TAMPALRM is output on RTC_OUT2 If OSEL = 00 and
      --  TAMPOE = 0 and COE = 1: CALIB is output on RTC_OUT2 If (OSELdifferent
      --  of 00 or TAMPOE = 1) and COE = 1: CALIB is output on RTC_OUT2 and
      --  TAMPALRM is output on RTC_OUT1.
      OUT2EN         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_CR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      TSEDGE         at 0 range 3 .. 3;
      REFCKON        at 0 range 4 .. 4;
      BYPSHAD        at 0 range 5 .. 5;
      FMT            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ALRAE          at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      TSE            at 0 range 11 .. 11;
      ALRAIE         at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      TSIE           at 0 range 15 .. 15;
      ADD1H          at 0 range 16 .. 16;
      SUB1H          at 0 range 17 .. 17;
      BKP            at 0 range 18 .. 18;
      COSEL          at 0 range 19 .. 19;
      POL            at 0 range 20 .. 20;
      OSEL           at 0 range 21 .. 22;
      COE            at 0 range 23 .. 23;
      Reserved_24_28 at 0 range 24 .. 28;
      TAMPALRM_PU    at 0 range 29 .. 29;
      TAMPALRM_TYPE  at 0 range 30 .. 30;
      OUT2EN         at 0 range 31 .. 31;
   end record;

   subtype RTC_WPR_KEY_Field is HAL.UInt8;

   --  RTC write protection register
   type RTC_WPR_Register is record
      --  Write-only. Write protection key This byte is written by software.
      --  Reading this byte always returns 0x00. Refer to for a description of
      --  how to unlock RTC register write protection.
      KEY           : RTC_WPR_KEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_WPR_Register use record
      KEY           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RTC_CALR_CALM_Field is HAL.UInt9;

   --  RTC calibration register
   type RTC_CALR_Register is record
      --  Calibration minus The frequency of the calendar is reduced by masking
      --  CALM out of 220 RTCCLK pulses (32 seconds if the input frequency is
      --  32768 Hz). This decreases the frequency of the calendar with a
      --  resolution of 0.9537 ppm. To increase the frequency of the calendar,
      --  this feature should be used in conjunction with CALP. See .
      CALM           : RTC_CALR_CALM_Field := 16#0#;
      --  unspecified
      Reserved_9_12  : HAL.UInt4 := 16#0#;
      --  Use a 16-second calibration cycle period When CALW16 is set to 1, the
      --  16-second calibration cycle period is selected. This bit must not be
      --  set to 1 if CALW8 = 1. Note: CALM[0] is stuck at 0 when CALW16 = 1.
      --  Refer to calibration.
      CALW16         : Boolean := False;
      --  Use an 8-second calibration cycle period When CALW8 is set to 1, the
      --  8-second calibration cycle period is selected. Note: CALM[1:0] are
      --  stuck at 00 when CALW8 = 1. Refer to digital calibration.
      CALW8          : Boolean := False;
      --  Increase frequency of RTC by 488.5 ppm This feature is intended to be
      --  used in conjunction with CALM, which lowers the frequency of the
      --  calendar with a fine resolution. if the input frequency is 32768 Hz,
      --  the number of RTCCLK pulses added during a 32-second window is
      --  calculated as follows: (512 CALP) - CALM. Refer to .
      CALP           : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_CALR_Register use record
      CALM           at 0 range 0 .. 8;
      Reserved_9_12  at 0 range 9 .. 12;
      CALW16         at 0 range 13 .. 13;
      CALW8          at 0 range 14 .. 14;
      CALP           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RTC_SHIFTR_SUBFS_Field is HAL.UInt15;

   --  RTC shift control register
   type RTC_SHIFTR_Register is record
      --  Write-only. Subtract a fraction of a second These bits are write only
      --  and is always read as zero. Writing to this bit has no effect when a
      --  shift operation is pending (when SHPF = 1, in RTC_ICSR). The value
      --  which is written to SUBFS is added to the synchronous prescaler
      --  counter. Since this counter counts down, this operation effectively
      --  subtracts from (delays) the clock by: Delay (seconds) = SUBFS /
      --  (PREDIV_S + 1) A fraction of a second can effectively be added to the
      --  clock (advancing the clock) when the ADD1S function is used in
      --  conjunction with SUBFS, effectively advancing the clock by: Advance
      --  (seconds) = (1 - (SUBFS / (PREDIV_S + 1))). Note: Writing to SUBFS
      --  causes RSF to be cleared. Software can then wait until RSF = 1 to be
      --  sure that the shadow registers have been updated with the shifted
      --  time.
      SUBFS          : RTC_SHIFTR_SUBFS_Field := 16#0#;
      --  unspecified
      Reserved_15_30 : HAL.UInt16 := 16#0#;
      --  Write-only. Add one second This bit is write only and is always read
      --  as zero. Writing to this bit has no effect when a shift operation is
      --  pending (when SHPF = 1, in RTC_ICSR). This function is intended to be
      --  used with SUBFS (see description below) in order to effectively add a
      --  fraction of a second to the clock in an atomic operation.
      ADD1S          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_SHIFTR_Register use record
      SUBFS          at 0 range 0 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      ADD1S          at 0 range 31 .. 31;
   end record;

   subtype RTC_TSTR_SU_Field is HAL.UInt4;
   subtype RTC_TSTR_ST_Field is HAL.UInt3;
   subtype RTC_TSTR_MNU_Field is HAL.UInt4;
   subtype RTC_TSTR_MNT_Field is HAL.UInt3;
   subtype RTC_TSTR_HU_Field is HAL.UInt4;
   subtype RTC_TSTR_HT_Field is HAL.UInt2;

   --  RTC timestamp time register
   type RTC_TSTR_Register is record
      --  Read-only. Second units in BCD format.
      SU             : RTC_TSTR_SU_Field;
      --  Read-only. Second tens in BCD format.
      ST             : RTC_TSTR_ST_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Minute units in BCD format.
      MNU            : RTC_TSTR_MNU_Field;
      --  Read-only. Minute tens in BCD format.
      MNT            : RTC_TSTR_MNT_Field;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Hour units in BCD format.
      HU             : RTC_TSTR_HU_Field;
      --  Read-only. Hour tens in BCD format.
      HT             : RTC_TSTR_HT_Field;
      --  Read-only. AM/PM notation
      PM             : Boolean;
      --  unspecified
      Reserved_23_31 : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_TSTR_Register use record
      SU             at 0 range 0 .. 3;
      ST             at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MNU            at 0 range 8 .. 11;
      MNT            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HU             at 0 range 16 .. 19;
      HT             at 0 range 20 .. 21;
      PM             at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype RTC_TSDR_DU_Field is HAL.UInt4;
   subtype RTC_TSDR_DT_Field is HAL.UInt2;
   subtype RTC_TSDR_MU_Field is HAL.UInt4;
   subtype RTC_TSDR_WDU_Field is HAL.UInt3;

   --  RTC timestamp date register
   type RTC_TSDR_Register is record
      --  Read-only. Date units in BCD format
      DU             : RTC_TSDR_DU_Field;
      --  Read-only. Date tens in BCD format
      DT             : RTC_TSDR_DT_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Month units in BCD format
      MU             : RTC_TSDR_MU_Field;
      --  Read-only. Month tens in BCD format
      MT             : Boolean;
      --  Read-only. Week day units
      WDU            : RTC_TSDR_WDU_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_TSDR_Register use record
      DU             at 0 range 0 .. 3;
      DT             at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MU             at 0 range 8 .. 11;
      MT             at 0 range 12 .. 12;
      WDU            at 0 range 13 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RTC_TSSSR_SS_Field is HAL.UInt16;

   --  RTC timestamp sub second register
   type RTC_TSSSR_Register is record
      --  Read-only. Sub second value SS[15:0] is the value of the synchronous
      --  prescaler counter when the timestamp event occurred.
      SS             : RTC_TSSSR_SS_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_TSSSR_Register use record
      SS             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RTC_ALRMAR_SU_Field is HAL.UInt4;
   subtype RTC_ALRMAR_ST_Field is HAL.UInt3;
   subtype RTC_ALRMAR_MNU_Field is HAL.UInt4;
   subtype RTC_ALRMAR_MNT_Field is HAL.UInt3;
   subtype RTC_ALRMAR_HU_Field is HAL.UInt4;
   subtype RTC_ALRMAR_HT_Field is HAL.UInt2;
   subtype RTC_ALRMAR_DU_Field is HAL.UInt4;
   subtype RTC_ALRMAR_DT_Field is HAL.UInt2;

   --  RTC alarm A register
   type RTC_ALRMAR_Register is record
      --  Second units in BCD format.
      SU    : RTC_ALRMAR_SU_Field := 16#0#;
      --  Second tens in BCD format.
      ST    : RTC_ALRMAR_ST_Field := 16#0#;
      --  Alarm A seconds mask
      MSK1  : Boolean := False;
      --  Minute units in BCD format
      MNU   : RTC_ALRMAR_MNU_Field := 16#0#;
      --  Minute tens in BCD format
      MNT   : RTC_ALRMAR_MNT_Field := 16#0#;
      --  Alarm A minutes mask
      MSK2  : Boolean := False;
      --  Hour units in BCD format
      HU    : RTC_ALRMAR_HU_Field := 16#0#;
      --  Hour tens in BCD format
      HT    : RTC_ALRMAR_HT_Field := 16#0#;
      --  AM/PM notation
      PM    : Boolean := False;
      --  Alarm A hours mask
      MSK3  : Boolean := False;
      --  Date units or day in BCD format
      DU    : RTC_ALRMAR_DU_Field := 16#0#;
      --  Date tens in BCD format
      DT    : RTC_ALRMAR_DT_Field := 16#0#;
      --  Week day selection
      WDSEL : Boolean := False;
      --  Alarm A date mask
      MSK4  : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_ALRMAR_Register use record
      SU    at 0 range 0 .. 3;
      ST    at 0 range 4 .. 6;
      MSK1  at 0 range 7 .. 7;
      MNU   at 0 range 8 .. 11;
      MNT   at 0 range 12 .. 14;
      MSK2  at 0 range 15 .. 15;
      HU    at 0 range 16 .. 19;
      HT    at 0 range 20 .. 21;
      PM    at 0 range 22 .. 22;
      MSK3  at 0 range 23 .. 23;
      DU    at 0 range 24 .. 27;
      DT    at 0 range 28 .. 29;
      WDSEL at 0 range 30 .. 30;
      MSK4  at 0 range 31 .. 31;
   end record;

   subtype RTC_ALRMASSR_SS_Field is HAL.UInt15;
   subtype RTC_ALRMASSR_MASKSS_Field is HAL.UInt4;

   --  RTC alarm A sub second register
   type RTC_ALRMASSR_Register is record
      --  Sub seconds value This value is compared with the contents of the
      --  synchronous prescaler counter to determine if alarm A is to be
      --  activated. Only bits 0 up MASKSS-1 are compared.
      SS             : RTC_ALRMASSR_SS_Field := 16#0#;
      --  unspecified
      Reserved_15_23 : HAL.UInt9 := 16#0#;
      --  Mask the most-significant bits starting at this bit 2:	SS[14:2] are
      --  dont care in alarm A comparison. Only SS[1:0] are compared.
      --  3:	SS[14:3] are dont care in alarm A comparison. Only SS[2:0] are
      --  compared. ... 12:	SS[14:12] are dont care in alarm A comparison.
      --  SS[11:0] are compared. 13:	SS[14:13] are dont care in alarm A
      --  comparison. SS[12:0] are compared. 14:	SS[14] is dont care in alarm A
      --  comparison. SS[13:0] are compared. 15:	All 15 SS bits are compared
      --  and must match to activate alarm. The overflow bits of the
      --  synchronous counter (bits 15) is never compared. This bit can be
      --  different from 0 only after a shift operation. Note: The overflow
      --  bits of the synchronous counter (bits 15) is never compared. This bit
      --  can be different from 0 only after a shift operation.
      MASKSS         : RTC_ALRMASSR_MASKSS_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_ALRMASSR_Register use record
      SS             at 0 range 0 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      MASKSS         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  RTC status register
   type RTC_SR_Register is record
      --  Read-only. Alarm A flag This flag is set by hardware when the
      --  time/date registers (RTC_TR and RTC_DR) match the alarm A register
      --  (RTC_ALRMAR).
      ALRAF         : Boolean;
      --  unspecified
      Reserved_1_2  : HAL.UInt2;
      --  Read-only. Timestamp flag This flag is set by hardware when a
      --  timestamp event occurs.
      TSF           : Boolean;
      --  Read-only. Timestamp overflow flag This flag is set by hardware when
      --  a timestamp event occurs while TSF is already set. It is recommended
      --  to check and then clear TSOVF only after clearing the TSF bit.
      --  Otherwise, an overflow might not be noticed if a timestamp event
      --  occurs immediately before the TSF bit is cleared.
      TSOVF         : Boolean;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_SR_Register use record
      ALRAF         at 0 range 0 .. 0;
      Reserved_1_2  at 0 range 1 .. 2;
      TSF           at 0 range 3 .. 3;
      TSOVF         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RTC masked interrupt status register
   type RTC_MISR_Register is record
      --  Read-only. Alarm A masked flag This flag is set by hardware when the
      --  alarm A interrupt occurs.
      ALRAMF        : Boolean;
      --  unspecified
      Reserved_1_2  : HAL.UInt2;
      --  Read-only. Timestamp masked flag This flag is set by hardware when a
      --  timestamp interrupt occurs.
      TSMF          : Boolean;
      --  Read-only. Timestamp overflow masked flag This flag is set by
      --  hardware when a timestamp interrupt occurs while TSMF is already set.
      --  It is recommended to check and then clear TSOVF only after clearing
      --  the TSF bit. Otherwise, an overflow might not be noticed if a
      --  timestamp event occurs immediately before the TSF bit is cleared.
      TSOVMF        : Boolean;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_MISR_Register use record
      ALRAMF        at 0 range 0 .. 0;
      Reserved_1_2  at 0 range 1 .. 2;
      TSMF          at 0 range 3 .. 3;
      TSOVMF        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RTC status clear register
   type RTC_SCR_Register is record
      --  Write-only. Clear alarm A flag Writing 1 in this bit clears the ALRAF
      --  bit in the RTC_SR register.
      CALRAF        : Boolean := False;
      --  unspecified
      Reserved_1_2  : HAL.UInt2 := 16#0#;
      --  Write-only. Clear timestamp flag Writing 1 in this bit clears the
      --  TSOVF bit in the RTC_SR register.
      CTSF          : Boolean := False;
      --  Write-only. Clear timestamp overflow flag Writing 1 in this bit
      --  clears the TSOVF bit in the RTC_SR register. It is recommended to
      --  check and then clear TSOVF only after clearing the TSF bit.
      --  Otherwise, an overflow might not be noticed if a timestamp event
      --  occurs immediately before the TSF bit is cleared.
      CTSOVF        : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_SCR_Register use record
      CALRAF        at 0 range 0 .. 0;
      Reserved_1_2  at 0 range 1 .. 2;
      CTSF          at 0 range 3 .. 3;
      CTSOVF        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RTC register block
   type RTC_Peripheral is record
      --  RTC time register
      RTC_TR       : aliased RTC_TR_Register;
      --  RTC date register
      RTC_DR       : aliased RTC_DR_Register;
      --  RTC sub second register
      RTC_SSR      : aliased RTC_SSR_Register;
      --  RTC initialization control and status register
      RTC_ICSR     : aliased RTC_ICSR_Register;
      --  RTC prescaler register
      RTC_PRER     : aliased RTC_PRER_Register;
      --  RTC control register
      RTC_CR       : aliased RTC_CR_Register;
      --  RTC write protection register
      RTC_WPR      : aliased RTC_WPR_Register;
      --  RTC calibration register
      RTC_CALR     : aliased RTC_CALR_Register;
      --  RTC shift control register
      RTC_SHIFTR   : aliased RTC_SHIFTR_Register;
      --  RTC timestamp time register
      RTC_TSTR     : aliased RTC_TSTR_Register;
      --  RTC timestamp date register
      RTC_TSDR     : aliased RTC_TSDR_Register;
      --  RTC timestamp sub second register
      RTC_TSSSR    : aliased RTC_TSSSR_Register;
      --  RTC alarm A register
      RTC_ALRMAR   : aliased RTC_ALRMAR_Register;
      --  RTC alarm A sub second register
      RTC_ALRMASSR : aliased RTC_ALRMASSR_Register;
      --  RTC status register
      RTC_SR       : aliased RTC_SR_Register;
      --  RTC masked interrupt status register
      RTC_MISR     : aliased RTC_MISR_Register;
      --  RTC status clear register
      RTC_SCR      : aliased RTC_SCR_Register;
   end record
     with Volatile;

   for RTC_Peripheral use record
      RTC_TR       at 16#0# range 0 .. 31;
      RTC_DR       at 16#4# range 0 .. 31;
      RTC_SSR      at 16#8# range 0 .. 31;
      RTC_ICSR     at 16#C# range 0 .. 31;
      RTC_PRER     at 16#10# range 0 .. 31;
      RTC_CR       at 16#18# range 0 .. 31;
      RTC_WPR      at 16#24# range 0 .. 31;
      RTC_CALR     at 16#28# range 0 .. 31;
      RTC_SHIFTR   at 16#2C# range 0 .. 31;
      RTC_TSTR     at 16#30# range 0 .. 31;
      RTC_TSDR     at 16#34# range 0 .. 31;
      RTC_TSSSR    at 16#38# range 0 .. 31;
      RTC_ALRMAR   at 16#40# range 0 .. 31;
      RTC_ALRMASSR at 16#44# range 0 .. 31;
      RTC_SR       at 16#50# range 0 .. 31;
      RTC_MISR     at 16#54# range 0 .. 31;
      RTC_SCR      at 16#5C# range 0 .. 31;
   end record;

   --  RTC register block
   RTC_Periph : aliased RTC_Peripheral
     with Import, Address => RTC_Base;

end STM32_SVD.RTC;
