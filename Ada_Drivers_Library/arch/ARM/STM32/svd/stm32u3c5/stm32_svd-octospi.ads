--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.OCTOSPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype OCTOSPI_CR_FTHRES_Field is HAL.UInt5;
   subtype OCTOSPI_CR_FMODE_Field is HAL.UInt2;

   --  OCTOSPI control register
   type OCTOSPI_CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Abort request
      ABORT_k        : Boolean := False;
      --  DMA enable
      DMAEN          : Boolean := False;
      --  Timeout counter enable
      TCEN           : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Dual-memory configuration
      DMM            : Boolean := False;
      --  External memory select
      MSEL           : Boolean := False;
      --  FIFO threshold level
      FTHRES         : OCTOSPI_CR_FTHRES_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Transfer error interrupt enable
      TEIE           : Boolean := False;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  FIFO threshold interrupt enable
      FTIE           : Boolean := False;
      --  Status-match interrupt enable
      SMIE           : Boolean := False;
      --  Timeout interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  Automatic status-polling mode stop
      APMS           : Boolean := False;
      --  Polling match mode
      PMM            : Boolean := False;
      --  unspecified
      Reserved_24_27 : HAL.UInt4 := 16#0#;
      --  Functional mode
      FMODE          : OCTOSPI_CR_FMODE_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_CR_Register use record
      EN             at 0 range 0 .. 0;
      ABORT_k        at 0 range 1 .. 1;
      DMAEN          at 0 range 2 .. 2;
      TCEN           at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DMM            at 0 range 6 .. 6;
      MSEL           at 0 range 7 .. 7;
      FTHRES         at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TEIE           at 0 range 16 .. 16;
      TCIE           at 0 range 17 .. 17;
      FTIE           at 0 range 18 .. 18;
      SMIE           at 0 range 19 .. 19;
      TOIE           at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      APMS           at 0 range 22 .. 22;
      PMM            at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      FMODE          at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype OCTOSPI_DCR1_CSHT_Field is HAL.UInt6;
   subtype OCTOSPI_DCR1_DEVSIZE_Field is HAL.UInt5;
   subtype OCTOSPI_DCR1_MTYP_Field is HAL.UInt3;

   --  OCTOSPI device configuration register 1
   type OCTOSPI_DCR1_Register is record
      --  Clock mode 0/mode 3
      CKMODE         : Boolean := False;
      --  Free running clock
      FRCK           : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Delay block bypass
      DLYBYP         : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Chip-select high time
      CSHT           : OCTOSPI_DCR1_CSHT_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Device size
      DEVSIZE        : OCTOSPI_DCR1_DEVSIZE_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Memory type
      MTYP           : OCTOSPI_DCR1_MTYP_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_DCR1_Register use record
      CKMODE         at 0 range 0 .. 0;
      FRCK           at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      DLYBYP         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CSHT           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DEVSIZE        at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      MTYP           at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype OCTOSPI_DCR2_PRESCALER_Field is HAL.UInt8;
   subtype OCTOSPI_DCR2_WRAPSIZE_Field is HAL.UInt3;

   --  OCTOSPI device configuration register 2
   type OCTOSPI_DCR2_Register is record
      --  Clock prescaler
      PRESCALER      : OCTOSPI_DCR2_PRESCALER_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Wrap size
      WRAPSIZE       : OCTOSPI_DCR2_WRAPSIZE_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_DCR2_Register use record
      PRESCALER      at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRAPSIZE       at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype OCTOSPI_DCR3_CSBOUND_Field is HAL.UInt5;

   --  OCTOSPI device configuration register 3
   type OCTOSPI_DCR3_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  NCS boundary
      CSBOUND        : OCTOSPI_DCR3_CSBOUND_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_DCR3_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      CSBOUND        at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype OCTOSPI_SR_FLEVEL_Field is HAL.UInt6;

   --  OCTOSPI status register
   type OCTOSPI_SR_Register is record
      --  Read-only. Transfer error flag
      TEF            : Boolean;
      --  Read-only. Transfer complete flag
      TCF            : Boolean;
      --  Read-only. FIFO threshold flag
      FTF            : Boolean;
      --  Read-only. Status match flag
      SMF            : Boolean;
      --  Read-only. Timeout flag
      TOF            : Boolean;
      --  Read-only. Busy
      BUSY           : Boolean;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. FIFO level
      FLEVEL         : OCTOSPI_SR_FLEVEL_Field;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_SR_Register use record
      TEF            at 0 range 0 .. 0;
      TCF            at 0 range 1 .. 1;
      FTF            at 0 range 2 .. 2;
      SMF            at 0 range 3 .. 3;
      TOF            at 0 range 4 .. 4;
      BUSY           at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FLEVEL         at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  OCTOSPI flag clear register
   type OCTOSPI_FCR_Register is record
      --  Write-only. Clear transfer error flag
      CTEF          : Boolean := False;
      --  Write-only. Clear transfer complete flag
      CTCF          : Boolean := False;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Write-only. Clear status match flag
      CSMF          : Boolean := False;
      --  Write-only. Clear timeout flag
      CTOF          : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_FCR_Register use record
      CTEF          at 0 range 0 .. 0;
      CTCF          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      CSMF          at 0 range 3 .. 3;
      CTOF          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype OCTOSPI_PIR_INTERVAL_Field is HAL.UInt16;

   --  OCTOSPI polling interval register
   type OCTOSPI_PIR_Register is record
      --  Polling interval
      INTERVAL       : OCTOSPI_PIR_INTERVAL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_PIR_Register use record
      INTERVAL       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OCTOSPI_CCR_IMODE_Field is HAL.UInt3;
   subtype OCTOSPI_CCR_ISIZE_Field is HAL.UInt2;
   subtype OCTOSPI_CCR_ADMODE_Field is HAL.UInt3;
   subtype OCTOSPI_CCR_ADSIZE_Field is HAL.UInt2;
   subtype OCTOSPI_CCR_ABMODE_Field is HAL.UInt3;
   subtype OCTOSPI_CCR_ABSIZE_Field is HAL.UInt2;
   subtype OCTOSPI_CCR_DMODE_Field is HAL.UInt3;

   --  OCTOSPI communication configuration register
   type OCTOSPI_CCR_Register is record
      --  Instruction mode
      IMODE          : OCTOSPI_CCR_IMODE_Field := 16#0#;
      --  Instruction double transfer rate
      IDTR           : Boolean := False;
      --  Instruction size
      ISIZE          : OCTOSPI_CCR_ISIZE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Address mode
      ADMODE         : OCTOSPI_CCR_ADMODE_Field := 16#0#;
      --  Address double transfer rate
      ADDTR          : Boolean := False;
      --  Address size
      ADSIZE         : OCTOSPI_CCR_ADSIZE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Alternate-byte mode
      ABMODE         : OCTOSPI_CCR_ABMODE_Field := 16#0#;
      --  Alternate- byte double transfer rate
      ABDTR          : Boolean := False;
      --  Alternate-byte size
      ABSIZE         : OCTOSPI_CCR_ABSIZE_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Data mode
      DMODE          : OCTOSPI_CCR_DMODE_Field := 16#0#;
      --  Data double transfer rate
      DDTR           : Boolean := False;
      --  unspecified
      Reserved_28_28 : HAL.Bit := 16#0#;
      --  DQS enable
      DQSE           : Boolean := False;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Send instruction only once mode
      SIOO           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_CCR_Register use record
      IMODE          at 0 range 0 .. 2;
      IDTR           at 0 range 3 .. 3;
      ISIZE          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADMODE         at 0 range 8 .. 10;
      ADDTR          at 0 range 11 .. 11;
      ADSIZE         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      ABMODE         at 0 range 16 .. 18;
      ABDTR          at 0 range 19 .. 19;
      ABSIZE         at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DMODE          at 0 range 24 .. 26;
      DDTR           at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      DQSE           at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      SIOO           at 0 range 31 .. 31;
   end record;

   subtype OCTOSPI_TCR_DCYC_Field is HAL.UInt5;

   --  OCTOSPI timing configuration register
   type OCTOSPI_TCR_Register is record
      --  Number of dummy cycles
      DCYC           : OCTOSPI_TCR_DCYC_Field := 16#0#;
      --  unspecified
      Reserved_5_27  : HAL.UInt23 := 16#0#;
      --  Delay hold quarter cycle
      DHQC           : Boolean := False;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  Sample shift
      SSHIFT         : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_TCR_Register use record
      DCYC           at 0 range 0 .. 4;
      Reserved_5_27  at 0 range 5 .. 27;
      DHQC           at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      SSHIFT         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OCTOSPI_LPTR_TIMEOUT_Field is HAL.UInt16;

   --  OCTOSPI low-power timeout register
   type OCTOSPI_LPTR_Register is record
      --  Timeout period
      TIMEOUT        : OCTOSPI_LPTR_TIMEOUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_LPTR_Register use record
      TIMEOUT        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OCTOSPI_WPCCR_IMODE_Field is HAL.UInt3;
   subtype OCTOSPI_WPCCR_ISIZE_Field is HAL.UInt2;
   subtype OCTOSPI_WPCCR_ADMODE_Field is HAL.UInt3;
   subtype OCTOSPI_WPCCR_ADSIZE_Field is HAL.UInt2;
   subtype OCTOSPI_WPCCR_ABMODE_Field is HAL.UInt3;
   subtype OCTOSPI_WPCCR_ABSIZE_Field is HAL.UInt2;
   subtype OCTOSPI_WPCCR_DMODE_Field is HAL.UInt3;

   --  OCTOSPI wrap communication configuration register
   type OCTOSPI_WPCCR_Register is record
      --  Instruction mode
      IMODE          : OCTOSPI_WPCCR_IMODE_Field := 16#0#;
      --  Instruction double transfer rate
      IDTR           : Boolean := False;
      --  Instruction size
      ISIZE          : OCTOSPI_WPCCR_ISIZE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Address mode
      ADMODE         : OCTOSPI_WPCCR_ADMODE_Field := 16#0#;
      --  Address double transfer rate
      ADDTR          : Boolean := False;
      --  Address size
      ADSIZE         : OCTOSPI_WPCCR_ADSIZE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Alternate-byte mode
      ABMODE         : OCTOSPI_WPCCR_ABMODE_Field := 16#0#;
      --  Alternate-byte double transfer rate
      ABDTR          : Boolean := False;
      --  Alternate-byte size
      ABSIZE         : OCTOSPI_WPCCR_ABSIZE_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Data mode
      DMODE          : OCTOSPI_WPCCR_DMODE_Field := 16#0#;
      --  Data double transfer rate
      DDTR           : Boolean := False;
      --  unspecified
      Reserved_28_28 : HAL.Bit := 16#0#;
      --  DQS enable
      DQSE           : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_WPCCR_Register use record
      IMODE          at 0 range 0 .. 2;
      IDTR           at 0 range 3 .. 3;
      ISIZE          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADMODE         at 0 range 8 .. 10;
      ADDTR          at 0 range 11 .. 11;
      ADSIZE         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      ABMODE         at 0 range 16 .. 18;
      ABDTR          at 0 range 19 .. 19;
      ABSIZE         at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DMODE          at 0 range 24 .. 26;
      DDTR           at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      DQSE           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype OCTOSPI_WPTCR_DCYC_Field is HAL.UInt5;

   --  OCTOSPI wrap timing configuration register
   type OCTOSPI_WPTCR_Register is record
      --  Number of dummy cycles
      DCYC           : OCTOSPI_WPTCR_DCYC_Field := 16#0#;
      --  unspecified
      Reserved_5_27  : HAL.UInt23 := 16#0#;
      --  Delay hold quarter cycle
      DHQC           : Boolean := False;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  Sample shift
      SSHIFT         : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_WPTCR_Register use record
      DCYC           at 0 range 0 .. 4;
      Reserved_5_27  at 0 range 5 .. 27;
      DHQC           at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      SSHIFT         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OCTOSPI_WCCR_IMODE_Field is HAL.UInt3;
   subtype OCTOSPI_WCCR_ISIZE_Field is HAL.UInt2;
   subtype OCTOSPI_WCCR_ADMODE_Field is HAL.UInt3;
   subtype OCTOSPI_WCCR_ADSIZE_Field is HAL.UInt2;
   subtype OCTOSPI_WCCR_ABMODE_Field is HAL.UInt3;
   subtype OCTOSPI_WCCR_ABSIZE_Field is HAL.UInt2;
   subtype OCTOSPI_WCCR_DMODE_Field is HAL.UInt3;

   --  OCTOSPI write communication configuration register
   type OCTOSPI_WCCR_Register is record
      --  Instruction mode
      IMODE          : OCTOSPI_WCCR_IMODE_Field := 16#0#;
      --  Instruction double transfer rate
      IDTR           : Boolean := False;
      --  Instruction size
      ISIZE          : OCTOSPI_WCCR_ISIZE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Address mode
      ADMODE         : OCTOSPI_WCCR_ADMODE_Field := 16#0#;
      --  Address double transfer rate
      ADDTR          : Boolean := False;
      --  Address size
      ADSIZE         : OCTOSPI_WCCR_ADSIZE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Alternate-byte mode
      ABMODE         : OCTOSPI_WCCR_ABMODE_Field := 16#0#;
      --  Alternate bytes double transfer rate
      ABDTR          : Boolean := False;
      --  Alternate-byte size
      ABSIZE         : OCTOSPI_WCCR_ABSIZE_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Data mode
      DMODE          : OCTOSPI_WCCR_DMODE_Field := 16#0#;
      --  data double transfer rate
      DDTR           : Boolean := False;
      --  unspecified
      Reserved_28_28 : HAL.Bit := 16#0#;
      --  DQS enable
      DQSE           : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_WCCR_Register use record
      IMODE          at 0 range 0 .. 2;
      IDTR           at 0 range 3 .. 3;
      ISIZE          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADMODE         at 0 range 8 .. 10;
      ADDTR          at 0 range 11 .. 11;
      ADSIZE         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      ABMODE         at 0 range 16 .. 18;
      ABDTR          at 0 range 19 .. 19;
      ABSIZE         at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DMODE          at 0 range 24 .. 26;
      DDTR           at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      DQSE           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype OCTOSPI_WTCR_DCYC_Field is HAL.UInt5;

   --  OCTOSPI write timing configuration register
   type OCTOSPI_WTCR_Register is record
      --  Number of dummy cycles
      DCYC          : OCTOSPI_WTCR_DCYC_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_WTCR_Register use record
      DCYC          at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype OCTOSPI_HLCR_TACC_Field is HAL.UInt8;
   subtype OCTOSPI_HLCR_TRWR_Field is HAL.UInt8;

   --  OCTOSPI HyperBus latency configuration register
   type OCTOSPI_HLCR_Register is record
      --  Latency mode
      LM             : Boolean := False;
      --  Write zero latency
      WZL            : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Access time
      TACC           : OCTOSPI_HLCR_TACC_Field := 16#0#;
      --  Read-write minimum recovery time
      TRWR           : OCTOSPI_HLCR_TRWR_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_HLCR_Register use record
      LM             at 0 range 0 .. 0;
      WZL            at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TACC           at 0 range 8 .. 15;
      TRWR           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  OCTOSPI register block
   type OCTOSPI_Peripheral is record
      --  OCTOSPI control register
      OCTOSPI_CR    : aliased OCTOSPI_CR_Register;
      --  OCTOSPI device configuration register 1
      OCTOSPI_DCR1  : aliased OCTOSPI_DCR1_Register;
      --  OCTOSPI device configuration register 2
      OCTOSPI_DCR2  : aliased OCTOSPI_DCR2_Register;
      --  OCTOSPI device configuration register 3
      OCTOSPI_DCR3  : aliased OCTOSPI_DCR3_Register;
      --  OCTOSPI device configuration register 4
      OCTOSPI_DCR4  : aliased HAL.UInt32;
      --  OCTOSPI status register
      OCTOSPI_SR    : aliased OCTOSPI_SR_Register;
      --  OCTOSPI flag clear register
      OCTOSPI_FCR   : aliased OCTOSPI_FCR_Register;
      --  OCTOSPI data length register
      OCTOSPI_DLR   : aliased HAL.UInt32;
      --  OCTOSPI address register
      OCTOSPI_AR    : aliased HAL.UInt32;
      --  OCTOSPI data register
      OCTOSPI_DR    : aliased HAL.UInt32;
      --  OCTOSPI polling status mask register
      OCTOSPI_PSMKR : aliased HAL.UInt32;
      --  OCTOSPI polling status match register
      OCTOSPI_PSMAR : aliased HAL.UInt32;
      --  OCTOSPI polling interval register
      OCTOSPI_PIR   : aliased OCTOSPI_PIR_Register;
      --  OCTOSPI communication configuration register
      OCTOSPI_CCR   : aliased OCTOSPI_CCR_Register;
      --  OCTOSPI timing configuration register
      OCTOSPI_TCR   : aliased OCTOSPI_TCR_Register;
      --  OCTOSPI instruction register
      OCTOSPI_IR    : aliased HAL.UInt32;
      --  OCTOSPI alternate bytes register
      OCTOSPI_ABR   : aliased HAL.UInt32;
      --  OCTOSPI low-power timeout register
      OCTOSPI_LPTR  : aliased OCTOSPI_LPTR_Register;
      --  OCTOSPI wrap communication configuration register
      OCTOSPI_WPCCR : aliased OCTOSPI_WPCCR_Register;
      --  OCTOSPI wrap timing configuration register
      OCTOSPI_WPTCR : aliased OCTOSPI_WPTCR_Register;
      --  OCTOSPI wrap instruction register
      OCTOSPI_WPIR  : aliased HAL.UInt32;
      --  OCTOSPI wrap alternate bytes register
      OCTOSPI_WPABR : aliased HAL.UInt32;
      --  OCTOSPI write communication configuration register
      OCTOSPI_WCCR  : aliased OCTOSPI_WCCR_Register;
      --  OCTOSPI write timing configuration register
      OCTOSPI_WTCR  : aliased OCTOSPI_WTCR_Register;
      --  OCTOSPI write instruction register
      OCTOSPI_WIR   : aliased HAL.UInt32;
      --  OCTOSPI write alternate bytes register
      OCTOSPI_WABR  : aliased HAL.UInt32;
      --  OCTOSPI HyperBus latency configuration register
      OCTOSPI_HLCR  : aliased OCTOSPI_HLCR_Register;
   end record
     with Volatile;

   for OCTOSPI_Peripheral use record
      OCTOSPI_CR    at 16#0# range 0 .. 31;
      OCTOSPI_DCR1  at 16#8# range 0 .. 31;
      OCTOSPI_DCR2  at 16#C# range 0 .. 31;
      OCTOSPI_DCR3  at 16#10# range 0 .. 31;
      OCTOSPI_DCR4  at 16#14# range 0 .. 31;
      OCTOSPI_SR    at 16#20# range 0 .. 31;
      OCTOSPI_FCR   at 16#24# range 0 .. 31;
      OCTOSPI_DLR   at 16#40# range 0 .. 31;
      OCTOSPI_AR    at 16#48# range 0 .. 31;
      OCTOSPI_DR    at 16#50# range 0 .. 31;
      OCTOSPI_PSMKR at 16#80# range 0 .. 31;
      OCTOSPI_PSMAR at 16#88# range 0 .. 31;
      OCTOSPI_PIR   at 16#90# range 0 .. 31;
      OCTOSPI_CCR   at 16#100# range 0 .. 31;
      OCTOSPI_TCR   at 16#108# range 0 .. 31;
      OCTOSPI_IR    at 16#110# range 0 .. 31;
      OCTOSPI_ABR   at 16#120# range 0 .. 31;
      OCTOSPI_LPTR  at 16#130# range 0 .. 31;
      OCTOSPI_WPCCR at 16#140# range 0 .. 31;
      OCTOSPI_WPTCR at 16#148# range 0 .. 31;
      OCTOSPI_WPIR  at 16#150# range 0 .. 31;
      OCTOSPI_WPABR at 16#160# range 0 .. 31;
      OCTOSPI_WCCR  at 16#180# range 0 .. 31;
      OCTOSPI_WTCR  at 16#188# range 0 .. 31;
      OCTOSPI_WIR   at 16#190# range 0 .. 31;
      OCTOSPI_WABR  at 16#1A0# range 0 .. 31;
      OCTOSPI_HLCR  at 16#200# range 0 .. 31;
   end record;

   --  OCTOSPI register block
   OCTOSPI_Periph : aliased OCTOSPI_Peripheral
     with Import, Address => OCTOSPI_Base;

   --  OCTOSPI register block
   SEC_OCTOSPI_Periph : aliased OCTOSPI_Peripheral
     with Import, Address => SEC_OCTOSPI_Base;

end STM32_SVD.OCTOSPI;
