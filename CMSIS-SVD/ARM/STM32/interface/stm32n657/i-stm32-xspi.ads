--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.XSPI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype XSPI_CR_FTHRES_Field is Interfaces.Bit_Types.UInt6;
   subtype XSPI_CR_FMODE_Field is Interfaces.Bit_Types.UInt2;
   subtype XSPI_CR_MSEL_Field is Interfaces.Bit_Types.UInt2;

   --  XSPI control register
   type XSPI_CR_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Abort request
      ABORT_k        : Boolean := False;
      --  DMA enable
      DMAEN          : Boolean := False;
      --  Timeout counter enable
      TCEN           : Boolean := False;
      --  unspecified
      Reserved_4_5   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Dual-memory configuration
      DMM            : Boolean := False;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  FIFO threshold level
      FTHRES         : XSPI_CR_FTHRES_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Transfer error interrupt enable
      TEIE           : Boolean := False;
      --  Transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  FIFO threshold interrupt enable
      FTIE           : Boolean := False;
      --  Status match interrupt enable
      SMIE           : Boolean := False;
      --  Timeout interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_21_21 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Automatic status-polling mode stop
      APMS           : Boolean := False;
      --  Polling match mode
      PMM            : Boolean := False;
      --  chip select selection
      CSSEL          : Boolean := False;
      --  no prefetch data
      NOPREF         : Boolean := False;
      --  no prefetch for signaled AXI transactions
      NOPREF_AXI     : Boolean := False;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Functional mode
      FMODE          : XSPI_CR_FMODE_Field := 16#0#;
      --  Flash select
      MSEL           : XSPI_CR_MSEL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_CR_Register use record
      EN             at 0 range 0 .. 0;
      ABORT_k        at 0 range 1 .. 1;
      DMAEN          at 0 range 2 .. 2;
      TCEN           at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DMM            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      FTHRES         at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      TEIE           at 0 range 16 .. 16;
      TCIE           at 0 range 17 .. 17;
      FTIE           at 0 range 18 .. 18;
      SMIE           at 0 range 19 .. 19;
      TOIE           at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      APMS           at 0 range 22 .. 22;
      PMM            at 0 range 23 .. 23;
      CSSEL          at 0 range 24 .. 24;
      NOPREF         at 0 range 25 .. 25;
      NOPREF_AXI     at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      FMODE          at 0 range 28 .. 29;
      MSEL           at 0 range 30 .. 31;
   end record;

   subtype XSPI_DCR1_CSHT_Field is Interfaces.Bit_Types.UInt6;
   subtype XSPI_DCR1_DEVSIZE_Field is Interfaces.Bit_Types.UInt5;
   subtype XSPI_DCR1_MTYP_Field is Interfaces.Bit_Types.UInt3;

   --  XSPI device configuration register 1
   type XSPI_DCR1_Register is record
      --  Read-only. clock mode 0
      CKMODE         : Boolean := False;
      --  Free running clock
      FRCK           : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Chip-select high time
      CSHT           : XSPI_DCR1_CSHT_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Device size
      DEVSIZE        : XSPI_DCR1_DEVSIZE_Field := 16#0#;
      --  extended memory support
      EXTENDMEM      : Boolean := False;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Memory type
      MTYP           : XSPI_DCR1_MTYP_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_DCR1_Register use record
      CKMODE         at 0 range 0 .. 0;
      FRCK           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      CSHT           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DEVSIZE        at 0 range 16 .. 20;
      EXTENDMEM      at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      MTYP           at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype XSPI_DCR2_PRESCALER_Field is Interfaces.Bit_Types.Byte;
   subtype XSPI_DCR2_WRAPSIZE_Field is Interfaces.Bit_Types.UInt3;

   --  XSPI device configuration register 2
   type XSPI_DCR2_Register is record
      --  Clock prescaler
      PRESCALER      : XSPI_DCR2_PRESCALER_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Wrap size
      WRAPSIZE       : XSPI_DCR2_WRAPSIZE_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_DCR2_Register use record
      PRESCALER      at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRAPSIZE       at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype XSPI_DCR3_MAXTRAN_Field is Interfaces.Bit_Types.Byte;
   subtype XSPI_DCR3_CSBOUND_Field is Interfaces.Bit_Types.UInt5;

   --  XSPI device configuration register 3
   type XSPI_DCR3_Register is record
      --  Maximum transfer
      MAXTRAN        : XSPI_DCR3_MAXTRAN_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  NCS boundary
      CSBOUND        : XSPI_DCR3_CSBOUND_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_DCR3_Register use record
      MAXTRAN        at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CSBOUND        at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype XSPI_SR_FLEVEL_Field is Interfaces.Bit_Types.UInt7;

   --  XSPI status register
   type XSPI_SR_Register is record
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
      Reserved_6_7   : Interfaces.Bit_Types.UInt2;
      --  Read-only. FIFO level
      FLEVEL         : XSPI_SR_FLEVEL_Field;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_SR_Register use record
      TEF            at 0 range 0 .. 0;
      TCF            at 0 range 1 .. 1;
      FTF            at 0 range 2 .. 2;
      SMF            at 0 range 3 .. 3;
      TOF            at 0 range 4 .. 4;
      BUSY           at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FLEVEL         at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  XSPI flag clear register
   type XSPI_FCR_Register is record
      --  Write-only. Clear transfer error flag
      CTEF          : Boolean := False;
      --  Write-only. Clear transfer complete flag
      CTCF          : Boolean := False;
      --  unspecified
      Reserved_2_2  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Clear status match flag
      CSMF          : Boolean := False;
      --  Write-only. Clear timeout flag
      CTOF          : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_FCR_Register use record
      CTEF          at 0 range 0 .. 0;
      CTCF          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      CSMF          at 0 range 3 .. 3;
      CTOF          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype XSPI_PIR_INTERVAL_Field is Interfaces.Bit_Types.UInt16;

   --  XSPI polling interval register
   type XSPI_PIR_Register is record
      --  None
      INTERVAL       : XSPI_PIR_INTERVAL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_PIR_Register use record
      INTERVAL       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype XSPI_CCR_IMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype XSPI_CCR_ISIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype XSPI_CCR_ADMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype XSPI_CCR_ADSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype XSPI_CCR_ABMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype XSPI_CCR_ABSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype XSPI_CCR_DMODE_Field is Interfaces.Bit_Types.UInt3;

   --  XSPI communication configuration register
   type XSPI_CCR_Register is record
      --  Instruction mode
      IMODE          : XSPI_CCR_IMODE_Field := 16#0#;
      --  Instruction double transfer rate
      IDTR           : Boolean := False;
      --  Instruction size
      ISIZE          : XSPI_CCR_ISIZE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Address mode
      ADMODE         : XSPI_CCR_ADMODE_Field := 16#0#;
      --  Address double transfer rate
      ADDTR          : Boolean := False;
      --  Address size
      ADSIZE         : XSPI_CCR_ADSIZE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Alternate-byte mode
      ABMODE         : XSPI_CCR_ABMODE_Field := 16#0#;
      --  Alternate bytes double transfer rate
      ABDTR          : Boolean := False;
      --  Alternate bytes size
      ABSIZE         : XSPI_CCR_ABSIZE_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data mode
      DMODE          : XSPI_CCR_DMODE_Field := 16#0#;
      --  Data double transfer rate
      DDTR           : Boolean := False;
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit := 16#0#;
      --  DQS enable
      DQSE           : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_CCR_Register use record
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

   subtype XSPI_TCR_DCYC_Field is Interfaces.Bit_Types.UInt5;

   --  XSPI timing configuration register
   type XSPI_TCR_Register is record
      --  Number of dummy cycles
      DCYC           : XSPI_TCR_DCYC_Field := 16#0#;
      --  unspecified
      Reserved_5_27  : Interfaces.Bit_Types.UInt23 := 16#0#;
      --  Delay hold quarter cycle
      DHQC           : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Sample shift
      SSHIFT         : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_TCR_Register use record
      DCYC           at 0 range 0 .. 4;
      Reserved_5_27  at 0 range 5 .. 27;
      DHQC           at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      SSHIFT         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype XSPI_LPTR_TIMEOUT_Field is Interfaces.Bit_Types.UInt16;

   --  XSPI low-power timeout register
   type XSPI_LPTR_Register is record
      --  None
      TIMEOUT        : XSPI_LPTR_TIMEOUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_LPTR_Register use record
      TIMEOUT        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype XSPI_WPCCR_IMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype XSPI_WPCCR_ISIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype XSPI_WPCCR_ADMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype XSPI_WPCCR_ADSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype XSPI_WPCCR_ABMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype XSPI_WPCCR_ABSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype XSPI_WPCCR_DMODE_Field is Interfaces.Bit_Types.UInt3;

   --  XSPI wrap communication configuration register
   type XSPI_WPCCR_Register is record
      --  Instruction mode
      IMODE          : XSPI_WPCCR_IMODE_Field := 16#0#;
      --  Instruction double transfer rate
      IDTR           : Boolean := False;
      --  Instruction size
      ISIZE          : XSPI_WPCCR_ISIZE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Address mode
      ADMODE         : XSPI_WPCCR_ADMODE_Field := 16#0#;
      --  Address double transfer rate
      ADDTR          : Boolean := False;
      --  Address size
      ADSIZE         : XSPI_WPCCR_ADSIZE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Alternate-byte mode
      ABMODE         : XSPI_WPCCR_ABMODE_Field := 16#0#;
      --  Alternate bytes double transfer rate
      ABDTR          : Boolean := False;
      --  Alternate bytes size
      ABSIZE         : XSPI_WPCCR_ABSIZE_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data mode
      DMODE          : XSPI_WPCCR_DMODE_Field := 16#0#;
      --  Data double transfer rate
      DDTR           : Boolean := False;
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit := 16#0#;
      --  DQS enable
      DQSE           : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_WPCCR_Register use record
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

   subtype XSPI_WPTCR_DCYC_Field is Interfaces.Bit_Types.UInt5;

   --  XSPI wrap timing configuration register
   type XSPI_WPTCR_Register is record
      --  Number of dummy cycles
      DCYC           : XSPI_WPTCR_DCYC_Field := 16#0#;
      --  unspecified
      Reserved_5_27  : Interfaces.Bit_Types.UInt23 := 16#0#;
      --  Delay hold quarter cycle
      DHQC           : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Sample shift
      SSHIFT         : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_WPTCR_Register use record
      DCYC           at 0 range 0 .. 4;
      Reserved_5_27  at 0 range 5 .. 27;
      DHQC           at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      SSHIFT         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype XSPI_WCCR_IMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype XSPI_WCCR_ISIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype XSPI_WCCR_ADMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype XSPI_WCCR_ADSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype XSPI_WCCR_ABMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype XSPI_WCCR_ABSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype XSPI_WCCR_DMODE_Field is Interfaces.Bit_Types.UInt3;

   --  XSPI write communication configuration register
   type XSPI_WCCR_Register is record
      --  Instruction mode
      IMODE          : XSPI_WCCR_IMODE_Field := 16#0#;
      --  Instruction double transfer rate
      IDTR           : Boolean := False;
      --  Instruction size
      ISIZE          : XSPI_WCCR_ISIZE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Address mode
      ADMODE         : XSPI_WCCR_ADMODE_Field := 16#0#;
      --  Address double transfer rate
      ADDTR          : Boolean := False;
      --  Address size
      ADSIZE         : XSPI_WCCR_ADSIZE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Alternate-byte mode
      ABMODE         : XSPI_WCCR_ABMODE_Field := 16#0#;
      --  Alternate bytes double-transfer rate
      ABDTR          : Boolean := False;
      --  Alternate bytes size
      ABSIZE         : XSPI_WCCR_ABSIZE_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data mode
      DMODE          : XSPI_WCCR_DMODE_Field := 16#0#;
      --  data double transfer rate
      DDTR           : Boolean := False;
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit := 16#0#;
      --  DQS enable
      DQSE           : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_WCCR_Register use record
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

   subtype XSPI_WTCR_DCYC_Field is Interfaces.Bit_Types.UInt5;

   --  XSPI write timing configuration register
   type XSPI_WTCR_Register is record
      --  Number of dummy cycles
      DCYC          : XSPI_WTCR_DCYC_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_WTCR_Register use record
      DCYC          at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype XSPI_HLCR_TACC_Field is Interfaces.Bit_Types.Byte;
   subtype XSPI_HLCR_TRWR_Field is Interfaces.Bit_Types.Byte;

   --  XSPI HyperBus latency configuration register
   type XSPI_HLCR_Register is record
      --  Latency mode
      LM             : Boolean := False;
      --  Write zero latency
      WZL            : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  None
      TACC           : XSPI_HLCR_TACC_Field := 16#0#;
      --  Read write recovery time
      TRWR           : XSPI_HLCR_TRWR_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_HLCR_Register use record
      LM             at 0 range 0 .. 0;
      WZL            at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TACC           at 0 range 8 .. 15;
      TRWR           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype XSPI_CALFCR_FINE_Field is Interfaces.Bit_Types.UInt7;
   subtype XSPI_CALFCR_COARSE_Field is Interfaces.Bit_Types.UInt5;

   --  XSPI full-cycle calibration configuration
   type XSPI_CALFCR_Register is record
      --  Read-only. None
      FINE           : XSPI_CALFCR_FINE_Field;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9;
      --  Read-only. None
      COARSE         : XSPI_CALFCR_COARSE_Field;
      --  unspecified
      Reserved_21_30 : Interfaces.Bit_Types.UInt10;
      --  Read-only. Max value
      CALMAX         : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_CALFCR_Register use record
      FINE           at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      COARSE         at 0 range 16 .. 20;
      Reserved_21_30 at 0 range 21 .. 30;
      CALMAX         at 0 range 31 .. 31;
   end record;

   subtype XSPI_CALMR_FINE_Field is Interfaces.Bit_Types.UInt7;
   subtype XSPI_CALMR_COARSE_Field is Interfaces.Bit_Types.UInt5;

   --  XSPI DLL master calibration configuration
   type XSPI_CALMR_Register is record
      --  None
      FINE           : XSPI_CALMR_FINE_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  None
      COARSE         : XSPI_CALMR_COARSE_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_CALMR_Register use record
      FINE           at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      COARSE         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype XSPI_CALSOR_FINE_Field is Interfaces.Bit_Types.UInt7;
   subtype XSPI_CALSOR_COARSE_Field is Interfaces.Bit_Types.UInt5;

   --  XSPI DLL slave output calibration configuration
   type XSPI_CALSOR_Register is record
      --  None
      FINE           : XSPI_CALSOR_FINE_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  None
      COARSE         : XSPI_CALSOR_COARSE_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_CALSOR_Register use record
      FINE           at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      COARSE         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype XSPI_CALSIR_FINE_Field is Interfaces.Bit_Types.UInt7;
   subtype XSPI_CALSIR_COARSE_Field is Interfaces.Bit_Types.UInt5;

   --  XSPI DLL slave input calibration configuration
   type XSPI_CALSIR_Register is record
      --  None
      FINE           : XSPI_CALSIR_FINE_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  None
      COARSE         : XSPI_CALSIR_COARSE_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPI_CALSIR_Register use record
      FINE           at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      COARSE         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Extended-SPI interface
   type XSPI_Peripheral is record
      --  XSPI control register
      XSPI_CR     : aliased XSPI_CR_Register;
      --  XSPI device configuration register 1
      XSPI_DCR1   : aliased XSPI_DCR1_Register;
      --  XSPI device configuration register 2
      XSPI_DCR2   : aliased XSPI_DCR2_Register;
      --  XSPI device configuration register 3
      XSPI_DCR3   : aliased XSPI_DCR3_Register;
      --  XSPI device configuration register 4
      XSPI_DCR4   : aliased Interfaces.Bit_Types.UInt32;
      --  XSPI status register
      XSPI_SR     : aliased XSPI_SR_Register;
      --  XSPI flag clear register
      XSPI_FCR    : aliased XSPI_FCR_Register;
      --  XSPI data length register
      XSPI_DLR    : aliased Interfaces.Bit_Types.UInt32;
      --  XSPIaddress register
      XSPI_AR     : aliased Interfaces.Bit_Types.UInt32;
      --  XSPI data register
      XSPI_DR     : aliased Interfaces.Bit_Types.UInt32;
      --  XSPI polling status mask register
      XSPI_PSMKR  : aliased Interfaces.Bit_Types.UInt32;
      --  XSPI polling status match register
      XSPI_PSMAR  : aliased Interfaces.Bit_Types.UInt32;
      --  XSPI polling interval register
      XSPI_PIR    : aliased XSPI_PIR_Register;
      --  XSPI communication configuration register
      XSPI_CCR    : aliased XSPI_CCR_Register;
      --  XSPI timing configuration register
      XSPI_TCR    : aliased XSPI_TCR_Register;
      --  XSPI instruction register
      XSPI_IR     : aliased Interfaces.Bit_Types.UInt32;
      --  XSPI alternate bytes register
      XSPI_ABR    : aliased Interfaces.Bit_Types.UInt32;
      --  XSPI low-power timeout register
      XSPI_LPTR   : aliased XSPI_LPTR_Register;
      --  XSPI wrap communication configuration register
      XSPI_WPCCR  : aliased XSPI_WPCCR_Register;
      --  XSPI wrap timing configuration register
      XSPI_WPTCR  : aliased XSPI_WPTCR_Register;
      --  XSPI wrap instruction register
      XSPI_WPIR   : aliased Interfaces.Bit_Types.UInt32;
      --  XSPI wrap alternate byte register
      XSPI_WPABR  : aliased Interfaces.Bit_Types.UInt32;
      --  XSPI write communication configuration register
      XSPI_WCCR   : aliased XSPI_WCCR_Register;
      --  XSPI write timing configuration register
      XSPI_WTCR   : aliased XSPI_WTCR_Register;
      --  XSPI write instruction register
      XSPI_WIR    : aliased Interfaces.Bit_Types.UInt32;
      --  XSPI write alternate byte register
      XSPI_WABR   : aliased Interfaces.Bit_Types.UInt32;
      --  XSPI HyperBus latency configuration register
      XSPI_HLCR   : aliased XSPI_HLCR_Register;
      --  XSPI full-cycle calibration configuration
      XSPI_CALFCR : aliased XSPI_CALFCR_Register;
      --  XSPI DLL master calibration configuration
      XSPI_CALMR  : aliased XSPI_CALMR_Register;
      --  XSPI DLL slave output calibration configuration
      XSPI_CALSOR : aliased XSPI_CALSOR_Register;
      --  XSPI DLL slave input calibration configuration
      XSPI_CALSIR : aliased XSPI_CALSIR_Register;
   end record
     with Volatile;

   for XSPI_Peripheral use record
      XSPI_CR     at 16#0# range 0 .. 31;
      XSPI_DCR1   at 16#8# range 0 .. 31;
      XSPI_DCR2   at 16#C# range 0 .. 31;
      XSPI_DCR3   at 16#10# range 0 .. 31;
      XSPI_DCR4   at 16#14# range 0 .. 31;
      XSPI_SR     at 16#20# range 0 .. 31;
      XSPI_FCR    at 16#24# range 0 .. 31;
      XSPI_DLR    at 16#40# range 0 .. 31;
      XSPI_AR     at 16#48# range 0 .. 31;
      XSPI_DR     at 16#50# range 0 .. 31;
      XSPI_PSMKR  at 16#80# range 0 .. 31;
      XSPI_PSMAR  at 16#88# range 0 .. 31;
      XSPI_PIR    at 16#90# range 0 .. 31;
      XSPI_CCR    at 16#100# range 0 .. 31;
      XSPI_TCR    at 16#108# range 0 .. 31;
      XSPI_IR     at 16#110# range 0 .. 31;
      XSPI_ABR    at 16#120# range 0 .. 31;
      XSPI_LPTR   at 16#130# range 0 .. 31;
      XSPI_WPCCR  at 16#140# range 0 .. 31;
      XSPI_WPTCR  at 16#148# range 0 .. 31;
      XSPI_WPIR   at 16#150# range 0 .. 31;
      XSPI_WPABR  at 16#160# range 0 .. 31;
      XSPI_WCCR   at 16#180# range 0 .. 31;
      XSPI_WTCR   at 16#188# range 0 .. 31;
      XSPI_WIR    at 16#190# range 0 .. 31;
      XSPI_WABR   at 16#1A0# range 0 .. 31;
      XSPI_HLCR   at 16#200# range 0 .. 31;
      XSPI_CALFCR at 16#210# range 0 .. 31;
      XSPI_CALMR  at 16#218# range 0 .. 31;
      XSPI_CALSOR at 16#220# range 0 .. 31;
      XSPI_CALSIR at 16#228# range 0 .. 31;
   end record;

   --  Extended-SPI interface
   XSPI1_Periph : aliased XSPI_Peripheral
     with Import, Address => XSPI1_Base;

   --  Extended-SPI interface
   XSPI1_S_Periph : aliased XSPI_Peripheral
     with Import, Address => XSPI1_S_Base;

   --  Extended-SPI interface
   XSPI2_Periph : aliased XSPI_Peripheral
     with Import, Address => XSPI2_Base;

   --  Extended-SPI interface
   XSPI2_S_Periph : aliased XSPI_Peripheral
     with Import, Address => XSPI2_S_Base;

   --  Extended-SPI interface
   XSPI3_Periph : aliased XSPI_Peripheral
     with Import, Address => XSPI3_Base;

   --  Extended-SPI interface
   XSPI3_S_Periph : aliased XSPI_Peripheral
     with Import, Address => XSPI3_S_Base;

end Interfaces.STM32.XSPI;
