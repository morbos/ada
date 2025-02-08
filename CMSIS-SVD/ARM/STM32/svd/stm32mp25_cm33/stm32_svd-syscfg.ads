--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.SYSCFG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  SYSCFG_BOOTSR_BOOT array
   type SYSCFG_BOOTSR_BOOT_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for SYSCFG_BOOTSR_BOOT
   type SYSCFG_BOOTSR_BOOT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BOOT as a value
            Val : HAL.UInt4;
         when True =>
            --  BOOT as an array
            Arr : SYSCFG_BOOTSR_BOOT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SYSCFG_BOOTSR_BOOT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SYSCFG boot pin status register
   type SYSCFG_BOOTSR_Register is record
      --  Read-only. BOOT0 pin value
      BOOT          : SYSCFG_BOOTSR_BOOT_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_BOOTSR_Register use record
      BOOT          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  SYSCFG boot pin control register
   type SYSCFG_BOOTCR_Register is record
      --  BOOT0 pin pull-down disable
      BOOT0_PD      : Boolean := False;
      --  BOOT1 pin pull-down disable
      BOOT1_PD      : Boolean := False;
      --  BOOT2 pin pull-down disable
      BOOT2_PD      : Boolean := False;
      --  BOOT3 pin pull-down disable
      BOOT3_PD      : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_BOOTCR_Register use record
      BOOT0_PD      at 0 range 0 .. 0;
      BOOT1_PD      at 0 range 1 .. 1;
      BOOT2_PD      at 0 range 2 .. 2;
      BOOT3_PD      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SYSCFG_DLYBSD1CR_RX_TAP_SEL_Field is HAL.UInt6;
   subtype SYSCFG_DLYBSD1CR_BYP_CMD_Field is HAL.UInt5;

   --  SYSCFG DLYBSD1 control register
   type SYSCFG_DLYBSD1CR_Register is record
      --  When 1, the DLL is enabled when configured in lock mode (BYP_EN = 0).
      EN             : Boolean := False;
      --  TAP number for RX clock selection
      RX_TAP_SEL     : SYSCFG_DLYBSD1CR_RX_TAP_SEL_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  DLL bypass mode enable
      BYP_EN         : Boolean := False;
      --  Delay unit when in DLL bypass mode
      BYP_CMD        : SYSCFG_DLYBSD1CR_BYP_CMD_Field := 16#0#;
      --  None
      ANTIGLITCH_EN  : Boolean := True;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_DLYBSD1CR_Register use record
      EN             at 0 range 0 .. 0;
      RX_TAP_SEL     at 0 range 1 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      BYP_EN         at 0 range 16 .. 16;
      BYP_CMD        at 0 range 17 .. 21;
      ANTIGLITCH_EN  at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  SYSCFG DLYBSD1 status register
   type SYSCFG_DLYBSD1SR_Register is record
      --  Read-only. None
      LOCK           : Boolean;
      --  Read-only. None
      RX_TAP_SEL_ACK : Boolean;
      --  unspecified
      Reserved_2_31  : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_DLYBSD1SR_Register use record
      LOCK           at 0 range 0 .. 0;
      RX_TAP_SEL_ACK at 0 range 1 .. 1;
      Reserved_2_31  at 0 range 2 .. 31;
   end record;

   --  SYSCFG SDMMC1 control register
   type SYSCFG_SDMMC1CR_Register is record
      --  Voltage selection
      SDMMC1_VSEL   : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_SDMMC1CR_Register use record
      SDMMC1_VSEL   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SYSCFG_DLYBSD2CR_RX_TAP_SEL_Field is HAL.UInt6;
   subtype SYSCFG_DLYBSD2CR_BYP_CMD_Field is HAL.UInt5;

   --  SYSCFG DLYBSD2 control register
   type SYSCFG_DLYBSD2CR_Register is record
      --  None
      EN             : Boolean := False;
      --  TAP delay for RX clock selection
      RX_TAP_SEL     : SYSCFG_DLYBSD2CR_RX_TAP_SEL_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  DLL bypass mode enable
      BYP_EN         : Boolean := False;
      --  Delay unit when in DLL bypass mode
      BYP_CMD        : SYSCFG_DLYBSD2CR_BYP_CMD_Field := 16#0#;
      --  Anti-glitch logic enable
      ANTIGLITCH_EN  : Boolean := True;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_DLYBSD2CR_Register use record
      EN             at 0 range 0 .. 0;
      RX_TAP_SEL     at 0 range 1 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      BYP_EN         at 0 range 16 .. 16;
      BYP_CMD        at 0 range 17 .. 21;
      ANTIGLITCH_EN  at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  SYSCFG DLYBSD2 status register
   type SYSCFG_DLYBSD2SR_Register is record
      --  Read-only. None
      LOCK           : Boolean;
      --  Read-only. None
      RX_TAP_SEL_ACK : Boolean;
      --  unspecified
      Reserved_2_31  : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_DLYBSD2SR_Register use record
      LOCK           at 0 range 0 .. 0;
      RX_TAP_SEL_ACK at 0 range 1 .. 1;
      Reserved_2_31  at 0 range 2 .. 31;
   end record;

   --  SYSCFG SDMMC2 control register
   type SYSCFG_SDMMC2CR_Register is record
      --  Voltage selection
      SDMMC2_VSEL   : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_SDMMC2CR_Register use record
      SDMMC2_VSEL   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SYSCFG_DLYBSD3CR_RX_TAP_SEL_Field is HAL.UInt6;
   subtype SYSCFG_DLYBSD3CR_BYP_CMD_Field is HAL.UInt5;

   --  SYSCFG DLYBSD3 control register
   type SYSCFG_DLYBSD3CR_Register is record
      --  None
      EN             : Boolean := False;
      --  TAP delay for RX clock selection
      RX_TAP_SEL     : SYSCFG_DLYBSD3CR_RX_TAP_SEL_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  DLL bypass mode enable
      BYP_EN         : Boolean := False;
      --  Delay unit when in DLL bypass mode
      BYP_CMD        : SYSCFG_DLYBSD3CR_BYP_CMD_Field := 16#0#;
      --  Anti-glitch logic enable
      ANTIGLITCH_EN  : Boolean := True;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_DLYBSD3CR_Register use record
      EN             at 0 range 0 .. 0;
      RX_TAP_SEL     at 0 range 1 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      BYP_EN         at 0 range 16 .. 16;
      BYP_CMD        at 0 range 17 .. 21;
      ANTIGLITCH_EN  at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  SYSCFG DLYBSD3 status register
   type SYSCFG_DLYBSD3SR_Register is record
      --  Read-only. None
      LOCK           : Boolean;
      --  Read-only. None
      RX_TAP_SEL_ACK : Boolean;
      --  unspecified
      Reserved_2_31  : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_DLYBSD3SR_Register use record
      LOCK           at 0 range 0 .. 0;
      RX_TAP_SEL_ACK at 0 range 1 .. 1;
      Reserved_2_31  at 0 range 2 .. 31;
   end record;

   subtype SYSCFG_DLYBOS1CR_RX_TAP_SEL_Field is HAL.UInt6;
   subtype SYSCFG_DLYBOS1CR_TX_TAP_SEL_Field is HAL.UInt6;
   subtype SYSCFG_DLYBOS1CR_BYP_CMD_Field is HAL.UInt5;

   --  SYSCFG DLYBOS1 control register
   type SYSCFG_DLYBOS1CR_Register is record
      --  None
      EN             : Boolean := False;
      --  TAP delay for RX clock selection
      RX_TAP_SEL     : SYSCFG_DLYBOS1CR_RX_TAP_SEL_Field := 16#0#;
      --  TAP delay for TX clock selection
      TX_TAP_SEL     : SYSCFG_DLYBOS1CR_TX_TAP_SEL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  DLL bypass mode enable
      BYP_EN         : Boolean := False;
      --  Delay unit when in DLL bypass mode
      BYP_CMD        : SYSCFG_DLYBOS1CR_BYP_CMD_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_DLYBOS1CR_Register use record
      EN             at 0 range 0 .. 0;
      RX_TAP_SEL     at 0 range 1 .. 6;
      TX_TAP_SEL     at 0 range 7 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      BYP_EN         at 0 range 16 .. 16;
      BYP_CMD        at 0 range 17 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  SYSCFG DLYBOS1 status register
   type SYSCFG_DLYBOS1SR_Register is record
      --  Read-only. None
      LOCK           : Boolean;
      --  Read-only. None
      RX_TAP_SEL_ACK : Boolean;
      --  Read-only. None
      TX_TAP_SEL_ACK : Boolean;
      --  unspecified
      Reserved_3_31  : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_DLYBOS1SR_Register use record
      LOCK           at 0 range 0 .. 0;
      RX_TAP_SEL_ACK at 0 range 1 .. 1;
      TX_TAP_SEL_ACK at 0 range 2 .. 2;
      Reserved_3_31  at 0 range 3 .. 31;
   end record;

   subtype SYSCFG_DLYBOS2CR_RX_TAP_SEL_Field is HAL.UInt6;
   subtype SYSCFG_DLYBOS2CR_TX_TAP_SEL_Field is HAL.UInt6;
   subtype SYSCFG_DLYBOS2CR_BYP_CMD_Field is HAL.UInt5;

   --  SYSCFG DLYBOS2 control register
   type SYSCFG_DLYBOS2CR_Register is record
      --  e
      EN             : Boolean := False;
      --  TAP delay for RX clock selection
      RX_TAP_SEL     : SYSCFG_DLYBOS2CR_RX_TAP_SEL_Field := 16#0#;
      --  TAP delay for TX clock selection
      TX_TAP_SEL     : SYSCFG_DLYBOS2CR_TX_TAP_SEL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  DLL bypass mode enable
      BYP_EN         : Boolean := False;
      --  Delay unit when in DLL bypass mode
      BYP_CMD        : SYSCFG_DLYBOS2CR_BYP_CMD_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_DLYBOS2CR_Register use record
      EN             at 0 range 0 .. 0;
      RX_TAP_SEL     at 0 range 1 .. 6;
      TX_TAP_SEL     at 0 range 7 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      BYP_EN         at 0 range 16 .. 16;
      BYP_CMD        at 0 range 17 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  SYSCFG DLYBOS2 status register
   type SYSCFG_DLYBOS2SR_Register is record
      --  Read-only. None
      LOCK           : Boolean;
      --  Read-only. None
      RX_TAP_SEL_ACK : Boolean;
      --  Read-only. None
      TX_TAP_SEL_ACK : Boolean;
      --  unspecified
      Reserved_3_31  : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_DLYBOS2SR_Register use record
      LOCK           at 0 range 0 .. 0;
      RX_TAP_SEL_ACK at 0 range 1 .. 1;
      TX_TAP_SEL_ACK at 0 range 2 .. 2;
      Reserved_3_31  at 0 range 3 .. 31;
   end record;

   --  SYSCFG video decoder encoder RAM control register
   type SYSCFG_VDERAMCR_Register is record
      --  VDEC/VENC RAM enable
      VDERAM_EN     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDERAMCR_Register use record
      VDERAM_EN     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SYSCFG potential tamper reset control register
   type SYSCFG_POTTAMPRSTCR_Register is record
      --  This bit can be set by software to mask PKA, SAES, CRYP1/2, and HASH
      --  reset in case of potential tamper.
      POTTAMPRESETMASK : Boolean := False;
      --  unspecified
      Reserved_1_31    : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_POTTAMPRSTCR_Register use record
      POTTAMPRESETMASK at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   subtype SYSCFG_M33SSCR_FPU_IT_EN_Field is HAL.UInt6;

   --  SYSCFG M33SS control register
   type SYSCFG_M33SSCR_Register is record
      --  Floating point unit interrupt enable
      FPU_IT_EN      : SYSCFG_M33SSCR_FPU_IT_EN_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  Prevent changes to:
      LOCKSVTAIRCR   : Boolean := False;
      --  Prevent changes to non-secure vector table base address.
      LOCKNSVTOR     : Boolean := False;
      --  Prevent changes to programmed secure MPU memory regions.
      LOCKSMPU       : Boolean := False;
      --  Prevent changes to non-secure MPU memory regions already programmed.
      LOCKNSMPU      : Boolean := False;
      --  Prevent changes to secure SAU memory regions already programmed.
      LOCKSAU        : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_M33SSCR_Register use record
      FPU_IT_EN      at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      LOCKSVTAIRCR   at 0 range 16 .. 16;
      LOCKNSVTOR     at 0 range 17 .. 17;
      LOCKSMPU       at 0 range 18 .. 18;
      LOCKNSMPU      at 0 range 19 .. 19;
      LOCKSAU        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype SYSCFG_ICNQPCR1_A35_QOS_Field is HAL.UInt4;
   subtype SYSCFG_ICNQPCR1_TRACE_QOS_Field is HAL.UInt4;
   subtype SYSCFG_ICNQPCR1_HPDMA1_QOS_Field is HAL.UInt4;
   subtype SYSCFG_ICNQPCR1_HPDMA2_QOS_Field is HAL.UInt4;
   subtype SYSCFG_ICNQPCR1_HPDMA3_QOS_Field is HAL.UInt4;
   subtype SYSCFG_ICNQPCR1_SDMMC1_QOS_Field is HAL.UInt4;
   subtype SYSCFG_ICNQPCR1_SDMMC2_QOS_Field is HAL.UInt4;
   subtype SYSCFG_ICNQPCR1_SDMMC3_QOS_Field is HAL.UInt4;

   --  SYSCFG ICN QOS priority control register 1
   type SYSCFG_ICNQPCR1_Register is record
      --  Cortex-A35 read/write channel QoS setting
      A35_QOS    : SYSCFG_ICNQPCR1_A35_QOS_Field := 16#E#;
      --  TRACE read/write channel QoS setting
      TRACE_QOS  : SYSCFG_ICNQPCR1_TRACE_QOS_Field := 16#3#;
      --  HPDMA1 read/write channel QoS setting
      HPDMA1_QOS : SYSCFG_ICNQPCR1_HPDMA1_QOS_Field := 16#B#;
      --  HPDMA2 read/write channel QoS setting
      HPDMA2_QOS : SYSCFG_ICNQPCR1_HPDMA2_QOS_Field := 16#B#;
      --  HPDMA3 read/write channel QoS setting
      HPDMA3_QOS : SYSCFG_ICNQPCR1_HPDMA3_QOS_Field := 16#B#;
      --  SDMMC1 read/write channel QoS setting
      SDMMC1_QOS : SYSCFG_ICNQPCR1_SDMMC1_QOS_Field := 16#C#;
      --  SDMMC2 read/write channes QoS setting
      SDMMC2_QOS : SYSCFG_ICNQPCR1_SDMMC2_QOS_Field := 16#C#;
      --  SDMMC3 read/write channel QoS setting
      SDMMC3_QOS : SYSCFG_ICNQPCR1_SDMMC3_QOS_Field := 16#C#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ICNQPCR1_Register use record
      A35_QOS    at 0 range 0 .. 3;
      TRACE_QOS  at 0 range 4 .. 7;
      HPDMA1_QOS at 0 range 8 .. 11;
      HPDMA2_QOS at 0 range 12 .. 15;
      HPDMA3_QOS at 0 range 16 .. 19;
      SDMMC1_QOS at 0 range 20 .. 23;
      SDMMC2_QOS at 0 range 24 .. 27;
      SDMMC3_QOS at 0 range 28 .. 31;
   end record;

   subtype SYSCFG_ICNQPCR2_USBH_QOS_Field is HAL.UInt4;
   subtype SYSCFG_ICNQPCR2_USB3DR_QOS_Field is HAL.UInt4;
   subtype SYSCFG_ICNQPCR2_PCIE_QOS_Field is HAL.UInt4;
   subtype SYSCFG_ICNQPCR2_DCMIPP_QOS_Field is HAL.UInt4;
   subtype SYSCFG_ICNQPCR2_LTDC_QOS_Field is HAL.UInt4;
   subtype SYSCFG_ICNQPCR2_VENC_QOS_Field is HAL.UInt4;
   subtype SYSCFG_ICNQPCR2_VDEC_QOS_Field is HAL.UInt4;
   subtype SYSCFG_ICNQPCR2_GPU_QOS_Field is HAL.UInt4;

   --  SYSCFG ICN QOS priority control register 2
   type SYSCFG_ICNQPCR2_Register is record
      --  USBH read/write channel QoS setting
      USBH_QOS   : SYSCFG_ICNQPCR2_USBH_QOS_Field := 16#A#;
      --  USB3DR read/write channel QoS setting
      USB3DR_QOS : SYSCFG_ICNQPCR2_USB3DR_QOS_Field := 16#5#;
      --  PCIE read/write channel QoS setting
      PCIE_QOS   : SYSCFG_ICNQPCR2_PCIE_QOS_Field := 16#6#;
      --  DCMIPP write channel QoS setting
      DCMIPP_QOS : SYSCFG_ICNQPCR2_DCMIPP_QOS_Field := 16#8#;
      --  LTDC read/write channels QoS setting
      LTDC_QOS   : SYSCFG_ICNQPCR2_LTDC_QOS_Field := 16#9#;
      --  VENC read/write channels QoS setting
      VENC_QOS   : SYSCFG_ICNQPCR2_VENC_QOS_Field := 16#4#;
      --  VDEC read/write channels QoS setting
      VDEC_QOS   : SYSCFG_ICNQPCR2_VDEC_QOS_Field := 16#4#;
      --  GPU read/write channel QoS setting
      GPU_QOS    : SYSCFG_ICNQPCR2_GPU_QOS_Field := 16#2#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ICNQPCR2_Register use record
      USBH_QOS   at 0 range 0 .. 3;
      USB3DR_QOS at 0 range 4 .. 7;
      PCIE_QOS   at 0 range 8 .. 11;
      DCMIPP_QOS at 0 range 12 .. 15;
      LTDC_QOS   at 0 range 16 .. 19;
      VENC_QOS   at 0 range 20 .. 23;
      VDEC_QOS   at 0 range 24 .. 27;
      GPU_QOS    at 0 range 28 .. 31;
   end record;

   --  SYSCFG ICN early write response control register
   type SYSCFG_ICNEWRCR_Register is record
      --  USBH (OHCI and EHCI) early write response enable
      USBH_EARLY_WR_RSP_ENABLE         : Boolean := False;
      --  SDMMC1 early write response enable
      SDMMC1_EARLY_WR_RSP_ENABLE       : Boolean := False;
      --  SDMMC2 early write response enable
      SDMMC2_EARLY_WR_RSP_ENABLE       : Boolean := False;
      --  SDMMC3 early write response enable
      SDMMC3_EARLY_WR_RSP_ENABLE       : Boolean := False;
      --  LTDC Rotation and DCMIPP early write response enable
      LTDCR_DCMIPP_EARLY_WR_RSP_ENABLE : Boolean := False;
      --  unspecified
      Reserved_5_31                    : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ICNEWRCR_Register use record
      USBH_EARLY_WR_RSP_ENABLE         at 0 range 0 .. 0;
      SDMMC1_EARLY_WR_RSP_ENABLE       at 0 range 1 .. 1;
      SDMMC2_EARLY_WR_RSP_ENABLE       at 0 range 2 .. 2;
      SDMMC3_EARLY_WR_RSP_ENABLE       at 0 range 3 .. 3;
      LTDCR_DCMIPP_EARLY_WR_RSP_ENABLE at 0 range 4 .. 4;
      Reserved_5_31                    at 0 range 5 .. 31;
   end record;

   --  SYSCFG ICN clock gating control register
   type SYSCFG_ICNCGCR_Register is record
      --  When set to 1, ICN automatic clock gating on clk_icn_ddr domain is
      --  off.
      ALWAYS_ON_CLK_ICN_DDR     : Boolean := False;
      --  When set to 1, ICN automatic clock gating on clk_icn_display domain
      --  is off.
      ALWAYS_ON_CLK_ICN_DISPLAY : Boolean := False;
      --  When set to 1, ICN automatic clock gating on clk_icn_hsl domain is
      --  off.
      ALWAYS_ON_CLK_ICN_HSL     : Boolean := False;
      --  When set to 1, ICN automatic clock gating on clk_icn_mcu domain is
      --  off.
      ALWAYS_ON_CLK_ICN_MCU     : Boolean := False;
      --  When set to 1, ICN automatic clock gating on clk_icn_sysatb domain is
      --  off.
      ALWAYS_ON_CLK_ICN_SYSATB  : Boolean := False;
      --  When set to 1, ICN automatic clock gating on clk_icn_sdmmc domain is
      --  off.
      ALWAYS_ON_CLK_ICN_SDMMC   : Boolean := False;
      --  unspecified
      Reserved_6_6              : HAL.Bit := 16#0#;
      --  When set to 1, ICN automatic clock gating on clk_icn_vid domain is
      --  off.
      ALWAYS_ON_CLK_ICN_VID     : Boolean := False;
      --  unspecified
      Reserved_8_31             : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ICNCGCR_Register use record
      ALWAYS_ON_CLK_ICN_DDR     at 0 range 0 .. 0;
      ALWAYS_ON_CLK_ICN_DISPLAY at 0 range 1 .. 1;
      ALWAYS_ON_CLK_ICN_HSL     at 0 range 2 .. 2;
      ALWAYS_ON_CLK_ICN_MCU     at 0 range 3 .. 3;
      ALWAYS_ON_CLK_ICN_SYSATB  at 0 range 4 .. 4;
      ALWAYS_ON_CLK_ICN_SDMMC   at 0 range 5 .. 5;
      Reserved_6_6              at 0 range 6 .. 6;
      ALWAYS_ON_CLK_ICN_VID     at 0 range 7 .. 7;
      Reserved_8_31             at 0 range 8 .. 31;
   end record;

   subtype SYSCFG_ICNGPUBWLCR_PMRSTDLY_Field is HAL.UInt2;
   subtype SYSCFG_ICNGPUBWLCR_MAXABW_Field is HAL.UInt8;

   --  SYSCFG ICN GPU bandwidth limiter control register
   type SYSCFG_ICNGPUBWLCR_Register is record
      --  Panic Mode Enable
      PMEN           : Boolean := True;
      --  Bandwidth limiter enable
      BWLEN          : Boolean := True;
      --  Panic Mode Restart Delay
      PMRSTDLY       : SYSCFG_ICNGPUBWLCR_PMRSTDLY_Field := 16#2#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Maximum allowed Bandwidth
      MAXABW         : SYSCFG_ICNGPUBWLCR_MAXABW_Field := 16#40#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ICNGPUBWLCR_Register use record
      PMEN           at 0 range 0 .. 0;
      BWLEN          at 0 range 1 .. 1;
      PMRSTDLY       at 0 range 2 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      MAXABW         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SYSCFG_ICNE2EBWRCR_CFG_MODEL_Field is HAL.UInt2;
   subtype SYSCFG_ICNE2EBWRCR_CFG_ALL_TGT_Field is HAL.UInt3;

   --  SYSCFG ICN end-to-end bandwidth regulation control register
   type SYSCFG_ICNE2EBWRCR_Register is record
      --  Activates the end-to-end bandwidth regulation.
      CFG_ENABLE     : Boolean := False;
      --  Defines the reactivity of the regulation feedback.
      CFG_MODEL      : SYSCFG_ICNE2EBWRCR_CFG_MODEL_Field := 16#1#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Amount of empty CAM slots in DDR-CTRL that the regulation targets
      CFG_ALL_TGT    : SYSCFG_ICNE2EBWRCR_CFG_ALL_TGT_Field := 16#5#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Triple the bandwidth allowed to the CPU1 by the regulation.
      CFG_CPU1_BW    : Boolean := False;
      --  Triple the bandwidth (BW) allowed to HPDMA1/2/3 by the regulation.
      CFG_HPDMA_BW   : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ICNE2EBWRCR_Register use record
      CFG_ENABLE     at 0 range 0 .. 0;
      CFG_MODEL      at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CFG_ALL_TGT    at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CFG_CPU1_BW    at 0 range 8 .. 8;
      CFG_HPDMA_BW   at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SYSCFG safe reset control register
   type SYSCFG_SAFERSTCR_Register is record
      --  Activates the safe reset connector.
      CFG_ENABLE    : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_SAFERSTCR_Register use record
      CFG_ENABLE    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SYSCFG_ICNPCIBWLCR_MAXABW_Field is HAL.UInt8;

   --  SYSCFG ICN PCI bandwidth limiter control register
   type SYSCFG_ICNPCIBWLCR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Bandwidth limiter enable
      BWLEN          : Boolean := True;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Maximum allowed Bandwidth
      MAXABW         : SYSCFG_ICNPCIBWLCR_MAXABW_Field := 16#20#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ICNPCIBWLCR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      BWLEN          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      MAXABW         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SYSCFG_ICNETHBWLCR_MAXABW_Field is HAL.UInt8;

   --  SYSCFG ICN ETH bandwidth limiter control register
   type SYSCFG_ICNETHBWLCR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Bandwidth limiter enable
      BWLEN          : Boolean := True;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Maximum allowed Bandwidth
      MAXABW         : SYSCFG_ICNETHBWLCR_MAXABW_Field := 16#10#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ICNETHBWLCR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      BWLEN          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      MAXABW         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SYSCFG_ICNUSB3BWLCR_MAXABW_Field is HAL.UInt8;

   --  SYSCFG ICN USB3 bandwidth limiter control register
   type SYSCFG_ICNUSB3BWLCR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Bandwidth limiter enable
      BWLEN          : Boolean := True;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Maximum allowed Bandwidth
      MAXABW         : SYSCFG_ICNUSB3BWLCR_MAXABW_Field := 16#40#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ICNUSB3BWLCR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      BWLEN          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      MAXABW         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SYSCFG_ICNCPU1BWLCR_MAXABW_Field is HAL.UInt8;

   --  SYSCFG ICN CPU1 bandwidth limiter control register
   type SYSCFG_ICNCPU1BWLCR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Bandwidth limiter enable
      BWLEN          : Boolean := True;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Maximum allowed Bandwidth
      MAXABW         : SYSCFG_ICNCPU1BWLCR_MAXABW_Field := 16#20#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ICNCPU1BWLCR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      BWLEN          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      MAXABW         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SYSCFG_ICNLTDCBWLCR_MAXABW_Field is HAL.UInt8;

   --  SYSCFG ICN LTDC bandwidth limiter control register
   type SYSCFG_ICNLTDCBWLCR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Bandwidth limiter enable
      BWLEN          : Boolean := True;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Maximum allowed Bandwidth
      MAXABW         : SYSCFG_ICNLTDCBWLCR_MAXABW_Field := 16#80#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ICNLTDCBWLCR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      BWLEN          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      MAXABW         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SYSCFG_ICNDCMIPPBWLCR_MAXABW_Field is HAL.UInt8;

   --  SYSCFG ICN DCMIPP bandwidth limiter control register
   type SYSCFG_ICNDCMIPPBWLCR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Bandwidth limiter enable
      BWLEN          : Boolean := True;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Maximum allowed Bandwidth
      MAXABW         : SYSCFG_ICNDCMIPPBWLCR_MAXABW_Field := 16#50#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ICNDCMIPPBWLCR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      BWLEN          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      MAXABW         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SYSCFG_ICNVDEBWLCR_MAXABW_Field is HAL.UInt8;

   --  SYSCFG ICN Video Decoder Encoder bandwidth limiter control register
   type SYSCFG_ICNVDEBWLCR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Bandwidth limiter enable
      BWLEN          : Boolean := True;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Maximum allowed Bandwidth
      MAXABW         : SYSCFG_ICNVDEBWLCR_MAXABW_Field := 16#35#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ICNVDEBWLCR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      BWLEN          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      MAXABW         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SYSCFG_USB2PHY1CR_USB2PHY1SEL_Field is HAL.UInt3;

   --  SYSCFG USB2PHY1 control register
   type SYSCFG_USB2PHY1CR_Register is record
      --  Retention mode enable (active low)
      RETENABLEN1   : Boolean := True;
      --  Auto-resume mode enable
      AUTORSMENB1   : Boolean := False;
      --  Controls power down of analog blocks during Suspend and Sleep.
      USB2PHY1CMN   : Boolean := True;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  PHY reference clock speed setting
      USB2PHY1SEL   : SYSCFG_USB2PHY1CR_USB2PHY1SEL_Field := 16#1#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_USB2PHY1CR_Register use record
      RETENABLEN1   at 0 range 0 .. 0;
      AUTORSMENB1   at 0 range 1 .. 1;
      USB2PHY1CMN   at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      USB2PHY1SEL   at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  SYSCFG USB2PHY1 battery charging control register
   type SYSCFG_USB2PHY1BCCR_Register is record
      --  CDP behavior for Host port enable
      H_CDPEN       : Boolean := False;
      --  Voltage detector on DP for CDP port enable
      H_CDPDETEN    : Boolean := False;
      --  Voltage source on DM for CDP port enable
      H_VDMSRCEN    : Boolean := False;
      --  Forces USB2PHY1 in non-driving suspend mode.
      H_FORCEBCMODE : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_USB2PHY1BCCR_Register use record
      H_CDPEN       at 0 range 0 .. 0;
      H_CDPDETEN    at 0 range 1 .. 1;
      H_VDMSRCEN    at 0 range 2 .. 2;
      H_FORCEBCMODE at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  SYSCFG USB2PHY1 battery charging status register
   type SYSCFG_USB2PHY1BCSR_Register is record
      --  Read-only. Comparison of voltage on DP with VDAT_REF threshold as
      --  defined in BC v1.
      CHGDET        : Boolean;
      --  Read-only. Voltage level on DP (also output of the comparison with
      --  VLGC threshold, as defined in BC v1.
      FSVPLUS       : Boolean;
      --  Read-only. Voltage level on DM (also output of the comparison with
      --  VLGC threshold, as defined in BC v1.
      FSVMINUS      : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_USB2PHY1BCSR_Register use record
      CHGDET        at 0 range 0 .. 0;
      FSVPLUS       at 0 range 1 .. 1;
      FSVMINUS      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype SYSCFG_USB2PHY1TRIM1CR_USB2PHY1PLLITUNE_Field is HAL.UInt2;
   subtype SYSCFG_USB2PHY1TRIM1CR_USB2PHY1PLLPTUNE_Field is HAL.UInt4;
   subtype SYSCFG_USB2PHY1TRIM1CR_USB2PHY1COMPDISTUNE_Field is HAL.UInt3;
   subtype SYSCFG_USB2PHY1TRIM1CR_USB2PHY1SQRXTUNE_Field is HAL.UInt3;
   subtype SYSCFG_USB2PHY1TRIM1CR_USB2PHY1VDATREFTUNE_Field is HAL.UInt2;
   subtype SYSCFG_USB2PHY1TRIM1CR_USB2PHY1OTGTUNE_Field is HAL.UInt3;
   subtype SYSCFG_USB2PHY1TRIM1CR_USB2PHY1TXHSXVTUNE_Field is HAL.UInt2;
   subtype SYSCFG_USB2PHY1TRIM1CR_USB2PHY1TXFSLSTUNE_Field is HAL.UInt4;
   subtype SYSCFG_USB2PHY1TRIM1CR_USB2PHY1TXVREFTUNE_Field is HAL.UInt4;
   subtype SYSCFG_USB2PHY1TRIM1CR_USB2PHY1TXRISETUNE_Field is HAL.UInt2;
   subtype SYSCFG_USB2PHY1TRIM1CR_USB2PHY1TXRESTUNE_Field is HAL.UInt2;

   --  SYSCFG USB2PHY1 trimming 1 control register
   type SYSCFG_USB2PHY1TRIM1CR_Register is record
      --  PLL integral path tune
      USB2PHY1PLLITUNE    : SYSCFG_USB2PHY1TRIM1CR_USB2PHY1PLLITUNE_Field :=
                             16#0#;
      --  PLL proportional path tune
      USB2PHY1PLLPTUNE    : SYSCFG_USB2PHY1TRIM1CR_USB2PHY1PLLPTUNE_Field :=
                             16#C#;
      --  Disconnect threshold adjustment
      USB2PHY1COMPDISTUNE : SYSCFG_USB2PHY1TRIM1CR_USB2PHY1COMPDISTUNE_Field :=
                             16#3#;
      --  Squelch threshold adjustment
      USB2PHY1SQRXTUNE    : SYSCFG_USB2PHY1TRIM1CR_USB2PHY1SQRXTUNE_Field :=
                             16#3#;
      --  Data detect voltage adjustment
      USB2PHY1VDATREFTUNE : SYSCFG_USB2PHY1TRIM1CR_USB2PHY1VDATREFTUNE_Field :=
                             16#1#;
      --  Vless thansub>BUSless than/sub> valid threshold adjustment
      USB2PHY1OTGTUNE     : SYSCFG_USB2PHY1TRIM1CR_USB2PHY1OTGTUNE_Field :=
                             16#3#;
      --  Transmitter high-speed crossover adjustment
      USB2PHY1TXHSXVTUNE  : SYSCFG_USB2PHY1TRIM1CR_USB2PHY1TXHSXVTUNE_Field :=
                             16#3#;
      --  Full-speed (FS)/low-speed (LS) source impedance adjustment
      USB2PHY1TXFSLSTUNE  : SYSCFG_USB2PHY1TRIM1CR_USB2PHY1TXFSLSTUNE_Field :=
                             16#3#;
      --  HS DC voltage level adjustment
      USB2PHY1TXVREFTUNE  : SYSCFG_USB2PHY1TRIM1CR_USB2PHY1TXVREFTUNE_Field :=
                             16#3#;
      --  High-speed transmitter rise/fall time adjustment
      USB2PHY1TXRISETUNE  : SYSCFG_USB2PHY1TRIM1CR_USB2PHY1TXRISETUNE_Field :=
                             16#1#;
      --  USB source impedance adjustment
      USB2PHY1TXRESTUNE   : SYSCFG_USB2PHY1TRIM1CR_USB2PHY1TXRESTUNE_Field :=
                             16#1#;
      --  unspecified
      Reserved_31_31      : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_USB2PHY1TRIM1CR_Register use record
      USB2PHY1PLLITUNE    at 0 range 0 .. 1;
      USB2PHY1PLLPTUNE    at 0 range 2 .. 5;
      USB2PHY1COMPDISTUNE at 0 range 6 .. 8;
      USB2PHY1SQRXTUNE    at 0 range 9 .. 11;
      USB2PHY1VDATREFTUNE at 0 range 12 .. 13;
      USB2PHY1OTGTUNE     at 0 range 14 .. 16;
      USB2PHY1TXHSXVTUNE  at 0 range 17 .. 18;
      USB2PHY1TXFSLSTUNE  at 0 range 19 .. 22;
      USB2PHY1TXVREFTUNE  at 0 range 23 .. 26;
      USB2PHY1TXRISETUNE  at 0 range 27 .. 28;
      USB2PHY1TXRESTUNE   at 0 range 29 .. 30;
      Reserved_31_31      at 0 range 31 .. 31;
   end record;

   subtype SYSCFG_USB2PHY1TRIM2CR_USB2PHY1TXPREEMPAMPTUNE_Field is HAL.UInt2;

   --  SYSCFG USB2PHY1 trimming 2 control register
   type SYSCFG_USB2PHY1TRIM2CR_Register is record
      --  HS transmitter preemphasis current control
      USB2PHY1TXPREEMPAMPTUNE   : SYSCFG_USB2PHY1TRIM2CR_USB2PHY1TXPREEMPAMPTUNE_Field :=
                                   16#0#;
      --  HS transmitter preemphasis duration control
      USB2PHY1TXPREEMPPULSETUNE : Boolean := False;
      --  unspecified
      Reserved_3_31             : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_USB2PHY1TRIM2CR_Register use record
      USB2PHY1TXPREEMPAMPTUNE   at 0 range 0 .. 1;
      USB2PHY1TXPREEMPPULSETUNE at 0 range 2 .. 2;
      Reserved_3_31             at 0 range 3 .. 31;
   end record;

   --  SYSCFG USBH control register
   type SYSCFG_USBHCR_Register is record
      --  Polarity of USBH_OVRCUR alternate function
      USBH_OVRCUR_POLARITY : Boolean := False;
      --  Polarity of USBH_VBUSEN alternate function
      USBH_VBUSEN_POLARITY : Boolean := False;
      --  unspecified
      Reserved_2_31        : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_USBHCR_Register use record
      USBH_OVRCUR_POLARITY at 0 range 0 .. 0;
      USBH_VBUSEN_POLARITY at 0 range 1 .. 1;
      Reserved_2_31        at 0 range 2 .. 31;
   end record;

   subtype SYSCFG_USB2PHY2CR_FILTER_BYPASS_Field is HAL.UInt4;
   subtype SYSCFG_USB2PHY2CR_USB2PHY2SEL_Field is HAL.UInt3;

   --  SYSCFG USB2PHY2 control register
   type SYSCFG_USB2PHY2CR_Register is record
      --  Retention mode enable (active low)
      RETENABLEN2    : Boolean := True;
      --  Auto-resume mode enable
      AUTORSMENB2    : Boolean := False;
      --  Control of power down of analog blocks during Suspend and Sleep
      USB2PHY2CMN    : Boolean := True;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Control of VBUS valid input of USB3DR controller when in Host mode
      VBUSVALID      : Boolean := False;
      --  VBUS valid comparator used when USB3DR controller is in device mode
      VBUSVLDEXTSEL  : Boolean := False;
      --  Voltage comparison result when an external voltage comparator is used
      VBUSVLDEXT     : Boolean := False;
      --  Internal debounce logic enable (default)
      FILTER_BYPASS  : SYSCFG_USB2PHY2CR_FILTER_BYPASS_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  PHY reference clock speed setting
      USB2PHY2SEL    : SYSCFG_USB2PHY2CR_USB2PHY2SEL_Field := 16#1#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Disable control bit for VBUS valid comparator in USB2PHY2
      OTGDISABLE0    : Boolean := True;
      --  Control bit for VBUS valid comparator in USB2PHY2
      DRVVBUS0       : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_USB2PHY2CR_Register use record
      RETENABLEN2    at 0 range 0 .. 0;
      AUTORSMENB2    at 0 range 1 .. 1;
      USB2PHY2CMN    at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      VBUSVALID      at 0 range 4 .. 4;
      VBUSVLDEXTSEL  at 0 range 5 .. 5;
      VBUSVLDEXT     at 0 range 6 .. 6;
      FILTER_BYPASS  at 0 range 7 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      USB2PHY2SEL    at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      OTGDISABLE0    at 0 range 16 .. 16;
      DRVVBUS0       at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype SYSCFG_USB2PHY2TRIM1CR_USB2PHY2PLLITUNE_Field is HAL.UInt2;
   subtype SYSCFG_USB2PHY2TRIM1CR_USB2PHY2PLLPTUNE_Field is HAL.UInt4;
   subtype SYSCFG_USB2PHY2TRIM1CR_USB2PHY2COMPDISTUNE_Field is HAL.UInt3;
   subtype SYSCFG_USB2PHY2TRIM1CR_USB2PHY2SQRXTUNE_Field is HAL.UInt3;
   subtype SYSCFG_USB2PHY2TRIM1CR_USB2PHY2VDATREFTUNE_Field is HAL.UInt2;
   subtype SYSCFG_USB2PHY2TRIM1CR_USB2PHY2OTGTUNE_Field is HAL.UInt3;
   subtype SYSCFG_USB2PHY2TRIM1CR_USB2PHY2TXHSXVTUNE_Field is HAL.UInt2;
   subtype SYSCFG_USB2PHY2TRIM1CR_USB2PHY2TXFSLSTUNE_Field is HAL.UInt4;
   subtype SYSCFG_USB2PHY2TRIM1CR_USB2PHY2TXVREFTUNE_Field is HAL.UInt4;
   subtype SYSCFG_USB2PHY2TRIM1CR_USB2PHY2TXRISETUNE_Field is HAL.UInt2;
   subtype SYSCFG_USB2PHY2TRIM1CR_USB2PHY2TXRESTUNE_Field is HAL.UInt2;

   --  SYSCFG USB2PHY2 trimming 1 control register
   type SYSCFG_USB2PHY2TRIM1CR_Register is record
      --  PLL integral path tune
      USB2PHY2PLLITUNE    : SYSCFG_USB2PHY2TRIM1CR_USB2PHY2PLLITUNE_Field :=
                             16#0#;
      --  PLL proportional path tune
      USB2PHY2PLLPTUNE    : SYSCFG_USB2PHY2TRIM1CR_USB2PHY2PLLPTUNE_Field :=
                             16#C#;
      --  Disconnect threshold adjustment
      USB2PHY2COMPDISTUNE : SYSCFG_USB2PHY2TRIM1CR_USB2PHY2COMPDISTUNE_Field :=
                             16#3#;
      --  Squelch threshold adjustment
      USB2PHY2SQRXTUNE    : SYSCFG_USB2PHY2TRIM1CR_USB2PHY2SQRXTUNE_Field :=
                             16#3#;
      --  Data detect voltage adjustment
      USB2PHY2VDATREFTUNE : SYSCFG_USB2PHY2TRIM1CR_USB2PHY2VDATREFTUNE_Field :=
                             16#1#;
      --  VBUS valid threshold adjustment
      USB2PHY2OTGTUNE     : SYSCFG_USB2PHY2TRIM1CR_USB2PHY2OTGTUNE_Field :=
                             16#3#;
      --  Transmitter HS crossover adjustment
      USB2PHY2TXHSXVTUNE  : SYSCFG_USB2PHY2TRIM1CR_USB2PHY2TXHSXVTUNE_Field :=
                             16#3#;
      --  Full-speed (FS)/low-speed (LS) source impedance adjustment
      USB2PHY2TXFSLSTUNE  : SYSCFG_USB2PHY2TRIM1CR_USB2PHY2TXFSLSTUNE_Field :=
                             16#3#;
      --  HS DC voltage level adjustment
      USB2PHY2TXVREFTUNE  : SYSCFG_USB2PHY2TRIM1CR_USB2PHY2TXVREFTUNE_Field :=
                             16#3#;
      --  HS transmitter rise/fall time adjustment
      USB2PHY2TXRISETUNE  : SYSCFG_USB2PHY2TRIM1CR_USB2PHY2TXRISETUNE_Field :=
                             16#1#;
      --  USB source impedance adjustment
      USB2PHY2TXRESTUNE   : SYSCFG_USB2PHY2TRIM1CR_USB2PHY2TXRESTUNE_Field :=
                             16#1#;
      --  unspecified
      Reserved_31_31      : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_USB2PHY2TRIM1CR_Register use record
      USB2PHY2PLLITUNE    at 0 range 0 .. 1;
      USB2PHY2PLLPTUNE    at 0 range 2 .. 5;
      USB2PHY2COMPDISTUNE at 0 range 6 .. 8;
      USB2PHY2SQRXTUNE    at 0 range 9 .. 11;
      USB2PHY2VDATREFTUNE at 0 range 12 .. 13;
      USB2PHY2OTGTUNE     at 0 range 14 .. 16;
      USB2PHY2TXHSXVTUNE  at 0 range 17 .. 18;
      USB2PHY2TXFSLSTUNE  at 0 range 19 .. 22;
      USB2PHY2TXVREFTUNE  at 0 range 23 .. 26;
      USB2PHY2TXRISETUNE  at 0 range 27 .. 28;
      USB2PHY2TXRESTUNE   at 0 range 29 .. 30;
      Reserved_31_31      at 0 range 31 .. 31;
   end record;

   subtype SYSCFG_USB2PHY2TRIM2CR_USB2PHY2TXPREEMPAMPTUNE_Field is HAL.UInt2;

   --  SYSCFG USB2PHY2 trimming 2 control register
   type SYSCFG_USB2PHY2TRIM2CR_Register is record
      --  HS transmitter preemphasis current control
      USB2PHY2TXPREEMPAMPTUNE   : SYSCFG_USB2PHY2TRIM2CR_USB2PHY2TXPREEMPAMPTUNE_Field :=
                                   16#0#;
      --  HS transmitter preemphasis duration control
      USB2PHY2TXPREEMPPULSETUNE : Boolean := False;
      --  unspecified
      Reserved_3_31             : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_USB2PHY2TRIM2CR_Register use record
      USB2PHY2TXPREEMPAMPTUNE   at 0 range 0 .. 1;
      USB2PHY2TXPREEMPPULSETUNE at 0 range 2 .. 2;
      Reserved_3_31             at 0 range 3 .. 31;
   end record;

   subtype SYSCFG_OCTOSPIAMCR_OCTOSPI_ADDRESS_MAPPING_Field is HAL.UInt3;

   --  SYSCFG OCTOSPI address mapping control register
   type SYSCFG_OCTOSPIAMCR_Register is record
      --  OCTOSPI1 and OCTOSPI2 address mapping
      OCTOSPI_ADDRESS_MAPPING : SYSCFG_OCTOSPIAMCR_OCTOSPI_ADDRESS_MAPPING_Field :=
                                 16#0#;
      --  unspecified
      Reserved_3_31           : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_OCTOSPIAMCR_Register use record
      OCTOSPI_ADDRESS_MAPPING at 0 range 0 .. 2;
      Reserved_3_31           at 0 range 3 .. 31;
   end record;

   subtype SYSCFG_ETH1CR_ETH1_SEL_Field is HAL.UInt3;

   --  SYSCFG Ethernet1 control register
   type SYSCFG_ETH1CR_Register is record
      --  Ethernet reference/RX clock selection
      ETH1_REF_CLK_SEL : Boolean := False;
      --  RGMII 125 MHz clock selection
      ETH1_CLK_SEL     : Boolean := False;
      --  PTP (IEEE1588) clock selection
      ETH1_PTP_CLK_SEL : Boolean := False;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  Ethernet 1 PHY interface selection
      ETH1_SEL         : SYSCFG_ETH1CR_ETH1_SEL_Field := 16#0#;
      --  unspecified
      Reserved_7_31    : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ETH1CR_Register use record
      ETH1_REF_CLK_SEL at 0 range 0 .. 0;
      ETH1_CLK_SEL     at 0 range 1 .. 1;
      ETH1_PTP_CLK_SEL at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      ETH1_SEL         at 0 range 4 .. 6;
      Reserved_7_31    at 0 range 7 .. 31;
   end record;

   --  SYSCFG Ethernet1 status register
   type SYSCFG_ETH1SR_Register is record
      --  Read-only. Asserted when the MAC has entered Tx LPI mode
      ETH1_TX_CLK_GATING_CTRL : Boolean;
      --  Read-only. Asserted when the power-down sequence start has been
      --  acknowledged
      ETH1_PWR_DOWN_ACK       : Boolean;
      --  unspecified
      Reserved_2_31           : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ETH1SR_Register use record
      ETH1_TX_CLK_GATING_CTRL at 0 range 0 .. 0;
      ETH1_PWR_DOWN_ACK       at 0 range 1 .. 1;
      Reserved_2_31           at 0 range 2 .. 31;
   end record;

   subtype SYSCFG_ETH2CR_ETH2_SEL_Field is HAL.UInt3;

   --  SYSCFG Ethernet2 configuration register
   type SYSCFG_ETH2CR_Register is record
      --  Reference/RX clock selection
      ETH2_REF_CLK_SEL : Boolean := False;
      --  RGMII 125MHz clock selection
      ETH2_CLK_SEL     : Boolean := False;
      --  PTP (IEEE1588) clock selection
      ETH2_PTP_CLK_SEL : Boolean := False;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  Ethernet 2 PHY interface selection
      ETH2_SEL         : SYSCFG_ETH2CR_ETH2_SEL_Field := 16#0#;
      --  unspecified
      Reserved_7_31    : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ETH2CR_Register use record
      ETH2_REF_CLK_SEL at 0 range 0 .. 0;
      ETH2_CLK_SEL     at 0 range 1 .. 1;
      ETH2_PTP_CLK_SEL at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      ETH2_SEL         at 0 range 4 .. 6;
      Reserved_7_31    at 0 range 7 .. 31;
   end record;

   --  SYSCFG Ethernet2 status register
   type SYSCFG_ETH2SR_Register is record
      --  Read-only. Asserted when the MAC has entered Tx LPI mode
      ETH2_TX_CLK_GATING_CTRL : Boolean;
      --  Read-only. Asserted when the power-down sequence start has been
      --  acknowledged
      ETH2_PWR_DOWN_ACK       : Boolean;
      --  unspecified
      Reserved_2_31           : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ETH2SR_Register use record
      ETH2_TX_CLK_GATING_CTRL at 0 range 0 .. 0;
      ETH2_PWR_DOWN_ACK       at 0 range 1 .. 1;
      Reserved_2_31           at 0 range 2 .. 31;
   end record;

   --  SYSCFG Ethernet switch configuration register
   type SYSCFG_ETHSWCR_Register is record
      --  Ethernet switch bypass
      ETH1_DIRECT      : Boolean := True;
      --  PHY interface type selection for external ports
      ETHSW_CFG_IF_SEL : Boolean := False;
      --  Clock source selection for 125 MHz
      ETHSW_CLK_SEL    : Boolean := False;
      --  Clock source selection for RMII 50 MHz
      ETHSW_REF_SEL    : Boolean := False;
      --  unspecified
      Reserved_4_31    : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_ETHSWCR_Register use record
      ETH1_DIRECT      at 0 range 0 .. 0;
      ETHSW_CFG_IF_SEL at 0 range 1 .. 1;
      ETHSW_CLK_SEL    at 0 range 2 .. 2;
      ETHSW_REF_SEL    at 0 range 3 .. 3;
      Reserved_4_31    at 0 range 4 .. 31;
   end record;

   subtype SYSCFG_VDDIO3CCCR_RANSRC_Field is HAL.UInt4;
   subtype SYSCFG_VDDIO3CCCR_RAPSRC_Field is HAL.UInt4;

   --  SYSCFG VDDIO3 compensation cell control register
   type SYSCFG_VDDIO3CCCR_Register is record
      --  NMOS compensation code of the I/Os supplied by Vless
      --  thansub>DDIO3less than/sub>
      RANSRC         : SYSCFG_VDDIO3CCCR_RANSRC_Field := 16#8#;
      --  PMOS compensation code of the I/Os supplied by Vless
      --  thansub>DDIO3less than/sub>
      RAPSRC         : SYSCFG_VDDIO3CCCR_RAPSRC_Field := 16#7#;
      --  I/Os supplied by Vless thansub>DDIO3less than/sub> compensation cell
      --  enable
      EN             : Boolean := False;
      --  I/Os supplied by Vless thansub>DDIO3less than/sub> code selection
      CS             : Boolean := False;
      --  I/Os supplied by Vless thansub>DDIO3less than/sub> compensation cell
      --  low power mode disable
      LPMDIS         : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIO3CCCR_Register use record
      RANSRC         at 0 range 0 .. 3;
      RAPSRC         at 0 range 4 .. 7;
      EN             at 0 range 8 .. 8;
      CS             at 0 range 9 .. 9;
      LPMDIS         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype SYSCFG_VDDIO3CCSR_ANSRC_Field is HAL.UInt4;
   subtype SYSCFG_VDDIO3CCSR_APSRC_Field is HAL.UInt4;

   --  SYSCFG VDDIO3 compensation cell status register
   type SYSCFG_VDDIO3CCSR_Register is record
      --  Read-only. NMOS compensation value of the I/Os supplied by Vless
      --  thansub>DDIO3less than/sub>
      ANSRC         : SYSCFG_VDDIO3CCSR_ANSRC_Field;
      --  Read-only. PMOS compensation value of the I/Os supplied by Vless
      --  thansub>DDIO3less than/sub>
      APSRC         : SYSCFG_VDDIO3CCSR_APSRC_Field;
      --  Read-only. Vless thansub>DDIO3 less than/sub>I/O compensation cell
      --  ready flag
      READY         : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIO3CCSR_Register use record
      ANSRC         at 0 range 0 .. 3;
      APSRC         at 0 range 4 .. 7;
      READY         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype SYSCFG_VDDIO4CCCR_RANSRC_Field is HAL.UInt4;
   subtype SYSCFG_VDDIO4CCCR_RAPSRC_Field is HAL.UInt4;

   --  SYSCFG VDDIO4 compensation cell control register
   type SYSCFG_VDDIO4CCCR_Register is record
      --  NMOS compensation code of the I/Os supplied by Vless
      --  thansub>DDIO4less than/sub>
      RANSRC         : SYSCFG_VDDIO4CCCR_RANSRC_Field := 16#8#;
      --  PMOS compensation code of the I/Os supplied by Vless
      --  thansub>DDIO4less than/sub>
      RAPSRC         : SYSCFG_VDDIO4CCCR_RAPSRC_Field := 16#7#;
      --  Vless thansub>DDIO4less than/sub> I/O compensation cell enable
      EN             : Boolean := False;
      --  Vless thansub>DDIO4less than/sub> I/O code selection
      CS             : Boolean := False;
      --  I/Os supplied by Vless thansub>DDIO4less than/sub> compensation cell
      --  low power mode disable
      LPMDIS         : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIO4CCCR_Register use record
      RANSRC         at 0 range 0 .. 3;
      RAPSRC         at 0 range 4 .. 7;
      EN             at 0 range 8 .. 8;
      CS             at 0 range 9 .. 9;
      LPMDIS         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype SYSCFG_VDDIO4CCSR_ANSRC_Field is HAL.UInt4;
   subtype SYSCFG_VDDIO4CCSR_APSRC_Field is HAL.UInt4;

   --  SYSCFG VDDIO4 compensation cell status register
   type SYSCFG_VDDIO4CCSR_Register is record
      --  Read-only. NMOS compensation value of the I/Os supplied by Vless
      --  thansub>DDIO4less than/sub>
      ANSRC         : SYSCFG_VDDIO4CCSR_ANSRC_Field;
      --  Read-only. PMOS compensation value of the I/Os supplied by Vless
      --  thansub>DDIO4less than/sub>
      APSRC         : SYSCFG_VDDIO4CCSR_APSRC_Field;
      --  Read-only. Vless thansub>DDIO4 less than/sub>I/O compensation cell
      --  ready flag
      READY         : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIO4CCSR_Register use record
      ANSRC         at 0 range 0 .. 3;
      APSRC         at 0 range 4 .. 7;
      READY         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype SYSCFG_VDDCCCR_RANSRC_Field is HAL.UInt4;
   subtype SYSCFG_VDDCCCR_RAPSRC_Field is HAL.UInt4;

   --  SYSCFG VDD compensation cell control register
   type SYSCFG_VDDCCCR_Register is record
      --  NMOS compensation code of the I/Os supplied by Vless thansub>DDless
      --  than/sub>
      RANSRC         : SYSCFG_VDDCCCR_RANSRC_Field := 16#8#;
      --  PMOS compensation code of the I/Os supplied by Vless thansub>DDless
      --  than/sub>
      RAPSRC         : SYSCFG_VDDCCCR_RAPSRC_Field := 16#7#;
      --  Vless thansub>DDless than/sub> I/O compensation cell enable
      EN             : Boolean := False;
      --  Vless thansub>DDless than/sub> I/O code selection
      CS             : Boolean := False;
      --  I/Os supplied by Vless thansub>DDless than/sub> compensation cell low
      --  power mode disable
      LPMDIS         : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDCCCR_Register use record
      RANSRC         at 0 range 0 .. 3;
      RAPSRC         at 0 range 4 .. 7;
      EN             at 0 range 8 .. 8;
      CS             at 0 range 9 .. 9;
      LPMDIS         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype SYSCFG_VDDCCSR_ANSRC_Field is HAL.UInt4;
   subtype SYSCFG_VDDCCSR_APSRC_Field is HAL.UInt4;

   --  SYSCFG VDD compensation cell status register
   type SYSCFG_VDDCCSR_Register is record
      --  Read-only. NMOS compensation value of the I/Os supplied by Vless
      --  thansub>DDless than/sub>
      ANSRC         : SYSCFG_VDDCCSR_ANSRC_Field;
      --  Read-only. PMOS compensation value of the I/Os supplied by Vless
      --  thansub>DDless than/sub>
      APSRC         : SYSCFG_VDDCCSR_APSRC_Field;
      --  Read-only. Vless thansub>DD less than/sub>I/O compensation cell ready
      --  flag
      READY         : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDCCSR_Register use record
      ANSRC         at 0 range 0 .. 3;
      APSRC         at 0 range 4 .. 7;
      READY         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype SYSCFG_VDDIO2CCCR_RANSRC_Field is HAL.UInt4;
   subtype SYSCFG_VDDIO2CCCR_RAPSRC_Field is HAL.UInt4;

   --  SYSCFG VDDIO2 compensation cell control register
   type SYSCFG_VDDIO2CCCR_Register is record
      --  NMOS compensation code of the I/Os supplied by Vless
      --  thansub>DDIO2less than/sub>
      RANSRC         : SYSCFG_VDDIO2CCCR_RANSRC_Field := 16#8#;
      --  PMOS compensation code of the I/Os supplied by Vless
      --  thansub>DDIO2less than/sub>
      RAPSRC         : SYSCFG_VDDIO2CCCR_RAPSRC_Field := 16#7#;
      --  Vless thansub>DDIO2less than/sub> I/O compensation cell enable
      EN             : Boolean := False;
      --  Vless thansub>DDIO2less than/sub> I/O code selection
      CS             : Boolean := False;
      --  I/Os supplied by Vless thansub>DDIO2less than/sub> compensation cell
      --  low power mode disable
      LPMDIS         : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIO2CCCR_Register use record
      RANSRC         at 0 range 0 .. 3;
      RAPSRC         at 0 range 4 .. 7;
      EN             at 0 range 8 .. 8;
      CS             at 0 range 9 .. 9;
      LPMDIS         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype SYSCFG_VDDIO2CCSR_ANSRC_Field is HAL.UInt4;
   subtype SYSCFG_VDDIO2CCSR_APSRC_Field is HAL.UInt4;

   --  SYSCFG VDDIO2 compensation cell status register
   type SYSCFG_VDDIO2CCSR_Register is record
      --  Read-only. NMOS compensation value of the I/Os supplied by Vless
      --  thansub>DDIO2less than/sub>
      ANSRC         : SYSCFG_VDDIO2CCSR_ANSRC_Field;
      --  Read-only. PMOS compensation value of the I/Os supplied by Vless
      --  thansub>DDIO2less than/sub>
      APSRC         : SYSCFG_VDDIO2CCSR_APSRC_Field;
      --  Read-only. Vless thansub>DDIO2 less than/sub>I/O compensation cell
      --  ready flag
      READY         : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIO2CCSR_Register use record
      ANSRC         at 0 range 0 .. 3;
      APSRC         at 0 range 4 .. 7;
      READY         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype SYSCFG_VDDIO1CCCR_RANSRC_Field is HAL.UInt4;
   subtype SYSCFG_VDDIO1CCCR_RAPSRC_Field is HAL.UInt4;

   --  SYSCFG VDDIO1 compensation cell control register
   type SYSCFG_VDDIO1CCCR_Register is record
      --  NMOS compensation code of the I/Os supplied by Vless
      --  thansub>DDIO1less than/sub>
      RANSRC         : SYSCFG_VDDIO1CCCR_RANSRC_Field := 16#8#;
      --  PMOS compensation code of the I/Os supplied by Vless
      --  thansub>DDIO1less than/sub>
      RAPSRC         : SYSCFG_VDDIO1CCCR_RAPSRC_Field := 16#7#;
      --  Vless thansub>DDIO1less than/sub> I/O compensation cell enable
      EN             : Boolean := False;
      --  Vless thansub>DDIO1less than/sub> I/O code selection
      CS             : Boolean := False;
      --  I/Os supplied by Vless thansub>DDIO1less than/sub> compensation cell
      --  low power mode disable
      LPMDIS         : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIO1CCCR_Register use record
      RANSRC         at 0 range 0 .. 3;
      RAPSRC         at 0 range 4 .. 7;
      EN             at 0 range 8 .. 8;
      CS             at 0 range 9 .. 9;
      LPMDIS         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype SYSCFG_VDDIO1CCSR_ANSRC_Field is HAL.UInt4;
   subtype SYSCFG_VDDIO1CCSR_APSRC_Field is HAL.UInt4;

   --  SYSCFG VDDIO1 compensation cell status register
   type SYSCFG_VDDIO1CCSR_Register is record
      --  Read-only. NMOS compensation value of the I/Os supplied by Vless
      --  thansub>DDIO1less than/sub>
      ANSRC         : SYSCFG_VDDIO1CCSR_ANSRC_Field;
      --  Read-only. PMOS compensation value of the I/Os supplied by Vless
      --  thansub>DDIO1less than/sub>
      APSRC         : SYSCFG_VDDIO1CCSR_APSRC_Field;
      --  Read-only. Vless thansub>DDIO1 less than/sub>I/O compensation cell
      --  ready flag
      READY         : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VDDIO1CCSR_Register use record
      ANSRC         at 0 range 0 .. 3;
      APSRC         at 0 range 4 .. 7;
      READY         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  SYSCFG control timer break register
   type SYSCFG_CBR_Register is record
      --  Read-Write-once. Cortex-M33 LOCKUP (HardFault) output enable
      CLL           : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Read-Write-once. PVD lock enable
      PVDL          : Boolean := False;
      --  Read-Write-once. BKPSRAM double ECC error lock
      BKRAML        : Boolean := False;
      --  Read-Write-once. RETRAM double ECC error lock
      RETRAML       : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CBR_Register use record
      CLL           at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      PVDL          at 0 range 2 .. 2;
      BKRAML        at 0 range 3 .. 3;
      RETRAML       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype SYSCFG_USB3DRCR_USB3DR_DEBUG_BUS_SEL_Field is HAL.UInt3;

   --  SYSCFG USB3DR control register
   type SYSCFG_USB3DRCR_Register is record
      --  This port defines the bit[3] of capability parameters (HCCPARAMS).
      USB3DR_HOST_PORT_POWER_CONTROL_PRESENT : Boolean := False;
      --  Polarity of USB3DR_OVRCUR alternate function
      USB3DR_OVRCUR_POLARITY                 : Boolean := False;
      --  Polarity of USB3DR_VBUSEN alternate function
      USB3DR_VBUSEN_POLARITY                 : Boolean := False;
      --  None
      USB3DR_USB2ONLYH                       : Boolean := False;
      --  None
      USB3DR_USB2ONLYD                       : Boolean := False;
      --  unspecified
      Reserved_5_7                           : HAL.UInt3 := 16#0#;
      --  Selection of USB3DR/USBH debug signals
      USB3DR_DEBUG_BUS_SEL                   : SYSCFG_USB3DRCR_USB3DR_DEBUG_BUS_SEL_Field :=
                                                16#0#;
      --  Selection of USB3DR or PCIE debug signals
      USB3DR_NOTPCIE_DEBUG_BUS               : Boolean := False;
      --  unspecified
      Reserved_12_31                         : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_USB3DRCR_Register use record
      USB3DR_HOST_PORT_POWER_CONTROL_PRESENT at 0 range 0 .. 0;
      USB3DR_OVRCUR_POLARITY                 at 0 range 1 .. 1;
      USB3DR_VBUSEN_POLARITY                 at 0 range 2 .. 2;
      USB3DR_USB2ONLYH                       at 0 range 3 .. 3;
      USB3DR_USB2ONLYD                       at 0 range 4 .. 4;
      Reserved_5_7                           at 0 range 5 .. 7;
      USB3DR_DEBUG_BUS_SEL                   at 0 range 8 .. 10;
      USB3DR_NOTPCIE_DEBUG_BUS               at 0 range 11 .. 11;
      Reserved_12_31                         at 0 range 12 .. 31;
   end record;

   subtype SYSCFG_USB3DRSR_USB3DR_CLK_GATE_CTRL_Field is HAL.UInt3;

   --  SYSCFG USB3DR status register
   type SYSCFG_USB3DRSR_Register is record
      --  Read-only. USB3DR debug register - Clock gating control
      USB3DR_CLK_GATE_CTRL : SYSCFG_USB3DRSR_USB3DR_CLK_GATE_CTRL_Field;
      --  unspecified
      Reserved_3_31        : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_USB3DRSR_Register use record
      USB3DR_CLK_GATE_CTRL at 0 range 0 .. 2;
      Reserved_3_31        at 0 range 3 .. 31;
   end record;

   subtype SYSCFG_COMBOPHYCR1_COMBOPHY_MPLLMULTIPLIER_Field is HAL.UInt7;
   subtype SYSCFG_COMBOPHYCR1_COMBOPHY_SSCREFCLKSEL_Field is HAL.UInt9;
   subtype SYSCFG_COMBOPHYCR1_COMBOPHY_SSCRANGE_Field is HAL.UInt3;

   --  SYSCFG COMBOPHY control register 1
   type SYSCFG_COMBOPHYCR1_Register is record
      --  Selection of COMBOPHY reference clock source
      COMBOPHY_REFUSEPAD      : Boolean := False;
      --  Parameter for reference clock frequency selection
      COMBOPHY_MPLLMULTIPLIER : SYSCFG_COMBOPHYCR1_COMBOPHY_MPLLMULTIPLIER_Field :=
                                 16#64#;
      --  Parameter for reference clock frequency selection
      COMBOPHY_SSCREFCLKSEL   : SYSCFG_COMBOPHYCR1_COMBOPHY_SSCREFCLKSEL_Field :=
                                 16#0#;
      --  Parameter for the frequency selection of the reference clock
      COMBOPHY_REFCLKDIV2     : Boolean := False;
      --  Reference clock enable
      COMBOPHY_REFSSPEN       : Boolean := False;
      --  Spread-spectrum enable
      COMBOPHY_SSCEN          : Boolean := False;
      --  Selection of the range of spread-spectrum modulation
      COMBOPHY_SSCRANGE       : SYSCFG_COMBOPHYCR1_COMBOPHY_SSCRANGE_Field :=
                                 16#0#;
      --  unspecified
      Reserved_23_31          : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_COMBOPHYCR1_Register use record
      COMBOPHY_REFUSEPAD      at 0 range 0 .. 0;
      COMBOPHY_MPLLMULTIPLIER at 0 range 1 .. 7;
      COMBOPHY_SSCREFCLKSEL   at 0 range 8 .. 16;
      COMBOPHY_REFCLKDIV2     at 0 range 17 .. 17;
      COMBOPHY_REFSSPEN       at 0 range 18 .. 18;
      COMBOPHY_SSCEN          at 0 range 19 .. 19;
      COMBOPHY_SSCRANGE       at 0 range 20 .. 22;
      Reserved_23_31          at 0 range 23 .. 31;
   end record;

   subtype SYSCFG_COMBOPHYCR2_COMBOPHY_MODESEL_Field is HAL.UInt2;

   --  SYSCFG COMBOPHY control register 2
   type SYSCFG_COMBOPHYCR2_Register is record
      --  COMBOPHY mode selection
      COMBOPHY_MODESEL        : SYSCFG_COMBOPHYCR2_COMBOPHY_MODESEL_Field :=
                                 16#0#;
      --  unspecified
      Reserved_2_14           : HAL.UInt13 := 16#0#;
      --  COMBOPHY isolation cells disable
      COMBOPHY_ISO_DIS        : Boolean := False;
      --  unspecified
      Reserved_16_30          : HAL.UInt15 := 16#0#;
      --  Forces the entire PHY into its lowest power state by turning
      --  everything off.
      COMBOPHY_TEST_POWERDOWN : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_COMBOPHYCR2_Register use record
      COMBOPHY_MODESEL        at 0 range 0 .. 1;
      Reserved_2_14           at 0 range 2 .. 14;
      COMBOPHY_ISO_DIS        at 0 range 15 .. 15;
      Reserved_16_30          at 0 range 16 .. 30;
      COMBOPHY_TEST_POWERDOWN at 0 range 31 .. 31;
   end record;

   subtype SYSCFG_COMBOPHYCR3_COMBOPHY_PCSRXLOSMASKVAL_Field is HAL.UInt10;
   subtype SYSCFG_COMBOPHYCR3_COMBOPHY_PCSTXDEEMPH3P5DB_Field is HAL.UInt6;
   subtype SYSCFG_COMBOPHYCR3_COMBOPHY_PCSTXDEEMPH6DB_Field is HAL.UInt6;
   subtype SYSCFG_COMBOPHYCR3_COMBOPHY_PCSTXSWINGFULL_Field is HAL.UInt7;

   --  SYSCFG COMBOPHY control register 3
   type SYSCFG_COMBOPHYCR3_Register is record
      --  Masks the incoming LFPS for the number of reference clock cycles
      --  equal to the value of this bit field.
      COMBOPHY_PCSRXLOSMASKVAL  : SYSCFG_COMBOPHYCR3_COMBOPHY_PCSRXLOSMASKVAL_Field :=
                                   16#0#;
      --  TX deemphasis at 3.
      COMBOPHY_PCSTXDEEMPH3P5DB : SYSCFG_COMBOPHYCR3_COMBOPHY_PCSTXDEEMPH3P5DB_Field :=
                                   16#16#;
      --  TX deemphasis at 6 dB (USB3 use case)
      COMBOPHY_PCSTXDEEMPH6DB   : SYSCFG_COMBOPHYCR3_COMBOPHY_PCSTXDEEMPH6DB_Field :=
                                   16#21#;
      --  TX amplitude (full swing mode)
      COMBOPHY_PCSTXSWINGFULL   : SYSCFG_COMBOPHYCR3_COMBOPHY_PCSTXSWINGFULL_Field :=
                                   16#78#;
      --  Enables the RX LOS LFPS mode.
      COMBOPHY_RXLOSLFPSEN      : Boolean := False;
      --  Instructs COMBOPHY to perform a termination calibration.
      COMBOPHY_RTUNE_REQ        : Boolean := False;
      --  unspecified
      Reserved_31_31            : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_COMBOPHYCR3_Register use record
      COMBOPHY_PCSRXLOSMASKVAL  at 0 range 0 .. 9;
      COMBOPHY_PCSTXDEEMPH3P5DB at 0 range 10 .. 15;
      COMBOPHY_PCSTXDEEMPH6DB   at 0 range 16 .. 21;
      COMBOPHY_PCSTXSWINGFULL   at 0 range 22 .. 28;
      COMBOPHY_RXLOSLFPSEN      at 0 range 29 .. 29;
      COMBOPHY_RTUNE_REQ        at 0 range 30 .. 30;
      Reserved_31_31            at 0 range 31 .. 31;
   end record;

   subtype SYSCFG_COMBOPHYCR4_COMBOPHY_RX0_EQ_Field is HAL.UInt3;
   subtype SYSCFG_COMBOPHYCR4_COMBOPHY_LOS_LEVEL_Field is HAL.UInt5;
   subtype SYSCFG_COMBOPHYCR4_COMBOPHY_LOS_BIAS_Field is HAL.UInt3;
   subtype SYSCFG_COMBOPHYCR4_COMBOPHY_PCS_TX_DEEMPH_GEN1_Field is HAL.UInt6;
   subtype SYSCFG_COMBOPHYCR4_COMBOPHY_PCS_TX_SWING_LOW_Field is HAL.UInt7;
   subtype SYSCFG_COMBOPHYCR4_COMBOPHY_TX_TERM_OFFSET_Field is HAL.UInt5;
   subtype SYSCFG_COMBOPHYCR4_COMBOPHY_TX_VBOOST_LEVEL_Field is HAL.UInt3;

   --  SYSCFG COMBOPHY control register 4
   type SYSCFG_COMBOPHYCR4_Register is record
      --  RX equalizer setting
      COMBOPHY_RX0_EQ             : SYSCFG_COMBOPHYCR4_COMBOPHY_RX0_EQ_Field :=
                                     16#2#;
      --  Loss-of-signal detector sensitivity level control
      COMBOPHY_LOS_LEVEL          : SYSCFG_COMBOPHYCR4_COMBOPHY_LOS_LEVEL_Field :=
                                     16#9#;
      --  Loss-of-signal detector threshold level control
      COMBOPHY_LOS_BIAS           : SYSCFG_COMBOPHYCR4_COMBOPHY_LOS_BIAS_Field :=
                                     16#2#;
      --  TX deemphasis at 3.
      COMBOPHY_PCS_TX_DEEMPH_GEN1 : SYSCFG_COMBOPHYCR4_COMBOPHY_PCS_TX_DEEMPH_GEN1_Field :=
                                     16#16#;
      --  TX amplitude (low swing mode) (PCIE use case)
      COMBOPHY_PCS_TX_SWING_LOW   : SYSCFG_COMBOPHYCR4_COMBOPHY_PCS_TX_SWING_LOW_Field :=
                                     16#78#;
      --  Transmitter termination offset
      COMBOPHY_TX_TERM_OFFSET     : SYSCFG_COMBOPHYCR4_COMBOPHY_TX_TERM_OFFSET_Field :=
                                     16#0#;
      --  TX voltage boost level
      COMBOPHY_TX_VBOOST_LEVEL    : SYSCFG_COMBOPHYCR4_COMBOPHY_TX_VBOOST_LEVEL_Field :=
                                     16#4#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_COMBOPHYCR4_Register use record
      COMBOPHY_RX0_EQ             at 0 range 0 .. 2;
      COMBOPHY_LOS_LEVEL          at 0 range 3 .. 7;
      COMBOPHY_LOS_BIAS           at 0 range 8 .. 10;
      COMBOPHY_PCS_TX_DEEMPH_GEN1 at 0 range 11 .. 16;
      COMBOPHY_PCS_TX_SWING_LOW   at 0 range 17 .. 23;
      COMBOPHY_TX_TERM_OFFSET     at 0 range 24 .. 28;
      COMBOPHY_TX_VBOOST_LEVEL    at 0 range 29 .. 31;
   end record;

   subtype SYSCFG_COMBOPHYCR5_COMBOPHY_PCS_TX_DEEMPH_GEN2_3P5DB_Field is
     HAL.UInt6;
   subtype SYSCFG_COMBOPHYCR5_COMBOPHY_PCS_TX_DEEMPH_GEN2_6DB_Field is
     HAL.UInt6;

   --  SYSCFG COMBOPHY control register 5
   type SYSCFG_COMBOPHYCR5_Register is record
      --  TX deemphasis at 3.
      COMBOPHY_PCS_TX_DEEMPH_GEN2_3P5DB : SYSCFG_COMBOPHYCR5_COMBOPHY_PCS_TX_DEEMPH_GEN2_3P5DB_Field :=
                                           16#16#;
      --  TX deemphasis at 6 dB (PCIE gen2 use case)
      COMBOPHY_PCS_TX_DEEMPH_GEN2_6DB   : SYSCFG_COMBOPHYCR5_COMBOPHY_PCS_TX_DEEMPH_GEN2_6DB_Field :=
                                           16#21#;
      --  Common clock mode selection for PCIE receive data path
      COMBOPHY_PCS_COMMON_CLOCKS        : Boolean := False;
      --  USB3 use case
      COMBOPHY_LANE0_EXT_PCLK_REQ       : Boolean := False;
      --  USB3 use case
      COMBOPHY_LANE0_TX2RX_LOOPBK       : Boolean := False;
      --  PCIE use case
      COMBOPHY_PIPE0_TX2RX_LOOPBK       : Boolean := False;
      --  unspecified
      Reserved_16_31                    : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_COMBOPHYCR5_Register use record
      COMBOPHY_PCS_TX_DEEMPH_GEN2_3P5DB at 0 range 0 .. 5;
      COMBOPHY_PCS_TX_DEEMPH_GEN2_6DB   at 0 range 6 .. 11;
      COMBOPHY_PCS_COMMON_CLOCKS        at 0 range 12 .. 12;
      COMBOPHY_LANE0_EXT_PCLK_REQ       at 0 range 13 .. 13;
      COMBOPHY_LANE0_TX2RX_LOOPBK       at 0 range 14 .. 14;
      COMBOPHY_PIPE0_TX2RX_LOOPBK       at 0 range 15 .. 15;
      Reserved_16_31                    at 0 range 16 .. 31;
   end record;

   --  SYSCFG COMBOPHY status register
   type SYSCFG_COMBOPHYSR_Register is record
      --  Read-only. End of the termination calibration step
      COMBOPHY_RTUNE_ACK       : Boolean;
      --  Read-only. Communicates completion of several PHY functions.
      COMBOPHY_PIPE0_PHYSTATUS : Boolean;
      --  unspecified
      Reserved_2_31            : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_COMBOPHYSR_Register use record
      COMBOPHY_RTUNE_ACK       at 0 range 0 .. 0;
      COMBOPHY_PIPE0_PHYSTATUS at 0 range 1 .. 1;
      Reserved_2_31            at 0 range 2 .. 31;
   end record;

   subtype SYSCFG_DISPLAYCLKCR_PIXEL_CLK_SEL_Field is HAL.UInt2;

   --  SYSCFG display clock control register
   type SYSCFG_DISPLAYCLKCR_Register is record
      --  Control of pixel clock output selection
      PIXEL_CLK_SEL : SYSCFG_DISPLAYCLKCR_PIXEL_CLK_SEL_Field := 16#1#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_DISPLAYCLKCR_Register use record
      PIXEL_CLK_SEL at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SYSCFG_PCIECR_DEBUG_BUS_SEL_Field is HAL.UInt2;
   subtype SYSCFG_PCIECR_DEVICE_TYPE_Field is HAL.UInt4;
   subtype SYSCFG_PCIECR_APP_DEV_NUM_Field is HAL.UInt5;
   subtype SYSCFG_PCIECR_APP_BUS_NUM_Field is HAL.UInt8;

   --  SYSCFG PCIE control register
   type SYSCFG_PCIECR_Register is record
      --  unspecified
      Reserved_0_0          : HAL.Bit := 16#0#;
      --  Requests from the application to send a hot reset to the downstream
      --  device (only for RootComplex).
      APP_INIT_RST          : Boolean := False;
      --  After application has finished initializing the core configuration
      --  registers, it must assert this bit to allow the LTSSM to continue
      --  link establishment.
      APP_LTSSM_ENABLE      : Boolean := False;
      --  Provides a capability to defer incoming configuration requests until
      --  initialization is complete (only for endpoint).
      APP_REQ_RETRY_EN      : Boolean := False;
      --  When pcie_sys_int goes from low to high, the PCIE controller
      --  generates an Assert_INTx message.
      SYS_INT               : Boolean := False;
      --  Selection of PCIE observation points
      DEBUG_BUS_SEL         : SYSCFG_PCIECR_DEBUG_BUS_SEL_Field := 16#0#;
      --  Clear this bit to 0 if the application does not want to remove the
      --  reference clock.
      APP_CLK_REQ_N         : Boolean := True;
      --  Device/port type
      DEVICE_TYPE           : SYSCFG_PCIECR_DEVICE_TYPE_Field := 16#4#;
      --  Device number in the requester ID for an RC port
      APP_DEV_NUM           : SYSCFG_PCIECR_APP_DEV_NUM_Field := 16#0#;
      --  Bus number in the requester ID for RC port
      APP_BUS_NUM           : SYSCFG_PCIECR_APP_BUS_NUM_Field := 16#0#;
      --  DBI read-only write disable
      APP_DBI_RO_WR_DISABLE : Boolean := False;
      --  unspecified
      Reserved_26_31        : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_PCIECR_Register use record
      Reserved_0_0          at 0 range 0 .. 0;
      APP_INIT_RST          at 0 range 1 .. 1;
      APP_LTSSM_ENABLE      at 0 range 2 .. 2;
      APP_REQ_RETRY_EN      at 0 range 3 .. 3;
      SYS_INT               at 0 range 4 .. 4;
      DEBUG_BUS_SEL         at 0 range 5 .. 6;
      APP_CLK_REQ_N         at 0 range 7 .. 7;
      DEVICE_TYPE           at 0 range 8 .. 11;
      APP_DEV_NUM           at 0 range 12 .. 16;
      APP_BUS_NUM           at 0 range 17 .. 24;
      APP_DBI_RO_WR_DISABLE at 0 range 25 .. 25;
      Reserved_26_31        at 0 range 26 .. 31;
   end record;

   --  SYSCFG PCIE CFG_PME_MSI control register
   type SYSCFG_PCIEPMEMSICR_Register is record
      --  Reset pcie_cfg_pme_msi interrupt logic
      RST_CFG_PME_MSI_INT : Boolean := False;
      --  unspecified
      Reserved_1_31       : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_PCIEPMEMSICR_Register use record
      RST_CFG_PME_MSI_INT at 0 range 0 .. 0;
      Reserved_1_31       at 0 range 1 .. 31;
   end record;

   --  SYSCFG PCIE CFG_AER_RC_ERR_MSI control register
   type SYSCFG_PCIEAERRCMSICR_Register is record
      --  Reset pcie_cfg_aer_rc_err_msi interrupt logic
      RST_CFG_AER_RC_ERR_MSI_INT : Boolean := False;
      --  unspecified
      Reserved_1_31              : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_PCIEAERRCMSICR_Register use record
      RST_CFG_AER_RC_ERR_MSI_INT at 0 range 0 .. 0;
      Reserved_1_31              at 0 range 1 .. 31;
   end record;

   --  SYSCFG PCIE CFG_SYS_ERR_RC control register
   type SYSCFG_PCIESYSRCCR_Register is record
      --  Reset pcie_cfg_sys_err_rc interrupt logic
      RST_CFG_SYS_ERR_RC_INT       : Boolean := False;
      --  Reset cfg_link_auto_bw_msi interrupt logic
      RST_CFG_LINK_AUTO_BW_MSI_INT : Boolean := False;
      --  Reset cfg_bw_mgt_msi interrupt logic
      RST_CFG_BW_MGT_MSI_INT       : Boolean := False;
      --  unspecified
      Reserved_3_30                : HAL.UInt28 := 16#0#;
      --  Reset radm_qoverflow interrupt logic
      RST_RADM_QOVERFLOW           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_PCIESYSRCCR_Register use record
      RST_CFG_SYS_ERR_RC_INT       at 0 range 0 .. 0;
      RST_CFG_LINK_AUTO_BW_MSI_INT at 0 range 1 .. 1;
      RST_CFG_BW_MGT_MSI_INT       at 0 range 2 .. 2;
      Reserved_3_30                at 0 range 3 .. 30;
      RST_RADM_QOVERFLOW           at 0 range 31 .. 31;
   end record;

   --  SYSCFG PCIE PTM interrupt control register
   type SYSCFG_PCIEPTMIRQCR_Register is record
      --  Reset ptm_clock_updated interrupt logic
      RST_PTM_CLOCK_UPDATED        : Boolean := False;
      --  Reset ptm_req_response_timeout interrupt logic
      RST_PTM_REQ_RESPONSE_TIMEOUT : Boolean := False;
      --  Reset ptm_req_dup_rx interrupt logic
      RST_PTM_REQ_DUP_RX           : Boolean := False;
      --  Reset ptm_req_replay_rx interrupt logic
      RST_PTM_REQ_REPLAY_TX        : Boolean := False;
      --  unspecified
      Reserved_4_31                : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_PCIEPTMIRQCR_Register use record
      RST_PTM_CLOCK_UPDATED        at 0 range 0 .. 0;
      RST_PTM_REQ_RESPONSE_TIMEOUT at 0 range 1 .. 1;
      RST_PTM_REQ_DUP_RX           at 0 range 2 .. 2;
      RST_PTM_REQ_REPLAY_TX        at 0 range 3 .. 3;
      Reserved_4_31                at 0 range 4 .. 31;
   end record;

   subtype SYSCFG_PCIEPRGCR_PRG_IMP_CTRL_Field is HAL.UInt5;

   --  SYSCFG PCIE PRG control register
   type SYSCFG_PCIEPRGCR_Register is record
      --  None
      PRG_EN        : Boolean := False;
      --  Control of the impedance of the 100 MHz differential output buffer
      PRG_IMP_CTRL  : SYSCFG_PCIEPRGCR_PRG_IMP_CTRL_Field := 16#3#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_PCIEPRGCR_Register use record
      PRG_EN        at 0 range 0 .. 0;
      PRG_IMP_CTRL  at 0 range 1 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype SYSCFG_PCIESR1_PM_DSTATE_Field is HAL.UInt3;

   --  SYSCFG PCIE status register 1
   type SYSCFG_PCIESR1_Register is record
      --  Read-only. Power management D-state
      PM_DSTATE                     : SYSCFG_PCIESR1_PM_DSTATE_Field;
      --  Read-only. PHY link up, status for RC application
      SMLH_LINK_UP                  : Boolean;
      --  Read-only. Hardware autonomous speed disable
      CFG_HW_AUTO_SP_DIS            : Boolean;
      --  Read-only. Data link layer up, status for RC application
      RDLH_LINK_UP                  : Boolean;
      --  Read-only. pcie_1_msi_ctrl_int interrupt
      MSI_CTRL_INT                  : Boolean;
      --  unspecified
      Reserved_7_7                  : HAL.Bit;
      --  Read-only. pcie_1_intd interrupt
      INTD_INTERRUPT                : Boolean;
      --  Read-only. pcie_1_intc interrupt
      INTC_INTERRUPT                : Boolean;
      --  Read-only. pcie_1_intb interrupt
      INTB_INTERRUPT                : Boolean;
      --  Read-only. pcie_1_inta interrupt
      INTA_INTERRUPT                : Boolean;
      --  Read-only. pcie_1_cfg_pme interrupt
      CFG_PME_INT                   : Boolean;
      --  Read-only. pcie_1_cfg_aer_rc_err interrupt
      CFG_AER_RC_ERR_INT            : Boolean;
      --  Read-only. Level high indicates that the receive queues contain TLP
      --  header/data.
      RADM_Q_NOT_EMPTY              : Boolean;
      --  Read-only. Level high indicates that one or more of the P/NP/CPL
      --  receive queues has overflowed.
      RADM_QOVERFLOW                : Boolean;
      --  Read-only. PTM requester detected a TLP replay being sent when
      --  responseD message in use, and one of the following:
      PTM_REQ_REPLAY_TX             : Boolean;
      --  Read-only. PTM requester duplicate TLP received
      PTM_REQ_DUP_RX                : Boolean;
      --  Read-only. PTM requester response timeout
      PTM_REQ_RESPONSE_TIMEOUT      : Boolean;
      --  Read-only. Controller updated the local clock.
      PTM_CLOCK_UPDATED             : Boolean;
      --  Read-only. PTM update in progress
      PTM_UPDATING                  : Boolean;
      --  Read-only. Application software can re-validate the context, because
      --  it was invalidated.
      PTM_RESPONDER_RDY_TO_VALIDATE : Boolean;
      --  unspecified
      Reserved_22_31                : HAL.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_PCIESR1_Register use record
      PM_DSTATE                     at 0 range 0 .. 2;
      SMLH_LINK_UP                  at 0 range 3 .. 3;
      CFG_HW_AUTO_SP_DIS            at 0 range 4 .. 4;
      RDLH_LINK_UP                  at 0 range 5 .. 5;
      MSI_CTRL_INT                  at 0 range 6 .. 6;
      Reserved_7_7                  at 0 range 7 .. 7;
      INTD_INTERRUPT                at 0 range 8 .. 8;
      INTC_INTERRUPT                at 0 range 9 .. 9;
      INTB_INTERRUPT                at 0 range 10 .. 10;
      INTA_INTERRUPT                at 0 range 11 .. 11;
      CFG_PME_INT                   at 0 range 12 .. 12;
      CFG_AER_RC_ERR_INT            at 0 range 13 .. 13;
      RADM_Q_NOT_EMPTY              at 0 range 14 .. 14;
      RADM_QOVERFLOW                at 0 range 15 .. 15;
      PTM_REQ_REPLAY_TX             at 0 range 16 .. 16;
      PTM_REQ_DUP_RX                at 0 range 17 .. 17;
      PTM_REQ_RESPONSE_TIMEOUT      at 0 range 18 .. 18;
      PTM_CLOCK_UPDATED             at 0 range 19 .. 19;
      PTM_UPDATING                  at 0 range 20 .. 20;
      PTM_RESPONDER_RDY_TO_VALIDATE at 0 range 21 .. 21;
      Reserved_22_31                at 0 range 22 .. 31;
   end record;

   --  SYSCFG PCIE interrupt status register 2
   type SYSCFG_PCIESR2_Register is record
      --  Read-only. Status of PCIE cfg_pme_msi interrupt
      CFG_PME_MSI_INT_STS        : Boolean;
      --  Read-only. Status of PCIE cfg_aer_rc_err_msi interrupt
      CFG_AER_RC_ERR_MSI_INT_STS : Boolean;
      --  Read-only. Status of PCIE cfg_sys_err_rc interrupt
      CFG_SYS_ERR_RC_INT_STS     : Boolean;
      --  unspecified
      Reserved_3_31              : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_PCIESR2_Register use record
      CFG_PME_MSI_INT_STS        at 0 range 0 .. 0;
      CFG_AER_RC_ERR_MSI_INT_STS at 0 range 1 .. 1;
      CFG_SYS_ERR_RC_INT_STS     at 0 range 2 .. 2;
      Reserved_3_31              at 0 range 3 .. 31;
   end record;

   subtype SYSCFG_IDC_DEV_ID_Field is HAL.UInt12;
   subtype SYSCFG_IDC_MAJOR_REV_ID_Field is HAL.UInt16;

   --  SYSCFG device ID register
   type SYSCFG_IDC_Register is record
      --  Read-only. Device ID
      DEV_ID         : SYSCFG_IDC_DEV_ID_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Device revision
      MAJOR_REV_ID   : SYSCFG_IDC_MAJOR_REV_ID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_IDC_Register use record
      DEV_ID         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MAJOR_REV_ID   at 0 range 16 .. 31;
   end record;

   subtype SYSCFG_VERR_MINREV_Field is HAL.UInt4;
   subtype SYSCFG_VERR_MAJREV_Field is HAL.UInt4;

   --  SYSCFG version register
   type SYSCFG_VERR_Register is record
      --  Read-only. SYSCFG minor revision
      MINREV        : SYSCFG_VERR_MINREV_Field;
      --  Read-only. SYSCFG major revision
      MAJREV        : SYSCFG_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SYSCFG register block
   type SYSCFG_Peripheral is record
      --  SYSCFG boot pin status register
      SYSCFG_BOOTSR          : aliased SYSCFG_BOOTSR_Register;
      --  SYSCFG boot pin control register
      SYSCFG_BOOTCR          : aliased SYSCFG_BOOTCR_Register;
      --  SYSCFG DLYBSD1 control register
      SYSCFG_DLYBSD1CR       : aliased SYSCFG_DLYBSD1CR_Register;
      --  SYSCFG DLYBSD1 status register
      SYSCFG_DLYBSD1SR       : aliased SYSCFG_DLYBSD1SR_Register;
      --  SYSCFG SDMMC1 control register
      SYSCFG_SDMMC1CR        : aliased SYSCFG_SDMMC1CR_Register;
      --  SYSCFG DLYBSD2 control register
      SYSCFG_DLYBSD2CR       : aliased SYSCFG_DLYBSD2CR_Register;
      --  SYSCFG DLYBSD2 status register
      SYSCFG_DLYBSD2SR       : aliased SYSCFG_DLYBSD2SR_Register;
      --  SYSCFG SDMMC2 control register
      SYSCFG_SDMMC2CR        : aliased SYSCFG_SDMMC2CR_Register;
      --  SYSCFG DLYBSD3 control register
      SYSCFG_DLYBSD3CR       : aliased SYSCFG_DLYBSD3CR_Register;
      --  SYSCFG DLYBSD3 status register
      SYSCFG_DLYBSD3SR       : aliased SYSCFG_DLYBSD3SR_Register;
      --  SYSCFG DLYBOS1 control register
      SYSCFG_DLYBOS1CR       : aliased SYSCFG_DLYBOS1CR_Register;
      --  SYSCFG DLYBOS1 status register
      SYSCFG_DLYBOS1SR       : aliased SYSCFG_DLYBOS1SR_Register;
      --  SYSCFG DLYBOS2 control register
      SYSCFG_DLYBOS2CR       : aliased SYSCFG_DLYBOS2CR_Register;
      --  SYSCFG DLYBOS2 status register
      SYSCFG_DLYBOS2SR       : aliased SYSCFG_DLYBOS2SR_Register;
      --  SYSCFG video decoder encoder RAM control register
      SYSCFG_VDERAMCR        : aliased SYSCFG_VDERAMCR_Register;
      --  SYSCFG potential tamper reset control register
      SYSCFG_POTTAMPRSTCR    : aliased SYSCFG_POTTAMPRSTCR_Register;
      --  SYSCFG M33SS control register
      SYSCFG_M33SSCR         : aliased SYSCFG_M33SSCR_Register;
      --  SYSCFG ICN QOS priority control register 1
      SYSCFG_ICNQPCR1        : aliased SYSCFG_ICNQPCR1_Register;
      --  SYSCFG ICN QOS priority control register 2
      SYSCFG_ICNQPCR2        : aliased SYSCFG_ICNQPCR2_Register;
      --  SYSCFG ICN early write response control register
      SYSCFG_ICNEWRCR        : aliased SYSCFG_ICNEWRCR_Register;
      --  SYSCFG ICN clock gating control register
      SYSCFG_ICNCGCR         : aliased SYSCFG_ICNCGCR_Register;
      --  SYSCFG ICN GPU bandwidth limiter control register
      SYSCFG_ICNGPUBWLCR     : aliased SYSCFG_ICNGPUBWLCR_Register;
      --  SYSCFG ICN end-to-end bandwidth regulation control register
      SYSCFG_ICNE2EBWRCR     : aliased SYSCFG_ICNE2EBWRCR_Register;
      --  SYSCFG safe reset control register
      SYSCFG_SAFERSTCR       : aliased SYSCFG_SAFERSTCR_Register;
      --  SYSCFG ICN PCI bandwidth limiter control register
      SYSCFG_ICNPCIBWLCR     : aliased SYSCFG_ICNPCIBWLCR_Register;
      --  SYSCFG ICN ETH bandwidth limiter control register
      SYSCFG_ICNETHBWLCR     : aliased SYSCFG_ICNETHBWLCR_Register;
      --  SYSCFG ICN USB3 bandwidth limiter control register
      SYSCFG_ICNUSB3BWLCR    : aliased SYSCFG_ICNUSB3BWLCR_Register;
      --  SYSCFG ICN CPU1 bandwidth limiter control register
      SYSCFG_ICNCPU1BWLCR    : aliased SYSCFG_ICNCPU1BWLCR_Register;
      --  SYSCFG ICN LTDC bandwidth limiter control register
      SYSCFG_ICNLTDCBWLCR    : aliased SYSCFG_ICNLTDCBWLCR_Register;
      --  SYSCFG ICN DCMIPP bandwidth limiter control register
      SYSCFG_ICNDCMIPPBWLCR  : aliased SYSCFG_ICNDCMIPPBWLCR_Register;
      --  SYSCFG ICN Video Decoder Encoder bandwidth limiter control register
      SYSCFG_ICNVDEBWLCR     : aliased SYSCFG_ICNVDEBWLCR_Register;
      --  SYSCFG USB2PHY1 control register
      SYSCFG_USB2PHY1CR      : aliased SYSCFG_USB2PHY1CR_Register;
      --  SYSCFG USB2PHY1 battery charging control register
      SYSCFG_USB2PHY1BCCR    : aliased SYSCFG_USB2PHY1BCCR_Register;
      --  SYSCFG USB2PHY1 battery charging status register
      SYSCFG_USB2PHY1BCSR    : aliased SYSCFG_USB2PHY1BCSR_Register;
      --  SYSCFG USB2PHY1 trimming 1 control register
      SYSCFG_USB2PHY1TRIM1CR : aliased SYSCFG_USB2PHY1TRIM1CR_Register;
      --  SYSCFG USB2PHY1 trimming 2 control register
      SYSCFG_USB2PHY1TRIM2CR : aliased SYSCFG_USB2PHY1TRIM2CR_Register;
      --  SYSCFG USBH control register
      SYSCFG_USBHCR          : aliased SYSCFG_USBHCR_Register;
      --  SYSCFG USB2PHY2 control register
      SYSCFG_USB2PHY2CR      : aliased SYSCFG_USB2PHY2CR_Register;
      --  SYSCFG USB2PHY2 trimming 1 control register
      SYSCFG_USB2PHY2TRIM1CR : aliased SYSCFG_USB2PHY2TRIM1CR_Register;
      --  SYSCFG USB2PHY2 trimming 2 control register
      SYSCFG_USB2PHY2TRIM2CR : aliased SYSCFG_USB2PHY2TRIM2CR_Register;
      --  SYSCFG OCTOSPI address mapping control register
      SYSCFG_OCTOSPIAMCR     : aliased SYSCFG_OCTOSPIAMCR_Register;
      --  SYSCFG Ethernet1 control register
      SYSCFG_ETH1CR          : aliased SYSCFG_ETH1CR_Register;
      --  SYSCFG Ethernet1 status register
      SYSCFG_ETH1SR          : aliased SYSCFG_ETH1SR_Register;
      --  SYSCFG Ethernet2 configuration register
      SYSCFG_ETH2CR          : aliased SYSCFG_ETH2CR_Register;
      --  SYSCFG Ethernet2 status register
      SYSCFG_ETH2SR          : aliased SYSCFG_ETH2SR_Register;
      --  SYSCFG Ethernet switch configuration register
      SYSCFG_ETHSWCR         : aliased SYSCFG_ETHSWCR_Register;
      --  SYSCFG VDDIO3 compensation cell control register
      SYSCFG_VDDIO3CCCR      : aliased SYSCFG_VDDIO3CCCR_Register;
      --  SYSCFG VDDIO3 compensation cell status register
      SYSCFG_VDDIO3CCSR      : aliased SYSCFG_VDDIO3CCSR_Register;
      --  SYSCFG VDDIO4 compensation cell control register
      SYSCFG_VDDIO4CCCR      : aliased SYSCFG_VDDIO4CCCR_Register;
      --  SYSCFG VDDIO4 compensation cell status register
      SYSCFG_VDDIO4CCSR      : aliased SYSCFG_VDDIO4CCSR_Register;
      --  SYSCFG VDD compensation cell control register
      SYSCFG_VDDCCCR         : aliased SYSCFG_VDDCCCR_Register;
      --  SYSCFG VDD compensation cell status register
      SYSCFG_VDDCCSR         : aliased SYSCFG_VDDCCSR_Register;
      --  SYSCFG VDDIO2 compensation cell control register
      SYSCFG_VDDIO2CCCR      : aliased SYSCFG_VDDIO2CCCR_Register;
      --  SYSCFG VDDIO2 compensation cell status register
      SYSCFG_VDDIO2CCSR      : aliased SYSCFG_VDDIO2CCSR_Register;
      --  SYSCFG VDDIO1 compensation cell control register
      SYSCFG_VDDIO1CCCR      : aliased SYSCFG_VDDIO1CCCR_Register;
      --  SYSCFG VDDIO1 compensation cell status register
      SYSCFG_VDDIO1CCSR      : aliased SYSCFG_VDDIO1CCSR_Register;
      --  SYSCFG control timer break register
      SYSCFG_CBR             : aliased SYSCFG_CBR_Register;
      --  SYSCFG USB3DR control register
      SYSCFG_USB3DRCR        : aliased SYSCFG_USB3DRCR_Register;
      --  SYSCFG USB3DR status register
      SYSCFG_USB3DRSR        : aliased SYSCFG_USB3DRSR_Register;
      --  SYSCFG COMBOPHY control register 1
      SYSCFG_COMBOPHYCR1     : aliased SYSCFG_COMBOPHYCR1_Register;
      --  SYSCFG COMBOPHY control register 2
      SYSCFG_COMBOPHYCR2     : aliased SYSCFG_COMBOPHYCR2_Register;
      --  SYSCFG COMBOPHY control register 3
      SYSCFG_COMBOPHYCR3     : aliased SYSCFG_COMBOPHYCR3_Register;
      --  SYSCFG COMBOPHY control register 4
      SYSCFG_COMBOPHYCR4     : aliased SYSCFG_COMBOPHYCR4_Register;
      --  SYSCFG COMBOPHY control register 5
      SYSCFG_COMBOPHYCR5     : aliased SYSCFG_COMBOPHYCR5_Register;
      --  SYSCFG COMBOPHY status register
      SYSCFG_COMBOPHYSR      : aliased SYSCFG_COMBOPHYSR_Register;
      --  SYSCFG display clock control register
      SYSCFG_DISPLAYCLKCR    : aliased SYSCFG_DISPLAYCLKCR_Register;
      --  SYSCFG PCIE control register
      SYSCFG_PCIECR          : aliased SYSCFG_PCIECR_Register;
      --  SYSCFG PCIE CFG_PME_MSI control register
      SYSCFG_PCIEPMEMSICR    : aliased SYSCFG_PCIEPMEMSICR_Register;
      --  SYSCFG PCIE CFG_AER_RC_ERR_MSI control register
      SYSCFG_PCIEAERRCMSICR  : aliased SYSCFG_PCIEAERRCMSICR_Register;
      --  SYSCFG PCIE CFG_SYS_ERR_RC control register
      SYSCFG_PCIESYSRCCR     : aliased SYSCFG_PCIESYSRCCR_Register;
      --  SYSCFG PCIE PTM interrupt control register
      SYSCFG_PCIEPTMIRQCR    : aliased SYSCFG_PCIEPTMIRQCR_Register;
      --  SYSCFG PCIE PRG control register
      SYSCFG_PCIEPRGCR       : aliased SYSCFG_PCIEPRGCR_Register;
      --  SYSCFG PCIE status register 1
      SYSCFG_PCIESR1         : aliased SYSCFG_PCIESR1_Register;
      --  SYSCFG PCIE interrupt status register 2
      SYSCFG_PCIESR2         : aliased SYSCFG_PCIESR2_Register;
      --  SYSCFG device ID register
      SYSCFG_IDC             : aliased SYSCFG_IDC_Register;
      --  SYSCFG version register
      SYSCFG_VERR            : aliased SYSCFG_VERR_Register;
      --  SYSCFG identification register
      SYSCFG_IPIDR           : aliased HAL.UInt32;
      --  SYSCFG size identification register
      SYSCFG_SIDR            : aliased HAL.UInt32;
   end record
     with Volatile;

   for SYSCFG_Peripheral use record
      SYSCFG_BOOTSR          at 16#0# range 0 .. 31;
      SYSCFG_BOOTCR          at 16#4# range 0 .. 31;
      SYSCFG_DLYBSD1CR       at 16#400# range 0 .. 31;
      SYSCFG_DLYBSD1SR       at 16#404# range 0 .. 31;
      SYSCFG_SDMMC1CR        at 16#408# range 0 .. 31;
      SYSCFG_DLYBSD2CR       at 16#800# range 0 .. 31;
      SYSCFG_DLYBSD2SR       at 16#804# range 0 .. 31;
      SYSCFG_SDMMC2CR        at 16#808# range 0 .. 31;
      SYSCFG_DLYBSD3CR       at 16#C00# range 0 .. 31;
      SYSCFG_DLYBSD3SR       at 16#C04# range 0 .. 31;
      SYSCFG_DLYBOS1CR       at 16#1000# range 0 .. 31;
      SYSCFG_DLYBOS1SR       at 16#1004# range 0 .. 31;
      SYSCFG_DLYBOS2CR       at 16#1400# range 0 .. 31;
      SYSCFG_DLYBOS2SR       at 16#1404# range 0 .. 31;
      SYSCFG_VDERAMCR        at 16#1800# range 0 .. 31;
      SYSCFG_POTTAMPRSTCR    at 16#1804# range 0 .. 31;
      SYSCFG_M33SSCR         at 16#1C00# range 0 .. 31;
      SYSCFG_ICNQPCR1        at 16#2000# range 0 .. 31;
      SYSCFG_ICNQPCR2        at 16#2004# range 0 .. 31;
      SYSCFG_ICNEWRCR        at 16#2008# range 0 .. 31;
      SYSCFG_ICNCGCR         at 16#200C# range 0 .. 31;
      SYSCFG_ICNGPUBWLCR     at 16#2010# range 0 .. 31;
      SYSCFG_ICNE2EBWRCR     at 16#2014# range 0 .. 31;
      SYSCFG_SAFERSTCR       at 16#2018# range 0 .. 31;
      SYSCFG_ICNPCIBWLCR     at 16#201C# range 0 .. 31;
      SYSCFG_ICNETHBWLCR     at 16#2020# range 0 .. 31;
      SYSCFG_ICNUSB3BWLCR    at 16#2024# range 0 .. 31;
      SYSCFG_ICNCPU1BWLCR    at 16#2028# range 0 .. 31;
      SYSCFG_ICNLTDCBWLCR    at 16#202C# range 0 .. 31;
      SYSCFG_ICNDCMIPPBWLCR  at 16#2030# range 0 .. 31;
      SYSCFG_ICNVDEBWLCR     at 16#2034# range 0 .. 31;
      SYSCFG_USB2PHY1CR      at 16#2400# range 0 .. 31;
      SYSCFG_USB2PHY1BCCR    at 16#2404# range 0 .. 31;
      SYSCFG_USB2PHY1BCSR    at 16#2408# range 0 .. 31;
      SYSCFG_USB2PHY1TRIM1CR at 16#240C# range 0 .. 31;
      SYSCFG_USB2PHY1TRIM2CR at 16#2410# range 0 .. 31;
      SYSCFG_USBHCR          at 16#2420# range 0 .. 31;
      SYSCFG_USB2PHY2CR      at 16#2800# range 0 .. 31;
      SYSCFG_USB2PHY2TRIM1CR at 16#2808# range 0 .. 31;
      SYSCFG_USB2PHY2TRIM2CR at 16#280C# range 0 .. 31;
      SYSCFG_OCTOSPIAMCR     at 16#2C00# range 0 .. 31;
      SYSCFG_ETH1CR          at 16#3000# range 0 .. 31;
      SYSCFG_ETH1SR          at 16#3010# range 0 .. 31;
      SYSCFG_ETH2CR          at 16#3400# range 0 .. 31;
      SYSCFG_ETH2SR          at 16#3410# range 0 .. 31;
      SYSCFG_ETHSWCR         at 16#3800# range 0 .. 31;
      SYSCFG_VDDIO3CCCR      at 16#4000# range 0 .. 31;
      SYSCFG_VDDIO3CCSR      at 16#4004# range 0 .. 31;
      SYSCFG_VDDIO4CCCR      at 16#4008# range 0 .. 31;
      SYSCFG_VDDIO4CCSR      at 16#400C# range 0 .. 31;
      SYSCFG_VDDCCCR         at 16#4010# range 0 .. 31;
      SYSCFG_VDDCCSR         at 16#4014# range 0 .. 31;
      SYSCFG_VDDIO2CCCR      at 16#4018# range 0 .. 31;
      SYSCFG_VDDIO2CCSR      at 16#401C# range 0 .. 31;
      SYSCFG_VDDIO1CCCR      at 16#4020# range 0 .. 31;
      SYSCFG_VDDIO1CCSR      at 16#4024# range 0 .. 31;
      SYSCFG_CBR             at 16#4400# range 0 .. 31;
      SYSCFG_USB3DRCR        at 16#4800# range 0 .. 31;
      SYSCFG_USB3DRSR        at 16#4804# range 0 .. 31;
      SYSCFG_COMBOPHYCR1     at 16#4C00# range 0 .. 31;
      SYSCFG_COMBOPHYCR2     at 16#4C04# range 0 .. 31;
      SYSCFG_COMBOPHYCR3     at 16#4C08# range 0 .. 31;
      SYSCFG_COMBOPHYCR4     at 16#4C0C# range 0 .. 31;
      SYSCFG_COMBOPHYCR5     at 16#4C10# range 0 .. 31;
      SYSCFG_COMBOPHYSR      at 16#4C14# range 0 .. 31;
      SYSCFG_DISPLAYCLKCR    at 16#5000# range 0 .. 31;
      SYSCFG_PCIECR          at 16#6000# range 0 .. 31;
      SYSCFG_PCIEPMEMSICR    at 16#6004# range 0 .. 31;
      SYSCFG_PCIEAERRCMSICR  at 16#6008# range 0 .. 31;
      SYSCFG_PCIESYSRCCR     at 16#600C# range 0 .. 31;
      SYSCFG_PCIEPTMIRQCR    at 16#6010# range 0 .. 31;
      SYSCFG_PCIEPRGCR       at 16#6080# range 0 .. 31;
      SYSCFG_PCIESR1         at 16#6100# range 0 .. 31;
      SYSCFG_PCIESR2         at 16#6104# range 0 .. 31;
      SYSCFG_IDC             at 16#6400# range 0 .. 31;
      SYSCFG_VERR            at 16#7FF4# range 0 .. 31;
      SYSCFG_IPIDR           at 16#7FF8# range 0 .. 31;
      SYSCFG_SIDR            at 16#7FFC# range 0 .. 31;
   end record;

   --  SYSCFG register block
   SYSCFG_Periph : aliased SYSCFG_Peripheral
     with Import, Address => SYSCFG_Base;

   --  SYSCFG register block
   SYSCFG_S_Periph : aliased SYSCFG_Peripheral
     with Import, Address => SYSCFG_S_Base;

end STM32_SVD.SYSCFG;
