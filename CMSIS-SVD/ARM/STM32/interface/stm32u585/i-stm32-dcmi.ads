--
--  Copyright (C) 2023, AdaCore
--

--  This spec has been automatically generated from STM32U585.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.DCMI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR_FCRC_Field is Interfaces.Bit_Types.UInt2;
   subtype CR_EDM_Field is Interfaces.Bit_Types.UInt2;
   subtype CR_BSM_Field is Interfaces.Bit_Types.UInt2;

   --  control register
   type CR_Register is record
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
      FCRC           : CR_FCRC_Field := 16#0#;
      --  Extended data mode
      EDM            : CR_EDM_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  DCMI enable
      ENABLE         : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Byte Select mode
      BSM            : CR_BSM_Field := 16#0#;
      --  Odd/Even Byte Select (Byte Select Start)
      OEBS           : Boolean := False;
      --  Line Select mode
      LSM            : Boolean := False;
      --  Odd/Even Line Select (Line Select Start)
      OELS           : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
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

   --  status register
   type SR_Register is record
      --  Read-only. Horizontal synchronization
      HSYNC         : Boolean;
      --  Read-only. Vertical synchronization
      VSYNC         : Boolean;
      --  Read-only. FIFO not empty
      FNE           : Boolean;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      HSYNC         at 0 range 0 .. 0;
      VSYNC         at 0 range 1 .. 1;
      FNE           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  raw interrupt status register
   type RIS_Register is record
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
      Reserved_5_31 : Interfaces.Bit_Types.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIS_Register use record
      FRAME_RIS     at 0 range 0 .. 0;
      OVR_RIS       at 0 range 1 .. 1;
      ERR_RIS       at 0 range 2 .. 2;
      VSYNC_RIS     at 0 range 3 .. 3;
      LINE_RIS      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  interrupt enable register
   type IER_Register is record
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
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      FRAME_IE      at 0 range 0 .. 0;
      OVR_IE        at 0 range 1 .. 1;
      ERR_IE        at 0 range 2 .. 2;
      VSYNC_IE      at 0 range 3 .. 3;
      LINE_IE       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  masked interrupt status register
   type MIS_Register is record
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
      Reserved_5_31 : Interfaces.Bit_Types.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIS_Register use record
      FRAME_MIS     at 0 range 0 .. 0;
      OVR_MIS       at 0 range 1 .. 1;
      ERR_MIS       at 0 range 2 .. 2;
      VSYNC_MIS     at 0 range 3 .. 3;
      LINE_MIS      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  interrupt clear register
   type ICR_Register is record
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
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      FRAME_ISC     at 0 range 0 .. 0;
      OVR_ISC       at 0 range 1 .. 1;
      ERR_ISC       at 0 range 2 .. 2;
      VSYNC_ISC     at 0 range 3 .. 3;
      LINE_ISC      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype ESCR_FSC_Field is Interfaces.Bit_Types.Byte;
   subtype ESCR_LSC_Field is Interfaces.Bit_Types.Byte;
   subtype ESCR_LEC_Field is Interfaces.Bit_Types.Byte;
   subtype ESCR_FEC_Field is Interfaces.Bit_Types.Byte;

   --  background offset register
   type ESCR_Register is record
      --  Frame start delimiter code
      FSC : ESCR_FSC_Field := 16#0#;
      --  Line start delimiter code
      LSC : ESCR_LSC_Field := 16#0#;
      --  Line end delimiter code
      LEC : ESCR_LEC_Field := 16#0#;
      --  Frame end delimiter code
      FEC : ESCR_FEC_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ESCR_Register use record
      FSC at 0 range 0 .. 7;
      LSC at 0 range 8 .. 15;
      LEC at 0 range 16 .. 23;
      FEC at 0 range 24 .. 31;
   end record;

   subtype ESUR_FSU_Field is Interfaces.Bit_Types.Byte;
   subtype ESUR_LSU_Field is Interfaces.Bit_Types.Byte;
   subtype ESUR_LEU_Field is Interfaces.Bit_Types.Byte;
   subtype ESUR_FEU_Field is Interfaces.Bit_Types.Byte;

   --  embedded synchronization unmask register
   type ESUR_Register is record
      --  Frame start delimiter unmask
      FSU : ESUR_FSU_Field := 16#0#;
      --  Line start delimiter unmask
      LSU : ESUR_LSU_Field := 16#0#;
      --  Line end delimiter unmask
      LEU : ESUR_LEU_Field := 16#0#;
      --  Frame end delimiter unmask
      FEU : ESUR_FEU_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ESUR_Register use record
      FSU at 0 range 0 .. 7;
      LSU at 0 range 8 .. 15;
      LEU at 0 range 16 .. 23;
      FEU at 0 range 24 .. 31;
   end record;

   subtype CWSTRT_HOFFCNT_Field is Interfaces.Bit_Types.UInt14;
   subtype CWSTRT_VST_Field is Interfaces.Bit_Types.UInt13;

   --  crop window start
   type CWSTRT_Register is record
      --  Horizontal offset count
      HOFFCNT        : CWSTRT_HOFFCNT_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Vertical start line count
      VST            : CWSTRT_VST_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CWSTRT_Register use record
      HOFFCNT        at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      VST            at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CWSIZE_CAPCNT_Field is Interfaces.Bit_Types.UInt14;
   subtype CWSIZE_VLINE_Field is Interfaces.Bit_Types.UInt14;

   --  crop window size
   type CWSIZE_Register is record
      --  Capture count
      CAPCNT         : CWSIZE_CAPCNT_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Vertical line count
      VLINE          : CWSIZE_VLINE_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CWSIZE_Register use record
      CAPCNT         at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      VLINE          at 0 range 16 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  DR_BYTE array element
   subtype DR_BYTE_Element is Interfaces.Bit_Types.Byte;

   --  DR_BYTE array
   type DR_BYTE_Field_Array is array (0 .. 3) of DR_BYTE_Element
     with Component_Size => 8, Size => 32;

   --  data register
   type DR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BYTE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  BYTE as an array
            Arr : DR_BYTE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Digital camera interface
   type DCMI_Peripheral is record
      --  control register
      CR     : aliased CR_Register;
      --  status register
      SR     : aliased SR_Register;
      --  raw interrupt status register
      RIS    : aliased RIS_Register;
      --  interrupt enable register
      IER    : aliased IER_Register;
      --  masked interrupt status register
      MIS    : aliased MIS_Register;
      --  interrupt clear register
      ICR    : aliased ICR_Register;
      --  background offset register
      ESCR   : aliased ESCR_Register;
      --  embedded synchronization unmask register
      ESUR   : aliased ESUR_Register;
      --  crop window start
      CWSTRT : aliased CWSTRT_Register;
      --  crop window size
      CWSIZE : aliased CWSIZE_Register;
      --  data register
      DR     : aliased DR_Register;
   end record
     with Volatile;

   for DCMI_Peripheral use record
      CR     at 16#0# range 0 .. 31;
      SR     at 16#4# range 0 .. 31;
      RIS    at 16#8# range 0 .. 31;
      IER    at 16#C# range 0 .. 31;
      MIS    at 16#10# range 0 .. 31;
      ICR    at 16#14# range 0 .. 31;
      ESCR   at 16#18# range 0 .. 31;
      ESUR   at 16#1C# range 0 .. 31;
      CWSTRT at 16#20# range 0 .. 31;
      CWSIZE at 16#24# range 0 .. 31;
      DR     at 16#28# range 0 .. 31;
   end record;

   --  Digital camera interface
   DCMI_Periph : aliased DCMI_Peripheral
     with Import, Address => DCMI_Base;

   --  Digital camera interface
   SEC_DCMI_Periph : aliased DCMI_Peripheral
     with Import, Address => SEC_DCMI_Base;

end Interfaces.STM32.DCMI;
