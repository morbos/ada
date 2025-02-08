--  This spec has been automatically generated from STM32MP25_CM33.svd

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
      --  Capture enable The camera interface waits for the first start of
      --  frame, then a DMA request is generated to transfer the received data
      --  into the destination memory. In snapshot mode, the CAPTURE bit is
      --  automatically cleared at the end of the first frame received. In
      --  continuous grab mode, if the software clears this bit while a capture
      --  is ongoing, the bit is effectively cleared after the frame end. Note:
      --  The DMA controller and all DCMI configuration registers must be
      --  programmed correctly before enabling this bit.
      CAPTURE        : Boolean := False;
      --  Capture mode
      CM             : Boolean := False;
      --  Crop feature
      CROP           : Boolean := False;
      --  JPEG format
      JPEG           : Boolean := False;
      --  Embedded synchronization select Note: Valid only for 8-bit parallel
      --  data. HSPOL/VSPOL are ignored when the ESS bit is set. This bit is
      --  disabled in JPEG mode.
      ESS            : Boolean := False;
      --  Pixel clock polarity This bit configures the capture edge of the
      --  pixel clock.
      PCKPOL         : Boolean := False;
      --  Horizontal synchronization polarity This bit indicates the level on
      --  the DCMI_HSYNC pin when the data are not valid on the parallel
      --  interface.
      HSPOL          : Boolean := False;
      --  Vertical synchronization polarity This bit indicates the level on the
      --  DCMI_VSYNC pin when the data are not valid on the parallel interface.
      VSPOL          : Boolean := False;
      --  Frame capture rate control These bits define the frequency of frame
      --  capture. They are meaningful only in Continuous grab mode. They are
      --  ignored in snapshot mode.
      FCRC           : DCMI_CR_FCRC_Field := 16#0#;
      --  Extended data mode
      EDM            : DCMI_CR_EDM_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  DCMI enable Note: The DCMI configuration registers must be programmed
      --  correctly before enabling this bit.
      ENABLE         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Byte Select mode Note: This mode only works for EDM[1:0]=00. For all
      --  other EDM values, this field must be programmed to the reset value.
      BSM            : DCMI_CR_BSM_Field := 16#0#;
      --  Odd/Even Byte Select (Byte Select Start) This bit works in
      --  conjunction with BSM field (BSM different 00).
      OEBS           : Boolean := False;
      --  Line Select mode
      LSM            : Boolean := False;
      --  Odd/Even Line Select (Line Select Start) This bit works in
      --  conjunction with the LSM field (LSM = 1).
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
      --  Read-only. Horizontal synchronization This bit gives the state of the
      --  DCMI_HSYNC pin with the correct programmed polarity. When embedded
      --  synchronization codes are used, the meaning of this bit is the
      --  following: In case of embedded synchronization, this bit is
      --  meaningful only if the CAPTURE bit in DCMI_CR is set.
      HSYNC         : Boolean;
      --  Read-only. Vertical synchronization This bit gives the state of the
      --  DCMI_VSYNC pin with the correct programmed polarity. When embedded
      --  synchronization codes are used, the meaning of this bit is the
      --  following: In case of embedded synchronization, this bit is
      --  meaningful only if the CAPTURE bit in DCMI_CR is set.
      VSYNC         : Boolean;
      --  Read-only. FIFO not empty This bit gives the status of the FIFO.
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
      --  Read-only. Capture complete raw interrupt status This bit is set when
      --  a frame or window has been captured. In case of a cropped window,
      --  this bit is set at the end of line of the last line in the crop. It
      --  is set even if the captured frame is empty (for example window
      --  cropped outside the frame). The bit is cleared by setting the
      --  FRAME_ISC bit of the DCMI_ICR register.
      FRAME_RIS     : Boolean;
      --  Read-only. Overrun raw interrupt status The bit is cleared by setting
      --  the OVR_ISC bit of the DCMI_ICR register.
      OVR_RIS       : Boolean;
      --  Read-only. Synchronization error raw interrupt status This bit is
      --  valid only in the embedded synchronization mode. It is cleared by
      --  setting the ERR_ISC bit of the DCMI_ICR register. Note: This bit is
      --  available only in embedded synchronization mode.
      ERR_RIS       : Boolean;
      --  Read-only. DCMI_VSYNC raw interrupt status This bit is set when the
      --  DCMI_VSYNC signal changes from the inactive state to the active
      --  state. In the case of embedded synchronization, this bit is set only
      --  if the CAPTURE bit is set in DCMI_CR. It is cleared by setting the
      --  VSYNC_ISC bit of the DCMI_ICR register.
      VSYNC_RIS     : Boolean;
      --  Read-only. Line raw interrupt status This bit gets set when the
      --  DCMI_HSYNC signal changes from the inactive state to the active
      --  state. It goes high even if the line is not valid. In the case of
      --  embedded synchronization, this bit is set only if the CAPTURE bit in
      --  DCMI_CR is set. It is cleared by setting the LINE_ISC bit of the
      --  DCMI_ICR register.
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
      --  Synchronization error interrupt enable Note: This bit is available
      --  only in embedded synchronization mode.
      ERR_IE        : Boolean := False;
      --  DCMI_VSYNC interrupt enable The active state of the DCMI_VSYNC signal
      --  is defined by the VSPOL bit.
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
      --  Read-only. Capture complete masked interrupt status This bit gives
      --  the status of the masked capture complete interrupt
      FRAME_MIS     : Boolean;
      --  Read-only. Overrun masked interrupt status This bit gives the status
      --  of the masked overflow interrupt.
      OVR_MIS       : Boolean;
      --  Read-only. Synchronization error masked interrupt status This bit
      --  gives the status of the masked synchronization error interrupt. Note:
      --  This bit is available only in embedded synchronization mode.
      ERR_MIS       : Boolean;
      --  Read-only. VSYNC masked interrupt status This bit gives the status of
      --  the masked VSYNC interrupt. The active state of the DCMI_VSYNC signal
      --  is defined by the VSPOL bit.
      VSYNC_MIS     : Boolean;
      --  Read-only. Line masked interrupt status This bit gives the status of
      --  the masked line interrupt.
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
      --  Write-only. Capture complete interrupt status clear Setting this bit
      --  clears the FRAME_RIS flag in the DCMI_RIS register.
      FRAME_ISC     : Boolean := False;
      --  Write-only. Overrun interrupt status clear Setting this bit clears
      --  the OVR_RIS flag in the DCMI_RIS register.
      OVR_ISC       : Boolean := False;
      --  Write-only. Synchronization error interrupt status clear Setting this
      --  bit clears the ERR_RIS flag in the DCMI_RIS register. Note: This bit
      --  is available only in embedded synchronization mode.
      ERR_ISC       : Boolean := False;
      --  Write-only. Vertical Synchronization interrupt status clear Setting
      --  this bit clears the VSYNC_RIS flag in the DCMI_RIS register.
      VSYNC_ISC     : Boolean := False;
      --  Write-only. line interrupt status clear Setting this bit clears the
      --  LINE_RIS flag in the DCMI_RIS register.
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
      --  Frame start delimiter code This byte specifies the code of the frame
      --  start delimiter. The code consists of 4 bytes in the form of 0xFF,
      --  0x00, 0x00, FSC. If FSC is programmed to 0xFF, no frame start
      --  delimiter is detected. But, the first occurrence of LSC after an FEC
      --  code is interpreted as a start of frame delimiter.
      FSC : DCMI_ESCR_FSC_Field := 16#0#;
      --  Line start delimiter code This byte specifies the code of the line
      --  start delimiter. The code consists of 4 bytes in the form of 0xFF,
      --  0x00, 0x00, LSC.
      LSC : DCMI_ESCR_LSC_Field := 16#0#;
      --  Line end delimiter code This byte specifies the code of the line end
      --  delimiter. The code consists of 4 bytes in the form of 0xFF, 0x00,
      --  0x00, LEC.
      LEC : DCMI_ESCR_LEC_Field := 16#0#;
      --  Frame end delimiter code This byte specifies the code of the frame
      --  end delimiter. The code consists of 4 bytes in the form of 0xFF,
      --  0x00, 0x00, FEC. If FEC is programmed to 0xFF, all the unused codes
      --  (0xFF0000XY) are interpreted as frame end delimiters.
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
      --  Frame start delimiter unmask This byte specifies the mask to be
      --  applied to the code of the frame start delimiter.
      FSU : DCMI_ESUR_FSU_Field := 16#0#;
      --  Line start delimiter unmask This byte specifies the mask to be
      --  applied to the code of the line start delimiter.
      LSU : DCMI_ESUR_LSU_Field := 16#0#;
      --  Line end delimiter unmask This byte specifies the mask to be applied
      --  to the code of the line end delimiter.
      LEU : DCMI_ESUR_LEU_Field := 16#0#;
      --  Frame end delimiter unmask This byte specifies the mask to be applied
      --  to the code of the frame end delimiter.
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
      --  Horizontal offset count This value gives the number of pixel clocks
      --  to count before starting a capture.
      HOFFCNT        : DCMI_CWSTRT_HOFFCNT_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Vertical start line count The image capture starts with this line
      --  number. Previous line data are ignored. ....
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
      --  Capture count This value gives the number of pixel clocks to be
      --  captured from the starting point on the same line. It value must
      --  corresponds to word-aligned data for different widths of parallel
      --  interfaces. ....
      CAPCNT         : DCMI_CWSIZE_CAPCNT_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Vertical line count This value gives the number of lines to be
      --  captured from the starting point. ....
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

   subtype DCMI_HWCFGR_FIFO_8_Field is HAL.UInt4;

   --  DCMI hardware configuration register
   type DCMI_HWCFGR_Register is record
      --  Read-only. FIFO size
      FIFO_8        : DCMI_HWCFGR_FIFO_8_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMI_HWCFGR_Register use record
      FIFO_8        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DCMI_VERR_MINREV_Field is HAL.UInt4;
   subtype DCMI_VERR_MAJREV_Field is HAL.UInt4;

   --  DCMI version register
   type DCMI_VERR_Register is record
      --  Read-only. IP version, minor revision information
      MINREV        : DCMI_VERR_MINREV_Field;
      --  Read-only. IP version, major revision information
      MAJREV        : DCMI_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCMI_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DCMI address block description
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
      --  DCMI hardware configuration register
      DCMI_HWCFGR : aliased DCMI_HWCFGR_Register;
      --  DCMI version register
      DCMI_VERR   : aliased DCMI_VERR_Register;
      --  DCMI identification register
      DCMI_IPIDR  : aliased HAL.UInt32;
      --  DCMI size identification register
      DCMI_SIDR   : aliased HAL.UInt32;
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
      DCMI_HWCFGR at 16#3F0# range 0 .. 31;
      DCMI_VERR   at 16#3F4# range 0 .. 31;
      DCMI_IPIDR  at 16#3F8# range 0 .. 31;
      DCMI_SIDR   at 16#3FC# range 0 .. 31;
   end record;

   --  DCMI address block description
   DCMI_Periph : aliased DCMI_Peripheral
     with Import, Address => DCMI_Base;

   --  DCMI address block description
   DCMI_S_Periph : aliased DCMI_Peripheral
     with Import, Address => DCMI_S_Base;

end STM32_SVD.DCMI;
