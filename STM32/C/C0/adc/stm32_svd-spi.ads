--  This spec has been automatically generated from STM32C011.svd

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

   subtype SPI_CR1_BR_Field is HAL.UInt3;

   --  SPI control register 1
   type SPI_CR1_Register is record
      --  Clock phase Note: This bit should not be changed when communication
      --  is ongoing. This bit is not used in I2S mode and SPI TI mode except
      --  the case when CRC is applied at TI mode.
      CPHA     : Boolean := False;
      --  Clock polarity Note: This bit should not be changed when
      --  communication is ongoing. This bit is not used in I2S mode and SPI TI
      --  mode except the case when CRC is applied at TI mode.
      CPOL     : Boolean := False;
      --  Master selection Note: This bit should not be changed when
      --  communication is ongoing. This bit is not used in I2S mode.
      MSTR     : Boolean := False;
      --  Baud rate control Note: These bits should not be changed when
      --  communication is ongoing. These bits are not used in I2S mode.
      BR       : SPI_CR1_BR_Field := 16#0#;
      --  SPI enable Note: When disabling the SPI, follow the procedure
      --  described in SPI on page 1349. This bit is not used in I2S mode.
      SPE      : Boolean := False;
      --  Frame format Note: 1. This bit should not be changed when
      --  communication is ongoing. 2. This bit is not used in I2S mode and SPI
      --  TI mode.
      LSBFIRST : Boolean := False;
      --  Internal slave select This bit has an effect only when the SSM bit is
      --  set. The value of this bit is forced onto the NSS pin and the I/O
      --  value of the NSS pin is ignored. Note: This bit is not used in I2S
      --  mode and SPI TI mode.
      SSI      : Boolean := False;
      --  Software slave management When the SSM bit is set, the NSS pin input
      --  is replaced with the value from the SSI bit. Note: This bit is not
      --  used in I2S mode and SPI TI mode.
      SSM      : Boolean := False;
      --  Receive only mode enabled. This bit enables simplex communication
      --  using a single unidirectional line to receive data exclusively. Keep
      --  BIDIMODE bit clear when receive only mode is active.This bit is also
      --  useful in a multislave system in which this particular slave is not
      --  accessed, the output from the accessed slave is not corrupted. Note:
      --  This bit is not used in I2S mode.
      RXONLY   : Boolean := False;
      --  CRC length This bit is set and cleared by software to select the CRC
      --  length. Note: This bit should be written only when SPI is disabled
      --  (SPE = 0) for correct operation. This bit is not used in I2S mode.
      CRCL     : Boolean := False;
      --  Transmit CRC next Note: This bit has to be written as soon as the
      --  last data is written in the SPI_DR register. This bit is not used in
      --  I2S mode.
      CRCNEXT  : Boolean := False;
      --  Hardware CRC calculation enable Note: This bit should be written only
      --  when SPI is disabled (SPE = 0) for correct operation. This bit is not
      --  used in I2S mode.
      CRCEN    : Boolean := False;
      --  Output enable in bidirectional mode This bit combined with the
      --  BIDIMODE bit selects the direction of transfer in bidirectional mode.
      --  Note: In master mode, the MOSI pin is used and in slave mode, the
      --  MISO pin is used. This bit is not used in I2S mode.
      BIDIOE   : Boolean := False;
      --  Bidirectional data mode enable. This bit enables half-duplex
      --  communication using common single bidirectional data line. Keep
      --  RXONLY bit clear when bidirectional mode is active. Note: This bit is
      --  not used in I2S mode.
      BIDIMODE : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for SPI_CR1_Register use record
      CPHA     at 0 range 0 .. 0;
      CPOL     at 0 range 1 .. 1;
      MSTR     at 0 range 2 .. 2;
      BR       at 0 range 3 .. 5;
      SPE      at 0 range 6 .. 6;
      LSBFIRST at 0 range 7 .. 7;
      SSI      at 0 range 8 .. 8;
      SSM      at 0 range 9 .. 9;
      RXONLY   at 0 range 10 .. 10;
      CRCL     at 0 range 11 .. 11;
      CRCNEXT  at 0 range 12 .. 12;
      CRCEN    at 0 range 13 .. 13;
      BIDIOE   at 0 range 14 .. 14;
      BIDIMODE at 0 range 15 .. 15;
   end record;

   subtype SPI_CR2_DS_Field is HAL.UInt4;

   --  SPI control register 2
   type SPI_CR2_Register is record
      --  Rx buffer DMA enable When this bit is set, a DMA request is generated
      --  whenever the RXNE flag is set.
      RXDMAEN        : Boolean := False;
      --  Tx buffer DMA enable When this bit is set, a DMA request is generated
      --  whenever the TXE flag is set.
      TXDMAEN        : Boolean := False;
      --  SS output enable Note: This bit is not used in I2S mode and SPI TI
      --  mode.
      SSOE           : Boolean := False;
      --  NSS pulse management This bit is used in master mode only. it allows
      --  the SPI to generate an NSS pulse between two consecutive data when
      --  doing continuous transfers. In the case of a single data transfer, it
      --  forces the NSS pin high level after the transfer. It has no meaning
      --  if CPHA = 1, or FRF = 1. Note: 1. This bit must be written only when
      --  the SPI is disabled (SPE=0). 2. This bit is not used in I2S mode and
      --  SPI TI mode.
      NSSP           : Boolean := False;
      --  Frame format 1 SPI TI mode Note: This bit must be written only when
      --  the SPI is disabled (SPE=0). This bit is not used in I2S mode.
      FRF            : Boolean := False;
      --  Error interrupt enable This bit controls the generation of an
      --  interrupt when an error condition occurs (CRCERR, OVR, MODF in SPI
      --  mode, FRE at TI mode and UDR, OVR, and FRE in I2S mode).
      ERRIE          : Boolean := False;
      --  RX buffer not empty interrupt enable
      RXNEIE         : Boolean := False;
      --  Tx buffer empty interrupt enable
      TXEIE          : Boolean := False;
      --  Data size These bits configure the data length for SPI transfers. If
      --  software attempts to write one of the Not used values, they are
      --  forced to the value 0111 (8-bit) Note: These bits are not used in I2S
      --  mode.
      DS             : SPI_CR2_DS_Field := 16#7#;
      --  FIFO reception threshold This bit is used to set the threshold of the
      --  RXFIFO that triggers an RXNE event Note: This bit is not used in I2S
      --  mode.
      FRXTH          : Boolean := False;
      --  Last DMA transfer for reception This bit is used in data packing
      --  mode, to define if the total number of data to receive by DMA is odd
      --  or even. It has significance only if the RXDMAEN bit in the SPI_CR2
      --  register is set and if packing mode is used (data length =< 8-bit and
      --  write access to SPI_DR is 16-bit wide). It has to be written when the
      --  SPI is disabled (SPE = 0 in the SPI_CR1 register). Note: Refer to if
      --  the CRCEN bit is set. This bit is not used in IS mode.
      LDMA_RX        : Boolean := False;
      --  Last DMA transfer for transmission This bit is used in data packing
      --  mode, to define if the total number of data to transmit by DMA is odd
      --  or even. It has significance only if the TXDMAEN bit in the SPI_CR2
      --  register is set and if packing mode is used (data length =< 8-bit and
      --  write access to SPI_DR is 16-bit wide). It has to be written when the
      --  SPI is disabled (SPE = 0 in the SPI_CR1 register). Note: Refer to if
      --  the CRCEN bit is set. This bit is not used in ImS mode.
      LDMA_TX        : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for SPI_CR2_Register use record
      RXDMAEN        at 0 range 0 .. 0;
      TXDMAEN        at 0 range 1 .. 1;
      SSOE           at 0 range 2 .. 2;
      NSSP           at 0 range 3 .. 3;
      FRF            at 0 range 4 .. 4;
      ERRIE          at 0 range 5 .. 5;
      RXNEIE         at 0 range 6 .. 6;
      TXEIE          at 0 range 7 .. 7;
      DS             at 0 range 8 .. 11;
      FRXTH          at 0 range 12 .. 12;
      LDMA_RX        at 0 range 13 .. 13;
      LDMA_TX        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype SPI_SR_FRLVL_Field is HAL.UInt2;
   subtype SPI_SR_FTLVL_Field is HAL.UInt2;

   --  SPI status register
   type SPI_SR_Register is record
      --  Read-only. Receive buffer not empty
      RXNE           : Boolean := False;
      --  Read-only. Transmit buffer empty
      TXE            : Boolean := True;
      --  Read-only. Channel side Note: This bit is not used in SPI mode. It
      --  has no significance in PCM mode.
      CHSIDE         : Boolean := False;
      --  Read-only. Underrun flag This flag is set by hardware and reset by a
      --  software sequence. Refer to page 1385 for the software sequence.
      --  Note: This bit is not used in SPI mode.
      UDR            : Boolean := False;
      --  CRC error flag Note: This flag is set by hardware and cleared by
      --  software writing 0. This bit is not used in I2S mode.
      CRCERR         : Boolean := False;
      --  Read-only. Mode fault This flag is set by hardware and reset by a
      --  software sequence. Refer to (MODF) on page 1359 for the software
      --  sequence. Note: This bit is not used in I2S mode.
      MODF           : Boolean := False;
      --  Read-only. Overrun flag This flag is set by hardware and reset by a
      --  software sequence. Refer to page 1385 for the software sequence.
      OVR            : Boolean := False;
      --  Read-only. Busy flag This flag is set and cleared by hardware. Note:
      --  The BSY flag must be used with caution: refer to and .
      BSY            : Boolean := False;
      --  Read-only. Frame format error This flag is used for SPI in TI slave
      --  mode and I2S slave mode. Refer to error flags and . This flag is set
      --  by hardware and reset when SPI_SR is read by software.
      FRE            : Boolean := False;
      --  Read-only. FIFO reception level These bits are set and cleared by
      --  hardware. Note: These bits are not used in ImS mode and in SPI
      --  receive-only mode while CRC calculation is enabled.
      FRLVL          : SPI_SR_FRLVL_Field := 16#0#;
      --  Read-only. FIFO transmission level These bits are set and cleared by
      --  hardware. Note: This bit is not used in I2S mode.
      FTLVL          : SPI_SR_FTLVL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for SPI_SR_Register use record
      RXNE           at 0 range 0 .. 0;
      TXE            at 0 range 1 .. 1;
      CHSIDE         at 0 range 2 .. 2;
      UDR            at 0 range 3 .. 3;
      CRCERR         at 0 range 4 .. 4;
      MODF           at 0 range 5 .. 5;
      OVR            at 0 range 6 .. 6;
      BSY            at 0 range 7 .. 7;
      FRE            at 0 range 8 .. 8;
      FRLVL          at 0 range 9 .. 10;
      FTLVL          at 0 range 11 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype SPI_I2SCFGR_DATLEN_Field is HAL.UInt2;
   subtype SPI_I2SCFGR_I2SSTD_Field is HAL.UInt2;
   subtype SPI_I2SCFGR_I2SCFG_Field is HAL.UInt2;

   --  SPIx_I2S configuration register
   type SPI_I2SCFGR_Register is record
      --  Channel length (number of bits per audio channel) The bit write
      --  operation has a meaning only if DATLEN = 00 otherwise the channel
      --  length is fixed to 32-bit by hardware whatever the value filled in.
      --  Note: For correct operation, this bit should be configured when the
      --  I2S is disabled. It is not used in SPI mode.
      CHLEN          : Boolean := False;
      --  Data length to be transferred Note: For correct operation, these bits
      --  should be configured when the I2S is disabled. They are not used in
      --  SPI mode.
      DATLEN         : SPI_I2SCFGR_DATLEN_Field := 16#0#;
      --  Inactive state clock polarity Note: For correct operation, this bit
      --  should be configured when the I2S is disabled. It is not used in SPI
      --  mode. The bit CKPOL does not affect the CK edge sensitivity used to
      --  receive or transmit the SD and WS signals.
      CKPOL          : Boolean := False;
      --  I2S standard selection For more details on I2S standards, refer to
      --  Note: For correct operation, these bits should be configured when the
      --  I2S is disabled. They are not used in SPI mode.
      I2SSTD         : SPI_I2SCFGR_I2SSTD_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  PCM frame synchronization Note: This bit has a meaning only if I2SSTD
      --  = 11 (PCM standard is used). It is not used in SPI mode.
      PCMSYNC        : Boolean := False;
      --  I2S configuration mode Note: These bits should be configured when the
      --  I2S is disabled. They are not used in SPI mode.
      I2SCFG         : SPI_I2SCFGR_I2SCFG_Field := 16#0#;
      --  I2S enable Note: This bit is not used in SPI mode.
      I2SE           : Boolean := False;
      --  I2S mode selection Note: This bit should be configured when the SPI
      --  is disabled.
      I2SMOD         : Boolean := False;
      --  Asynchronous start enable. When the I2S is enabled in slave mode, the
      --  hardware starts the transfer when the I2S clock is received and an
      --  appropriate transition is detected on the WS signal. When the I2S is
      --  enabled in slave mode, the hardware starts the transfer when the I2S
      --  clock is received and the appropriate level is detected on the WS
      --  signal. Note: The appropriate transition is a falling edge on WS
      --  signal when I2S Philips Standard is used, or a rising edge for other
      --  standards. The appropriate level is a low level on WS signal when I2S
      --  Philips Standard is used, or a high level for other standards. Please
      --  refer to for additional information.
      ASTRTEN        : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for SPI_I2SCFGR_Register use record
      CHLEN          at 0 range 0 .. 0;
      DATLEN         at 0 range 1 .. 2;
      CKPOL          at 0 range 3 .. 3;
      I2SSTD         at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      PCMSYNC        at 0 range 7 .. 7;
      I2SCFG         at 0 range 8 .. 9;
      I2SE           at 0 range 10 .. 10;
      I2SMOD         at 0 range 11 .. 11;
      ASTRTEN        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype SPI_I2SPR_I2SDIV_Field is HAL.UInt8;

   --  SPI_I2S prescaler register
   type SPI_I2SPR_Register is record
      --  I2S linear prescaler I2SDIV [7:0] = 0 or I2SDIV [7:0] = 1 are
      --  forbidden values. Refer to . Note: These bits should be configured
      --  when the I2S is disabled. They are used only when the I2S is in
      --  master mode. They are not used in SPI mode.
      I2SDIV         : SPI_I2SPR_I2SDIV_Field := 16#2#;
      --  Odd factor for the prescaler Refer to . Note: This bit should be
      --  configured when the I2S is disabled. It is used only when the I2S is
      --  in master mode. It is not used in SPI mode.
      ODD            : Boolean := False;
      --  Master clock output enable Note: This bit should be configured when
      --  the I2S is disabled. It is used only when the I2S is in master mode.
      --  It is not used in SPI mode.
      MCKOE          : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for SPI_I2SPR_Register use record
      I2SDIV         at 0 range 0 .. 7;
      ODD            at 0 range 8 .. 8;
      MCKOE          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial peripheral interface
   type SPI1_Peripheral is record
      --  SPI control register 1
      SPI_CR1     : aliased SPI_CR1_Register;
      --  SPI control register 2
      SPI_CR2     : aliased SPI_CR2_Register;
      --  SPI status register
      SPI_SR      : aliased SPI_SR_Register;
      --  SPI data register
      SPI_DR      : aliased HAL.UInt16;
      --  SPI CRC polynomial register
      SPI_CRCPR   : aliased HAL.UInt16;
      --  SPI Rx CRC register
      SPI_RXCRCR  : aliased HAL.UInt16;
      --  SPI Tx CRC register
      SPI_TXCRCR  : aliased HAL.UInt16;
      --  SPIx_I2S configuration register
      SPI_I2SCFGR : aliased SPI_I2SCFGR_Register;
      --  SPI_I2S prescaler register
      SPI_I2SPR   : aliased SPI_I2SPR_Register;
   end record
     with Volatile;

   for SPI1_Peripheral use record
      SPI_CR1     at 16#0# range 0 .. 15;
      SPI_CR2     at 16#4# range 0 .. 15;
      SPI_SR      at 16#8# range 0 .. 15;
      SPI_DR      at 16#C# range 0 .. 15;
      SPI_CRCPR   at 16#10# range 0 .. 15;
      SPI_RXCRCR  at 16#14# range 0 .. 15;
      SPI_TXCRCR  at 16#18# range 0 .. 15;
      SPI_I2SCFGR at 16#1C# range 0 .. 15;
      SPI_I2SPR   at 16#20# range 0 .. 15;
   end record;

   --  Serial peripheral interface
   SPI1_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI1_Base;

end STM32_SVD.SPI;
