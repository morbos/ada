--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.SPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  SPI control register 1
   type SPI_CR1_Register is record
      --  serial peripheral enable
      SPE            : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  master automatic suspension in Receive mode
      MASRx          : Boolean := False;
      --  master transfer start
      CSTART         : Boolean := False;
      --  Write-only. master suspend request
      CSUSP          : Boolean := False;
      --  Rx/Tx direction at half-duplex mode
      HDDIR          : Boolean := False;
      --  internal SS signal input level
      SSI            : Boolean := False;
      --  Full size (33-bit or 17-bit) CRC polynomial configuration
      CRC33_17       : Boolean := False;
      --  CRC calculation initialization pattern control for receiver
      RCRCINI        : Boolean := False;
      --  CRC calculation initialization pattern control for transmitter
      TCRCINI        : Boolean := False;
      --  locking the AF configuration of associated I/Os
      IOLOCK         : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_CR1_Register use record
      SPE            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      MASRx          at 0 range 8 .. 8;
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

   subtype SPI_CR2_TSIZE_Field is HAL.UInt16;

   --  SPI control register 2
   type SPI_CR2_Register is record
      --  number of data at current transfer
      TSIZE          : SPI_CR2_TSIZE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_CR2_Register use record
      TSIZE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPI_CFG1_DSIZE_Field is HAL.UInt5;
   subtype SPI_CFG1_FTHLV_Field is HAL.UInt4;
   subtype SPI_CFG1_CRCSIZE_Field is HAL.UInt5;
   subtype SPI_CFG1_MBR_Field is HAL.UInt3;

   --  SPI configuration register 1
   type SPI_CFG1_Register is record
      --  number of bits in a single SPI data frame
      DSIZE          : SPI_CFG1_DSIZE_Field := 16#7#;
      --  FIFO threshold level
      FTHLV          : SPI_CFG1_FTHLV_Field := 16#0#;
      --  behavior of slave transmitter at underrun condition
      UDRCFG         : Boolean := False;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  Rx DMA stream enable
      RxDMAEN        : Boolean := False;
      --  Tx DMA stream enable
      TxDMAEN        : Boolean := False;
      --  length of CRC frame to be transacted and compared
      CRCSIZE        : SPI_CFG1_CRCSIZE_Field := 16#7#;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  hardware CRC computation enable
      CRCEN          : Boolean := False;
      --  unspecified
      Reserved_23_27 : HAL.UInt5 := 16#0#;
      --  master baud rate prescaler setting
      MBR            : SPI_CFG1_MBR_Field := 16#0#;
      --  bypass of the prescaler at master baud rate clock generator
      BPASS          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_CFG1_Register use record
      DSIZE          at 0 range 0 .. 4;
      FTHLV          at 0 range 5 .. 8;
      UDRCFG         at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      RxDMAEN        at 0 range 14 .. 14;
      TxDMAEN        at 0 range 15 .. 15;
      CRCSIZE        at 0 range 16 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      CRCEN          at 0 range 22 .. 22;
      Reserved_23_27 at 0 range 23 .. 27;
      MBR            at 0 range 28 .. 30;
      BPASS          at 0 range 31 .. 31;
   end record;

   subtype SPI_CFG2_MSSI_Field is HAL.UInt4;
   subtype SPI_CFG2_MIDI_Field is HAL.UInt4;
   subtype SPI_CFG2_COMM_Field is HAL.UInt2;
   subtype SPI_CFG2_SP_Field is HAL.UInt3;

   --  SPI configuration register 2
   type SPI_CFG2_Register is record
      --  Master SS Idleness
      MSSI           : SPI_CFG2_MSSI_Field := 16#0#;
      --  master Inter-Data Idleness
      MIDI           : SPI_CFG2_MIDI_Field := 16#0#;
      --  unspecified
      Reserved_8_12  : HAL.UInt5 := 16#0#;
      --  RDY signal input/output management
      RDIOM          : Boolean := False;
      --  RDY signal input/output polarity
      RDIOP          : Boolean := False;
      --  swap functionality of MISO and MOSI pins
      IOSWP          : Boolean := False;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  SPI Communication Mode
      COMM           : SPI_CFG2_COMM_Field := 16#0#;
      --  serial protocol
      SP             : SPI_CFG2_SP_Field := 16#0#;
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
      Reserved_27_27 : HAL.Bit := 16#0#;
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

   for SPI_CFG2_Register use record
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

   --  SPI interrupt enable register
   type SPI_IER_Register is record
      --  RxP interrupt enable
      RxPIE          : Boolean := False;
      --  TxP interrupt enable
      TxPIE          : Boolean := False;
      --  DxP interrupt enabled
      DxPIE          : Boolean := False;
      --  EOT, SUSP and TxC interrupt enable
      EOTIE          : Boolean := False;
      --  TxTF interrupt enable
      TxTFIE         : Boolean := False;
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
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_IER_Register use record
      RxPIE          at 0 range 0 .. 0;
      TxPIE          at 0 range 1 .. 1;
      DxPIE          at 0 range 2 .. 2;
      EOTIE          at 0 range 3 .. 3;
      TxTFIE         at 0 range 4 .. 4;
      UDRIE          at 0 range 5 .. 5;
      OVRIE          at 0 range 6 .. 6;
      CRCEIE         at 0 range 7 .. 7;
      TIFREIE        at 0 range 8 .. 8;
      MODFIE         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SPI_SR_RxPLVL_Field is HAL.UInt2;
   subtype SPI_SR_CTSIZE_Field is HAL.UInt16;

   --  SPI status register
   type SPI_SR_Register is record
      --  Read-only. Rx-packet available
      RxP            : Boolean;
      --  Read-only. Tx-packet space available
      TxP            : Boolean;
      --  Read-only. duplex packet
      DxP            : Boolean;
      --  Read-only. end of transfer
      EOT            : Boolean;
      --  Read-only. transmission transfer filled
      TxTF           : Boolean;
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
      Reserved_10_10 : HAL.Bit;
      --  Read-only. suspension status
      SUSP           : Boolean;
      --  Read-only. TxFIFO transmission complete
      TxC            : Boolean;
      --  Read-only. RxFIFO packing level
      RxPLVL         : SPI_SR_RxPLVL_Field;
      --  Read-only. RxFIFO word not empty
      RxWNE          : Boolean;
      --  Read-only. number of data frames remaining in current TSIZE session
      CTSIZE         : SPI_SR_CTSIZE_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_SR_Register use record
      RxP            at 0 range 0 .. 0;
      TxP            at 0 range 1 .. 1;
      DxP            at 0 range 2 .. 2;
      EOT            at 0 range 3 .. 3;
      TxTF           at 0 range 4 .. 4;
      UDR            at 0 range 5 .. 5;
      OVR            at 0 range 6 .. 6;
      CRCE           at 0 range 7 .. 7;
      TIFRE          at 0 range 8 .. 8;
      MODF           at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      SUSP           at 0 range 11 .. 11;
      TxC            at 0 range 12 .. 12;
      RxPLVL         at 0 range 13 .. 14;
      RxWNE          at 0 range 15 .. 15;
      CTSIZE         at 0 range 16 .. 31;
   end record;

   --  SPI interrupt/status flags clear register
   type SPI_IFCR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Write-only. end of transfer flag clear
      EOTC           : Boolean := False;
      --  Write-only. transmission transfer filled flag clear
      TxTFC          : Boolean := False;
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
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Write-only. Suspend flag clear
      SUSPC          : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_IFCR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      EOTC           at 0 range 3 .. 3;
      TxTFC          at 0 range 4 .. 4;
      UDRC           at 0 range 5 .. 5;
      OVRC           at 0 range 6 .. 6;
      CRCEC          at 0 range 7 .. 7;
      TIFREC         at 0 range 8 .. 8;
      MODFC          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      SUSPC          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SPI_AUTOCR_TRIGSEL_Field is HAL.UInt4;

   --  SPI autonomous mode control register
   type SPI_AUTOCR_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  Trigger selection (refer Section: Description of SPI
      --  interconnections).
      TRIGSEL        : SPI_AUTOCR_TRIGSEL_Field := 16#0#;
      --  Trigger polarity
      TRIGPOL        : Boolean := False;
      --  Hardware control of CSTART triggering enable
      TRIGEN         : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_AUTOCR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      TRIGSEL        at 0 range 16 .. 19;
      TRIGPOL        at 0 range 20 .. 20;
      TRIGEN         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SPI address block description
   type SPI_Peripheral is record
      --  SPI control register 1
      SPI_CR1     : aliased SPI_CR1_Register;
      --  SPI control register 2
      SPI_CR2     : aliased SPI_CR2_Register;
      --  SPI configuration register 1
      SPI_CFG1    : aliased SPI_CFG1_Register;
      --  SPI configuration register 2
      SPI_CFG2    : aliased SPI_CFG2_Register;
      --  SPI interrupt enable register
      SPI_IER     : aliased SPI_IER_Register;
      --  SPI status register
      SPI_SR      : aliased SPI_SR_Register;
      --  SPI interrupt/status flags clear register
      SPI_IFCR    : aliased SPI_IFCR_Register;
      --  SPI autonomous mode control register
      SPI_AUTOCR  : aliased SPI_AUTOCR_Register;
      --  SPI transmit data register
      SPI_TxDR    : aliased HAL.UInt32;
      --  SPI receive data register
      SPI_RxDR    : aliased HAL.UInt32;
      --  SPI polynomial register
      SPI_CRCPOLY : aliased HAL.UInt32;
      --  SPI transmitter CRC register
      SPI_TxCRC   : aliased HAL.UInt32;
      --  SPI receiver CRC register
      SPI_RxCRC   : aliased HAL.UInt32;
      --  SPI underrun data register
      SPI_UDRDR   : aliased HAL.UInt32;
   end record
     with Volatile;

   for SPI_Peripheral use record
      SPI_CR1     at 16#0# range 0 .. 31;
      SPI_CR2     at 16#4# range 0 .. 31;
      SPI_CFG1    at 16#8# range 0 .. 31;
      SPI_CFG2    at 16#C# range 0 .. 31;
      SPI_IER     at 16#10# range 0 .. 31;
      SPI_SR      at 16#14# range 0 .. 31;
      SPI_IFCR    at 16#18# range 0 .. 31;
      SPI_AUTOCR  at 16#1C# range 0 .. 31;
      SPI_TxDR    at 16#20# range 0 .. 31;
      SPI_RxDR    at 16#30# range 0 .. 31;
      SPI_CRCPOLY at 16#40# range 0 .. 31;
      SPI_TxCRC   at 16#44# range 0 .. 31;
      SPI_RxCRC   at 16#48# range 0 .. 31;
      SPI_UDRDR   at 16#4C# range 0 .. 31;
   end record;

   --  SPI address block description
   SEC_SPI1_Periph : aliased SPI_Peripheral
     with Import, Address => SEC_SPI1_Base;

   --  SPI address block description
   SEC_SPI2_Periph : aliased SPI_Peripheral
     with Import, Address => SEC_SPI2_Base;

   --  SPI address block description
   SEC_SPI3_Periph : aliased SPI_Peripheral
     with Import, Address => SEC_SPI3_Base;

   --  SPI address block description
   SEC_SPI4_Periph : aliased SPI_Peripheral
     with Import, Address => SEC_SPI4_Base;

   --  SPI address block description
   SPI1_Periph : aliased SPI_Peripheral
     with Import, Address => SPI1_Base;

   --  SPI address block description
   SPI2_Periph : aliased SPI_Peripheral
     with Import, Address => SPI2_Base;

   --  SPI address block description
   SPI3_Periph : aliased SPI_Peripheral
     with Import, Address => SPI3_Base;

   --  SPI address block description
   SPI4_Periph : aliased SPI_Peripheral
     with Import, Address => SPI4_Base;

end STM32_SVD.SPI;
