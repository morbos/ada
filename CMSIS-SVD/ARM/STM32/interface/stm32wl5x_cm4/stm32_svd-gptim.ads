--  This spec has been automatically generated from STM32WL5x_CM4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.GPTIM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_CEN_Field is HAL.Bit;
   subtype CR1_UDIS_Field is HAL.Bit;
   subtype CR1_URS_Field is HAL.Bit;
   subtype CR1_OPM_Field is HAL.Bit;
   subtype CR1_DIR_Field is HAL.Bit;
   subtype CR1_CMS_Field is HAL.UInt2;
   subtype CR1_ARPE_Field is HAL.Bit;
   subtype CR1_CKD_Field is HAL.UInt2;
   subtype CR1_UIFREMAP_Field is HAL.Bit;

   --  control register 1
   type CR1_Register is record
      --  Counter enable
      CEN            : CR1_CEN_Field := 16#0#;
      --  Update disable
      UDIS           : CR1_UDIS_Field := 16#0#;
      --  Update request source
      URS            : CR1_URS_Field := 16#0#;
      --  One-pulse mode
      OPM            : CR1_OPM_Field := 16#0#;
      --  Direction
      DIR            : CR1_DIR_Field := 16#0#;
      --  Center-aligned mode selection
      CMS            : CR1_CMS_Field := 16#0#;
      --  Auto-reload preload enable
      ARPE           : CR1_ARPE_Field := 16#0#;
      --  Clock division
      CKD            : CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : CR1_UIFREMAP_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
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
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype CR2_CCDS_Field is HAL.Bit;
   subtype CR2_MMS_Field is HAL.UInt3;
   subtype CR2_TI1S_Field is HAL.Bit;

   --  control register 2
   type CR2_Register is record
      --  unspecified
      Reserved_0_2  : HAL.UInt3 := 16#0#;
      --  Capture/compare DMA selection
      CCDS          : CR2_CCDS_Field := 16#0#;
      --  Master mode selection
      MMS           : CR2_MMS_Field := 16#0#;
      --  TI1 selection
      TI1S          : CR2_TI1S_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      CCDS          at 0 range 3 .. 3;
      MMS           at 0 range 4 .. 6;
      TI1S          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SMCR_SMS_Field is HAL.UInt3;
   subtype SMCR_OCCS_Field is HAL.Bit;
   subtype SMCR_TS_Field is HAL.UInt3;
   subtype SMCR_MSM_Field is HAL.Bit;
   subtype SMCR_ETF_Field is HAL.UInt4;
   subtype SMCR_ETPS_Field is HAL.UInt2;
   subtype SMCR_ECE_Field is HAL.Bit;
   subtype SMCR_ETP_Field is HAL.Bit;
   subtype SMCR_SMS_3_Field is HAL.Bit;

   --  slave mode control register
   type SMCR_Register is record
      --  Slave mode selection
      SMS            : SMCR_SMS_Field := 16#0#;
      --  OCREF clear selection
      OCCS           : SMCR_OCCS_Field := 16#0#;
      --  Trigger selection
      TS             : SMCR_TS_Field := 16#0#;
      --  Master/Slave mode
      MSM            : SMCR_MSM_Field := 16#0#;
      --  External trigger filter
      ETF            : SMCR_ETF_Field := 16#0#;
      --  External trigger prescaler
      ETPS           : SMCR_ETPS_Field := 16#0#;
      --  External clock enable
      ECE            : SMCR_ECE_Field := 16#0#;
      --  External trigger polarity
      ETP            : SMCR_ETP_Field := 16#0#;
      --  Slave mode selection - bit 3
      SMS_3          : SMCR_SMS_3_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMCR_Register use record
      SMS            at 0 range 0 .. 2;
      OCCS           at 0 range 3 .. 3;
      TS             at 0 range 4 .. 6;
      MSM            at 0 range 7 .. 7;
      ETF            at 0 range 8 .. 11;
      ETPS           at 0 range 12 .. 13;
      ECE            at 0 range 14 .. 14;
      ETP            at 0 range 15 .. 15;
      SMS_3          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype DIER_UIE_Field is HAL.Bit;
   subtype DIER_CC1IE_Field is HAL.Bit;
   subtype DIER_CC2IE_Field is HAL.Bit;
   subtype DIER_CC3IE_Field is HAL.Bit;
   subtype DIER_CC4IE_Field is HAL.Bit;
   subtype DIER_TIE_Field is HAL.Bit;
   subtype DIER_UDE_Field is HAL.Bit;
   subtype DIER_CC1DE_Field is HAL.Bit;
   subtype DIER_CC2DE_Field is HAL.Bit;
   subtype DIER_CC3DE_Field is HAL.Bit;
   subtype DIER_CC4DE_Field is HAL.Bit;

   --  DMA/Interrupt enable register
   type DIER_Register is record
      --  Update interrupt enable
      UIE            : DIER_UIE_Field := 16#0#;
      --  Capture/Compare 1 interrupt enable
      CC1IE          : DIER_CC1IE_Field := 16#0#;
      --  Capture/Compare 2 interrupt enable
      CC2IE          : DIER_CC2IE_Field := 16#0#;
      --  Capture/Compare 3 interrupt enable
      CC3IE          : DIER_CC3IE_Field := 16#0#;
      --  Capture/Compare 4 interrupt enable
      CC4IE          : DIER_CC4IE_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Trigger interrupt enable
      TIE            : DIER_TIE_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Update DMA request enable
      UDE            : DIER_UDE_Field := 16#0#;
      --  Capture/Compare 1 DMA request enable
      CC1DE          : DIER_CC1DE_Field := 16#0#;
      --  Capture/Compare 2 DMA request enable
      CC2DE          : DIER_CC2DE_Field := 16#0#;
      --  Capture/Compare 3 DMA request enable
      CC3DE          : DIER_CC3DE_Field := 16#0#;
      --  Capture/Compare 4 DMA request enable
      CC4DE          : DIER_CC4DE_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIER_Register use record
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
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype SR_UIF_Field is HAL.Bit;
   subtype SR_CC1IF_Field is HAL.Bit;
   subtype SR_CC2IF_Field is HAL.Bit;
   subtype SR_CC3IF_Field is HAL.Bit;
   subtype SR_CC4IF_Field is HAL.Bit;
   subtype SR_TIF_Field is HAL.Bit;
   subtype SR_CC1OF_Field is HAL.Bit;
   subtype SR_CC2OF_Field is HAL.Bit;
   subtype SR_CC3OF_Field is HAL.Bit;
   subtype SR_CC4OF_Field is HAL.Bit;

   --  status register
   type SR_Register is record
      --  Update interrupt flag
      UIF            : SR_UIF_Field := 16#0#;
      --  Capture/compare 1 interrupt flag
      CC1IF          : SR_CC1IF_Field := 16#0#;
      --  Capture/Compare 2 interrupt flag
      CC2IF          : SR_CC2IF_Field := 16#0#;
      --  Capture/Compare 3 interrupt flag
      CC3IF          : SR_CC3IF_Field := 16#0#;
      --  Capture/Compare 4 interrupt flag
      CC4IF          : SR_CC4IF_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Trigger interrupt flag
      TIF            : SR_TIF_Field := 16#0#;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Capture/Compare 1 overcapture flag
      CC1OF          : SR_CC1OF_Field := 16#0#;
      --  Capture/compare 2 overcapture flag
      CC2OF          : SR_CC2OF_Field := 16#0#;
      --  Capture/Compare 3 overcapture flag
      CC3OF          : SR_CC3OF_Field := 16#0#;
      --  Capture/Compare 4 overcapture flag
      CC4OF          : SR_CC4OF_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
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

   subtype EGR_UG_Field is HAL.Bit;
   subtype EGR_CC1G_Field is HAL.Bit;
   subtype EGR_CC2G_Field is HAL.Bit;
   subtype EGR_CC3G_Field is HAL.Bit;
   subtype EGR_CC4G_Field is HAL.Bit;
   subtype EGR_TG_Field is HAL.Bit;

   --  event generation register
   type EGR_Register is record
      --  Write-only. Update generation
      UG            : EGR_UG_Field := 16#0#;
      --  Write-only. Capture/compare 1 generation
      CC1G          : EGR_CC1G_Field := 16#0#;
      --  Write-only. Capture/compare 2 generation
      CC2G          : EGR_CC2G_Field := 16#0#;
      --  Write-only. Capture/compare 3 generation
      CC3G          : EGR_CC3G_Field := 16#0#;
      --  Write-only. Capture/compare 4 generation
      CC4G          : EGR_CC4G_Field := 16#0#;
      --  unspecified
      Reserved_5_5  : HAL.Bit := 16#0#;
      --  Write-only. Trigger generation
      TG            : EGR_TG_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EGR_Register use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      CC2G          at 0 range 2 .. 2;
      CC3G          at 0 range 3 .. 3;
      CC4G          at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      TG            at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype CCMR1_Output_CC1S_Field is HAL.UInt2;
   subtype CCMR1_Output_OC1FE_Field is HAL.Bit;
   subtype CCMR1_Output_OC1PE_Field is HAL.Bit;
   subtype CCMR1_Output_OC1M_Field is HAL.UInt3;
   subtype CCMR1_Output_OC1CE_Field is HAL.Bit;
   subtype CCMR1_Output_CC2S_Field is HAL.UInt2;
   subtype CCMR1_Output_OC2FE_Field is HAL.Bit;
   subtype CCMR1_Output_OC2PE_Field is HAL.Bit;
   subtype CCMR1_Output_OC2M_Field is HAL.UInt3;
   subtype CCMR1_Output_OC2CE_Field is HAL.Bit;
   subtype CCMR1_Output_OC1M_3_Field is HAL.Bit;
   subtype CCMR1_Output_OC2M_3_Field is HAL.Bit;

   --  capture/compare mode register 1 (output mode)
   type CCMR1_Output_Register is record
      --  Capture/Compare 1 selection
      CC1S           : CCMR1_Output_CC1S_Field := 16#0#;
      --  Output compare 1 fast enable
      OC1FE          : CCMR1_Output_OC1FE_Field := 16#0#;
      --  Output compare 1 preload enable
      OC1PE          : CCMR1_Output_OC1PE_Field := 16#0#;
      --  Output compare 1 mode
      OC1M           : CCMR1_Output_OC1M_Field := 16#0#;
      --  Output compare 1 clear enable
      OC1CE          : CCMR1_Output_OC1CE_Field := 16#0#;
      --  Capture/Compare 2 selection
      CC2S           : CCMR1_Output_CC2S_Field := 16#0#;
      --  Output compare 2 fast enable
      OC2FE          : CCMR1_Output_OC2FE_Field := 16#0#;
      --  Output compare 2 preload enable
      OC2PE          : CCMR1_Output_OC2PE_Field := 16#0#;
      --  Output compare 2 mode
      OC2M           : CCMR1_Output_OC2M_Field := 16#0#;
      --  Output compare 2 clear enable
      OC2CE          : CCMR1_Output_OC2CE_Field := 16#0#;
      --  Output Compare 1 mode - bit 3
      OC1M_3         : CCMR1_Output_OC1M_3_Field := 16#0#;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Output Compare 2 mode - bit 3
      OC2M_3         : CCMR1_Output_OC2M_3_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR1_Output_Register use record
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
      OC1M_3         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC2M_3         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CCMR1_Input_CC1S_Field is HAL.UInt2;
   subtype CCMR1_Input_IC1PSC_Field is HAL.UInt2;
   subtype CCMR1_Input_IC1F_Field is HAL.UInt4;
   subtype CCMR1_Input_CC2S_Field is HAL.UInt2;
   subtype CCMR1_Input_IC2PSC_Field is HAL.UInt2;
   subtype CCMR1_Input_IC2F_Field is HAL.UInt4;

   --  capture/compare mode register 1 (input mode)
   type CCMR1_Input_Register is record
      --  Capture/Compare 1 selection
      CC1S           : CCMR1_Input_CC1S_Field := 16#0#;
      --  Input capture 1 prescaler
      IC1PSC         : CCMR1_Input_IC1PSC_Field := 16#0#;
      --  Input capture 1 filter
      IC1F           : CCMR1_Input_IC1F_Field := 16#0#;
      --  Capture/compare 2 selection
      CC2S           : CCMR1_Input_CC2S_Field := 16#0#;
      --  Input capture 2 prescaler
      IC2PSC         : CCMR1_Input_IC2PSC_Field := 16#0#;
      --  Input capture 2 filter
      IC2F           : CCMR1_Input_IC2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR1_Input_Register use record
      CC1S           at 0 range 0 .. 1;
      IC1PSC         at 0 range 2 .. 3;
      IC1F           at 0 range 4 .. 7;
      CC2S           at 0 range 8 .. 9;
      IC2PSC         at 0 range 10 .. 11;
      IC2F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CCMR2_Output_CC3S_Field is HAL.UInt2;
   subtype CCMR2_Output_OC3FE_Field is HAL.Bit;
   subtype CCMR2_Output_OC3PE_Field is HAL.Bit;
   subtype CCMR2_Output_OC3M_Field is HAL.UInt3;
   subtype CCMR2_Output_OC3CE_Field is HAL.Bit;
   subtype CCMR2_Output_CC4S_Field is HAL.UInt2;
   subtype CCMR2_Output_OC4FE_Field is HAL.Bit;
   subtype CCMR2_Output_OC4PE_Field is HAL.Bit;
   subtype CCMR2_Output_OC4M_Field is HAL.UInt3;
   subtype CCMR2_Output_OC4CE_Field is HAL.Bit;
   subtype CCMR2_Output_OC3M_3_Field is HAL.Bit;
   subtype CCMR2_Output_OC4M_3_Field is HAL.Bit;

   --  capture/compare mode register 2 (output mode)
   type CCMR2_Output_Register is record
      --  Capture/Compare 3 selection
      CC3S           : CCMR2_Output_CC3S_Field := 16#0#;
      --  Output compare 3 fast enable
      OC3FE          : CCMR2_Output_OC3FE_Field := 16#0#;
      --  Output compare 3 preload enable
      OC3PE          : CCMR2_Output_OC3PE_Field := 16#0#;
      --  Output compare 3 mode
      OC3M           : CCMR2_Output_OC3M_Field := 16#0#;
      --  Output compare 3 clear enable
      OC3CE          : CCMR2_Output_OC3CE_Field := 16#0#;
      --  Capture/Compare 4 selection
      CC4S           : CCMR2_Output_CC4S_Field := 16#0#;
      --  Output compare 4 fast enable
      OC4FE          : CCMR2_Output_OC4FE_Field := 16#0#;
      --  Output compare 4 preload enable
      OC4PE          : CCMR2_Output_OC4PE_Field := 16#0#;
      --  Output compare 4 mode
      OC4M           : CCMR2_Output_OC4M_Field := 16#0#;
      --  Output compare 4 clear enable
      OC4CE          : CCMR2_Output_OC4CE_Field := 16#0#;
      --  Output Compare 3 mode - bit 3
      OC3M_3         : CCMR2_Output_OC3M_3_Field := 16#0#;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Output Compare 4 mode - bit 3
      OC4M_3         : CCMR2_Output_OC4M_3_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR2_Output_Register use record
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
      OC3M_3         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      OC4M_3         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CCMR2_Input_CC3S_Field is HAL.UInt2;
   subtype CCMR2_Input_IC3PSC_Field is HAL.UInt2;
   subtype CCMR2_Input_IC3F_Field is HAL.UInt4;
   subtype CCMR2_Input_CC4S_Field is HAL.UInt2;
   subtype CCMR2_Input_IC4PSC_Field is HAL.UInt2;
   subtype CCMR2_Input_IC4F_Field is HAL.UInt4;

   --  capture/compare mode register 2 (input mode)
   type CCMR2_Input_Register is record
      --  Capture/Compare 3 selection
      CC3S           : CCMR2_Input_CC3S_Field := 16#0#;
      --  Input capture 3 prescaler
      IC3PSC         : CCMR2_Input_IC3PSC_Field := 16#0#;
      --  Input capture 3 filter
      IC3F           : CCMR2_Input_IC3F_Field := 16#0#;
      --  Capture/Compare 4 selection
      CC4S           : CCMR2_Input_CC4S_Field := 16#0#;
      --  Input capture 4 prescaler
      IC4PSC         : CCMR2_Input_IC4PSC_Field := 16#0#;
      --  Input capture 4 filter
      IC4F           : CCMR2_Input_IC4F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR2_Input_Register use record
      CC3S           at 0 range 0 .. 1;
      IC3PSC         at 0 range 2 .. 3;
      IC3F           at 0 range 4 .. 7;
      CC4S           at 0 range 8 .. 9;
      IC4PSC         at 0 range 10 .. 11;
      IC4F           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CCER_CC1E_Field is HAL.Bit;
   subtype CCER_CC1P_Field is HAL.Bit;
   subtype CCER_CC1NP_Field is HAL.Bit;
   subtype CCER_CC2E_Field is HAL.Bit;
   subtype CCER_CC2P_Field is HAL.Bit;
   subtype CCER_CC2NP_Field is HAL.Bit;
   subtype CCER_CC3E_Field is HAL.Bit;
   subtype CCER_CC3P_Field is HAL.Bit;
   subtype CCER_CC3NP_Field is HAL.Bit;
   subtype CCER_CC4E_Field is HAL.Bit;
   subtype CCER_CC4P_Field is HAL.Bit;
   subtype CCER_CC4NP_Field is HAL.Bit;

   --  capture/compare enable register
   type CCER_Register is record
      --  Capture/Compare 1 output enable
      CC1E           : CCER_CC1E_Field := 16#0#;
      --  Capture/Compare 1 output Polarity
      CC1P           : CCER_CC1P_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Capture/Compare 1 output Polarity
      CC1NP          : CCER_CC1NP_Field := 16#0#;
      --  Capture/Compare 2 output enable
      CC2E           : CCER_CC2E_Field := 16#0#;
      --  Capture/Compare 2 output Polarity
      CC2P           : CCER_CC2P_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Capture/Compare 2 output Polarity
      CC2NP          : CCER_CC2NP_Field := 16#0#;
      --  Capture/Compare 3 output enable
      CC3E           : CCER_CC3E_Field := 16#0#;
      --  Capture/Compare 3 output Polarity
      CC3P           : CCER_CC3P_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Capture/Compare 3 output Polarity
      CC3NP          : CCER_CC3NP_Field := 16#0#;
      --  Capture/Compare 4 output enable
      CC4E           : CCER_CC4E_Field := 16#0#;
      --  Capture/Compare 3 output Polarity
      CC4P           : CCER_CC4P_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Capture/Compare 4 output Polarity
      CC4NP          : CCER_CC4NP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCER_Register use record
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
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CNT_CNT_L_Field is HAL.UInt16;
   subtype CNT_CNT_H_Field is HAL.UInt16;

   --  counter
   type CNT_Register is record
      --  Low counter value
      CNT_L : CNT_CNT_L_Field := 16#0#;
      --  High counter value (TIM2 only)
      CNT_H : CNT_CNT_H_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_Register use record
      CNT_L at 0 range 0 .. 15;
      CNT_H at 0 range 16 .. 31;
   end record;

   subtype PSC_PSC_Field is HAL.UInt16;

   --  prescaler
   type PSC_Register is record
      --  Prescaler value
      PSC            : PSC_PSC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSC_Register use record
      PSC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ARR_ARR_L_Field is HAL.UInt16;
   subtype ARR_ARR_H_Field is HAL.UInt16;

   --  auto-reload register
   type ARR_Register is record
      --  Low Auto-reload value
      ARR_L : ARR_ARR_L_Field := 16#0#;
      --  High Auto-reload value (TIM2 only)
      ARR_H : ARR_ARR_H_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARR_Register use record
      ARR_L at 0 range 0 .. 15;
      ARR_H at 0 range 16 .. 31;
   end record;

   subtype CCR1_CCR1_L_Field is HAL.UInt16;
   subtype CCR1_CCR1_H_Field is HAL.UInt16;

   --  capture/compare register 1
   type CCR1_Register is record
      --  Low Capture/Compare 1 value
      CCR1_L : CCR1_CCR1_L_Field := 16#0#;
      --  High Capture/Compare 1 value (TIM2 only)
      CCR1_H : CCR1_CCR1_H_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR1_Register use record
      CCR1_L at 0 range 0 .. 15;
      CCR1_H at 0 range 16 .. 31;
   end record;

   subtype CCR2_CCR2_L_Field is HAL.UInt16;
   subtype CCR2_CCR2_H_Field is HAL.UInt16;

   --  capture/compare register 2
   type CCR2_Register is record
      --  Low Capture/Compare 2 value
      CCR2_L : CCR2_CCR2_L_Field := 16#0#;
      --  High Capture/Compare 2 value (TIM2 only)
      CCR2_H : CCR2_CCR2_H_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR2_Register use record
      CCR2_L at 0 range 0 .. 15;
      CCR2_H at 0 range 16 .. 31;
   end record;

   subtype CCR3_CCR3_L_Field is HAL.UInt16;
   subtype CCR3_CCR3_H_Field is HAL.UInt16;

   --  capture/compare register 3
   type CCR3_Register is record
      --  Low Capture/Compare value
      CCR3_L : CCR3_CCR3_L_Field := 16#0#;
      --  High Capture/Compare value (TIM2 only)
      CCR3_H : CCR3_CCR3_H_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR3_Register use record
      CCR3_L at 0 range 0 .. 15;
      CCR3_H at 0 range 16 .. 31;
   end record;

   subtype CCR4_CCR4_L_Field is HAL.UInt16;
   subtype CCR4_CCR4_H_Field is HAL.UInt16;

   --  capture/compare register 4
   type CCR4_Register is record
      --  Low Capture/Compare value
      CCR4_L : CCR4_CCR4_L_Field := 16#0#;
      --  High Capture/Compare value (TIM2 only)
      CCR4_H : CCR4_CCR4_H_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR4_Register use record
      CCR4_L at 0 range 0 .. 15;
      CCR4_H at 0 range 16 .. 31;
   end record;

   subtype DCR_DBA_Field is HAL.UInt5;
   subtype DCR_DBL_Field is HAL.UInt5;

   --  DMA control register
   type DCR_Register is record
      --  DMA base address
      DBA            : DCR_DBA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA burst length
      DBL            : DCR_DBL_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCR_Register use record
      DBA            at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBL            at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype DMAR_DMAB_Field is HAL.UInt16;

   --  DMA address for full transfer
   type DMAR_Register is record
      --  DMA register for burst accesses
      DMAB           : DMAR_DMAB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAR_Register use record
      DMAB           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIM2_OR1_ETR_RMP_Field is HAL.Bit;
   subtype TIM2_OR1_TI4_RMP_Field is HAL.UInt2;

   --  TIM2 option register
   type TIM2_OR1_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  External trigger remap
      ETR_RMP       : TIM2_OR1_ETR_RMP_Field := 16#0#;
      --  Input capture 4 remap
      TI4_RMP       : TIM2_OR1_TI4_RMP_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_OR1_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      ETR_RMP       at 0 range 1 .. 1;
      TI4_RMP       at 0 range 2 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype TIM2_AF1_ETRSEL_Field is HAL.UInt4;

   --  TIM2 alternate function option register 1
   type TIM2_AF1_Register is record
      --  unspecified
      Reserved_0_13  : HAL.UInt14 := 16#0#;
      --  External trigger source selection
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

   subtype TIM2_TISEL_TI1SEL_Field is HAL.UInt4;
   subtype TIM2_TISEL_TI2SEL_Field is HAL.UInt4;

   --  TIM2 timer input selection register
   type TIM2_TISEL_Register is record
      --  TI1SEL
      TI1SEL         : TIM2_TISEL_TI1SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  TI2SEL
      TI2SEL         : TIM2_TISEL_TI2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM2_TISEL_Register use record
      TI1SEL         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TI2SEL         at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  TIM16/TIM17 control register 1
   type CR1_Register_1 is record
      --  Counter enable
      CEN            : CR1_CEN_Field := 16#0#;
      --  Update disable
      UDIS           : CR1_UDIS_Field := 16#0#;
      --  Update request source
      URS            : CR1_URS_Field := 16#0#;
      --  One pulse mode
      OPM            : CR1_OPM_Field := 16#0#;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Auto-reload preload enable
      ARPE           : CR1_ARPE_Field := 16#0#;
      --  Clock division
      CKD            : CR1_CKD_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  UIF status bit remapping
      UIFREMAP       : CR1_UIFREMAP_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register_1 use record
      CEN            at 0 range 0 .. 0;
      UDIS           at 0 range 1 .. 1;
      URS            at 0 range 2 .. 2;
      OPM            at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      ARPE           at 0 range 7 .. 7;
      CKD            at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      UIFREMAP       at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype CR2_CCPC_Field is HAL.Bit;
   subtype CR2_CCUS_Field is HAL.Bit;
   subtype CR2_OIS1_Field is HAL.Bit;
   subtype CR2_OIS1N_Field is HAL.Bit;

   --  TIM16/TIM17 control register 2
   type CR2_Register_1 is record
      --  CCPC
      CCPC           : CR2_CCPC_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  CCUS
      CCUS           : CR2_CCUS_Field := 16#0#;
      --  CCDS
      CCDS           : CR2_CCDS_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  OIS1
      OIS1           : CR2_OIS1_Field := 16#0#;
      --  OIS1N
      OIS1N          : CR2_OIS1N_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register_1 use record
      CCPC           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CCUS           at 0 range 2 .. 2;
      CCDS           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      OIS1           at 0 range 8 .. 8;
      OIS1N          at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DIER_COMIE_Field is HAL.Bit;
   subtype DIER_BIE_Field is HAL.Bit;
   subtype DIER_COMDE_Field is HAL.Bit;

   --  TIM16/TIM17 DMA/interrupt enable register
   type DIER_Register_1 is record
      --  Update interrupt enable
      UIE            : DIER_UIE_Field := 16#0#;
      --  Capture/Compare 1 interrupt enable
      CC1IE          : DIER_CC1IE_Field := 16#0#;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  COM interrupt enable
      COMIE          : DIER_COMIE_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Break interrupt enable
      BIE            : DIER_BIE_Field := 16#0#;
      --  Update DMA request enable
      UDE            : DIER_UDE_Field := 16#0#;
      --  Capture/Compare 1 DMA request enable
      CC1DE          : DIER_CC1DE_Field := 16#0#;
      --  unspecified
      Reserved_10_12 : HAL.UInt3 := 16#0#;
      --  COM DMA request enable
      COMDE          : DIER_COMDE_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIER_Register_1 use record
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
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype SR_COMIF_Field is HAL.Bit;
   subtype SR_BIF_Field is HAL.Bit;

   --  TIM16/TIM17 status register
   type SR_Register_1 is record
      --  Update interrupt flag
      UIF            : SR_UIF_Field := 16#0#;
      --  Capture/Compare 1 interrupt flag
      CC1IF          : SR_CC1IF_Field := 16#0#;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  COM interrupt flag
      COMIF          : SR_COMIF_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Break interrupt flag
      BIF            : SR_BIF_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Capture/Compare 1 overcapture flag
      CC1OF          : SR_CC1OF_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register_1 use record
      UIF            at 0 range 0 .. 0;
      CC1IF          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      COMIF          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      BIF            at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CC1OF          at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype EGR_COMG_Field is HAL.Bit;
   subtype EGR_BG_Field is HAL.Bit;

   --  TIM16/TIM17 event generation register
   type EGR_Register_1 is record
      --  Write-only. Update generation
      UG            : EGR_UG_Field := 16#0#;
      --  Write-only. Capture/Compare 1 generation
      CC1G          : EGR_CC1G_Field := 16#0#;
      --  unspecified
      Reserved_2_4  : HAL.UInt3 := 16#0#;
      --  Write-only. Capture/Compare control update generation
      COMG          : EGR_COMG_Field := 16#0#;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Write-only. Break generation
      BG            : EGR_BG_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EGR_Register_1 use record
      UG            at 0 range 0 .. 0;
      CC1G          at 0 range 1 .. 1;
      Reserved_2_4  at 0 range 2 .. 4;
      COMG          at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      BG            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  TIM16/TIM17 capture/compare mode register 1
   type CCMR1_Output_Register_1 is record
      --  CC1S
      CC1S           : CCMR1_Output_CC1S_Field := 16#0#;
      --  OC1FE
      OC1FE          : CCMR1_Output_OC1FE_Field := 16#0#;
      --  OC1PE
      OC1PE          : CCMR1_Output_OC1PE_Field := 16#0#;
      --  OC1M
      OC1M           : CCMR1_Output_OC1M_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  OC1M
      OC1M_3         : CCMR1_Output_OC1M_3_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR1_Output_Register_1 use record
      CC1S           at 0 range 0 .. 1;
      OC1FE          at 0 range 2 .. 2;
      OC1PE          at 0 range 3 .. 3;
      OC1M           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      OC1M_3         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  TIM16/TIM17 capture/compare mode register 1
   type CCMR1_Input_Register_1 is record
      --  CC1S
      CC1S          : CCMR1_Input_CC1S_Field := 16#0#;
      --  IC1PSC
      IC1PSC        : CCMR1_Input_IC1PSC_Field := 16#0#;
      --  IC1F
      IC1F          : CCMR1_Input_IC1F_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCMR1_Input_Register_1 use record
      CC1S          at 0 range 0 .. 1;
      IC1PSC        at 0 range 2 .. 3;
      IC1F          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CCER_CC1NE_Field is HAL.Bit;

   --  TIM16/TIM17 capture/compare enable register
   type CCER_Register_1 is record
      --  Capture/Compare 1 output enable
      CC1E          : CCER_CC1E_Field := 16#0#;
      --  Capture/Compare 1 output polarity
      CC1P          : CCER_CC1P_Field := 16#0#;
      --  Capture/Compare 1 complementary output enable
      CC1NE         : CCER_CC1NE_Field := 16#0#;
      --  Capture/Compare 1 complementary output polarity
      CC1NP         : CCER_CC1NP_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCER_Register_1 use record
      CC1E          at 0 range 0 .. 0;
      CC1P          at 0 range 1 .. 1;
      CC1NE         at 0 range 2 .. 2;
      CC1NP         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CNT_CNT_Field is HAL.UInt16;
   subtype CNT_UIFCPYorRes_Field is HAL.Bit;

   --  TIM16/TIM17 counter
   type CNT_Register_1 is record
      --  CNT
      CNT            : CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  Read-only. UIF Copy
      UIFCPYorRes    : CNT_UIFCPYorRes_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_Register_1 use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      UIFCPYorRes    at 0 range 31 .. 31;
   end record;

   subtype ARR_ARR_Field is HAL.UInt16;

   --  TIM16/TIM17 auto-reload register
   type ARR_Register_1 is record
      --  Auto-reload value
      ARR            : ARR_ARR_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARR_Register_1 use record
      ARR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RCR_REP_Field is HAL.UInt8;

   --  TIM16/TIM17 repetition counter register
   type RCR_Register is record
      --  Repetition counter value
      REP           : RCR_REP_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCR_Register use record
      REP           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CCR1_CCR1_Field is HAL.UInt16;

   --  TIM16/TIM17 capture/compare register 1
   type CCR1_Register_1 is record
      --  Capture/Compare 1 value
      CCR1           : CCR1_CCR1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR1_Register_1 use record
      CCR1           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype BDTR_DT_Field is HAL.UInt8;
   subtype BDTR_LOCK_Field is HAL.UInt2;
   subtype BDTR_OSSI_Field is HAL.Bit;
   subtype BDTR_OSSR_Field is HAL.Bit;
   subtype BDTR_BKE_Field is HAL.Bit;
   subtype BDTR_BKP_Field is HAL.Bit;
   subtype BDTR_AOE_Field is HAL.Bit;
   subtype BDTR_MOE_Field is HAL.Bit;
   subtype BDTR_BKF_Field is HAL.UInt4;
   subtype BDTR_BKDSRM_Field is HAL.Bit;
   subtype BDTR_BKBID_Field is HAL.Bit;

   --  TIM16/TIM17 break and dead-time register
   type BDTR_Register is record
      --  Dead-time generator setup
      DT             : BDTR_DT_Field := 16#0#;
      --  Lock configuration
      LOCK           : BDTR_LOCK_Field := 16#0#;
      --  Off-state selection for Idle mode
      OSSI           : BDTR_OSSI_Field := 16#0#;
      --  Off-state selection for Run mode
      OSSR           : BDTR_OSSR_Field := 16#0#;
      --  Break enable
      BKE            : BDTR_BKE_Field := 16#0#;
      --  Break polarity
      BKP            : BDTR_BKP_Field := 16#0#;
      --  Automatic output enable
      AOE            : BDTR_AOE_Field := 16#0#;
      --  Main output enable
      MOE            : BDTR_MOE_Field := 16#0#;
      --  Break filter
      BKF            : BDTR_BKF_Field := 16#0#;
      --  unspecified
      Reserved_20_25 : HAL.UInt6 := 16#0#;
      --  Break Disarm
      BKDSRM         : BDTR_BKDSRM_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Break Bidirectional
      BKBID          : BDTR_BKBID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDTR_Register use record
      DT             at 0 range 0 .. 7;
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

   subtype TIM16_OR1_TI1_RMP_Field is HAL.UInt2;

   --  TIM16 option register 1
   type TIM16_OR1_Register is record
      --  Timer 17 input 1 connection
      TI1_RMP       : TIM16_OR1_TI1_RMP_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_OR1_Register use record
      TI1_RMP       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype TIM16_AF1_BKINE_Field is HAL.Bit;
   subtype TIM16_AF1_BKCMP1E_Field is HAL.Bit;
   subtype TIM16_AF1_BKCMP2E_Field is HAL.Bit;
   subtype TIM16_AF1_BKINP_Field is HAL.Bit;
   subtype TIM16_AF1_BKCMP1P_Field is HAL.Bit;
   subtype TIM16_AF1_BKCMP2P_Field is HAL.Bit;

   --  TIM16 alternate function register 1
   type TIM16_AF1_Register is record
      --  BRK BKIN input enable
      BKINE          : TIM16_AF1_BKINE_Field := 16#1#;
      --  BRK COMP1 enable
      BKCMP1E        : TIM16_AF1_BKCMP1E_Field := 16#0#;
      --  BRK COMP2 enable
      BKCMP2E        : TIM16_AF1_BKCMP2E_Field := 16#0#;
      --  unspecified
      Reserved_3_8   : HAL.UInt6 := 16#0#;
      --  BRK BKIN input polarity
      BKINP          : TIM16_AF1_BKINP_Field := 16#0#;
      --  BRK COMP1 input polarity
      BKCMP1P        : TIM16_AF1_BKCMP1P_Field := 16#0#;
      --  BRK COMP2 input polarity
      BKCMP2P        : TIM16_AF1_BKCMP2P_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_AF1_Register use record
      BKINE          at 0 range 0 .. 0;
      BKCMP1E        at 0 range 1 .. 1;
      BKCMP2E        at 0 range 2 .. 2;
      Reserved_3_8   at 0 range 3 .. 8;
      BKINP          at 0 range 9 .. 9;
      BKCMP1P        at 0 range 10 .. 10;
      BKCMP2P        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype TIM16_TISEL_TISEL_Field is HAL.UInt4;

   --  TIM16 input selection register
   type TIM16_TISEL_Register is record
      --  TISEL
      TISEL         : TIM16_TISEL_TISEL_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM16_TISEL_Register use record
      TISEL         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype TIM17_OR1_TI1_RMP_Field is HAL.UInt2;

   --  TIM17 option register 1
   type TIM17_OR1_Register is record
      --  Timer 17 input 1 connection
      TI1_RMP       : TIM17_OR1_TI1_RMP_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_OR1_Register use record
      TI1_RMP       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype TIM17_AF1_BKINE_Field is HAL.Bit;
   subtype TIM17_AF1_BKCMP1E_Field is HAL.Bit;
   subtype TIM17_AF1_BKCMP2E_Field is HAL.Bit;
   subtype TIM17_AF1_BKINP_Field is HAL.Bit;
   subtype TIM17_AF1_BKCMP1P_Field is HAL.Bit;
   subtype TIM17_AF1_BKCMP2P_Field is HAL.Bit;

   --  TIM17 alternate function register 1
   type TIM17_AF1_Register is record
      --  BRK BKIN input enable
      BKINE          : TIM17_AF1_BKINE_Field := 16#1#;
      --  BRK COMP1 enable
      BKCMP1E        : TIM17_AF1_BKCMP1E_Field := 16#0#;
      --  BRK COMP2 enable
      BKCMP2E        : TIM17_AF1_BKCMP2E_Field := 16#0#;
      --  unspecified
      Reserved_3_8   : HAL.UInt6 := 16#0#;
      --  BRK BKIN input polarity
      BKINP          : TIM17_AF1_BKINP_Field := 16#0#;
      --  BRK COMP1 input polarity
      BKCMP1P        : TIM17_AF1_BKCMP1P_Field := 16#0#;
      --  BRK COMP2 input polarity
      BKCMP2P        : TIM17_AF1_BKCMP2P_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_AF1_Register use record
      BKINE          at 0 range 0 .. 0;
      BKCMP1E        at 0 range 1 .. 1;
      BKCMP2E        at 0 range 2 .. 2;
      Reserved_3_8   at 0 range 3 .. 8;
      BKINP          at 0 range 9 .. 9;
      BKCMP1P        at 0 range 10 .. 10;
      BKCMP2P        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype TIM17_TISEL_TISEL_Field is HAL.UInt4;

   --  TIM17 input selection register
   type TIM17_TISEL_Register is record
      --  TISEL
      TISEL         : TIM17_TISEL_TISEL_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM17_TISEL_Register use record
      TISEL         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TIM2_Disc is
     (Output,
      Input);

   --  General-purpose-timers
   type TIM2_Peripheral
     (Discriminent : TIM2_Disc := Output)
   is record
      --  control register 1
      CR1          : aliased CR1_Register;
      --  control register 2
      CR2          : aliased CR2_Register;
      --  slave mode control register
      SMCR         : aliased SMCR_Register;
      --  DMA/Interrupt enable register
      DIER         : aliased DIER_Register;
      --  status register
      SR           : aliased SR_Register;
      --  event generation register
      EGR          : aliased EGR_Register;
      --  capture/compare enable register
      CCER         : aliased CCER_Register;
      --  counter
      CNT          : aliased CNT_Register;
      --  prescaler
      PSC          : aliased PSC_Register;
      --  auto-reload register
      ARR          : aliased ARR_Register;
      --  capture/compare register 1
      CCR1         : aliased CCR1_Register;
      --  capture/compare register 2
      CCR2         : aliased CCR2_Register;
      --  capture/compare register 3
      CCR3         : aliased CCR3_Register;
      --  capture/compare register 4
      CCR4         : aliased CCR4_Register;
      --  DMA control register
      DCR          : aliased DCR_Register;
      --  DMA address for full transfer
      DMAR         : aliased DMAR_Register;
      --  TIM2 option register
      TIM2_OR1     : aliased TIM2_OR1_Register;
      --  TIM2 alternate function option register 1
      TIM2_AF1     : aliased TIM2_AF1_Register;
      --  TIM2 timer input selection register
      TIM2_TISEL   : aliased TIM2_TISEL_Register;
      case Discriminent is
         when Output =>
            --  capture/compare mode register 1 (output mode)
            CCMR1_Output : aliased CCMR1_Output_Register;
            --  capture/compare mode register 2 (output mode)
            CCMR2_Output : aliased CCMR2_Output_Register;
         when Input =>
            --  capture/compare mode register 1 (input mode)
            CCMR1_Input : aliased CCMR1_Input_Register;
            --  capture/compare mode register 2 (input mode)
            CCMR2_Input : aliased CCMR2_Input_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM2_Peripheral use record
      CR1          at 16#0# range 0 .. 31;
      CR2          at 16#4# range 0 .. 31;
      SMCR         at 16#8# range 0 .. 31;
      DIER         at 16#C# range 0 .. 31;
      SR           at 16#10# range 0 .. 31;
      EGR          at 16#14# range 0 .. 31;
      CCER         at 16#20# range 0 .. 31;
      CNT          at 16#24# range 0 .. 31;
      PSC          at 16#28# range 0 .. 31;
      ARR          at 16#2C# range 0 .. 31;
      CCR1         at 16#34# range 0 .. 31;
      CCR2         at 16#38# range 0 .. 31;
      CCR3         at 16#3C# range 0 .. 31;
      CCR4         at 16#40# range 0 .. 31;
      DCR          at 16#48# range 0 .. 31;
      DMAR         at 16#4C# range 0 .. 31;
      TIM2_OR1     at 16#50# range 0 .. 31;
      TIM2_AF1     at 16#60# range 0 .. 31;
      TIM2_TISEL   at 16#68# range 0 .. 31;
      CCMR1_Output at 16#18# range 0 .. 31;
      CCMR2_Output at 16#1C# range 0 .. 31;
      CCMR1_Input  at 16#18# range 0 .. 31;
      CCMR2_Input  at 16#1C# range 0 .. 31;
   end record;

   --  General-purpose-timers
   TIM2_Periph : aliased TIM2_Peripheral
     with Import, Address => TIM2_Base;

   type TIM16_Disc is
     (Output,
      Input);

   --  General-purpose timers
   type TIM16_Peripheral
     (Discriminent : TIM16_Disc := Output)
   is record
      --  TIM16/TIM17 control register 1
      CR1          : aliased CR1_Register_1;
      --  TIM16/TIM17 control register 2
      CR2          : aliased CR2_Register_1;
      --  TIM16/TIM17 DMA/interrupt enable register
      DIER         : aliased DIER_Register_1;
      --  TIM16/TIM17 status register
      SR           : aliased SR_Register_1;
      --  TIM16/TIM17 event generation register
      EGR          : aliased EGR_Register_1;
      --  TIM16/TIM17 capture/compare enable register
      CCER         : aliased CCER_Register_1;
      --  TIM16/TIM17 counter
      CNT          : aliased CNT_Register_1;
      --  TIM16/TIM17 prescaler
      PSC          : aliased PSC_Register;
      --  TIM16/TIM17 auto-reload register
      ARR          : aliased ARR_Register_1;
      --  TIM16/TIM17 repetition counter register
      RCR          : aliased RCR_Register;
      --  TIM16/TIM17 capture/compare register 1
      CCR1         : aliased CCR1_Register_1;
      --  TIM16/TIM17 break and dead-time register
      BDTR         : aliased BDTR_Register;
      --  TIM16/TIM17 DMA control register
      DCR          : aliased DCR_Register;
      --  TIM16/TIM17 DMA address for full transfer
      DMAR         : aliased DMAR_Register;
      --  TIM16 option register 1
      TIM16_OR1    : aliased TIM16_OR1_Register;
      --  TIM16 alternate function register 1
      TIM16_AF1    : aliased TIM16_AF1_Register;
      --  TIM16 input selection register
      TIM16_TISEL  : aliased TIM16_TISEL_Register;
      case Discriminent is
         when Output =>
            --  TIM16/TIM17 capture/compare mode register 1
            CCMR1_Output : aliased CCMR1_Output_Register_1;
         when Input =>
            --  TIM16/TIM17 capture/compare mode register 1
            CCMR1_Input : aliased CCMR1_Input_Register_1;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM16_Peripheral use record
      CR1          at 16#0# range 0 .. 31;
      CR2          at 16#4# range 0 .. 31;
      DIER         at 16#C# range 0 .. 31;
      SR           at 16#10# range 0 .. 31;
      EGR          at 16#14# range 0 .. 31;
      CCER         at 16#20# range 0 .. 31;
      CNT          at 16#24# range 0 .. 31;
      PSC          at 16#28# range 0 .. 31;
      ARR          at 16#2C# range 0 .. 31;
      RCR          at 16#30# range 0 .. 31;
      CCR1         at 16#34# range 0 .. 31;
      BDTR         at 16#44# range 0 .. 31;
      DCR          at 16#48# range 0 .. 31;
      DMAR         at 16#4C# range 0 .. 31;
      TIM16_OR1    at 16#50# range 0 .. 31;
      TIM16_AF1    at 16#60# range 0 .. 31;
      TIM16_TISEL  at 16#68# range 0 .. 31;
      CCMR1_Output at 16#18# range 0 .. 31;
      CCMR1_Input  at 16#18# range 0 .. 31;
   end record;

   --  General-purpose timers
   TIM16_Periph : aliased TIM16_Peripheral
     with Import, Address => TIM16_Base;

   type TIM17_Disc is
     (Output,
      Input);

   --  General-purpose timers
   type TIM17_Peripheral
     (Discriminent : TIM17_Disc := Output)
   is record
      --  TIM16/TIM17 control register 1
      CR1          : aliased CR1_Register_1;
      --  TIM16/TIM17 control register 2
      CR2          : aliased CR2_Register_1;
      --  TIM16/TIM17 DMA/interrupt enable register
      DIER         : aliased DIER_Register_1;
      --  TIM16/TIM17 status register
      SR           : aliased SR_Register_1;
      --  TIM16/TIM17 event generation register
      EGR          : aliased EGR_Register_1;
      --  TIM16/TIM17 capture/compare enable register
      CCER         : aliased CCER_Register_1;
      --  TIM16/TIM17 counter
      CNT          : aliased CNT_Register_1;
      --  TIM16/TIM17 prescaler
      PSC          : aliased PSC_Register;
      --  TIM16/TIM17 auto-reload register
      ARR          : aliased ARR_Register_1;
      --  TIM16/TIM17 repetition counter register
      RCR          : aliased RCR_Register;
      --  TIM16/TIM17 capture/compare register 1
      CCR1         : aliased CCR1_Register_1;
      --  TIM16/TIM17 break and dead-time register
      BDTR         : aliased BDTR_Register;
      --  TIM16/TIM17 DMA control register
      DCR          : aliased DCR_Register;
      --  TIM16/TIM17 DMA address for full transfer
      DMAR         : aliased DMAR_Register;
      --  TIM17 option register 1
      TIM17_OR1    : aliased TIM17_OR1_Register;
      --  TIM17 alternate function register 1
      TIM17_AF1    : aliased TIM17_AF1_Register;
      --  TIM17 input selection register
      TIM17_TISEL  : aliased TIM17_TISEL_Register;
      case Discriminent is
         when Output =>
            --  TIM16/TIM17 capture/compare mode register 1
            CCMR1_Output : aliased CCMR1_Output_Register_1;
         when Input =>
            --  TIM16/TIM17 capture/compare mode register 1
            CCMR1_Input : aliased CCMR1_Input_Register_1;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TIM17_Peripheral use record
      CR1          at 16#0# range 0 .. 31;
      CR2          at 16#4# range 0 .. 31;
      DIER         at 16#C# range 0 .. 31;
      SR           at 16#10# range 0 .. 31;
      EGR          at 16#14# range 0 .. 31;
      CCER         at 16#20# range 0 .. 31;
      CNT          at 16#24# range 0 .. 31;
      PSC          at 16#28# range 0 .. 31;
      ARR          at 16#2C# range 0 .. 31;
      RCR          at 16#30# range 0 .. 31;
      CCR1         at 16#34# range 0 .. 31;
      BDTR         at 16#44# range 0 .. 31;
      DCR          at 16#48# range 0 .. 31;
      DMAR         at 16#4C# range 0 .. 31;
      TIM17_OR1    at 16#50# range 0 .. 31;
      TIM17_AF1    at 16#60# range 0 .. 31;
      TIM17_TISEL  at 16#68# range 0 .. 31;
      CCMR1_Output at 16#18# range 0 .. 31;
      CCMR1_Input  at 16#18# range 0 .. 31;
   end record;

   --  General-purpose timers
   TIM17_Periph : aliased TIM17_Peripheral
     with Import, Address => TIM17_Base;

end STM32_SVD.GPTIM;
