--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.FDCAN is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype FDCAN_CREL_DAY_Field is Interfaces.Bit_Types.Byte;
   subtype FDCAN_CREL_MON_Field is Interfaces.Bit_Types.Byte;
   subtype FDCAN_CREL_YEAR_Field is Interfaces.Bit_Types.UInt4;
   subtype FDCAN_CREL_SUBSTEP_Field is Interfaces.Bit_Types.UInt4;
   subtype FDCAN_CREL_STEP_Field is Interfaces.Bit_Types.UInt4;
   subtype FDCAN_CREL_REL_Field is Interfaces.Bit_Types.UInt4;

   --  FDCAN core release register
   type FDCAN_CREL_Register is record
      --  Read-only. Timestamp day =18
      DAY     : FDCAN_CREL_DAY_Field;
      --  Read-only. Timestamp month = 12
      MON     : FDCAN_CREL_MON_Field;
      --  Read-only. Timestamp year = 4
      YEAR    : FDCAN_CREL_YEAR_Field;
      --  Read-only. Sub-step of core release = 1
      SUBSTEP : FDCAN_CREL_SUBSTEP_Field;
      --  Read-only. Step of core release = 2
      STEP    : FDCAN_CREL_STEP_Field;
      --  Read-only. Core release = 3
      REL     : FDCAN_CREL_REL_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_CREL_Register use record
      DAY     at 0 range 0 .. 7;
      MON     at 0 range 8 .. 15;
      YEAR    at 0 range 16 .. 19;
      SUBSTEP at 0 range 20 .. 23;
      STEP    at 0 range 24 .. 27;
      REL     at 0 range 28 .. 31;
   end record;

   subtype FDCAN_CCU_CREL_DAY_Field is Interfaces.Bit_Types.Byte;
   subtype FDCAN_CCU_CREL_MON_Field is Interfaces.Bit_Types.Byte;
   subtype FDCAN_CCU_CREL_YEAR_Field is Interfaces.Bit_Types.UInt4;
   subtype FDCAN_CCU_CREL_SUBSTEP_Field is Interfaces.Bit_Types.UInt4;
   subtype FDCAN_CCU_CREL_STEP_Field is Interfaces.Bit_Types.UInt4;
   subtype FDCAN_CCU_CREL_REL_Field is Interfaces.Bit_Types.UInt4;

   --  FDCAN core release register
   type FDCAN_CCU_CREL_Register is record
      --  Read-only. Timestamp day = 18
      DAY     : FDCAN_CCU_CREL_DAY_Field;
      --  Read-only. Timestamp month = 12
      MON     : FDCAN_CCU_CREL_MON_Field;
      --  Read-only. Timestamp year =
      YEAR    : FDCAN_CCU_CREL_YEAR_Field;
      --  Read-only. Sub-step of core release = 1
      SUBSTEP : FDCAN_CCU_CREL_SUBSTEP_Field;
      --  Read-only. Step of core release = 1
      STEP    : FDCAN_CCU_CREL_STEP_Field;
      --  Read-only. Core release = 1
      REL     : FDCAN_CCU_CREL_REL_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_CCU_CREL_Register use record
      DAY     at 0 range 0 .. 7;
      MON     at 0 range 8 .. 15;
      YEAR    at 0 range 16 .. 19;
      SUBSTEP at 0 range 20 .. 23;
      STEP    at 0 range 24 .. 27;
      REL     at 0 range 28 .. 31;
   end record;

   subtype FDCAN_CCU_CCFG_TQBT_Field is Interfaces.Bit_Types.UInt5;
   subtype FDCAN_CCU_CCFG_OCPM_Field is Interfaces.Bit_Types.Byte;
   subtype FDCAN_CCU_CCFG_CDIV_Field is Interfaces.Bit_Types.UInt4;

   --  FDCAN Endian register
   type FDCAN_CCU_CCFG_Register is record
      --  Time quanta per bit time
      TQBT           : FDCAN_CCU_CCFG_TQBT_Field := 16#1#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#1#;
      --  Bypass clock calibration
      BCC            : Boolean := False;
      --  Calibration field length
      CFL            : Boolean := False;
      --  Oscillator clock periods minimum
      OCPM           : FDCAN_CCU_CCFG_OCPM_Field := 16#43#;
      --  Clock divider
      CDIV           : FDCAN_CCU_CCFG_CDIV_Field := 16#5#;
      --  unspecified
      Reserved_20_30 : Interfaces.Bit_Types.UInt11 := 16#76#;
      --  Software reset
      SWR            : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_CCU_CCFG_Register use record
      TQBT           at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      BCC            at 0 range 6 .. 6;
      CFL            at 0 range 7 .. 7;
      OCPM           at 0 range 8 .. 15;
      CDIV           at 0 range 16 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      SWR            at 0 range 31 .. 31;
   end record;

   subtype FDCAN_CCU_CSTAT_OCPC_Field is Interfaces.Bit_Types.UInt18;
   subtype FDCAN_CCU_CSTAT_TQC_Field is Interfaces.Bit_Types.UInt11;
   subtype FDCAN_CCU_CSTAT_CALS_Field is Interfaces.Bit_Types.UInt2;

   --  Calibration status register
   type FDCAN_CCU_CSTAT_Register is record
      --  Read-only. Oscillator clock period counter
      OCPC           : FDCAN_CCU_CSTAT_OCPC_Field;
      --  Read-only. Time quanta counter
      TQC            : FDCAN_CCU_CSTAT_TQC_Field;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit;
      --  Read-only. Calibration state
      CALS           : FDCAN_CCU_CSTAT_CALS_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_CCU_CSTAT_Register use record
      OCPC           at 0 range 0 .. 17;
      TQC            at 0 range 18 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      CALS           at 0 range 30 .. 31;
   end record;

   subtype FDCAN_DBTP_DSJW_Field is Interfaces.Bit_Types.UInt4;
   subtype FDCAN_DBTP_DTSEG2_Field is Interfaces.Bit_Types.UInt4;
   subtype FDCAN_DBTP_DTSEG1_Field is Interfaces.Bit_Types.UInt5;
   subtype FDCAN_DBTP_DBRP_Field is Interfaces.Bit_Types.UInt5;

   --  FDCAN data bit timing and prescaler register
   type FDCAN_DBTP_Register is record
      --  Synchronization jump width
      DSJW           : FDCAN_DBTP_DSJW_Field := 16#3#;
      --  Data time segment after sample point
      DTSEG2         : FDCAN_DBTP_DTSEG2_Field := 16#3#;
      --  Data time segment before sample point
      DTSEG1         : FDCAN_DBTP_DTSEG1_Field := 16#A#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data bitrate prescaler
      DBRP           : FDCAN_DBTP_DBRP_Field := 16#0#;
      --  unspecified
      Reserved_21_22 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Transceiver delay compensation
      TDC            : Boolean := False;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_DBTP_Register use record
      DSJW           at 0 range 0 .. 3;
      DTSEG2         at 0 range 4 .. 7;
      DTSEG1         at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DBRP           at 0 range 16 .. 20;
      Reserved_21_22 at 0 range 21 .. 22;
      TDC            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FDCAN_CCU_CWD_WDC_Field is Interfaces.Bit_Types.UInt16;
   subtype FDCAN_CCU_CWD_WDV_Field is Interfaces.Bit_Types.UInt16;

   --  FDCAN data bit timing and prescaler register
   type FDCAN_CCU_CWD_Register is record
      --  WDC
      WDC : FDCAN_CCU_CWD_WDC_Field := 16#A33#;
      --  Read-only. Watchdog value
      WDV : FDCAN_CCU_CWD_WDV_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_CCU_CWD_Register use record
      WDC at 0 range 0 .. 15;
      WDV at 0 range 16 .. 31;
   end record;

   subtype FDCAN_TEST_TX_Field is Interfaces.Bit_Types.UInt2;

   --  FDCAN test register
   type FDCAN_TEST_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Loop back mode
      LBCK          : Boolean := False;
      --  Control of transmit pin
      TX            : FDCAN_TEST_TX_Field := 16#0#;
      --  Read-only. Receive pin
      RX            : Boolean := False;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TEST_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      LBCK          at 0 range 4 .. 4;
      TX            at 0 range 5 .. 6;
      RX            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  FDCAN test register
   type FDCAN_CCU_IR_Register is record
      --  Calibration watchdog event
      CWE           : Boolean := False;
      --  Calibration state changed
      CSC           : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_CCU_IR_Register use record
      CWE           at 0 range 0 .. 0;
      CSC           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FDCAN_RWD_WDC_Field is Interfaces.Bit_Types.Byte;
   subtype FDCAN_RWD_WDV_Field is Interfaces.Bit_Types.Byte;

   --  FDCAN RAM watchdog register
   type FDCAN_RWD_Register is record
      --  Watchdog configuration
      WDC            : FDCAN_RWD_WDC_Field := 16#0#;
      --  Read-only. Watchdog value
      WDV            : FDCAN_RWD_WDV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RWD_Register use record
      WDC            at 0 range 0 .. 7;
      WDV            at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  FDCAN RAM watchdog register
   type FDCAN_CCU_IE_Register is record
      --  Calibration watchdog event enable
      CWEE          : Boolean := False;
      --  Calibration state changed enable
      CSCE          : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_CCU_IE_Register use record
      CWEE          at 0 range 0 .. 0;
      CSCE          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  FDCAN CC control register
   type FDCAN_CCCR_Register is record
      --  Initialization
      INIT           : Boolean := True;
      --  Configuration change enable
      CCE            : Boolean := False;
      --  ASM restricted operation mode
      ASM            : Boolean := False;
      --  Read-only. Clock stop acknowledge
      CSA            : Boolean := False;
      --  Clock stop request
      CSR            : Boolean := False;
      --  Bus monitoring mode
      MON            : Boolean := False;
      --  Disable automatic retransmission
      DAR            : Boolean := False;
      --  Test mode enable
      TEST           : Boolean := False;
      --  FD operation enable
      FDOE           : Boolean := False;
      --  FDCAN bitrate switching
      BRSE           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Protocol exception handling disable
      PXHD           : Boolean := False;
      --  Edge filtering during bus integration
      EFBI           : Boolean := False;
      --  If this bit is set, the FDCAN pauses for two CAN bit times before
      --  starting the next transmission after successfully transmitting a
      --  frame.
      TXP            : Boolean := False;
      --  Non ISO operation
      NISO           : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_CCCR_Register use record
      INIT           at 0 range 0 .. 0;
      CCE            at 0 range 1 .. 1;
      ASM            at 0 range 2 .. 2;
      CSA            at 0 range 3 .. 3;
      CSR            at 0 range 4 .. 4;
      MON            at 0 range 5 .. 5;
      DAR            at 0 range 6 .. 6;
      TEST           at 0 range 7 .. 7;
      FDOE           at 0 range 8 .. 8;
      BRSE           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      PXHD           at 0 range 12 .. 12;
      EFBI           at 0 range 13 .. 13;
      TXP            at 0 range 14 .. 14;
      NISO           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FDCAN_NBTP_NTSEG2_Field is Interfaces.Bit_Types.UInt7;
   subtype FDCAN_NBTP_NTSEG1_Field is Interfaces.Bit_Types.Byte;
   subtype FDCAN_NBTP_NBRP_Field is Interfaces.Bit_Types.UInt9;
   subtype FDCAN_NBTP_NSJW_Field is Interfaces.Bit_Types.UInt7;

   --  FDCAN nominal bit timing and prescaler register
   type FDCAN_NBTP_Register is record
      --  Nominal time segment after sample point
      NTSEG2       : FDCAN_NBTP_NTSEG2_Field := 16#3#;
      --  unspecified
      Reserved_7_7 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Nominal time segment before sample point
      NTSEG1       : FDCAN_NBTP_NTSEG1_Field := 16#A#;
      --  Bitrate prescaler
      NBRP         : FDCAN_NBTP_NBRP_Field := 16#0#;
      --  Nominal (re)synchronization jump width
      NSJW         : FDCAN_NBTP_NSJW_Field := 16#3#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_NBTP_Register use record
      NTSEG2       at 0 range 0 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      NTSEG1       at 0 range 8 .. 15;
      NBRP         at 0 range 16 .. 24;
      NSJW         at 0 range 25 .. 31;
   end record;

   subtype FDCAN_TSCC_TSS_Field is Interfaces.Bit_Types.UInt2;
   subtype FDCAN_TSCC_TCP_Field is Interfaces.Bit_Types.UInt4;

   --  FDCAN timestamp counter configuration register
   type FDCAN_TSCC_Register is record
      --  Timestamp select
      TSS            : FDCAN_TSCC_TSS_Field := 16#0#;
      --  unspecified
      Reserved_2_15  : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Timestamp counter prescaler
      TCP            : FDCAN_TSCC_TCP_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TSCC_Register use record
      TSS            at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      TCP            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype FDCAN_TSCV_TSC_Field is Interfaces.Bit_Types.UInt16;

   --  FDCAN timestamp counter value register
   type FDCAN_TSCV_Register is record
      --  Timestamp counter
      TSC            : FDCAN_TSCV_TSC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TSCV_Register use record
      TSC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FDCAN_TOCC_TOS_Field is Interfaces.Bit_Types.UInt2;
   subtype FDCAN_TOCC_TOP_Field is Interfaces.Bit_Types.UInt16;

   --  FDCAN timeout counter configuration register
   type FDCAN_TOCC_Register is record
      --  Enable timeout counter
      ETOC          : Boolean := False;
      --  Timeout select
      TOS           : FDCAN_TOCC_TOS_Field := 16#0#;
      --  unspecified
      Reserved_3_15 : Interfaces.Bit_Types.UInt13 := 16#0#;
      --  Timeout period
      TOP           : FDCAN_TOCC_TOP_Field := 16#FFFF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TOCC_Register use record
      ETOC          at 0 range 0 .. 0;
      TOS           at 0 range 1 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
      TOP           at 0 range 16 .. 31;
   end record;

   subtype FDCAN_TOCV_TOC_Field is Interfaces.Bit_Types.UInt16;

   --  FDCAN timeout counter value register
   type FDCAN_TOCV_Register is record
      --  Timeout counter
      TOC            : FDCAN_TOCV_TOC_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TOCV_Register use record
      TOC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FDCAN_ECR_TEC_Field is Interfaces.Bit_Types.Byte;
   subtype FDCAN_ECR_REC_Field is Interfaces.Bit_Types.UInt7;
   subtype FDCAN_ECR_CEL_Field is Interfaces.Bit_Types.Byte;

   --  FDCAN error counter register
   type FDCAN_ECR_Register is record
      --  Read-only. Transmit error counter
      TEC            : FDCAN_ECR_TEC_Field := 16#0#;
      --  Read-only. Receive error counter
      REC            : FDCAN_ECR_REC_Field := 16#0#;
      --  Read-only. Receive error passive
      RP             : Boolean := False;
      --  CAN error logging
      CEL            : FDCAN_ECR_CEL_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_ECR_Register use record
      TEC            at 0 range 0 .. 7;
      REC            at 0 range 8 .. 14;
      RP             at 0 range 15 .. 15;
      CEL            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FDCAN_PSR_LEC_Field is Interfaces.Bit_Types.UInt3;
   subtype FDCAN_PSR_ACT_Field is Interfaces.Bit_Types.UInt2;
   subtype FDCAN_PSR_DLEC_Field is Interfaces.Bit_Types.UInt3;
   subtype FDCAN_PSR_TDCV_Field is Interfaces.Bit_Types.UInt7;

   --  FDCAN protocol status register
   type FDCAN_PSR_Register is record
      --  Read-only. Last error code
      LEC            : FDCAN_PSR_LEC_Field := 16#7#;
      --  Read-only. Activity
      ACT            : FDCAN_PSR_ACT_Field := 16#0#;
      --  Read-only. Error passive
      EP             : Boolean := False;
      --  Read-only. Warning status
      EW             : Boolean := False;
      --  Read-only. Bus_Off status
      BO             : Boolean := False;
      --  Read-only. Data last error code
      DLEC           : FDCAN_PSR_DLEC_Field := 16#7#;
      --  ESI flag of last received FDCAN message
      RESI           : Boolean := False;
      --  BRS flag of last received FDCAN message
      RBRS           : Boolean := False;
      --  Received FDCAN message
      REDL           : Boolean := False;
      --  Protocol exception event
      PXE            : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Transmitter delay compensation value
      TDCV           : FDCAN_PSR_TDCV_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_PSR_Register use record
      LEC            at 0 range 0 .. 2;
      ACT            at 0 range 3 .. 4;
      EP             at 0 range 5 .. 5;
      EW             at 0 range 6 .. 6;
      BO             at 0 range 7 .. 7;
      DLEC           at 0 range 8 .. 10;
      RESI           at 0 range 11 .. 11;
      RBRS           at 0 range 12 .. 12;
      REDL           at 0 range 13 .. 13;
      PXE            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TDCV           at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype FDCAN_TDCR_TDCF_Field is Interfaces.Bit_Types.UInt7;
   subtype FDCAN_TDCR_TDCO_Field is Interfaces.Bit_Types.UInt7;

   --  FDCAN transmitter delay compensation register
   type FDCAN_TDCR_Register is record
      --  Transmitter delay compensation filter window length
      TDCF           : FDCAN_TDCR_TDCF_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Transmitter delay compensation offset
      TDCO           : FDCAN_TDCR_TDCO_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TDCR_Register use record
      TDCF           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TDCO           at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  FDCAN interrupt register
   type FDCAN_IR_Register is record
      --  Rx FIFO 0 New message
      RF0N           : Boolean := False;
      --  Rx FIFO 0 watermark reached
      RF0W           : Boolean := False;
      --  Rx FIFO 0 full
      RF0F           : Boolean := False;
      --  Rx FIFO 0 message lost
      RF0L           : Boolean := False;
      --  Rx FIFO 1 new message
      RF1N           : Boolean := False;
      --  Rx FIFO 1 watermark reached
      RF1W           : Boolean := False;
      --  Rx FIFO 1 full
      RF1F           : Boolean := False;
      --  Rx FIFO 1 message lost
      RF1L           : Boolean := False;
      --  High priority message
      HPM            : Boolean := False;
      --  Transmission completed
      TC             : Boolean := False;
      --  Transmission cancellation finished
      TCF            : Boolean := False;
      --  Tx FIFO empty
      TFE            : Boolean := False;
      --  Tx event FIFO new entry
      TEFN           : Boolean := False;
      --  Tx event FIFO watermark reached
      TEFW           : Boolean := False;
      --  Tx event FIFO full
      TEFF           : Boolean := False;
      --  Tx event FIFO element lost
      TEFL           : Boolean := False;
      --  Timestamp wraparound
      TSW            : Boolean := False;
      --  Message RAM access failure
      MRAF           : Boolean := False;
      --  Timeout occurred
      TOO            : Boolean := False;
      --  Message stored to dedicated Rx buffer
      DRX            : Boolean := False;
      --  unspecified
      Reserved_20_21 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Error logging overflow
      ELO            : Boolean := False;
      --  Error passive
      EP             : Boolean := False;
      --  Warning status
      EW             : Boolean := False;
      --  Bus_Off status
      BO             : Boolean := False;
      --  Watchdog interrupt
      WDI            : Boolean := False;
      --  Protocol error in arbitration phase (nominal bit time is used)
      PEA            : Boolean := False;
      --  Protocol error in data phase (data bit time is used)
      PED            : Boolean := False;
      --  Access to reserved address
      ARA            : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_IR_Register use record
      RF0N           at 0 range 0 .. 0;
      RF0W           at 0 range 1 .. 1;
      RF0F           at 0 range 2 .. 2;
      RF0L           at 0 range 3 .. 3;
      RF1N           at 0 range 4 .. 4;
      RF1W           at 0 range 5 .. 5;
      RF1F           at 0 range 6 .. 6;
      RF1L           at 0 range 7 .. 7;
      HPM            at 0 range 8 .. 8;
      TC             at 0 range 9 .. 9;
      TCF            at 0 range 10 .. 10;
      TFE            at 0 range 11 .. 11;
      TEFN           at 0 range 12 .. 12;
      TEFW           at 0 range 13 .. 13;
      TEFF           at 0 range 14 .. 14;
      TEFL           at 0 range 15 .. 15;
      TSW            at 0 range 16 .. 16;
      MRAF           at 0 range 17 .. 17;
      TOO            at 0 range 18 .. 18;
      DRX            at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      ELO            at 0 range 22 .. 22;
      EP             at 0 range 23 .. 23;
      EW             at 0 range 24 .. 24;
      BO             at 0 range 25 .. 25;
      WDI            at 0 range 26 .. 26;
      PEA            at 0 range 27 .. 27;
      PED            at 0 range 28 .. 28;
      ARA            at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  FDCAN interrupt enable register
   type FDCAN_IE_Register is record
      --  Rx FIFO 0 new message interrupt enable
      RF0NE          : Boolean := False;
      --  Rx FIFO 0 watermark reached interrupt enable
      RF0WE          : Boolean := False;
      --  Rx FIFO 0 full interrupt enable
      RF0FE          : Boolean := False;
      --  Rx FIFO 0 message lost interrupt enable
      RF0LE          : Boolean := False;
      --  Rx FIFO 1 new message interrupt enable
      RF1NE          : Boolean := False;
      --  Rx FIFO 1 watermark reached interrupt enable
      RF1WE          : Boolean := False;
      --  Rx FIFO 1 full interrupt enable
      RF1FE          : Boolean := False;
      --  Rx FIFO 1 message lost interrupt enable
      RF1LE          : Boolean := False;
      --  High priority message interrupt enable
      HPME           : Boolean := False;
      --  Transmission completed interrupt enable
      TCE            : Boolean := False;
      --  Transmission cancellation finished interrupt enable
      TCFE           : Boolean := False;
      --  Tx FIFO empty interrupt enable
      TFEE           : Boolean := False;
      --  Tx event FIFO new entry interrupt enable
      TEFNE          : Boolean := False;
      --  Tx event FIFO watermark reached interrupt enable
      TEFWE          : Boolean := False;
      --  Tx event FIFO full interrupt enable
      TEFFE          : Boolean := False;
      --  Tx event FIFO element lost interrupt enable
      TEFLE          : Boolean := False;
      --  Timestamp wraparound interrupt enable
      TSWE           : Boolean := False;
      --  Message RAM access failure interrupt enable
      MRAFE          : Boolean := False;
      --  Timeout occurred interrupt enable
      TOOE           : Boolean := False;
      --  Message stored to dedicated Rx buffer interrupt enable
      DRXE           : Boolean := False;
      --  unspecified
      Reserved_20_21 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Error logging overflow interrupt enable
      ELOE           : Boolean := False;
      --  Error passive interrupt enable
      EPE            : Boolean := False;
      --  Warning status interrupt enable
      EWE            : Boolean := False;
      --  Bus_Off status
      BOE            : Boolean := False;
      --  Watchdog interrupt enable
      WDIE           : Boolean := False;
      --  Protocol error in Arbitration phase enable
      PEAE           : Boolean := False;
      --  Protocol error in data phase enable
      PEDE           : Boolean := False;
      --  Access to Reserved address enable
      ARAE           : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_IE_Register use record
      RF0NE          at 0 range 0 .. 0;
      RF0WE          at 0 range 1 .. 1;
      RF0FE          at 0 range 2 .. 2;
      RF0LE          at 0 range 3 .. 3;
      RF1NE          at 0 range 4 .. 4;
      RF1WE          at 0 range 5 .. 5;
      RF1FE          at 0 range 6 .. 6;
      RF1LE          at 0 range 7 .. 7;
      HPME           at 0 range 8 .. 8;
      TCE            at 0 range 9 .. 9;
      TCFE           at 0 range 10 .. 10;
      TFEE           at 0 range 11 .. 11;
      TEFNE          at 0 range 12 .. 12;
      TEFWE          at 0 range 13 .. 13;
      TEFFE          at 0 range 14 .. 14;
      TEFLE          at 0 range 15 .. 15;
      TSWE           at 0 range 16 .. 16;
      MRAFE          at 0 range 17 .. 17;
      TOOE           at 0 range 18 .. 18;
      DRXE           at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      ELOE           at 0 range 22 .. 22;
      EPE            at 0 range 23 .. 23;
      EWE            at 0 range 24 .. 24;
      BOE            at 0 range 25 .. 25;
      WDIE           at 0 range 26 .. 26;
      PEAE           at 0 range 27 .. 27;
      PEDE           at 0 range 28 .. 28;
      ARAE           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  FDCAN interrupt line select register
   type FDCAN_ILS_Register is record
      --  Rx FIFO 0 new message interrupt line
      RF0NL          : Boolean := False;
      --  Rx FIFO 0 watermark reached interrupt line
      RF0WL          : Boolean := False;
      --  Rx FIFO 0 full interrupt line
      RF0FL          : Boolean := False;
      --  Rx FIFO 0 message lost interrupt line
      RF0LL          : Boolean := False;
      --  Rx FIFO 1 new message interrupt line
      RF1NL          : Boolean := False;
      --  Rx FIFO 1 watermark reached interrupt line
      RF1WL          : Boolean := False;
      --  Rx FIFO 1 full interrupt line
      RF1FL          : Boolean := False;
      --  Rx FIFO 1 message lost interrupt line
      RF1LL          : Boolean := False;
      --  High priority message interrupt line
      HPML           : Boolean := False;
      --  Transmission completed interrupt line
      TCL            : Boolean := False;
      --  Transmission cancellation finished interrupt line
      TCFL           : Boolean := False;
      --  Tx FIFO empty interrupt line
      TFEL           : Boolean := False;
      --  Tx event FIFO new entry interrupt line
      TEFNL          : Boolean := False;
      --  Tx event FIFO watermark reached interrupt line
      TEFWL          : Boolean := False;
      --  Tx event FIFO full interrupt line
      TEFFL          : Boolean := False;
      --  Tx event FIFO element Lost interrupt line
      TEFLL          : Boolean := False;
      --  Timestamp wraparound interrupt line
      TSWL           : Boolean := False;
      --  Message RAM access failure interrupt line
      MRAFL          : Boolean := False;
      --  Timeout occurred interrupt line
      TOOL           : Boolean := False;
      --  Message stored to dedicated Rx buffer interrupt line
      DRXL           : Boolean := False;
      --  unspecified
      Reserved_20_21 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Error logging overflow interrupt line
      ELOL           : Boolean := False;
      --  Error passive interrupt line
      EPL            : Boolean := False;
      --  Warning status interrupt line
      EWL            : Boolean := False;
      --  Bus_Off status
      BOL            : Boolean := False;
      --  Watchdog interrupt line
      WDIL           : Boolean := False;
      --  Protocol error in arbitration phase line
      PEAL           : Boolean := False;
      --  Protocol error in data phase line
      PEDL           : Boolean := False;
      --  Access to reserved address line
      ARAL           : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_ILS_Register use record
      RF0NL          at 0 range 0 .. 0;
      RF0WL          at 0 range 1 .. 1;
      RF0FL          at 0 range 2 .. 2;
      RF0LL          at 0 range 3 .. 3;
      RF1NL          at 0 range 4 .. 4;
      RF1WL          at 0 range 5 .. 5;
      RF1FL          at 0 range 6 .. 6;
      RF1LL          at 0 range 7 .. 7;
      HPML           at 0 range 8 .. 8;
      TCL            at 0 range 9 .. 9;
      TCFL           at 0 range 10 .. 10;
      TFEL           at 0 range 11 .. 11;
      TEFNL          at 0 range 12 .. 12;
      TEFWL          at 0 range 13 .. 13;
      TEFFL          at 0 range 14 .. 14;
      TEFLL          at 0 range 15 .. 15;
      TSWL           at 0 range 16 .. 16;
      MRAFL          at 0 range 17 .. 17;
      TOOL           at 0 range 18 .. 18;
      DRXL           at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      ELOL           at 0 range 22 .. 22;
      EPL            at 0 range 23 .. 23;
      EWL            at 0 range 24 .. 24;
      BOL            at 0 range 25 .. 25;
      WDIL           at 0 range 26 .. 26;
      PEAL           at 0 range 27 .. 27;
      PEDL           at 0 range 28 .. 28;
      ARAL           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  FDCAN_ILE_EINT array
   type FDCAN_ILE_EINT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FDCAN_ILE_EINT
   type FDCAN_ILE_EINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EINT as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  EINT as an array
            Arr : FDCAN_ILE_EINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FDCAN_ILE_EINT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  FDCAN interrupt line enable register
   type FDCAN_ILE_Register is record
      --  Enable interrupt line 0
      EINT          : FDCAN_ILE_EINT_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_ILE_Register use record
      EINT          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FDCAN_GFC_ANFE_Field is Interfaces.Bit_Types.UInt2;
   subtype FDCAN_GFC_ANFS_Field is Interfaces.Bit_Types.UInt2;

   --  FDCAN global filter configuration register
   type FDCAN_GFC_Register is record
      --  Reject remote frames extended
      RRFE          : Boolean := False;
      --  Reject remote frames standard
      RRFS          : Boolean := False;
      --  Accept non-matching frames extended
      ANFE          : FDCAN_GFC_ANFE_Field := 16#0#;
      --  Accept non-matching frames standard
      ANFS          : FDCAN_GFC_ANFS_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_GFC_Register use record
      RRFE          at 0 range 0 .. 0;
      RRFS          at 0 range 1 .. 1;
      ANFE          at 0 range 2 .. 3;
      ANFS          at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype FDCAN_SIDFC_FLSSA_Field is Interfaces.Bit_Types.UInt14;
   subtype FDCAN_SIDFC_LSS_Field is Interfaces.Bit_Types.Byte;

   --  FDCAN standard ID filter configuration register
   type FDCAN_SIDFC_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Filter list standard start address
      FLSSA          : FDCAN_SIDFC_FLSSA_Field := 16#0#;
      --  List size standard
      LSS            : FDCAN_SIDFC_LSS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_SIDFC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      FLSSA          at 0 range 2 .. 15;
      LSS            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FDCAN_XIDFC_FLESA_Field is Interfaces.Bit_Types.UInt14;
   subtype FDCAN_XIDFC_LSE_Field is Interfaces.Bit_Types.Byte;

   --  FDCAN extended ID filter configuration register
   type FDCAN_XIDFC_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Filter list extended start address
      FLESA          : FDCAN_XIDFC_FLESA_Field := 16#0#;
      --  List size extended
      LSE            : FDCAN_XIDFC_LSE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_XIDFC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      FLESA          at 0 range 2 .. 15;
      LSE            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FDCAN_XIDAM_EIDM_Field is Interfaces.Bit_Types.UInt29;

   --  FDCAN extended ID and mask register
   type FDCAN_XIDAM_Register is record
      --  Extended ID Mask
      EIDM           : FDCAN_XIDAM_EIDM_Field := 16#1FFFFFFF#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_XIDAM_Register use record
      EIDM           at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype FDCAN_HPMS_BIDX_Field is Interfaces.Bit_Types.UInt6;
   subtype FDCAN_HPMS_MSI_Field is Interfaces.Bit_Types.UInt2;
   subtype FDCAN_HPMS_FIDX_Field is Interfaces.Bit_Types.UInt7;

   --  FDCAN high priority message status register
   type FDCAN_HPMS_Register is record
      --  Read-only. Buffer index
      BIDX           : FDCAN_HPMS_BIDX_Field;
      --  Read-only. Message storage indicator
      MSI            : FDCAN_HPMS_MSI_Field;
      --  Read-only. Filter index
      FIDX           : FDCAN_HPMS_FIDX_Field;
      --  Read-only. Filter list
      FLST           : Boolean;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_HPMS_Register use record
      BIDX           at 0 range 0 .. 5;
      MSI            at 0 range 6 .. 7;
      FIDX           at 0 range 8 .. 14;
      FLST           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  FDCAN_NDAT1_ND array
   type FDCAN_NDAT1_ND_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  FDCAN new data 1 register
   type FDCAN_NDAT1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ND as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  ND as an array
            Arr : FDCAN_NDAT1_ND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_NDAT1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  FDCAN_NDAT2_ND array
   type FDCAN_NDAT2_ND_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  FDCAN new data 2 register
   type FDCAN_NDAT2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ND as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  ND as an array
            Arr : FDCAN_NDAT2_ND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_NDAT2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype FDCAN_RXF0C_F0SA_Field is Interfaces.Bit_Types.UInt14;
   subtype FDCAN_RXF0C_F0S_Field is Interfaces.Bit_Types.UInt7;
   subtype FDCAN_RXF0C_F0WM_Field is Interfaces.Bit_Types.UInt7;

   --  FDCAN Rx FIFO 0 configuration register
   type FDCAN_RXF0C_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Rx FIFO 0 start address
      F0SA           : FDCAN_RXF0C_F0SA_Field := 16#0#;
      --  Rx FIFO 0 size
      F0S            : FDCAN_RXF0C_F0S_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  FIFO 0 watermark
      F0WM           : FDCAN_RXF0C_F0WM_Field := 16#0#;
      --  FIFO 0 operation mode
      F0OM           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RXF0C_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      F0SA           at 0 range 2 .. 15;
      F0S            at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      F0WM           at 0 range 24 .. 30;
      F0OM           at 0 range 31 .. 31;
   end record;

   subtype FDCAN_RXF0S_F0FL_Field is Interfaces.Bit_Types.UInt7;
   subtype FDCAN_RXF0S_F0GI_Field is Interfaces.Bit_Types.UInt6;
   subtype FDCAN_RXF0S_F0PI_Field is Interfaces.Bit_Types.UInt6;

   --  FDCAN Rx FIFO 0 status register
   type FDCAN_RXF0S_Register is record
      --  Rx FIFO 0 fill level
      F0FL           : FDCAN_RXF0S_F0FL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Rx FIFO 0 get index
      F0GI           : FDCAN_RXF0S_F0GI_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Rx FIFO 0 put index
      F0PI           : FDCAN_RXF0S_F0PI_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Rx FIFO 0 full
      F0F            : Boolean := False;
      --  Rx FIFO 0 message lost
      RF0L           : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RXF0S_Register use record
      F0FL           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      F0GI           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      F0PI           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      F0F            at 0 range 24 .. 24;
      RF0L           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype FDCAN_RXF0A_F0AI_Field is Interfaces.Bit_Types.UInt6;

   --  FDCAN Rx FIFO 0 acknowledge register
   type FDCAN_RXF0A_Register is record
      --  Rx FIFO 0 acknowledge index
      F0AI          : FDCAN_RXF0A_F0AI_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RXF0A_Register use record
      F0AI          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype FDCAN_RXBC_RBSA_Field is Interfaces.Bit_Types.UInt14;

   --  FDCAN Rx buffer configuration register
   type FDCAN_RXBC_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Rx buffer start address
      RBSA           : FDCAN_RXBC_RBSA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RXBC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RBSA           at 0 range 2 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FDCAN_RXF1C_F1SA_Field is Interfaces.Bit_Types.UInt14;
   subtype FDCAN_RXF1C_F1S_Field is Interfaces.Bit_Types.UInt7;
   subtype FDCAN_RXF1C_F1WM_Field is Interfaces.Bit_Types.UInt7;

   --  FDCAN Rx FIFO 1 configuration register
   type FDCAN_RXF1C_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Rx FIFO 1 start address
      F1SA           : FDCAN_RXF1C_F1SA_Field := 16#0#;
      --  Rx FIFO 1 size
      F1S            : FDCAN_RXF1C_F1S_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Rx FIFO 1 watermark
      F1WM           : FDCAN_RXF1C_F1WM_Field := 16#0#;
      --  FIFO 1 operation mode
      F1OM           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RXF1C_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      F1SA           at 0 range 2 .. 15;
      F1S            at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      F1WM           at 0 range 24 .. 30;
      F1OM           at 0 range 31 .. 31;
   end record;

   subtype FDCAN_RXF1S_F1FL_Field is Interfaces.Bit_Types.UInt7;
   subtype FDCAN_RXF1S_F1GI_Field is Interfaces.Bit_Types.UInt6;
   subtype FDCAN_RXF1S_F1PI_Field is Interfaces.Bit_Types.UInt6;
   subtype FDCAN_RXF1S_DMS_Field is Interfaces.Bit_Types.UInt2;

   --  FDCAN Rx FIFO 1 status register
   type FDCAN_RXF1S_Register is record
      --  Read-only. Rx FIFO 1 fill level
      F1FL           : FDCAN_RXF1S_F1FL_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit;
      --  Read-only. Rx FIFO 1 get index
      F1GI           : FDCAN_RXF1S_F1GI_Field;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Rx FIFO 1 put index
      F1PI           : FDCAN_RXF1S_F1PI_Field;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Rx FIFO 1 full
      F1F            : Boolean;
      --  Read-only. Rx FIFO 1 message lost
      RF1L           : Boolean;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Debug message status
      DMS            : FDCAN_RXF1S_DMS_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RXF1S_Register use record
      F1FL           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      F1GI           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      F1PI           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      F1F            at 0 range 24 .. 24;
      RF1L           at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      DMS            at 0 range 30 .. 31;
   end record;

   subtype FDCAN_RXF1A_F1AI_Field is Interfaces.Bit_Types.UInt6;

   --  FDCAN Rx FIFO 1 acknowledge register
   type FDCAN_RXF1A_Register is record
      --  Rx FIFO 1 acknowledge index
      F1AI          : FDCAN_RXF1A_F1AI_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RXF1A_Register use record
      F1AI          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype FDCAN_RXESC_F0DS_Field is Interfaces.Bit_Types.UInt3;
   subtype FDCAN_RXESC_F1DS_Field is Interfaces.Bit_Types.UInt3;
   subtype FDCAN_RXESC_RBDS_Field is Interfaces.Bit_Types.UInt3;

   --  FDCAN Rx buffer element size configuration register
   type FDCAN_RXESC_Register is record
      --  Read-only. Rx FIFO 1 data field size
      F0DS           : FDCAN_RXESC_F0DS_Field;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit;
      --  Read-only. Rx FIFO 0 data field size
      F1DS           : FDCAN_RXESC_F1DS_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit;
      --  Read-only. Rx buffer data field size
      RBDS           : FDCAN_RXESC_RBDS_Field;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RXESC_Register use record
      F0DS           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      F1DS           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RBDS           at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype FDCAN_TXBC_TBSA_Field is Interfaces.Bit_Types.UInt14;
   subtype FDCAN_TXBC_NDTB_Field is Interfaces.Bit_Types.UInt6;
   subtype FDCAN_TXBC_TFQS_Field is Interfaces.Bit_Types.UInt6;

   --  FDCAN Tx buffer configuration register
   type FDCAN_TXBC_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Tx buffers start address
      TBSA           : FDCAN_TXBC_TBSA_Field := 16#0#;
      --  Number of dedicated transmit buffers
      NDTB           : FDCAN_TXBC_NDTB_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Transmit FIFO/queue size
      TFQS           : FDCAN_TXBC_TFQS_Field := 16#0#;
      --  Tx FIFO/queue mode
      TFQM           : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TXBC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      TBSA           at 0 range 2 .. 15;
      NDTB           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TFQS           at 0 range 24 .. 29;
      TFQM           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype FDCAN_TXFQS_TFFL_Field is Interfaces.Bit_Types.UInt6;
   subtype FDCAN_TXFQS_TFGI_Field is Interfaces.Bit_Types.UInt5;
   subtype FDCAN_TXFQS_TFQPI_Field is Interfaces.Bit_Types.UInt5;

   --  FDCAN Tx FIFO/queue status register
   type FDCAN_TXFQS_Register is record
      --  Read-only. Tx FIFO free level
      TFFL           : FDCAN_TXFQS_TFFL_Field;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2;
      --  Read-only. Tx FIFO get index.
      TFGI           : FDCAN_TXFQS_TFGI_Field;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3;
      --  Read-only. Tx FIFO/queue put index
      TFQPI          : FDCAN_TXFQS_TFQPI_Field;
      --  Read-only. Tx FIFO/queue full
      TFQF           : Boolean;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TXFQS_Register use record
      TFFL           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TFGI           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TFQPI          at 0 range 16 .. 20;
      TFQF           at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype FDCAN_TXESC_TBDS_Field is Interfaces.Bit_Types.UInt3;

   --  FDCAN Tx buffer element size configuration register
   type FDCAN_TXESC_Register is record
      --  Read-only. Tx buffer data Field size:
      TBDS          : FDCAN_TXESC_TBDS_Field;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TXESC_Register use record
      TBDS          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype FDCAN_TXEFC_EFSA_Field is Interfaces.Bit_Types.UInt14;
   subtype FDCAN_TXEFC_EFS_Field is Interfaces.Bit_Types.UInt6;
   subtype FDCAN_TXEFC_EFWM_Field is Interfaces.Bit_Types.UInt6;

   --  FDCAN Tx event FIFO configuration register
   type FDCAN_TXEFC_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Event FIFO start address
      EFSA           : FDCAN_TXEFC_EFSA_Field := 16#0#;
      --  Event FIFO size.
      EFS            : FDCAN_TXEFC_EFS_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Event FIFO watermark
      EFWM           : FDCAN_TXEFC_EFWM_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TXEFC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      EFSA           at 0 range 2 .. 15;
      EFS            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      EFWM           at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype FDCAN_TXEFS_EFFL_Field is Interfaces.Bit_Types.UInt6;
   subtype FDCAN_TXEFS_EFGI_Field is Interfaces.Bit_Types.UInt5;
   subtype FDCAN_TXEFS_EFPI_Field is Interfaces.Bit_Types.UInt5;

   --  FDCAN Tx event FIFO status register
   type FDCAN_TXEFS_Register is record
      --  Read-only. Event FIFO fill level
      EFFL           : FDCAN_TXEFS_EFFL_Field;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2;
      --  Read-only. Event FIFO get index
      EFGI           : FDCAN_TXEFS_EFGI_Field;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3;
      --  Read-only. Event FIFO put index
      EFPI           : FDCAN_TXEFS_EFPI_Field;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3;
      --  Read-only. Event FIFO full
      EFF            : Boolean;
      --  Read-only. Tx event FIFO element lost
      TEFL           : Boolean;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TXEFS_Register use record
      EFFL           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EFGI           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      EFPI           at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      EFF            at 0 range 24 .. 24;
      TEFL           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype FDCAN_TXEFA_EFAI_Field is Interfaces.Bit_Types.UInt5;

   --  FDCAN Tx event FIFO acknowledge register
   type FDCAN_TXEFA_Register is record
      --  Event FIFO acknowledge index
      EFAI          : FDCAN_TXEFA_EFAI_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TXEFA_Register use record
      EFAI          at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype FDCAN_TTTMC_TMSA_Field is Interfaces.Bit_Types.UInt14;
   subtype FDCAN_TTTMC_TME_Field is Interfaces.Bit_Types.UInt7;

   --  FDCAN TT trigger memory configuration register
   type FDCAN_TTTMC_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Trigger memory start address.
      TMSA           : FDCAN_TTTMC_TMSA_Field := 16#0#;
      --  Trigger memory elements
      TME            : FDCAN_TTTMC_TME_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTTMC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      TMSA           at 0 range 2 .. 15;
      TME            at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype FDCAN_TTRMC_RID_Field is Interfaces.Bit_Types.UInt29;

   --  FDCAN TT reference message configuration register
   type FDCAN_TTRMC_Register is record
      --  Reference identifier.
      RID            : FDCAN_TTRMC_RID_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Extended identifier
      XTD            : Boolean := False;
      --  Reference message payload select
      RMPS           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTRMC_Register use record
      RID            at 0 range 0 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      XTD            at 0 range 30 .. 30;
      RMPS           at 0 range 31 .. 31;
   end record;

   subtype FDCAN_TTOCF_OM_Field is Interfaces.Bit_Types.UInt2;
   subtype FDCAN_TTOCF_LDSDL_Field is Interfaces.Bit_Types.UInt3;
   subtype FDCAN_TTOCF_IRTO_Field is Interfaces.Bit_Types.UInt7;
   subtype FDCAN_TTOCF_AWL_Field is Interfaces.Bit_Types.Byte;

   --  FDCAN TT operation configuration register
   type FDCAN_TTOCF_Register is record
      --  Operation mode.
      OM             : FDCAN_TTOCF_OM_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Gap enable.
      GEN            : Boolean := False;
      --  Time master.
      TM             : Boolean := False;
      --  LD of synchronization deviation limit.
      LDSDL          : FDCAN_TTOCF_LDSDL_Field := 16#0#;
      --  Initial reference trigger offset.
      IRTO           : FDCAN_TTOCF_IRTO_Field := 16#0#;
      --  Enable external clock synchronization
      EECS           : Boolean := False;
      --  Application watchdog limit.
      AWL            : FDCAN_TTOCF_AWL_Field := 16#1#;
      --  Enable global time filtering.
      EGTF           : Boolean := False;
      --  Enable clock calibration.
      ECC            : Boolean := False;
      --  Event trigger polarity.
      EVTP           : Boolean := False;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTOCF_Register use record
      OM             at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      GEN            at 0 range 3 .. 3;
      TM             at 0 range 4 .. 4;
      LDSDL          at 0 range 5 .. 7;
      IRTO           at 0 range 8 .. 14;
      EECS           at 0 range 15 .. 15;
      AWL            at 0 range 16 .. 23;
      EGTF           at 0 range 24 .. 24;
      ECC            at 0 range 25 .. 25;
      EVTP           at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype FDCAN_TTMLM_CCM_Field is Interfaces.Bit_Types.UInt6;
   subtype FDCAN_TTMLM_CSS_Field is Interfaces.Bit_Types.UInt2;
   subtype FDCAN_TTMLM_TXEW_Field is Interfaces.Bit_Types.UInt4;
   subtype FDCAN_TTMLM_ENTT_Field is Interfaces.Bit_Types.UInt12;

   --  FDCAN TT matrix limits register
   type FDCAN_TTMLM_Register is record
      --  Cycle count Max
      CCM            : FDCAN_TTMLM_CCM_Field := 16#0#;
      --  Cycle start synchronization
      CSS            : FDCAN_TTMLM_CSS_Field := 16#0#;
      --  Tx enable window
      TXEW           : FDCAN_TTMLM_TXEW_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Expected number of Tx triggers
      ENTT           : FDCAN_TTMLM_ENTT_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTMLM_Register use record
      CCM            at 0 range 0 .. 5;
      CSS            at 0 range 6 .. 7;
      TXEW           at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      ENTT           at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype FDCAN_TURCF_NCL_Field is Interfaces.Bit_Types.UInt16;
   subtype FDCAN_TURCF_DC_Field is Interfaces.Bit_Types.UInt14;

   --  FDCAN TUR configuration register
   type FDCAN_TURCF_Register is record
      --  Numerator configuration low.
      NCL            : FDCAN_TURCF_NCL_Field := 16#0#;
      --  Denominator configuration.
      DC             : FDCAN_TURCF_DC_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Enable local time.
      ELT            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TURCF_Register use record
      NCL            at 0 range 0 .. 15;
      DC             at 0 range 16 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      ELT            at 0 range 31 .. 31;
   end record;

   subtype FDCAN_TTOCN_SWS_Field is Interfaces.Bit_Types.UInt2;
   subtype FDCAN_TTOCN_TMC_Field is Interfaces.Bit_Types.UInt2;

   --  FDCAN TT operation control register
   type FDCAN_TTOCN_Register is record
      --  Set global time.
      SGT            : Boolean := False;
      --  External clock synchronization.
      ECS            : Boolean := False;
      --  Stop watch polarity.
      SWP            : Boolean := False;
      --  Stop watch source.
      SWS            : FDCAN_TTOCN_SWS_Field := 16#0#;
      --  Register time mark interrupt pulse enable.
      RTIE           : Boolean := False;
      --  Register time mark compare.
      TMC            : FDCAN_TTOCN_TMC_Field := 16#0#;
      --  Trigger time mark interrupt pulse enable
      TTIE           : Boolean := False;
      --  Gap control select
      GCS            : Boolean := False;
      --  Finish gap.
      FGP            : Boolean := False;
      --  Time mark gap.
      TMG            : Boolean := False;
      --  Next is gap.
      NIG            : Boolean := False;
      --  External synchronization control
      ESCN           : Boolean := False;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. TT operation control register locked.
      LCKC           : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTOCN_Register use record
      SGT            at 0 range 0 .. 0;
      ECS            at 0 range 1 .. 1;
      SWP            at 0 range 2 .. 2;
      SWS            at 0 range 3 .. 4;
      RTIE           at 0 range 5 .. 5;
      TMC            at 0 range 6 .. 7;
      TTIE           at 0 range 8 .. 8;
      GCS            at 0 range 9 .. 9;
      FGP            at 0 range 10 .. 10;
      TMG            at 0 range 11 .. 11;
      NIG            at 0 range 12 .. 12;
      ESCN           at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      LCKC           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FDCAN_TTGTP_TP_Field is Interfaces.Bit_Types.UInt16;
   subtype FDCAN_TTGTP_CTP_Field is Interfaces.Bit_Types.UInt16;

   --  FDCAN TT global time preset register
   type FDCAN_TTGTP_Register is record
      --  Time preset
      TP  : FDCAN_TTGTP_TP_Field := 16#0#;
      --  Cycle time target phase
      CTP : FDCAN_TTGTP_CTP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTGTP_Register use record
      TP  at 0 range 0 .. 15;
      CTP at 0 range 16 .. 31;
   end record;

   subtype FDCAN_TTTMK_TM_Field is Interfaces.Bit_Types.UInt16;
   subtype FDCAN_TTTMK_TICC_Field is Interfaces.Bit_Types.UInt7;

   --  FDCAN TT time mark register
   type FDCAN_TTTMK_Register is record
      --  Time mark
      TM             : FDCAN_TTTMK_TM_Field := 16#0#;
      --  Time mark cycle code
      TICC           : FDCAN_TTTMK_TICC_Field := 16#0#;
      --  unspecified
      Reserved_23_30 : Interfaces.Bit_Types.Byte := 16#0#;
      --  Read-only. TT time mark register locked
      LCKM           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTTMK_Register use record
      TM             at 0 range 0 .. 15;
      TICC           at 0 range 16 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      LCKM           at 0 range 31 .. 31;
   end record;

   --  FDCAN_TTIR_SE array
   type FDCAN_TTIR_SE_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FDCAN_TTIR_SE
   type FDCAN_TTIR_SE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SE as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  SE as an array
            Arr : FDCAN_TTIR_SE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FDCAN_TTIR_SE_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  FDCAN TT interrupt register
   type FDCAN_TTIR_Register is record
      --  Start of basic cycle
      SBC            : Boolean := False;
      --  Start of matrix cycle
      SMC            : Boolean := False;
      --  Change of synchronization mode
      CSM            : Boolean := False;
      --  Start of gap
      SOG            : Boolean := False;
      --  Register time mark interrupt
      RTMI           : Boolean := False;
      --  Trigger time mark event internal
      TTMI           : Boolean := False;
      --  Stop watch event
      SWE            : Boolean := False;
      --  Global time wrap
      GTW            : Boolean := False;
      --  Global time discontinuity
      GTD            : Boolean := False;
      --  Global time error
      GTE            : Boolean := False;
      --  Tx count underflow
      TXU            : Boolean := False;
      --  Tx count overflow
      TXO            : Boolean := False;
      --  Scheduling error 1
      SE             : FDCAN_TTIR_SE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Error level changed
      ELC            : Boolean := False;
      --  Initialization watch trigger
      IWTG           : Boolean := False;
      --  Watch trigger
      WT             : Boolean := False;
      --  Application watchdog
      AW             : Boolean := False;
      --  Configuration error
      CER            : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTIR_Register use record
      SBC            at 0 range 0 .. 0;
      SMC            at 0 range 1 .. 1;
      CSM            at 0 range 2 .. 2;
      SOG            at 0 range 3 .. 3;
      RTMI           at 0 range 4 .. 4;
      TTMI           at 0 range 5 .. 5;
      SWE            at 0 range 6 .. 6;
      GTW            at 0 range 7 .. 7;
      GTD            at 0 range 8 .. 8;
      GTE            at 0 range 9 .. 9;
      TXU            at 0 range 10 .. 10;
      TXO            at 0 range 11 .. 11;
      SE             at 0 range 12 .. 13;
      ELC            at 0 range 14 .. 14;
      IWTG           at 0 range 15 .. 15;
      WT             at 0 range 16 .. 16;
      AW             at 0 range 17 .. 17;
      CER            at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  FDCAN TT interrupt enable register
   type FDCAN_TTIE_Register is record
      --  Start of basic cycle interrupt enable
      SBCE           : Boolean := False;
      --  Start of matrix cycle interrupt enable
      SMCE           : Boolean := False;
      --  Change of synchronization mode interrupt enable
      CSME           : Boolean := False;
      --  Start of gap interrupt enable
      SOGE           : Boolean := False;
      --  Register time mark interrupt enable
      RTMIE          : Boolean := False;
      --  Trigger time mark event internal interrupt enable
      TTMIE          : Boolean := False;
      --  Stop watch event interrupt enable
      SWEE           : Boolean := False;
      --  Global time wrap interrupt enable
      GTWE           : Boolean := False;
      --  Global time discontinuity interrupt enable
      GTDE           : Boolean := False;
      --  Global time error interrupt enable
      GTEE           : Boolean := False;
      --  Tx count underflow interrupt enable
      TXUE           : Boolean := False;
      --  Tx count overflow interrupt enable
      TXOE           : Boolean := False;
      --  Scheduling error 1 interrupt enable
      SE1E           : Boolean := False;
      --  Scheduling error 2 interrupt enable
      SE2E           : Boolean := False;
      --  Change error level interrupt enable
      ELCE           : Boolean := False;
      --  Initialization watch trigger interrupt enable
      IWTE           : Boolean := False;
      --  Watch trigger interrupt enable
      WTE            : Boolean := False;
      --  Application watchdog interrupt enable
      AWE            : Boolean := False;
      --  Configuration error interrupt enable
      CERE           : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTIE_Register use record
      SBCE           at 0 range 0 .. 0;
      SMCE           at 0 range 1 .. 1;
      CSME           at 0 range 2 .. 2;
      SOGE           at 0 range 3 .. 3;
      RTMIE          at 0 range 4 .. 4;
      TTMIE          at 0 range 5 .. 5;
      SWEE           at 0 range 6 .. 6;
      GTWE           at 0 range 7 .. 7;
      GTDE           at 0 range 8 .. 8;
      GTEE           at 0 range 9 .. 9;
      TXUE           at 0 range 10 .. 10;
      TXOE           at 0 range 11 .. 11;
      SE1E           at 0 range 12 .. 12;
      SE2E           at 0 range 13 .. 13;
      ELCE           at 0 range 14 .. 14;
      IWTE           at 0 range 15 .. 15;
      WTE            at 0 range 16 .. 16;
      AWE            at 0 range 17 .. 17;
      CERE           at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  FDCAN TT interrupt line select register
   type FDCAN_TTILS_Register is record
      --  Start of basic cycle interrupt line
      SBCL           : Boolean := False;
      --  Start of matrix cycle interrupt line
      SMCL           : Boolean := False;
      --  Change of synchronization mode interrupt line
      CSML           : Boolean := False;
      --  Start of gap interrupt line
      SOGL           : Boolean := False;
      --  Register time mark interrupt line
      RTMIL          : Boolean := False;
      --  Trigger time mark event internal interrupt line
      TTMIL          : Boolean := False;
      --  Stop watch event interrupt line
      SWEL           : Boolean := False;
      --  Global time wrap interrupt line
      GTWL           : Boolean := False;
      --  Global time discontinuity interrupt line
      GTDL           : Boolean := False;
      --  Global time error interrupt line
      GTEL           : Boolean := False;
      --  Tx count underflow interrupt line
      TXUL           : Boolean := False;
      --  Tx count overflow interrupt line
      TXOL           : Boolean := False;
      --  Scheduling error 1 interrupt line
      SE1L           : Boolean := False;
      --  Scheduling error 2 interrupt line
      SE2L           : Boolean := False;
      --  Change error level interrupt line
      ELCL           : Boolean := False;
      --  Initialization watch trigger interrupt line
      IWTL           : Boolean := False;
      --  Watch trigger interrupt line
      WTL            : Boolean := False;
      --  Application watchdog interrupt line
      AWL            : Boolean := False;
      --  Configuration error interrupt line
      CERL           : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTILS_Register use record
      SBCL           at 0 range 0 .. 0;
      SMCL           at 0 range 1 .. 1;
      CSML           at 0 range 2 .. 2;
      SOGL           at 0 range 3 .. 3;
      RTMIL          at 0 range 4 .. 4;
      TTMIL          at 0 range 5 .. 5;
      SWEL           at 0 range 6 .. 6;
      GTWL           at 0 range 7 .. 7;
      GTDL           at 0 range 8 .. 8;
      GTEL           at 0 range 9 .. 9;
      TXUL           at 0 range 10 .. 10;
      TXOL           at 0 range 11 .. 11;
      SE1L           at 0 range 12 .. 12;
      SE2L           at 0 range 13 .. 13;
      ELCL           at 0 range 14 .. 14;
      IWTL           at 0 range 15 .. 15;
      WTL            at 0 range 16 .. 16;
      AWL            at 0 range 17 .. 17;
      CERL           at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype FDCAN_TTOST_EL_Field is Interfaces.Bit_Types.UInt2;
   subtype FDCAN_TTOST_MS_Field is Interfaces.Bit_Types.UInt2;
   subtype FDCAN_TTOST_SYS_Field is Interfaces.Bit_Types.UInt2;
   subtype FDCAN_TTOST_RTO_Field is Interfaces.Bit_Types.Byte;
   subtype FDCAN_TTOST_TMP_Field is Interfaces.Bit_Types.UInt3;

   --  FDCAN TT operation status register
   type FDCAN_TTOST_Register is record
      --  Read-only. Error level
      EL             : FDCAN_TTOST_EL_Field;
      --  Read-only. Master state
      MS             : FDCAN_TTOST_MS_Field;
      --  Read-only. Synchronization state
      SYS            : FDCAN_TTOST_SYS_Field;
      --  Read-only. Quality of global time phase
      QGTP           : Boolean;
      --  Read-only. Quality of clock speed
      QCS            : Boolean;
      --  Read-only. Reference trigger offset
      RTO            : FDCAN_TTOST_RTO_Field;
      --  unspecified
      Reserved_16_21 : Interfaces.Bit_Types.UInt6;
      --  Read-only. Wait for global time discontinuity
      WGTD           : Boolean;
      --  Read-only. Gap finished indicator
      GFI            : Boolean;
      --  Read-only. Time master priority
      TMP            : FDCAN_TTOST_TMP_Field;
      --  Read-only. Gap started indicator
      GSI            : Boolean;
      --  Read-only. Wait for event
      WFE            : Boolean;
      --  Read-only. Application watchdog event
      AWE            : Boolean;
      --  Read-only. Wait for external clock synchronization.
      WECS           : Boolean;
      --  Read-only. Schedule phase lock
      SPL            : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTOST_Register use record
      EL             at 0 range 0 .. 1;
      MS             at 0 range 2 .. 3;
      SYS            at 0 range 4 .. 5;
      QGTP           at 0 range 6 .. 6;
      QCS            at 0 range 7 .. 7;
      RTO            at 0 range 8 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      WGTD           at 0 range 22 .. 22;
      GFI            at 0 range 23 .. 23;
      TMP            at 0 range 24 .. 26;
      GSI            at 0 range 27 .. 27;
      WFE            at 0 range 28 .. 28;
      AWE            at 0 range 29 .. 29;
      WECS           at 0 range 30 .. 30;
      SPL            at 0 range 31 .. 31;
   end record;

   subtype FDCAN_TURNA_NAV_Field is Interfaces.Bit_Types.UInt18;

   --  FDCAN TUR numerator actual register
   type FDCAN_TURNA_Register is record
      --  Read-only. Numerator actual value
      NAV            : FDCAN_TURNA_NAV_Field;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TURNA_Register use record
      NAV            at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype FDCAN_TTLGT_LT_Field is Interfaces.Bit_Types.UInt16;
   subtype FDCAN_TTLGT_GT_Field is Interfaces.Bit_Types.UInt16;

   --  FDCAN TT local and global time register
   type FDCAN_TTLGT_Register is record
      --  Read-only. Local time
      LT : FDCAN_TTLGT_LT_Field;
      --  Read-only. Global time
      GT : FDCAN_TTLGT_GT_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTLGT_Register use record
      LT at 0 range 0 .. 15;
      GT at 0 range 16 .. 31;
   end record;

   subtype FDCAN_TTCTC_CT_Field is Interfaces.Bit_Types.UInt16;
   subtype FDCAN_TTCTC_CC_Field is Interfaces.Bit_Types.UInt6;

   --  FDCAN TT cycle time and count register
   type FDCAN_TTCTC_Register is record
      --  Read-only. Cycle time
      CT             : FDCAN_TTCTC_CT_Field;
      --  Read-only. Cycle count
      CC             : FDCAN_TTCTC_CC_Field;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTCTC_Register use record
      CT             at 0 range 0 .. 15;
      CC             at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype FDCAN_TTCPT_CCV_Field is Interfaces.Bit_Types.UInt6;
   subtype FDCAN_TTCPT_SWV_Field is Interfaces.Bit_Types.UInt16;

   --  FDCAN TT capture time register
   type FDCAN_TTCPT_Register is record
      --  Read-only. Cycle count value
      CCV           : FDCAN_TTCPT_CCV_Field;
      --  unspecified
      Reserved_6_15 : Interfaces.Bit_Types.UInt10;
      --  Read-only. Stop watch value
      SWV           : FDCAN_TTCPT_SWV_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTCPT_Register use record
      CCV           at 0 range 0 .. 5;
      Reserved_6_15 at 0 range 6 .. 15;
      SWV           at 0 range 16 .. 31;
   end record;

   subtype FDCAN_TTCSM_CSM_Field is Interfaces.Bit_Types.UInt16;

   --  FDCAN TT cycle sync mark register
   type FDCAN_TTCSM_Register is record
      --  Read-only. Cycle sync mark
      CSM            : FDCAN_TTCSM_CSM_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTCSM_Register use record
      CSM            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FDCAN_TTTS_SWTDEL_Field is Interfaces.Bit_Types.UInt2;
   subtype FDCAN_TTTS_EVTSEL_Field is Interfaces.Bit_Types.UInt2;

   --  FDCAN TT trigger select register
   type FDCAN_TTTS_Register is record
      --  Stop watch trigger input selection
      SWTDEL        : FDCAN_TTTS_SWTDEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Event trigger input selection
      EVTSEL        : FDCAN_TTTS_EVTSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TTTS_Register use record
      SWTDEL        at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      EVTSEL        at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type FDCAN1_Disc is
     (Rel,
      Cu_Crel,
      Endn,
      Ccu_Ccfg,
      Dbtp,
      Ccu_Cwd,
      Test,
      Ccu_Ir,
      Rwd,
      Ccu_Ie);

   --  FDCAN register block
   type FDCAN_Peripheral
     (Discriminent : FDCAN1_Disc := Rel)
   is record
      --  Calibration status register
      FDCAN_CCU_CSTAT : aliased FDCAN_CCU_CSTAT_Register;
      --  FDCAN CC control register
      FDCAN_CCCR      : aliased FDCAN_CCCR_Register;
      --  FDCAN nominal bit timing and prescaler register
      FDCAN_NBTP      : aliased FDCAN_NBTP_Register;
      --  FDCAN timestamp counter configuration register
      FDCAN_TSCC      : aliased FDCAN_TSCC_Register;
      --  FDCAN timestamp counter value register
      FDCAN_TSCV      : aliased FDCAN_TSCV_Register;
      --  FDCAN timeout counter configuration register
      FDCAN_TOCC      : aliased FDCAN_TOCC_Register;
      --  FDCAN timeout counter value register
      FDCAN_TOCV      : aliased FDCAN_TOCV_Register;
      --  FDCAN error counter register
      FDCAN_ECR       : aliased FDCAN_ECR_Register;
      --  FDCAN protocol status register
      FDCAN_PSR       : aliased FDCAN_PSR_Register;
      --  FDCAN transmitter delay compensation register
      FDCAN_TDCR      : aliased FDCAN_TDCR_Register;
      --  FDCAN interrupt register
      FDCAN_IR        : aliased FDCAN_IR_Register;
      --  FDCAN interrupt enable register
      FDCAN_IE        : aliased FDCAN_IE_Register;
      --  FDCAN interrupt line select register
      FDCAN_ILS       : aliased FDCAN_ILS_Register;
      --  FDCAN interrupt line enable register
      FDCAN_ILE       : aliased FDCAN_ILE_Register;
      --  FDCAN global filter configuration register
      FDCAN_GFC       : aliased FDCAN_GFC_Register;
      --  FDCAN standard ID filter configuration register
      FDCAN_SIDFC     : aliased FDCAN_SIDFC_Register;
      --  FDCAN extended ID filter configuration register
      FDCAN_XIDFC     : aliased FDCAN_XIDFC_Register;
      --  FDCAN extended ID and mask register
      FDCAN_XIDAM     : aliased FDCAN_XIDAM_Register;
      --  FDCAN high priority message status register
      FDCAN_HPMS      : aliased FDCAN_HPMS_Register;
      --  FDCAN new data 1 register
      FDCAN_NDAT1     : aliased FDCAN_NDAT1_Register;
      --  FDCAN new data 2 register
      FDCAN_NDAT2     : aliased FDCAN_NDAT2_Register;
      --  FDCAN Rx FIFO 0 configuration register
      FDCAN_RXF0C     : aliased FDCAN_RXF0C_Register;
      --  FDCAN Rx FIFO 0 status register
      FDCAN_RXF0S     : aliased FDCAN_RXF0S_Register;
      --  FDCAN Rx FIFO 0 acknowledge register
      FDCAN_RXF0A     : aliased FDCAN_RXF0A_Register;
      --  FDCAN Rx buffer configuration register
      FDCAN_RXBC      : aliased FDCAN_RXBC_Register;
      --  FDCAN Rx FIFO 1 configuration register
      FDCAN_RXF1C     : aliased FDCAN_RXF1C_Register;
      --  FDCAN Rx FIFO 1 status register
      FDCAN_RXF1S     : aliased FDCAN_RXF1S_Register;
      --  FDCAN Rx FIFO 1 acknowledge register
      FDCAN_RXF1A     : aliased FDCAN_RXF1A_Register;
      --  FDCAN Rx buffer element size configuration register
      FDCAN_RXESC     : aliased FDCAN_RXESC_Register;
      --  FDCAN Tx buffer configuration register
      FDCAN_TXBC      : aliased FDCAN_TXBC_Register;
      --  FDCAN Tx FIFO/queue status register
      FDCAN_TXFQS     : aliased FDCAN_TXFQS_Register;
      --  FDCAN Tx buffer element size configuration register
      FDCAN_TXESC     : aliased FDCAN_TXESC_Register;
      --  FDCAN Tx buffer request pending register
      FDCAN_TXBRP     : aliased Interfaces.Bit_Types.UInt32;
      --  FDCAN Tx buffer add request register
      FDCAN_TXBAR     : aliased Interfaces.Bit_Types.UInt32;
      --  FDCAN Tx buffer cancellation request register
      FDCAN_TXBCR     : aliased Interfaces.Bit_Types.UInt32;
      --  FDCAN Tx buffer transmission occurred register
      FDCAN_TXBTO     : aliased Interfaces.Bit_Types.UInt32;
      --  FDCAN Tx buffer cancellation finished register
      FDCAN_TXBCF     : aliased Interfaces.Bit_Types.UInt32;
      --  FDCAN Tx buffer transmission interrupt enable register
      FDCAN_TXBTIE    : aliased Interfaces.Bit_Types.UInt32;
      --  FDCAN Tx buffer cancellation finished interrupt enable register
      FDCAN_TXBCIE    : aliased Interfaces.Bit_Types.UInt32;
      --  FDCAN Tx event FIFO configuration register
      FDCAN_TXEFC     : aliased FDCAN_TXEFC_Register;
      --  FDCAN Tx event FIFO status register
      FDCAN_TXEFS     : aliased FDCAN_TXEFS_Register;
      --  FDCAN Tx event FIFO acknowledge register
      FDCAN_TXEFA     : aliased FDCAN_TXEFA_Register;
      --  FDCAN TT trigger memory configuration register
      FDCAN_TTTMC     : aliased FDCAN_TTTMC_Register;
      --  FDCAN TT reference message configuration register
      FDCAN_TTRMC     : aliased FDCAN_TTRMC_Register;
      --  FDCAN TT operation configuration register
      FDCAN_TTOCF     : aliased FDCAN_TTOCF_Register;
      --  FDCAN TT matrix limits register
      FDCAN_TTMLM     : aliased FDCAN_TTMLM_Register;
      --  FDCAN TUR configuration register
      FDCAN_TURCF     : aliased FDCAN_TURCF_Register;
      --  FDCAN TT operation control register
      FDCAN_TTOCN     : aliased FDCAN_TTOCN_Register;
      --  FDCAN TT global time preset register
      FDCAN_TTGTP     : aliased FDCAN_TTGTP_Register;
      --  FDCAN TT time mark register
      FDCAN_TTTMK     : aliased FDCAN_TTTMK_Register;
      --  FDCAN TT interrupt register
      FDCAN_TTIR      : aliased FDCAN_TTIR_Register;
      --  FDCAN TT interrupt enable register
      FDCAN_TTIE      : aliased FDCAN_TTIE_Register;
      --  FDCAN TT interrupt line select register
      FDCAN_TTILS     : aliased FDCAN_TTILS_Register;
      --  FDCAN TT operation status register
      FDCAN_TTOST     : aliased FDCAN_TTOST_Register;
      --  FDCAN TUR numerator actual register
      FDCAN_TURNA     : aliased FDCAN_TURNA_Register;
      --  FDCAN TT local and global time register
      FDCAN_TTLGT     : aliased FDCAN_TTLGT_Register;
      --  FDCAN TT cycle time and count register
      FDCAN_TTCTC     : aliased FDCAN_TTCTC_Register;
      --  FDCAN TT capture time register
      FDCAN_TTCPT     : aliased FDCAN_TTCPT_Register;
      --  FDCAN TT cycle sync mark register
      FDCAN_TTCSM     : aliased FDCAN_TTCSM_Register;
      --  FDCAN TT trigger select register
      FDCAN_TTTS      : aliased FDCAN_TTTS_Register;
      case Discriminent is
         when Rel =>
            --  FDCAN core release register
            FDCAN_CREL : aliased FDCAN_CREL_Register;
         when Cu_Crel =>
            --  FDCAN core release register
            FDCAN_CCU_CREL : aliased FDCAN_CCU_CREL_Register;
         when Endn =>
            --  FDCAN Endian register
            FDCAN_ENDN : aliased Interfaces.Bit_Types.UInt32;
         when Ccu_Ccfg =>
            --  FDCAN Endian register
            FDCAN_CCU_CCFG : aliased FDCAN_CCU_CCFG_Register;
         when Dbtp =>
            --  FDCAN data bit timing and prescaler register
            FDCAN_DBTP : aliased FDCAN_DBTP_Register;
         when Ccu_Cwd =>
            --  FDCAN data bit timing and prescaler register
            FDCAN_CCU_CWD : aliased FDCAN_CCU_CWD_Register;
         when Test =>
            --  FDCAN test register
            FDCAN_TEST : aliased FDCAN_TEST_Register;
         when Ccu_Ir =>
            --  FDCAN test register
            FDCAN_CCU_IR : aliased FDCAN_CCU_IR_Register;
         when Rwd =>
            --  FDCAN RAM watchdog register
            FDCAN_RWD : aliased FDCAN_RWD_Register;
         when Ccu_Ie =>
            --  FDCAN RAM watchdog register
            FDCAN_CCU_IE : aliased FDCAN_CCU_IE_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for FDCAN_Peripheral use record
      FDCAN_CCU_CSTAT at 16#8# range 0 .. 31;
      FDCAN_CCCR      at 16#18# range 0 .. 31;
      FDCAN_NBTP      at 16#1C# range 0 .. 31;
      FDCAN_TSCC      at 16#20# range 0 .. 31;
      FDCAN_TSCV      at 16#24# range 0 .. 31;
      FDCAN_TOCC      at 16#28# range 0 .. 31;
      FDCAN_TOCV      at 16#2C# range 0 .. 31;
      FDCAN_ECR       at 16#40# range 0 .. 31;
      FDCAN_PSR       at 16#44# range 0 .. 31;
      FDCAN_TDCR      at 16#48# range 0 .. 31;
      FDCAN_IR        at 16#50# range 0 .. 31;
      FDCAN_IE        at 16#54# range 0 .. 31;
      FDCAN_ILS       at 16#58# range 0 .. 31;
      FDCAN_ILE       at 16#5C# range 0 .. 31;
      FDCAN_GFC       at 16#80# range 0 .. 31;
      FDCAN_SIDFC     at 16#84# range 0 .. 31;
      FDCAN_XIDFC     at 16#88# range 0 .. 31;
      FDCAN_XIDAM     at 16#90# range 0 .. 31;
      FDCAN_HPMS      at 16#94# range 0 .. 31;
      FDCAN_NDAT1     at 16#98# range 0 .. 31;
      FDCAN_NDAT2     at 16#9C# range 0 .. 31;
      FDCAN_RXF0C     at 16#A0# range 0 .. 31;
      FDCAN_RXF0S     at 16#A4# range 0 .. 31;
      FDCAN_RXF0A     at 16#A8# range 0 .. 31;
      FDCAN_RXBC      at 16#AC# range 0 .. 31;
      FDCAN_RXF1C     at 16#B0# range 0 .. 31;
      FDCAN_RXF1S     at 16#B4# range 0 .. 31;
      FDCAN_RXF1A     at 16#B8# range 0 .. 31;
      FDCAN_RXESC     at 16#BC# range 0 .. 31;
      FDCAN_TXBC      at 16#C0# range 0 .. 31;
      FDCAN_TXFQS     at 16#C4# range 0 .. 31;
      FDCAN_TXESC     at 16#C8# range 0 .. 31;
      FDCAN_TXBRP     at 16#CC# range 0 .. 31;
      FDCAN_TXBAR     at 16#D0# range 0 .. 31;
      FDCAN_TXBCR     at 16#D4# range 0 .. 31;
      FDCAN_TXBTO     at 16#D8# range 0 .. 31;
      FDCAN_TXBCF     at 16#DC# range 0 .. 31;
      FDCAN_TXBTIE    at 16#E0# range 0 .. 31;
      FDCAN_TXBCIE    at 16#E4# range 0 .. 31;
      FDCAN_TXEFC     at 16#F0# range 0 .. 31;
      FDCAN_TXEFS     at 16#F4# range 0 .. 31;
      FDCAN_TXEFA     at 16#F8# range 0 .. 31;
      FDCAN_TTTMC     at 16#100# range 0 .. 31;
      FDCAN_TTRMC     at 16#104# range 0 .. 31;
      FDCAN_TTOCF     at 16#108# range 0 .. 31;
      FDCAN_TTMLM     at 16#10C# range 0 .. 31;
      FDCAN_TURCF     at 16#110# range 0 .. 31;
      FDCAN_TTOCN     at 16#114# range 0 .. 31;
      FDCAN_TTGTP     at 16#118# range 0 .. 31;
      FDCAN_TTTMK     at 16#11C# range 0 .. 31;
      FDCAN_TTIR      at 16#120# range 0 .. 31;
      FDCAN_TTIE      at 16#124# range 0 .. 31;
      FDCAN_TTILS     at 16#128# range 0 .. 31;
      FDCAN_TTOST     at 16#12C# range 0 .. 31;
      FDCAN_TURNA     at 16#130# range 0 .. 31;
      FDCAN_TTLGT     at 16#134# range 0 .. 31;
      FDCAN_TTCTC     at 16#138# range 0 .. 31;
      FDCAN_TTCPT     at 16#13C# range 0 .. 31;
      FDCAN_TTCSM     at 16#140# range 0 .. 31;
      FDCAN_TTTS      at 16#300# range 0 .. 31;
      FDCAN_CREL      at 16#0# range 0 .. 31;
      FDCAN_CCU_CREL  at 16#0# range 0 .. 31;
      FDCAN_ENDN      at 16#4# range 0 .. 31;
      FDCAN_CCU_CCFG  at 16#4# range 0 .. 31;
      FDCAN_DBTP      at 16#C# range 0 .. 31;
      FDCAN_CCU_CWD   at 16#C# range 0 .. 31;
      FDCAN_TEST      at 16#10# range 0 .. 31;
      FDCAN_CCU_IR    at 16#10# range 0 .. 31;
      FDCAN_RWD       at 16#14# range 0 .. 31;
      FDCAN_CCU_IE    at 16#14# range 0 .. 31;
   end record;

   --  FDCAN register block
   FDCAN1_Periph : aliased FDCAN_Peripheral
     with Import, Address => FDCAN1_Base;

   --  FDCAN register block
   FDCAN1_S_Periph : aliased FDCAN_Peripheral
     with Import, Address => FDCAN1_S_Base;

   --  FDCAN register block
   FDCAN2_Periph : aliased FDCAN_Peripheral
     with Import, Address => FDCAN2_Base;

   --  FDCAN register block
   FDCAN2_S_Periph : aliased FDCAN_Peripheral
     with Import, Address => FDCAN2_S_Base;

   --  FDCAN register block
   FDCAN3_Periph : aliased FDCAN_Peripheral
     with Import, Address => FDCAN3_Base;

   --  FDCAN register block
   FDCAN3_S_Periph : aliased FDCAN_Peripheral
     with Import, Address => FDCAN3_S_Base;

end Interfaces.STM32.FDCAN;
