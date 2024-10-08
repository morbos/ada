--  This spec has been automatically generated from STM32WL5x_CM4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.PWR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_LPMS_Field is HAL.UInt3;
   subtype CR1_SUBGHZSPINSSSEL_Field is HAL.Bit;
   subtype CR1_FPDR_Field is HAL.Bit;
   subtype CR1_FPDS_Field is HAL.Bit;
   subtype CR1_DBP_Field is HAL.Bit;
   subtype CR1_VOS_Field is HAL.UInt2;
   subtype CR1_LPR_Field is HAL.Bit;

   --  Power control register 1
   type CR1_Register is record
      --  Low-power mode selection for CPU1
      LPMS            : CR1_LPMS_Field := 16#0#;
      --  sub-GHz SPI NSS source select
      SUBGHZSPINSSSEL : CR1_SUBGHZSPINSSSEL_Field := 16#0#;
      --  Flash memory power down mode during LPRun for CPU1
      FPDR            : CR1_FPDR_Field := 16#0#;
      --  Flash memory power down mode during LPSleep for CPU1
      FPDS            : CR1_FPDS_Field := 16#0#;
      --  unspecified
      Reserved_6_7    : HAL.UInt2 := 16#0#;
      --  Disable backup domain write protection
      DBP             : CR1_DBP_Field := 16#0#;
      --  Voltage scaling range selection
      VOS             : CR1_VOS_Field := 16#1#;
      --  unspecified
      Reserved_11_13  : HAL.UInt3 := 16#0#;
      --  Low-power run
      LPR             : CR1_LPR_Field := 16#0#;
      --  unspecified
      Reserved_15_31  : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      LPMS            at 0 range 0 .. 2;
      SUBGHZSPINSSSEL at 0 range 3 .. 3;
      FPDR            at 0 range 4 .. 4;
      FPDS            at 0 range 5 .. 5;
      Reserved_6_7    at 0 range 6 .. 7;
      DBP             at 0 range 8 .. 8;
      VOS             at 0 range 9 .. 10;
      Reserved_11_13  at 0 range 11 .. 13;
      LPR             at 0 range 14 .. 14;
      Reserved_15_31  at 0 range 15 .. 31;
   end record;

   subtype CR2_PVDE_Field is HAL.Bit;
   subtype CR2_PLS_Field is HAL.UInt3;
   subtype CR2_PVME3_Field is HAL.Bit;

   --  Power control register 2
   type CR2_Register is record
      --  Power voltage detector enable
      PVDE          : CR2_PVDE_Field := 16#0#;
      --  Power voltage detector level selection.
      PLS           : CR2_PLS_Field := 16#0#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Peripheral voltage monitoring 3 enable: VDDA vs. 1.62V
      PVME3         : CR2_PVME3_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      PVDE          at 0 range 0 .. 0;
      PLS           at 0 range 1 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      PVME3         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  CR3_EWUP array element
   subtype CR3_EWUP_Element is HAL.Bit;

   --  CR3_EWUP array
   type CR3_EWUP_Field_Array is array (1 .. 3) of CR3_EWUP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CR3_EWUP
   type CR3_EWUP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EWUP as a value
            Val : HAL.UInt3;
         when True =>
            --  EWUP as an array
            Arr : CR3_EWUP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CR3_EWUP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CR3_EULPEN_Field is HAL.Bit;
   subtype CR3_EWPVD_Field is HAL.Bit;
   subtype CR3_RRS_Field is HAL.Bit;
   subtype CR3_APC_Field is HAL.Bit;
   subtype CR3_EWRFBUSY_Field is HAL.Bit;
   subtype CR3_EWRFIRQ_Field is HAL.Bit;
   subtype CR3_EC2H_Field is HAL.Bit;
   subtype CR3_EIWUL_Field is HAL.Bit;

   --  Power control register 3
   type CR3_Register is record
      --  Enable Wakeup pin WKUP1 for CPU1
      EWUP           : CR3_EWUP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_6   : HAL.UInt4 := 16#0#;
      --  Ultra-low-power enable
      EULPEN         : CR3_EULPEN_Field := 16#0#;
      --  Enable wakeup PVD for CPU1
      EWPVD          : CR3_EWPVD_Field := 16#0#;
      --  SRAM2 retention in Standby mode
      RRS            : CR3_RRS_Field := 16#0#;
      --  Apply pull-up and pull-down configuration from CPU1
      APC            : CR3_APC_Field := 16#0#;
      --  Enable Radio BUSY Wakeup from Standby for CPU1
      EWRFBUSY       : CR3_EWRFBUSY_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  akeup for CPU1
      EWRFIRQ        : CR3_EWRFIRQ_Field := 16#0#;
      --  nable CPU2 Hold interrupt for CPU1
      EC2H           : CR3_EC2H_Field := 16#0#;
      --  Enable internal wakeup line for CPU1
      EIWUL          : CR3_EIWUL_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR3_Register use record
      EWUP           at 0 range 0 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      EULPEN         at 0 range 7 .. 7;
      EWPVD          at 0 range 8 .. 8;
      RRS            at 0 range 9 .. 9;
      APC            at 0 range 10 .. 10;
      EWRFBUSY       at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      EWRFIRQ        at 0 range 13 .. 13;
      EC2H           at 0 range 14 .. 14;
      EIWUL          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  CR4_WP array element
   subtype CR4_WP_Element is HAL.Bit;

   --  CR4_WP array
   type CR4_WP_Field_Array is array (1 .. 3) of CR4_WP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CR4_WP
   type CR4_WP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WP as a value
            Val : HAL.UInt3;
         when True =>
            --  WP as an array
            Arr : CR4_WP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CR4_WP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CR4_VBE_Field is HAL.Bit;
   subtype CR4_VBRS_Field is HAL.Bit;
   subtype CR4_WRFBUSYP_Field is HAL.Bit;
   subtype CR4_C2BOOT_Field is HAL.Bit;

   --  Power control register 4
   type CR4_Register is record
      --  Wakeup pin WKUP1 polarity
      WP             : CR4_WP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  VBAT battery charging enable
      VBE            : CR4_VBE_Field := 16#0#;
      --  VBAT battery charging resistor selection
      VBRS           : CR4_VBRS_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Wakeup Radio BUSY polarity
      WRFBUSYP       : CR4_WRFBUSYP_Field := 16#0#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  oot CPU2 after reset or wakeup from Stop or Standby modes.
      C2BOOT         : CR4_C2BOOT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR4_Register use record
      WP             at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      VBE            at 0 range 8 .. 8;
      VBRS           at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WRFBUSYP       at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      C2BOOT         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SR1_WUF array element
   subtype SR1_WUF_Element is HAL.Bit;

   --  SR1_WUF array
   type SR1_WUF_Field_Array is array (1 .. 3) of SR1_WUF_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for SR1_WUF
   type SR1_WUF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUF as a value
            Val : HAL.UInt3;
         when True =>
            --  WUF as an array
            Arr : SR1_WUF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for SR1_WUF_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype SR1_WPVDF_Field is HAL.Bit;
   subtype SR1_WRFBUSYF_Field is HAL.Bit;
   subtype SR1_C2HF_Field is HAL.Bit;
   subtype SR1_WUFI_Field is HAL.Bit;

   --  Power status register 1
   type SR1_Register is record
      --  Read-only. Wakeup flag 1
      WUF            : SR1_WUF_Field;
      --  unspecified
      Reserved_3_7   : HAL.UInt5;
      --  Read-only. Wakeup PVD flag
      WPVDF          : SR1_WPVDF_Field;
      --  unspecified
      Reserved_9_10  : HAL.UInt2;
      --  Read-only. Radio BUSY wakeup flag
      WRFBUSYF       : SR1_WRFBUSYF_Field;
      --  unspecified
      Reserved_12_13 : HAL.UInt2;
      --  Read-only. PU2 Hold interrupt flag
      C2HF           : SR1_C2HF_Field;
      --  Read-only. Internal wakeup interrupt flag
      WUFI           : SR1_WUFI_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR1_Register use record
      WUF            at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      WPVDF          at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      WRFBUSYF       at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      C2HF           at 0 range 14 .. 14;
      WUFI           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SR2_C2BOOTS_Field is HAL.Bit;
   subtype SR2_RFBUSYS_Field is HAL.Bit;
   subtype SR2_RFBUSYMS_Field is HAL.Bit;
   subtype SR2_SMPSRDY_Field is HAL.Bit;
   subtype SR2_LDORDY_Field is HAL.Bit;
   subtype SR2_RFEOLF_Field is HAL.Bit;
   subtype SR2_REGMRS_Field is HAL.Bit;
   subtype SR2_FLASHRDY_Field is HAL.Bit;
   subtype SR2_REGLPS_Field is HAL.Bit;
   subtype SR2_REGLPF_Field is HAL.Bit;
   subtype SR2_VOSF_Field is HAL.Bit;
   subtype SR2_PVDO_Field is HAL.Bit;
   subtype SR2_PVMO3_Field is HAL.Bit;

   --  Power status register 2
   type SR2_Register is record
      --  Read-only. PU2 boot/wakeup request source information
      C2BOOTS        : SR2_C2BOOTS_Field;
      --  Read-only. Radio BUSY signal status
      RFBUSYS        : SR2_RFBUSYS_Field;
      --  Read-only. Radio BUSY masked signal status
      RFBUSYMS       : SR2_RFBUSYMS_Field;
      --  Read-only. SMPS ready flag
      SMPSRDY        : SR2_SMPSRDY_Field;
      --  Read-only. LDO ready flag
      LDORDY         : SR2_LDORDY_Field;
      --  Read-only. Radio end of life flag
      RFEOLF         : SR2_RFEOLF_Field;
      --  Read-only. regulator2 low power flag
      REGMRS         : SR2_REGMRS_Field;
      --  Read-only. Flash ready
      FLASHRDY       : SR2_FLASHRDY_Field;
      --  Read-only. regulator1 started
      REGLPS         : SR2_REGLPS_Field;
      --  Read-only. regulator1 low power flag
      REGLPF         : SR2_REGLPF_Field;
      --  Read-only. Voltage scaling flag
      VOSF           : SR2_VOSF_Field;
      --  Read-only. Power voltage detector output
      PVDO           : SR2_PVDO_Field;
      --  unspecified
      Reserved_12_13 : HAL.UInt2;
      --  Read-only. Peripheral voltage monitoring output: VDDA vs. 1.62 V
      PVMO3          : SR2_PVMO3_Field;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR2_Register use record
      C2BOOTS        at 0 range 0 .. 0;
      RFBUSYS        at 0 range 1 .. 1;
      RFBUSYMS       at 0 range 2 .. 2;
      SMPSRDY        at 0 range 3 .. 3;
      LDORDY         at 0 range 4 .. 4;
      RFEOLF         at 0 range 5 .. 5;
      REGMRS         at 0 range 6 .. 6;
      FLASHRDY       at 0 range 7 .. 7;
      REGLPS         at 0 range 8 .. 8;
      REGLPF         at 0 range 9 .. 9;
      VOSF           at 0 range 10 .. 10;
      PVDO           at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      PVMO3          at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  SCR_CWUF array element
   subtype SCR_CWUF_Element is HAL.Bit;

   --  SCR_CWUF array
   type SCR_CWUF_Field_Array is array (1 .. 3) of SCR_CWUF_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for SCR_CWUF
   type SCR_CWUF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CWUF as a value
            Val : HAL.UInt3;
         when True =>
            --  CWUF as an array
            Arr : SCR_CWUF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for SCR_CWUF_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype SCR_CWPVDF_Field is HAL.Bit;
   subtype SCR_CWRFBUSYF_Field is HAL.Bit;
   subtype SCR_CC2HF_Field is HAL.Bit;

   --  Power status clear register
   type SCR_Register is record
      --  Write-only. Clear wakeup flag 1
      CWUF           : SCR_CWUF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Write-only. Clear wakeup PVD interrupt flag
      CWPVDF         : SCR_CWPVDF_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Write-only. Clear wakeup Radio BUSY flag
      CWRFBUSYF      : SCR_CWRFBUSYF_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Write-only. lear CPU2 Hold interrupt flag
      CC2HF          : SCR_CC2HF_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCR_Register use record
      CWUF           at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      CWPVDF         at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      CWRFBUSYF      at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      CC2HF          at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype CR5_RFEOLEN_Field is HAL.Bit;
   subtype CR5_SMPSEN_Field is HAL.Bit;

   --  Power control register 5
   type CR5_Register is record
      --  unspecified
      Reserved_0_13  : HAL.UInt14 := 16#0#;
      --  Enable Radio End Of Life detector enabled
      RFEOLEN        : CR5_RFEOLEN_Field := 16#0#;
      --  Enable SMPS Step Down converter SMPS mode enabled.
      SMPSEN         : CR5_SMPSEN_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR5_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      RFEOLEN        at 0 range 14 .. 14;
      SMPSEN         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRA_PU array element
   subtype PUCRA_PU_Element is HAL.Bit;

   --  PUCRA_PU array
   type PUCRA_PU_Field_Array is array (0 .. 15) of PUCRA_PU_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRA_PU
   type PUCRA_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : HAL.UInt16;
         when True =>
            --  PU as an array
            Arr : PUCRA_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PUCRA_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port A pull-up control register
   type PUCRA_Register is record
      --  PU0
      PU             : PUCRA_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRA_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRA_PD array element
   subtype PDCRA_PD_Element is HAL.Bit;

   --  PDCRA_PD array
   type PDCRA_PD_Field_Array is array (0 .. 15) of PDCRA_PD_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PDCRA_PD
   type PDCRA_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : HAL.UInt16;
         when True =>
            --  PD as an array
            Arr : PDCRA_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PDCRA_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port A pull-down control register
   type PDCRA_Register is record
      --  PD0
      PD             : PDCRA_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRA_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRB_PU array element
   subtype PUCRB_PU_Element is HAL.Bit;

   --  PUCRB_PU array
   type PUCRB_PU_Field_Array is array (0 .. 15) of PUCRB_PU_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRB_PU
   type PUCRB_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : HAL.UInt16;
         when True =>
            --  PU as an array
            Arr : PUCRB_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PUCRB_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port B pull-up control register
   type PUCRB_Register is record
      --  PU0
      PU             : PUCRB_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRB_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRB_PD array element
   subtype PDCRB_PD_Element is HAL.Bit;

   --  PDCRB_PD array
   type PDCRB_PD_Field_Array is array (0 .. 15) of PDCRB_PD_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PDCRB_PD
   type PDCRB_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : HAL.UInt16;
         when True =>
            --  PD as an array
            Arr : PDCRB_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PDCRB_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port B pull-down control register
   type PDCRB_Register is record
      --  PD0
      PD             : PDCRB_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRB_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRC_PU array element
   subtype PUCRC_PU_Element is HAL.Bit;

   --  PUCRC_PU array
   type PUCRC_PU_Field_Array is array (0 .. 6) of PUCRC_PU_Element
     with Component_Size => 1, Size => 7;

   --  Type definition for PUCRC_PU
   type PUCRC_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : HAL.UInt7;
         when True =>
            --  PU as an array
            Arr : PUCRC_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for PUCRC_PU_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  PUCRC_PU array
   type PUCRC_PU_Field_Array_1 is array (13 .. 15) of PUCRC_PU_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for PUCRC_PU
   type PUCRC_PU_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : HAL.UInt3;
         when True =>
            --  PU as an array
            Arr : PUCRC_PU_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PUCRC_PU_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Power Port C pull-up control register
   type PUCRC_Register is record
      --  PU0
      PU             : PUCRC_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_12  : HAL.UInt6 := 16#0#;
      --  PU13
      PU_1           : PUCRC_PU_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRC_Register use record
      PU             at 0 range 0 .. 6;
      Reserved_7_12  at 0 range 7 .. 12;
      PU_1           at 0 range 13 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRC_PD array element
   subtype PDCRC_PD_Element is HAL.Bit;

   --  PDCRC_PD array
   type PDCRC_PD_Field_Array is array (0 .. 6) of PDCRC_PD_Element
     with Component_Size => 1, Size => 7;

   --  Type definition for PDCRC_PD
   type PDCRC_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : HAL.UInt7;
         when True =>
            --  PD as an array
            Arr : PDCRC_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for PDCRC_PD_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  PDCRC_PD array
   type PDCRC_PD_Field_Array_1 is array (13 .. 15) of PDCRC_PD_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for PDCRC_PD
   type PDCRC_PD_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : HAL.UInt3;
         when True =>
            --  PD as an array
            Arr : PDCRC_PD_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PDCRC_PD_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Power Port C pull-down control register
   type PDCRC_Register is record
      --  PD0
      PD             : PDCRC_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_12  : HAL.UInt6 := 16#0#;
      --  PD13
      PD_1           : PDCRC_PD_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRC_Register use record
      PD             at 0 range 0 .. 6;
      Reserved_7_12  at 0 range 7 .. 12;
      PD_1           at 0 range 13 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PUCRH_PU3_Field is HAL.Bit;

   --  Power Port H pull-up control register
   type PUCRH_Register is record
      --  unspecified
      Reserved_0_2  : HAL.UInt3 := 16#0#;
      --  pull-up
      PU3           : PUCRH_PU3_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRH_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      PU3           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype PDCRH_PD3_Field is HAL.Bit;

   --  Power Port H pull-down control register
   type PDCRH_Register is record
      --  unspecified
      Reserved_0_2  : HAL.UInt3 := 16#0#;
      --  pull-down
      PD3           : PDCRH_PD3_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRH_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      PD3           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype C2CR1_LPMS_Field is HAL.UInt3;
   subtype C2CR1_FPDR_Field is HAL.Bit;
   subtype C2CR1_FPDS_Field is HAL.Bit;

   --  Power CPU2 control register 1 [dual core device only]
   type C2CR1_Register is record
      --  Low-power mode selection for CPU2
      LPMS          : C2CR1_LPMS_Field := 16#7#;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Flash memory power down mode during LPRun for CPU2
      FPDR          : C2CR1_FPDR_Field := 16#0#;
      --  Flash memory power down mode during LPSleep for CPU2
      FPDS          : C2CR1_FPDS_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2CR1_Register use record
      LPMS          at 0 range 0 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      FPDR          at 0 range 4 .. 4;
      FPDS          at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  C2CR3_EWUP array element
   subtype C2CR3_EWUP_Element is HAL.Bit;

   --  C2CR3_EWUP array
   type C2CR3_EWUP_Field_Array is array (1 .. 3) of C2CR3_EWUP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for C2CR3_EWUP
   type C2CR3_EWUP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EWUP as a value
            Val : HAL.UInt3;
         when True =>
            --  EWUP as an array
            Arr : C2CR3_EWUP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for C2CR3_EWUP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype C2CR3_EWPVD_Field is HAL.Bit;
   subtype C2CR3_APC_Field is HAL.Bit;
   subtype C2CR3_EWRFBUSY_Field is HAL.Bit;
   subtype C2CR3_EWRFIRQ_Field is HAL.Bit;
   subtype C2CR3_EIWUL_Field is HAL.Bit;

   --  Power CPU2 control register 3 [dual core device only]
   type C2CR3_Register is record
      --  Enable Wakeup pin WKUP1 for CPU2
      EWUP           : C2CR3_EWUP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Enable wakeup PVD for CPU2
      EWPVD          : C2CR3_EWPVD_Field := 16#0#;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Apply pull-up and pull-down configuration for CPU2
      APC            : C2CR3_APC_Field := 16#0#;
      --  EWRFBUSY
      EWRFBUSY       : C2CR3_EWRFBUSY_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  akeup for CPU2
      EWRFIRQ        : C2CR3_EWRFIRQ_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable internal wakeup line for CPU2
      EIWUL          : C2CR3_EIWUL_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2CR3_Register use record
      EWUP           at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      EWPVD          at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      APC            at 0 range 10 .. 10;
      EWRFBUSY       at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      EWRFIRQ        at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      EIWUL          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EXTSCR_C1CSSF_Field is HAL.Bit;
   subtype EXTSCR_C2CSSF_Field is HAL.Bit;
   subtype EXTSCR_C1SBF_Field is HAL.Bit;
   subtype EXTSCR_C1STOP2F_Field is HAL.Bit;
   subtype EXTSCR_C1STOPF_Field is HAL.Bit;
   subtype EXTSCR_C2SBF_Field is HAL.Bit;
   subtype EXTSCR_C2STOP2F_Field is HAL.Bit;
   subtype EXTSCR_C2STOPF_Field is HAL.Bit;
   subtype EXTSCR_C1DS_Field is HAL.Bit;
   subtype EXTSCR_C2DS_Field is HAL.Bit;

   --  Power extended status and status clear register
   type EXTSCR_Register is record
      --  Write-only. Clear CPU1 Stop Standby flags
      C1CSSF         : EXTSCR_C1CSSF_Field := 16#0#;
      --  Write-only. lear CPU2 Stop Standby flags
      C2CSSF         : EXTSCR_C2CSSF_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Read-only. System Standby flag for CPU1. (no core states retained)
      C1SBF          : EXTSCR_C1SBF_Field := 16#0#;
      --  Read-only. System Stop2 flag for CPU1. (partial core states retained)
      C1STOP2F       : EXTSCR_C1STOP2F_Field := 16#0#;
      --  Read-only. System Stop0, 1 flag for CPU1. (All core states retained)
      C1STOPF        : EXTSCR_C1STOPF_Field := 16#0#;
      --  Read-only. ystem Standby flag for CPU2. (no core states retained)
      C2SBF          : EXTSCR_C2SBF_Field := 16#0#;
      --  Read-only. ystem Stop2 flag for CPU2. (partial core states retained)
      C2STOP2F       : EXTSCR_C2STOP2F_Field := 16#0#;
      --  Read-only. ystem Stop0, 1 flag for CPU2. (All core states retained)
      C2STOPF        : EXTSCR_C2STOPF_Field := 16#0#;
      --  Read-only. CPU1 deepsleep mode
      C1DS           : EXTSCR_C1DS_Field := 16#0#;
      --  Read-only. PU2 deepsleep mode
      C2DS           : EXTSCR_C2DS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTSCR_Register use record
      C1CSSF         at 0 range 0 .. 0;
      C2CSSF         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      C1SBF          at 0 range 8 .. 8;
      C1STOP2F       at 0 range 9 .. 9;
      C1STOPF        at 0 range 10 .. 10;
      C2SBF          at 0 range 11 .. 11;
      C2STOP2F       at 0 range 12 .. 12;
      C2STOPF        at 0 range 13 .. 13;
      C1DS           at 0 range 14 .. 14;
      C2DS           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SECCFGR_C2EWILA_Field is HAL.Bit;

   --  Power security configuration register [dual core device only]
   type SECCFGR_Register is record
      --  unspecified
      Reserved_0_14  : HAL.UInt15 := 16#0#;
      --  wakeup on CPU2 illegal access interrupt enable
      C2EWILA        : SECCFGR_C2EWILA_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SECCFGR_Register use record
      Reserved_0_14  at 0 range 0 .. 14;
      C2EWILA        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SUBGHZSPICR_NSS_Field is HAL.Bit;

   --  Power SPI3 control register
   type SUBGHZSPICR_Register is record
      --  unspecified
      Reserved_0_14  : HAL.UInt15 := 16#0#;
      --  sub-GHz SPI NSS control
      NSS            : SUBGHZSPICR_NSS_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUBGHZSPICR_Register use record
      Reserved_0_14  at 0 range 0 .. 14;
      NSS            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RSSCMDR_RSSCMD_Field is HAL.UInt8;

   --  RSS Command register [dual core device only]
   type RSSCMDR_Register is record
      --  RSS command
      RSSCMD        : RSSCMDR_RSSCMD_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSSCMDR_Register use record
      RSSCMD        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power control
   type PWR_Peripheral is record
      --  Power control register 1
      CR1         : aliased CR1_Register;
      --  Power control register 2
      CR2         : aliased CR2_Register;
      --  Power control register 3
      CR3         : aliased CR3_Register;
      --  Power control register 4
      CR4         : aliased CR4_Register;
      --  Power status register 1
      SR1         : aliased SR1_Register;
      --  Power status register 2
      SR2         : aliased SR2_Register;
      --  Power status clear register
      SCR         : aliased SCR_Register;
      --  Power control register 5
      CR5         : aliased CR5_Register;
      --  Power Port A pull-up control register
      PUCRA       : aliased PUCRA_Register;
      --  Power Port A pull-down control register
      PDCRA       : aliased PDCRA_Register;
      --  Power Port B pull-up control register
      PUCRB       : aliased PUCRB_Register;
      --  Power Port B pull-down control register
      PDCRB       : aliased PDCRB_Register;
      --  Power Port C pull-up control register
      PUCRC       : aliased PUCRC_Register;
      --  Power Port C pull-down control register
      PDCRC       : aliased PDCRC_Register;
      --  Power Port H pull-up control register
      PUCRH       : aliased PUCRH_Register;
      --  Power Port H pull-down control register
      PDCRH       : aliased PDCRH_Register;
      --  Power CPU2 control register 1 [dual core device only]
      C2CR1       : aliased C2CR1_Register;
      --  Power CPU2 control register 3 [dual core device only]
      C2CR3       : aliased C2CR3_Register;
      --  Power extended status and status clear register
      EXTSCR      : aliased EXTSCR_Register;
      --  Power security configuration register [dual core device only]
      SECCFGR     : aliased SECCFGR_Register;
      --  Power SPI3 control register
      SUBGHZSPICR : aliased SUBGHZSPICR_Register;
      --  RSS Command register [dual core device only]
      RSSCMDR     : aliased RSSCMDR_Register;
   end record
     with Volatile;

   for PWR_Peripheral use record
      CR1         at 16#0# range 0 .. 31;
      CR2         at 16#4# range 0 .. 31;
      CR3         at 16#8# range 0 .. 31;
      CR4         at 16#C# range 0 .. 31;
      SR1         at 16#10# range 0 .. 31;
      SR2         at 16#14# range 0 .. 31;
      SCR         at 16#18# range 0 .. 31;
      CR5         at 16#1C# range 0 .. 31;
      PUCRA       at 16#20# range 0 .. 31;
      PDCRA       at 16#24# range 0 .. 31;
      PUCRB       at 16#28# range 0 .. 31;
      PDCRB       at 16#2C# range 0 .. 31;
      PUCRC       at 16#30# range 0 .. 31;
      PDCRC       at 16#34# range 0 .. 31;
      PUCRH       at 16#58# range 0 .. 31;
      PDCRH       at 16#5C# range 0 .. 31;
      C2CR1       at 16#80# range 0 .. 31;
      C2CR3       at 16#84# range 0 .. 31;
      EXTSCR      at 16#88# range 0 .. 31;
      SECCFGR     at 16#8C# range 0 .. 31;
      SUBGHZSPICR at 16#90# range 0 .. 31;
      RSSCMDR     at 16#98# range 0 .. 31;
   end record;

   --  Power control
   PWR_Periph : aliased PWR_Peripheral
     with Import, Address => PWR_Base;

end STM32_SVD.PWR;
