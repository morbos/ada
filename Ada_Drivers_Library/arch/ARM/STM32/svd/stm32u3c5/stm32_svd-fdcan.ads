--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.FDCAN is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype FDCAN_CREL_DAY_Field is HAL.UInt8;
   subtype FDCAN_CREL_MON_Field is HAL.UInt8;
   subtype FDCAN_CREL_YEAR_Field is HAL.UInt4;
   subtype FDCAN_CREL_SUBSTEP_Field is HAL.UInt4;
   subtype FDCAN_CREL_STEP_Field is HAL.UInt4;
   subtype FDCAN_CREL_REL_Field is HAL.UInt4;

   --  FDCAN core release register
   type FDCAN_CREL_Register is record
      --  Read-only. 18
      DAY     : FDCAN_CREL_DAY_Field;
      --  Read-only. 12
      MON     : FDCAN_CREL_MON_Field;
      --  Read-only. 4
      YEAR    : FDCAN_CREL_YEAR_Field;
      --  Read-only. 1
      SUBSTEP : FDCAN_CREL_SUBSTEP_Field;
      --  Read-only. 2
      STEP    : FDCAN_CREL_STEP_Field;
      --  Read-only. 3
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

   subtype FDCAN_DBTP_DSJW_Field is HAL.UInt4;
   subtype FDCAN_DBTP_DTSEG2_Field is HAL.UInt4;
   subtype FDCAN_DBTP_DTSEG1_Field is HAL.UInt5;
   subtype FDCAN_DBTP_DBRP_Field is HAL.UInt5;

   --  FDCAN data bit timing and prescaler register
   type FDCAN_DBTP_Register is record
      --  Synchronization jump width
      DSJW           : FDCAN_DBTP_DSJW_Field := 16#3#;
      --  Data time segment after sample point
      DTSEG2         : FDCAN_DBTP_DTSEG2_Field := 16#3#;
      --  Data time segment before sample point
      DTSEG1         : FDCAN_DBTP_DTSEG1_Field := 16#A#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Data bit rate prescaler
      DBRP           : FDCAN_DBTP_DBRP_Field := 16#0#;
      --  unspecified
      Reserved_21_22 : HAL.UInt2 := 16#0#;
      --  Transceiver delay compensation
      TDC            : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
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

   subtype FDCAN_TEST_Tx_Field is HAL.UInt2;

   --  FDCAN test register
   type FDCAN_TEST_Register is record
      --  unspecified
      Reserved_0_3  : HAL.UInt4 := 16#0#;
      --  Loop-back mode
      LBCK          : Boolean := False;
      --  Control of transmit pin
      Tx            : FDCAN_TEST_Tx_Field := 16#0#;
      --  Read-only. Receive pin
      Rx            : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TEST_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      LBCK          at 0 range 4 .. 4;
      Tx            at 0 range 5 .. 6;
      Rx            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FDCAN_RWD_WDC_Field is HAL.UInt8;
   subtype FDCAN_RWD_WDV_Field is HAL.UInt8;

   --  FDCAN RAM watchdog register
   type FDCAN_RWD_Register is record
      --  Watchdog configuration
      WDC            : FDCAN_RWD_WDC_Field := 16#0#;
      --  Read-only. Watchdog value
      WDV            : FDCAN_RWD_WDV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RWD_Register use record
      WDC            at 0 range 0 .. 7;
      WDV            at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
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
      --  FDCAN bit rate switching
      BRSE           : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Protocol exception handling disable
      PxHD           : Boolean := False;
      --  Edge filtering during bus integration
      EFBI           : Boolean := False;
      --  Transmit pause enable
      TxP            : Boolean := False;
      --  Non-ISO operation
      NISO           : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
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
      PxHD           at 0 range 12 .. 12;
      EFBI           at 0 range 13 .. 13;
      TxP            at 0 range 14 .. 14;
      NISO           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FDCAN_NBTP_NTSEG2_Field is HAL.UInt7;
   subtype FDCAN_NBTP_NTSEG1_Field is HAL.UInt8;
   subtype FDCAN_NBTP_NBRP_Field is HAL.UInt9;
   subtype FDCAN_NBTP_NSJW_Field is HAL.UInt7;

   --  FDCAN nominal bit timing and prescaler register
   type FDCAN_NBTP_Register is record
      --  Nominal time segment after sample point
      NTSEG2       : FDCAN_NBTP_NTSEG2_Field := 16#3#;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
      --  Nominal time segment before sample point
      NTSEG1       : FDCAN_NBTP_NTSEG1_Field := 16#A#;
      --  Bit rate prescaler
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

   subtype FDCAN_TSCC_TSS_Field is HAL.UInt2;
   subtype FDCAN_TSCC_TCP_Field is HAL.UInt4;

   --  FDCAN timestamp counter configuration register
   type FDCAN_TSCC_Register is record
      --  Timestamp select
      TSS            : FDCAN_TSCC_TSS_Field := 16#0#;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Timestamp counter prescaler
      TCP            : FDCAN_TSCC_TCP_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TSCC_Register use record
      TSS            at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      TCP            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype FDCAN_TSCV_TSC_Field is HAL.UInt16;

   --  FDCAN timestamp counter value register
   type FDCAN_TSCV_Register is record
      --  Timestamp counter
      TSC            : FDCAN_TSCV_TSC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TSCV_Register use record
      TSC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FDCAN_TOCC_TOS_Field is HAL.UInt2;
   subtype FDCAN_TOCC_TOP_Field is HAL.UInt16;

   --  FDCAN timeout counter configuration register
   type FDCAN_TOCC_Register is record
      --  Timeout counter enable
      ETOC          : Boolean := False;
      --  Timeout select
      TOS           : FDCAN_TOCC_TOS_Field := 16#0#;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
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

   subtype FDCAN_TOCV_TOC_Field is HAL.UInt16;

   --  FDCAN timeout counter value register
   type FDCAN_TOCV_Register is record
      --  Timeout counter
      TOC            : FDCAN_TOCV_TOC_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TOCV_Register use record
      TOC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FDCAN_ECR_TEC_Field is HAL.UInt8;
   subtype FDCAN_ECR_REC_Field is HAL.UInt7;
   subtype FDCAN_ECR_CEL_Field is HAL.UInt8;

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
      Reserved_24_31 : HAL.UInt8 := 16#0#;
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

   subtype FDCAN_PSR_LEC_Field is HAL.UInt3;
   subtype FDCAN_PSR_ACT_Field is HAL.UInt2;
   subtype FDCAN_PSR_DLEC_Field is HAL.UInt3;
   subtype FDCAN_PSR_TDCV_Field is HAL.UInt7;

   --  FDCAN protocol status register
   type FDCAN_PSR_Register is record
      --  Last error code
      LEC            : FDCAN_PSR_LEC_Field := 16#7#;
      --  Read-only. Activity
      ACT            : FDCAN_PSR_ACT_Field := 16#0#;
      --  Read-only. Error passive
      EP             : Boolean := False;
      --  Read-only. Warning status
      EW             : Boolean := False;
      --  Read-only. Bus-off status
      BO             : Boolean := False;
      --  Data last error code
      DLEC           : FDCAN_PSR_DLEC_Field := 16#7#;
      --  ESI flag of last received FDCAN message
      RESI           : Boolean := False;
      --  BRS flag of last received FDCAN message
      RBRS           : Boolean := False;
      --  Received FDCAN message
      REDL           : Boolean := False;
      --  Protocol exception event
      PxE            : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Read-only. Transmitter delay compensation value
      TDCV           : FDCAN_PSR_TDCV_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
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
      PxE            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TDCV           at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype FDCAN_TDCR_TDCF_Field is HAL.UInt7;
   subtype FDCAN_TDCR_TDCO_Field is HAL.UInt7;

   --  FDCAN transmitter delay compensation register
   type FDCAN_TDCR_Register is record
      --  Transmitter delay compensation filter window length
      TDCF           : FDCAN_TDCR_TDCF_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Transmitter delay compensation offset
      TDCO           : FDCAN_TDCR_TDCO_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
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
      --  Rx FIFO 0 new message
      RF0N           : Boolean := False;
      --  Rx FIFO 0 full
      RF0F           : Boolean := False;
      --  Rx FIFO 0 message lost
      RF0L           : Boolean := False;
      --  Rx FIFO 1 new message
      RF1N           : Boolean := False;
      --  Rx FIFO 1 full
      RF1F           : Boolean := False;
      --  Rx FIFO 1 message lost
      RF1L           : Boolean := False;
      --  High-priority message
      HPM            : Boolean := False;
      --  Transmission completed
      TC             : Boolean := False;
      --  Transmission cancellation finished
      TCF            : Boolean := False;
      --  Tx FIFO empty
      TFE            : Boolean := False;
      --  Tx event FIFO new entry
      TEFN           : Boolean := False;
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
      --  Error logging overflow
      ELO            : Boolean := False;
      --  Error passive
      EP             : Boolean := False;
      --  Warning status
      EW             : Boolean := False;
      --  Bus-off status
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
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_IR_Register use record
      RF0N           at 0 range 0 .. 0;
      RF0F           at 0 range 1 .. 1;
      RF0L           at 0 range 2 .. 2;
      RF1N           at 0 range 3 .. 3;
      RF1F           at 0 range 4 .. 4;
      RF1L           at 0 range 5 .. 5;
      HPM            at 0 range 6 .. 6;
      TC             at 0 range 7 .. 7;
      TCF            at 0 range 8 .. 8;
      TFE            at 0 range 9 .. 9;
      TEFN           at 0 range 10 .. 10;
      TEFF           at 0 range 11 .. 11;
      TEFL           at 0 range 12 .. 12;
      TSW            at 0 range 13 .. 13;
      MRAF           at 0 range 14 .. 14;
      TOO            at 0 range 15 .. 15;
      ELO            at 0 range 16 .. 16;
      EP             at 0 range 17 .. 17;
      EW             at 0 range 18 .. 18;
      BO             at 0 range 19 .. 19;
      WDI            at 0 range 20 .. 20;
      PEA            at 0 range 21 .. 21;
      PED            at 0 range 22 .. 22;
      ARA            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  FDCAN interrupt enable register
   type FDCAN_IE_Register is record
      --  Rx FIFO 0 new message interrupt enable
      RF0NE          : Boolean := False;
      --  Rx FIFO 0 full interrupt enable
      RF0FE          : Boolean := False;
      --  Rx FIFO 0 message lost interrupt enable
      RF0LE          : Boolean := False;
      --  Rx FIFO 1 new message interrupt enable
      RF1NE          : Boolean := False;
      --  Rx FIFO 1 full interrupt enable
      RF1FE          : Boolean := False;
      --  Rx FIFO 1 message lost interrupt enable
      RF1LE          : Boolean := False;
      --  High-priority message interrupt enable
      HPME           : Boolean := False;
      --  Transmission completed interrupt enable
      TCE            : Boolean := False;
      --  Transmission cancellation finished interrupt enable
      TCFE           : Boolean := False;
      --  Tx FIFO empty interrupt enable
      TFEE           : Boolean := False;
      --  Tx event FIFO new entry interrupt enable
      TEFNE          : Boolean := False;
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
      --  Error logging overflow interrupt enable
      ELOE           : Boolean := False;
      --  Error passive interrupt enable
      EPE            : Boolean := False;
      --  Warning status interrupt enable
      EWE            : Boolean := False;
      --  Bus-off status
      BOE            : Boolean := False;
      --  Watchdog interrupt enable
      WDIE           : Boolean := False;
      --  Protocol error in arbitration phase enable
      PEAE           : Boolean := False;
      --  Protocol error in data phase enable
      PEDE           : Boolean := False;
      --  Access to reserved address enable
      ARAE           : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_IE_Register use record
      RF0NE          at 0 range 0 .. 0;
      RF0FE          at 0 range 1 .. 1;
      RF0LE          at 0 range 2 .. 2;
      RF1NE          at 0 range 3 .. 3;
      RF1FE          at 0 range 4 .. 4;
      RF1LE          at 0 range 5 .. 5;
      HPME           at 0 range 6 .. 6;
      TCE            at 0 range 7 .. 7;
      TCFE           at 0 range 8 .. 8;
      TFEE           at 0 range 9 .. 9;
      TEFNE          at 0 range 10 .. 10;
      TEFFE          at 0 range 11 .. 11;
      TEFLE          at 0 range 12 .. 12;
      TSWE           at 0 range 13 .. 13;
      MRAFE          at 0 range 14 .. 14;
      TOOE           at 0 range 15 .. 15;
      ELOE           at 0 range 16 .. 16;
      EPE            at 0 range 17 .. 17;
      EWE            at 0 range 18 .. 18;
      BOE            at 0 range 19 .. 19;
      WDIE           at 0 range 20 .. 20;
      PEAE           at 0 range 21 .. 21;
      PEDE           at 0 range 22 .. 22;
      ARAE           at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  FDCAN_ILS_RxFIFO array
   type FDCAN_ILS_RxFIFO_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FDCAN_ILS_RxFIFO
   type FDCAN_ILS_RxFIFO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RxFIFO as a value
            Val : HAL.UInt2;
         when True =>
            --  RxFIFO as an array
            Arr : FDCAN_ILS_RxFIFO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FDCAN_ILS_RxFIFO_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  FDCAN interrupt line select register
   type FDCAN_ILS_Register is record
      --  Rx FIFO bit grouping the following interruption
      RxFIFO        : FDCAN_ILS_RxFIFO_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Status message bit grouping the following interruption
      SMSG          : Boolean := False;
      --  Tx FIFO ERROR grouping the following interruption
      TFERR         : Boolean := False;
      --  Interrupt regrouping the following interruption
      MISC          : Boolean := False;
      --  Bit and line error grouping the following interruption
      BERR          : Boolean := False;
      --  Protocol error grouping the following interruption
      PERR          : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_ILS_Register use record
      RxFIFO        at 0 range 0 .. 1;
      SMSG          at 0 range 2 .. 2;
      TFERR         at 0 range 3 .. 3;
      MISC          at 0 range 4 .. 4;
      BERR          at 0 range 5 .. 5;
      PERR          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
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
            Val : HAL.UInt2;
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
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_ILE_Register use record
      EINT          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FDCAN_RxGFC_ANFE_Field is HAL.UInt2;
   subtype FDCAN_RxGFC_ANFS_Field is HAL.UInt2;
   subtype FDCAN_RxGFC_LSS_Field is HAL.UInt5;
   subtype FDCAN_RxGFC_LSE_Field is HAL.UInt4;

   --  FDCAN global filter configuration register
   type FDCAN_RxGFC_Register is record
      --  Reject remote frames extended
      RRFE           : Boolean := False;
      --  Reject remote frames standard
      RRFS           : Boolean := False;
      --  Accept non-matching frames extended
      ANFE           : FDCAN_RxGFC_ANFE_Field := 16#0#;
      --  Accept Non-matching frames standard
      ANFS           : FDCAN_RxGFC_ANFS_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  FIFO 1 operation mode (overwrite or blocking)
      F1OM           : Boolean := False;
      --  FIFO 0 operation mode (overwrite or blocking)
      F0OM           : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Number of standard filter elements in the list
      LSS            : FDCAN_RxGFC_LSS_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Number of extended filter elements in the list
      LSE            : FDCAN_RxGFC_LSE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RxGFC_Register use record
      RRFE           at 0 range 0 .. 0;
      RRFS           at 0 range 1 .. 1;
      ANFE           at 0 range 2 .. 3;
      ANFS           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      F1OM           at 0 range 8 .. 8;
      F0OM           at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      LSS            at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      LSE            at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype FDCAN_xIDAM_EIDM_Field is HAL.UInt29;

   --  FDCAN extended ID and mask register
   type FDCAN_xIDAM_Register is record
      --  Extended ID mask
      EIDM           : FDCAN_xIDAM_EIDM_Field := 16#1FFFFFFF#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_xIDAM_Register use record
      EIDM           at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype FDCAN_HPMS_BIDx_Field is HAL.UInt3;
   subtype FDCAN_HPMS_MSI_Field is HAL.UInt2;
   subtype FDCAN_HPMS_FIDx_Field is HAL.UInt5;

   --  FDCAN high-priority message status register
   type FDCAN_HPMS_Register is record
      --  Read-only. Buffer index
      BIDx           : FDCAN_HPMS_BIDx_Field;
      --  unspecified
      Reserved_3_5   : HAL.UInt3;
      --  Read-only. Message storage indicator
      MSI            : FDCAN_HPMS_MSI_Field;
      --  Read-only. Filter index
      FIDx           : FDCAN_HPMS_FIDx_Field;
      --  unspecified
      Reserved_13_14 : HAL.UInt2;
      --  Read-only. Filter list
      FLST           : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_HPMS_Register use record
      BIDx           at 0 range 0 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      MSI            at 0 range 6 .. 7;
      FIDx           at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      FLST           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FDCAN_RxF0S_F0FL_Field is HAL.UInt4;
   subtype FDCAN_RxF0S_F0GI_Field is HAL.UInt2;
   subtype FDCAN_RxF0S_F0PI_Field is HAL.UInt2;

   --  FDCAN Rx FIFO 0 status register
   type FDCAN_RxF0S_Register is record
      --  Read-only. Rx FIFO 0 fill level
      F0FL           : FDCAN_RxF0S_F0FL_Field;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. Rx FIFO 0 get index
      F0GI           : FDCAN_RxF0S_F0GI_Field;
      --  unspecified
      Reserved_10_15 : HAL.UInt6;
      --  Read-only. Rx FIFO 0 put index
      F0PI           : FDCAN_RxF0S_F0PI_Field;
      --  unspecified
      Reserved_18_23 : HAL.UInt6;
      --  Read-only. Rx FIFO 0 full
      F0F            : Boolean;
      --  Read-only. Rx FIFO 0 message lost
      RF0L           : Boolean;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RxF0S_Register use record
      F0FL           at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      F0GI           at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      F0PI           at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      F0F            at 0 range 24 .. 24;
      RF0L           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype FDCAN_RxF0A_F0AI_Field is HAL.UInt3;

   --  CAN Rx FIFO 0 acknowledge register
   type FDCAN_RxF0A_Register is record
      --  Rx FIFO 0 acknowledge index
      F0AI          : FDCAN_RxF0A_F0AI_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RxF0A_Register use record
      F0AI          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype FDCAN_RxF1S_F1FL_Field is HAL.UInt4;
   subtype FDCAN_RxF1S_F1GI_Field is HAL.UInt2;
   subtype FDCAN_RxF1S_F1PI_Field is HAL.UInt2;

   --  FDCAN Rx FIFO 1 status register
   type FDCAN_RxF1S_Register is record
      --  Read-only. Rx FIFO 1 fill level
      F1FL           : FDCAN_RxF1S_F1FL_Field;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. Rx FIFO 1 get index
      F1GI           : FDCAN_RxF1S_F1GI_Field;
      --  unspecified
      Reserved_10_15 : HAL.UInt6;
      --  Read-only. Rx FIFO 1 put index
      F1PI           : FDCAN_RxF1S_F1PI_Field;
      --  unspecified
      Reserved_18_23 : HAL.UInt6;
      --  Read-only. Rx FIFO 1 full
      F1F            : Boolean;
      --  Read-only. Rx FIFO 1 message lost
      RF1L           : Boolean;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RxF1S_Register use record
      F1FL           at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      F1GI           at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      F1PI           at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      F1F            at 0 range 24 .. 24;
      RF1L           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype FDCAN_RxF1A_F1AI_Field is HAL.UInt3;

   --  FDCAN Rx FIFO 1 acknowledge register
   type FDCAN_RxF1A_Register is record
      --  Rx FIFO 1 acknowledge index
      F1AI          : FDCAN_RxF1A_F1AI_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_RxF1A_Register use record
      F1AI          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  FDCAN Tx buffer configuration register
   type FDCAN_TxBC_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24 := 16#0#;
      --  Tx FIFO/queue mode
      TFQM           : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TxBC_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      TFQM           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype FDCAN_TxFQS_TFFL_Field is HAL.UInt3;
   subtype FDCAN_TxFQS_TFGI_Field is HAL.UInt2;
   subtype FDCAN_TxFQS_TFQPI_Field is HAL.UInt2;

   --  FDCAN Tx FIFO/queue status register
   type FDCAN_TxFQS_Register is record
      --  Read-only. Tx FIFO free level
      TFFL           : FDCAN_TxFQS_TFFL_Field;
      --  unspecified
      Reserved_3_7   : HAL.UInt5;
      --  Read-only. Tx FIFO get index
      TFGI           : FDCAN_TxFQS_TFGI_Field;
      --  unspecified
      Reserved_10_15 : HAL.UInt6;
      --  Read-only. Tx FIFO/queue put index
      TFQPI          : FDCAN_TxFQS_TFQPI_Field;
      --  unspecified
      Reserved_18_20 : HAL.UInt3;
      --  Read-only. Tx FIFO/queue full
      TFQF           : Boolean;
      --  unspecified
      Reserved_22_31 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TxFQS_Register use record
      TFFL           at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TFGI           at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      TFQPI          at 0 range 16 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      TFQF           at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype FDCAN_TxBRP_TRP_Field is HAL.UInt3;

   --  FDCAN Tx buffer request pending register
   type FDCAN_TxBRP_Register is record
      --  Read-only. Transmission request pending
      TRP           : FDCAN_TxBRP_TRP_Field;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TxBRP_Register use record
      TRP           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype FDCAN_TxBAR_AR_Field is HAL.UInt3;

   --  FDCAN Tx buffer add request register
   type FDCAN_TxBAR_Register is record
      --  Add request
      AR            : FDCAN_TxBAR_AR_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TxBAR_Register use record
      AR            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype FDCAN_TxBCR_CR_Field is HAL.UInt3;

   --  FDCAN Tx buffer cancellation request register
   type FDCAN_TxBCR_Register is record
      --  Cancellation request
      CR            : FDCAN_TxBCR_CR_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TxBCR_Register use record
      CR            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype FDCAN_TxBTO_TO_Field is HAL.UInt3;

   --  FDCAN Tx buffer transmission occurred register
   type FDCAN_TxBTO_Register is record
      --  Read-only. Transmission occurred.
      TO            : FDCAN_TxBTO_TO_Field;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TxBTO_Register use record
      TO            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype FDCAN_TxBCF_CF_Field is HAL.UInt3;

   --  FDCAN Tx buffer cancellation finished register
   type FDCAN_TxBCF_Register is record
      --  Read-only. Cancellation finished
      CF            : FDCAN_TxBCF_CF_Field;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TxBCF_Register use record
      CF            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype FDCAN_TxBTIE_TIE_Field is HAL.UInt3;

   --  FDCAN Tx buffer transmission interrupt enable register
   type FDCAN_TxBTIE_Register is record
      --  Transmission interrupt enable
      TIE           : FDCAN_TxBTIE_TIE_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TxBTIE_Register use record
      TIE           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype FDCAN_TxBCIE_CFIE_Field is HAL.UInt3;

   --  FDCAN Tx buffer cancellation finished interrupt enable register
   type FDCAN_TxBCIE_Register is record
      --  Cancellation finished interrupt enable.
      CFIE          : FDCAN_TxBCIE_CFIE_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TxBCIE_Register use record
      CFIE          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype FDCAN_TxEFS_EFFL_Field is HAL.UInt3;
   subtype FDCAN_TxEFS_EFGI_Field is HAL.UInt2;
   subtype FDCAN_TxEFS_EFPI_Field is HAL.UInt2;

   --  FDCAN Tx event FIFO status register
   type FDCAN_TxEFS_Register is record
      --  Read-only. Event FIFO fill level
      EFFL           : FDCAN_TxEFS_EFFL_Field;
      --  unspecified
      Reserved_3_7   : HAL.UInt5;
      --  Read-only. Event FIFO get index
      EFGI           : FDCAN_TxEFS_EFGI_Field;
      --  unspecified
      Reserved_10_15 : HAL.UInt6;
      --  Read-only. Event FIFO put index
      EFPI           : FDCAN_TxEFS_EFPI_Field;
      --  unspecified
      Reserved_18_23 : HAL.UInt6;
      --  Read-only. Event FIFO full
      EFF            : Boolean;
      --  Read-only. Tx event FIFO element lost
      TEFL           : Boolean;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TxEFS_Register use record
      EFFL           at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      EFGI           at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      EFPI           at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      EFF            at 0 range 24 .. 24;
      TEFL           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype FDCAN_TxEFA_EFAI_Field is HAL.UInt2;

   --  FDCAN Tx event FIFO acknowledge register
   type FDCAN_TxEFA_Register is record
      --  Event FIFO acknowledge index
      EFAI          : FDCAN_TxEFA_EFAI_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_TxEFA_Register use record
      EFAI          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FDCAN_CKDIV_PDIV_Field is HAL.UInt4;

   --  FDCAN CFG clock divider register
   type FDCAN_CKDIV_Register is record
      --  input clock divider
      PDIV          : FDCAN_CKDIV_PDIV_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDCAN_CKDIV_Register use record
      PDIV          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  FDCAN register block
   type FDCAN_Peripheral is record
      --  FDCAN core release register
      FDCAN_CREL   : aliased FDCAN_CREL_Register;
      --  FDCAN endian register
      FDCAN_ENDN   : aliased HAL.UInt32;
      --  FDCAN data bit timing and prescaler register
      FDCAN_DBTP   : aliased FDCAN_DBTP_Register;
      --  FDCAN test register
      FDCAN_TEST   : aliased FDCAN_TEST_Register;
      --  FDCAN RAM watchdog register
      FDCAN_RWD    : aliased FDCAN_RWD_Register;
      --  FDCAN CC control register
      FDCAN_CCCR   : aliased FDCAN_CCCR_Register;
      --  FDCAN nominal bit timing and prescaler register
      FDCAN_NBTP   : aliased FDCAN_NBTP_Register;
      --  FDCAN timestamp counter configuration register
      FDCAN_TSCC   : aliased FDCAN_TSCC_Register;
      --  FDCAN timestamp counter value register
      FDCAN_TSCV   : aliased FDCAN_TSCV_Register;
      --  FDCAN timeout counter configuration register
      FDCAN_TOCC   : aliased FDCAN_TOCC_Register;
      --  FDCAN timeout counter value register
      FDCAN_TOCV   : aliased FDCAN_TOCV_Register;
      --  FDCAN error counter register
      FDCAN_ECR    : aliased FDCAN_ECR_Register;
      --  FDCAN protocol status register
      FDCAN_PSR    : aliased FDCAN_PSR_Register;
      --  FDCAN transmitter delay compensation register
      FDCAN_TDCR   : aliased FDCAN_TDCR_Register;
      --  FDCAN interrupt register
      FDCAN_IR     : aliased FDCAN_IR_Register;
      --  FDCAN interrupt enable register
      FDCAN_IE     : aliased FDCAN_IE_Register;
      --  FDCAN interrupt line select register
      FDCAN_ILS    : aliased FDCAN_ILS_Register;
      --  FDCAN interrupt line enable register
      FDCAN_ILE    : aliased FDCAN_ILE_Register;
      --  FDCAN global filter configuration register
      FDCAN_RxGFC  : aliased FDCAN_RxGFC_Register;
      --  FDCAN extended ID and mask register
      FDCAN_xIDAM  : aliased FDCAN_xIDAM_Register;
      --  FDCAN high-priority message status register
      FDCAN_HPMS   : aliased FDCAN_HPMS_Register;
      --  FDCAN Rx FIFO 0 status register
      FDCAN_RxF0S  : aliased FDCAN_RxF0S_Register;
      --  CAN Rx FIFO 0 acknowledge register
      FDCAN_RxF0A  : aliased FDCAN_RxF0A_Register;
      --  FDCAN Rx FIFO 1 status register
      FDCAN_RxF1S  : aliased FDCAN_RxF1S_Register;
      --  FDCAN Rx FIFO 1 acknowledge register
      FDCAN_RxF1A  : aliased FDCAN_RxF1A_Register;
      --  FDCAN Tx buffer configuration register
      FDCAN_TxBC   : aliased FDCAN_TxBC_Register;
      --  FDCAN Tx FIFO/queue status register
      FDCAN_TxFQS  : aliased FDCAN_TxFQS_Register;
      --  FDCAN Tx buffer request pending register
      FDCAN_TxBRP  : aliased FDCAN_TxBRP_Register;
      --  FDCAN Tx buffer add request register
      FDCAN_TxBAR  : aliased FDCAN_TxBAR_Register;
      --  FDCAN Tx buffer cancellation request register
      FDCAN_TxBCR  : aliased FDCAN_TxBCR_Register;
      --  FDCAN Tx buffer transmission occurred register
      FDCAN_TxBTO  : aliased FDCAN_TxBTO_Register;
      --  FDCAN Tx buffer cancellation finished register
      FDCAN_TxBCF  : aliased FDCAN_TxBCF_Register;
      --  FDCAN Tx buffer transmission interrupt enable register
      FDCAN_TxBTIE : aliased FDCAN_TxBTIE_Register;
      --  FDCAN Tx buffer cancellation finished interrupt enable register
      FDCAN_TxBCIE : aliased FDCAN_TxBCIE_Register;
      --  FDCAN Tx event FIFO status register
      FDCAN_TxEFS  : aliased FDCAN_TxEFS_Register;
      --  FDCAN Tx event FIFO acknowledge register
      FDCAN_TxEFA  : aliased FDCAN_TxEFA_Register;
      --  FDCAN CFG clock divider register
      FDCAN_CKDIV  : aliased FDCAN_CKDIV_Register;
   end record
     with Volatile;

   for FDCAN_Peripheral use record
      FDCAN_CREL   at 16#0# range 0 .. 31;
      FDCAN_ENDN   at 16#4# range 0 .. 31;
      FDCAN_DBTP   at 16#C# range 0 .. 31;
      FDCAN_TEST   at 16#10# range 0 .. 31;
      FDCAN_RWD    at 16#14# range 0 .. 31;
      FDCAN_CCCR   at 16#18# range 0 .. 31;
      FDCAN_NBTP   at 16#1C# range 0 .. 31;
      FDCAN_TSCC   at 16#20# range 0 .. 31;
      FDCAN_TSCV   at 16#24# range 0 .. 31;
      FDCAN_TOCC   at 16#28# range 0 .. 31;
      FDCAN_TOCV   at 16#2C# range 0 .. 31;
      FDCAN_ECR    at 16#40# range 0 .. 31;
      FDCAN_PSR    at 16#44# range 0 .. 31;
      FDCAN_TDCR   at 16#48# range 0 .. 31;
      FDCAN_IR     at 16#50# range 0 .. 31;
      FDCAN_IE     at 16#54# range 0 .. 31;
      FDCAN_ILS    at 16#58# range 0 .. 31;
      FDCAN_ILE    at 16#5C# range 0 .. 31;
      FDCAN_RxGFC  at 16#80# range 0 .. 31;
      FDCAN_xIDAM  at 16#84# range 0 .. 31;
      FDCAN_HPMS   at 16#88# range 0 .. 31;
      FDCAN_RxF0S  at 16#90# range 0 .. 31;
      FDCAN_RxF0A  at 16#94# range 0 .. 31;
      FDCAN_RxF1S  at 16#98# range 0 .. 31;
      FDCAN_RxF1A  at 16#9C# range 0 .. 31;
      FDCAN_TxBC   at 16#C0# range 0 .. 31;
      FDCAN_TxFQS  at 16#C4# range 0 .. 31;
      FDCAN_TxBRP  at 16#C8# range 0 .. 31;
      FDCAN_TxBAR  at 16#CC# range 0 .. 31;
      FDCAN_TxBCR  at 16#D0# range 0 .. 31;
      FDCAN_TxBTO  at 16#D4# range 0 .. 31;
      FDCAN_TxBCF  at 16#D8# range 0 .. 31;
      FDCAN_TxBTIE at 16#DC# range 0 .. 31;
      FDCAN_TxBCIE at 16#E0# range 0 .. 31;
      FDCAN_TxEFS  at 16#E4# range 0 .. 31;
      FDCAN_TxEFA  at 16#E8# range 0 .. 31;
      FDCAN_CKDIV  at 16#100# range 0 .. 31;
   end record;

   --  FDCAN register block
   FDCAN1_Periph : aliased FDCAN_Peripheral
     with Import, Address => FDCAN1_Base;

   --  FDCAN register block
   FDCAN2_Periph : aliased FDCAN_Peripheral
     with Import, Address => FDCAN2_Base;

   --  FDCAN register block
   SEC_FDCAN1_Periph : aliased FDCAN_Peripheral
     with Import, Address => SEC_FDCAN1_Base;

   --  FDCAN register block
   SEC_FDCAN2_Periph : aliased FDCAN_Peripheral
     with Import, Address => SEC_FDCAN2_Base;

end STM32_SVD.FDCAN;
