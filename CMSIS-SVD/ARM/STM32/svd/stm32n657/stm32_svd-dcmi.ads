--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.DCMI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DCMI_CR_FCRC_Field is HAL.UInt2;
   subtype DCMI_CR_EDM_Field is HAL.UInt2;
   subtype DCMI_CR_BSM_Field is HAL.UInt2;

   --  DCMI control register
   type DCMI_CR_Register is record
      --  Capture enable
      CAPTURE        : Boolean := False;
      --  Capture mode
      CM             : Boolean := False;
      --  Crop feature
      CROP           : Boolean := False;
      --  JPEG format
      JPEG           : Boolean := False;
      --  Embedded synchronization select
      ESS            : Boolean := False;
      --  Pixel clock polarity
      PCKPOL         : Boolean := False;
      --  Horizontal synchronization polarity
      HSPOL          : Boolean := False;
      --  Vertical synchronization polarity
      VSPOL          : Boolean := False;
      --  Frame capture rate control
      FCRC           : DCMI_CR_FCRC_Field := 16#0#;
      --  Extended data mode
      EDM            : DCMI_CR_EDM_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  DCMI enable
      ENABLE         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Byte Select mode
      BSM            : DCMI_CR_BSM_Field := 16#0#;
      --  Odd/Even Byte Select (Byte Select Start)
      OEBS           : Boolean := False;
      --  Line Select mode
      LSM            : Boolean := False;
      --  Odd/Even Line Select (Line Select Start)
      OELS           : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMI_CR_Register use record
      CAPTURE        at 0 range 0 .. 0;
      CM             at 0 range 1 .. 1;
      CROP           at 0 range 2 .. 2;
      JPEG           at 0 range 3 .. 3;
      ESS            at 0 range 4 .. 4;
      PCKPOL         at 0 range 5 .. 5;
      HSPOL          at 0 range 6 .. 6;
      VSPOL          at 0 range 7 .. 7;
      FCRC           at 0 range 8 .. 9;
      EDM            at 0 range 10 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      ENABLE         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      BSM            at 0 range 16 .. 17;
      OEBS           at 0 range 18 .. 18;
      LSM            at 0 range 19 .. 19;
      OELS           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  DCMI status register
   type DCMI_SR_Register is record
      --  Read-only. Horizontal synchronization
      HSYNC         : Boolean;
      --  Read-only. Vertical synchronization
      VSYNC         : Boolean;
      --  Read-only. FIFO not empty
      FNE           : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMI_SR_Register use record
      HSYNC         at 0 range 0 .. 0;
      VSYNC         at 0 range 1 .. 1;
      FNE           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  DCMI raw interrupt status register
   type DCMI_RIS_Register is record
      --  Read-only. Capture complete raw interrupt status
      FRAME_RIS     : Boolean;
      --  Read-only. Overrun raw interrupt status
      OVR_RIS       : Boolean;
      --  Read-only. Synchronization error raw interrupt status
      ERR_RIS       : Boolean;
      --  Read-only. DCMI_VSYNC raw interrupt status
      VSYNC_RIS     : Boolean;
      --  Read-only. Line raw interrupt status
      LINE_RIS      : Boolean;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMI_RIS_Register use record
      FRAME_RIS     at 0 range 0 .. 0;
      OVR_RIS       at 0 range 1 .. 1;
      ERR_RIS       at 0 range 2 .. 2;
      VSYNC_RIS     at 0 range 3 .. 3;
      LINE_RIS      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  DCMI interrupt enable register
   type DCMI_IER_Register is record
      --  Capture complete interrupt enable
      FRAME_IE      : Boolean := False;
      --  Overrun interrupt enable
      OVR_IE        : Boolean := False;
      --  Synchronization error interrupt enable
      ERR_IE        : Boolean := False;
      --  DCMI_VSYNC interrupt enable
      VSYNC_IE      : Boolean := False;
      --  Line interrupt enable
      LINE_IE       : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMI_IER_Register use record
      FRAME_IE      at 0 range 0 .. 0;
      OVR_IE        at 0 range 1 .. 1;
      ERR_IE        at 0 range 2 .. 2;
      VSYNC_IE      at 0 range 3 .. 3;
      LINE_IE       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  DCMI masked interrupt status register
   type DCMI_MIS_Register is record
      --  Read-only. Capture complete masked interrupt status
      FRAME_MIS     : Boolean;
      --  Read-only. Overrun masked interrupt status
      OVR_MIS       : Boolean;
      --  Read-only. Synchronization error masked interrupt status
      ERR_MIS       : Boolean;
      --  Read-only. VSYNC masked interrupt status
      VSYNC_MIS     : Boolean;
      --  Read-only. Line masked interrupt status
      LINE_MIS      : Boolean;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMI_MIS_Register use record
      FRAME_MIS     at 0 range 0 .. 0;
      OVR_MIS       at 0 range 1 .. 1;
      ERR_MIS       at 0 range 2 .. 2;
      VSYNC_MIS     at 0 range 3 .. 3;
      LINE_MIS      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  DCMI interrupt clear register
   type DCMI_ICR_Register is record
      --  Write-only. Capture complete interrupt status clear
      FRAME_ISC     : Boolean := False;
      --  Write-only. Overrun interrupt status clear
      OVR_ISC       : Boolean := False;
      --  Write-only. Synchronization error interrupt status clear
      ERR_ISC       : Boolean := False;
      --  Write-only. Vertical Synchronization interrupt status clear
      VSYNC_ISC     : Boolean := False;
      --  Write-only. line interrupt status clear
      LINE_ISC      : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMI_ICR_Register use record
      FRAME_ISC     at 0 range 0 .. 0;
      OVR_ISC       at 0 range 1 .. 1;
      ERR_ISC       at 0 range 2 .. 2;
      VSYNC_ISC     at 0 range 3 .. 3;
      LINE_ISC      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DCMI_ESCR_FSC_Field is HAL.UInt8;
   subtype DCMI_ESCR_LSC_Field is HAL.UInt8;
   subtype DCMI_ESCR_LEC_Field is HAL.UInt8;
   subtype DCMI_ESCR_FEC_Field is HAL.UInt8;

   --  DCMI embedded synchronization code register
   type DCMI_ESCR_Register is record
      --  Frame start delimiter code
      FSC : DCMI_ESCR_FSC_Field := 16#0#;
      --  Line start delimiter code
      LSC : DCMI_ESCR_LSC_Field := 16#0#;
      --  Line end delimiter code
      LEC : DCMI_ESCR_LEC_Field := 16#0#;
      --  Frame end delimiter code
      FEC : DCMI_ESCR_FEC_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMI_ESCR_Register use record
      FSC at 0 range 0 .. 7;
      LSC at 0 range 8 .. 15;
      LEC at 0 range 16 .. 23;
      FEC at 0 range 24 .. 31;
   end record;

   subtype DCMI_ESUR_FSU_Field is HAL.UInt8;
   subtype DCMI_ESUR_LSU_Field is HAL.UInt8;
   subtype DCMI_ESUR_LEU_Field is HAL.UInt8;
   subtype DCMI_ESUR_FEU_Field is HAL.UInt8;

   --  DCMI embedded synchronization unmask register
   type DCMI_ESUR_Register is record
      --  Frame start delimiter unmask
      FSU : DCMI_ESUR_FSU_Field := 16#0#;
      --  Line start delimiter unmask
      LSU : DCMI_ESUR_LSU_Field := 16#0#;
      --  Line end delimiter unmask
      LEU : DCMI_ESUR_LEU_Field := 16#0#;
      --  Frame end delimiter unmask
      FEU : DCMI_ESUR_FEU_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMI_ESUR_Register use record
      FSU at 0 range 0 .. 7;
      LSU at 0 range 8 .. 15;
      LEU at 0 range 16 .. 23;
      FEU at 0 range 24 .. 31;
   end record;

   subtype DCMI_CWSTRT_HOFFCNT_Field is HAL.UInt14;
   subtype DCMI_CWSTRT_VST_Field is HAL.UInt13;

   --  DCMI crop window start
   type DCMI_CWSTRT_Register is record
      --  Horizontal offset count
      HOFFCNT        : DCMI_CWSTRT_HOFFCNT_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Vertical start line count
      VST            : DCMI_CWSTRT_VST_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMI_CWSTRT_Register use record
      HOFFCNT        at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      VST            at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DCMI_CWSIZE_CAPCNT_Field is HAL.UInt14;
   subtype DCMI_CWSIZE_VLINE_Field is HAL.UInt14;

   --  DCMI crop window size
   type DCMI_CWSIZE_Register is record
      --  Capture count
      CAPCNT         : DCMI_CWSIZE_CAPCNT_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Vertical line count
      VLINE          : DCMI_CWSIZE_VLINE_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMI_CWSIZE_Register use record
      CAPCNT         at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      VLINE          at 0 range 16 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  DCMI_DR_BYTE array element
   subtype DCMI_DR_BYTE_Element is HAL.UInt8;

   --  DCMI_DR_BYTE array
   type DCMI_DR_BYTE_Field_Array is array (0 .. 3) of DCMI_DR_BYTE_Element
     with Component_Size => 8, Size => 32;

   --  DCMI data register
   type DCMI_DR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BYTE as a value
            Val : HAL.UInt32;
         when True =>
            --  BYTE as an array
            Arr : DCMI_DR_BYTE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMI_DR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Digital camera interface
   type DCMI_Peripheral is record
      --  DCMI control register
      DCMI_CR     : aliased DCMI_CR_Register;
      --  DCMI status register
      DCMI_SR     : aliased DCMI_SR_Register;
      --  DCMI raw interrupt status register
      DCMI_RIS    : aliased DCMI_RIS_Register;
      --  DCMI interrupt enable register
      DCMI_IER    : aliased DCMI_IER_Register;
      --  DCMI masked interrupt status register
      DCMI_MIS    : aliased DCMI_MIS_Register;
      --  DCMI interrupt clear register
      DCMI_ICR    : aliased DCMI_ICR_Register;
      --  DCMI embedded synchronization code register
      DCMI_ESCR   : aliased DCMI_ESCR_Register;
      --  DCMI embedded synchronization unmask register
      DCMI_ESUR   : aliased DCMI_ESUR_Register;
      --  DCMI crop window start
      DCMI_CWSTRT : aliased DCMI_CWSTRT_Register;
      --  DCMI crop window size
      DCMI_CWSIZE : aliased DCMI_CWSIZE_Register;
      --  DCMI data register
      DCMI_DR     : aliased DCMI_DR_Register;
   end record
     with Volatile;

   for DCMI_Peripheral use record
      DCMI_CR     at 16#0# range 0 .. 31;
      DCMI_SR     at 16#4# range 0 .. 31;
      DCMI_RIS    at 16#8# range 0 .. 31;
      DCMI_IER    at 16#C# range 0 .. 31;
      DCMI_MIS    at 16#10# range 0 .. 31;
      DCMI_ICR    at 16#14# range 0 .. 31;
      DCMI_ESCR   at 16#18# range 0 .. 31;
      DCMI_ESUR   at 16#1C# range 0 .. 31;
      DCMI_CWSTRT at 16#20# range 0 .. 31;
      DCMI_CWSIZE at 16#24# range 0 .. 31;
      DCMI_DR     at 16#28# range 0 .. 31;
   end record;

   --  Digital camera interface
   DCMI_Periph : aliased DCMI_Peripheral
     with Import, Address => DCMI_Base;

   --  Digital camera interface
   DCMI_S_Periph : aliased DCMI_Peripheral
     with Import, Address => DCMI_S_Base;

end STM32_SVD.DCMI;
