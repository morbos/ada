--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.ADF is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  ADF global control register
   type ADF_GCR_Register is record
      --  Trigger output control This bit is set by software and reset by
      --  hardware. It is used to start the acquisition of several filters
      --  synchronously. It is also used to synchronize several ADF together by
      --  controlling the adf_trgo signal.
      TRGO          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADF_GCR_Register use record
      TRGO          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ADF_CKGCR_TRGSRC_Field is HAL.UInt4;
   subtype ADF_CKGCR_CCKDIV_Field is HAL.UInt4;
   subtype ADF_CKGCR_PROCDIV_Field is HAL.UInt7;

   --  ADF clock generator control register
   type ADF_CKGCR_Register is record
      --  CKGEN dividers enable This bit is set and reset by software. It is
      --  used to enable/disable the clock dividers of the CKGEN: PROCDIV and
      --  CCKDIV.
      CKGDEN         : Boolean := False;
      --  ADF_CCK0 clock enable This bit is set and reset by software. It is
      --  used to control the generation of the bitstream clock on the ADF_CCK0
      --  pin.
      CCK0EN         : Boolean := False;
      --  ADF_CCK1 clock enable This bit is set and reset by software. It is
      --  used to control the generation of the bitstream clock on the ADF_CCK1
      --  pin.
      CCK1EN         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Clock generator mode This bit is set and reset by software. It is
      --  used to define the way the clock generator is enabled. This bit must
      --  not be changed if the filter is enabled (DFTEN = 1). Note: This bit
      --  can be write-protected (see Section40.4.13 for details).
      CKGMOD         : Boolean := False;
      --  ADF_CCK0 direction This bit is set and reset by software. It is used
      --  to control the direction of the ADF_CCK0 pin. Note: This bit can be
      --  write-protected (see Section40.4.13 for details).
      CCK0DIR        : Boolean := False;
      --  ADF_CCK1 direction This bit is set and reset by software. It is used
      --  to control the direction of the ADF_CCK1 pin. Note: This bit can be
      --  write-protected (see Section40.4.13 for details).
      CCK1DIR        : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  CKGEN trigger sensitivity selection This bit is set and cleared by
      --  software. It is used to select the trigger sensitivity of the trigger
      --  signals. This bit is not significant if the CKGMOD = 0. Note: When
      --  the trigger source is TRGO, the sensitivity is forced to falling
      --  edge, thus TRGSENS value is not taken into account. This bit can be
      --  write-protected (seeSection40.4.13 for details).
      TRGSENS        : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Digital filter trigger signal selection This bit field is set and
      --  cleared by software. It is used to select which external signals
      --  trigger the corresponding filter. This bit field is not significant
      --  if the CKGMOD = 0. 000x: TRGO selected Others: Reserved Note: This
      --  bit field can be write-protected (see Section40.4.13 for details).
      TRGSRC         : ADF_CKGCR_TRGSRC_Field := 16#0#;
      --  Divider to control the ADF_CCK clock This bit field is set and reset
      --  by software. It is used to adjust the frequency of the ADF_CCK clock.
      --  The input clock of this divider is the clock provided to the SITF.
      --  More globally, the frequency of the ADF_CCK is given by the following
      --  formula: This bit field must not be changed if the filter is enabled
      --  (DFTEN = 1). ... Note: This bit field can be write-protected (see
      --  Section40.4.13 for details).
      CCKDIV         : ADF_CKGCR_CCKDIV_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Divider to control the serial interface clock This bit field is set
      --  and reset by software. It is used to adjust the frequency of the
      --  clock provided to the SITF. This bit field must not be changed if the
      --  filter is enabled (DFTEN = 1). ... Note: This bit field can be
      --  write-protected (see Section40.4.13 for details).
      PROCDIV        : ADF_CKGCR_PROCDIV_Field := 16#0#;
      --  Read-only. Clock generator active flag This bit is set and cleared by
      --  hardware. Ii is used by the application to check if the clock
      --  generator is effectively enabled (active) or not. The protected
      --  fields of this function can only be updated when CKGACTIVE = 0 (see
      --  Section40.4.13 for details). The delay between a transition on CKGDEN
      --  and a transition on CKGACTIVE is two periods of AHB clock and two 2
      --  periods of adf_proc_ck.
      CKGACTIVE      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADF_CKGCR_Register use record
      CKGDEN         at 0 range 0 .. 0;
      CCK0EN         at 0 range 1 .. 1;
      CCK1EN         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CKGMOD         at 0 range 4 .. 4;
      CCK0DIR        at 0 range 5 .. 5;
      CCK1DIR        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TRGSENS        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      TRGSRC         at 0 range 12 .. 15;
      CCKDIV         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      PROCDIV        at 0 range 24 .. 30;
      CKGACTIVE      at 0 range 31 .. 31;
   end record;

   subtype ADF_SITF0CR_SCKSRC_Field is HAL.UInt2;
   subtype ADF_SITF0CR_SITFMOD_Field is HAL.UInt2;
   subtype ADF_SITF0CR_STH_Field is HAL.UInt5;

   --  ADF serial interface control register 0
   type ADF_SITF0CR_Register is record
      --  Serial interface enable This bit is set and cleared by software. It
      --  is used to enable/disable the serial interface.
      SITFEN         : Boolean := False;
      --  Serial clock source This bit field is set and cleared by software. It
      --  is used to select the clock source of the serial interface. others:
      --  reserved Note: This bit field can be write-protected (see
      --  Section40.4.13 for details).
      SCKSRC         : ADF_SITF0CR_SCKSRC_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Serial interface type This bit field is set and cleared by software.
      --  It is used to define the serial interface type. Note: This bit field
      --  can be write-protected (see Section40.4.13 for details).
      SITFMOD        : ADF_SITF0CR_SITFMOD_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Manchester symbol threshold/SPI threshold This bit field is set and
      --  cleared by software. It is used for Manchester mode to define the
      --  expected symbol threshold levels (see Manchester mode for details on
      --  computation). In addition this bit field is used to define the
      --  timeout value for the clock absence detection in Normal SPI mode.
      --  STH[4:0] values lower than four are invalid. Note: This bit field can
      --  be write-protected (see Section40.4.13 for details).
      STH            : ADF_SITF0CR_STH_Field := 16#1F#;
      --  unspecified
      Reserved_13_30 : HAL.UInt18 := 16#0#;
      --  Read-only. Serial interface active flag This bit is set and cleared
      --  by hardware. It is used by the application to check if the serial
      --  interface is effectively enabled (active) or not. The protected
      --  fields of this function can only be updated when SITFACTIVE is set to
      --  0 (see Section40.4.13 for details). The delay between a transition on
      --  SITFEN and a transition on SITFACTIVE is two periods of AHB clock and
      --  two periods of adf_proc_ck.
      SITFACTIVE     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADF_SITF0CR_Register use record
      SITFEN         at 0 range 0 .. 0;
      SCKSRC         at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SITFMOD        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      STH            at 0 range 8 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      SITFACTIVE     at 0 range 31 .. 31;
   end record;

   subtype ADF_BSMX0CR_BSSEL_Field is HAL.UInt5;

   --  ADF bitstream matrix control register 0
   type ADF_BSMX0CR_Register is record
      --  Bitstream selection This bit field is set and cleared by software. It
      --  is used to select the bitstream to be processed for DFLT0. others:
      --  reserved Note: This bit field can be write-protected (see
      --  Section40.4.13 for details).
      BSSEL         : ADF_BSMX0CR_BSSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_30 : HAL.UInt26 := 16#0#;
      --  Read-only. BSMX active flag This bit is set and cleared by hardware.
      --  It is used by the application to check if the BSMX is effectively
      --  enabled (active) or not. BSSEL[4:0] can only be updated when
      --  BSMXACTIVE is set to 0. This BSMXACTIVE flag cannot go to 0 if DFLT0
      --  is enabled.
      BSMXACTIVE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADF_BSMX0CR_Register use record
      BSSEL         at 0 range 0 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      BSMXACTIVE    at 0 range 31 .. 31;
   end record;

   subtype ADF_DFLT0CR_ACQMOD_Field is HAL.UInt3;
   subtype ADF_DFLT0CR_TRGSRC_Field is HAL.UInt4;
   subtype ADF_DFLT0CR_NBDIS_Field is HAL.UInt8;

   --  ADF digital filter control register 0
   type ADF_DFLT0CR_Register is record
      --  Write-only. DFLT0 enable This bit is set and cleared by software. It
      --  is used to control the start of acquisition of the DFLT0 path. This
      --  bit behavior depends on ACQMOD[2:0] and external events. The serial
      --  or parallel interface delivering the samples must be enabled as well.
      DFLTEN         : Boolean := False;
      --  DMA requests enable This bit is set and cleared by software. It is
      --  used to control the generation of DMA request to transfer the
      --  processed samples into the memory. Note: This bit can be
      --  write-protected (see Section40.4.13 for details).
      DMAEN          : Boolean := False;
      --  RXFIFO threshold selection This bit is set and cleared by software.
      --  It is used to select the RXFIFO threshold. Note: This bit can be
      --  write-protected (see Section40.4.13 for details).
      FTH            : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  DFLT0 trigger mode This bit field is set and cleared by software. It
      --  is used to select the filter trigger mode. Others: Same as 000 Note:
      --  This bit field can be write-protected (see Section40.4.13 for
      --  details)..
      ACQMOD         : ADF_DFLT0CR_ACQMOD_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  DFLT0 trigger sensitivity selection This bit field is set and cleared
      --  by software. It is used to select the trigger sensitivity of the
      --  external signals When the trigger source is TRGO, TRGSENS value is
      --  not taken into account. When TRGO is selected, the sensitivity is
      --  forced to falling edge. Note: This bit can be write-protected (see
      --  Section40.4.13 for details).
      TRGSENS        : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  DFLT0 trigger signal selection This bit field is set and cleared by
      --  software. It is used to select which external signals trigger DFLT0.
      --  Others: Reserved Note: This bit field can be write-protected (see
      --  Section40.4.13 for details).
      TRGSRC         : ADF_DFLT0CR_TRGSRC_Field := 16#0#;
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  Number of samples to be discarded This bit field is set and cleared
      --  by software. It is used to define the number of samples to be
      --  discarded every time DFLT0 is re-started. ... Note: This bit field
      --  can be write-protected (see Section40.4.13 for details).
      NBDIS          : ADF_DFLT0CR_NBDIS_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  Read-only. DFLT0 run status flag This bit is set and cleared by
      --  hardware. It indicates if DFLT0 is running or not.
      DFLTRUN        : Boolean := False;
      --  Read-only. DFLT0 active flag This bit is set and cleared by hardware.
      --  It indicates if DFLT0 is active: can be running or waiting for
      --  events.
      DFLTACTIVE     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADF_DFLT0CR_Register use record
      DFLTEN         at 0 range 0 .. 0;
      DMAEN          at 0 range 1 .. 1;
      FTH            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ACQMOD         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TRGSENS        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      TRGSRC         at 0 range 12 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      NBDIS          at 0 range 20 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DFLTRUN        at 0 range 30 .. 30;
      DFLTACTIVE     at 0 range 31 .. 31;
   end record;

   subtype ADF_DFLT0CICR_DATSRC_Field is HAL.UInt2;
   subtype ADF_DFLT0CICR_CICMOD_Field is HAL.UInt3;
   subtype ADF_DFLT0CICR_MCICD_Field is HAL.UInt8;
   subtype ADF_DFLT0CICR_SCALE_Field is HAL.UInt6;

   --  ADF digital filer configuration register 0
   type ADF_DFLT0CICR_Register is record
      --  Source data for the digital filter This bit field is set and cleared
      --  by software. 0x: Stream coming from the BSMX selected Note: This bit
      --  field can be write-protected (see Section40.4.13 for details).
      DATSRC         : ADF_DFLT0CICR_DATSRC_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Select the CIC order This bit field is set and cleared by software.
      --  It is used to select the order of the MCIC. Others: Reserved Note:
      --  This bit field can be write-protected (see Section40.4.13 for
      --  details).
      CICMOD         : ADF_DFLT0CICR_CICMOD_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  CIC decimation ratio selection This bit field is set and cleared by
      --  software.It is used to select the CIC decimation ratio. Adecimation
      --  ratio smaller than two is not allowed. The decimation ratio is given
      --  by (CICDEC+1). ... Note: This bit field can be write-protected (see
      --  Section40.4.13 for details).
      MCICD          : ADF_DFLT0CICR_MCICD_Field := 16#0#;
      --  CIC decimation ratio selection This bit field is set and cleared by
      --  software.It is used to select the CIC decimation ratio. Adecimation
      --  ratio smaller than two is not allowed. The decimation ratio is given
      --  by (CICDEC+1). ... Note: This bit field can be write-protected (see
      --  Section40.4.13 for details).
      MCICD8         : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Scaling factor selection This bit field is set and cleared by
      --  software. It is used to select the gain to be applied at CIC output
      --  (see Table389 for details). If the application attempts to write a
      --  new gain value while the previous one is not yet applied, this new
      --  gain value is ignored. Reading back this bit field informs the
      --  application on the current gain value. ... ... Others: Reserved
      SCALE          : ADF_DFLT0CICR_SCALE_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADF_DFLT0CICR_Register use record
      DATSRC         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CICMOD         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MCICD          at 0 range 8 .. 15;
      MCICD8         at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      SCALE          at 0 range 20 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype ADF_DFLT0RSFR_HPFC_Field is HAL.UInt2;

   --  ADF reshape filter configuration register 0
   type ADF_DFLT0RSFR_Register is record
      --  Reshaper filter bypass This bit is set and cleared by software. It is
      --  used to bypass the reshape filter and its decimation block. Note:
      --  This bit can be write-protected (see Section40.4.13 for details).
      RSFLTBYP       : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Reshaper filter decimation ratio This bit is set and cleared by
      --  software. It is used to select the decimation ratio for the reshape
      --  filter Note: This bit can be write-protected (see Section40.4.13 for
      --  details).
      RSFLTD         : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  High-pass filter bypass This bit is set and cleared by software. It
      --  is used to bypass the high-pass filter. Note: This bit can be
      --  write-protected (see Section40.4.13 for details).
      HPFBYP         : Boolean := False;
      --  High-pass filter cut-off frequency This bit field is set and cleared
      --  by software. it is used to select the cut-off frequency of the
      --  high-pass filter. FsubPCM/sub represents the sampling frequency at
      --  HPF input. Note: This bit field can be write-protected (see
      --  Section40.4.13 for details).
      HPFC           : ADF_DFLT0RSFR_HPFC_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADF_DFLT0RSFR_Register use record
      RSFLTBYP       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      RSFLTD         at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      HPFBYP         at 0 range 7 .. 7;
      HPFC           at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype ADF_DLY0CR_SKPDLY_Field is HAL.UInt7;

   --  ADF delay control register 0
   type ADF_DLY0CR_Register is record
      --  Delay to apply to a bitstream This bit field is set and cleared by
      --  software. It defines the number of input samples that are skipped.
      --  Skipping is applied immediately after writing to this bit field, if
      --  SKPBF = 0 and DFLTEN=1. If SKPBF = 1, the value written into the
      --  register is ignored by the delay state machine. ...
      SKPDLY        : ADF_DLY0CR_SKPDLY_Field := 16#0#;
      --  unspecified
      Reserved_7_30 : HAL.UInt24 := 16#0#;
      --  Read-only. Skip busy flag This bit is set and cleared by hardware. It
      --  is used to control if the delay sequence is completed.
      SKPBF         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADF_DLY0CR_Register use record
      SKPDLY        at 0 range 0 .. 6;
      Reserved_7_30 at 0 range 7 .. 30;
      SKPBF         at 0 range 31 .. 31;
   end record;

   --  ADF DFLT0 interrupt enable register
   type ADF_DFLT0IER_Register is record
      --  RXFIFO threshold interrupt enable This bit is set and cleared by
      --  software.
      FTHIE          : Boolean := False;
      --  Data overflow interrupt enable This bit is set and cleared by
      --  software.
      DOVRIE         : Boolean := False;
      --  unspecified
      Reserved_2_8   : HAL.UInt7 := 16#0#;
      --  Saturation detection interrupt enable This bit is set and cleared by
      --  software.
      SATIE          : Boolean := False;
      --  Clock absence detection interrupt enable This bit is set and cleared
      --  by software.
      CKABIE         : Boolean := False;
      --  Reshape filter overrun interrupt enable This bit is set and cleared
      --  by software.
      RFOVRIE        : Boolean := False;
      --  Sound activity detection interrupt enable This bit is set and cleared
      --  by software.
      SDDETIE        : Boolean := False;
      --  SAD sound-level value ready enable This bit is set and cleared by
      --  software.
      SDLVLIE        : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADF_DFLT0IER_Register use record
      FTHIE          at 0 range 0 .. 0;
      DOVRIE         at 0 range 1 .. 1;
      Reserved_2_8   at 0 range 2 .. 8;
      SATIE          at 0 range 9 .. 9;
      CKABIE         at 0 range 10 .. 10;
      RFOVRIE        at 0 range 11 .. 11;
      SDDETIE        at 0 range 12 .. 12;
      SDLVLIE        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  ADF DFLT0 interrupt status register 0
   type ADF_DFLT0ISR_Register is record
      --  Read-only. RXFIFO threshold flag This bit is set by hardware, and
      --  cleared by the hardware when the RXFIFO level is lower than the
      --  threshold.
      FTHF           : Boolean := False;
      --  Data overflow flag This bit is set by hardware and cleared by
      --  software by writing this bit to 1.
      DOVRF          : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Read-only. RXFIFO not empty flag This bit is set and cleared by
      --  hardware according to the RXFIFO level.
      RXNEF          : Boolean := False;
      --  unspecified
      Reserved_4_8   : HAL.UInt5 := 16#0#;
      --  Saturation detection flag This bit is set by hardware and cleared by
      --  software by writing this bit to 1.
      SATF           : Boolean := False;
      --  Clock absence detection flag This bit is set by hardware and cleared
      --  by software by writing this bit to 1.
      CKABF          : Boolean := False;
      --  Reshape filter overrun detection flag This bit is set by hardware and
      --  cleared by software by writing this bit to 1.
      RFOVRF         : Boolean := False;
      --  Sound activity detection flag This bit is set by hardware and cleared
      --  by software by writing this bit to 1.
      SDDETF         : Boolean := False;
      --  Sound level value ready flag This bit is set by hardware and cleared
      --  by software by writing this bit to 1.
      SDLVLF         : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADF_DFLT0ISR_Register use record
      FTHF           at 0 range 0 .. 0;
      DOVRF          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      RXNEF          at 0 range 3 .. 3;
      Reserved_4_8   at 0 range 4 .. 8;
      SATF           at 0 range 9 .. 9;
      CKABF          at 0 range 10 .. 10;
      RFOVRF         at 0 range 11 .. 11;
      SDDETF         at 0 range 12 .. 12;
      SDLVLF         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype ADF_SADCR_DATCAP_Field is HAL.UInt2;
   subtype ADF_SADCR_SADST_Field is HAL.UInt2;
   subtype ADF_SADCR_FRSIZE_Field is HAL.UInt3;
   subtype ADF_SADCR_SADMOD_Field is HAL.UInt2;

   --  ADF SAD control register
   type ADF_SADCR_Register is record
      --  Sound activity detector enable This bit is set and cleared by
      --  software. It is used to enable/disable the SAD.
      SADEN          : Boolean := False;
      --  Data capture mode This bit field is set and cleared by software. It
      --  is used to define in which conditions, the samples provided by DLFT0
      --  are stored into the memory. 1x: Samples from DFLT0 transfered into
      --  memory when SAD and DFLT0 are enabled Note: This bit field can be
      --  write-protected (see Section40.4.13 for details).
      DATCAP         : ADF_SADCR_DATCAP_Field := 16#0#;
      --  Sound trigger event configuration This bit is set and cleared by
      --  software. It is used to define if the sddet_evt event is generated
      --  only when the SAD enters to MONITOR state or when the SAD enters or
      --  exits the DETECT state. Note: This bit can be write-protected (see
      --  Section40.4.13 for details).
      DETCFG         : Boolean := False;
      --  Read-only. SAD state This bit field is set and cleared by hardware.
      --  It indicates the SAD state and is meaningful only when SADEN = 1. The
      --  SAD state can be: - LEARN when the SAD is in learning phase or in
      --  SDLVL computation mode - MONITOR when the SAD is in monitoring phase
      --  - DETECT when the SAD detects a sound
      SADST          : ADF_SADCR_SADST_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Hysteresis enable This bit is set and cleared by software. It is used
      --  to enable/disable the hysteresis function (see Table389 for details).
      --  This bit must be kept to 0 when SADMOD[1:0] = 1x. Note: This bit can
      --  be write-protected (see Section40.4.13 for details).
      HYSTEN         : Boolean := False;
      --  Frame size This bit field is set and cleared by software. it is used
      --  to define the size of one frame and also to define how many samples
      --  are taken into account to compute the short-term signal level. 11x:
      --  512 PCM samples used to compute the short-term signal level Note:
      --  This bit field can be write-protected (see Section40.4.13 for
      --  details).
      FRSIZE         : ADF_SADCR_FRSIZE_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  SAD working mode This bit field is set and cleared by software. It is
      --  used to define the way the SAD works. The SAD triggers when the sound
      --  level (SDLVL) is bigger than the defined threshold. In this mode, the
      --  SAD works like a voice activity detector. The SAD triggers when the
      --  sound level (SDLVL) is bigger than the defined threshold. In this
      --  mode, the SAD works like a sound detector. 1x: Threshold value given
      --  by 4 x ANMIN[12:0] The SAD triggers when the estimated ambient noise
      --  (ANLVL), multiplied by the gain selected by SNTHR[3:0] is bigger than
      --  the defined threshold. In this mode, the SAD is working like an
      --  ambient noise estimator. Hysteresis function cannot be used in this
      --  mode. Note: This bit field can be write-protected (see Section40.4.13
      --  for details).
      SADMOD         : ADF_SADCR_SADMOD_Field := 16#0#;
      --  unspecified
      Reserved_14_30 : HAL.UInt17 := 16#0#;
      --  Read-only. SAD Active flag This bit is set and cleared by hardware.
      --  It is used to check if the SAD is effectively enabled (active) or
      --  not. The protected fields and registers of this function can only be
      --  updated when the SADACTIVE is set to 0 (see Section40.4.13 for
      --  details). The delay between a transition on SADEN and a transition on
      --  SADACTIVE is two periods of AHB clock and two periods of adf_proc_ck.
      SADACTIVE      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADF_SADCR_Register use record
      SADEN          at 0 range 0 .. 0;
      DATCAP         at 0 range 1 .. 2;
      DETCFG         at 0 range 3 .. 3;
      SADST          at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      HYSTEN         at 0 range 7 .. 7;
      FRSIZE         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SADMOD         at 0 range 12 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      SADACTIVE      at 0 range 31 .. 31;
   end record;

   subtype ADF_SADCFGR_SNTHR_Field is HAL.UInt4;
   subtype ADF_SADCFGR_ANSLP_Field is HAL.UInt3;
   subtype ADF_SADCFGR_LFRNB_Field is HAL.UInt3;
   subtype ADF_SADCFGR_HGOVR_Field is HAL.UInt3;
   subtype ADF_SADCFGR_ANMIN_Field is HAL.UInt13;

   --  ADF SAD configuration register
   type ADF_SADCFGR_Register is record
      --  Signal to noise threshold This bit field is set and cleared by
      --  software. It is used to define THRsubH /sub(and THRsubL/sub if
      --  hysteresis is enabled). See Table389 for details. others: Reserved
      --  Note: This bit field can be write-protected (see Section40.4.13 for
      --  details).
      SNTHR          : ADF_SADCFGR_SNTHR_Field := 16#0#;
      --  Ambient noise slope control This bit field is set and cleared by
      --  software. It is used to define the positive and negative slope of the
      --  noise estimator, in charge of updating the ANLVL (see Ambient noise
      --  estimation (ANLVL) for information about programming this bit field).
      --  Note: This bit field can be write-protected (see Section40.4.13 for
      --  details).
      ANSLP          : ADF_SADCFGR_ANSLP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Number of learning frames This bit field is set and cleared by
      --  software. It is used to define the number of learning frames to
      --  perform the first estimate of the noise level. 1xx: 32 frames used to
      --  compute the initial noise level Note: This bit field can be
      --  write-protected (see Section40.4.13 for details).
      LFRNB          : ADF_SADCFGR_LFRNB_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Hangover time window This bit field is set and cleared by software.
      --  Once the SAD state is DETECT, this parameter is used to define the
      --  amount of time the sound is allowed to remain below the threshold,
      --  before switching the SAD to MONITOR state (see FRSIZE bit field for
      --  the description of a frame). Note: This bit field can be
      --  write-protected (see Section40.4.13 for details).
      HGOVR          : ADF_SADCFGR_HGOVR_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Minimum noise level This bit field is set and cleared by software. It
      --  is used to define the minimum noise level and then the sensitivity.
      --  It represents a positive number. Note: This bit field can be
      --  write-protected (see Section40.4.13 for details).
      ANMIN          : ADF_SADCFGR_ANMIN_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADF_SADCFGR_Register use record
      SNTHR          at 0 range 0 .. 3;
      ANSLP          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LFRNB          at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      HGOVR          at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      ANMIN          at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ADF_SADSDLVR_SDLVL_Field is HAL.UInt15;

   --  ADF SAD sound level register
   type ADF_SADSDLVR_Register is record
      --  Read-only. Short term sound level This bit field is set by hardware.
      --  It contains the latest sound level computed by the SAD. To refresh
      --  this value, SDLVLF must be cleared.
      SDLVL          : ADF_SADSDLVR_SDLVL_Field;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADF_SADSDLVR_Register use record
      SDLVL          at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype ADF_SADANLVR_ANLVL_Field is HAL.UInt15;

   --  ADF SAD ambient noise level register
   type ADF_SADANLVR_Register is record
      --  Read-only. Ambient noise level estimation This bit field is set by
      --  hardware. It contains the latest ambient noise level computed by the
      --  SAD. To refresh this bit field, the SDLVLF flag must be cleared.
      ANLVL          : ADF_SADANLVR_ANLVL_Field;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADF_SADANLVR_Register use record
      ANLVL          at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype ADF_DFLT0DR_DR_Field is HAL.UInt24;

   --  ADF digital filter data register 0
   type ADF_DFLT0DR_Register is record
      --  unspecified
      Reserved_0_7 : HAL.UInt8;
      --  Read-only. Data processed by DFT0
      DR           : ADF_DFLT0DR_DR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADF_DFLT0DR_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      DR           at 0 range 8 .. 31;
   end record;

   subtype ADF_HWCFGR_FIFO_SIZE_Field is HAL.UInt8;
   subtype ADF_HWCFGR_NBF_Field is HAL.UInt8;
   subtype ADF_HWCFGR_FLT_CFG_Field is HAL.UInt4;
   subtype ADF_HWCFGR_SAD_Field is HAL.UInt4;
   subtype ADF_HWCFGR_OPTION_REGOUT_Field is HAL.UInt8;

   --  ADF hardware configuration register
   type ADF_HWCFGR_Register is record
      --  Read-only. FIFO size for ADF Others: Invalid values
      FIFO_SIZE     : ADF_HWCFGR_FIFO_SIZE_Field;
      --  Read-only. Number of digital filter paths and serial interfaces ...
      --  ...
      NBF           : ADF_HWCFGR_NBF_Field;
      --  Read-only. Digital filter configuration
      FLT_CFG       : ADF_HWCFGR_FLT_CFG_Field;
      --  Read-only. Sound activity detection
      SAD           : ADF_HWCFGR_SAD_Field;
      --  Read-only. Support of ADF_OR register ... Others: Invalid values
      OPTION_REGOUT : ADF_HWCFGR_OPTION_REGOUT_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADF_HWCFGR_Register use record
      FIFO_SIZE     at 0 range 0 .. 7;
      NBF           at 0 range 8 .. 15;
      FLT_CFG       at 0 range 16 .. 19;
      SAD           at 0 range 20 .. 23;
      OPTION_REGOUT at 0 range 24 .. 31;
   end record;

   subtype ADF_VERR_MINREV_Field is HAL.UInt4;
   subtype ADF_VERR_MAJREV_Field is HAL.UInt4;

   --  ADF version register
   type ADF_VERR_Register is record
      --  Read-only. ADF minor revision
      MINREV        : ADF_VERR_MINREV_Field;
      --  Read-only. ADF major revision
      MAJREV        : ADF_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADF_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ADF register block
   type ADF_Peripheral is record
      --  ADF global control register
      ADF_GCR       : aliased ADF_GCR_Register;
      --  ADF clock generator control register
      ADF_CKGCR     : aliased ADF_CKGCR_Register;
      --  ADF serial interface control register 0
      ADF_SITF0CR   : aliased ADF_SITF0CR_Register;
      --  ADF bitstream matrix control register 0
      ADF_BSMX0CR   : aliased ADF_BSMX0CR_Register;
      --  ADF digital filter control register 0
      ADF_DFLT0CR   : aliased ADF_DFLT0CR_Register;
      --  ADF digital filer configuration register 0
      ADF_DFLT0CICR : aliased ADF_DFLT0CICR_Register;
      --  ADF reshape filter configuration register 0
      ADF_DFLT0RSFR : aliased ADF_DFLT0RSFR_Register;
      --  ADF delay control register 0
      ADF_DLY0CR    : aliased ADF_DLY0CR_Register;
      --  ADF DFLT0 interrupt enable register
      ADF_DFLT0IER  : aliased ADF_DFLT0IER_Register;
      --  ADF DFLT0 interrupt status register 0
      ADF_DFLT0ISR  : aliased ADF_DFLT0ISR_Register;
      --  ADF SAD control register
      ADF_SADCR     : aliased ADF_SADCR_Register;
      --  ADF SAD configuration register
      ADF_SADCFGR   : aliased ADF_SADCFGR_Register;
      --  ADF SAD sound level register
      ADF_SADSDLVR  : aliased ADF_SADSDLVR_Register;
      --  ADF SAD ambient noise level register
      ADF_SADANLVR  : aliased ADF_SADANLVR_Register;
      --  ADF digital filter data register 0
      ADF_DFLT0DR   : aliased ADF_DFLT0DR_Register;
      --  ADF hardware configuration register
      ADF_HWCFGR    : aliased ADF_HWCFGR_Register;
      --  ADF version register
      ADF_VERR      : aliased ADF_VERR_Register;
      --  ADF identification register
      ADF_IPIDR     : aliased HAL.UInt32;
      --  ADF size identification register
      ADF_SIDR      : aliased HAL.UInt32;
   end record
     with Volatile;

   for ADF_Peripheral use record
      ADF_GCR       at 16#0# range 0 .. 31;
      ADF_CKGCR     at 16#4# range 0 .. 31;
      ADF_SITF0CR   at 16#80# range 0 .. 31;
      ADF_BSMX0CR   at 16#84# range 0 .. 31;
      ADF_DFLT0CR   at 16#88# range 0 .. 31;
      ADF_DFLT0CICR at 16#8C# range 0 .. 31;
      ADF_DFLT0RSFR at 16#90# range 0 .. 31;
      ADF_DLY0CR    at 16#A4# range 0 .. 31;
      ADF_DFLT0IER  at 16#AC# range 0 .. 31;
      ADF_DFLT0ISR  at 16#B0# range 0 .. 31;
      ADF_SADCR     at 16#B8# range 0 .. 31;
      ADF_SADCFGR   at 16#BC# range 0 .. 31;
      ADF_SADSDLVR  at 16#C0# range 0 .. 31;
      ADF_SADANLVR  at 16#C4# range 0 .. 31;
      ADF_DFLT0DR   at 16#F0# range 0 .. 31;
      ADF_HWCFGR    at 16#FF0# range 0 .. 31;
      ADF_VERR      at 16#FF4# range 0 .. 31;
      ADF_IPIDR     at 16#FF8# range 0 .. 31;
      ADF_SIDR      at 16#FFC# range 0 .. 31;
   end record;

   --  ADF register block
   ADF_Periph : aliased ADF_Peripheral
     with Import, Address => ADF_Base;

   --  ADF register block
   ADF_S_Periph : aliased ADF_Peripheral
     with Import, Address => ADF_S_Base;

end STM32_SVD.ADF;
