--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.USBH is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype USBH_EHCI_INSNREG01_IN_THRESHOLD_Field is Interfaces.Bit_Types.Byte;
   subtype USBH_EHCI_INSNREG01_OUT_THRESHOLD_Field is
     Interfaces.Bit_Types.Byte;

   --  USBH EHCI implementation register #1
   type USBH_EHCI_INSNREG01_Register is record
      --  The value specified here is the number of 32-bit words The IN
      --  threshold is used to start the memory transfer as soon as the
      --  IN_THRESHOLD amount of data is available in the packet buffer. It is
      --  also used to disconnect the data write, if the threshold amount of
      --  data is not available in the packet buffer.
      IN_THRESHOLD   : USBH_EHCI_INSNREG01_IN_THRESHOLD_Field := 16#20#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  The value specified here is the number of 32-bit words The OUT
      --  threshold is used to start the USB transfer as soon as the
      --  OUT_THRESHOLD amount of data is fetched from system memory. It is
      --  also used to disconnect the data fetch, if the required space to hold
      --  the threshold amount of data is not available in the packet buffer.
      OUT_THRESHOLD  : USBH_EHCI_INSNREG01_OUT_THRESHOLD_Field := 16#20#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBH_EHCI_INSNREG01_Register use record
      IN_THRESHOLD   at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      OUT_THRESHOLD  at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USBH_OHCI_INSNREG06_SUC_BEATS_Field is Interfaces.Bit_Types.UInt4;
   subtype USBH_OHCI_INSNREG06_EXP_BEATS_Field is Interfaces.Bit_Types.UInt5;
   subtype USBH_OHCI_INSNREG06_HBURST_Field is Interfaces.Bit_Types.UInt3;

   --  USBH OHCI implementation register #6
   type USBH_OHCI_INSNREG06_Register is record
      --  Read-only. Number of successful beats Number of successfully
      --  completed beats in the current burst before the AHB error has
      --  occurred.
      SUC_BEATS      : USBH_OHCI_INSNREG06_SUC_BEATS_Field := 16#0#;
      --  Read-only. Number of expected beats Number of beats expected in the
      --  burst where the AHB error occurred. Valid values are 0and4. Other
      --  values except 4 are not written to EXP_BEATS[4:0].
      EXP_BEATS      : USBH_OHCI_INSNREG06_EXP_BEATS_Field := 16#0#;
      --  Read-only. HBURST value of the control phase at which the AHB error
      --  occurred
      HBURST         : USBH_OHCI_INSNREG06_HBURST_Field := 16#0#;
      --  unspecified
      Reserved_12_30 : Interfaces.Bit_Types.UInt19 := 16#0#;
      --  AHB error captured Indicator that an AHB error was encountered and
      --  values were captured. To clear this field the application must write
      --  a 0 to this register.
      AHB_ECAP       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBH_OHCI_INSNREG06_Register use record
      SUC_BEATS      at 0 range 0 .. 3;
      EXP_BEATS      at 0 range 4 .. 8;
      HBURST         at 0 range 9 .. 11;
      Reserved_12_30 at 0 range 12 .. 30;
      AHB_ECAP       at 0 range 31 .. 31;
   end record;

   subtype USBH_EHCI_INSNREG02_PKT_BUF_Field is Interfaces.Bit_Types.Byte;

   --  USBH EHCI implementation register #2
   type USBH_EHCI_INSNREG02_Register is record
      --  Programmable packet buffer depth Programmable packet buffer depth.
      --  The value specified here represents the number of 32-bit words.
      --  Maximum valid packet buffer depth is 128 (32-bit words).
      PKT_BUF       : USBH_EHCI_INSNREG02_PKT_BUF_Field := 16#80#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBH_EHCI_INSNREG02_Register use record
      PKT_BUF       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype USBH_EHCI_INSNREG03_TIME_AVAIL_OFF_Field is
     Interfaces.Bit_Types.Byte;
   subtype USBH_EHCI_INSNREG03_TX_TRA_DELAY_Field is
     Interfaces.Bit_Types.UInt3;

   --  USBH EHCI implementation register #3
   type USBH_EHCI_INSNREG03_Register is record
      --  Read-only. Break memory transfer Used in conjunction with
      --  EHCI_H_INSNREG01 to enable breaking memory transactions into chunks
      --  once the OUT/IN threshold value is reached. Value is fixed to 1.
      BRK_MEM_TRANS    : Boolean := True;
      --  Time available offset This value indicates the additional number of
      --  bytes to be accommodated for the time-available calculation. The USB
      --  traffic on the bus can be started only when sufficient time is
      --  available to complete the packet within the EOF1 point. Refer to the
      --  USB 2.0 specification for details of the EOF1 point. This
      --  time-available calculation is done in the hardware, and can be
      --  further offset by programming a value in this location. Note:
      --  Time-available calculation is added for future flexibility. The
      --  application is not required to program this field by default.
      TIME_AVAIL_OFF   : USBH_EHCI_INSNREG03_TIME_AVAIL_OFF_Field := 16#0#;
      --  Setting this bit forces the host controller to fetch the periodic
      --  frame list in every microframe of a frame. If not set, then the
      --  periodic frame list is fetched only in microframe 0 of every frame.
      --  The default is 0 (not set). This bit can be changed only during core
      --  initialization and should not be changed afterwards.
      FRM_LST_FETCH    : Boolean := False;
      --  Tx-Tx turnaround delay add on This field specifies the extra delays
      --  in phy_clks to be added to the 'Transmit to Transmit turnaround
      --  delay' value maintained in the core. The default value of this
      --  register field is 0. This default value of 0 is sufficient for most
      --  PHYs. But for some PHYs that put wait states during the token packet,
      --  it may be required to program a value greater than 0 to meet the
      --  transmit to transmit minimum turnaround time. The recommendation is
      --  to use the default value of 0 and change it only if there is an issue
      --  with minimum transmit-to-transmit turnaround time. This value should
      --  be programmed during core initialization and should not be changed
      --  afterwards.
      TX_TRA_DELAY     : USBH_EHCI_INSNREG03_TX_TRA_DELAY_Field := 16#0#;
      --  TestSE NAK Ignore linestate during TestSE0 Nak When set to 1
      --  (default), the core ignores the linestate checking when transmitting
      --  SOF during the SE0_NAK test mode. When set to 0, the port state
      --  machine disables the port if it does not find the linestate to be in
      --  SE0 when transmitting SOF during the SE0_NAK testing. While doing
      --  impedance measurement during the SE0_NAK testing, the linestate can
      --  go to non SE0 forcing the core to disable the port. This bit is used
      --  to control the port behavior during this state.
      TESTSE_NAK       : Boolean := True;
      --  Enable 256 clock checking This bit controls the end of resume
      --  sequence of the EHCI host controller. By default, the value of this
      --  bit is 0 and during the end of resume sequence, the host controller
      --  waits for SE0 on the linestate before switching the PHY to
      --  high-speed. When set to 1, during the end of resume sequence, the
      --  controller waits for SE0 or 256 clocks before switching the PHY to
      --  high-speed. Setting this bit to 1, enables the 256 clock checking.
      --  Some of the UTMI PHYs do not present SE0 on the linestate during the
      --  end of resume sequence. For such PHYs, this bit should be set, so
      --  that the core does not wait forever for SE0. This bit should be set
      --  only during initialization.
      EN_CLK256_CHECK  : Boolean := False;
      --  unspecified
      Reserved_15_15   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Enable/disable enhancement for line state glitch By default this
      --  enhancement is enabled.
      ENABLE_LS_GLITCH : Boolean := True;
      --  unspecified
      Reserved_17_31   : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBH_EHCI_INSNREG03_Register use record
      BRK_MEM_TRANS    at 0 range 0 .. 0;
      TIME_AVAIL_OFF   at 0 range 1 .. 8;
      FRM_LST_FETCH    at 0 range 9 .. 9;
      TX_TRA_DELAY     at 0 range 10 .. 12;
      TESTSE_NAK       at 0 range 13 .. 13;
      EN_CLK256_CHECK  at 0 range 14 .. 14;
      Reserved_15_15   at 0 range 15 .. 15;
      ENABLE_LS_GLITCH at 0 range 16 .. 16;
      Reserved_17_31   at 0 range 17 .. 31;
   end record;

   --  USBH EHCI implementation register #4
   type USBH_EHCI_INSNREG04_Register is record
      --  When this bit is 1, the USBH_EHCI_HCSPARAMS register becomes
      --  writable.
      HCSPARAMS_WRT      : Boolean := False;
      --  When this bit is 1, the USBH_EHCI_HCCPARAMS register bits 17, 15:4,
      --  and 2:0 become writable.
      HCCPARAMS_WRT      : Boolean := False;
      --  unspecified
      Reserved_2_2       : Interfaces.Bit_Types.Bit := 16#0#;
      --  Asynchronous pipeline disable The default value is 0 (not set). If
      --  set to 1, disables the fetch control state machine to queue further
      --  transaction to the asynchronous queue head if the USB transaction is
      --  pending for the queue head.
      ASYNC_PIPELINE_DIS : Boolean := False;
      --  unspecified
      Reserved_4_4       : Interfaces.Bit_Types.Bit := 16#0#;
      --  Suspend signal For systems where the host is halted without waking up
      --  all ports out of suspend, the port can become stuck because the clock
      --  coming from the PHY is not running when the halt is programmed. To
      --  avoid this, the EHCI automatically pulls ports out of suspend when
      --  the host is halted by software. This bit is used to disable this
      --  automatic function.
      SUSPEND_SIGNAL     : Boolean := False;
      --  unspecified
      Reserved_6_31      : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBH_EHCI_INSNREG04_Register use record
      HCSPARAMS_WRT      at 0 range 0 .. 0;
      HCCPARAMS_WRT      at 0 range 1 .. 1;
      Reserved_2_2       at 0 range 2 .. 2;
      ASYNC_PIPELINE_DIS at 0 range 3 .. 3;
      Reserved_4_4       at 0 range 4 .. 4;
      SUSPEND_SIGNAL     at 0 range 5 .. 5;
      Reserved_6_31      at 0 range 6 .. 31;
   end record;

   subtype USBH_EHCI_INSNREG05_VSTATUS_Field is Interfaces.Bit_Types.Byte;
   subtype USBH_EHCI_INSNREG05_VCONTROL_Field is Interfaces.Bit_Types.UInt4;
   subtype USBH_EHCI_INSNREG05_VPORT_Field is Interfaces.Bit_Types.UInt4;

   --  USBH EHCI implementation register #5
   type USBH_EHCI_INSNREG05_Register is record
      --  Read-only. UTMI VStatus (vendor status) Refer to the UTMI
      --  specification for detailed usage.
      VSTATUS        : USBH_EHCI_INSNREG05_VSTATUS_Field := 16#0#;
      --  UTMI VCONTROL (vendor control) Vendor defined 4-bit parallel input
      --  bus. Refer to the UTMI specification for detailed usage.
      VCONTROL       : USBH_EHCI_INSNREG05_VCONTROL_Field := 16#0#;
      --  UTMI VCONTROLLoad (vendor control load) Refer to the UTMI
      --  specification for detailed usage.
      VCONTROL_LDM   : Boolean := True;
      --  UTMI VPORT VPort (read write). Valid values for write are only 1 and
      --  2. No other values should be written to this field. Supposing an
      --  illegal value, say 4, is written, any subsequent writes to this
      --  register are ignored and the read value is always the initial illegal
      --  value written (in this case4).
      VPORT          : USBH_EHCI_INSNREG05_VPORT_Field := 16#0#;
      --  Read-only. UTMI VBUSY VBusy (read only). Hardware indicator that a
      --  write to this register has occurred and the hardware is currently
      --  processing the operation defined by the data written. When processing
      --  is finished, this bit is cleared.
      VBUSY          : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBH_EHCI_INSNREG05_Register use record
      VSTATUS        at 0 range 0 .. 7;
      VCONTROL       at 0 range 8 .. 11;
      VCONTROL_LDM   at 0 range 12 .. 12;
      VPORT          at 0 range 13 .. 16;
      VBUSY          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype USBH_EHCI_INSNREG06_SUC_BEATS_Field is Interfaces.Bit_Types.UInt4;
   subtype USBH_EHCI_INSNREG06_EXP_BEATS_Field is Interfaces.Bit_Types.UInt5;
   subtype USBH_EHCI_INSNREG06_HBURST_Field is Interfaces.Bit_Types.UInt3;

   --  USBH EHCI implementation register #6
   type USBH_EHCI_INSNREG06_Register is record
      --  Read-only. Number of successful beats Number of
      --  successfully-completed beats in the current burst before the AHB
      --  error has occurred.
      SUC_BEATS      : USBH_EHCI_INSNREG06_SUC_BEATS_Field := 16#0#;
      --  Read-only. Number of expected beats Number of beats expected in the
      --  burst at which the AHB error has occurred. Valid values are 0 to 16.
      --  Other values except 4, 8, and 16 are not written to EXP_BEATS[4:0]
      EXP_BEATS      : USBH_EHCI_INSNREG06_EXP_BEATS_Field := 16#0#;
      --  Read-only. HBURST value of the control phase at which the AHB error
      --  occurred
      HBURST         : USBH_EHCI_INSNREG06_HBURST_Field := 16#0#;
      --  unspecified
      Reserved_12_30 : Interfaces.Bit_Types.UInt19 := 16#0#;
      --  AHB error captured Indicator that an AHB error was encountered and
      --  values were captured. To clear this field the application must write
      --  a 0 to this bit.
      AHB_ECAP       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBH_EHCI_INSNREG06_Register use record
      SUC_BEATS      at 0 range 0 .. 3;
      EXP_BEATS      at 0 range 4 .. 8;
      HBURST         at 0 range 9 .. 11;
      Reserved_12_30 at 0 range 12 .. 30;
      AHB_ECAP       at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type USBH_Disc is
     (Ohci_Insnreg06,
      Ehci_Insnreg02,
      Ohci_Insnreg07,
      Ehci_Insnreg03);

   --  USBH address block description
   type USBH_Peripheral
     (Discriminent : USBH_Disc := Ohci_Insnreg06)
   is record
      --  USBH EHCI implementation register #1
      USBH_EHCI_INSNREG01 : aliased USBH_EHCI_INSNREG01_Register;
      --  USBH EHCI implementation register #4
      USBH_EHCI_INSNREG04 : aliased USBH_EHCI_INSNREG04_Register;
      --  USBH EHCI implementation register #5
      USBH_EHCI_INSNREG05 : aliased USBH_EHCI_INSNREG05_Register;
      --  USBH EHCI implementation register #6
      USBH_EHCI_INSNREG06 : aliased USBH_EHCI_INSNREG06_Register;
      --  USBH EHCI implementation register #7
      USBH_EHCI_INSNREG07 : aliased Interfaces.Bit_Types.UInt32;
      case Discriminent is
         when Ohci_Insnreg06 =>
            --  USBH OHCI implementation register #6
            USBH_OHCI_INSNREG06 : aliased USBH_OHCI_INSNREG06_Register;
         when Ehci_Insnreg02 =>
            --  USBH EHCI implementation register #2
            USBH_EHCI_INSNREG02 : aliased USBH_EHCI_INSNREG02_Register;
         when Ohci_Insnreg07 =>
            --  USBH OHCI implementation register #7
            USBH_OHCI_INSNREG07 : aliased Interfaces.Bit_Types.UInt32;
         when Ehci_Insnreg03 =>
            --  USBH EHCI implementation register #3
            USBH_EHCI_INSNREG03 : aliased USBH_EHCI_INSNREG03_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USBH_Peripheral use record
      USBH_EHCI_INSNREG01 at 16#94# range 0 .. 31;
      USBH_EHCI_INSNREG04 at 16#A0# range 0 .. 31;
      USBH_EHCI_INSNREG05 at 16#A4# range 0 .. 31;
      USBH_EHCI_INSNREG06 at 16#A8# range 0 .. 31;
      USBH_EHCI_INSNREG07 at 16#AC# range 0 .. 31;
      USBH_OHCI_INSNREG06 at 16#98# range 0 .. 31;
      USBH_EHCI_INSNREG02 at 16#98# range 0 .. 31;
      USBH_OHCI_INSNREG07 at 16#9C# range 0 .. 31;
      USBH_EHCI_INSNREG03 at 16#9C# range 0 .. 31;
   end record;

   --  USBH address block description
   USBH_Periph : aliased USBH_Peripheral
     with Import, Address => USBH_Base;

   --  USBH address block description
   USBH_EHCI_S_Periph : aliased USBH_Peripheral
     with Import, Address => USBH_EHCI_S_Base;

   --  USBH address block description
   USBH_OHCI_Periph : aliased USBH_Peripheral
     with Import, Address => USBH_OHCI_Base;

   --  USBH address block description
   USBH_OHCI_S_Periph : aliased USBH_Peripheral
     with Import, Address => USBH_OHCI_S_Base;

end Interfaces.STM32.USBH;
