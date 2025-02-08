--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.USB3DR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype USB3DR_GBL_GSBUSCFG0_DESWRREQINFO_Field is HAL.UInt4;
   subtype USB3DR_GBL_GSBUSCFG0_DATWRREQINFO_Field is HAL.UInt4;
   subtype USB3DR_GBL_GSBUSCFG0_DESRDREQINFO_Field is HAL.UInt4;
   subtype USB3DR_GBL_GSBUSCFG0_DATRDREQINFO_Field is HAL.UInt4;

   --  USB3DR global device bus configuration register 0
   type USB3DR_GBL_GSBUSCFG0_Register is record
      --  Undefined length INCR burst type enable (INCRBrstEna) Input to BUS-GM
      --  This bit determines the set of burst lengths the master interface
      --  uses. It works in conjunction with GSBUSCFG0[7:1]
      --  (INCR256/128/64/32/16/8/4). HBURST (for AHB configurations) and
      --  ARLEN/AWLEN (for AXI configurations) do not use INCR except in case
      --  of non-aligned burst transfers. In the case of address-aligned
      --  transfers, they use only the following burst lengths: 1 4 (if
      --  GSBUSCFG0.INCR4BrstEna=1) 8 (if GSBUSCFG0.INCR8BrstEna=1) 16 (if
      --  GSBUSCFG0.INCR16BrstEna=1) 32 (if GSBUSCFG0.INCR32BrstEna=1) 64 (if
      --  GSBUSCFG0.INCR64BrstEna=1) 128 (if GSBUSCFG0.INCR128BrstEna=1) 256
      --  (if GSBUSCFG0.INCR256BrstEna=1) Note: In case of non-address-aligned
      --  transfers, INCR may get generated at the beginning and end of the
      --  transfers to align the address boundaries, even though INCR is
      --  disabled. Note: In AHB mode, if INCRX burst mode is enabled, but none
      --  of the supported INCRx bursts bits are enabled, then the controller
      --  performs (undefined length) INCR bursts. AHB configurations: HBURST
      --  uses SINGLE or INCR of any length with handling 1KB boundary breakup.
      --  AXI configurations: ARLEN/AWLEN uses any length less than or equal to
      --  the largest-enabled burst length of INCR32/64/128/256. For cache
      --  line-aligned applications, this bit is typically set to 0 to ensure
      --  that the master interface uses only power-of-2 burst lengths (as
      --  enabled via GSBUSCFG0[7:0]).
      INCRBRSTENA    : Boolean := True;
      --  INCR4 burst type enable Input to BUS-GM. For the AXI configuration,
      --  when this bit is enabled the controller is allowed to do bursts of
      --  beat length 1, 2, 3, and 4. It is highly recommended that this bit is
      --  enabled to prevent descriptor reads and writes from being broken up
      --  into separate transfers.
      INCR4BRSTENA   : Boolean := False;
      --  INCR8 burst type enable Input to BUS-GM. For the AHB/AXI
      --  configuration, if software sets this bit to 1, the AHB/AXI master
      --  uses INCR to do the 8-beat burst.
      INCR8BRSTENA   : Boolean := False;
      --  INCR16 burst type enable Input to BUS-GM. For the AHB/AXI
      --  configuration, if software sets this bit to 1, the AHB/AXI master
      --  uses INCR to do the 16-beat burst.
      INCR16BRSTENA  : Boolean := True;
      --  INCR32 burst type enable Input to BUS-GM. For the AHB/AXI
      --  configuration, if software sets this bit to 1, the AHB/AXI master
      --  uses INCR to do the 32-beat burst.
      INCR32BRSTENA  : Boolean := False;
      --  INCR64 burst type enable Input to BUS-GM. For the AHB/AXI
      --  configuration, if software sets this bit to 1, the AHB/AXI master
      --  uses INCR to do the 64-beat burst.
      INCR64BRSTENA  : Boolean := False;
      --  INCR128 burst type enable Input to BUS-GM; For the AHB/AXI
      --  configuration, if software sets this bit to 1, the AHB/AXI master
      --  uses INCR to do the 128-beat burst.
      INCR128BRSTENA : Boolean := False;
      --  INCR256 burst type enable Input to BUS-GM. For the AHB/AXI
      --  configuration, if software sets this bit to 1, the AHB/AXI master
      --  uses INCR to do the 256-beat burst.
      INCR256BRSTENA : Boolean := False;
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  Descriptor access is big endian This bit controls the endian mode for
      --  descriptor accesses. In big endian mode, both read and write DMA
      --  accesses for descriptors use a Byte Invariant Big-Endian mode. in the
      --  following cases, data are considered as 'embedded data' in the
      --  descriptors: Device mode: the buffer pointer of a setup TRB points to
      --  the setup TRB itself. Host mode: the immediate data (IDT) bit in a
      --  transfer TRB is set to 1. In device mode, if the system uses
      --  different endian modes for descriptor and data, software must not use
      --  'embedded' data. In host mode, if the system uses different endian
      --  modes for data and descriptors, the controller treats 'embedded data'
      --  as descriptor (not as data) in terms of endian mode handling. If this
      --  is not the expectation of the system, the software must manipulate
      --  the 'embedded data' accordingly. Note: Since AXI requires byte
      --  invariant endianness, setting DescBigend and DatBigEnd to 1 causes an
      --  address invariant transform to be applied, which is not appropriate.
      --  See [AXI]. Hence for an AXI master (USB3DR_MBUS_TYPE=1), this bit
      --  must be set to zero.
      DESBIGEND      : Boolean := False;
      --  Data access is big endian This bit controls the endian mode for data
      --  accesses. In big endian mode, both read and write DMA accesses for
      --  packet data use a Byte Invariant Big-Endian mode. Note: Since AXI
      --  requires byte invariant endianness, setting DescBigend and DatBigEnd
      --  to one causes an address invariant transform to be applied, which is
      --  not appropriate. See [AXI]. Hence for an AXI master
      --  (USB3DR_MBUS_TYPE=1), this bit must be set to zero.
      DATBIGEND      : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  AHB-prot/AXI-cache/OCP-ReqInfo for descriptor write (DesWrReqInfo).
      --  Input to BUS-GM.
      DESWRREQINFO   : USB3DR_GBL_GSBUSCFG0_DESWRREQINFO_Field := 16#0#;
      --  AHB-prot/AXI-cache/OCP-ReqInfo for data write (DatWrReqInfo) Input to
      --  BUS-GM.
      DATWRREQINFO   : USB3DR_GBL_GSBUSCFG0_DATWRREQINFO_Field := 16#0#;
      --  AHB-prot/AXI-cache/OCP-ReqInfo for descriptor read (DesRdReqInfo)
      --  Input to BUS-GM.
      DESRDREQINFO   : USB3DR_GBL_GSBUSCFG0_DESRDREQINFO_Field := 16#0#;
      --  AHB-prot/AXI-cache/OCP-ReqInfo for data read (DatRdReqInfo) Input to
      --  BUS-GM.
      DATRDREQINFO   : USB3DR_GBL_GSBUSCFG0_DATRDREQINFO_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GSBUSCFG0_Register use record
      INCRBRSTENA    at 0 range 0 .. 0;
      INCR4BRSTENA   at 0 range 1 .. 1;
      INCR8BRSTENA   at 0 range 2 .. 2;
      INCR16BRSTENA  at 0 range 3 .. 3;
      INCR32BRSTENA  at 0 range 4 .. 4;
      INCR64BRSTENA  at 0 range 5 .. 5;
      INCR128BRSTENA at 0 range 6 .. 6;
      INCR256BRSTENA at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      DESBIGEND      at 0 range 10 .. 10;
      DATBIGEND      at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DESWRREQINFO   at 0 range 16 .. 19;
      DATWRREQINFO   at 0 range 20 .. 23;
      DESRDREQINFO   at 0 range 24 .. 27;
      DATRDREQINFO   at 0 range 28 .. 31;
   end record;

   subtype USB3DR_GBL_GSBUSCFG1_PIPETRANSLIMIT_Field is HAL.UInt4;

   --  USB3DR global bus configuration register 1
   type USB3DR_GBL_GSBUSCFG1_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  AXI pipelined transfers burst request limit The field controls the
      --  number of outstanding pipelined transfer requests the AXI master
      --  pushes to the AXI slave. When the AXI master reaches this limit, it
      --  does not make any more requests on the AXI ARADDR and AWADDR buses
      --  until the associated data phases complete. This field is encoded as
      --  follows: ...
      PIPETRANSLIMIT : USB3DR_GBL_GSBUSCFG1_PIPETRANSLIMIT_Field := 16#3#;
      --  1K page boundary enable By default (this bit is disabled) the AXI
      --  breaks transfers at the 4K page boundary. When this bit is enabled,
      --  the AXI master (DMA data) breaks transfers at the 1K page boundary.
      EN1KPAGE       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GSBUSCFG1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PIPETRANSLIMIT at 0 range 8 .. 11;
      EN1KPAGE       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype USB3DR_GBL_GTXTHRCFG_USBMAXTXBURSTSIZE_Field is HAL.UInt8;
   subtype USB3DR_GBL_GTXTHRCFG_USBTXPKTCNT_Field is HAL.UInt4;

   --  USB3DR global TX threshold control register
   type USB3DR_GBL_GTXTHRCFG_Register is record
      --  unspecified
      Reserved_0_15     : HAL.UInt16 := 16#0#;
      --  USB maximum TX burst size When UsbTxPktCntSel is 1, this field
      --  specifies the maximum bulk OUT burst the core can do. When the system
      --  bus is slower than the USB, TX FIFO can underrun during a long burst.
      --  User can program a smaller value to this field to limit the TX burst
      --  size that the core can do. Host mode: It only applies to SS bulk,
      --  isochronous, and Interrupt OUT endpoints. Device mode: This value is
      --  not used in device mode, but users need to program a value when using
      --  the TX threshold feature to make sure that the value programmed in
      --  UsbTxPktCnt is less than this value. Valid values are from 1 to 16.
      USBMAXTXBURSTSIZE : USB3DR_GBL_GTXTHRCFG_USBMAXTXBURSTSIZE_Field :=
                           16#0#;
      --  USB transmit packet count This field specifies the number of packets
      --  that must be in the TXFIFO before the core can start transmission for
      --  the corresponding USB transaction (burst). This field is only valid
      --  when the USB transmit packet count enable field is set to one. Valid
      --  values are from 1 to 15. Note: In device mode, if device controller
      --  does not have the TRBs for the number of packets or if it cannot
      --  fetch the TRBs because of high latency or switching between other
      --  endpoints, then it does not wait for the threshold number of packets.
      --  The threshold number of packets is honored only when the TRBs are
      --  available in the controller for the number of packets before it
      --  starts the data fetch. This field must be less than or equal to the
      --  USB maximum TX burst size field.
      USBTXPKTCNT       : USB3DR_GBL_GTXTHRCFG_USBTXPKTCNT_Field := 16#0#;
      --  unspecified
      Reserved_28_28    : HAL.Bit := 16#0#;
      --  USB transmit packet count enable This field enables/disables the USB
      --  transmission multi-packet thresholding:
      USBTXPKTCNTSEL    : Boolean := False;
      --  unspecified
      Reserved_30_31    : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GTXTHRCFG_Register use record
      Reserved_0_15     at 0 range 0 .. 15;
      USBMAXTXBURSTSIZE at 0 range 16 .. 23;
      USBTXPKTCNT       at 0 range 24 .. 27;
      Reserved_28_28    at 0 range 28 .. 28;
      USBTXPKTCNTSEL    at 0 range 29 .. 29;
      Reserved_30_31    at 0 range 30 .. 31;
   end record;

   subtype USB3DR_GBL_GRXTHRCFG_RESVISOCOUTSPC_Field is HAL.UInt13;
   subtype USB3DR_GBL_GRXTHRCFG_USBMAXRXBURSTSIZE_Field is HAL.UInt5;
   subtype USB3DR_GBL_GRXTHRCFG_USBRXPKTCNT_Field is HAL.UInt4;

   --  USB3DR global RX threshold control register
   type USB3DR_GBL_GRXTHRCFG_Register is record
      --  Space reserved in RX FIFO for ISOC OUT In host mode, this field is
      --  not applicable and must be programmed to 0. In device mode, this
      --  value represents the amount of space to be reserved for ISOC OUT
      --  packets. The value to be programmed should be chosen so as to ensure
      --  that non ISOC packets are not completely dropped. If no space needs
      --  to be reserved for ISOC OUT packets, program this field to 0. This
      --  field is valid only in device mode. The maximum configurable depth of
      --  RX FIFO is 8192. Therefore, this field is 13 bits wide. The value of
      --  space reserved is in terms of USB3DR_MDWIDTH. For SS, the space
      --  reservation is always rounded off to the nearest packet boundary.
      --  Therefore, it is always recommended to program a value corresponding
      --  to MPS or its multiples. For HS/FS, the space reservation is the
      --  actual value. Note: For SS, reserve space for ISOC when the RX FIFO
      --  space can accommodate two MPS or more. Otherwise, this may result in
      --  degraded performance for non-ISOC packets. If the space is entirely
      --  allocated for ISOC, the non-ISOC packets are completely dropped.
      RESVISOCOUTSPC    : USB3DR_GBL_GRXTHRCFG_RESVISOCOUTSPC_Field := 16#0#;
      --  unspecified
      Reserved_13_18    : HAL.UInt6 := 16#0#;
      --  USB maximum receive burst size In host mode, this field specifies the
      --  maximum bulk IN burst the USB3DR can perform. When the system bus is
      --  slower than the USB, RX FIFO can overrun during a long burst. A
      --  smaller value can be programmed to this field to limit the RX burst
      --  size that the core can perform. It only applies to SS bulk,
      --  isochronous, and interrupt IN endpoints in the host mode. In device
      --  mode, this field specifies the NUMP value that is sent in ERDY for an
      --  OUT endpoint. The programmed value should not exceed the RXFIFO size.
      --  This field is valid only when UsbRxPktCntSel is one. The valid values
      --  for this field are from 1 to 16.
      USBMAXRXBURSTSIZE : USB3DR_GBL_GRXTHRCFG_USBMAXRXBURSTSIZE_Field :=
                           16#0#;
      --  USB receive packet count In host mode, this field specifies the space
      --  (in terms of number of packets) that must be available in the RX FIFO
      --  before the core can start the corresponding USB RX transaction
      --  (burst). In device mode, this field specifies the space (in terms of
      --  number of packets) that must be available in the RX FIFO before the
      --  core can send ERDY for a flow-controlled endpoint. This field is
      --  valid only when the USB receive packet count enable field is set to
      --  1. The valid values for this field are from 1 to 15. Note: This field
      --  must be less than or equal to the USB maximum receive burst size
      --  field.
      USBRXPKTCNT       : USB3DR_GBL_GRXTHRCFG_USBRXPKTCNT_Field := 16#0#;
      --  unspecified
      Reserved_28_28    : HAL.Bit := 16#0#;
      --  USB receive packet count enable This field enables/disables the USB
      --  reception multi-packet thresholding: In device mode, Setting this bit
      --  to 1 also enables the functionality of reporting NUMP in the ACK TP
      --  based on the RX FIFO space instead of reporting a fixed NUMP derived
      --  from DCFG.NUMP for non-control endpoints. If external buffer control
      --  (EBC) feature is used, disable this mode by setting UsbRxPktCntSel to
      --  0.
      USBRXPKTCNTSEL    : Boolean := False;
      --  unspecified
      Reserved_30_31    : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GRXTHRCFG_Register use record
      RESVISOCOUTSPC    at 0 range 0 .. 12;
      Reserved_13_18    at 0 range 13 .. 18;
      USBMAXRXBURSTSIZE at 0 range 19 .. 23;
      USBRXPKTCNT       at 0 range 24 .. 27;
      Reserved_28_28    at 0 range 28 .. 28;
      USBRXPKTCNTSEL    at 0 range 29 .. 29;
      Reserved_30_31    at 0 range 30 .. 31;
   end record;

   subtype USB3DR_GBL_GCTL_SCALEDOWN_Field is HAL.UInt2;
   subtype USB3DR_GBL_GCTL_RAMCLKSEL_Field is HAL.UInt2;
   subtype USB3DR_GBL_GCTL_PRTCAPDIR_Field is HAL.UInt2;
   subtype USB3DR_GBL_GCTL_FRMSCLDWN_Field is HAL.UInt2;
   subtype USB3DR_GBL_GCTL_PWRDNSCALE_Field is HAL.UInt13;

   --  USB3DR global control register
   type USB3DR_GBL_GCTL_Register is record
      --  Disable clock gating (DsblClkGtng) This bit is set to 1 and the core
      --  is in Low Power mode, internal clock gating is disabled. This bit can
      --  be set to 1 after power-on reset.
      DSBLCLKGTNG      : Boolean := False;
      --  Read-only. GblHibernationEn This bit enables hibernation at the
      --  global level. If hibernation is not enabled through this bit, the PMU
      --  immediately accepts the D0 → D3 and D3 → D0 power state change
      --  requests, but does not save or restore any core state. In addition,
      --  the PMUs never drive the PHY interfaces and let the core continue to
      --  drive the PHY interfaces.
      GBLHIBERNATIONEN : Boolean := False;
      --  U2EXIT_LFPS If this bit is, This bit is added to improve
      --  interoperability with a third-party host/device controller. This
      --  host/device controller in U2 state while performing receiver
      --  detection generates an LFPS glitch of about 4ms duration. This causes
      --  the host/device to exit from U2 state because the LFPS filter value
      --  is 248ns. With the new functionality enabled, the host/device can
      --  stay in U2 while ignoring this glitch from the host/device
      --  controller. This bit is applicable for both host and device
      --  controller. This bit is added to improve interoperability with a
      --  third party host controller. This host controller in U2 state while
      --  performing receiver detection generates an LFPS glitch of about 4ms
      --  duration. This causes the device to exit from U2 state because the
      --  LFPS filter value is 248ns. With the new functionality enabled, the
      --  device can stay in U2 while ignoring this glitch from the host
      --  controller.
      U2EXIT_LFPS      : Boolean := True;
      --  Disable scrambling (DisScramble) Transmit request to link partner on
      --  next transition to recovery or polling.
      DISSCRAMBLE      : Boolean := False;
      --  Scale-down mode (ScaleDown) When scale-down mode is enabled for
      --  simulation, the core uses scaled-down timing values, resulting in
      --  faster simulations. When scale-down mode is disabled, actual timing
      --  values are used. This is required for hardware operation. Number of
      --  TxEq training sequences reduce to 8 LFPS polling burst time reduce to
      --  256ns LFPS warm reset receive reduce to 30 us.
      SCALEDOWN        : USB3DR_GBL_GCTL_SCALEDOWN_Field := 16#0#;
      --  RAM clock select (RAMClkSel) In Device mode, upon a USB reset and USB
      --  disconnect, the hardware clears these bits to 00. Note: In device
      --  mode, if RAMClkSel is set to 0b11 (mac2_clk), the controller
      --  internally switches the ram_clk to bus_clk when the link state
      --  changes to suspend (L2 or L3), and switches the ram_clk back to
      --  mac2_clk when the link state changes to resume or U2. Note: In host
      --  mode, if a value of 2/3 is chosen, then controller switches ram_clk
      --  between bus_clk, mac2_clk and pipe_clk, pipe_clk/2, based on the
      --  state of the U2/U3 ports. For example if only the U2 port is active
      --  and the U3 ports are suspended, then the ram_clk is swicthed to
      --  mac2_clk. When only the U3 ports are active and the U2 ports are
      --  suspended, then the core internally swicth the ram_clk to pipe3 clock
      --  and when all U2 and U3 ports are suspended, it switches the ram_clk
      --  to bus_clk. This allows decoupling the ram_clk from the bus_clk and
      --  depending on the bandwidth requirement allows the bus_clk to be run
      --  at a lower frequency than the ram_clk requirements. bus_clk frequency
      --  still cannot go below 60MHz in Host mode, and this is not verified.
      --  Note: A value of 2 can be chosen only if the pipe data width is 8 or
      --  16 bits. In this case when the ram_clk is switched to pipe_clk, it
      --  uses pipe_clk/2 instead of pipe_clk. If a value of 3 is chosen for
      --  RAMClkSel, when ram_clk is switched to pipe_clk, then pipe_clk is
      --  used without any divider. Note: In device mode, when RAMClkSel
      --  different 0b00, the bus_clk_early frequency can be a minimum of
      --  1 MHz. This is tested in simulation and also in hardware with Linux,
      --  Microsoftsup®/sup Windowssup®/sup 8, and MCCI Windowssup®/sup 7
      --  host drivers. Only control and non-periodic transfers are supported
      --  when bus_clk is 1 MHz. For periodic applications, the bus_clk_early
      --  minimum frequency is higher depending on the application and device
      --  bus. Even though 1 MHz has been tested with standard host drivers,
      --  Synopsys recommends 5 MHz minimum for ASIC designs to provide a
      --  margin or at least have a backup option to increase the bus_clk
      --  frequency to 5 MHz if needed. Programming this field with random
      --  data causes side effect. Bit bash register testing is not
      --  recommended.
      RAMCLKSEL        : USB3DR_GBL_GCTL_RAMCLKSEL_Field := 16#0#;
      --  Debug attach When this bit is set, SS link proceeds directly to the
      --  polling link state (after RUN/STOP in the DCTL register is asserted)
      --  without checking remote termination; Link LFPS polling timeout is
      --  infinite; Polling timeout during TS1 is infinite (in case link is
      --  waiting for TXEQ to finish).
      DEBUGATTACH      : Boolean := False;
      --  Disable U1/U2 timer scaledown (U1U2TimerScale) If set to 1 along with
      --  GCTL[5:4] (ScaleDown)=0bx1, disables the scale down of U1/U2 inactive
      --  timer values. This is for simulation mode only.
      U1U2TIMERSCALE   : Boolean := False;
      --  SOFITPSYNC If this bit is set to 0 operating in host mode, the core
      --  keeps the UTMI/ULPI PHY on the first port in a non-suspended state
      --  whenever there is a SuperSpeed port that is not in RX.Detect,
      --  SS.Disable and U3. If this bit is set to '1' operating in host mode,
      --  the core keeps the UTMI/ULPI PHY on the first port in a non-suspended
      --  state whenever the other non-SuperSpeed ports are not in a suspended
      --  state. This feature is useful because it saves power by suspending
      --  UTMI/ULPI when SuperSpeed only is active, and it helps resolve when
      --  the PHY does not transmit a host resume unless it is placed in
      --  suspend state. This bit must be programmed as a part of
      --  initialization at power-on reset, and must not be dynamically changed
      --  afterwards. Note: USB2PHYCFGn[6].PhySusp eventually decides to put
      --  the UTMI/ULPI PHY into suspend state. In addition, when this bit is
      --  set to 1, the core generates ITP from the ref_clk based counter.
      --  Otherwise, ITP and SOF are generated from utmi/ulpi_clk[0] based
      --  counter. To program the reference clock period inside the core, refer
      --  to GUCTL[31:22].REFCLKPER. Note: This feature is valid in Host and
      --  DRD/OTG configurations and used only in Host mode operation. Note: If
      --  this feature or the GFLADJ.GFLADJ_REFCLK_LPM_SEL is never used, the
      --  minimum frequency for the ref_clk can be as low as 32kHz. The
      --  suspend_clk (as low as 32kHz) can be connected to the ref_clk. Note:
      --  If hardware-based LPM or software-based LPM has to be enabled
      --  (PORTPMSC.HLE=1), then this feature cannot be used. Turn off this
      --  feature by setting this bit to 0 and use the
      --  GFLADJ.GFLADJ_REFCLK_LPM_SEL feature. Note: If this bit is set to 1,
      --  the GUSB2PHYCFG.U2_FREECLK_EXISTS bit and the
      --  USB3DR_FREECLK_USB2_EXIST parameter must be set to 0. Program this
      --  bit to 0 if the core is intended to be operated in USB 3.0 mode.
      SOFITPSYNC       : Boolean := False;
      --  Core soft reset (CoreSoftReset) Clears the interrupts and all the
      --  CSRs except the following registers: - GCTL - GUCTL - GSTS - GSNPSID
      --  - GGPIO - GUID - GUSB2PHYCFGn registers - GUSB3PIPECTLn registers -
      --  DCFG - DCTL - DEVTEN - DSTS When reseting PHYs (using GUBS3PHYCFG or
      --  GUSB3PIPECTL registers), the core must be kept in reset state until
      --  PHY clocks are stable. This controls the bus, ram, and MAC domain
      --  resets. Note: This bit is for debug purposes only. Use USBCMD.HCRESET
      --  in xHCI mode and DCTL.SoftReset in device mode for soft reset. Note:
      --  Programming this field with random data resets the internal logic of
      --  the host controller. Due to this side effect bit bash register
      --  testing is not recommended.
      CORESOFTRESET    : Boolean := False;
      --  Port capability direction (PrtCapDir) When USB3DR_EN_OTG is 0, then
      --  the core acts as a DRD. When USB3DR_EN_OTG is 1: If PrtCapDir is
      --  0b11, it acts as an OTG 2.0 device with A-device or B-device
      --  determined by the IDDIG input, and Host or Peripheral role based on
      --  HNP. If PrtCapDir is 0b01, it acts as a DRD in Host mode. If
      --  PrtCapDir is 0b10, it acts as a DRD in Device mode. The OTG device
      --  can be programmed to enable/disable SRP and HNP by using the fields
      --  present in OCFG register. When USB3DR_EN_OTG is 2: If PrtCapDir is
      --  0b11, it acts as an OTG 3.0 device with A-device or B-device
      --  determined by the IDDIG input, and Host or Peripheral role based on
      --  HNP/RSP. If PrtCapDir is 0b01, it acts as a DRD in Host mode. In this
      --  mode, the VBUS is driven immediately after power-on reset. When the
      --  USB3DR controller is plugged into a PC and the application configures
      --  the device later on, VBUS is driven on the USB from both sides of the
      --  cable. This may damage the PC host. If PrtCapDir is 0b10, it acts as
      --  a DRD in Device mode. The OTG device can be programmed to
      --  enable/disable SRP and HNP/RSP using the fields present in the OCFG
      --  register. Note: For static Host-only/Device-only applications, use
      --  DRD Host or DRD Device mode. The combination of GCTL.PrtCapDir=0b11
      --  with SRP and HNP/RSP disabled is not recommended for these
      --  applications. The sequence for switching modes in DRD configuration
      --  is as follows: Switching from Device to Host: 1. Reset the controller
      --  using GCTL[11] (CoreSoftReset). 2. Set GCTL[13:12] (PrtCapDir) to
      --  0b01 (Host mode). 3. Reset the host using USBCMD.HCRESET. 4.
      --  Initialize the Host registers. Switching from Host to Device: 1.
      --  Reset the controller using GCTL[11] (CoreSoftReset). 2. Set
      --  GCTL[13:12] (PrtCapDir) to 0b10 (Device mode). 3. Reset the device by
      --  setting DCTL[30] (CSftRst). 4. Initialize the Device registers.
      --  Programming this field with random data causes the core to keep
      --  toggling between the host mode and the device mode. Bit bash register
      --  testing is not recommended.
      PRTCAPDIR        : USB3DR_GBL_GCTL_PRTCAPDIR_Field := 16#2#;
      --  FRMSCLDWN This field scales down device view of a SOF/USOF/ITP
      --  duration. When xHCI debug capability is enabled, this field also
      --  scales down the MaxPacketSize of the IN and OUT bulk endpoint to
      --  allow more traffic during simulation. It can only be changed from a
      --  non-zero value during simulation.
      FRMSCLDWN        : USB3DR_GBL_GCTL_FRMSCLDWN_Field := 16#0#;
      --  U2RSTECN If the SuperSpeed connection fails during POLL or LMP
      --  exchange, the device connects at non-SS mode. If this bit is set,
      --  then the device attempts three more times to connect at SS, even if
      --  it previously failed to operate in SS mode. For each attempt, the
      --  device checks receiver termination eight times. From 2.60a release,
      --  this bit controls whether to check for RX.Detect eight times or one
      --  time for every attempt. The device controller on USB 2.0 reset checks
      --  for receiver termination eight times per attempt if this bit is set
      --  to zero, or only once per attempt if the bit is set to one. Note:
      --  This bit is applicable only in Device mode.
      U2RSTECN         : Boolean := True;
      --  Bypass SetAddress in Device mode When BYPSSETADDR bit is set, the
      --  device core uses the value in the DCFG[DevAddr] bits directly for
      --  comparing the device address in the tokens. This feature can be used
      --  in simulation to avoid sending an actual SET ADDRESS control transfer
      --  on the USB, and make the device core respond to a new address. When
      --  the xHCI debug capability is enabled and this bit is set, the debug
      --  target immediately enters the configured state without requiring the
      --  debug Host to send a SetAddress or SetConfig request. Note: This bit
      --  can be set for simulation purposes only. In the actual hardware, this
      --  bit must be set to 0.
      BYPSSETADDR      : Boolean := False;
      --  Master filter bypass
      MASTERFILTBYPASS : Boolean := False;
      --  Power down scale (PwrDnScale) The USB3 suspend_clk input replaces
      --  pipe3_rx_pclk as a clock source to a small part of the USB3 core that
      --  operates when the SS PHY is in its lowest power (P3) state, and
      --  therefore does not provide a clock. The power down scale field
      --  specifies how many suspend_clk periods fit into a 16kHz clock period.
      --  When performing the division, round up the remainder. For example,
      --  when using an 8-bit/16-bit/32-bit PHY and 25MHz suspend clock, Power
      --  Down scale=25000kHz/16kHz=1563 (rounded up) Minimum suspend clock
      --  frequency is 32kHz Note: Maximum suspend clock frequency is 125MHz
      --  The LTSSM uses suspend clock for 12ms and 100ms timers during suspend
      --  mode. According to the USB 3.0 specification, the accuracy on these
      --  timers is 0% to +50%. 12ms + 0~+50% accuracy=18ms (Range is 12ms -
      --  18ms) 100ms + 0~+50% accuracy=150ms (Range is 100ms - 150ms). The
      --  suspend clock accuracy requirement is: (12,000/62.5) (GCTL[31:19])
      --  actual suspend_clk_period, must be between 12,000 and 18,000
      --  (100,0000/62.5) (GCTL[31:19]) actual suspend_clk_period, must be
      --  between 100,000 and 150,000 For example, if suspend_clk frequency
      --  varies from 7.5MHz to 10.5MHz, then the value that needs to be
      --  programmed is: Power down scale=10500/16=657 (rounded up integer).
      PWRDNSCALE       : USB3DR_GBL_GCTL_PWRDNSCALE_Field := 16#618#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GCTL_Register use record
      DSBLCLKGTNG      at 0 range 0 .. 0;
      GBLHIBERNATIONEN at 0 range 1 .. 1;
      U2EXIT_LFPS      at 0 range 2 .. 2;
      DISSCRAMBLE      at 0 range 3 .. 3;
      SCALEDOWN        at 0 range 4 .. 5;
      RAMCLKSEL        at 0 range 6 .. 7;
      DEBUGATTACH      at 0 range 8 .. 8;
      U1U2TIMERSCALE   at 0 range 9 .. 9;
      SOFITPSYNC       at 0 range 10 .. 10;
      CORESOFTRESET    at 0 range 11 .. 11;
      PRTCAPDIR        at 0 range 12 .. 13;
      FRMSCLDWN        at 0 range 14 .. 15;
      U2RSTECN         at 0 range 16 .. 16;
      BYPSSETADDR      at 0 range 17 .. 17;
      MASTERFILTBYPASS at 0 range 18 .. 18;
      PWRDNSCALE       at 0 range 19 .. 31;
   end record;

   subtype USB3DR_GBL_GPMSTS_U2WAKEUP_Field is HAL.UInt10;
   subtype USB3DR_GBL_GPMSTS_U3WAKEUP_Field is HAL.UInt5;
   subtype USB3DR_GBL_GPMSTS_PORTSEL_Field is HAL.UInt4;

   --  USB3DR global power management status register
   type USB3DR_GBL_GPMSTS_Register is record
      --  Read-only. U2Wakeup This field indicates the following USB 2.0 port
      --  wakeup conditions: xxxxxxxxx1: Overcurrent detected xxxxxxxx1x:
      --  Resume detected xxxxxxx1xx: Connect detected xxxxxx1xxx: Disconnect
      --  detected xxxxx1xxxx: Last connection state xxxx1xxxxx: ID change
      --  detected xxx1xxxxxx: SRP request detected xx1xxxxxxx: ULPI interrupt
      --  detected x1xxxxxxxx: USB Reset detected 1xxxxxxxxx: Resume detected
      --  changed
      U2WAKEUP       : USB3DR_GBL_GPMSTS_U2WAKEUP_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Read-only. U3Wakeup This field gives the following USB 3.0 port
      --  wakeup conditions: xxxx1: Overcurrent detected xxx1x: Resume detected
      --  xx1xx: Connect detected x1xxx: Disconnect detected 1xxxx: Last
      --  connection state
      U3WAKEUP       : USB3DR_GBL_GPMSTS_U3WAKEUP_Field := 16#0#;
      --  unspecified
      Reserved_17_27 : HAL.UInt11 := 16#0#;
      --  Write-only. Global power management status register, PortSel This
      --  field selects the port number.
      PORTSEL        : USB3DR_GBL_GPMSTS_PORTSEL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GPMSTS_Register use record
      U2WAKEUP       at 0 range 0 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      U3WAKEUP       at 0 range 12 .. 16;
      Reserved_17_27 at 0 range 17 .. 27;
      PORTSEL        at 0 range 28 .. 31;
   end record;

   subtype USB3DR_GBL_GSTS_CURMOD_Field is HAL.UInt2;
   subtype USB3DR_GBL_GSTS_CBELT_Field is HAL.UInt12;

   --  USB3DR global status register
   type USB3DR_GBL_GSTS_Register is record
      --  Read-only. Current mode of operation (CurMod) Indicates the current
      --  mode of operation: Others: Reserved
      CURMOD         : USB3DR_GBL_GSTS_CURMOD_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Bus error address valid (BusErrAddrVld) Indicates that the
      --  GBUSERRADDR register is valid and reports the first bus address that
      --  encounters a bus error. Note: Only supported in AHB and AXI
      --  configurations.
      BUSERRADDRVLD  : Boolean := False;
      --  CSR timeout When this bit is 1, it indicates that the software
      --  performed a write or read to a core register that cannot be completed
      --  within USB3DR_CSR_ACCESS_TIMEOUT bus clock cycles (default: 0x1FFFF).
      CSRTIMEOUT     : Boolean := False;
      --  Read-only. Device interrupt pending This field indicates that there
      --  is a pending interrupt pertaining to peripheral (device) operation in
      --  the Device event queue.
      DEVICE_IP      : Boolean := False;
      --  Read-only. Host interrupt pending: This field indicates that there is
      --  a pending interrupt pertaining to xHC in the Host event queue.
      HOST_IP        : Boolean := False;
      --  Read-only. ADP interrupt pending This field indicates that there is a
      --  pending interrupt pertaining to ADP in ADPEVT register.
      ADP_IP         : Boolean := False;
      --  Read-only. Battery charger interrupt pending This field indicates
      --  that there is a pending interrupt pertaining to BC in BCEVT register.
      BC_IP          : Boolean := False;
      --  Read-only. OTG interrupt pending This field indicates that there is a
      --  pending interrupt pertaining to OTG in OEVT register.
      OTG_IP         : Boolean := False;
      --  Read-only. SSIC interrupt pending (SSIC_IP) This field indicates that
      --  there is a pending interrupt related to SSIC in the SEVT register.
      --  Note: When the USB3DR_NUM_SSIC_PORTS parameter is set to zero, this
      --  bit is reserved.
      SSIC_IP        : Boolean := False;
      --  unspecified
      Reserved_12_19 : HAL.UInt8 := 16#0#;
      --  Read-only. Current BELT value In Host mode, this field indicates the
      --  minimum value of all received device BELT values and the BELT value
      --  that is set by the set latency tolerance value command.
      CBELT          : USB3DR_GBL_GSTS_CBELT_Field := 16#7E8#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GSTS_Register use record
      CURMOD         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      BUSERRADDRVLD  at 0 range 4 .. 4;
      CSRTIMEOUT     at 0 range 5 .. 5;
      DEVICE_IP      at 0 range 6 .. 6;
      HOST_IP        at 0 range 7 .. 7;
      ADP_IP         at 0 range 8 .. 8;
      BC_IP          at 0 range 9 .. 9;
      OTG_IP         at 0 range 10 .. 10;
      SSIC_IP        at 0 range 11 .. 11;
      Reserved_12_19 at 0 range 12 .. 19;
      CBELT          at 0 range 20 .. 31;
   end record;

   subtype USB3DR_GBL_GUCTL1_L1_SUSP_THRLD_FOR_HOST_Field is HAL.UInt4;
   subtype USB3DR_GBL_GUCTL1_IP_GAP_ADD_ON_Field is HAL.UInt3;

   --  USB3DR global user control register 1
   type USB3DR_GBL_GUCTL1_Register is record
      --  LOA_FILTER_EN If this bit is set, the USB 2.0 port babble is checked
      --  at least three consecutive times before the port is disabled. This
      --  prevents false triggering of the babble condition when using low
      --  quality cables. Note: This bit is valid only in host mode.
      LOA_FILTER_EN               : Boolean := False;
      --  OVRLD_L1_SUSP_COM If this bit is set, the utmi_l1_suspend_com_n is
      --  overloaded with the utmi_sleep_n signal. This bit is usually set if
      --  the PHY stops the port clock during L1 sleep condition. Note: The
      --  recommended connection for the SUSPENDM/SLEEPM signals to the PHY
      --  with respect to this bit is as follows. Note: For non-zero ports:
      --  Note: Connect: Note: - utmi_sleep_n[n] to SLEEPM[n] Note: -
      --  (utmi_suspend_n[n] & utmi_l1_suspend_n[n]) to SUSPENDM[n] Note: -
      --  USB2 PHYCLK[n] to utmi_clk[n] Note: GUCTL1.OVRLD_L1_SUSP_COM impacts
      --  only Port0. Note: For Port0: Note: For Synopsys PHY,
      --  GUSB2PHYCFGn.U2_FREECLK_EXISTS=1. With this connection, the PHY keeps
      --  PLL active so that FREECLK is always available irrespective of
      --  suspend/sleep. Note: - Connect USB2 PHY COMMONONN to 0. Note: -
      --  Connect utmi_sleep_n[0] to SLEEPM[0]. Note: - Connect
      --  (utmi_suspend_n[0] & utmi_l1_suspend_n[0]) to SUSPENDM[0]. Note: -
      --  Connect USB2 PHY FREECLK to utmi_clk[0]. Note: - Leave
      --  utmi_suspend_com_n, utmi_l1_suspend_com_n unconnected. Note: -
      --  GUCTL1.OVRLD_L1_SUSP_COM can be set to any value. Note: For Third
      --  Party PHY, Note: GUSB2PHYCFGn.U2_FREECLK_EXISTS=0. With this
      --  connection the PHY can shut off all the clocks when the required
      --  conditions are met (such as GUSB2PHYCFGn[8,6], GUCTL1[1], GFLADJ[23],
      --  GCTL[10], suspend condition, HW LPM enable). Note: - Connect
      --  -utmi_suspend_com_n to SUSPENDM[0] (or equivalent). Note: - Connect
      --  -utmi_l1_suspend_com_n to SLEEPM[0] (or equivalent). Note: - Connect
      --  PHYCLK0 (first port clock) to utmi_clk[0]. Note: - Leave
      --  utmi_suspend_n[0], utmi_l1_suspend_ n[0], utmi_sleep_n[0]
      --  unconnected. Note: - Set GUCTL1.OVRLD_L1_SUSP_COM to 0b1.
      OVRLD_L1_SUSP_COM           : Boolean := True;
      --  Host parameter check disable (HParChkDisable) When this bit is set to
      --  0 (by default), the xHC checks that the input slot/EP context fields
      --  comply to the xHCI specification. Upon detection of a parameter error
      --  during command execution, the xHC generates an event TRB with
      --  completion code indicating 'PARAMETER ERROR'. When the bit is set to
      --  '1', the xHC does not perform parameter checks and does not generate
      --  'PARAMETER ERROR' completion code.
      HC_PARCHK_DISABLE           : Boolean := False;
      --  Host ELD Enable (HELDEn) When this bit is set to 1, it enables the
      --  exit latency delta (ELD) support defined in the [xHCI] errata. This
      --  bit is used only in the host mode. This bit has to be set to 1 in
      --  Host mode.
      HC_ERRATA_ENABLE            : Boolean := False;
      --  L1_SUSP_THRLD_FOR_HOST This field is effective only when the
      --  L1_SUSP_THRLD_EN_FOR_HOST bit is set to 1. For more details, refer to
      --  the description of the L1_SUSP_THRLD_EN_FOR_HOST bit.
      L1_SUSP_THRLD_FOR_HOST      : USB3DR_GBL_GUCTL1_L1_SUSP_THRLD_FOR_HOST_Field :=
                                     16#0#;
      --  L1_SUSP_THRLD_EN_FOR_HOST This bit is used only in Host mode. The
      --  host controller asserts the utmi_l1_suspend_n and utmi_sleep_n output
      --  signals as follows: The controller asserts the utmi_l1_suspend_n
      --  signal to put the PHY into deep Low-power mode in L1 when both of the
      --  following are true: The HIRD/BESL value used is greater than or equal
      --  to the value in L1_SUSP_THRLD_FOR_HOST field. The
      --  L1_SUSP_THRLD_EN_FOR_HOST bit is set to 1. The controller asserts
      --  utmi_sleep_n on L1 when one of the following is true: The HIRD/BESL
      --  value used is less than the value in L1_SUSP_THRLD_FOR_HOST field.
      --  The L1_SUSP_THRLD_EN_FOR_HOST bit is set to 0.
      L1_SUSP_THRLD_EN_FOR_HOST   : Boolean := False;
      --  DEV_HS_NYET_BULK_SPR This bit is applicable for device mode only (and
      --  ignored in Host mode) to be used in 2.0 operation. If this bit is
      --  set, the device core sends NYET response instead of ACK response for
      --  a successfully received bulk OUT short packet. If NYET is sent after
      --  receiving short packet, then the host would PING before sending the
      --  next OUT. This improves the performance as well as clears up the
      --  buffer/cache on the host side. Internal to the device core, short
      --  packet (SPR1) processing takes some time, and during this time, the
      --  USB is flow controlled. With NYET response instead of ACK on short
      --  packet, the host does not send another OUT-DATA without pinging in HS
      --  mode. This bit is quasi-static, that is, it must not be changed
      --  during device operation.
      DEV_HS_NYET_BULK_SPR        : Boolean := False;
      --  RESUME_OPMODE_HS_HOST This bit is used only in host mode, and is for
      --  USB 2.0 opmode behavior in HS Resume. When this bit is set to '1',
      --  the UTMI/ULPI opmode is changed to 'normal' along with HS
      --  terminations after EOR. This option is to support certain legacy
      --  UTMI/ULPI PHYs. When this bit is set to '0', the UTMI/ULPI opmode is
      --  changed to 'normal' 2us after HS terminations change after EOR. This
      --  is the default behavior.
      RESUME_OPMODE_HS_HOST       : Boolean := False;
      --  unspecified
      Reserved_11_14              : HAL.UInt4 := 16#0#;
      --  PARKMODE_DISABLE_FSLS This bit is used only in host mode, and is for
      --  debug purpose only. When this bit is set to 1 all FS/LS bus instances
      --  in park mode are disabled.
      PARKMODE_DISABLE_FSLS       : Boolean := False;
      --  PARKMODE_DISABLE_HS This bit is used only in Host mode. When this bit
      --  is set to 1 all HS bus instances park mode are disabled. To improve
      --  performance in park mode, the xHCI scheduler queues in three requests
      --  of 4 packets each for high-speed asynchronous endpoints in a
      --  micro-frame. But if a device is slow and if it NAKs more than 3
      --  times, then it is rescheduled only in the next micro-frame. This may
      --  decrease the performance of a slow device even further. In a few
      --  high-speed devices (such as Sandisksup/sup Cruzer Blade 4GB VID:1921,
      --  PID:21863 and Flex Drive VID:3744, PID:8552) when an IN request is
      --  sent within 900ns of the ACK of the previous packet, these devices
      --  send a NAK. When connected to these devices, if required, the
      --  software can disable the park mode if a performance drop is observed
      --  in the system. When park mode is disabled, pipelining of multiple
      --  packet is disabled and instead one packet at a time is requested by
      --  the scheduler. This allows up to 12 NAKs in a micro-frame and
      --  improves performance of these slow devices.
      PARKMODE_DISABLE_HS         : Boolean := False;
      --  PARKMODE_DISABLE_SS This bit is used only in Host mode, and is for
      --  debug purpose only. When this bit is set to 1 all SS bus instances in
      --  park mode are disabled.
      PARKMODE_DISABLE_SS         : Boolean := False;
      --  NAK_PER_ENH_HS If a periodic endpoint is present, and if a bulk
      --  endpoint which is also active is being NAKed by the device, then this
      --  may result in decrease in performance of another high-speed bulk
      --  endpoint which is ACKed by the device. Setting this bit to 1 enables
      --  the host controller to schedule more transactions to the async
      --  endpoints (bulk/control) and hence improves the performance of the
      --  bulk endpoint. This control bit should be enabled only if the
      --  existing performance with the default setting is not sufficient for
      --  the HighSpeed application. Setting this bit only controls, and is
      --  only required for high-speed transfers.
      NAK_PER_ENH_HS              : Boolean := False;
      --  NAK_PER_ENH_FS If a periodic endpoint is present, and if a bulk
      --  endpoint which is also active is being NAKed by the device, then this
      --  may result in a decrease in performance of another Full speed bulk
      --  endpoint which is ACKed by the device. Setting this bit to 1 enables
      --  the host controller to schedule more transactions to the async
      --  endpoints (bulk/control) and hence improves the performance of the
      --  bulk endpoint. This control bit should be enabled only if the
      --  existing performance with the default setting is not sufficient for
      --  the FullSpeed application. Setting this bit only controls, and is
      --  only required for full speed transfers.
      NAK_PER_ENH_FS              : Boolean := False;
      --  DEV_LSP_TAIL_LOCK_DIS This is a bug fix for STAR 9000716195 that
      --  affects the CSP mode for OUT endpoints in device mode. The issue is
      --  that tail TRB index is not synchronized with the cache scratchpad
      --  bytecount update. If the fast-forward request comes in-between the
      --  bytecount update on a newly fetched TRB and the tail-index write
      --  update in TPF, the RDP works on an incorrect tail index and misses
      --  the byte count decrement for the newly fetched TRB in the
      --  fast-forwarding process. This fix needs to be present all the times.
      DEV_LSP_TAIL_LOCK_DIS       : Boolean := False;
      --  This register field is used to add up to the default inter packet gap
      --  setting in the USB 2.0 MAC. This should be programmed to a non zero
      --  value only in case the default inter packet delay calculations in the
      --  USB 2.0 MAC module needs to be increased.
      IP_GAP_ADD_ON               : USB3DR_GBL_GUCTL1_IP_GAP_ADD_ON_Field :=
                                     16#0#;
      --  DEV_L1_EXIT_BY_HW This bit is applicable for Device mode (2.0) only.
      --  This field enables device controller sending remote wakeup for L1 if
      --  the device becomes ready for sending/accepting data when in L1 state.
      --  If the host expects the device to send remote wakeup signaling to
      --  resume after going into L1 in flow controlled state, then this bit
      --  can be set to send the remote wake signal automatically when the
      --  device controller becomes ready. This hardware remote wake feature is
      --  applicable only to bulk and interrupt transfers, and not for
      --  Isoch/Control When control transfers are in progress, the LPM is
      --  rejected (NYET response). Only after control transfers are completed
      --  (either with ACK/STALL), LPM is accepted For Isoch transfers, the
      --  host needs to do the wakeup and start the transfer. Device controller
      --  does not remote-wakeup when Isoch endpoints get ready. The device
      --  software needs to keep the GUSB2PHYCFG[EnblSlpM] reset in order to
      --  keep the PHY clock to be running for keeping track of SOF intervals.
      --  When L1 hibernation is enabled, the controller does not do automatic
      --  exit for hibernation requests through L1. This bit is quasi-static,
      --  that is, it must not be changed during device operation.
      DEV_L1_EXIT_BY_HW           : Boolean := False;
      --  P3_IN_U2 Setting this bit enables P3 Power state when the SuperSpeed
      --  link is in U2. Another Power saving option. Check with the PHY vendor
      --  before enabling this option. When setting this bit to 1 in order to
      --  enable P3 in P2, GUSB3PIPECTL[27] should be set to 0 to make sure
      --  that the U2 exit is attempted in P0. This bit should be set only when
      --  GCTL.SOFITPSYNC=1 or GFLADJ.GFLADJ_REFCLK_LPM_SEL=1.
      P3_IN_U2                    : Boolean := False;
      --  DEV_FORCE_20_CLK_FOR_30_CLK This bit is applicable (and to be set)
      --  for device mode only (DCFG.Speed different SS). In the 3.0 device
      --  core, if the core is programmed to operate in 2.0 only (that is,
      --  device speed is programmed to 2.0 speeds in DCFG[Speed]), then
      --  setting this bit makes the internal 2.0 (utmi/ulpi) clock to be
      --  routed as the 3.0 (pipe) clock. Enabling this feature disables the
      --  pipe3 clock when forcibly operating in 2.0 device mode. Note: When
      --  using this feature, all pipe3 inputs must be in inactive mode. In
      --  particular, the pipe3 clocks must not be running and the
      --  pipe3_phystatus_async must be tied to 0. This bit should not be set
      --  if the core is programmed to operate in SuperSpeed mode (even when it
      --  falls back to 2.0). Note: This bit is quasi-static, that is it must
      --  not be changed during operation. Note: If the parameter
      --  'USB3DR_REMOVE_PIPE_CLK_MUX_FOR_20_MODE' is enabled, the muxing of
      --  2.0 clock/signals to pipe_clk/signals must be done outside the
      --  controller for this feature to work.
      DEV_FORCE_20_CLK_FOR_30_CLK : Boolean := False;
      --  DEV_TRB_OUT_SPR_IND This bit is applicable for Device mode only (and
      --  ignored in Host mode). If the device application (software/hardware)
      --  wants to know if a short packet was received for an OUT in the TRB
      --  status itself, then this feature can be enabled, so that a bit is set
      --  in the TRB writeback in the buf_size dword. Bit[26] of buf_size is
      --  set during an OUT transfer TRB write back if this is the last TRB
      --  used for that transfer descriptor. This bit is quasi-static, that is,
      --  it must not be changed during device operation.
      DEV_TRB_OUT_SPR_IND         : Boolean := False;
      --  TX_IPGAP_LINECHECK_DIS This bit is applicable for HS operation of
      --  u2mac. If this feature is enabled, then the 2.0 MAC operating in HS
      --  ignores the UTMI/ULPI linestate during the transmit of a token
      --  (during token-to-token and token-to-data IPGAP). When enabled, the
      --  controller implements a fixed 40-bit TxEndDelay after the packet is
      --  given on UTMI and ignores the linestate during this time. This
      --  feature is applicable only in HS mode of operation. Device mode: If
      --  GUCTL1.TX_IPGAP_LINECHECK_DIS is set, then for device LPM handshake,
      --  the core ignores the linestate after TX and wait for fixed clocks (40
      --  bit times equivalent) after transmitting ACK on utmi. Host mode: If
      --  GUCTL1.TX_IPGAP_LINECHECK_DIS is set, then the ipgap between
      --  token-to-token or token-to-data is extended by a 40-bit time delay
      --  (TXENDDELAY), and linestate is ignored during this 40-bit time delay.
      --  Enable this bit if the linestate does not reflect the expected line
      --  state (J) during transmission. This bit is quasi-static, that is, it
      --  must not be changed during device operation.
      TX_IPGAP_LINECHECK_DIS      : Boolean := False;
      --  FILTER_SE0_FSLS_EOP This bit is applicable for FS/LS operation. If
      --  this feature is enabled, then SE0 on the linestate is validated for 2
      --  consecutive utmi/ulpi clock edges for EOP detection. This feature is
      --  applicable only in FS in device mode and FS/LS mode of operation in
      --  host mode. Device mode: FS - If GUCTL1.FILTER_SE0_FSLS_EOP is set,
      --  then for device LPM handshake, the core ignores single SE0 glitch on
      --  the linestate during transmit. Only two or more SE0 areconsidered as
      --  a valid EOP on FS. Host mode: FS/LS - If GUCTL1.FILTER_SE0_FSLS_EOP
      --  is set, then the core ignores single SE0 glitch on the linestate
      --  during transmit. Only 2 or more SE0 are considered as a valid EOP on
      --  FS/LS port. Enable this feature if the LineState has SE0 glitches
      --  during transmission. This bit is quasi-static, that is it must not be
      --  changed during device operation.
      FILTER_SE0_FSLS_EOP         : Boolean := False;
      --  DS_RXDET_MAX_TOUT_CTRL This bit is used to control the
      --  tsubRxDetectTimeoutDFP/sub timer for the SuperSpeed link. This bit is
      --  used only in Host mode. For more details, refer to ECN020 of [USB3].
      DS_RXDET_MAX_TOUT_CTRL      : Boolean := False;
      --  DEV_DECOUPLE_L1L2_EVT This bit is applicable for device mode only. If
      --  this feature is enabled, L1 suspend and wake events have individual
      --  controls to enable/mask them. This feature must be enabled in order
      --  to get L1 (LPM) events separately and not combined with L2 events
      --  when operating in 2.0 speeds.
      DEV_DECOUPLE_L1L2_EVT       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GUCTL1_Register use record
      LOA_FILTER_EN               at 0 range 0 .. 0;
      OVRLD_L1_SUSP_COM           at 0 range 1 .. 1;
      HC_PARCHK_DISABLE           at 0 range 2 .. 2;
      HC_ERRATA_ENABLE            at 0 range 3 .. 3;
      L1_SUSP_THRLD_FOR_HOST      at 0 range 4 .. 7;
      L1_SUSP_THRLD_EN_FOR_HOST   at 0 range 8 .. 8;
      DEV_HS_NYET_BULK_SPR        at 0 range 9 .. 9;
      RESUME_OPMODE_HS_HOST       at 0 range 10 .. 10;
      Reserved_11_14              at 0 range 11 .. 14;
      PARKMODE_DISABLE_FSLS       at 0 range 15 .. 15;
      PARKMODE_DISABLE_HS         at 0 range 16 .. 16;
      PARKMODE_DISABLE_SS         at 0 range 17 .. 17;
      NAK_PER_ENH_HS              at 0 range 18 .. 18;
      NAK_PER_ENH_FS              at 0 range 19 .. 19;
      DEV_LSP_TAIL_LOCK_DIS       at 0 range 20 .. 20;
      IP_GAP_ADD_ON               at 0 range 21 .. 23;
      DEV_L1_EXIT_BY_HW           at 0 range 24 .. 24;
      P3_IN_U2                    at 0 range 25 .. 25;
      DEV_FORCE_20_CLK_FOR_30_CLK at 0 range 26 .. 26;
      DEV_TRB_OUT_SPR_IND         at 0 range 27 .. 27;
      TX_IPGAP_LINECHECK_DIS      at 0 range 28 .. 28;
      FILTER_SE0_FSLS_EOP         at 0 range 29 .. 29;
      DS_RXDET_MAX_TOUT_CTRL      at 0 range 30 .. 30;
      DEV_DECOUPLE_L1L2_EVT       at 0 range 31 .. 31;
   end record;

   subtype USB3DR_GBL_GGPIO_GPI_Field is HAL.UInt16;
   subtype USB3DR_GBL_GGPIO_GPO_Field is HAL.UInt16;

   --  USB3DR global general purpose input/output register
   type USB3DR_GBL_GGPIO_Register is record
      --  Read-only. General purpose input This field read value reflects the
      --  gp_in[15:0] core input value. Note: Register bit-bash test should not
      --  check for reset value of this field since its not predictable;
      --  depends on the gp_in port.
      GPI : USB3DR_GBL_GGPIO_GPI_Field := 16#0#;
      --  General purpose output This field value is driven out on the
      --  gp_out[15:0] core output port.
      GPO : USB3DR_GBL_GGPIO_GPO_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GGPIO_Register use record
      GPI at 0 range 0 .. 15;
      GPO at 0 range 16 .. 31;
   end record;

   subtype USB3DR_GBL_GUCTL_DTFT_Field is HAL.UInt9;
   subtype USB3DR_GBL_GUCTL_DTCT_Field is HAL.UInt2;
   subtype USB3DR_GBL_GUCTL_REFCLKPER_Field is HAL.UInt10;

   --  USB3DR global user control register
   type USB3DR_GBL_GUCTL_Register is record
      --  Device timeout fine tuning (DTFT) This field is a Host mode parameter
      --  which determines how long the host waits for a response from device
      --  before considering a timeout. For the DTFT field to take effect, DTCT
      --  must be set to 0b00. The DTFT value is the number of 125MHz clocks
      --  256 to count before considering a device timeout. The minimum value
      --  of DTFT is 2. For example, if the mac3_clk is 125MHz clk (8ns
      --  period), this is calculated as follows: (DTFT value) 256 (8ns) Quick
      --  Reference: - if DTFT = 0x2, 2 × 256 × 8 = 4 us timeout - if
      --  DTFT = 0x5, 5 × 256 × 8 = 10 us timeout - if DTFT = 0xA, 10
      --  × 256 × 8 = 20 us timeout - if DTFT = 0x10, 16 × 256 ×
      --  8 = 32 us timeout - if DTFT = 0x19, 25 × 256 × 8 = 51 us
      --  timeout - if DTFT = 0x31, 49 × 256 × 8 = 100 us timeout - if
      --  DTFT = 0x62, 98 × 256 × 8 = 200 us timeout Note: When SSIC is
      --  enabled, in HS_G1_G2_G3 mode, and ssic_soc_pa_clk_freq = 0b01, then
      --  DTFT value must be calculated for 156.25 MHz clock, for example, for
      --  equivalent delay of 32 us DTFT value must be 0x14. Note: When the
      --  system latency is larger than the programmed DTCT/DTFT value, if the
      --  host controller is not able to accept certain transactions on the bus
      --  (because of system bus delays), the controller may not release header
      --  credits which in turn can cause the host to report a transaction
      --  error. Therefore, program this value to be larger than the system
      --  delay.
      DTFT                : USB3DR_GBL_GUCTL_DTFT_Field := 16#10#;
      --  Device timeout coarse tuning (DTCT) This field is a Host mode
      --  parameter which determines how long the host waits for a response
      --  from device before considering a timeout. The core first checks the
      --  DTCT value. If it is 0, then the timeout value is defined by the
      --  DTFT. If it is non-zero, then it uses the following timeout values:
      --  Note: When the system latency is larger than the programmed DTCT/DTFT
      --  value, if the host controller is not able to accept certain
      --  transactions on the bus (because of system bus delays), the
      --  controller may not release header credits which in turn can cause the
      --  host to report a transaction error. Therefore, program this value to
      --  be larger than the system delay.
      DTCT                : USB3DR_GBL_GUCTL_DTCT_Field := 16#0#;
      --  Insert extra delay between FS bulk OUT transactions (InsrtExtrFSBODl)
      --  Some FS devices are slow to receive bulk OUT data and can get stuck
      --  when there are consecutive bulk OUT transactions with short
      --  inter-transaction delays. This bit is used to control whether the
      --  host inserts extra delay between consecutive bulk OUT transactions to
      --  a FS endpoint. Note: Setting this bit to one reduces the bulk OUT
      --  transfer performance for most of the FS devices.
      INSRTEXTRFSBODI     : Boolean := False;
      --  External extended capability support enable (ExtCapSuptEN) When set,
      --  this field enables extended capabilities to be implemented outside
      --  the core. When the ExtCapSupEN is set and the debug capability is
      --  enabled, the next capability pointer in 'Debug Capability' returns
      --  16. A read to the first dword of the last internal extended
      --  capability (the 'xHCI supported Protocol Capability for USB 3.0' when
      --  the debug capability is not enabled) returns a value of 4 in the next
      --  capability pointer field. This indicates to software that there is
      --  another capability, 4 dwords after this capability (for example, at
      --  address N+16 where N is the address of this dword). If enabled, an
      --  external address decoder that snoops the xHC slave interface must be
      --  implemented. If it sees an access to N+16 or greater, the slave
      --  access is re-routed to a piece of hardware which returns the external
      --  capability pointer register of the new capability and also handles
      --  reads/writes to this new capability and the side effects. If
      --  disabled, a read to the first dword of the last internal extended
      --  capability returns 0 in the next capability pointer field. This
      --  indicates there are no more capabilities.
      EXTCAPSUPPTEN       : Boolean := False;
      --  Enable check for LFPS overlap during remote Ux exit: If this bit is
      --  set to,
      ENOVERLAPCHK        : Boolean := False;
      --  Host IN auto retry (USBHstInAutoRetryEn) When set, this field enables
      --  the auto retry feature. For IN transfers (non-isochronous) that
      --  encounter data packets with CRC errors or internal overrun scenarios,
      --  the auto retry feature causes the Host core to reply to the device
      --  with a non-terminating retry ACK (that is, an ACK transaction packet
      --  with Retry = 1 and NumP different 0). If the auto retry feature is
      --  disabled (default), the core responds with a terminating retry ACK
      --  (that is, an ACK transaction packet with Retry=1 and NumP=0). Note:
      --  When enabling auto retry feature, if the system latency is large
      --  enough to cause the internal PSQ full (PSQ can be full as the result
      --  of messages not being processed because of pending fetches before
      --  flushing the TxQ due to NRDY/ERDY conditions), then the host
      --  controller can generate a transaction error.
      USBHSTINAUTORETRYEN : Boolean := False;
      --  unspecified
      Reserved_15_15      : HAL.Bit := 16#0#;
      --  Reserving 85% bandwidth for HS periodic EPs (ResBwHSEPS) By default,
      --  HC reserves 80% of the bandwidth for periodic EPs. If this bit is
      --  set, the bandwidth is relaxed to 85% to accommodate two high-speed,
      --  high-bandwidth ISOC EPs. USB 2.0 required 80% bandwidth allocated for
      --  ISOC traffic. If two high-bandwidth ISOC devices (HD webcams) are
      --  connected, and if each requires 1024-bytes X 3 packets per
      --  microframe, then the bandwidth required is around 82%. If this bit is
      --  set, then it is possible to connect two webcams of 1024Bytes X 3
      --  paylod per microframe each. Otherwise the resolution of the webcams
      --  may have to be reduced. This bit is valid in Host and DRD
      --  configuration and is used in Host mode operation only. Ignore this
      --  bit in device mode.
      RESBWHSEPS          : Boolean := False;
      --  Sparse control transaction enable Some devices are slow in responding
      --  to control transfers. Scheduling multiple transactions in one
      --  microframe/frame can cause these devices to misbehave. If this bit is
      --  set to 1, the host controller schedules transactions for a control
      --  transfer in different microframes/frames.
      SPRSCTRLTRANSEN     : Boolean := False;
      --  unspecified
      Reserved_18_20      : HAL.UInt3 := 16#0#;
      --  No extra delay between SOF and the first Packet(NoExtrDl) Some HS
      --  devices misbehave when the host sends a packet immediately after a
      --  SOF. However, adding an extra delay between a SOF and the first
      --  packet can reduce the USB data rate and performance. This bit is used
      --  to control whether the host must wait for 2 microseconds before it
      --  sends the first packet after a SOF, or not. User can set this bit to
      --  1 to improve the performance if those problematic devices are not a
      --  concern in the user's host environment.
      NOEXTRDL            : Boolean := False;
      --  REFCLKPER This field indicates in terms of nano seconds the period of
      --  ref_clk. The default value of this register is set to 0x8
      --  (8ns/125MHz). This field needs to be updated during power-on
      --  initialization, if GCTL.SOFITPSYNC or GFLADJ.GFLADJ_REFCLK_LPM_SEL is
      --  set to 1. The programmable maximum value is 62ns, and the minimum
      --  value is 8ns. A reference clock with a period that is an integer
      --  multiple must be used, so that ITP can meet the jitter margin of
      --  32ns. The allowable ref_clk frequencies whose period is not integer
      --  multiple are 16/17/19.2/24/39.7MHz. This field must not be set to 0
      --  at any time. If this feature should never be used, this field should
      --  be kept at its default value 0x8.
      REFCLKPER           : USB3DR_GBL_GUCTL_REFCLKPER_Field := 16#8#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GUCTL_Register use record
      DTFT                at 0 range 0 .. 8;
      DTCT                at 0 range 9 .. 10;
      INSRTEXTRFSBODI     at 0 range 11 .. 11;
      EXTCAPSUPPTEN       at 0 range 12 .. 12;
      ENOVERLAPCHK        at 0 range 13 .. 13;
      USBHSTINAUTORETRYEN at 0 range 14 .. 14;
      Reserved_15_15      at 0 range 15 .. 15;
      RESBWHSEPS          at 0 range 16 .. 16;
      SPRSCTRLTRANSEN     at 0 range 17 .. 17;
      Reserved_18_20      at 0 range 18 .. 20;
      NOEXTRDL            at 0 range 21 .. 21;
      REFCLKPER           at 0 range 22 .. 31;
   end record;

   --  USB3DR_GBL_GPRTBIMAPLO_BINUM array element
   subtype USB3DR_GBL_GPRTBIMAPLO_BINUM_Element is HAL.UInt4;

   --  USB3DR_GBL_GPRTBIMAPLO_BINUM array
   type USB3DR_GBL_GPRTBIMAPLO_BINUM_Field_Array is array (1 .. 8)
     of USB3DR_GBL_GPRTBIMAPLO_BINUM_Element
     with Component_Size => 4, Size => 32;

   --  USB3DR global SS port to bus instance mapping register - low
   type USB3DR_GBL_GPRTBIMAPLO_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BINUM as a value
            Val : HAL.UInt32;
         when True =>
            --  BINUM as an array
            Arr : USB3DR_GBL_GPRTBIMAPLO_BINUM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GPRTBIMAPLO_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  USB3DR_GBL_GPRTBIMAPHI_BINUM array element
   subtype USB3DR_GBL_GPRTBIMAPHI_BINUM_Element is HAL.UInt4;

   --  USB3DR_GBL_GPRTBIMAPHI_BINUM array
   type USB3DR_GBL_GPRTBIMAPHI_BINUM_Field_Array is array (9 .. 15)
     of USB3DR_GBL_GPRTBIMAPHI_BINUM_Element
     with Component_Size => 4, Size => 28;

   --  Type definition for USB3DR_GBL_GPRTBIMAPHI_BINUM
   type USB3DR_GBL_GPRTBIMAPHI_BINUM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BINUM as a value
            Val : HAL.UInt28;
         when True =>
            --  BINUM as an array
            Arr : USB3DR_GBL_GPRTBIMAPHI_BINUM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 28;

   for USB3DR_GBL_GPRTBIMAPHI_BINUM_Field use record
      Val at 0 range 0 .. 27;
      Arr at 0 range 0 .. 27;
   end record;

   --  USB3DR global SS port to bus instance mapping register - high
   type USB3DR_GBL_GPRTBIMAPHI_Register is record
      --  SS USB instance number for port 9. Application programmable ID field.
      BINUM          : USB3DR_GBL_GPRTBIMAPHI_BINUM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GPRTBIMAPHI_Register use record
      BINUM          at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype USB3DR_GBL_GHWPARAMS0_GHWPARAMS0_2_0_Field is HAL.UInt3;
   subtype USB3DR_GBL_GHWPARAMS0_GHWPARAMS0_5_3_Field is HAL.UInt3;
   subtype USB3DR_GBL_GHWPARAMS0_GHWPARAMS0_7_6_Field is HAL.UInt2;
   subtype USB3DR_GBL_GHWPARAMS0_GHWPARAMS0_15_8_Field is HAL.UInt8;
   subtype USB3DR_GBL_GHWPARAMS0_GHWPARAMS0_23_16_Field is HAL.UInt8;
   subtype USB3DR_GBL_GHWPARAMS0_GHWPARAMS0_31_24_Field is HAL.UInt8;

   --  USB3DR global hardware parameters register 0
   type USB3DR_GBL_GHWPARAMS0_Register is record
      --  Read-only. USB3DR_MODE
      GHWPARAMS0_2_0   : USB3DR_GBL_GHWPARAMS0_GHWPARAMS0_2_0_Field;
      --  Read-only. USB3DR_MBUS_TYPE
      GHWPARAMS0_5_3   : USB3DR_GBL_GHWPARAMS0_GHWPARAMS0_5_3_Field;
      --  Read-only. USB3DR_SBUS_TYPE
      GHWPARAMS0_7_6   : USB3DR_GBL_GHWPARAMS0_GHWPARAMS0_7_6_Field;
      --  Read-only. USB3DR_MDWIDTH
      GHWPARAMS0_15_8  : USB3DR_GBL_GHWPARAMS0_GHWPARAMS0_15_8_Field;
      --  Read-only. USB3DR_SDWIDTH
      GHWPARAMS0_23_16 : USB3DR_GBL_GHWPARAMS0_GHWPARAMS0_23_16_Field;
      --  Read-only. USB3DR_AWIDTH
      GHWPARAMS0_31_24 : USB3DR_GBL_GHWPARAMS0_GHWPARAMS0_31_24_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GHWPARAMS0_Register use record
      GHWPARAMS0_2_0   at 0 range 0 .. 2;
      GHWPARAMS0_5_3   at 0 range 3 .. 5;
      GHWPARAMS0_7_6   at 0 range 6 .. 7;
      GHWPARAMS0_15_8  at 0 range 8 .. 15;
      GHWPARAMS0_23_16 at 0 range 16 .. 23;
      GHWPARAMS0_31_24 at 0 range 24 .. 31;
   end record;

   subtype USB3DR_GBL_GHWPARAMS1_GHWPARAMS1_2_0_Field is HAL.UInt3;
   subtype USB3DR_GBL_GHWPARAMS1_GHWPARAMS1_5_3_Field is HAL.UInt3;
   subtype USB3DR_GBL_GHWPARAMS1_GHWPARAMS1_8_6_Field is HAL.UInt3;
   subtype USB3DR_GBL_GHWPARAMS1_GHWPARAMS1_11_9_Field is HAL.UInt3;
   subtype USB3DR_GBL_GHWPARAMS1_GHWPARAMS1_14_12_Field is HAL.UInt3;
   subtype USB3DR_GBL_GHWPARAMS1_GHWPARAMS1_20_15_Field is HAL.UInt6;
   subtype USB3DR_GBL_GHWPARAMS1_GHWPARAMS1_22_21_Field is HAL.UInt2;
   subtype USB3DR_GBL_GHWPARAMS1_GHWPARAMS1_25_24_Field is HAL.UInt2;

   --  USB3DR global hardware parameters register 1
   type USB3DR_GBL_GHWPARAMS1_Register is record
      --  Read-only. USB3DR_IDWIDTH-1
      GHWPARAMS1_2_0   : USB3DR_GBL_GHWPARAMS1_GHWPARAMS1_2_0_Field;
      --  Read-only. USB3DR_BURSTWIDTH-1
      GHWPARAMS1_5_3   : USB3DR_GBL_GHWPARAMS1_GHWPARAMS1_5_3_Field;
      --  Read-only. USB3DR_DATAINFOWIDTH
      GHWPARAMS1_8_6   : USB3DR_GBL_GHWPARAMS1_GHWPARAMS1_8_6_Field;
      --  Read-only. USB3DR_REQINFOWIDTH
      GHWPARAMS1_11_9  : USB3DR_GBL_GHWPARAMS1_GHWPARAMS1_11_9_Field;
      --  Read-only. USB3DR_ASPACEWIDTH
      GHWPARAMS1_14_12 : USB3DR_GBL_GHWPARAMS1_GHWPARAMS1_14_12_Field;
      --  Read-only. USB3DR_DEVICE_NUM_INT
      GHWPARAMS1_20_15 : USB3DR_GBL_GHWPARAMS1_GHWPARAMS1_20_15_Field;
      --  Read-only. USB3DR_NUM_RAMS
      GHWPARAMS1_22_21 : USB3DR_GBL_GHWPARAMS1_GHWPARAMS1_22_21_Field;
      --  Read-only. USB3DR_SPRAM_TYP
      GHWPARAMS1_23    : Boolean;
      --  Read-only. USB3DR_EN_PWROPT
      GHWPARAMS1_25_24 : USB3DR_GBL_GHWPARAMS1_GHWPARAMS1_25_24_Field;
      --  Read-only. USB3DR_MAC_PHY_CLKS_SYNC
      GHWPARAMS1_26    : Boolean;
      --  Read-only. USB3DR_MAC_RAM_CLKS_SYNC
      GHWPARAMS1_27    : Boolean;
      --  Read-only. USB3DR_RAM_BUS_CLKS_SYNC
      GHWPARAMS1_28    : Boolean;
      --  unspecified
      Reserved_29_29   : HAL.Bit;
      --  Read-only. USB3DR_RM_OPT_FEATURES
      GHWPARAMS1_30    : Boolean;
      --  Read-only. USB3DR_EN_DBC
      GHWPARAMS1_31    : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GHWPARAMS1_Register use record
      GHWPARAMS1_2_0   at 0 range 0 .. 2;
      GHWPARAMS1_5_3   at 0 range 3 .. 5;
      GHWPARAMS1_8_6   at 0 range 6 .. 8;
      GHWPARAMS1_11_9  at 0 range 9 .. 11;
      GHWPARAMS1_14_12 at 0 range 12 .. 14;
      GHWPARAMS1_20_15 at 0 range 15 .. 20;
      GHWPARAMS1_22_21 at 0 range 21 .. 22;
      GHWPARAMS1_23    at 0 range 23 .. 23;
      GHWPARAMS1_25_24 at 0 range 24 .. 25;
      GHWPARAMS1_26    at 0 range 26 .. 26;
      GHWPARAMS1_27    at 0 range 27 .. 27;
      GHWPARAMS1_28    at 0 range 28 .. 28;
      Reserved_29_29   at 0 range 29 .. 29;
      GHWPARAMS1_30    at 0 range 30 .. 30;
      GHWPARAMS1_31    at 0 range 31 .. 31;
   end record;

   subtype USB3DR_GBL_GHWPARAMS3_GHWPARAMS3_1_0_Field is HAL.UInt2;
   subtype USB3DR_GBL_GHWPARAMS3_GHWPARAMS3_3_2_Field is HAL.UInt2;
   subtype USB3DR_GBL_GHWPARAMS3_GHWPARAMS3_5_4_Field is HAL.UInt2;
   subtype USB3DR_GBL_GHWPARAMS3_GHWPARAMS3_7_6_Field is HAL.UInt2;
   subtype USB3DR_GBL_GHWPARAMS3_GHWPARAMS3_17_12_Field is HAL.UInt6;
   subtype USB3DR_GBL_GHWPARAMS3_GHWPARAMS3_22_18_Field is HAL.UInt5;
   subtype USB3DR_GBL_GHWPARAMS3_GHWPARAMS3_30_23_Field is HAL.UInt8;

   --  USB3DR global hardware parameters register 3
   type USB3DR_GBL_GHWPARAMS3_Register is record
      --  Read-only. USB3DR_SSPHY_INTERFACE
      GHWPARAMS3_1_0   : USB3DR_GBL_GHWPARAMS3_GHWPARAMS3_1_0_Field;
      --  Read-only. USB3DR_HSPHY_INTERFACE
      GHWPARAMS3_3_2   : USB3DR_GBL_GHWPARAMS3_GHWPARAMS3_3_2_Field;
      --  Read-only. USB3DR_FSPHY_INTERFACE
      GHWPARAMS3_5_4   : USB3DR_GBL_GHWPARAMS3_GHWPARAMS3_5_4_Field;
      --  Read-only. USB3DR_HSPHY_DWIDTH
      GHWPARAMS3_7_6   : USB3DR_GBL_GHWPARAMS3_GHWPARAMS3_7_6_Field;
      --  unspecified
      Reserved_8_9     : HAL.UInt2;
      --  Read-only. USB3DR_VENDOR_CTL_INTERFACE
      GHWPARAMS3_10    : Boolean;
      --  Read-only. USB3DR_ULPI_CARKIT
      GHWPARAMS3_11    : Boolean;
      --  Read-only. USB3DR_NUM_EPS
      GHWPARAMS3_17_12 : USB3DR_GBL_GHWPARAMS3_GHWPARAMS3_17_12_Field;
      --  Read-only. USB3DR_NUM_IN_EPS
      GHWPARAMS3_22_18 : USB3DR_GBL_GHWPARAMS3_GHWPARAMS3_22_18_Field;
      --  Read-only. USB3DR_CACHE_TOTAL_XFER_RESOURCES
      GHWPARAMS3_30_23 : USB3DR_GBL_GHWPARAMS3_GHWPARAMS3_30_23_Field;
      --  unspecified
      Reserved_31_31   : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GHWPARAMS3_Register use record
      GHWPARAMS3_1_0   at 0 range 0 .. 1;
      GHWPARAMS3_3_2   at 0 range 2 .. 3;
      GHWPARAMS3_5_4   at 0 range 4 .. 5;
      GHWPARAMS3_7_6   at 0 range 6 .. 7;
      Reserved_8_9     at 0 range 8 .. 9;
      GHWPARAMS3_10    at 0 range 10 .. 10;
      GHWPARAMS3_11    at 0 range 11 .. 11;
      GHWPARAMS3_17_12 at 0 range 12 .. 17;
      GHWPARAMS3_22_18 at 0 range 18 .. 22;
      GHWPARAMS3_30_23 at 0 range 23 .. 30;
      Reserved_31_31   at 0 range 31 .. 31;
   end record;

   subtype USB3DR_GBL_GHWPARAMS4_GHWPARAMS4_5_0_Field is HAL.UInt6;
   subtype USB3DR_GBL_GHWPARAMS4_GHWPARAMS4_8_7_Field is HAL.UInt2;
   subtype USB3DR_GBL_GHWPARAMS4_GHWPARAMS4_10_9_Field is HAL.UInt2;
   subtype USB3DR_GBL_GHWPARAMS4_GHWPARAMS4_16_13_Field is HAL.UInt4;
   subtype USB3DR_GBL_GHWPARAMS4_GHWPARAMS4_20_17_Field is HAL.UInt4;
   subtype USB3DR_GBL_GHWPARAMS4_GHWPARAMS4_27_24_Field is HAL.UInt4;
   subtype USB3DR_GBL_GHWPARAMS4_GHWPARAMS4_31_28_Field is HAL.UInt4;

   --  USB3DR global hardware parameters register 4
   type USB3DR_GBL_GHWPARAMS4_Register is record
      --  Read-only. USB3DR_CACHE_TRBS_PER_TRANSFER
      GHWPARAMS4_5_0   : USB3DR_GBL_GHWPARAMS4_GHWPARAMS4_5_0_Field;
      --  unspecified
      Reserved_6_6     : HAL.Bit;
      --  Read-only. USB3DR_NUM_SSIC_NUM_LANE This bit indicates
      --  USB3DR_SSIC_NUM_LANE parameter value chosen by the user. Note: When
      --  the USB3DR_NUM_SSIC_PORTS parameter is set to zero, this field is
      --  Reserved.
      GHWPARAMS4_8_7   : USB3DR_GBL_GHWPARAMS4_GHWPARAMS4_8_7_Field;
      --  Read-only. USB3DR_SSIC_GEAR This field indicates USB3DR_SSIC_GEAR
      --  parameter value chosen by the user. Note: When the
      --  USB3DR_NUM_SSIC_PORTS parameter is set to zero, this field is
      --  Reserved.
      GHWPARAMS4_10_9  : USB3DR_GBL_GHWPARAMS4_GHWPARAMS4_10_9_Field;
      --  Read-only. USB3DR_SSIC_NON_SNPS_MPHY This field indicates whether
      --  Synopsys M-PHY or a third party M-PHY is used with SSIC ports. Note:
      --  When the USB3DR_NUM_SSIC_PORTS parameter is set to zero, this bit is
      --  Reserved.
      GHWPARAMS4_11    : Boolean;
      --  Read-only. USB3DR_EN_SSIC Note: When the USB3DR_NUM_SSIC_PORTS
      --  parameter is set to zero, this bit is Reserved.
      GHWPARAMS4_12    : Boolean;
      --  Read-only. USB3DR_HIBER_SCRATCHBUFS Number of external scratchpad
      --  buffers the core requires to save its internal state in the device
      --  mode. Each buffer is assumed to be 4KBytes. The scratchpad buffer
      --  array must have this many buffer pointers.
      GHWPARAMS4_16_13 : USB3DR_GBL_GHWPARAMS4_GHWPARAMS4_16_13_Field;
      --  Read-only. USB3DR_NUM_SS_USB_INSTANCES
      GHWPARAMS4_20_17 : USB3DR_GBL_GHWPARAMS4_GHWPARAMS4_20_17_Field;
      --  Read-only. USB3DR_EXT_BUFF_CONTROL
      GHWPARAMS4_21    : Boolean;
      --  unspecified
      Reserved_22_22   : HAL.Bit;
      --  Read-only. USB3DR_EN_ISOC_SUPT
      GHWPARAMS4_23    : Boolean;
      --  Read-only. USB3DR_BMU_PTL_DEPTH-1
      GHWPARAMS4_27_24 : USB3DR_GBL_GHWPARAMS4_GHWPARAMS4_27_24_Field;
      --  Read-only. USB3DR_BMU_LSP_DEPTH
      GHWPARAMS4_31_28 : USB3DR_GBL_GHWPARAMS4_GHWPARAMS4_31_28_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GHWPARAMS4_Register use record
      GHWPARAMS4_5_0   at 0 range 0 .. 5;
      Reserved_6_6     at 0 range 6 .. 6;
      GHWPARAMS4_8_7   at 0 range 7 .. 8;
      GHWPARAMS4_10_9  at 0 range 9 .. 10;
      GHWPARAMS4_11    at 0 range 11 .. 11;
      GHWPARAMS4_12    at 0 range 12 .. 12;
      GHWPARAMS4_16_13 at 0 range 13 .. 16;
      GHWPARAMS4_20_17 at 0 range 17 .. 20;
      GHWPARAMS4_21    at 0 range 21 .. 21;
      Reserved_22_22   at 0 range 22 .. 22;
      GHWPARAMS4_23    at 0 range 23 .. 23;
      GHWPARAMS4_27_24 at 0 range 24 .. 27;
      GHWPARAMS4_31_28 at 0 range 28 .. 31;
   end record;

   subtype USB3DR_GBL_GHWPARAMS5_GHWPARAMS5_3_0_Field is HAL.UInt4;
   subtype USB3DR_GBL_GHWPARAMS5_GHWPARAMS5_9_4_Field is HAL.UInt6;
   subtype USB3DR_GBL_GHWPARAMS5_GHWPARAMS5_15_10_Field is HAL.UInt6;
   subtype USB3DR_GBL_GHWPARAMS5_GHWPARAMS5_21_16_Field is HAL.UInt6;
   subtype USB3DR_GBL_GHWPARAMS5_GHWPARAMS5_27_22_Field is HAL.UInt6;

   --  USB3DR global hardware parameters register 5
   type USB3DR_GBL_GHWPARAMS5_Register is record
      --  Read-only. USB3DR_BMU_BUSGM_DEPTH
      GHWPARAMS5_3_0   : USB3DR_GBL_GHWPARAMS5_GHWPARAMS5_3_0_Field;
      --  Read-only. USB3DR_RXQ_FIFO_DEPTH
      GHWPARAMS5_9_4   : USB3DR_GBL_GHWPARAMS5_GHWPARAMS5_9_4_Field;
      --  Read-only. USB3DR_TXQ_FIFO_DEPTH
      GHWPARAMS5_15_10 : USB3DR_GBL_GHWPARAMS5_GHWPARAMS5_15_10_Field;
      --  Read-only. USB3DR_DWQ_FIFO_DEPTH
      GHWPARAMS5_21_16 : USB3DR_GBL_GHWPARAMS5_GHWPARAMS5_21_16_Field;
      --  Read-only. USB3DR_DFQ_FIFO_DEPTH
      GHWPARAMS5_27_22 : USB3DR_GBL_GHWPARAMS5_GHWPARAMS5_27_22_Field;
      --  unspecified
      Reserved_28_31   : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GHWPARAMS5_Register use record
      GHWPARAMS5_3_0   at 0 range 0 .. 3;
      GHWPARAMS5_9_4   at 0 range 4 .. 9;
      GHWPARAMS5_15_10 at 0 range 10 .. 15;
      GHWPARAMS5_21_16 at 0 range 16 .. 21;
      GHWPARAMS5_27_22 at 0 range 22 .. 27;
      Reserved_28_31   at 0 range 28 .. 31;
   end record;

   subtype USB3DR_GBL_GHWPARAMS6_GHWPARAMS6_5_0_Field is HAL.UInt6;
   subtype USB3DR_GBL_GHWPARAMS6_GHWPARAMS6_31_16_Field is HAL.UInt16;

   --  USB3DR global hardware parameters register 6
   type USB3DR_GBL_GHWPARAMS6_Register is record
      --  Read-only. USB3DR_PSQ_FIFO_DEPTH
      GHWPARAMS6_5_0   : USB3DR_GBL_GHWPARAMS6_GHWPARAMS6_5_0_Field;
      --  Read-only. USB3DR_EN_DBG_PORTS
      GHWPARAMS6_6     : Boolean;
      --  Read-only. USB3DR_EN_FPGA
      GHWPARAMS6_7     : Boolean;
      --  unspecified
      Reserved_8_9     : HAL.UInt2;
      --  Read-only. SRP support enabled The application uses this bit to
      --  determine the USB3DR SRP support. This bit is 1 when the parameter
      --  USB3DR_EN_OTG is not 0.
      SRPSUPPORT       : Boolean;
      --  Read-only. RSP/HNP support enabled The application uses this bit to
      --  determine the USB3DR RSP/HNP support. This bit is enabled only if HNP
      --  mode was specified for HNP mode of operation in coreConsultant
      --  (parameter USB3DR_EN_OTG is not 0, and USB3DR_MODE is DRD).
      --  Otherwise, it reads as 0.
      HNPSUPPORT       : Boolean;
      --  Read-only. USB3DR_EN_ADP
      ADPSUPPORT       : Boolean;
      --  Read-only. OTG 3.0 support enabled This bit indicates whether the
      --  parameter USB3DR_EN_OTG is set to 2. In other words, it indicates
      --  whether the USB3DR core supports OTG 3.0.
      OTG_SS_SUPPORT   : Boolean;
      --  Read-only. USB3DR_EN_BC
      BCSUPPORT        : Boolean;
      --  Read-only. USB3DR_EN_BUS_FILTERS
      BUSFLTRSSUPPORT  : Boolean;
      --  Read-only. USB3DR_RAM0_DEPTH
      GHWPARAMS6_31_16 : USB3DR_GBL_GHWPARAMS6_GHWPARAMS6_31_16_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GHWPARAMS6_Register use record
      GHWPARAMS6_5_0   at 0 range 0 .. 5;
      GHWPARAMS6_6     at 0 range 6 .. 6;
      GHWPARAMS6_7     at 0 range 7 .. 7;
      Reserved_8_9     at 0 range 8 .. 9;
      SRPSUPPORT       at 0 range 10 .. 10;
      HNPSUPPORT       at 0 range 11 .. 11;
      ADPSUPPORT       at 0 range 12 .. 12;
      OTG_SS_SUPPORT   at 0 range 13 .. 13;
      BCSUPPORT        at 0 range 14 .. 14;
      BUSFLTRSSUPPORT  at 0 range 15 .. 15;
      GHWPARAMS6_31_16 at 0 range 16 .. 31;
   end record;

   subtype USB3DR_GBL_GHWPARAMS7_GHWPARAMS7_15_0_Field is HAL.UInt16;
   subtype USB3DR_GBL_GHWPARAMS7_GHWPARAMS7_31_16_Field is HAL.UInt16;

   --  USB3DR global hardware parameters register 7
   type USB3DR_GBL_GHWPARAMS7_Register is record
      --  Read-only. USB3DR_RAM1_DEPTH
      GHWPARAMS7_15_0  : USB3DR_GBL_GHWPARAMS7_GHWPARAMS7_15_0_Field;
      --  Read-only. USB3DR_RAM2_DEPTH
      GHWPARAMS7_31_16 : USB3DR_GBL_GHWPARAMS7_GHWPARAMS7_31_16_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GHWPARAMS7_Register use record
      GHWPARAMS7_15_0  at 0 range 0 .. 15;
      GHWPARAMS7_31_16 at 0 range 16 .. 31;
   end record;

   subtype USB3DR_GBL_GDBGFIFOSPACE_FIFO_QUEUE_SELECT_Field is HAL.UInt9;
   subtype USB3DR_GBL_GDBGFIFOSPACE_SPACE_AVAILABLE_Field is HAL.UInt16;

   --  USB3DR global debug queue/FIFO space available register
   type USB3DR_GBL_GDBGFIFOSPACE_Register is record
      --  FIFO/queue select and port select FIFO_QUEUE_SELECT[8:5] indicates
      --  the FIFO/queue type FIFO_QUEUE_SELECT[4:0] indicates the FIFO/queue
      --  number For example 00100001 refers to RxFIFO_1 and 01011110 refers to
      --  TxReqQ_30. 00011111 to 00000000: TxFIFO_31 to TxFIFO_0 00111111 to
      --  00100000: RxFIFO_31 to RxFIFO_0 01011111 to 01000000: TxReqQ_31 to
      --  TxReqQ_0 01111111 to 01100000: RxReqQ_31 to RxReqQ_0 10011111 to
      --  10000000: RxInfoQ_31 to RxInfoQ_0 11011111 to 11100000: DescFetchQ_31
      --  to DescFetchQ_0 11111111 to 11100000: WriteBack/EventQ_31 to
      --  WriteBack/EventQ_0 00000111 to 00000000: AuxEventQ_7 to AuxEventQ_0
      --  (if EN_SEPARATE_DESC_QUEUES=1) FIFO_QUEUE_SELECT[3:0] selects the
      --  port-number when accessing GDBGLTSSM register.
      FIFO_QUEUE_SELECT : USB3DR_GBL_GDBGFIFOSPACE_FIFO_QUEUE_SELECT_Field :=
                           16#0#;
      --  unspecified
      Reserved_9_15     : HAL.UInt7 := 16#0#;
      --  Read-only. SPACE_AVAILABLE
      SPACE_AVAILABLE   : USB3DR_GBL_GDBGFIFOSPACE_SPACE_AVAILABLE_Field :=
                           16#42#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GDBGFIFOSPACE_Register use record
      FIFO_QUEUE_SELECT at 0 range 0 .. 8;
      Reserved_9_15     at 0 range 9 .. 15;
      SPACE_AVAILABLE   at 0 range 16 .. 31;
   end record;

   subtype USB3DR_GBL_GDBGLTSSM_LTDBCLKSTATE_Field is HAL.UInt3;
   subtype USB3DR_GBL_GDBGLTSSM_TXDEEMPHASIS_Field is HAL.UInt2;
   subtype USB3DR_GBL_GDBGLTSSM_POWERDOWN_Field is HAL.UInt2;
   subtype USB3DR_GBL_GDBGLTSSM_LTDBPHYCMDSTATE_Field is HAL.UInt3;
   subtype USB3DR_GBL_GDBGLTSSM_LTDBSUBSTATE_Field is HAL.UInt4;
   subtype USB3DR_GBL_GDBGLTSSM_LTDBLINKSTATE_Field is HAL.UInt4;

   --  USB3DR global debug LTSSM register
   type USB3DR_GBL_GDBGLTSSM_Register is record
      --  Read-only. TX Ones/Zeros (TxOnesZeros) For field definition, refer to
      --  Table 5-3 of [PIPE].
      TXONESZEROS         : Boolean;
      --  Read-only. RX termination (RxTermination)
      RXTERMINATION       : Boolean;
      --  Read-only. TX swing (TxSwing) For field definition, refer to Table
      --  5-3 of [PIPE].
      TXSWING             : Boolean;
      --  Read-only. LTSSM clock state (LTDBClkState) In multi-port host
      --  configuration, the port number is defined by Port-Select[3:0] field
      --  in the GDBGFIFOSPACE register. Note: GDBGLTSSM register is not
      --  applicable for USB 2.0-only mode.
      LTDBCLKSTATE        : USB3DR_GBL_GDBGLTSSM_LTDBCLKSTATE_Field;
      --  Read-only. TXDEEMPHASIS (TxDeemphasis) For field definition, refer to
      --  Table 5-3 of [PIPE].
      TXDEEMPHASIS        : USB3DR_GBL_GDBGLTSSM_TXDEEMPHASIS_Field;
      --  Read-only. RxEq train For field definition, refer to Table 5-3 of
      --  [PIPE].
      RXEQTRAIN           : Boolean;
      --  Read-only. POWERDOWN (PowerDown) For field definition, refer to Table
      --  5-3 of [PIPE].
      POWERDOWN           : USB3DR_GBL_GDBGLTSSM_POWERDOWN_Field;
      --  Read-only. LTSSM PHY command state (LTDBPhyCmdState)
      LTDBPHYCMDSTATE     : USB3DR_GBL_GDBGLTSSM_LTDBPHYCMDSTATE_Field;
      --  Read-only. TX detect RX/loopback (TxDetRxLoopback) For field
      --  definition, refer to Table 5-3 of [PIPE].
      TXDETRXLOOPBACK     : Boolean;
      --  Read-only. RX polarity (RxPolarity) For field definition, refer to
      --  Table 5-3 of [PIPE].
      RXPOLARITY          : Boolean;
      --  Read-only. TX elec idle (TxElecIdle) For field definition, refer to
      --  Table 5-3 of [PIPE].
      TXELECLDLE          : Boolean;
      --  Read-only. Elastic buffer mode (ElasticBufferMode) For field
      --  definition, refer to Table 5-3 of [PIPE].
      ELASTICBUFFERMODE   : Boolean;
      --  Read-only. LTDB sub-state (LTDBSubState)
      LTDBSUBSTATE        : USB3DR_GBL_GDBGLTSSM_LTDBSUBSTATE_Field;
      --  Read-only. LTDB link state (LTDBLinkState)
      LTDBLINKSTATE       : USB3DR_GBL_GDBGLTSSM_LTDBLINKSTATE_Field;
      --  Read-only. LTDB Timeout (LTDBTimeout)
      LTDBTIMEOUT         : Boolean;
      --  Read-only. Port direction Note: This bit is applicable only for OTG
      --  3.0 mode of operation and is Reserved for other modes.
      PRTDIRECTION        : Boolean;
      --  Read-only. a3_ds_host_shutdown/b3_ds_host_shutdown Note: This bit is
      --  applicable only for OTG 3.0 mode of operation and is Reserved for
      --  other modes.
      X3_DS_HOST_SHUTDOWN : Boolean;
      --  Read-only.
      --  a3_ds_swapping/a3_us_swapping/b3_ds_swapping/b3_us_swapping Interpret
      --  this field based on the port direction. Note: This bit is applicable
      --  only for OTG 3.0 mode of operation and is Reserved for other modes.
      X3_XS_SWAPPING      : Boolean;
      --  Read-only. RxElecidle For description of RxElecIdle, see [PIPE].
      RXELECIDLE          : Boolean;
      --  unspecified
      Reserved_31_31      : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GDBGLTSSM_Register use record
      TXONESZEROS         at 0 range 0 .. 0;
      RXTERMINATION       at 0 range 1 .. 1;
      TXSWING             at 0 range 2 .. 2;
      LTDBCLKSTATE        at 0 range 3 .. 5;
      TXDEEMPHASIS        at 0 range 6 .. 7;
      RXEQTRAIN           at 0 range 8 .. 8;
      POWERDOWN           at 0 range 9 .. 10;
      LTDBPHYCMDSTATE     at 0 range 11 .. 13;
      TXDETRXLOOPBACK     at 0 range 14 .. 14;
      RXPOLARITY          at 0 range 15 .. 15;
      TXELECLDLE          at 0 range 16 .. 16;
      ELASTICBUFFERMODE   at 0 range 17 .. 17;
      LTDBSUBSTATE        at 0 range 18 .. 21;
      LTDBLINKSTATE       at 0 range 22 .. 25;
      LTDBTIMEOUT         at 0 range 26 .. 26;
      PRTDIRECTION        at 0 range 27 .. 27;
      X3_DS_HOST_SHUTDOWN at 0 range 28 .. 28;
      X3_XS_SWAPPING      at 0 range 29 .. 29;
      RXELECIDLE          at 0 range 30 .. 30;
      Reserved_31_31      at 0 range 31 .. 31;
   end record;

   subtype USB3DR_GBL_GDBGLNMCC_LNMCC_BERC_Field is HAL.UInt9;

   --  USB3DR global debug LNMCC register
   type USB3DR_GBL_GDBGLNMCC_Register is record
      --  Read-only. This field indicates the bit error rate information for
      --  the port selected in the GDBGFIFOSPACE.PortSelect field. This field
      --  is for debug purposes only.
      LNMCC_BERC    : USB3DR_GBL_GDBGLNMCC_LNMCC_BERC_Field;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GDBGLNMCC_Register use record
      LNMCC_BERC    at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype USB3DR_GBL_GDBGBMU_BMU_CCU_Field is HAL.UInt4;
   subtype USB3DR_GBL_GDBGBMU_BMU_DCU_Field is HAL.UInt4;
   subtype USB3DR_GBL_GDBGBMU_BMU_BCU_Field is HAL.UInt24;

   --  USB3DR global debug BMU register
   type USB3DR_GBL_GDBGBMU_Register is record
      --  Read-only. BMU_CCU debug information
      BMU_CCU : USB3DR_GBL_GDBGBMU_BMU_CCU_Field;
      --  Read-only. BMU_DCU debug information
      BMU_DCU : USB3DR_GBL_GDBGBMU_BMU_DCU_Field;
      --  Read-only. BMU_BCU debug information
      BMU_BCU : USB3DR_GBL_GDBGBMU_BMU_BCU_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GDBGBMU_Register use record
      BMU_CCU at 0 range 0 .. 3;
      BMU_DCU at 0 range 4 .. 7;
      BMU_BCU at 0 range 8 .. 31;
   end record;

   subtype USB3DR_GBL_GDBGLSPMUX_HST_HOSTSELECT_Field is HAL.UInt14;
   subtype USB3DR_GBL_GDBGLSPMUX_HST_LOGIC_ANALYZER_TRACE_Field is HAL.UInt8;

   --  USB3DR global debug LSP MUX register - host
   type USB3DR_GBL_GDBGLSPMUX_HST_Register is record
      --  Device LSP select Selects the LSP debug information presented in the
      --  GDBGLSP register in host mode.
      HOSTSELECT           : USB3DR_GBL_GDBGLSPMUX_HST_HOSTSELECT_Field :=
                              16#0#;
      --  unspecified
      Reserved_14_15       : HAL.UInt2 := 16#0#;
      --  logic_analyzer_trace port MUX select Currently only bits[21:16] are
      --  used. A value of 0x3F drives 0s on the logic_analyzer_trace signal.
      --  This feature can be used if, instead of using a mux, this signal is
      --  intended to be ORed with other trace signals in the system to
      --  generate a common trace signal.
      LOGIC_ANALYZER_TRACE : USB3DR_GBL_GDBGLSPMUX_HST_LOGIC_ANALYZER_TRACE_Field :=
                              16#3F#;
      --  unspecified
      Reserved_24_31       : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GDBGLSPMUX_HST_Register use record
      HOSTSELECT           at 0 range 0 .. 13;
      Reserved_14_15       at 0 range 14 .. 15;
      LOGIC_ANALYZER_TRACE at 0 range 16 .. 23;
      Reserved_24_31       at 0 range 24 .. 31;
   end record;

   --  USB3DR_GBL_GPRTBIMAP_HSLO_BINUM array element
   subtype USB3DR_GBL_GPRTBIMAP_HSLO_BINUM_Element is HAL.UInt4;

   --  USB3DR_GBL_GPRTBIMAP_HSLO_BINUM array
   type USB3DR_GBL_GPRTBIMAP_HSLO_BINUM_Field_Array is array (1 .. 8)
     of USB3DR_GBL_GPRTBIMAP_HSLO_BINUM_Element
     with Component_Size => 4, Size => 32;

   --  USB3DR global high-speed port to bus instance mapping register - low
   type USB3DR_GBL_GPRTBIMAP_HSLO_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BINUM as a value
            Val : HAL.UInt32;
         when True =>
            --  BINUM as an array
            Arr : USB3DR_GBL_GPRTBIMAP_HSLO_BINUM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GPRTBIMAP_HSLO_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  USB3DR_GBL_GPRTBIMAP_HSHI_BINUM array element
   subtype USB3DR_GBL_GPRTBIMAP_HSHI_BINUM_Element is HAL.UInt4;

   --  USB3DR_GBL_GPRTBIMAP_HSHI_BINUM array
   type USB3DR_GBL_GPRTBIMAP_HSHI_BINUM_Field_Array is array (9 .. 15)
     of USB3DR_GBL_GPRTBIMAP_HSHI_BINUM_Element
     with Component_Size => 4, Size => 28;

   --  Type definition for USB3DR_GBL_GPRTBIMAP_HSHI_BINUM
   type USB3DR_GBL_GPRTBIMAP_HSHI_BINUM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BINUM as a value
            Val : HAL.UInt28;
         when True =>
            --  BINUM as an array
            Arr : USB3DR_GBL_GPRTBIMAP_HSHI_BINUM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 28;

   for USB3DR_GBL_GPRTBIMAP_HSHI_BINUM_Field use record
      Val at 0 range 0 .. 27;
      Arr at 0 range 0 .. 27;
   end record;

   --  USB3DR global high-speed port to bus instance mapping register - high
   type USB3DR_GBL_GPRTBIMAP_HSHI_Register is record
      --  BINUM9: HS USB instance number for port 9. Application programmable
      --  ID field.
      BINUM          : USB3DR_GBL_GPRTBIMAP_HSHI_BINUM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GPRTBIMAP_HSHI_Register use record
      BINUM          at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  USB3DR_GBL_GPRTBIMAP_FSLO_BINUM array element
   subtype USB3DR_GBL_GPRTBIMAP_FSLO_BINUM_Element is HAL.UInt4;

   --  USB3DR_GBL_GPRTBIMAP_FSLO_BINUM array
   type USB3DR_GBL_GPRTBIMAP_FSLO_BINUM_Field_Array is array (1 .. 8)
     of USB3DR_GBL_GPRTBIMAP_FSLO_BINUM_Element
     with Component_Size => 4, Size => 32;

   --  USB3DR global full-speed port to bus instance mapping register - low
   type USB3DR_GBL_GPRTBIMAP_FSLO_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BINUM as a value
            Val : HAL.UInt32;
         when True =>
            --  BINUM as an array
            Arr : USB3DR_GBL_GPRTBIMAP_FSLO_BINUM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GPRTBIMAP_FSLO_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  USB3DR_GBL_GPRTBIMAP_FSHI_BINUM array element
   subtype USB3DR_GBL_GPRTBIMAP_FSHI_BINUM_Element is HAL.UInt4;

   --  USB3DR_GBL_GPRTBIMAP_FSHI_BINUM array
   type USB3DR_GBL_GPRTBIMAP_FSHI_BINUM_Field_Array is array (9 .. 15)
     of USB3DR_GBL_GPRTBIMAP_FSHI_BINUM_Element
     with Component_Size => 4, Size => 28;

   --  Type definition for USB3DR_GBL_GPRTBIMAP_FSHI_BINUM
   type USB3DR_GBL_GPRTBIMAP_FSHI_BINUM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BINUM as a value
            Val : HAL.UInt28;
         when True =>
            --  BINUM as an array
            Arr : USB3DR_GBL_GPRTBIMAP_FSHI_BINUM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 28;

   for USB3DR_GBL_GPRTBIMAP_FSHI_BINUM_Field use record
      Val at 0 range 0 .. 27;
      Arr at 0 range 0 .. 27;
   end record;

   --  USB3DR global full-speed port to bus instance mapping register - high
   type USB3DR_GBL_GPRTBIMAP_FSHI_Register is record
      --  BINUM9: FS USB instance number for port 9. Application programmable
      --  ID field.
      BINUM          : USB3DR_GBL_GPRTBIMAP_FSHI_BINUM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GPRTBIMAP_FSHI_Register use record
      BINUM          at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype USB3DR_GBL_GUCTL2_TXPINGDURATION_Field is HAL.UInt5;
   subtype USB3DR_GBL_GUCTL2_RXPINGDURATION_Field is HAL.UInt6;
   subtype USB3DR_GBL_GUCTL2_NOLOWPWRDUR_Field is HAL.UInt4;
   subtype USB3DR_GBL_GUCTL2_EN_HP_PM_TIMER_Field is HAL.UInt7;

   --  USB3DR global user control register 2
   type USB3DR_GBL_GUCTL2_Register is record
      --  Transmit ping maximum duration This field is relevant in Device mode
      --  and controls the maximum duration for which the controller should
      --  instruct the PHY to transmit a ping LFPS. The duration of the ping
      --  LFPS is controlled by programming this value by steps of 8ns.
      --  Example: A value of 13 indicates 104ns.
      TXPINGDURATION     : USB3DR_GBL_GUCTL2_TXPINGDURATION_Field := 16#D#;
      --  Receive ping maximum duration This field is relevant in Host mode and
      --  controls the maximum duration of received LFPS to be treated as a
      --  ping LFPS. The maximum duration of the ping LFPS is controlled by
      --  programming this value by steps of 8ns. Example: A value of 32
      --  indicates 256ns.
      RXPINGDURATION     : USB3DR_GBL_GUCTL2_RXPINGDURATION_Field := 16#20#;
      --  Disable xHCI errata feature contiguous frame ID capability This field
      --  controls the xHCI errata feature contiguous FrameID capability. When
      --  set, the xHCI HCCPARAMS1 bit 11 is set to 0 indicating that CFC is
      --  not supported. Disable this feature only if the application cannot
      --  tolerate missed service error events for Isoc transfers, and the
      --  system latencies are large enough to cause missed service errors even
      --  if the software is following the isochronous thresholding rules.
      DISABLECFC         : Boolean := False;
      --  Enable evicting endpoint cache after flow control for bulk endpoints.
      --  In 3.00a release, a performance enhancement was done to keep the
      --  non-stream capable bulk IN endpoint in cache after flow control.
      --  Setting this bit disables this enhancement. Thismust be set only for
      --  debug purpose.
      ENABLEEPCACHEEVICT : Boolean := False;
      --  unspecified
      Reserved_13_13     : HAL.Bit := 16#0#;
      --  Enable clearing of the command active bit for the ENDXFER command
      --  after the command execution is completed. This bit is valid in device
      --  mode only.
      RST_ACTBITLATER    : Boolean := False;
      --  No low power duration (NOLOWPWRDUR) This bit is applicable for Device
      --  mode only and is ignored in Host mode. After starting a transfer on
      --  an ESS ISOC endpoint, the application must program these bits. Each
      --  count represents the duration in terms of milliseconds. For example,
      --  a value of 3 represents 3ms.
      NOLOWPWRDUR        : USB3DR_GBL_GUCTL2_NOLOWPWRDUR_Field := 16#0#;
      --  This register field is used to set new HP and PM timers. - To enable
      --  PM timer, set GUCTL2[19] bit as 1. - To enable HP timer, set
      --  GUCTL2[20] bit as 1. Default value is 4 us, when new HP timer is
      --  enabled default value is 11 us. Use GUCTL2[25:21] to specify HP
      --  timer value in microseconds.
      EN_HP_PM_TIMER     : USB3DR_GBL_GUCTL2_EN_HP_PM_TIMER_Field := 16#0#;
      --  unspecified
      Reserved_26_31     : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GUCTL2_Register use record
      TXPINGDURATION     at 0 range 0 .. 4;
      RXPINGDURATION     at 0 range 5 .. 10;
      DISABLECFC         at 0 range 11 .. 11;
      ENABLEEPCACHEEVICT at 0 range 12 .. 12;
      Reserved_13_13     at 0 range 13 .. 13;
      RST_ACTBITLATER    at 0 range 14 .. 14;
      NOLOWPWRDUR        at 0 range 15 .. 18;
      EN_HP_PM_TIMER     at 0 range 19 .. 25;
      Reserved_26_31     at 0 range 26 .. 31;
   end record;

   subtype USB3DR_GBL_GUSB2PHYCFG_TOUTCAL_Field is HAL.UInt3;
   subtype USB3DR_GBL_GUSB2PHYCFG_USBTRDTIM_Field is HAL.UInt4;
   subtype USB3DR_GBL_GUSB2PHYCFG_LSIPD_Field is HAL.UInt3;
   subtype USB3DR_GBL_GUSB2PHYCFG_LSTRD_Field is HAL.UInt3;
   subtype USB3DR_GBL_GUSB2PHYCFG_HSIC_CON_WIDTH_ADJ_Field is HAL.UInt2;

   --  USB3DR global USB2 PHY configuration register
   type USB3DR_GBL_GUSB2PHYCFG_Register is record
      --  HS/FS timeout calibration (TOutCal) The number of PHY clocks, as
      --  indicated by the application in this field, is multiplied by a
      --  bit-time factor; this factor is added to the high-speed/full-speed
      --  interpacket timeout duration in the core to account for additional
      --  delays introduced by the PHY. This may be required, since the delay
      --  introduced by the PHY in generating the linestate condition may vary
      --  among PHYs. The USB standard timeout value for high-speed operation
      --  is 736 to 816 (inclusive) bit times. The USB standard timeout value
      --  for full-speed operation is 16 to 18 (inclusive) bit times. The
      --  application must program this field based on the speed of connection.
      --  The number of bit times added per PHY clock are: High-speed
      --  operation: One 30MHz PHY clock=16 bit times One 60MHz PHY clock=8 bit
      --  times Full-speed operation: One 30MHz PHY clock=0.4 bit times One
      --  60MHz PHY clock=0.2 bit times One 48MHz PHY clock=0.25 bit times
      TOUTCAL                  : USB3DR_GBL_GUSB2PHYCFG_TOUTCAL_Field :=
                                  16#0#;
      --  PHY interface (PHYIf) If UTMI+ is selected, the application uses this
      --  bit to configure the core to support a UTMI+ PHY with an 8- or 16-bit
      --  interface. ULPI mode: 0 Note: All the enabled 2.0 ports must have the
      --  same clock frequency as Port0 clock frequency (utmi_clk[0]). Note:
      --  The UTMI 8-bit and 16-bit modes cannot be used together for different
      --  ports at the same time (that is, all the ports must be in 8-bit mode,
      --  or all of them must be in 16-bit mode, at a time). Note: If any of
      --  the USB 2.0 ports is selected as ULPI port for operation, then all
      --  the USB 2.0 ports must be operating at 60MHz.
      PHYIF                    : Boolean := False;
      --  Read-only. ULPI or UTMI+ select (ULPI_UTMI_Sel) The application uses
      --  this bit to select a UTMI+ or ULPI interface. This bit is writable
      --  only if UTMI+ and ULPI is specified for high-speed PHY interface(s)
      --  in coreConsultant configuration (USB3DR_HSPHY_INTERFACE=3).
      --  Otherwise, this bit is read-only and the value depends on the
      --  interface selected through USB3DR_HSPHY_INTERFACE.
      ULPI_UTMI_SEL            : Boolean := False;
      --  Read-only. Full-Speed serial interface select (FSIntf) The
      --  application uses this bit to select a unidirectional or bidirectional
      --  USB 1.1 full-speed serial transceiver interface. Note: USB 1.1
      --  full-speed serial interface is not supported. This bit always reads
      --  as 0.
      FSINTF                   : Boolean := False;
      --  Suspend USB2.0 HS/FS/LS PHY (SusPHY) When set, USB2.0 PHY enters
      --  Suspend mode if suspend conditions are valid. For DRD/OTG
      --  configurations, it is recommended that this bit is set to 0 during
      --  coreConsultant configuration. If it is set to 1, then the application
      --  must clear this bit after power-on reset. Application needs to set it
      --  to 1 after the core initialization completes. For all other
      --  configurations, this bit can be set to 1 during core configuration.
      --  Note: In Host mode, on reset, this bit is set to 1. Software can
      --  override this bit after reset. Note: In device mode, before issuing
      --  any device endpoint command when operating in 2.0 speeds, disable
      --  this bit and enable it after the command completes. If a command is
      --  issued without disabling this bit when the device is in L2 state and
      --  if mac2_clk (utmi_clk/ulpi_clk) is gated off, the command is not
      --  completed.
      SUSPENDUSB20             : Boolean := False;
      --  Write-only. USB 2.0 high-speed PHY or USB 1.1 full-speed serial
      --  transceiver select The application uses this bit to select a
      --  high-speed PHY or a full-speed transceiver. If both interface types
      --  are selected in coreConsultant (that is, parameters values are not
      --  zero), the application uses this bit to select the active interface,
      --  with read-write bit access. Note: USB 1.1 full-serial transceiver is
      --  not supported. This bit always reads as 0.
      PHYSEL                   : Boolean := False;
      --  Enable utmi_sleep_n and utmi_l1_suspend_n (EnblSlpM) The application
      --  uses this bit to control utmi_sleep_n and utmi_l1_suspend_n assertion
      --  to the PHY in the L1 state. Note: This bit must be set high for Port0
      --  if Synopsys PHY is used. Note: In Device mode, before issuing any
      --  device endpoint command when operating in 2.0 speeds, disable this
      --  bit and enable it after the command completes. Without disabling this
      --  bit, if a command is issued when the device is in L1 state and if
      --  mac2_clk (utmi_clk/ulpi_clk) is gated off, the command is not
      --  completed.
      ENBLSLPM                 : Boolean := False;
      --  Transceiver Delay: Enables a delay between the assertion of the
      --  UTMI/ULPI transceiver select signal (for HS) and the assertion of the
      --  TxValid signal during a HS Chirp. When this bit is set to 1, a delay
      --  (of approximately 2.5 us) is introduced from the time when the
      --  transceiver select is set to 0b00 (HS) to the time the TxValid is
      --  driven to 0 for sending the chirp-K. This delay is required for some
      --  UTMI/ULPI PHYs. Note: If the hibernation feature is enabled when the
      --  device core comes out of power-off, this bit must be re-initialized
      --  with the appropriate value because the core does not save and restore
      --  this bit value during hibernation. Note: This bit is valid only in
      --  device mode.
      XCVRDLY                  : Boolean := False;
      --  USB 2.0 turnaround time (USBTrdTim) Sets the turnaround time in PHY
      --  clocks. Specifies the response time for a MAC request to the packet
      --  FIFO controller (PFC) to fetch data from the DFIFO (SPRAM). The
      --  following are the required values for the minimum device bus
      --  frequency of 60MHz. USB turnaround time is a critical certification
      --  criteria when using long cables and five hub levels. The required
      --  values for this field: If device bus clock is less than 60MHz, and
      --  USB turnaround time is not critical, this field can be set to a
      --  larger value. Note: This field is valid only in device mode.
      USBTRDTIM                : USB3DR_GBL_GUSB2PHYCFG_USBTRDTIM_Field :=
                                  16#9#;
      --  unspecified
      Reserved_14_14           : HAL.Bit := 16#0#;
      --  ULPI auto resume (ULPIAutoRes) Sets the AutoResume bit in interface
      --  control register on the ULPI PHY. Valid only when RTL parameter
      --  USB3DR_HSPHY_INTERFACE=2 or 3
      ULPIAUTORES              : Boolean := False;
      --  unspecified
      Reserved_16_16           : HAL.Bit := 16#0#;
      --  ULPI external VBUS drive (ULPIExtVbusDrv) Selects supply source to
      --  drive 5V on VBUS, in the ULPI PHY. (Only when RTL parameter
      --  USB3DR_HSPHY_INTERFACE=2 or 3)
      ULPIEXTVBUSDRV           : Boolean := False;
      --  ULPI external VBUS indicator (ULPIExtVbusIndicator) Indicates the
      --  ULPI PHY VBUS over-current indicator. Valid only when RTL parameter
      --  USB3DR_HSPHY_INTERFACE=2 or 3
      ULPIEXTVBUSINDIACTOR     : Boolean := False;
      --  LS Inter-Packet Time (LSIPD) This field indicates the value of
      --  TX-to-TX packet gap for LS devices. The encoding is as follows: Note:
      --  This field is applicable only in Host mode. Note: For normal
      --  operation (to work with most LS devices), set the default value of
      --  this field to 2 (3 bit times). Note: The programmable LS device
      --  inter-packet gap and turnaround delays are provided to support some
      --  legacy LS devices that might require different delays than the
      --  default/fixed ones. For instance, the AOpen LS mouse requires 3 bit
      --  times of inter-packet gap to work correctly. Note: Include the PHY
      --  delays when programming the LSIPD/LSTRDTIM values. For example, if
      --  the PHY's TxEndDelay in LS mode is 30 UTMI/ULPI CLKs, then subtract
      --  this delay (~1 LS bit time) from the device's delay requirement.
      LSIPD                    : USB3DR_GBL_GUSB2PHYCFG_LSIPD_Field := 16#0#;
      --  LS Turnaround Time (LSTRDTIM) This field indicates the value of the
      --  RX-to-TX packet gap for LS devices. The encoding is as follows: Note:
      --  This field is applicable only in Host mode. Note: For normal
      --  operation (to work with most LS devices), set the default value of
      --  this field to 0 (2 bit times). Note: The programmable LS device
      --  inter-packet gap and turnaround delays are provided to support some
      --  legacy LS devices that might require different delays than the
      --  default/fixed ones. For instance, the open LS mouse requires 3 bit
      --  times of inter-packet gap to work correctly. Note: Include the PHY
      --  delays when programming the LSIPD/LSTRDTIM values. For example, if
      --  the PHY's TxEndDelay in LS mode is 30 UTMI/ULPI CLKs, then subtract
      --  this delay (~1 LS bit time) from the device's delay requirement.
      LSTRD                    : USB3DR_GBL_GUSB2PHYCFG_LSTRD_Field := 16#0#;
      --  unspecified
      Reserved_25_25           : HAL.Bit := 16#0#;
      --  Read-only. INV_SEL_HSIC The application driver uses this bit to
      --  control the HSIC enable/disable function. When set to 1, this bit
      --  overrides and functionally inverts the 'if_select_hsic' input signal.
      --  If 1213417795 is: If the controller operates as non-HSIC-capable, it
      --  can only connect to non-HSIC-capable PHYs. If it operates as
      --  HSIC-capable, it can connect to HSIC-capable PHYs. This bit is
      --  reserved if the USB3DR_ENABLE_HSIC parameter is set to 0. When
      --  selecting the HSIC feature, set the host side to HSIC mode first,
      --  then set the device mode side. If the device side is set to HSIC mode
      --  first and if the host does not see a connection in HSIC mode, the
      --  device HSIC mode must be deselected and selected again using the
      --  if_select_hsic setting or register bit GUSB2PHYCFGn[26] to ensure
      --  that the device can connect to the host.
      INV_SEL_HSIC             : Boolean := False;
      --  Read-only. HSIC_CON_WIDTH_ADJ This bit is used in the HSIC device
      --  mode of operation. By default, the connect duration for the HSIC
      --  device controller is thrice the strobe period. This duration can be
      --  changed to 4, 5, or 6 times the strobe period by setting the value of
      --  this field to 1, 2, or 3. This value is added to the default connect
      --  duration.
      HSIC_CON_WIDTH_ADJ       : USB3DR_GBL_GUSB2PHYCFG_HSIC_CON_WIDTH_ADJ_Field :=
                                  16#0#;
      --  ULPI_LPM_WITH_OPMODE_CHK Support the LPM over ULPI without NOPID
      --  token to the ULPI PHY. If this bit is set, the ULPI PHY is expected
      --  to qualify the EXT PID with OPMODE=0b00 for LPM and not treat it as a
      --  NOPID. Check the PHY behavior with the vendor. This bit is valid only
      --  when the USB3DR_HSPHY_INTERFACE parameter is 2 or 3. Note: This bit
      --  is valid only in Host mode. This bit should be 0 for Synopsys PHY.
      ULPI_LPM_WITH_OPMODE_CHK : Boolean := False;
      --  U2_FREECLK_EXISTS Specifies whether the USB 2.0 PHY provides a
      --  free-running PHY clock, which is active when the clock control input
      --  is active. If the USB 2.0 PHY provides a free-running PHY clock, it
      --  must be connected to the utmi_clk[0] input. The remaining utmi_clk[n]
      --  must be connected to the respective port clocks. The core uses the
      --  Port-0 clock for generating the internal mac2 clock. Note: When the
      --  core is configured as device-only (USB3DR_MODE=0), do not set this
      --  bit to 1.
      U2_FREECLK_EXISTS        : Boolean := True;
      --  UTMI PHY soft reset (PHYSoftRst) Causes the usb2phy_reset signal to
      --  be asserted to reset a UTMI PHY. Not applicable to ULPI because ULPI
      --  PHYs are reset via their FunctionControl.Reset register, and the core
      --  automatically writes to this register when the core is reset
      --  (vcc_reset_n, USBCMD.HCRST, DCTL.SoftReset, or GCTL.SoftReset)
      PHYSOFTRST               : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GUSB2PHYCFG_Register use record
      TOUTCAL                  at 0 range 0 .. 2;
      PHYIF                    at 0 range 3 .. 3;
      ULPI_UTMI_SEL            at 0 range 4 .. 4;
      FSINTF                   at 0 range 5 .. 5;
      SUSPENDUSB20             at 0 range 6 .. 6;
      PHYSEL                   at 0 range 7 .. 7;
      ENBLSLPM                 at 0 range 8 .. 8;
      XCVRDLY                  at 0 range 9 .. 9;
      USBTRDTIM                at 0 range 10 .. 13;
      Reserved_14_14           at 0 range 14 .. 14;
      ULPIAUTORES              at 0 range 15 .. 15;
      Reserved_16_16           at 0 range 16 .. 16;
      ULPIEXTVBUSDRV           at 0 range 17 .. 17;
      ULPIEXTVBUSINDIACTOR     at 0 range 18 .. 18;
      LSIPD                    at 0 range 19 .. 21;
      LSTRD                    at 0 range 22 .. 24;
      Reserved_25_25           at 0 range 25 .. 25;
      INV_SEL_HSIC             at 0 range 26 .. 26;
      HSIC_CON_WIDTH_ADJ       at 0 range 27 .. 28;
      ULPI_LPM_WITH_OPMODE_CHK at 0 range 29 .. 29;
      U2_FREECLK_EXISTS        at 0 range 30 .. 30;
      PHYSOFTRST               at 0 range 31 .. 31;
   end record;

   subtype USB3DR_GBL_GUSB2PHYACC_UTMI_REGDATA_Field is HAL.UInt8;
   subtype USB3DR_GBL_GUSB2PHYACC_UTMI_EXTREGADDR_Field is HAL.UInt8;
   subtype USB3DR_GBL_GUSB2PHYACC_UTMI_REGADDR_Field is HAL.UInt6;

   --  USB3DR global USB 2.0 UTMI PHY vendor control register
   type USB3DR_GBL_GUSB2PHYACC_UTMI_Register is record
      --  Read-only. REGDATA
      REGDATA        : USB3DR_GBL_GUSB2PHYACC_UTMI_REGDATA_Field;
      --  Read-only. EXTREGADDR
      EXTREGADDR     : USB3DR_GBL_GUSB2PHYACC_UTMI_EXTREGADDR_Field;
      --  Read-only. Register address The 6-bit PHY register address for
      --  immediate PHY register set access. Set to 0x2F for extended PHY
      --  register set access. Note: These bits are applicable for ULPI only.
      REGADDR        : USB3DR_GBL_GUSB2PHYACC_UTMI_REGADDR_Field;
      --  Read-only. Register write The application sets this bit for register
      --  writes and clears it for register reads. Note: This bit is applicable
      --  for ULPI register read/write access only.
      REGWR          : Boolean;
      --  Read-only. VSTSBSY
      VSTSBSY        : Boolean;
      --  Read-only. VSTSDONE
      VSTSDONE       : Boolean;
      --  Read-only. New register request The application sets this bit for a
      --  new vendor control access. Setting this bit to 1 asserts the
      --  utmi_vcontrolload_n (0b0) on the UTMI interface.
      NEWREGREQ      : Boolean;
      --  Read-only. DISUIPIDRVR
      DISUIPIDRVR    : Boolean;
      --  unspecified
      Reserved_27_31 : HAL.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GUSB2PHYACC_UTMI_Register use record
      REGDATA        at 0 range 0 .. 7;
      EXTREGADDR     at 0 range 8 .. 15;
      REGADDR        at 0 range 16 .. 21;
      REGWR          at 0 range 22 .. 22;
      VSTSBSY        at 0 range 23 .. 23;
      VSTSDONE       at 0 range 24 .. 24;
      NEWREGREQ      at 0 range 25 .. 25;
      DISUIPIDRVR    at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype USB3DR_GBL_GUSB3PIPECTL_SS_TX_DE_EMPHASIS_Field is HAL.UInt2;
   subtype USB3DR_GBL_GUSB3PIPECTL_TX_MARGIN_Field is HAL.UInt3;
   subtype USB3DR_GBL_GUSB3PIPECTL_DATWIDTH_Field is HAL.UInt2;
   subtype USB3DR_GBL_GUSB3PIPECTL_DELAYP1P2P3_Field is HAL.UInt3;

   --  USB3DR global USB 3.0 PIPE control register
   type USB3DR_GBL_GUSB3PIPECTL_Register is record
      --  Elastic buffer mode (ElasticBufferMode) (Refer to Table 5-3 of
      --  [PIPE].)
      ELASTIC_BUFFER_MODE               : Boolean := False;
      --  TX deemphasis (TxDeemphasis) The value driven to the PHY is
      --  controlled by the LTSSM during USB3 Compliance mode. (Refer to Table
      --  5-3 of [PIPE].)
      SS_TX_DE_EMPHASIS                 : USB3DR_GBL_GUSB3PIPECTL_SS_TX_DE_EMPHASIS_Field :=
                                           16#1#;
      --  TX Margin[2:0] (TxMargin) Refer to Table 5-3 of [PIPE]
      TX_MARGIN                         : USB3DR_GBL_GUSB3PIPECTL_TX_MARGIN_Field :=
                                           16#0#;
      --  TX swing (TxSwing) Refer to [PIPE].
      TX_SWING                          : Boolean := False;
      --  USB3 SSIC enable (SSICEn) This bit is valid only when coreConsultant
      --  parameter USB3DR_EN_SSIC=1 else this bit needs to be set to 0. Note:
      --  When the USB3DR_NUM_SSIC_PORTS parameter is set to zero, the access
      --  type of this register bit is R_W, but the register bit is not
      --  functional.
      SSICEN                            : Boolean := False;
      --  RX_DETECT to Polling.LFPS control During controller certification
      --  with third party PHY it is observed that the PHY is not able to meet
      --  the TX AC common mode voltage active (VTX-CM-ACPP_ACTIVE  100 mV)
      --  if the link starts polling within 80 us from the time rx.detect is
      --  performed. To meet this VTX-CM-ACPP_ACTIVE specification, the polling
      --  must be delayed further. If the PHY does not have issue, then one can
      --  set this bit to 1 which allows polling to start within 80 us.
      RX_DETECT_TO_POLLING_LFPS_CONTROL : Boolean := False;
      --  LFPS filter (LFPSFilt) When set, filters LFPS reception with
      --  pipe3_RxValid in PHY power state P0, that is, ignores LFPS reception
      --  from the PHY unless both pipe3_Rxelecidle and pipe3_RxValid are
      --  deasserted.
      LFPSFILTER                        : Boolean := False;
      --  P3 exit signal in P2 (P3ExSigP2) When this bit is set, the core
      --  always changes the PHY power state to P2, before attempting a U3 exit
      --  handshake. This bit is used only for some non-Synopsys PHYs that
      --  cannot do LFPS in P3. Note: This bit is used by third party SS PHY.
      --  It must be set to 0 for Synopsys PHY.
      P3EXSIGP2                         : Boolean := False;
      --  P3 P2 transitions OK (P3P2TranOK) When set, the core transitions
      --  directly from Phy power state P2 to P3 or from state P3 to P2. When
      --  not set, P0 is always entered as an intermediate state during
      --  transitions between P2 and P3, as defined in [PIPE]. According to
      --  [PIPE], any direct transition between P3 and P2 is illegal. Note:
      --  This bit is used by third party SS PHY. It must be set to 0 for
      --  Synopsys PHY.
      P3P2TRANOK                        : Boolean := False;
      --  LFPS P0 Align: When set, The core deasserts LFPS transmission on the
      --  clock edge that it requests Phy power state 0 when exiting U1, U2, or
      --  U3 low power states. Otherwise, LFPS transmission is asserted one
      --  clock earlier. The core requests symbol transmission two
      --  pipe3_rx_pclks periods after the PHY asserts PhyStatus as a result of
      --  the PHY switching from P1 or P2 state to P0 state. Currently, this
      --  bit is only used in USB 3.0 HUB with Synopsys PHY. For other USB 3.0
      --  Host, Device, and DRD cores, this bit is not required.
      LFPSP0ALGN                        : Boolean := False;
      --  Skip RX detect: When set, the core skips RX detection if
      --  pipe3_RxElecIdle is low. Skip is defined as waiting for the
      --  appropriate timeout, then repeating the operation.
      SKIPRXDET                         : Boolean := False;
      --  Abort RX detect in U2 (AbortRxDetInU2) When set, and the link state
      --  is U2, then the core aborts the receiver detection if it receives U2
      --  exit LFPS from the remote link partner. This bit is for the
      --  downstream port only. Note: This bit is used by third party SS PHY.
      --  It must be set to 0 for Synopsys PHY.
      ABORTRXDETINU2                    : Boolean := False;
      --  Read-only. PIPE data width (DatWidth) One clock after reset, these
      --  bits receive the value seen on the pipe3_DataBusWidth. The simulation
      --  test bench uses the coreConsultant parameter to configure the VIP.
      --  These bits in the coreConsultant parameter must match the PHY data
      --  width and the pipe3_DataBusWidth port.
      DATWIDTH                          : USB3DR_GBL_GUSB3PIPECTL_DATWIDTH_Field :=
                                           16#1#;
      --  Suspend USB3.0 SS PHY (Suspend_en) When set, and if suspend
      --  conditions are valid, the USB 3.0 PHY enters Suspend mode. For
      --  DRD/OTG configurations, it is recommended that this bit is set to 0
      --  during coreConsultant configuration. If it is set to 1, then the
      --  application must clear this bit after power-on reset. Application
      --  needs to set it to 1 after the core initialization is completed. For
      --  all other configurations, this bit can be set to 1 during core
      --  configuration.
      SUSPENDENABLE                     : Boolean := False;
      --  Delay PHY power change from P0 to P1/P2/P3 when link state changing
      --  from U0 to U1/U2/U3 respectively. Note: If the Synopsys PHY is used,
      --  contact Synopsys customer support for recommendation on setting this
      --  bit because it is node dependent. Note: If a third party SS PHY is
      --  used, check with the PHY vendor for recommendation on setting this
      --  bit.
      DELAYP1TRANS                      : Boolean := True;
      --  Delay P1P2P3 Delay P0 to P1/P2/P3 request when entering U1/U2/U3
      --  until (USB3DR_GUSB3PIPECTL_INIT[21:19]*8) 8B10B error occurs, or
      --  Pipe3_RxValid drops to 0. USB3DR_GUSB3PIPECTL_INIT[18] must be 1 to
      --  enable this functionality.
      DELAYP1P2P3                       : USB3DR_GBL_GUSB3PIPECTL_DELAYP1P2P3_Field :=
                                           16#1#;
      --  Disable receiver detection in U3/RX.Det When set, the core does not
      --  handle receiver detection in either U3 or RX.Detect states.
      --  USB3DR_GUSB3PIPECTL_INIT[23] must be used to start receiver detection
      --  manually. This bit can only be used for the downstream port. This bit
      --  must be set to 0 for upstream ports. This feature must not be enabled
      --  for normal operation. If this feature must be used, contact Synopsys.
      DISRXDETU3RXDET                   : Boolean := False;
      --  Write-only. Start receiver detection in U3/RX.Detect
      --  (StartRxdetU3RxDet) If USB3DR_GUSB3PIPECTL_INIT[22] is set, and the
      --  link is in either U3 or RX.Detect state, the core starts receiver
      --  detection on the rising edge of this bit. This can only be used for
      --  downstream ports. This bit must be set to 0 for upstream ports. This
      --  feature must not be enabled for normal operation. If this feature
      --  must be used, contact Synopsys.
      STARTRXDETU3RXDET                 : Boolean := False;
      --  Always request P1/P2/P3 for U1/U2/U3 (request_p1p2p3) When set, the
      --  core always requests PHY power change from P0 to P1/P2/P3 during U0
      --  to U1/U2/U3 transition. If this bit is 0, and immediate Ux exit
      --  happens (remotely initiated, or locally initiated), the core does not
      --  request P1/P2/P3 power state change. Note: This bit must be set to 1
      --  for Synopsys PHY. For third party SS PHY, check with the PHY vendor.
      REQUEST_P1P2P3                    : Boolean := False;
      --  U1U2exitfail to recovery (u1u2exitfail_to_recov) When set, and U1/U2
      --  LFPS handshake fails, the LTSSM transitions from U1/U2 to recovery
      --  instead of SS inactive. If recovery fails, then the LTSSM can enter
      --  SS.Inactive. This is an enhancement only. It prevents
      --  interoperability issue if the remote link does not do proper
      --  handshake.
      U1U2EXITFAIL_TO_RECOV             : Boolean := False;
      --  Ping enhancement enable (ping_enhancement_en) When set, the
      --  downstream port U1 ping receive timeout becomes 500ms instead of
      --  300ms. Minimum Ping.LFPS receive duration is 8ns (one mac3_clk). This
      --  field is valid for the downstream port only. Note: This bit is used
      --  by third party SS PHY. It must be set to 0 for Synopsys PHY.
      PING_ENHANCEMENT_EN               : Boolean := False;
      --  Ux exit in Px (Ux_exit_in_Px) Note: This bit is used by third party
      --  SS PHY. It must be set to 0 for Synopsys PHY.
      UX_EXIT_IN_PX                     : Boolean := False;
      --  Disabled receiver detection in P3 (DisRxDetP3)
      DISRXDETP3                        : Boolean := False;
      --  P3 OK for U2 (u2P3ok) Note: For a port, if GUSB3PIPECTL[7]=1 and
      --  GUSB3PIPECTL[29]=1, set GUSB3PIPECTL[11] to 1.
      U2P3OK                            : Boolean := False;
      --  HstPrtCmpl This feature tests the PIPE PHY compliance patterns
      --  without having to have a test fixture on the USB 3.0 cable. This bit
      --  enables placing the SS port link into a compliance state. By default,
      --  this bit must be set to 0. In compliance lab testing, the SS port
      --  link enters compliance after failing the first polling sequence after
      --  power on. Set this bit to 0, when compliance tests are executed. The
      --  sequence for using this functionality is as follows: Disconnect any
      --  plugged in devices. Perform USBCMD.HCRST or power-on-chip reset. Set
      --  PORTSC.PLS=0xA. Set PORTSC.PP=0. Set GUSB3PIPECTL. HstPrtCmpl=1. This
      --  places the link into compliance state. To advance the compliance
      --  pattern, follow this sequence (toggle the set GUSB3PIPECTL.
      --  HstPrtCmpl): Set GUSB3PIPECTL.HstPrtCmpl=0. Set
      --  GUSB3PIPECTL.HstPrtCmpl=1. This advances the link to the next
      --  compliance pattern. To exit from the compliance state perform
      --  USBCMD.HCRST or power-on-chip reset.
      HSTPRTCMPL                        : Boolean := False;
      --  USB3 PHY soft reset After setting this bit to 1, the software needs
      --  to clear this bit.
      PHYSOFTRST                        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GUSB3PIPECTL_Register use record
      ELASTIC_BUFFER_MODE               at 0 range 0 .. 0;
      SS_TX_DE_EMPHASIS                 at 0 range 1 .. 2;
      TX_MARGIN                         at 0 range 3 .. 5;
      TX_SWING                          at 0 range 6 .. 6;
      SSICEN                            at 0 range 7 .. 7;
      RX_DETECT_TO_POLLING_LFPS_CONTROL at 0 range 8 .. 8;
      LFPSFILTER                        at 0 range 9 .. 9;
      P3EXSIGP2                         at 0 range 10 .. 10;
      P3P2TRANOK                        at 0 range 11 .. 11;
      LFPSP0ALGN                        at 0 range 12 .. 12;
      SKIPRXDET                         at 0 range 13 .. 13;
      ABORTRXDETINU2                    at 0 range 14 .. 14;
      DATWIDTH                          at 0 range 15 .. 16;
      SUSPENDENABLE                     at 0 range 17 .. 17;
      DELAYP1TRANS                      at 0 range 18 .. 18;
      DELAYP1P2P3                       at 0 range 19 .. 21;
      DISRXDETU3RXDET                   at 0 range 22 .. 22;
      STARTRXDETU3RXDET                 at 0 range 23 .. 23;
      REQUEST_P1P2P3                    at 0 range 24 .. 24;
      U1U2EXITFAIL_TO_RECOV             at 0 range 25 .. 25;
      PING_ENHANCEMENT_EN               at 0 range 26 .. 26;
      UX_EXIT_IN_PX                     at 0 range 27 .. 27;
      DISRXDETP3                        at 0 range 28 .. 28;
      U2P3OK                            at 0 range 29 .. 29;
      HSTPRTCMPL                        at 0 range 30 .. 30;
      PHYSOFTRST                        at 0 range 31 .. 31;
   end record;

   subtype USB3DR_GBL_GTXFIFOSIZ_TXFDEP_N_Field is HAL.UInt16;
   subtype USB3DR_GBL_GTXFIFOSIZ_TXFSTADDR_N_Field is HAL.UInt16;

   --  USB3DR global transmit FIFO size register 0
   type USB3DR_GBL_GTXFIFOSIZ_Register is record
      --  TxFIFO depth This field contains the depth of TxFIFOn in MDWIDTH-bit
      --  words. Minimum value: 32 Maximum value: 32,768
      TXFDEP_N    : USB3DR_GBL_GTXFIFOSIZ_TXFDEP_N_Field := 16#42#;
      --  Transmit FIFOn RAM start address This field contains the memory start
      --  address for TxFIFOn in MDWIDTH-bit words.
      TXFSTADDR_N : USB3DR_GBL_GTXFIFOSIZ_TXFSTADDR_N_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GTXFIFOSIZ_Register use record
      TXFDEP_N    at 0 range 0 .. 15;
      TXFSTADDR_N at 0 range 16 .. 31;
   end record;

   subtype USB3DR_GBL_GRXFIFOSIZ_RXFDEP_N_Field is HAL.UInt16;
   subtype USB3DR_GBL_GRXFIFOSIZ_RXFSTADDR_N_Field is HAL.UInt16;

   --  USB3DR global receive FIFO size register 0
   type USB3DR_GBL_GRXFIFOSIZ_Register is record
      --  RxFIFO depth (RxFDep_n) This field contains the depth of RxFIFOn in
      --  MDWIDTH-bit words. Minimum value: 32 Maximum value: 16,384
      RXFDEP_N    : USB3DR_GBL_GRXFIFOSIZ_RXFDEP_N_Field := 16#185#;
      --  RxFIFOn RAM start address (RxFStAddr_n) This field contains the
      --  memory start address for RxFIFOn in MDWIDTH-bit words.
      RXFSTADDR_N : USB3DR_GBL_GRXFIFOSIZ_RXFSTADDR_N_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GRXFIFOSIZ_Register use record
      RXFDEP_N    at 0 range 0 .. 15;
      RXFSTADDR_N at 0 range 16 .. 31;
   end record;

   subtype USB3DR_GBL_GEVNTSIZ_EVENTSIZ_Field is HAL.UInt16;

   --  USB3DR global event buffer size register
   type USB3DR_GBL_GEVNTSIZ_Register is record
      --  Event buffer size in bytes (EVNTSiz) Holds the size of the event
      --  buffer in bytes; must be a multiple of four. This is programmed by
      --  software once during initialization. The minimum size of the event
      --  buffer is 32 bytes.
      EVENTSIZ       : USB3DR_GBL_GEVNTSIZ_EVENTSIZ_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  Event interrupt mask (EvntIntMask). When set to 1, this prevents the
      --  interrupt from being generated. However, even when the mask is set,
      --  the events are queued.
      EVNTINTRPTMASK : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GEVNTSIZ_Register use record
      EVENTSIZ       at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      EVNTINTRPTMASK at 0 range 31 .. 31;
   end record;

   subtype USB3DR_GBL_GEVNTCOUNT_EVNTCOUNT_Field is HAL.UInt16;

   --  USB3DR global event buffer count register
   type USB3DR_GBL_GEVNTCOUNT_Register is record
      --  Event count (EVNTCount) When read, returns the number of valid events
      --  in the event buffer (in bytes). When written, hardware decrements the
      --  count by the written value. When interrupt moderation is enabled
      --  (that is, DEVICE_IMODI different 0), the interrupt line gets
      --  de-asserted when the first write happens on this register to
      --  decrement the count. When interrupt moderation is disabled (that is,
      --  DEVICE_IMODI = 0), the interrupt line continues to get asserted
      --  until the event count becomes zero (no-moderation behavior).
      EVNTCOUNT         : USB3DR_GBL_GEVNTCOUNT_EVNTCOUNT_Field := 16#0#;
      --  unspecified
      Reserved_16_30    : HAL.UInt15 := 16#0#;
      --  Event handler busy Device software event handler busy indication. The
      --  controller sets this bit when the interrupt line is asserted due to
      --  pending events. Software clears this bit (with 1) when it has
      --  finished processing the events (along with updating the EVNTCOUNT in
      --  this register). The controller does not raise the interrupt line for
      --  a new event unless this bit is cleared. Note: When interrupt
      --  moderation is disabled (that is, DEVICE_IMODI=0), this bit is
      --  ignored.
      EVNT_HANDLER_BUSY : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GEVNTCOUNT_Register use record
      EVNTCOUNT         at 0 range 0 .. 15;
      Reserved_16_30    at 0 range 16 .. 30;
      EVNT_HANDLER_BUSY at 0 range 31 .. 31;
   end record;

   subtype USB3DR_GBL_GTXFIFOPRIDEV_GTXFIFOPRIDEV_Field is HAL.UInt12;

   --  USB3DR global device TX FIFO DMA priority register
   type USB3DR_GBL_GTXFIFOPRIDEV_Register is record
      --  Device TxFIFO priority
      GTXFIFOPRIDEV  : USB3DR_GBL_GTXFIFOPRIDEV_GTXFIFOPRIDEV_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GTXFIFOPRIDEV_Register use record
      GTXFIFOPRIDEV  at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype USB3DR_GBL_GTXFIFOPRIHST_GTXFIFOPRIHST_Field is HAL.UInt3;

   --  USB3DR global host TX FIFO DMA priority register
   type USB3DR_GBL_GTXFIFOPRIHST_Register is record
      --  Host TxFIFO priority
      GTXFIFOPRIHST : USB3DR_GBL_GTXFIFOPRIHST_GTXFIFOPRIHST_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GTXFIFOPRIHST_Register use record
      GTXFIFOPRIHST at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype USB3DR_GBL_GRXFIFOPRIHST_GRXFIFOPRIHST_Field is HAL.UInt3;

   --  USB3DR global host RX FIFO DMA priority register
   type USB3DR_GBL_GRXFIFOPRIHST_Register is record
      --  Host RxFIFO priority
      GRXFIFOPRIHST : USB3DR_GBL_GRXFIFOPRIHST_GRXFIFOPRIHST_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GRXFIFOPRIHST_Register use record
      GRXFIFOPRIHST at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype USB3DR_GBL_GDMAHLRATIO_HSTTXFIFO_Field is HAL.UInt5;
   subtype USB3DR_GBL_GDMAHLRATIO_HSTRXFIFO_Field is HAL.UInt5;

   --  USB3DR global host FIFO DMA high-low priority ratio register
   type USB3DR_GBL_GDMAHLRATIO_Register is record
      --  Host TXFIFO DMA high-low priority
      HSTTXFIFO      : USB3DR_GBL_GDMAHLRATIO_HSTTXFIFO_Field := 16#4#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Host RXFIFO DMA high-low priority
      HSTRXFIFO      : USB3DR_GBL_GDMAHLRATIO_HSTRXFIFO_Field := 16#4#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GDMAHLRATIO_Register use record
      HSTTXFIFO      at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      HSTRXFIFO      at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype USB3DR_GBL_GFLADJ_GFLADJ_30MHZ_Field is HAL.UInt6;
   subtype USB3DR_GBL_GFLADJ_GFLADJ_REFCLK_FLADJ_Field is HAL.UInt14;
   subtype USB3DR_GBL_GFLADJ_GFLADJ_REFCLK_240MHZ_DECR_Field is HAL.UInt7;

   --  USB3DR global frame length adjustment register
   type USB3DR_GBL_GFLADJ_Register is record
      --  GFLADJ_30MHZ This field indicates the value that is used for frame
      --  length adjustment instead of considering from the sideband input
      --  signal fladj_30mhz_reg. This enables post-silicon frame length
      --  adjustment in case the input signal fladj_30mhz_reg is connected to a
      --  wrong value or is not valid. For details on how to set this value,
      --  refer to section 5.2.4, 'Frame Length Adjustment Register (FLADJ),'
      --  of [xHCI].
      GFLADJ_30MHZ                  : USB3DR_GBL_GFLADJ_GFLADJ_30MHZ_Field :=
                                       16#0#;
      --  unspecified
      Reserved_6_6                  : HAL.Bit := 16#0#;
      --  GFLADJ_30MHZ_SDBND_SEL This field selects whether to use the input
      --  signal fladj_30mhz_reg or the GFLADJ.GFLADJ_30MHZ to adjust the frame
      --  length for the SOF/ITP. When this bit is set to:
      GFLADJ_30MHZ_SDBND_SEL        : Boolean := False;
      --  This field indicates the frame length adjustment to be applied when
      --  SOF/ITP counter is running on the ref_clk. This register value is
      --  used to adjust the ITP interval when GCTL[SOFITPSYNC] is set to '1';
      --  SOF and ITP interval when GLADJ.GFLADJ_REFCLK_LPM_SEL is set to '1'.
      --  This field must be programmed to a non-zero value only if
      --  GFLADJ_REFCLK_LPM_SEL is set to 1 or GCTL.SOFITPSYNC is set to 1. The
      --  value is derived as follows:
      --  
      --  
      --  
      --  
      --  
      --  
      --  
      --  
      --  FLADJ_REF_CLK_FLADJ=((125000/ref_clk_period_integer)-(125000/ref_clk_period))
      --  ref_clk_period where: the ref_clk_period_integer is the integer value
      --  of the ref_clk period obtained by truncating the decimal (fractional)
      --  value that is programmed in the GUCTL.REF_CLK_PERIOD field. the
      --  ref_clk_period is the ref_clk period including the fractional value.
      --  Examples: If the ref_clk is 24MHz then GUCTL.REF_CLK_PERIOD=41
      --  GFLADJ.GLADJ_REFCLK_FLADJ=((125000/41)-(125000/41.6666))41.6666=2032
      --  (ignoring the fractional value) If the ref_clk is 48MHz then
      --  GUCTL.REF_CLK_PERIOD=20
      --  GFLADJ.GLADJ_REFCLK_FLADJ=((125000/20)-(125000/20.8333))20.8333=5208
      --  (ignoring the fractional value)
      GFLADJ_REFCLK_FLADJ           : USB3DR_GBL_GFLADJ_GFLADJ_REFCLK_FLADJ_Field :=
                                       16#0#;
      --  unspecified
      Reserved_22_22                : HAL.Bit := 16#0#;
      --  This bit enables the functionality of running SOF/ITP counters on the
      --  ref_clk. This bit must not be set to 1 if GCTL.SOFITPSYNC bit is set
      --  to 1. Similarly, if GFLADJ_REFCLK_LPM_SEL set to 1, GCTL.SOFITPSYNC
      --  must not be set to 1. When GFLADJ_REFCLK_LPM_SEL is set to 1 the
      --  overloading of the suspend control of the USB 2.0 first port PHY
      --  (UTMI/ULPI) with USB 3.0 port states is removed. For example, for
      --  Synopsys PHY, the COMMONONN signal can be tied to 1. Note: The
      --  ref_clk frequencies supported in this mode are
      --  16/17/19.2/20/24/39.7/40 MHz. The utmi_clk[0] signal of the core must
      --  be connected to the FREECLK of the PHY. Note: If this bit is set to
      --  1, the GUSB2PHYCFG.U2_FREECLK_EXISTS bit must be set to 0.
      GFLADJ_REFCLK_LPM_SEL         : Boolean := False;
      --  This field indicates the decrement value that the controller applies
      --  for each ref_clk in order to derive a frame timer in terms of a
      --  240MHz clock. This field must be programmed to a non-zero value only
      --  if GFLADJ_REFCLK_LPM_SEL is set to 1. The value is derived as
      --  follows: GFLADJ_REFCLK_240MHZ_DECR=240/ref_clk_frequency Examples: If
      --  the ref_clk is 24MHz then GUCTL.REF_CLK_PERIOD=41
      --  GFLADJ.GFLADJ_REFCLK_240MHZ_DECR=240/24=10 If the ref_clk is 48MHz
      --  then GUCTL.REF_CLK_PERIOD=20
      --  GFLADJ.GFLADJ_REFCLK_240MHZ_DECR=240/48=5 If the ref_clk is 17MHz
      --  then GUCTL.REF_CLK_PERIOD=58
      --  GFLADJ.GFLADJ_REFCLK_240MHZ_DECR=240/17=14
      GFLADJ_REFCLK_240MHZ_DECR     : USB3DR_GBL_GFLADJ_GFLADJ_REFCLK_240MHZ_DECR_Field :=
                                       16#0#;
      --  GFLADJ_REFCLK_240MHZDECR_PLS1 This field indicates that the decrement
      --  value that the controller applies for each ref_clk must be
      --  GFLADJ_REFCLK_240MHZ_DECR and GFLADJ_REFCLK_240MHZ_DECR +1
      --  alternatively on each ref_clk. Set this bit to a 1 only if
      --  GFLADJ_REFCLK_LPM_SEL is set to '1' and the fractional component of
      --  240/ref_frequency is greater than or equal to 0.5. Examples: If the
      --  ref_clk is 19.2MHz then GUCTL.REF_CLK_PERIOD=52
      --  GFLADJ.GFLADJ_REFCLK_240MHZ_DECR=(240/19.2)=12.5
      --  GFLADJ.GFLADJ_REFCLK_240MHZDECR_PLS1=1 If the ref_clk is 24MHz then
      --  GUCTL.REF_CLK_PERIOD=41 GFLADJ.GFLADJ_REFCLK_240MHZ_DECR=(240/24)=10
      --  GFLADJ.GFLADJ_REFCLK_240MHZDECR_PLS1=0
      GFLADJ_REFCLK_240MHZDECR_PLS1 : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_GBL_GFLADJ_Register use record
      GFLADJ_30MHZ                  at 0 range 0 .. 5;
      Reserved_6_6                  at 0 range 6 .. 6;
      GFLADJ_30MHZ_SDBND_SEL        at 0 range 7 .. 7;
      GFLADJ_REFCLK_FLADJ           at 0 range 8 .. 21;
      Reserved_22_22                at 0 range 22 .. 22;
      GFLADJ_REFCLK_LPM_SEL         at 0 range 23 .. 23;
      GFLADJ_REFCLK_240MHZ_DECR     at 0 range 24 .. 30;
      GFLADJ_REFCLK_240MHZDECR_PLS1 at 0 range 31 .. 31;
   end record;

   subtype USB3DR_DEV_DCFG_DEVSPD_Field is HAL.UInt3;
   subtype USB3DR_DEV_DCFG_DEVADDR_Field is HAL.UInt7;
   subtype USB3DR_DEV_DCFG_INTRNUM_Field is HAL.UInt5;
   subtype USB3DR_DEV_DCFG_NUMP_Field is HAL.UInt5;

   --  USB3DR device configuration register
   type USB3DR_DEV_DCFG_Register is record
      --  Device speed. Indicates the speed at which the application requires
      --  the core to connect, or the maximum speed the application can
      --  support. However, the actual bus speed is determined only after the
      --  chirp sequence is completed, and is based on the speed of the USB
      --  host to which the core is connected.
      DEVSPD         : USB3DR_DEV_DCFG_DEVSPD_Field := 16#0#;
      --  Device address. The application must perform the following: Program
      --  this field after every SetAddress request. Reset this field to zero
      --  after USB reset.
      DEVADDR        : USB3DR_DEV_DCFG_DEVADDR_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#2#;
      --  Interrupt number Indicates interrupt/EventQ number on which
      --  non-endpoint-specific device-related interrupts (see DEVT) are
      --  generated.
      INTRNUM        : USB3DR_DEV_DCFG_INTRNUM_Field := 16#0#;
      --  Number of receive buffers. This bit indicates the number of receive
      --  buffers to be reported in the ACK TP. The USB3DR controller uses this
      --  field for non-control endpoints if GRXTHRCFG.UsbRxPktCntSel is set to
      --  0. The application can program this value based on RxFIFO size,
      --  buffer sizes programmed in descriptors, and system latency. For an
      --  OUT endpoint, this field controls the number of receive buffers
      --  reported in the NumP field of the ACK TP transmitted by the core.
      --  Note: This bit is used in host mode when debug capability is enabled.
      NUMP           : USB3DR_DEV_DCFG_NUMP_Field := 16#0#;
      --  LPM capable The application uses this bit to control the USB3DR LPM
      --  capabilities. If the USB3DR operates as a non-LPM-capable device, it
      --  cannot respond to LPM transactions.
      LPMCAP         : Boolean := False;
      --  IgnoreStreamPP This bit only affects stream-capable bulk endpoints.
      --  When this bit is set to 0 and the controller receives a data packet
      --  with the packet pending (PP) bit set to 0 for OUT endpoints, or it
      --  receives an ACK with the NumP field set to 0 and PP set to 0 for IN
      --  endpoints, the core attempts to search for another stream (CStream)
      --  to initiate to the host. However, there are two situations where this
      --  behavior is not optimal: When the host is setting PP=0 even though it
      --  has not finished the stream, or When the endpoint on the device is
      --  configured with one transfer resource and therefore does not have any
      --  other streams to initiate to the host. When this bit is set to 1, the
      --  core ignores the packet pending bit for the purposes of stream
      --  selection and does not search for another stream when it receives
      --  DP(PP=0) or ACK(NumP=0, PP=0). This can enhance the performance when
      --  the device system bus bandwidth is low or the host responds to the
      --  core's ERDY transmission very quickly.
      IGNSTRMPP      : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_DEV_DCFG_Register use record
      DEVSPD         at 0 range 0 .. 2;
      DEVADDR        at 0 range 3 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      INTRNUM        at 0 range 12 .. 16;
      NUMP           at 0 range 17 .. 21;
      LPMCAP         at 0 range 22 .. 22;
      IGNSTRMPP      at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USB3DR_DEV_DCTL_TSTCTL_Field is HAL.UInt4;
   subtype USB3DR_DEV_DCTL_ULSTCHNGREQ_Field is HAL.UInt4;
   subtype USB3DR_DEV_DCTL_LPM_NYET_THRES_Field is HAL.UInt4;
   subtype USB3DR_DEV_DCTL_HIRDTHRES_Field is HAL.UInt5;

   --  USB3DR device control register
   type USB3DR_DEV_DCTL_Register is record
      --  unspecified
      Reserved_0_0    : HAL.Bit := 16#0#;
      --  Test control Others: Reserved
      TSTCTL          : USB3DR_DEV_DCTL_TSTCTL_Field := 16#0#;
      --  Write-only. ULSTCHNGREQ Software writes this field to issue a
      --  USB/Link state change request. A change in this field indicates a new
      --  request to the core. If the software wants to issue the same request
      --  back-to-back, it must write a 0 to this field between the two
      --  requests. The result of the state change request is reflected in the
      --  USB/Link state in DSTS. These bits are self-cleared on the MAC layer
      --  exiting suspended state. If the software is updating other fields of
      --  the DCTL register and not intending to force any link state change,
      --  then it must write a 0 to this field. SS Compliance mode is normally
      --  entered and controlled by the remote link partner. Refer to [USB3].
      --  Alternatively, the local link can be forced directly into compliance
      --  mode, by resetting the SS link with the run/stop bit set to zero. If
      --  10 is then written to the USB/Link state change field and 1 to
      --  run/stop, the link goes to compliance mode. Once in compliance, zero
      --  and 10 may be alternatively written to this field to advance the
      --  compliance pattern. Condition: in SS mode, the values for link state
      --  transition/action are: Others: Reserved Condition: in HS/FS/LS mode,
      --  the values for link state transition/action are: Others: Reserved The
      --  remote wakeup request must be issued 2us after the device goes into
      --  suspend state (DSTS[21:18] is 3. Note: After coming out of
      --  hibernation, the software must write 8 (recovery) into this field to
      --  confirm exit from the suspended state.
      ULSTCHNGREQ     : USB3DR_DEV_DCTL_ULSTCHNGREQ_Field := 16#0#;
      --  Accept U1 enable On USB reset, the hardware clears this bit to 0. The
      --  software sets this bit after receiving a SetConfiguration command.
      ACCEPTU1ENA     : Boolean := False;
      --  Initiate U1 enable On USB reset, the hardware clears this bit to 0.
      --  The software sets this bit after receiving SetFeature(U1_ENABLE), and
      --  clears this bit when ClearFeature(U1_ENABLE) is received. If DCTL[9]
      --  (AcceptU1Ena) is 0, the link immediately exits U1 state.
      INITU1ENA       : Boolean := False;
      --  Accept U2 enable On USB reset, the hardware clears this bit to 0. The
      --  software sets this bit after receiving a SetConfiguration command.
      ACCEPTU2ENA     : Boolean := False;
      --  Initiate U2 enable On USB reset, the hardware clears this bit to 0.
      --  The software sets this bit after receiving SetFeature(U2_ENABLE), and
      --  clears this bit when ClearFeature(U2_ENABLE) is received. If DCTL[11]
      --  (AcceptU2Ena) is 0, the link immediately exits U2 state.
      INITU2ENA       : Boolean := False;
      --  unspecified
      Reserved_13_15  : HAL.UInt3 := 16#0#;
      --  Controller save state (CSS) This command is similar to the USBCMD.CSS
      --  bit in host mode and initiates the save process. When the software
      --  sets this bit to 1, the controller immediately sets DSTS.SSS to 1.
      --  When the controller has finished the save process, it sets DSTS.SSS
      --  to 0' Note: When read, this field always returns 0.
      CSS             : Boolean := False;
      --  Controller restore state (CRS) This command is similar to the
      --  USBCMD.CRS bit in host mode and initiates the restore process. When
      --  software sets this bit to 1, the controller immediately sets DSTS.RSS
      --  to 1. When the controller has finished the restore process, it sets
      --  DSTS.RSS to 0. Note: When read, this field always returns 0.
      CRS             : Boolean := False;
      --  L1HibernationEn When this bit is set along with KeepConnect, the
      --  device core generates a hibernation request event if L1 is enabled
      --  and the HIRD value in the LPM token is larger than the threshold
      --  programmed in DCTL.HIRD_Thres. The core does not exit the LPM L1
      --  state until the software writes recovery into the DCTL.ULStChngReq
      --  field. This prevents corner cases where the device is entering
      --  hibernation at the same time the host is attempting to exit L1. Note:
      --  If hibernation is disabled, that is, GCTL[1].GblHibernationEn=0, this
      --  bit is tied to zero.
      L1HIBERNATIONEN : Boolean := False;
      --  Keep connect When 1, this bit enables the save and restore
      --  programming model by preventing the core from disconnecting from the
      --  host when DCTL.RUN_STOP is set to 0. It also enables the hibernation
      --  request event to be generated when the link goes to U3 or L2. The
      --  device core disconnects from the host when DCTL.RUN_STOP is set to 0.
      --  This bit indicates whether to preserve this behavior (0), or if the
      --  core must not disconnect when run/stop is set to 0 (1). This bit also
      --  prevents the LTSSM from automatically going to U0/L0 when the host
      --  requests resume from U3/L2. Note: If hibernation is disabled, that
      --  is, GCTL[1].GblHibernationEn=0, this bit is tied to zero.
      KEEPCONNECT     : Boolean := False;
      --  LPM NYET threshold When LPM errata is enabled: Bits [23:20]: LPM NYET
      --  response threshold (LPM_NYET_thres) Handshake response to LPM token
      --  specified by device application. Response depends on DCFG.LPMCap.
      --  DCFG.LPMCap is 0 - The core always responds with timeout (that is, no
      --  response). DCFG.LPMCap is 1 - The core responds with an ACK on
      --  successful LPM transaction, which requires that all of the following
      --  are satisfied: There are no PID or CRC5 errors in both the EXT token
      --  and the LPM token (if not true, inactivity results in a timeout
      --  ERROR). No data is pending in the TxFIFO and RxFIFO is empty (else
      --  NYET). The BESL value in the LPM token is less than or equal to
      --  LPM_NYET_thres[3:0]
      LPM_NYET_THRES  : USB3DR_DEV_DCTL_LPM_NYET_THRES_Field := 16#0#;
      --  HIRD threshold (HIRD_Thres) The core asserts output signals
      --  utmi_l1_suspend_n and utmi_sleep_n on the basis of this signal: The
      --  core asserts utmi_l1_suspend_n to put the PHY into deep Low-power
      --  mode in L1 when both of the following are true: HIRD value is greater
      --  than or equal to the value in DCTL.HIRD_Thres[3:0] HIRD_Thres[4] is
      --  set to 1. The core asserts utmi_sleep_n on L1 when one of the
      --  following is true: If the HIRD value is less than HIRD_Thres[3:0] or
      --  HIRD_Thres[4] is set to 0. Note: This field must be set to 0 during
      --  SuperSpeed mode of operation.
      HIRDTHRES       : USB3DR_DEV_DCTL_HIRDTHRES_Field := 16#0#;
      --  unspecified
      Reserved_29_29  : HAL.Bit := 16#0#;
      --  Core soft reset Resets the all clock domains as follows: This bit
      --  clears the interrupts and all the CSRs except GSTS, GSNPSID, GGPIO,
      --  GUID, GUSB2PHYCFGn registers, GUSB3PIPECTLn registers, DCFG, DCTL,
      --  DEVTEN, and DSTS registers. All module state machines (except the
      --  device bus slave unit) are reset to the idle state, and all the
      --  TxFIFOs and the RxFIFO are flushed. Any transactions on the device
      --  bus master are terminated as soon as possible, after gracefully
      --  completing the last data phase of a device bus transfer. Any
      --  transactions on the USB are terminated immediately. The application
      --  can write this bit at any time to reset the core. This is a
      --  self-clearing bit; the core clears this bit after all necessary logic
      --  is reset in the core, which may take several clocks depending on the
      --  core current state. Once this bit is cleared, the software must wait
      --  at least 3 PHY clocks before accessing the PHY domain
      --  (synchronization delay). Typically, software reset is used during
      --  software development and also when the PHY selection bits are
      --  dynamically changed in the USB configuration registers listed above.
      --  When the PHY is changed, the corresponding clock for the PHY is
      --  selected and used in the PHY domain. Once a new clock is selected,
      --  the PHY domain must be reset for proper operation. Note: Programming
      --  this field with random data causes side effect. Bit bash register
      --  testing is not recommended.
      CSFTRST         : Boolean := False;
      --  Run/stop The software writes 1 to this bit to start the device
      --  controller operation. To stop the device controller operation, the
      --  software must remove any active transfers and write 0 to this bit.
      --  When the controller is stopped, it sets the DSTS.DevCtrlHlt bit when
      --  the core is idle and the lower layer finishes the disconnect process.
      --  The run/stop bit must be used in following cases as specified: After
      --  power-on reset and CSR initialization, the software must write 1 to
      --  this bit to start the device controller. The controller does not
      --  signal connection to the host until this bit is set. The software
      --  uses this bit to control the device controller to perform a soft
      --  disconnect. When the software writes 0 to this bit, the host does not
      --  see that the device is connected. The device controller stays in the
      --  disconnected state until the software writes 1 to this bit. The
      --  minimum duration of keeping this bit cleared is specified in the
      --  Note: below. If the software attempts a connect after the soft
      --  disconnect or detects a disconnect event, it must set DCTL[8:5] to 5
      --  before reasserting the run/stop bit. When the USB or Link is in a
      --  lower power state and the two power rails configuration is selected,
      --  software writes 0 to this bit to indicate that it is going to turn
      --  off the core power rail. After the software turns on the core power
      --  rail again and re-initializes the device controller, it must set this
      --  bit to start the device controller. Note: The following is the
      --  minimum duration under various conditions for which the soft
      --  disconnect (SftDiscon) bit must be set for the USB host to detect a
      --  device disconnect: Note: 30ms:	For SuperSpeed, when the device state
      --  is suspended, idle, transmit, or receive. Note: 10ms:	For high-speed,
      --  when the device state is suspended, idle, or not idle/suspended
      --  (performing transactions). Note: For full-speed/low-speed, when the
      --  device state is suspended, idle, or not idle/supended (performing
      --  transactions). Note: To accommodate clock jitter, it is recommended
      --  that the application adds extra delay to the specified minimum
      --  duration.
      RUN_STOP        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_DEV_DCTL_Register use record
      Reserved_0_0    at 0 range 0 .. 0;
      TSTCTL          at 0 range 1 .. 4;
      ULSTCHNGREQ     at 0 range 5 .. 8;
      ACCEPTU1ENA     at 0 range 9 .. 9;
      INITU1ENA       at 0 range 10 .. 10;
      ACCEPTU2ENA     at 0 range 11 .. 11;
      INITU2ENA       at 0 range 12 .. 12;
      Reserved_13_15  at 0 range 13 .. 15;
      CSS             at 0 range 16 .. 16;
      CRS             at 0 range 17 .. 17;
      L1HIBERNATIONEN at 0 range 18 .. 18;
      KEEPCONNECT     at 0 range 19 .. 19;
      LPM_NYET_THRES  at 0 range 20 .. 23;
      HIRDTHRES       at 0 range 24 .. 28;
      Reserved_29_29  at 0 range 29 .. 29;
      CSFTRST         at 0 range 30 .. 30;
      RUN_STOP        at 0 range 31 .. 31;
   end record;

   --  USB3DR device event enable register
   type USB3DR_DEV_DEVTEN_Register is record
      --  Disconnect detected event enable
      DISSCONNEVTEN       : Boolean := False;
      --  USB reset enable
      USBRSTEVTEN         : Boolean := False;
      --  Connection done enable
      CONNECTDONEEVTEN    : Boolean := False;
      --  USB/Link state change event enable
      ULSTCNGEN           : Boolean := False;
      --  U3/L2 or U3/L2L1 resume detected event enable. Note: If
      --  GUCTL1[DEV_DECOUPLE_L1L2_EVT] is enabled, then this bit is for U3/L2
      --  resume detected event enable. Note: If GUCTL1[DEV_DECOUPLE_L1L2_EVT]
      --  is not enabled, then this bit is for U3/L2L1 resume detected event
      --  enable.
      WKUPEVTEN           : Boolean := False;
      --  This bit enables/disables the generation of the hibernation request
      --  event.
      HIBERNATIONREQEVTEN : Boolean := False;
      --  U3/L2 or U3/L2L1 suspend event enable. Note: If
      --  GUCTL1[DEV_DECOUPLE_L1L2_EVT] is enabled, then this bit is for U3/L2
      --  suspend event enable. Note: If GUCTL1[DEV_DECOUPLE_L1L2_EVT] is not
      --  enabled, then this bit is for U3/L2L1 suspend event enable.
      U3L2L1SUSPEN        : Boolean := False;
      --  Start of (u)frame
      SOFTEVTEN           : Boolean := False;
      --  L1 suspend event enable Note: Only if GUCTL1[DEV_DECOUPLE_L1L2_EVT]
      --  is enabled, this bit is for L1 suspend event enable.
      L1SUSPEN            : Boolean := False;
      --  Erratic error event enable
      ERRTICERREVTEN      : Boolean := False;
      --  unspecified
      Reserved_10_11      : HAL.UInt2 := 16#0#;
      --  Vendor device Test LMP received event (VndrDevTstRcvedEn)
      VENDEVTSTRCVDEN     : Boolean := False;
      --  unspecified
      Reserved_13_13      : HAL.Bit := 16#0#;
      --  L1 resume detected event enable. Note: If
      --  GUCTL1[DEV_DECOUPLE_L1L2_EVT] is enabled, then this bit is for L1
      --  resume detected event enable.
      L1WKUPEVTEN         : Boolean := False;
      --  unspecified
      Reserved_15_15      : HAL.Bit := 16#0#;
      --  Read-only. ECC error enable. If this bit is set to 1, the controller
      --  reports an ECC error to the software when an uncorrectable ECC occurs
      --  internally.
      ECCERREN            : Boolean := False;
      --  unspecified
      Reserved_17_31      : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_DEV_DEVTEN_Register use record
      DISSCONNEVTEN       at 0 range 0 .. 0;
      USBRSTEVTEN         at 0 range 1 .. 1;
      CONNECTDONEEVTEN    at 0 range 2 .. 2;
      ULSTCNGEN           at 0 range 3 .. 3;
      WKUPEVTEN           at 0 range 4 .. 4;
      HIBERNATIONREQEVTEN at 0 range 5 .. 5;
      U3L2L1SUSPEN        at 0 range 6 .. 6;
      SOFTEVTEN           at 0 range 7 .. 7;
      L1SUSPEN            at 0 range 8 .. 8;
      ERRTICERREVTEN      at 0 range 9 .. 9;
      Reserved_10_11      at 0 range 10 .. 11;
      VENDEVTSTRCVDEN     at 0 range 12 .. 12;
      Reserved_13_13      at 0 range 13 .. 13;
      L1WKUPEVTEN         at 0 range 14 .. 14;
      Reserved_15_15      at 0 range 15 .. 15;
      ECCERREN            at 0 range 16 .. 16;
      Reserved_17_31      at 0 range 17 .. 31;
   end record;

   subtype USB3DR_DEV_DSTS_CONNECTSPD_Field is HAL.UInt3;
   subtype USB3DR_DEV_DSTS_SOFFN_Field is HAL.UInt14;
   subtype USB3DR_DEV_DSTS_USBLNKST_Field is HAL.UInt4;

   --  USB3DR device status register
   type USB3DR_DEV_DSTS_Register is record
      --  Read-only. Connected speed (ConnectSpd) Indicates the speed at which
      --  the USB3DR has come up after speed detection through a chirp
      --  sequence. Low-speed is not supported for devices using a UTMI+ PHY.
      CONNECTSPD     : USB3DR_DEV_DSTS_CONNECTSPD_Field := 16#0#;
      --  Read-only. Frame/Microframe number of the received SOF. When the core
      --  is operating at SuperSpeed, [16:3] indicates the uframe/ITP number
      --  When the core is operating at high-speed, [16:6] indicates the frame
      --  number [5:3] indicates the micro-frame number When the core is
      --  operating at full-speed, [16:14] is not used, the software can ignore
      --  these 3 bits [13:3] indicates the frame number
      SOFFN          : USB3DR_DEV_DSTS_SOFFN_Field := 16#0#;
      --  Read-only. RxFIFO empty.
      RXFIFOEMPTY    : Boolean := False;
      --  Read-only. USBLNKST USB/Link state Condition: in HS FS LS mode: The
      --  link state resume/reset indicates that the core received a resume or
      --  USB reset request from the host while the link was in hibernation.
      --  The software must write 8 (recovery) to the DCTL.ULStChngReq field to
      --  acknowledge the resume/reset request. When hibernation is enabled,
      --  GCTL[1].GblHibernationEn=1, this field USBLnkSt is valid only when
      --  DCTL[31].RUN_STOP is set to 1 and DSTS[29].DCNRD=0. Note: If SSIC is
      --  enabled, while exiting a low power state, the USBLnkSt field
      --  indicates resume/reset even for a disconnect condition because a
      --  resume precedes the disconnect.
      USBLNKST       : USB3DR_DEV_DSTS_USBLNKST_Field := 16#0#;
      --  Read-only. Device controller halted This bit is set to 0 when the
      --  run/stop bit in the DCTL register is set to 1. The core sets this bit
      --  to 1 when, after the software sets run/stop to 0, the core is idle
      --  and the lower layer finishes the disconnect process. When Halted=1,
      --  the core does not generate Device events. Note: The core does not set
      --  this bit to 1 if GEVNTCOUNTn has some valid value. Software needs to
      --  acknowledge the events that are generated (by writing to GEVNTCOUNTn)
      --  while it is waiting for this bit to be set to 1. Note: When interrupt
      --  moderation is enabled, there may be delay in raising the interrupt
      --  line when the event count is non-zero. Software should read the
      --  GEVNTCOUNT register directly and acknowledge them.
      DEVCTRLHLT     : Boolean := False;
      --  Read-only. Core idle The bit indicates that the core finished
      --  transferring all RxFIFO data to system memory, writing out all
      --  completed descriptors, and all event counts are zero. Note: While
      --  testing for reset values, mask out the read value. This bit
      --  represents the changing state of the core and does not hold a static
      --  value.
      COREIDLE       : Boolean := False;
      --  Read-only. SSS save state status This bit is similar to the
      --  USBSTS.SSS in Host mode. When the controller has finished the save
      --  process, it completes the command by setting DSTS.SSS to 0.
      SSS            : Boolean := False;
      --  Read-only. RSS restore state status This bit is similar to the
      --  USBSTS.RSS in Host mode. When the controller finishes the restore
      --  process, it completes the command by setting DSTS.RSS to 0.
      RSS            : Boolean := False;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Save restore error Currently not supported.
      SRE            : Boolean := False;
      --  Read-only. Device controller not ready The bit indicates that the
      --  core is in the process of completing the state transitions after
      --  exiting from hibernation. To complete the state transitions, it takes
      --  256 bus clock cycles from the time DCTL[31].RUN_STOP is set. During
      --  hibernation, if the UTMI/ULPI PHY is in suspended state, then the
      --  256-bus clock cycle delay starts after the PHY exited suspended
      --  state. The software must set DCTL[31].RUN_STOP to 1 and wait for this
      --  bit to be de-asserted to zero before processing DSTS.USBLnkSt. This
      --  bit is valid only when USB3DR_EN_PWROPT is set to 2 and
      --  GCTL[1].GblHibernationEn=1.
      DCNRD          : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_DEV_DSTS_Register use record
      CONNECTSPD     at 0 range 0 .. 2;
      SOFFN          at 0 range 3 .. 16;
      RXFIFOEMPTY    at 0 range 17 .. 17;
      USBLNKST       at 0 range 18 .. 21;
      DEVCTRLHLT     at 0 range 22 .. 22;
      COREIDLE       at 0 range 23 .. 23;
      SSS            at 0 range 24 .. 24;
      RSS            at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      SRE            at 0 range 28 .. 28;
      DCNRD          at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype USB3DR_DEV_DGCMD_CMDTYP_Field is HAL.UInt8;
   subtype USB3DR_DEV_DGCMD_CMDSTATUS_Field is HAL.UInt4;

   --  USB3DR device generic command register
   type USB3DR_DEV_DGCMD_Register is record
      --  Generic command type Specifies the type of generic command the
      --  software driver is requesting the controller to perform. All other
      --  values are reserved.
      CMDTYP         : USB3DR_DEV_DGCMD_CMDTYP_Field := 16#0#;
      --  Command interrupt on complete When this bit is set, the device
      --  controller issues a generic command completion event after executing
      --  the command. Note: This interrupt is mapped to DCFG.IntrNum. Note:
      --  This field must not set to 1 if the DCTL.RUN_STOP field is 0.
      CMDIOC         : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Command active The software sets this bit to 1 to enable the device
      --  controller to execute the generic command. The device controller sets
      --  this bit to 0 after executing the command.
      CMDACT         : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Read-only. Command status
      CMDSTATUS      : USB3DR_DEV_DGCMD_CMDSTATUS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_DEV_DGCMD_Register use record
      CMDTYP         at 0 range 0 .. 7;
      CMDIOC         at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      CMDACT         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CMDSTATUS      at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB3DR_DEV_DEPCMD_CMDTYP_Field is HAL.UInt4;
   subtype USB3DR_DEV_DEPCMD_CMDSTATUS_Field is HAL.UInt4;
   subtype USB3DR_DEV_DEPCMD_COMMANDPARAM_Field is HAL.UInt16;

   --  USB3DR device physical endpoint-n command register
   type USB3DR_DEV_DEPCMD_Register is record
      --  Command type Specifies the type of command the software driver is
      --  requesting the core to perform. 0x09 Start new configuration, no
      --  parameter needed
      CMDTYP        : USB3DR_DEV_DEPCMD_CMDTYP_Field := 16#0#;
      --  unspecified
      Reserved_4_7  : HAL.UInt4 := 16#0#;
      --  CMDIOC Command interrupt on complete (CmdIOC) When this bit is set,
      --  the device controller issues a generic endpoint command complete
      --  event after executing the command. Note: This interrupt is mapped to
      --  DEPCFG.IntrNum. When the DEPCFG command is executed, the command
      --  interrupt on completion goes to the interrupt pointed by the
      --  DEPCFG.IntrNum in the current command. Note: This field must not set
      --  to 1 if the DCTL.RUN_STOP field is 0.
      CMDIOC        : Boolean := False;
      --  unspecified
      Reserved_9_9  : HAL.Bit := 16#0#;
      --  Command active (CmdAct) Software sets this bit to 1 to enable the
      --  device endpoint controller to execute the generic command. The device
      --  controller sets this bit to 0 when the CmdStatus field is valid and
      --  the endpoint is ready to accept another command. This does not imply
      --  that all the effects of the previously-issued command have taken
      --  place.
      CMDACT        : Boolean := False;
      --  HighPriority/ForceRM (HiPri_ForceRM) HighPriority: only valid for
      --  start transfer command ForceRM: only valid for end transfer command
      --  ClearPendIN: only valid for clear stall command. The software sets
      --  this bit to clear any pending IN transaction (on that endpoint) stuck
      --  at the lower layers when a clear stall command is issued.
      HIPRI_FORCERM : Boolean := False;
      --  Command completion status (CmdStatus) Additional information about
      --  the completion of this command is available in this field. The
      --  information is in the same format as bits 15:12 of the endpoint
      --  command complete event.
      CMDSTATUS     : USB3DR_DEV_DEPCMD_CMDSTATUS_Field := 16#0#;
      --  Command parameters or event parameters Command parameters
      --  (CommandParam), when this register is written: For start transfer
      --  command: [31:16]: StreamID. The USB StreamID assigned to this
      --  transfer For start transfer command applied to an isochronous
      --  endpoint [31:16]: StartMicroFramNum: indicates the (micro-)frame
      --  number to which the first TRB applies. For update transfer, end
      --  transfer, and start new configuration commands [22:16]: Transfer
      --  resource index (XferRscIdx). The hardware-assigned transfer resource
      --  index for the transfer, which was returned in response to the start
      --  transfer command. The application software-assigned transfer resource
      --  index for a start new configuration command. Event parameters
      --  (EventParam), when this register is read.
      COMMANDPARAM  : USB3DR_DEV_DEPCMD_COMMANDPARAM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_DEV_DEPCMD_Register use record
      CMDTYP        at 0 range 0 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      CMDIOC        at 0 range 8 .. 8;
      Reserved_9_9  at 0 range 9 .. 9;
      CMDACT        at 0 range 10 .. 10;
      HIPRI_FORCERM at 0 range 11 .. 11;
      CMDSTATUS     at 0 range 12 .. 15;
      COMMANDPARAM  at 0 range 16 .. 31;
   end record;

   subtype USB3DR_DEV_IMOD_DEVICE_IMODI_Field is HAL.UInt16;
   subtype USB3DR_DEV_IMOD_DEVICE_IMODC_Field is HAL.UInt16;

   --  USB3DR device interrupt moderation register
   type USB3DR_DEV_IMOD_Register is record
      --  Moderation interval (DEVICE_IMODI) This field holds the minimum
      --  inter-interrupt interval between events. The interval is specified in
      --  250ns increments. A value of 0 disables the interrupt throttling
      --  logic and interrupts are generated immediately if event count becomes
      --  non-zero. In scale down simulation mode, 4 ram clocks are used to
      --  time 250ns.
      DEVICE_IMODI : USB3DR_DEV_IMOD_DEVICE_IMODI_Field := 16#0#;
      --  Interrupt moderation down counter Loaded with the DEVICE_IMODI value,
      --  whenever the hardware interrupt(n) line is de-asserted from the
      --  asserted state, counts down to 0, and stops. The interrupt(n) is
      --  signaled whenever this counter is 0, EVNT_HANDLER_BUSY is 0, and
      --  there are pending events (that is, event count is non-zero). This
      --  counter may be directly written by software at any time to alter the
      --  interrupt rate.
      DEVICE_IMODC : USB3DR_DEV_IMOD_DEVICE_IMODC_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_DEV_IMOD_Register use record
      DEVICE_IMODI at 0 range 0 .. 15;
      DEVICE_IMODC at 0 range 16 .. 31;
   end record;

   --  USB3DR battery charger configuration register
   type USB3DR_BC_BCFG_Register is record
      --  Chirp enable When this bit is 1, the core asserts the bc_chirp_on
      --  output signal to indicate an imminent chirp.
      CHIRP_EN      : Boolean := False;
      --  IDDIG select When this bit is programmed as: When ULPI PHY is used,
      --  IDDIG_SEL needs to be programmed to 0 always, so that the core uses
      --  the ID value obtained from the RX_CMD.
      IDDIG_SEL     : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_BC_BCFG_Register use record
      CHIRP_EN      at 0 range 0 .. 0;
      IDDIG_SEL     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype USB3DR_BC_BCEVT_MULTVALIDBC_Field is HAL.UInt5;

   --  USB3DR battery charger event register
   type USB3DR_BC_BCEVT_Register is record
      --  Read-only. Multi valued ID pin Indicates the battery charger ACA
      --  inputs. MultValIdBc[4]: bc_rid_float MultValIdBc[3]: bc_rid_gnd
      --  MultValIdBc[2]: bc_rid_a MultValIdBc[1]: bc_rid_b MultValIdBc[0]:
      --  bc_rid_c
      MULTVALIDBC    : USB3DR_BC_BCEVT_MULTVALIDBC_Field := 16#0#;
      --  unspecified
      Reserved_5_23  : HAL.UInt19 := 16#0#;
      --  Multi-valued input changed event: This event indicates that there is
      --  a change in the value of at least one ACA pin value. This bit is
      --  present only if USB3DR_EN_BC=1, otherwise it is Reserved.
      MV_CHNGEVNT    : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_BC_BCEVT_Register use record
      MULTVALIDBC    at 0 range 0 .. 4;
      Reserved_5_23  at 0 range 5 .. 23;
      MV_CHNGEVNT    at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  USB3DR battery charger event enable register
   type USB3DR_BC_BCEVTEN_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24 := 16#0#;
      --  BCEvtInfoEna[0] Multi-valued input changed event enable
      --  (MV_ChngEvntEn) When this bit is set, MV_ChngEvnt in BCEVT register
      --  is enabled.
      MV_CHNGEVNTENA : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_BC_BCEVTEN_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      MV_CHNGEVNTENA at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype USB3DR_LINK_LU1LFPSRXTIM_U1U2_EXIT_RSP_RX_CLK_Field is HAL.UInt8;
   subtype USB3DR_LINK_LU1LFPSRXTIM_U1U2_LFPS_EXIT_RX_CLK_Field is HAL.UInt8;

   --  USB3DR U1/U2 LFPS RX timer register
   type USB3DR_LINK_LU1LFPSRXTIM_Register is record
      --  Programmable U1U2 EXIT RESP RX CLKS Applicable to locally initiated
      --  Ux exit: minimum LFPS reception from remote to consider Ux exit
      --  handshake is successful. This field is encoded as the pipe clk (8ns)
      --  count for the LFPS.
      U1U2_EXIT_RSP_RX_CLK  : USB3DR_LINK_LU1LFPSRXTIM_U1U2_EXIT_RSP_RX_CLK_Field :=
                               16#1F#;
      --  Programmable U1U2 LFPS EXIT RX CLKS Applicable to remote partner
      --  initiated Ux exit: time to recognize valid Ux exit request from the
      --  remote partner. This field is encoded as the pipe clk (8ns) count for
      --  the LFPS.
      U1U2_LFPS_EXIT_RX_CLK : USB3DR_LINK_LU1LFPSRXTIM_U1U2_LFPS_EXIT_RX_CLK_Field :=
                               16#1F#;
      --  unspecified
      Reserved_16_31        : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_LINK_LU1LFPSRXTIM_Register use record
      U1U2_EXIT_RSP_RX_CLK  at 0 range 0 .. 7;
      U1U2_LFPS_EXIT_RX_CLK at 0 range 8 .. 15;
      Reserved_16_31        at 0 range 16 .. 31;
   end record;

   subtype USB3DR_LINK_SETTINGS_PM_ENTRY_TIMER_US_Field is HAL.UInt4;
   subtype USB3DR_LINK_SETTINGS_PM_LC_TIMER_US_Field is HAL.UInt3;
   subtype USB3DR_LINK_SETTINGS_U1_RESID_TIMER_US_Field is HAL.UInt3;

   --  USB3DR link setting register
   type USB3DR_LINK_SETTINGS_Register is record
      --  unspecified
      Reserved_0_19     : HAL.UInt20 := 16#0#;
      --  Programmable PM_ENTRY_TIMER This field specifies PM_ENTRY_TIMER value
      --  in us.
      PM_ENTRY_TIMER_US : USB3DR_LINK_SETTINGS_PM_ENTRY_TIMER_US_Field :=
                           16#9#;
      --  Programmable PM_LC_TIMER This field specifies PM_LC_TIMER value in
      --  us.
      PM_LC_TIMER_US    : USB3DR_LINK_SETTINGS_PM_LC_TIMER_US_Field := 16#5#;
      --  unspecified
      Reserved_27_27    : HAL.Bit := 16#0#;
      --  Programmable U1 MIN RESIDENCY TIMER This field specifies U1 MIN
      --  RESIDENCY TIMER value in us. Set to 0 to disable the timer.
      U1_RESID_TIMER_US : USB3DR_LINK_SETTINGS_U1_RESID_TIMER_US_Field :=
                           16#4#;
      --  unspecified
      Reserved_31_31    : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_LINK_SETTINGS_Register use record
      Reserved_0_19     at 0 range 0 .. 19;
      PM_ENTRY_TIMER_US at 0 range 20 .. 23;
      PM_LC_TIMER_US    at 0 range 24 .. 26;
      Reserved_27_27    at 0 range 27 .. 27;
      U1_RESID_TIMER_US at 0 range 28 .. 30;
      Reserved_31_31    at 0 range 31 .. 31;
   end record;

   --  USB3DR link user control register
   type USB3DR_LINK_LLUCTL_Register is record
      --  unspecified
      Reserved_0_4                : HAL.UInt5 := 16#0#;
      --  no_ux_exit_p0_trans. Link LTSSM detects Ux_exit LFPS when P0
      --  transition is on-going by default. If this bit is set, Link LTSSM may
      --  miss Ux_exit LFPS when P0 transition is happening.
      NO_UX_EXIT_P0_TRANS         : Boolean := False;
      --  unspecified
      Reserved_6_6                : HAL.Bit := 16#0#;
      --  Mask pipe reset. If this bit is set, controller blocks pipe_reset_n
      --  from going to the PHY when DisRxDetU3RxDet=1.
      MASK_PIPE_RESET             : Boolean := True;
      --  unspecified
      Reserved_8_10               : HAL.UInt3 := 16#0#;
      --  en_reset_pipe_after_phy_mux. The controller issues USB 3.0 PHY reset
      --  after DisRxDetU3RxDet is de-asserted.
      EN_RESET_PIPE_AFTER_PHY_MUX : Boolean := False;
      --  P3CPM OK for U2/SSInactive (U2P3CPMok) Note: For a port, if both
      --  GUCTL1[25]=1 and LUCTL[12]=1, LUCTL[12]=1 takes priority.
      U2P3CPMOK                   : Boolean := False;
      --  unspecified
      Reserved_13_22              : HAL.UInt10 := 16#0#;
      --  DisRxDet_LTSSM_Timer_Ovrrd. When DisRxDetU3RxDet is asserted in
      --  polling or U1, the timeout expires immediately.
      DISRXDET_LTSSM_TIMER_OVRRD  : Boolean := True;
      --  unspecified
      Reserved_24_27              : HAL.UInt4 := 16#0#;
      --  Support PHY P3.CPM and P4 power states. When this bit is set, the
      --  controller puts the PHY in P3.CPM or P4 in certain states. This bit
      --  is used only for Synopsys PHY.
      SUPPORT_P4                  : Boolean := False;
      --  PHY P4 power gate mode (PG) is enabled. Set this bit if the PHY
      --  supports PG mode in P4. This bit is used only for Synopsys PHY.
      SUPPORT_P4_PG               : Boolean := False;
      --  unspecified
      Reserved_30_31              : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_LINK_LLUCTL_Register use record
      Reserved_0_4                at 0 range 0 .. 4;
      NO_UX_EXIT_P0_TRANS         at 0 range 5 .. 5;
      Reserved_6_6                at 0 range 6 .. 6;
      MASK_PIPE_RESET             at 0 range 7 .. 7;
      Reserved_8_10               at 0 range 8 .. 10;
      EN_RESET_PIPE_AFTER_PHY_MUX at 0 range 11 .. 11;
      U2P3CPMOK                   at 0 range 12 .. 12;
      Reserved_13_22              at 0 range 13 .. 22;
      DISRXDET_LTSSM_TIMER_OVRRD  at 0 range 23 .. 23;
      Reserved_24_27              at 0 range 24 .. 27;
      SUPPORT_P4                  at 0 range 28 .. 28;
      SUPPORT_P4_PG               at 0 range 29 .. 29;
      Reserved_30_31              at 0 range 30 .. 31;
   end record;

   subtype USB3DR_LINK_LPTMDPDELAY_P3CPMP4_RESIDENCY_Field is HAL.UInt12;

   --  USB3DR link datapath delay register
   type USB3DR_LINK_LPTMDPDELAY_Register is record
      --  unspecified
      Reserved_0_9      : HAL.UInt10 := 16#0#;
      --  p3cpmp4 residency timer value. Minimum number of suspend_clk periods
      --  that the controller needs to stay in P3.CPM or P4 before exiting
      --  P3.CPM or P4. This field is used only for Synopsys PHY.
      P3CPMP4_RESIDENCY : USB3DR_LINK_LPTMDPDELAY_P3CPMP4_RESIDENCY_Field :=
                           16#3#;
      --  unspecified
      Reserved_22_31    : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB3DR_LINK_LPTMDPDELAY_Register use record
      Reserved_0_9      at 0 range 0 .. 9;
      P3CPMP4_RESIDENCY at 0 range 10 .. 21;
      Reserved_22_31    at 0 range 22 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  USB3DR register block
   type USB3DR_Peripheral is record
      --  USB3DR global device bus configuration register 0
      USB3DR_GBL_GSBUSCFG0        : aliased USB3DR_GBL_GSBUSCFG0_Register;
      --  USB3DR global bus configuration register 1
      USB3DR_GBL_GSBUSCFG1        : aliased USB3DR_GBL_GSBUSCFG1_Register;
      --  USB3DR global TX threshold control register
      USB3DR_GBL_GTXTHRCFG        : aliased USB3DR_GBL_GTXTHRCFG_Register;
      --  USB3DR global RX threshold control register
      USB3DR_GBL_GRXTHRCFG        : aliased USB3DR_GBL_GRXTHRCFG_Register;
      --  USB3DR global control register
      USB3DR_GBL_GCTL             : aliased USB3DR_GBL_GCTL_Register;
      --  USB3DR global power management status register
      USB3DR_GBL_GPMSTS           : aliased USB3DR_GBL_GPMSTS_Register;
      --  USB3DR global status register
      USB3DR_GBL_GSTS             : aliased USB3DR_GBL_GSTS_Register;
      --  USB3DR global user control register 1
      USB3DR_GBL_GUCTL1           : aliased USB3DR_GBL_GUCTL1_Register;
      --  USB3DR global Synopsys ID register
      USB3DR_GBL_GSNPSID          : aliased HAL.UInt32;
      --  USB3DR global general purpose input/output register
      USB3DR_GBL_GGPIO            : aliased USB3DR_GBL_GGPIO_Register;
      --  USB3DR global user ID register
      USB3DR_GBL_GUID             : aliased HAL.UInt32;
      --  USB3DR global user control register
      USB3DR_GBL_GUCTL            : aliased USB3DR_GBL_GUCTL_Register;
      --  USB3DR global bus error address register - low
      USB3DR_GBL_GBUSERRADDRLO    : aliased HAL.UInt32;
      --  USB3DR gobal bus error address register - high
      USB3DR_GBL_GBUSERRADDRHI    : aliased HAL.UInt32;
      --  USB3DR global SS port to bus instance mapping register - low
      USB3DR_GBL_GPRTBIMAPLO      : aliased USB3DR_GBL_GPRTBIMAPLO_Register;
      --  USB3DR global SS port to bus instance mapping register - high
      USB3DR_GBL_GPRTBIMAPHI      : aliased USB3DR_GBL_GPRTBIMAPHI_Register;
      --  USB3DR global hardware parameters register 0
      USB3DR_GBL_GHWPARAMS0       : aliased USB3DR_GBL_GHWPARAMS0_Register;
      --  USB3DR global hardware parameters register 1
      USB3DR_GBL_GHWPARAMS1       : aliased USB3DR_GBL_GHWPARAMS1_Register;
      --  USB3DR global hardware parameters register 2
      USB3DR_GBL_GHWPARAMS2       : aliased HAL.UInt32;
      --  USB3DR global hardware parameters register 3
      USB3DR_GBL_GHWPARAMS3       : aliased USB3DR_GBL_GHWPARAMS3_Register;
      --  USB3DR global hardware parameters register 4
      USB3DR_GBL_GHWPARAMS4       : aliased USB3DR_GBL_GHWPARAMS4_Register;
      --  USB3DR global hardware parameters register 5
      USB3DR_GBL_GHWPARAMS5       : aliased USB3DR_GBL_GHWPARAMS5_Register;
      --  USB3DR global hardware parameters register 6
      USB3DR_GBL_GHWPARAMS6       : aliased USB3DR_GBL_GHWPARAMS6_Register;
      --  USB3DR global hardware parameters register 7
      USB3DR_GBL_GHWPARAMS7       : aliased USB3DR_GBL_GHWPARAMS7_Register;
      --  USB3DR global debug queue/FIFO space available register
      USB3DR_GBL_GDBGFIFOSPACE    : aliased USB3DR_GBL_GDBGFIFOSPACE_Register;
      --  USB3DR global debug LTSSM register
      USB3DR_GBL_GDBGLTSSM        : aliased USB3DR_GBL_GDBGLTSSM_Register;
      --  USB3DR global debug LNMCC register
      USB3DR_GBL_GDBGLNMCC        : aliased USB3DR_GBL_GDBGLNMCC_Register;
      --  USB3DR global debug BMU register
      USB3DR_GBL_GDBGBMU          : aliased USB3DR_GBL_GDBGBMU_Register;
      --  USB3DR global debug LSP MUX register - host
      USB3DR_GBL_GDBGLSPMUX_HST   : aliased USB3DR_GBL_GDBGLSPMUX_HST_Register;
      --  USB3DR global debug LSP register
      USB3DR_GBL_GDBGLSP          : aliased HAL.UInt32;
      --  USB3DR global debug endpoint information register 0
      USB3DR_GBL_GDBGEPINFO0      : aliased HAL.UInt32;
      --  USB3DR global debug endpoint information register 1
      USB3DR_GBL_GDBGEPINFO1      : aliased HAL.UInt32;
      --  USB3DR global high-speed port to bus instance mapping register - low
      USB3DR_GBL_GPRTBIMAP_HSLO   : aliased USB3DR_GBL_GPRTBIMAP_HSLO_Register;
      --  USB3DR global high-speed port to bus instance mapping register - high
      USB3DR_GBL_GPRTBIMAP_HSHI   : aliased USB3DR_GBL_GPRTBIMAP_HSHI_Register;
      --  USB3DR global full-speed port to bus instance mapping register - low
      USB3DR_GBL_GPRTBIMAP_FSLO   : aliased USB3DR_GBL_GPRTBIMAP_FSLO_Register;
      --  USB3DR global full-speed port to bus instance mapping register - high
      USB3DR_GBL_GPRTBIMAP_FSHI   : aliased USB3DR_GBL_GPRTBIMAP_FSHI_Register;
      --  USB3DR global user control register 2
      USB3DR_GBL_GUCTL2           : aliased USB3DR_GBL_GUCTL2_Register;
      --  USB3DR global USB2 PHY configuration register
      USB3DR_GBL_GUSB2PHYCFG      : aliased USB3DR_GBL_GUSB2PHYCFG_Register;
      --  USB3DR global USB 2.0 UTMI PHY vendor control register
      USB3DR_GBL_GUSB2PHYACC_UTMI : aliased USB3DR_GBL_GUSB2PHYACC_UTMI_Register;
      --  USB3DR global USB 3.0 PIPE control register
      USB3DR_GBL_GUSB3PIPECTL     : aliased USB3DR_GBL_GUSB3PIPECTL_Register;
      --  USB3DR global transmit FIFO size register 0
      USB3DR_GBL_GTXFIFOSIZ0      : aliased USB3DR_GBL_GTXFIFOSIZ_Register;
      --  USB3DR global transmit FIFO size register 1 GTXFIFOSIZ 1
      USB3DR_GBL_GTXFIFOSIZ1      : aliased USB3DR_GBL_GTXFIFOSIZ_Register;
      --  USB3DR global transmit FIFO size register 2
      USB3DR_GBL_GTXFIFOSIZ2      : aliased USB3DR_GBL_GTXFIFOSIZ_Register;
      --  USB3DR global transmit FIFO size register 3
      USB3DR_GBL_GTXFIFOSIZ3      : aliased USB3DR_GBL_GTXFIFOSIZ_Register;
      --  USB3DR global transmit FIFO size register 4
      USB3DR_GBL_GTXFIFOSIZ4      : aliased USB3DR_GBL_GTXFIFOSIZ_Register;
      --  USB3DR global transmit FIFO size register 5
      USB3DR_GBL_GTXFIFOSIZ5      : aliased USB3DR_GBL_GTXFIFOSIZ_Register;
      --  USB3DR global transmit FIFO size register 6
      USB3DR_GBL_GTXFIFOSIZ6      : aliased USB3DR_GBL_GTXFIFOSIZ_Register;
      --  USB3DR global transmit FIFO size register 7
      USB3DR_GBL_GTXFIFOSIZ7      : aliased USB3DR_GBL_GTXFIFOSIZ_Register;
      --  USB3DR global transmit FIFO size register 8
      USB3DR_GBL_GTXFIFOSIZ8      : aliased USB3DR_GBL_GTXFIFOSIZ_Register;
      --  USB3DR global transmit FIFO size register 9
      USB3DR_GBL_GTXFIFOSIZ9      : aliased USB3DR_GBL_GTXFIFOSIZ_Register;
      --  USB3DR global transmit FIFO size register 10
      USB3DR_GBL_GTXFIFOSIZ10     : aliased USB3DR_GBL_GTXFIFOSIZ_Register;
      --  USB3DR global transmit FIFO size register 11
      USB3DR_GBL_GTXFIFOSIZ11     : aliased USB3DR_GBL_GTXFIFOSIZ_Register;
      --  USB3DR global receive FIFO size register 0
      USB3DR_GBL_GRXFIFOSIZ0      : aliased USB3DR_GBL_GRXFIFOSIZ_Register;
      --  USB3DR global receive FIFO size register 1
      USB3DR_GBL_GRXFIFOSIZ1      : aliased USB3DR_GBL_GRXFIFOSIZ_Register;
      --  USB3DR global receive FIFO size register 2
      USB3DR_GBL_GRXFIFOSIZ2      : aliased USB3DR_GBL_GRXFIFOSIZ_Register;
      --  USB3DR global event buffer address low register
      USB3DR_GBL_GEVNTADRLO       : aliased HAL.UInt32;
      --  USB3DR global event buffer address high register
      USB3DR_GBL_GEVNTADRHI       : aliased HAL.UInt32;
      --  USB3DR global event buffer size register
      USB3DR_GBL_GEVNTSIZ         : aliased USB3DR_GBL_GEVNTSIZ_Register;
      --  USB3DR global event buffer count register
      USB3DR_GBL_GEVNTCOUNT       : aliased USB3DR_GBL_GEVNTCOUNT_Register;
      --  USB3DR global hardware parameters register 8
      USB3DR_GBL_GHWPARAMS8       : aliased HAL.UInt32;
      --  USB3DR global device TX FIFO DMA priority register
      USB3DR_GBL_GTXFIFOPRIDEV    : aliased USB3DR_GBL_GTXFIFOPRIDEV_Register;
      --  USB3DR global host TX FIFO DMA priority register
      USB3DR_GBL_GTXFIFOPRIHST    : aliased USB3DR_GBL_GTXFIFOPRIHST_Register;
      --  USB3DR global host RX FIFO DMA priority register
      USB3DR_GBL_GRXFIFOPRIHST    : aliased USB3DR_GBL_GRXFIFOPRIHST_Register;
      --  USB3DR global host FIFO DMA high-low priority ratio register
      USB3DR_GBL_GDMAHLRATIO      : aliased USB3DR_GBL_GDMAHLRATIO_Register;
      --  USB3DR global frame length adjustment register
      USB3DR_GBL_GFLADJ           : aliased USB3DR_GBL_GFLADJ_Register;
      --  USB3DR device configuration register
      USB3DR_DEV_DCFG             : aliased USB3DR_DEV_DCFG_Register;
      --  USB3DR device control register
      USB3DR_DEV_DCTL             : aliased USB3DR_DEV_DCTL_Register;
      --  USB3DR device event enable register
      USB3DR_DEV_DEVTEN           : aliased USB3DR_DEV_DEVTEN_Register;
      --  USB3DR device status register
      USB3DR_DEV_DSTS             : aliased USB3DR_DEV_DSTS_Register;
      --  USB3DR device generic command parameter register
      USB3DR_DEV_DGCMDPAR         : aliased HAL.UInt32;
      --  USB3DR device generic command register
      USB3DR_DEV_DGCMD            : aliased USB3DR_DEV_DGCMD_Register;
      --  USB3DR device active USB endpoint enable register
      USB3DR_DEV_DALEPENA         : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR20      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR10      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR00      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD0          : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR21      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR11      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR01      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD1          : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR22      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR12      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR02      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD2          : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR23      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR13      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR03      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD3          : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR24      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR14      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR04      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD4          : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR25      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR15      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR05      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD5          : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR26      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR16      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR06      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD6          : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR27      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR17      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR07      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD7          : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR28      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR18      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR08      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD8          : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR29      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR19      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR09      : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD9          : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR210     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR110     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR010     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD10         : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR211     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR111     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR011     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD11         : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR212     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR112     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR012     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD12         : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR213     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR113     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR013     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD13         : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR214     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR114     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR014     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD14         : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR215     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR115     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR015     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD15         : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR216     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR116     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR016     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD16         : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR217     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR117     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR017     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD17         : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR218     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR118     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR018     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD18         : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR219     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR119     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR019     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD19         : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR220     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR120     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR020     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD20         : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR221     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR121     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR021     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD21         : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR222     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR122     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR022     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD22         : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device physical endpoint-n command parameter 2 register
      USB3DR_DEV_DEPCMDPAR223     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 1 register
      USB3DR_DEV_DEPCMDPAR123     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command parameter 0 register
      USB3DR_DEV_DEPCMDPAR023     : aliased HAL.UInt32;
      --  USB3DR device physical endpoint-n command register
      USB3DR_DEV_DEPCMD23         : aliased USB3DR_DEV_DEPCMD_Register;
      --  USB3DR device interrupt moderation register
      USB3DR_DEV_IMOD             : aliased USB3DR_DEV_IMOD_Register;
      --  USB3DR battery charger configuration register
      USB3DR_BC_BCFG              : aliased USB3DR_BC_BCFG_Register;
      --  USB3DR battery charger event register
      USB3DR_BC_BCEVT             : aliased USB3DR_BC_BCEVT_Register;
      --  USB3DR battery charger event enable register
      USB3DR_BC_BCEVTEN           : aliased USB3DR_BC_BCEVTEN_Register;
      --  USB3DR U1/U2 LFPS RX timer register
      USB3DR_LINK_LU1LFPSRXTIM    : aliased USB3DR_LINK_LU1LFPSRXTIM_Register;
      --  USB3DR link setting register
      USB3DR_LINK_SETTINGS        : aliased USB3DR_LINK_SETTINGS_Register;
      --  USB3DR link user control register
      USB3DR_LINK_LLUCTL          : aliased USB3DR_LINK_LLUCTL_Register;
      --  USB3DR link datapath delay register
      USB3DR_LINK_LPTMDPDELAY     : aliased USB3DR_LINK_LPTMDPDELAY_Register;
   end record
     with Volatile;

   for USB3DR_Peripheral use record
      USB3DR_GBL_GSBUSCFG0        at 16#C100# range 0 .. 31;
      USB3DR_GBL_GSBUSCFG1        at 16#C104# range 0 .. 31;
      USB3DR_GBL_GTXTHRCFG        at 16#C108# range 0 .. 31;
      USB3DR_GBL_GRXTHRCFG        at 16#C10C# range 0 .. 31;
      USB3DR_GBL_GCTL             at 16#C110# range 0 .. 31;
      USB3DR_GBL_GPMSTS           at 16#C114# range 0 .. 31;
      USB3DR_GBL_GSTS             at 16#C118# range 0 .. 31;
      USB3DR_GBL_GUCTL1           at 16#C11C# range 0 .. 31;
      USB3DR_GBL_GSNPSID          at 16#C120# range 0 .. 31;
      USB3DR_GBL_GGPIO            at 16#C124# range 0 .. 31;
      USB3DR_GBL_GUID             at 16#C128# range 0 .. 31;
      USB3DR_GBL_GUCTL            at 16#C12C# range 0 .. 31;
      USB3DR_GBL_GBUSERRADDRLO    at 16#C130# range 0 .. 31;
      USB3DR_GBL_GBUSERRADDRHI    at 16#C134# range 0 .. 31;
      USB3DR_GBL_GPRTBIMAPLO      at 16#C138# range 0 .. 31;
      USB3DR_GBL_GPRTBIMAPHI      at 16#C13C# range 0 .. 31;
      USB3DR_GBL_GHWPARAMS0       at 16#C140# range 0 .. 31;
      USB3DR_GBL_GHWPARAMS1       at 16#C144# range 0 .. 31;
      USB3DR_GBL_GHWPARAMS2       at 16#C148# range 0 .. 31;
      USB3DR_GBL_GHWPARAMS3       at 16#C14C# range 0 .. 31;
      USB3DR_GBL_GHWPARAMS4       at 16#C150# range 0 .. 31;
      USB3DR_GBL_GHWPARAMS5       at 16#C154# range 0 .. 31;
      USB3DR_GBL_GHWPARAMS6       at 16#C158# range 0 .. 31;
      USB3DR_GBL_GHWPARAMS7       at 16#C15C# range 0 .. 31;
      USB3DR_GBL_GDBGFIFOSPACE    at 16#C160# range 0 .. 31;
      USB3DR_GBL_GDBGLTSSM        at 16#C164# range 0 .. 31;
      USB3DR_GBL_GDBGLNMCC        at 16#C168# range 0 .. 31;
      USB3DR_GBL_GDBGBMU          at 16#C16C# range 0 .. 31;
      USB3DR_GBL_GDBGLSPMUX_HST   at 16#C170# range 0 .. 31;
      USB3DR_GBL_GDBGLSP          at 16#C174# range 0 .. 31;
      USB3DR_GBL_GDBGEPINFO0      at 16#C178# range 0 .. 31;
      USB3DR_GBL_GDBGEPINFO1      at 16#C17C# range 0 .. 31;
      USB3DR_GBL_GPRTBIMAP_HSLO   at 16#C180# range 0 .. 31;
      USB3DR_GBL_GPRTBIMAP_HSHI   at 16#C184# range 0 .. 31;
      USB3DR_GBL_GPRTBIMAP_FSLO   at 16#C188# range 0 .. 31;
      USB3DR_GBL_GPRTBIMAP_FSHI   at 16#C18C# range 0 .. 31;
      USB3DR_GBL_GUCTL2           at 16#C19C# range 0 .. 31;
      USB3DR_GBL_GUSB2PHYCFG      at 16#C200# range 0 .. 31;
      USB3DR_GBL_GUSB2PHYACC_UTMI at 16#C280# range 0 .. 31;
      USB3DR_GBL_GUSB3PIPECTL     at 16#C2C0# range 0 .. 31;
      USB3DR_GBL_GTXFIFOSIZ0      at 16#C300# range 0 .. 31;
      USB3DR_GBL_GTXFIFOSIZ1      at 16#C304# range 0 .. 31;
      USB3DR_GBL_GTXFIFOSIZ2      at 16#C308# range 0 .. 31;
      USB3DR_GBL_GTXFIFOSIZ3      at 16#C30C# range 0 .. 31;
      USB3DR_GBL_GTXFIFOSIZ4      at 16#C310# range 0 .. 31;
      USB3DR_GBL_GTXFIFOSIZ5      at 16#C314# range 0 .. 31;
      USB3DR_GBL_GTXFIFOSIZ6      at 16#C318# range 0 .. 31;
      USB3DR_GBL_GTXFIFOSIZ7      at 16#C31C# range 0 .. 31;
      USB3DR_GBL_GTXFIFOSIZ8      at 16#C320# range 0 .. 31;
      USB3DR_GBL_GTXFIFOSIZ9      at 16#C324# range 0 .. 31;
      USB3DR_GBL_GTXFIFOSIZ10     at 16#C328# range 0 .. 31;
      USB3DR_GBL_GTXFIFOSIZ11     at 16#C32C# range 0 .. 31;
      USB3DR_GBL_GRXFIFOSIZ0      at 16#C380# range 0 .. 31;
      USB3DR_GBL_GRXFIFOSIZ1      at 16#C384# range 0 .. 31;
      USB3DR_GBL_GRXFIFOSIZ2      at 16#C388# range 0 .. 31;
      USB3DR_GBL_GEVNTADRLO       at 16#C400# range 0 .. 31;
      USB3DR_GBL_GEVNTADRHI       at 16#C404# range 0 .. 31;
      USB3DR_GBL_GEVNTSIZ         at 16#C408# range 0 .. 31;
      USB3DR_GBL_GEVNTCOUNT       at 16#C40C# range 0 .. 31;
      USB3DR_GBL_GHWPARAMS8       at 16#C600# range 0 .. 31;
      USB3DR_GBL_GTXFIFOPRIDEV    at 16#C610# range 0 .. 31;
      USB3DR_GBL_GTXFIFOPRIHST    at 16#C618# range 0 .. 31;
      USB3DR_GBL_GRXFIFOPRIHST    at 16#C61C# range 0 .. 31;
      USB3DR_GBL_GDMAHLRATIO      at 16#C624# range 0 .. 31;
      USB3DR_GBL_GFLADJ           at 16#C630# range 0 .. 31;
      USB3DR_DEV_DCFG             at 16#C700# range 0 .. 31;
      USB3DR_DEV_DCTL             at 16#C704# range 0 .. 31;
      USB3DR_DEV_DEVTEN           at 16#C708# range 0 .. 31;
      USB3DR_DEV_DSTS             at 16#C70C# range 0 .. 31;
      USB3DR_DEV_DGCMDPAR         at 16#C710# range 0 .. 31;
      USB3DR_DEV_DGCMD            at 16#C714# range 0 .. 31;
      USB3DR_DEV_DALEPENA         at 16#C720# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR20      at 16#C800# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR10      at 16#C804# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR00      at 16#C808# range 0 .. 31;
      USB3DR_DEV_DEPCMD0          at 16#C80C# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR21      at 16#C810# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR11      at 16#C814# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR01      at 16#C818# range 0 .. 31;
      USB3DR_DEV_DEPCMD1          at 16#C81C# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR22      at 16#C820# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR12      at 16#C824# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR02      at 16#C828# range 0 .. 31;
      USB3DR_DEV_DEPCMD2          at 16#C82C# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR23      at 16#C830# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR13      at 16#C834# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR03      at 16#C838# range 0 .. 31;
      USB3DR_DEV_DEPCMD3          at 16#C83C# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR24      at 16#C840# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR14      at 16#C844# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR04      at 16#C848# range 0 .. 31;
      USB3DR_DEV_DEPCMD4          at 16#C84C# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR25      at 16#C850# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR15      at 16#C854# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR05      at 16#C858# range 0 .. 31;
      USB3DR_DEV_DEPCMD5          at 16#C85C# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR26      at 16#C860# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR16      at 16#C864# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR06      at 16#C868# range 0 .. 31;
      USB3DR_DEV_DEPCMD6          at 16#C86C# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR27      at 16#C870# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR17      at 16#C874# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR07      at 16#C878# range 0 .. 31;
      USB3DR_DEV_DEPCMD7          at 16#C87C# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR28      at 16#C880# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR18      at 16#C884# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR08      at 16#C888# range 0 .. 31;
      USB3DR_DEV_DEPCMD8          at 16#C88C# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR29      at 16#C890# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR19      at 16#C894# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR09      at 16#C898# range 0 .. 31;
      USB3DR_DEV_DEPCMD9          at 16#C89C# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR210     at 16#C8A0# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR110     at 16#C8A4# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR010     at 16#C8A8# range 0 .. 31;
      USB3DR_DEV_DEPCMD10         at 16#C8AC# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR211     at 16#C8B0# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR111     at 16#C8B4# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR011     at 16#C8B8# range 0 .. 31;
      USB3DR_DEV_DEPCMD11         at 16#C8BC# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR212     at 16#C8C0# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR112     at 16#C8C4# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR012     at 16#C8C8# range 0 .. 31;
      USB3DR_DEV_DEPCMD12         at 16#C8CC# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR213     at 16#C8D0# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR113     at 16#C8D4# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR013     at 16#C8D8# range 0 .. 31;
      USB3DR_DEV_DEPCMD13         at 16#C8DC# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR214     at 16#C8E0# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR114     at 16#C8E4# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR014     at 16#C8E8# range 0 .. 31;
      USB3DR_DEV_DEPCMD14         at 16#C8EC# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR215     at 16#C8F0# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR115     at 16#C8F4# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR015     at 16#C8F8# range 0 .. 31;
      USB3DR_DEV_DEPCMD15         at 16#C8FC# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR216     at 16#C900# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR116     at 16#C904# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR016     at 16#C908# range 0 .. 31;
      USB3DR_DEV_DEPCMD16         at 16#C90C# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR217     at 16#C910# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR117     at 16#C914# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR017     at 16#C918# range 0 .. 31;
      USB3DR_DEV_DEPCMD17         at 16#C91C# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR218     at 16#C920# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR118     at 16#C924# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR018     at 16#C928# range 0 .. 31;
      USB3DR_DEV_DEPCMD18         at 16#C92C# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR219     at 16#C930# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR119     at 16#C934# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR019     at 16#C938# range 0 .. 31;
      USB3DR_DEV_DEPCMD19         at 16#C93C# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR220     at 16#C940# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR120     at 16#C944# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR020     at 16#C948# range 0 .. 31;
      USB3DR_DEV_DEPCMD20         at 16#C94C# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR221     at 16#C950# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR121     at 16#C954# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR021     at 16#C958# range 0 .. 31;
      USB3DR_DEV_DEPCMD21         at 16#C95C# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR222     at 16#C960# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR122     at 16#C964# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR022     at 16#C968# range 0 .. 31;
      USB3DR_DEV_DEPCMD22         at 16#C96C# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR223     at 16#C970# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR123     at 16#C974# range 0 .. 31;
      USB3DR_DEV_DEPCMDPAR023     at 16#C978# range 0 .. 31;
      USB3DR_DEV_DEPCMD23         at 16#C97C# range 0 .. 31;
      USB3DR_DEV_IMOD             at 16#CA00# range 0 .. 31;
      USB3DR_BC_BCFG              at 16#CC30# range 0 .. 31;
      USB3DR_BC_BCEVT             at 16#CC38# range 0 .. 31;
      USB3DR_BC_BCEVTEN           at 16#CC3C# range 0 .. 31;
      USB3DR_LINK_LU1LFPSRXTIM    at 16#D000# range 0 .. 31;
      USB3DR_LINK_SETTINGS        at 16#D020# range 0 .. 31;
      USB3DR_LINK_LLUCTL          at 16#D024# range 0 .. 31;
      USB3DR_LINK_LPTMDPDELAY     at 16#D028# range 0 .. 31;
   end record;

   --  USB3DR register block
   USB3DR_Periph : aliased USB3DR_Peripheral
     with Import, Address => USB3DR_Base;

   --  USB3DR register block
   USB3DR_S_Periph : aliased USB3DR_Peripheral
     with Import, Address => USB3DR_S_Base;

end STM32_SVD.USB3DR;
