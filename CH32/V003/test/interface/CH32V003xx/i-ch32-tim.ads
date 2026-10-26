--
--  Copyright (C) 2026, AdaCore
--

--  This spec has been automatically generated from CH32V003xx.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.CH32.TIM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTLR1_CMS_Field is Interfaces.Bit_Types.UInt2;
   subtype CTLR1_CKD_Field is Interfaces.Bit_Types.UInt2;

   --  control register 1
   type CTLR1_Register is record
      --  Counter enable
      CEN            : Boolean := False;
      --  Update disable
      UDIS           : Boolean := False;
      --  Update request source
      URS            : Boolean := False;
      --  One-pulse mode
      OPM            : Boolean := False;
      --  Direction
      DIR            : Boolean := False;
      --  Center-aligned mode selection
      CMS            : CTLR1_CMS_Field := 16#0#;
      --  Auto-reload preload enable
      ARPE           : Boolean := False;
      --  Clock division
      CKD            : CTLR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_13 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Timer capture value configuration enable
      TMR_CAP_OV_EN  : Boolean := False;
      --  Timer capture level indication enable
      TMR_CAP_LVL_EN : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLR1_Register use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      DIR            at 0 range 4 .. 4;
      CMS            at 0 range 5 .. 6;
      ARPE           at 0 range 7 .. 7;
      CKD            at 0 range 8 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      TMR_CAP_OV_EN  at 0 range 14 .. 14;
      TMR_CAP_LVL_EN at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CTLR2_MMS_Field is Interfaces.Bit_Types.UInt3;

   --  control register 2
   type CTLR2_Register is record
      --  Capture/compare preloaded control
      CCPC           : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Capture/compare control update selection
      CCUS           : Boolean := False;
      --  Capture/compare DMA selection
      CCDS           : Boolean := False;
      --  Master mode selection
      MMS            : CTLR2_MMS_Field := 16#0#;
      --  TI1 selection
      TI1S           : Boolean := False;
      --  Output Idle state 1
      OIS1           : Boolean := False;
      --  Output Idle state 1
      OIS1N          : Boolean := False;
      --  Output Idle state 2
      OIS2           : Boolean := False;
      --  Output Idle state 2
      OIS2N          : Boolean := False;
      --  Output Idle state 3
      OIS3           : Boolean := False;
      --  Output Idle state 3
      OIS3N          : Boolean := False;
      --  Output Idle state 4
      OIS4           : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLR2_Register use record
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
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype SMCFGR_SMS_Field is Interfaces.Bit_Types.UInt3;
   subtype SMCFGR_TS_Field is Interfaces.Bit_Types.UInt3;
   subtype SMCFGR_ETF_Field is Interfaces.Bit_Types.UInt4;
   subtype SMCFGR_ETPS_Field is Interfaces.Bit_Types.UInt2;

   --  slave mode control register
   type SMCFGR_Register is record
      --  Slave mode selection
      SMS            : SMCFGR_SMS_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger selection
      TS             : SMCFGR_TS_Field := 16#0#;
      --  Master/Slave mode
      MSM            : Boolean := False;
      --  External trigger filter
      ETF            : SMCFGR_ETF_Field := 16#0#;
      --  External trigger prescaler
      ETPS           : SMCFGR_ETPS_Field := 16#0#;
      --  External clock enable
      ECE            : Boolean := False;
      --  Read-only. External trigger polarity
      ETP            : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMCFGR_Register use record
      SMS            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TS             at 0 range 4 .. 6;
      MSM            at 0 range 7 .. 7;
      ETF            at 0 range 8 .. 11;
      ETPS           at 0 range 12 .. 13;
      ECE            at 0 range 14 .. 14;
      ETP            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DMA/Interrupt enable register
   type DMAINTENR_Register is record
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
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAINTENR_Register use record
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
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  status register
   type INTFR_Register is record
      --  Update interrupt flag
      UIF            : Boolean := False;
      --  Capture/compare 1 interrupt flag
      CC1IF          : Boolean := False;
      --  Capture/Compare 2 interrupt flag
      CC2IF          : Boolean := False;
      --  Capture/Compare 3 interrupt flag
      CC3IF          : Boolean := False;
      --  Capture/Compare 4 interrupt flag
      CC4IF          : Boolean := False;
      --  COM interrupt flag
      COMIF          : Boolean := False;
      --  Trigger interrupt flag
      TIF            : Boolean := False;
      --  Break interrupt flag
      BIF            : Boolean := False;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Capture/Compare 1 overcapture flag
      CC1OF          : Boolean := False;
      --  Capture/compare 2 overcapture flag
      CC2OF          : Boolean := False;
      --  Capture/Compare 3 overcapture flag
      CC3OF          : Boolean := False;
      --  Capture/Compare 4 overcapture flag
      CC4OF          : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTFR_Register use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      CC2IF          at 0 range 2 .. 2;
      CC3IF          at 0 range 3 .. 3;
      CC4IF          at 0 range 4 .. 4;
      COMIF          at 0 range 5 .. 5;
      TIF            at 0 range 6 .. 6;
      BIF            at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CC1OF          at 0 range 9 .. 9;
      CC2OF          at 0 range 10 .. 10;
      CC3OF          at 0 range 11 .. 11;
      CC4OF          at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  event generation register
   type SWEVGR_Register is record
      --  Write-only. Update generation
      UG            : Boolean := False;
      --  Write-only. Capture/compare 1 generation
      CC1G          : Boolean := False;
      --  Write-only. Capture/compare 2 generation
      CC2G          : Boolean := False;
      --  Write-only. Capture/compare 3 generation
      CC3G          : Boolean := False;
      --  Write-only. Capture/compare 4 generation
      CC4G          : Boolean := False;
      --  Write-only. Capture/Compare control update generation
      COMG          : Boolean := False;
      --  Write-only. Trigger generation
      TG            : Boolean := False;
      --  Write-only. Break generation
      BG            : Boolean := False;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWEVGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      CC3G          at 0 range 3 .. 3;
      CC4G          at 0 range 4 .. 4;
      COMG          at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      BG            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CHCTLR1_Output_CC1S_Field is Interfaces.Bit_Types.UInt2;
   subtype CHCTLR1_Output_OC1M_Field is Interfaces.Bit_Types.UInt3;
   subtype CHCTLR1_Output_CC2S_Field is Interfaces.Bit_Types.UInt2;
   subtype CHCTLR1_Output_OC2M_Field is Interfaces.Bit_Types.UInt3;

   --  capture/compare mode register (output mode)
   type CHCTLR1_Output_Register is record
      --  Capture/Compare 1 selection
      CC1S           : CHCTLR1_Output_CC1S_Field := 16#0#;
      --  Output Compare 1 fast enable
      OC1FE          : Boolean := False;
      --  Output Compare 1 preload enable
      OC1PE          : Boolean := False;
      --  Output Compare 1 mode
      OC1M           : CHCTLR1_Output_OC1M_Field := 16#0#;
      --  Output Compare 1 clear enable
      OC1CE          : Boolean := False;
      --  Capture/Compare 2 selection
      CC2S           : CHCTLR1_Output_CC2S_Field := 16#0#;
      --  Output Compare 2 fast enable
      OC2FE          : Boolean := False;
      --  Output Compare 2 preload enable
      OC2PE          : Boolean := False;
      --  Output Compare 2 mode
      OC2M           : CHCTLR1_Output_OC2M_Field := 16#0#;
      --  Output Compare 2 clear enable
      OC2CE          : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHCTLR1_Output_Register use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M           at 0 range 4 .. 6;
      OC1CE          at 0 range 7 .. 7;
      CC2S           at 0 range 8 .. 9;
      OC2FE          at 0 range 10 .. 10;
      OC2PE          at 0 range 11 .. 11;
      OC2M           at 0 range 12 .. 14;
      OC2CE          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CHCTLR1_Input_CC1S_Field is Interfaces.Bit_Types.UInt2;
   subtype CHCTLR1_Input_IC1PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype CHCTLR1_Input_IC1F_Field is Interfaces.Bit_Types.UInt4;
   subtype CHCTLR1_Input_CC2S_Field is Interfaces.Bit_Types.UInt2;
   subtype CHCTLR1_Input_IC2PCS_Field is Interfaces.Bit_Types.UInt2;
   subtype CHCTLR1_Input_IC2F_Field is Interfaces.Bit_Types.UInt4;

   --  capture/compare mode register 1 (input mode)
   type CHCTLR1_Input_Register is record
      --  Capture/Compare 1 selection
      CC1S           : CHCTLR1_Input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : CHCTLR1_Input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F           : CHCTLR1_Input_IC1F_Field := 16#0#;
      --  Capture/Compare 2 selection
      CC2S           : CHCTLR1_Input_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PCS         : CHCTLR1_Input_IC2PCS_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : CHCTLR1_Input_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHCTLR1_Input_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PCS         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CHCTLR2_Output_CC3S_Field is Interfaces.Bit_Types.UInt2;
   subtype CHCTLR2_Output_OC3M_Field is Interfaces.Bit_Types.UInt3;
   subtype CHCTLR2_Output_CC4S_Field is Interfaces.Bit_Types.UInt2;
   subtype CHCTLR2_Output_OC4M_Field is Interfaces.Bit_Types.UInt3;

   --  capture/compare mode register (output mode)
   type CHCTLR2_Output_Register is record
      --  Capture/Compare 3 selection
      CC3S           : CHCTLR2_Output_CC3S_Field := 16#0#;
      --  Output compare 3 fast enable
      OC3FE          : Boolean := False;
      --  Output compare 3 preload enable
      OC3PE          : Boolean := False;
      --  Output compare 3 mode
      OC3M           : CHCTLR2_Output_OC3M_Field := 16#0#;
      --  Output compare 3 clear enable
      OC3CE          : Boolean := False;
      --  Capture/Compare 4 selection
      CC4S           : CHCTLR2_Output_CC4S_Field := 16#0#;
      --  Output compare 4 fast enable
      OC4FE          : Boolean := False;
      --  Output compare 4 preload enable
      OC4PE          : Boolean := False;
      --  Output compare 4 mode
      OC4M           : CHCTLR2_Output_OC4M_Field := 16#0#;
      --  Output compare 4 clear enable
      OC4CE          : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHCTLR2_Output_Register use record
      CC3S           at 0 range 0 .. 1;
      OC3FE          at 0 range 2 .. 2;
      OC3PE          at 0 range 3 .. 3;
      OC3M           at 0 range 4 .. 6;
      OC3CE          at 0 range 7 .. 7;
      CC4S           at 0 range 8 .. 9;
      OC4FE          at 0 range 10 .. 10;
      OC4PE          at 0 range 11 .. 11;
      OC4M           at 0 range 12 .. 14;
      OC4CE          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CHCTLR2_Input_CC3S_Field is Interfaces.Bit_Types.UInt2;
   subtype CHCTLR2_Input_IC3PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype CHCTLR2_Input_IC3F_Field is Interfaces.Bit_Types.UInt4;
   subtype CHCTLR2_Input_CC4S_Field is Interfaces.Bit_Types.UInt2;
   subtype CHCTLR2_Input_IC4PSC_Field is Interfaces.Bit_Types.UInt2;
   subtype CHCTLR2_Input_IC4F_Field is Interfaces.Bit_Types.UInt4;

   --  capture/compare mode register 2 (input mode)
   type CHCTLR2_Input_Register is record
      --  Capture/compare 3 selection
      CC3S           : CHCTLR2_Input_CC3S_Field := 16#0#;
      --  Input capture 3 prescaler
      IC3PSC         : CHCTLR2_Input_IC3PSC_Field := 16#0#;
      --  Input capture 3 filter
      IC3F           : CHCTLR2_Input_IC3F_Field := 16#0#;
      --  Capture/Compare 4 selection
      CC4S           : CHCTLR2_Input_CC4S_Field := 16#0#;
      --  Input capture 4 prescaler
      IC4PSC         : CHCTLR2_Input_IC4PSC_Field := 16#0#;
      --  Input capture 4 filter
      IC4F           : CHCTLR2_Input_IC4F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHCTLR2_Input_Register use record
      CC3S           at 0 range 0 .. 1;
      IC3PSC         at 0 range 2 .. 3;
      IC3F           at 0 range 4 .. 7;
      CC4S           at 0 range 8 .. 9;
      IC4PSC         at 0 range 10 .. 11;
      IC4F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  capture/compare enable register
   type CCER_Register is record
      --  Capture/Compare 1 output enable
      CC1E           : Boolean := False;
      --  Capture/Compare 1 output Polarity
      CC1P           : Boolean := False;
      --  Capture/Compare 1 complementary output enable
      CC1NE          : Boolean := False;
      --  Capture/Compare 1 output Polarity
      CC1NP          : Boolean := False;
      --  Capture/Compare 2 output enable
      CC2E           : Boolean := False;
      --  Capture/Compare 2 output Polarity
      CC2P           : Boolean := False;
      --  Capture/Compare 2 complementary output enable
      CC2NE          : Boolean := False;
      --  Capture/Compare 2 output Polarity
      CC2NP          : Boolean := False;
      --  Capture/Compare 3 output enable
      CC3E           : Boolean := False;
      --  Capture/Compare 3 output Polarity
      CC3P           : Boolean := False;
      --  Capture/Compare 3 complementary output enable
      CC3NE          : Boolean := False;
      --  Capture/Compare 3 output Polarity
      CC3NP          : Boolean := False;
      --  Capture/Compare 4 output enable
      CC4E           : Boolean := False;
      --  Capture/Compare 3 output Polarity
      CC4P           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCER_Register use record
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
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype CNT_CNT_Field is Interfaces.Bit_Types.UInt16;

   --  counter
   type CNT_Register is record
      --  counter value
      CNT            : CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PSC_PSC_Field is Interfaces.Bit_Types.UInt16;

   --  prescaler
   type PSC_Register is record
      --  Prescaler value
      PSC            : PSC_PSC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSC_Register use record
      PSC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ATRLR_ATRLR_Field is Interfaces.Bit_Types.UInt16;

   --  auto-reload register
   type ATRLR_Register is record
      --  Auto-reload value
      ATRLR          : ATRLR_ATRLR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ATRLR_Register use record
      ATRLR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RPTCR_RPTCR_Field is Interfaces.Bit_Types.Byte;

   --  repetition counter register
   type RPTCR_Register is record
      --  Repetition counter value
      RPTCR         : RPTCR_RPTCR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RPTCR_Register use record
      RPTCR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH1CVR_CH1CVR_Field is Interfaces.Bit_Types.UInt16;

   --  capture/compare register 1
   type CH1CVR_Register is record
      --  Capture/Compare 1 value
      CH1CVR         : CH1CVR_CH1CVR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1CVR_Register use record
      CH1CVR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CH2CVR_CH2CVR_Field is Interfaces.Bit_Types.UInt16;

   --  capture/compare register 2
   type CH2CVR_Register is record
      --  Capture/Compare 2 value
      CH2CVR         : CH2CVR_CH2CVR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2CVR_Register use record
      CH2CVR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CH3CVR_CH3CVR_Field is Interfaces.Bit_Types.UInt16;

   --  capture/compare register 3
   type CH3CVR_Register is record
      --  Capture/Compare value
      CH3CVR         : CH3CVR_CH3CVR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3CVR_Register use record
      CH3CVR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CH4CVR_CH4CVR_Field is Interfaces.Bit_Types.UInt16;

   --  capture/compare register 4
   type CH4CVR_Register is record
      --  Capture/Compare value
      CH4CVR         : CH4CVR_CH4CVR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH4CVR_Register use record
      CH4CVR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype BDTR_DTG_Field is Interfaces.Bit_Types.Byte;
   subtype BDTR_LOCK_Field is Interfaces.Bit_Types.UInt2;

   --  break and dead-time register
   type BDTR_Register is record
      --  Dead-time generator setup
      DTG            : BDTR_DTG_Field := 16#0#;
      --  Lock configuration
      LOCK           : BDTR_LOCK_Field := 16#0#;
      --  Off-state selection for Idle mode
      OSSI           : Boolean := False;
      --  Off-state selection for Run mode
      OSSR           : Boolean := False;
      --  Break enable
      BKE            : Boolean := False;
      --  Break polarity
      BKP            : Boolean := False;
      --  Automatic output enable
      AOE            : Boolean := False;
      --  Main output enable
      MOE            : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDTR_Register use record
      DTG            at 0 range 0 .. 7;
      LOCK           at 0 range 8 .. 9;
      OSSI           at 0 range 10 .. 10;
      OSSR           at 0 range 11 .. 11;
      BKE            at 0 range 12 .. 12;
      BKP            at 0 range 13 .. 13;
      AOE            at 0 range 14 .. 14;
      MOE            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMACFGR_DBA_Field is Interfaces.Bit_Types.UInt5;
   subtype DMACFGR_DBL_Field is Interfaces.Bit_Types.UInt5;

   --  DMA control register
   type DMACFGR_Register is record
      --  DMA base address
      DBA            : DMACFGR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  DMA burst length
      DBL            : DMACFGR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMACFGR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype DMAADR_DMAADR_Field is Interfaces.Bit_Types.UInt16;

   --  DMA address for full transfer
   type DMAADR_Register is record
      --  DMA register for burst accesses
      DMAADR         : DMAADR_DMAADR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAADR_Register use record
      DMAADR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  control register 2
   type CTLR2_Register_1 is record
      --  unspecified
      Reserved_0_2  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Capture/compare DMA selection
      CCDS          : Boolean := False;
      --  Master mode selection
      MMS           : CTLR2_MMS_Field := 16#0#;
      --  TI1 selection
      TI1S          : Boolean := False;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLR2_Register_1 use record
      Reserved_0_2  at 0 range 0 .. 2;
      CCDS          at 0 range 3 .. 3;
      MMS           at 0 range 4 .. 6;
      TI1S          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DMA/Interrupt enable register
   type DMAINTENR_Register_1 is record
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
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger interrupt enable
      TIE            : Boolean := False;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
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
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger DMA request enable
      TDE            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAINTENR_Register_1 use record
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
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  status register
   type INTFR_Register_1 is record
      --  Update interrupt flag
      UIF            : Boolean := False;
      --  Capture/compare 1 interrupt flag
      CC1IF          : Boolean := False;
      --  Capture/Compare 2 interrupt flag
      CC2IF          : Boolean := False;
      --  Capture/Compare 3 interrupt flag
      CC3IF          : Boolean := False;
      --  Capture/Compare 4 interrupt flag
      CC4IF          : Boolean := False;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Trigger interrupt flag
      TIF            : Boolean := False;
      --  unspecified
      Reserved_7_8   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/Compare 1 overcapture flag
      CC1OF          : Boolean := False;
      --  Capture/compare 2 overcapture flag
      CC2OF          : Boolean := False;
      --  Capture/Compare 3 overcapture flag
      CC3OF          : Boolean := False;
      --  Capture/Compare 4 overcapture flag
      CC4OF          : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTFR_Register_1 use record
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
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  event generation register
   type SWEVGR_Register_1 is record
      --  Write-only. Update generation
      UG            : Boolean := False;
      --  Write-only. Capture/compare 1 generation
      CC1G          : Boolean := False;
      --  Write-only. Capture/compare 2 generation
      CC2G          : Boolean := False;
      --  Write-only. Capture/compare 3 generation
      CC3G          : Boolean := False;
      --  Write-only. Capture/compare 4 generation
      CC4G          : Boolean := False;
      --  unspecified
      Reserved_5_5  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Trigger generation
      TG            : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWEVGR_Register_1 use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      CC3G          at 0 range 3 .. 3;
      CC4G          at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype CHCTLR1_Input_IC2PSC_Field is Interfaces.Bit_Types.UInt2;

   --  capture/compare mode register 1 (input mode)
   type CHCTLR1_Input_Register_1 is record
      --  Capture/Compare 1 selection
      CC1S           : CHCTLR1_Input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : CHCTLR1_Input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F           : CHCTLR1_Input_IC1F_Field := 16#0#;
      --  Capture/compare 2 selection
      CC2S           : CHCTLR1_Input_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : CHCTLR1_Input_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : CHCTLR1_Input_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHCTLR1_Input_Register_1 use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  capture/compare enable register
   type CCER_Register_1 is record
      --  Capture/Compare 1 output enable
      CC1E           : Boolean := False;
      --  Capture/Compare 1 output Polarity
      CC1P           : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/Compare 2 output enable
      CC2E           : Boolean := False;
      --  Capture/Compare 2 output Polarity
      CC2P           : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/Compare 3 output enable
      CC3E           : Boolean := False;
      --  Capture/Compare 3 output Polarity
      CC3P           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Capture/Compare 4 output enable
      CC4E           : Boolean := False;
      --  Capture/Compare 3 output Polarity
      CC4P           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCER_Register_1 use record
      CC1E           at 0 range 0 .. 0;
      CC1P           at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CC2E           at 0 range 4 .. 4;
      CC2P           at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CC3E           at 0 range 8 .. 8;
      CC3P           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CC4E           at 0 range 12 .. 12;
      CC4P           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TIM1_Disc is
     (Output,
      Input);

   --  Advanced timer
   type TIM1_Peripheral
     (Discriminent : TIM1_Disc := Output)
   is record
      --  control register 1
      CTLR1          : aliased CTLR1_Register;
      --  control register 2
      CTLR2          : aliased CTLR2_Register;
      --  slave mode control register
      SMCFGR         : aliased SMCFGR_Register;
      --  DMA/Interrupt enable register
      DMAINTENR      : aliased DMAINTENR_Register;
      --  status register
      INTFR          : aliased INTFR_Register;
      --  event generation register
      SWEVGR         : aliased SWEVGR_Register;
      --  capture/compare enable register
      CCER           : aliased CCER_Register;
      --  counter
      CNT            : aliased CNT_Register;
      --  prescaler
      PSC            : aliased PSC_Register;
      --  auto-reload register
      ATRLR          : aliased ATRLR_Register;
      --  repetition counter register
      RPTCR          : aliased RPTCR_Register;
      --  capture/compare register 1
      CH1CVR         : aliased CH1CVR_Register;
      --  capture/compare register 2
      CH2CVR         : aliased CH2CVR_Register;
      --  capture/compare register 3
      CH3CVR         : aliased CH3CVR_Register;
      --  capture/compare register 4
      CH4CVR         : aliased CH4CVR_Register;
      --  break and dead-time register
      BDTR           : aliased BDTR_Register;
      --  DMA control register
      DMACFGR        : aliased DMACFGR_Register;
      --  DMA address for full transfer
      DMAADR         : aliased DMAADR_Register;
      case Discriminent is
         when Output =>
            --  capture/compare mode register (output mode)
            CHCTLR1_Output : aliased CHCTLR1_Output_Register;
            --  capture/compare mode register (output mode)
            CHCTLR2_Output : aliased CHCTLR2_Output_Register;
         when Input =>
            --  capture/compare mode register 1 (input mode)
            CHCTLR1_Input : aliased CHCTLR1_Input_Register;
            --  capture/compare mode register 2 (input mode)
            CHCTLR2_Input : aliased CHCTLR2_Input_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM1_Peripheral use record
      CTLR1          at 16#0# range 0 .. 31;
      CTLR2          at 16#4# range 0 .. 31;
      SMCFGR         at 16#8# range 0 .. 31;
      DMAINTENR      at 16#C# range 0 .. 31;
      INTFR          at 16#10# range 0 .. 31;
      SWEVGR         at 16#14# range 0 .. 31;
      CCER           at 16#20# range 0 .. 31;
      CNT            at 16#24# range 0 .. 31;
      PSC            at 16#28# range 0 .. 31;
      ATRLR          at 16#2C# range 0 .. 31;
      RPTCR          at 16#30# range 0 .. 31;
      CH1CVR         at 16#34# range 0 .. 31;
      CH2CVR         at 16#38# range 0 .. 31;
      CH3CVR         at 16#3C# range 0 .. 31;
      CH4CVR         at 16#40# range 0 .. 31;
      BDTR           at 16#44# range 0 .. 31;
      DMACFGR        at 16#48# range 0 .. 31;
      DMAADR         at 16#4C# range 0 .. 31;
      CHCTLR1_Output at 16#18# range 0 .. 31;
      CHCTLR2_Output at 16#1C# range 0 .. 31;
      CHCTLR1_Input  at 16#18# range 0 .. 31;
      CHCTLR2_Input  at 16#1C# range 0 .. 31;
   end record;

   --  Advanced timer
   TIM1_Periph : aliased TIM1_Peripheral
     with Import, Address => TIM1_Base;

   type TIM2_Disc is
     (Output,
      Input);

   --  General purpose timer
   type TIM2_Peripheral
     (Discriminent : TIM2_Disc := Output)
   is record
      --  control register 1
      CTLR1          : aliased CTLR1_Register;
      --  control register 2
      CTLR2          : aliased CTLR2_Register_1;
      --  slave mode control register
      SMCFGR         : aliased SMCFGR_Register;
      --  DMA/Interrupt enable register
      DMAINTENR      : aliased DMAINTENR_Register_1;
      --  status register
      INTFR          : aliased INTFR_Register_1;
      --  event generation register
      SWEVGR         : aliased SWEVGR_Register_1;
      --  capture/compare enable register
      CCER           : aliased CCER_Register_1;
      --  counter
      CNT            : aliased CNT_Register;
      --  prescaler
      PSC            : aliased PSC_Register;
      --  auto-reload register
      ATRLR          : aliased ATRLR_Register;
      --  capture/compare register 1
      CH1CVR         : aliased CH1CVR_Register;
      --  capture/compare register 2
      CH2CVR         : aliased CH2CVR_Register;
      --  capture/compare register 3
      CH3CVR         : aliased CH3CVR_Register;
      --  capture/compare register 4
      CH4CVR         : aliased CH4CVR_Register;
      --  DMA control register
      DMACFGR        : aliased DMACFGR_Register;
      --  DMA address for full transfer
      DMAADR         : aliased DMAADR_Register;
      case Discriminent is
         when Output =>
            --  capture/compare mode register 1 (output mode)
            CHCTLR1_Output : aliased CHCTLR1_Output_Register;
            --  capture/compare mode register 2 (output mode)
            CHCTLR2_Output : aliased CHCTLR2_Output_Register;
         when Input =>
            --  capture/compare mode register 1 (input mode)
            CHCTLR1_Input : aliased CHCTLR1_Input_Register_1;
            --  capture/compare mode register 2 (input mode)
            CHCTLR2_Input : aliased CHCTLR2_Input_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM2_Peripheral use record
      CTLR1          at 16#0# range 0 .. 31;
      CTLR2          at 16#4# range 0 .. 31;
      SMCFGR         at 16#8# range 0 .. 31;
      DMAINTENR      at 16#C# range 0 .. 31;
      INTFR          at 16#10# range 0 .. 31;
      SWEVGR         at 16#14# range 0 .. 31;
      CCER           at 16#20# range 0 .. 31;
      CNT            at 16#24# range 0 .. 31;
      PSC            at 16#28# range 0 .. 31;
      ATRLR          at 16#2C# range 0 .. 31;
      CH1CVR         at 16#34# range 0 .. 31;
      CH2CVR         at 16#38# range 0 .. 31;
      CH3CVR         at 16#3C# range 0 .. 31;
      CH4CVR         at 16#40# range 0 .. 31;
      DMACFGR        at 16#48# range 0 .. 31;
      DMAADR         at 16#4C# range 0 .. 31;
      CHCTLR1_Output at 16#18# range 0 .. 31;
      CHCTLR2_Output at 16#1C# range 0 .. 31;
      CHCTLR1_Input  at 16#18# range 0 .. 31;
      CHCTLR2_Input  at 16#1C# range 0 .. 31;
   end record;

   --  General purpose timer
   TIM2_Periph : aliased TIM2_Peripheral
     with Import, Address => TIM2_Base;

end Interfaces.CH32.TIM;
