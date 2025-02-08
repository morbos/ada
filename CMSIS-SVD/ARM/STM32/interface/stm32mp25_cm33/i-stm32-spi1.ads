--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.SPI1 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  SPI/I2S control register 1
   type SPI1_CR1_Register is record
      --  serial peripheral enable
      SPE            : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  master automatic suspension in Receive mode
      MASRX          : Boolean := False;
      --  master transfer start
      CSTART         : Boolean := False;
      --  Write-only. master suspend request
      CSUSP          : Boolean := False;
      --  Rx/Tx direction at half-duplex mode
      HDDIR          : Boolean := False;
      --  internal SS signal input level
      SSI            : Boolean := False;
      --  32-bit CRC polynomial configuration
      CRC33_17       : Boolean := False;
      --  CRC calculation initialization pattern control for receiver
      RCRCINI        : Boolean := False;
      --  CRC calculation initialization pattern control for transmitter
      TCRCINI        : Boolean := False;
      --  locking the AF configuration of associated I/Os
      IOLOCK         : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI1_CR1_Register use record
      SPE            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      MASRX          at 0 range 8 .. 8;
      CSTART         at 0 range 9 .. 9;
      CSUSP          at 0 range 10 .. 10;
      HDDIR          at 0 range 11 .. 11;
      SSI            at 0 range 12 .. 12;
      CRC33_17       at 0 range 13 .. 13;
      RCRCINI        at 0 range 14 .. 14;
      TCRCINI        at 0 range 15 .. 15;
      IOLOCK         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype SPI1_CR2_TSIZE_Field is Interfaces.Bit_Types.UInt16;

   --  SPI/I2S control register 2
   type SPI1_CR2_Register is record
      --  number of data at current transfer
      TSIZE          : SPI1_CR2_TSIZE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI1_CR2_Register use record
      TSIZE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPI1_CFG1_DSIZE_Field is Interfaces.Bit_Types.UInt5;
   subtype SPI1_CFG1_FTHLV_Field is Interfaces.Bit_Types.UInt4;
   subtype SPI1_CFG1_CRCSIZE_Field is Interfaces.Bit_Types.UInt5;
   subtype SPI1_CFG1_MBR_Field is Interfaces.Bit_Types.UInt3;

   --  SPI/I2S configuration register 1
   type SPI1_CFG1_Register is record
      --  number of bits in a single SPI data frame
      DSIZE          : SPI1_CFG1_DSIZE_Field := 16#7#;
      --  FIFO threshold level
      FTHLV          : SPI1_CFG1_FTHLV_Field := 16#0#;
      --  behavior of slave transmitter at underrun condition
      UDRCFG         : Boolean := False;
      --  unspecified
      Reserved_10_13 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Rx DMA stream enable
      RXDMAEN        : Boolean := False;
      --  Tx DMA stream enable
      TXDMAEN        : Boolean := False;
      --  length of CRC frame to be transacted and compared
      CRCSIZE        : SPI1_CFG1_CRCSIZE_Field := 16#7#;
      --  unspecified
      Reserved_21_21 : Interfaces.Bit_Types.Bit := 16#0#;
      --  hardware CRC computation enable
      CRCEN          : Boolean := False;
      --  unspecified
      Reserved_23_27 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  master baud rate prescaler setting
      MBR            : SPI1_CFG1_MBR_Field := 16#0#;
      --  bypass of the prescaler at master baud rate clock generator
      BPASS          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI1_CFG1_Register use record
      DSIZE          at 0 range 0 .. 4;
      FTHLV          at 0 range 5 .. 8;
      UDRCFG         at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      RXDMAEN        at 0 range 14 .. 14;
      TXDMAEN        at 0 range 15 .. 15;
      CRCSIZE        at 0 range 16 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      CRCEN          at 0 range 22 .. 22;
      Reserved_23_27 at 0 range 23 .. 27;
      MBR            at 0 range 28 .. 30;
      BPASS          at 0 range 31 .. 31;
   end record;

   subtype SPI1_CFG2_MSSI_Field is Interfaces.Bit_Types.UInt4;
   subtype SPI1_CFG2_MIDI_Field is Interfaces.Bit_Types.UInt4;
   subtype SPI1_CFG2_COMM_Field is Interfaces.Bit_Types.UInt2;
   subtype SPI1_CFG2_SP_Field is Interfaces.Bit_Types.UInt3;

   --  SPI/I2S configuration register 2
   type SPI1_CFG2_Register is record
      --  Master SS Idleness
      MSSI           : SPI1_CFG2_MSSI_Field := 16#0#;
      --  master Inter-Data Idleness
      MIDI           : SPI1_CFG2_MIDI_Field := 16#0#;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  RDY signal input/output management
      RDIOM          : Boolean := False;
      --  RDY signal input/output polarity
      RDIOP          : Boolean := False;
      --  swap functionality of MISO and MOSI pins
      IOSWP          : Boolean := False;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit := 16#0#;
      --  SPI Communication Mode
      COMM           : SPI1_CFG2_COMM_Field := 16#0#;
      --  serial protocol
      SP             : SPI1_CFG2_SP_Field := 16#0#;
      --  SPI master
      MASTER         : Boolean := False;
      --  data frame format
      LSBFRST        : Boolean := False;
      --  clock phase
      CPHA           : Boolean := False;
      --  clock polarity
      CPOL           : Boolean := False;
      --  software management of SS signal input
      SSM            : Boolean := False;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  SS input/output polarity
      SSIOP          : Boolean := False;
      --  SS output enable
      SSOE           : Boolean := False;
      --  SS output management in master mode
      SSOM           : Boolean := False;
      --  alternate function GPIOs control
      AFCNTR         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI1_CFG2_Register use record
      MSSI           at 0 range 0 .. 3;
      MIDI           at 0 range 4 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      RDIOM          at 0 range 13 .. 13;
      RDIOP          at 0 range 14 .. 14;
      IOSWP          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      COMM           at 0 range 17 .. 18;
      SP             at 0 range 19 .. 21;
      MASTER         at 0 range 22 .. 22;
      LSBFRST        at 0 range 23 .. 23;
      CPHA           at 0 range 24 .. 24;
      CPOL           at 0 range 25 .. 25;
      SSM            at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SSIOP          at 0 range 28 .. 28;
      SSOE           at 0 range 29 .. 29;
      SSOM           at 0 range 30 .. 30;
      AFCNTR         at 0 range 31 .. 31;
   end record;

   --  SPI/I2S interrupt enable register
   type SPI1_IER_Register is record
      --  RXP interrupt enable
      RXPIE          : Boolean := False;
      --  TXP interrupt enable
      TXPIE          : Boolean := False;
      --  DXP interrupt enabled
      DXPIE          : Boolean := False;
      --  EOT, SUSP and TXC interrupt enable
      EOTIE          : Boolean := False;
      --  TXTFIE interrupt enable
      TXTFIE         : Boolean := False;
      --  UDR interrupt enable
      UDRIE          : Boolean := False;
      --  OVR interrupt enable
      OVRIE          : Boolean := False;
      --  CRC error interrupt enable
      CRCEIE         : Boolean := False;
      --  TIFRE interrupt enable
      TIFREIE        : Boolean := False;
      --  mode Fault interrupt enable
      MODFIE         : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI1_IER_Register use record
      RXPIE          at 0 range 0 .. 0;
      TXPIE          at 0 range 1 .. 1;
      DXPIE          at 0 range 2 .. 2;
      EOTIE          at 0 range 3 .. 3;
      TXTFIE         at 0 range 4 .. 4;
      UDRIE          at 0 range 5 .. 5;
      OVRIE          at 0 range 6 .. 6;
      CRCEIE         at 0 range 7 .. 7;
      TIFREIE        at 0 range 8 .. 8;
      MODFIE         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SPI1_SR_RXPLVL_Field is Interfaces.Bit_Types.UInt2;
   subtype SPI1_SR_CTSIZE_Field is Interfaces.Bit_Types.UInt16;

   --  SPI/I2S status register
   type SPI1_SR_Register is record
      --  Read-only. Rx-packet available
      RXP            : Boolean;
      --  Read-only. Tx-packet space available
      TXP            : Boolean;
      --  Read-only. duplex packet
      DXP            : Boolean;
      --  Read-only. end of transfer
      EOT            : Boolean;
      --  Read-only. transmission transfer filled
      TXTF           : Boolean;
      --  Read-only. underrun
      UDR            : Boolean;
      --  Read-only. overrun
      OVR            : Boolean;
      --  Read-only. CRC error
      CRCE           : Boolean;
      --  Read-only. TI frame format error
      TIFRE          : Boolean;
      --  Read-only. mode fault
      MODF           : Boolean;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit;
      --  Read-only. suspension status
      SUSP           : Boolean;
      --  Read-only. TxFIFO transmission complete
      TXC            : Boolean;
      --  Read-only. RxFIFO packing level
      RXPLVL         : SPI1_SR_RXPLVL_Field;
      --  Read-only. RxFIFO word not empty
      RXWNE          : Boolean;
      --  Read-only. number of data frames remaining in current TSIZE session
      CTSIZE         : SPI1_SR_CTSIZE_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI1_SR_Register use record
      RXP            at 0 range 0 .. 0;
      TXP            at 0 range 1 .. 1;
      DXP            at 0 range 2 .. 2;
      EOT            at 0 range 3 .. 3;
      TXTF           at 0 range 4 .. 4;
      UDR            at 0 range 5 .. 5;
      OVR            at 0 range 6 .. 6;
      CRCE           at 0 range 7 .. 7;
      TIFRE          at 0 range 8 .. 8;
      MODF           at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      SUSP           at 0 range 11 .. 11;
      TXC            at 0 range 12 .. 12;
      RXPLVL         at 0 range 13 .. 14;
      RXWNE          at 0 range 15 .. 15;
      CTSIZE         at 0 range 16 .. 31;
   end record;

   --  SPI/I2S interrupt/status flags clear register
   type SPI1_IFCR_Register is record
      --  unspecified
      Reserved_0_2   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. end of transfer flag clear
      EOTC           : Boolean := False;
      --  Write-only. transmission transfer filled flag clear
      TXTFC          : Boolean := False;
      --  Write-only. underrun flag clear
      UDRC           : Boolean := False;
      --  Write-only. overrun flag clear
      OVRC           : Boolean := False;
      --  Write-only. CRC error flag clear
      CRCEC          : Boolean := False;
      --  Write-only. TI frame format error flag clear
      TIFREC         : Boolean := False;
      --  Write-only. mode fault flag clear
      MODFC          : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Suspend flag clear
      SUSPC          : Boolean := False;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI1_IFCR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      EOTC           at 0 range 3 .. 3;
      TXTFC          at 0 range 4 .. 4;
      UDRC           at 0 range 5 .. 5;
      OVRC           at 0 range 6 .. 6;
      CRCEC          at 0 range 7 .. 7;
      TIFREC         at 0 range 8 .. 8;
      MODFC          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      SUSPC          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SPI1_AUTOCR_TRIGSEL_Field is Interfaces.Bit_Types.UInt4;

   --  SPI/I2S autonomous mode control register
   type SPI1_AUTOCR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Trigger selection (refer Section: Description of SPI
      --  interconnections).
      TRIGSEL        : SPI1_AUTOCR_TRIGSEL_Field := 16#0#;
      --  Trigger polarity
      TRIGPOL        : Boolean := False;
      --  Hardware control of CSTART triggering enable
      TRIGEN         : Boolean := False;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI1_AUTOCR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      TRIGSEL        at 0 range 16 .. 19;
      TRIGPOL        at 0 range 20 .. 20;
      TRIGEN         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype SPI1_I2SCFGR_I2SCFG_Field is Interfaces.Bit_Types.UInt3;
   subtype SPI1_I2SCFGR_I2SSTD_Field is Interfaces.Bit_Types.UInt2;
   subtype SPI1_I2SCFGR_DATLEN_Field is Interfaces.Bit_Types.UInt2;
   subtype SPI1_I2SCFGR_I2SDIV_Field is Interfaces.Bit_Types.Byte;

   --  SPI/I2S configuration register
   type SPI1_I2SCFGR_Register is record
      --  I2S mode selection
      I2SMOD         : Boolean := False;
      --  I2S configuration mode
      I2SCFG         : SPI1_I2SCFGR_I2SCFG_Field := 16#0#;
      --  Iless thansup>2less than/sup>S standard selection
      I2SSTD         : SPI1_I2SCFGR_I2SSTD_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  PCM frame synchronization
      PCMSYNC        : Boolean := False;
      --  data length to be transferred.
      DATLEN         : SPI1_I2SCFGR_DATLEN_Field := 16#0#;
      --  channel length (number of bits per audio channel)
      CHLEN          : Boolean := False;
      --  serial audio clock polarity
      CKPOL          : Boolean := False;
      --  fixed channel length in slave
      FIXCH          : Boolean := False;
      --  word select inversion
      WSINV          : Boolean := False;
      --  data format
      DATFMT         : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Iless thansup>2less than/sup>S linear prescaler
      I2SDIV         : SPI1_I2SCFGR_I2SDIV_Field := 16#0#;
      --  odd factor for the prescaler
      ODD            : Boolean := False;
      --  master clock output enable
      MCKOE          : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI1_I2SCFGR_Register use record
      I2SMOD         at 0 range 0 .. 0;
      I2SCFG         at 0 range 1 .. 3;
      I2SSTD         at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      PCMSYNC        at 0 range 7 .. 7;
      DATLEN         at 0 range 8 .. 9;
      CHLEN          at 0 range 10 .. 10;
      CKPOL          at 0 range 11 .. 11;
      FIXCH          at 0 range 12 .. 12;
      WSINV          at 0 range 13 .. 13;
      DATFMT         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      I2SDIV         at 0 range 16 .. 23;
      ODD            at 0 range 24 .. 24;
      MCKOE          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype SPI1_HWCFGR2_OPBCFG_Field is Interfaces.Bit_Types.Byte;

   --  SPI/I2S hardware configuration register
   type SPI1_HWCFGR2_Register is record
      --  Read-only. Number of option bits available
      OPBCFG        : SPI1_HWCFGR2_OPBCFG_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI1_HWCFGR2_Register use record
      OPBCFG        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SPI1_HWCFGR1_TXFCFG_Field is Interfaces.Bit_Types.UInt4;
   subtype SPI1_HWCFGR1_RXFCFG_Field is Interfaces.Bit_Types.UInt4;
   subtype SPI1_HWCFGR1_CRCCFG_Field is Interfaces.Bit_Types.UInt4;
   subtype SPI1_HWCFGR1_I2SCFG_Field is Interfaces.Bit_Types.UInt4;
   subtype SPI1_HWCFGR1_DSCFG_Field is Interfaces.Bit_Types.UInt4;
   subtype SPI1_HWCFGR1_TRGCFG_Field is Interfaces.Bit_Types.UInt4;
   subtype SPI1_HWCFGR1_FULLCFG_Field is Interfaces.Bit_Types.UInt4;

   --  SPI/I2S hardware configuration register
   type SPI1_HWCFGR1_Register is record
      --  Read-only. TxFIFO size
      TXFCFG         : SPI1_HWCFGR1_TXFCFG_Field;
      --  Read-only. RxFIFO size
      RXFCFG         : SPI1_HWCFGR1_RXFCFG_Field;
      --  Read-only. CRC configuration for SPI
      CRCCFG         : SPI1_HWCFGR1_CRCCFG_Field;
      --  Read-only. I2S configuration
      I2SCFG         : SPI1_HWCFGR1_I2SCFG_Field;
      --  Read-only. SPI data size configuration
      DSCFG          : SPI1_HWCFGR1_DSCFG_Field;
      --  Read-only. Autonomous trigger feature configuration
      TRGCFG         : SPI1_HWCFGR1_TRGCFG_Field;
      --  Read-only. SPI2S full feature version configuration
      FULLCFG        : SPI1_HWCFGR1_FULLCFG_Field;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI1_HWCFGR1_Register use record
      TXFCFG         at 0 range 0 .. 3;
      RXFCFG         at 0 range 4 .. 7;
      CRCCFG         at 0 range 8 .. 11;
      I2SCFG         at 0 range 12 .. 15;
      DSCFG          at 0 range 16 .. 19;
      TRGCFG         at 0 range 20 .. 23;
      FULLCFG        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype SPI1_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype SPI1_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  SPI/I2S version register
   type SPI1_VERR_Register is record
      --  Read-only. minor version
      MINREV        : SPI1_VERR_MINREV_Field;
      --  Read-only. major version
      MAJREV        : SPI1_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI1_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SPI1 address block description
   type SPI1_Peripheral is record
      --  SPI/I2S control register 1
      SPI1_CR1     : aliased SPI1_CR1_Register;
      --  SPI/I2S control register 2
      SPI1_CR2     : aliased SPI1_CR2_Register;
      --  SPI/I2S configuration register 1
      SPI1_CFG1    : aliased SPI1_CFG1_Register;
      --  SPI/I2S configuration register 2
      SPI1_CFG2    : aliased SPI1_CFG2_Register;
      --  SPI/I2S interrupt enable register
      SPI1_IER     : aliased SPI1_IER_Register;
      --  SPI/I2S status register
      SPI1_SR      : aliased SPI1_SR_Register;
      --  SPI/I2S interrupt/status flags clear register
      SPI1_IFCR    : aliased SPI1_IFCR_Register;
      --  SPI/I2S autonomous mode control register
      SPI1_AUTOCR  : aliased SPI1_AUTOCR_Register;
      --  SPI/I2S transmit data register
      SPI1_TXDR    : aliased Interfaces.Bit_Types.UInt32;
      --  SPI/I2S receive data register
      SPI1_RXDR    : aliased Interfaces.Bit_Types.UInt32;
      --  SPI/I2S polynomial register
      SPI1_CRCPOLY : aliased Interfaces.Bit_Types.UInt32;
      --  SPI/I2S transmitter CRC register
      SPI1_TXCRC   : aliased Interfaces.Bit_Types.UInt32;
      --  SPI/I2S receiver CRC register
      SPI1_RXCRC   : aliased Interfaces.Bit_Types.UInt32;
      --  SPI/I2S underrun data register
      SPI1_UDRDR   : aliased Interfaces.Bit_Types.UInt32;
      --  SPI/I2S configuration register
      SPI1_I2SCFGR : aliased SPI1_I2SCFGR_Register;
      --  SPI/I2S hardware configuration register
      SPI1_HWCFGR2 : aliased SPI1_HWCFGR2_Register;
      --  SPI/I2S hardware configuration register
      SPI1_HWCFGR1 : aliased SPI1_HWCFGR1_Register;
      --  SPI/I2S version register
      SPI1_VERR    : aliased SPI1_VERR_Register;
      --  SPI/I2S identification register
      SPI1_IPIDR   : aliased Interfaces.Bit_Types.UInt32;
      --  SPI/I2S size identification register
      SPI1_SIDR    : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for SPI1_Peripheral use record
      SPI1_CR1     at 16#0# range 0 .. 31;
      SPI1_CR2     at 16#4# range 0 .. 31;
      SPI1_CFG1    at 16#8# range 0 .. 31;
      SPI1_CFG2    at 16#C# range 0 .. 31;
      SPI1_IER     at 16#10# range 0 .. 31;
      SPI1_SR      at 16#14# range 0 .. 31;
      SPI1_IFCR    at 16#18# range 0 .. 31;
      SPI1_AUTOCR  at 16#1C# range 0 .. 31;
      SPI1_TXDR    at 16#20# range 0 .. 31;
      SPI1_RXDR    at 16#30# range 0 .. 31;
      SPI1_CRCPOLY at 16#40# range 0 .. 31;
      SPI1_TXCRC   at 16#44# range 0 .. 31;
      SPI1_RXCRC   at 16#48# range 0 .. 31;
      SPI1_UDRDR   at 16#4C# range 0 .. 31;
      SPI1_I2SCFGR at 16#50# range 0 .. 31;
      SPI1_HWCFGR2 at 16#3EC# range 0 .. 31;
      SPI1_HWCFGR1 at 16#3F0# range 0 .. 31;
      SPI1_VERR    at 16#3F4# range 0 .. 31;
      SPI1_IPIDR   at 16#3F8# range 0 .. 31;
      SPI1_SIDR    at 16#3FC# range 0 .. 31;
   end record;

   --  SPI1 address block description
   SPI1_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI1_Base;

   --  SPI1 address block description
   SPI1_S_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI1_S_Base;

   --  SPI1 address block description
   SPI2_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI2_Base;

   --  SPI1 address block description
   SPI2_S_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI2_S_Base;

   --  SPI1 address block description
   SPI3_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI3_Base;

   --  SPI1 address block description
   SPI3_S_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI3_S_Base;

   --  SPI1 address block description
   SPI4_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI4_Base;

   --  SPI1 address block description
   SPI4_S_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI4_S_Base;

   --  SPI1 address block description
   SPI5_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI5_Base;

   --  SPI1 address block description
   SPI5_S_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI5_S_Base;

   --  SPI1 address block description
   SPI6_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI6_Base;

   --  SPI1 address block description
   SPI6_S_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI6_S_Base;

   --  SPI1 address block description
   SPI7_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI7_Base;

   --  SPI1 address block description
   SPI7_S_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI7_S_Base;

   --  SPI1 address block description
   SPI8_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI8_Base;

   --  SPI1 address block description
   SPI8_S_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI8_S_Base;

end Interfaces.STM32.SPI1;
