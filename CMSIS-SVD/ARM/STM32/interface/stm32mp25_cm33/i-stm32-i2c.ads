--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.I2C is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype I2C_CR1_DNF_Field is Interfaces.Bit_Types.UInt4;

   --  I2C control register 1
   type I2C_CR1_Register is record
      --  Peripheral enable Note: When PE = 0, the I2C SCL and SDA lines are
      --  released. Internal state machines and status bits are put back to
      --  their reset value. When cleared, PE must be kept low for at least
      --  three APB clock cycles.
      PE             : Boolean := False;
      --  TX interrupt enable
      TXIE           : Boolean := False;
      --  RX interrupt enable
      RXIE           : Boolean := False;
      --  Address match interrupt enable (slave only)
      ADDRIE         : Boolean := False;
      --  Not acknowledge received interrupt enable
      NACKIE         : Boolean := False;
      --  Stop detection interrupt enable
      STOPIE         : Boolean := False;
      --  Transfer complete interrupt enable Note: Any of these events
      --  generates an interrupt: Note: Transfer complete (TC) Note: Transfer
      --  complete reload (TCR)
      TCIE           : Boolean := False;
      --  Error interrupts enable Note: Any of these errors generates an
      --  interrupt: Note: Arbitration loss (ARLO) Note: Bus error detection
      --  (BERR) Note: Overrun/underrun (OVR) Note: Timeout detection (TIMEOUT)
      --  Note: PEC error detection (PECERR) Note: Alert pin event detection
      --  (ALERT)
      ERRIE          : Boolean := False;
      --  Digital noise filter These bits are used to configure the digital
      --  noise filter on SDA and SCL input. The digital filter, filters spikes
      --  with a length of up to DNF[3:0] * tsubI2CCLK/sub ... Note: If the
      --  analog filter is enabled, the digital filter is added to it. This
      --  filter can be programmed only when the I2C is disabled (PE = 0).
      DNF            : I2C_CR1_DNF_Field := 16#0#;
      --  Analog noise filter OFF Note: This bit can be programmed only when
      --  the I2C is disabled (PE = 0).
      ANFOFF         : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  DMA transmission requests enable
      TXDMAEN        : Boolean := False;
      --  DMA reception requests enable
      RXDMAEN        : Boolean := False;
      --  Slave byte control This bit is used to enable hardware byte control
      --  in slave mode.
      SBC            : Boolean := False;
      --  Clock stretching disable This bit is used to disable clock stretching
      --  in slave mode. It must be kept cleared in master mode. Note: This bit
      --  can be programmed only when the I2C is disabled (PE = 0).
      NOSTRETCH      : Boolean := False;
      --  Wake-up from Stop mode enable Note: If the wake-up from Stop mode
      --  feature is not supported, this bit is reserved and forced by hardware
      --  to 0. Refer to Section75.3. Note: WUPEN can be set only when DNF =
      --  0000.
      WUPEN          : Boolean := False;
      --  General call enable
      GCEN           : Boolean := False;
      --  SMBus host address enable Note: If the SMBus feature is not
      --  supported, this bit is reserved and forced by hardware to 0. Refer to
      --  Section75.3.
      SMBHEN         : Boolean := False;
      --  SMBus device default address enable Note: If the SMBus feature is not
      --  supported, this bit is reserved and forced by hardware to 0. Refer to
      --  Section75.3.
      SMBDEN         : Boolean := False;
      --  SMBus alert enable Note: When ALERTEN = 0, the SMBA pin can be used
      --  as a standard GPIO. Note: If the SMBus feature is not supported, this
      --  bit is reserved and forced by hardware to 0. Refer to Section75.3.
      ALERTEN        : Boolean := False;
      --  PEC enable Note: If the SMBus feature is not supported, this bit is
      --  reserved and forced by hardware to 0. Refer to Section75.3.
      PECEN          : Boolean := False;
      --  Fast-mode Plus 20 mA drive enable
      FMP            : Boolean := False;
      --  unspecified
      Reserved_25_29 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Address match flag (ADDR) automatic clear
      ADDRACLR       : Boolean := False;
      --  STOP detection flag (STOPF) automatic clear
      STOPFACLR      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_CR1_Register use record
      PE             at 0 range 0 .. 0;
      TXIE           at 0 range 1 .. 1;
      RXIE           at 0 range 2 .. 2;
      ADDRIE         at 0 range 3 .. 3;
      NACKIE         at 0 range 4 .. 4;
      STOPIE         at 0 range 5 .. 5;
      TCIE           at 0 range 6 .. 6;
      ERRIE          at 0 range 7 .. 7;
      DNF            at 0 range 8 .. 11;
      ANFOFF         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TXDMAEN        at 0 range 14 .. 14;
      RXDMAEN        at 0 range 15 .. 15;
      SBC            at 0 range 16 .. 16;
      NOSTRETCH      at 0 range 17 .. 17;
      WUPEN          at 0 range 18 .. 18;
      GCEN           at 0 range 19 .. 19;
      SMBHEN         at 0 range 20 .. 20;
      SMBDEN         at 0 range 21 .. 21;
      ALERTEN        at 0 range 22 .. 22;
      PECEN          at 0 range 23 .. 23;
      FMP            at 0 range 24 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      ADDRACLR       at 0 range 30 .. 30;
      STOPFACLR      at 0 range 31 .. 31;
   end record;

   subtype I2C_CR2_SADD_Field is Interfaces.Bit_Types.UInt10;
   subtype I2C_CR2_NBYTES_Field is Interfaces.Bit_Types.Byte;

   --  I2C control register 2
   type I2C_CR2_Register is record
      --  Slave address (master mode) In 7-bit addressing mode (ADD10 = 0):
      --  SADD[7:1] must be written with the 7-bit slave address to be sent.
      --  Bits SADD[9], SADD[8] and SADD[0] are don't care. In 10-bit
      --  addressing mode (ADD10 = 1): SADD[9:0] must be written with the
      --  10-bit slave address to be sent. Note: Changing these bits when the
      --  START bit is set is not allowed.
      SADD           : I2C_CR2_SADD_Field := 16#0#;
      --  Transfer direction (master mode) Note: Changing this bit when the
      --  START bit is set is not allowed.
      RD_WRN         : Boolean := False;
      --  10-bit addressing mode (master mode) Note: Changing this bit when the
      --  START bit is set is not allowed.
      ADD10          : Boolean := False;
      --  10-bit address header only read direction (master receiver mode)
      --  Note: Changing this bit when the START bit is set is not allowed.
      HEAD10R        : Boolean := False;
      --  Start generation This bit is set by software, and cleared by hardware
      --  after the Start followed by the address sequence is sent, by an
      --  arbitration loss, by an address matched in slave mode, by a timeout
      --  error detection, or when PE = 0. If the I2C is already in master mode
      --  with AUTOEND = 0, setting this bit generates a Repeated start
      --  condition when RELOAD = 0, after the end of the NBYTES transfer.
      --  Otherwise, setting this bit generates a START condition once the bus
      --  is free. Note: Writing 0 to this bit has no effect. Note: The START
      --  bit can be set even if the bus is BUSY or I2C is in slave mode. Note:
      --  This bit has no effect when RELOAD is set.
      START          : Boolean := False;
      --  Stop generation (master mode) The bit is set by software, cleared by
      --  hardware when a STOP condition is detected, or when PE = 0. In master
      --  mode: Note: Writing 0 to this bit has no effect.
      STOP           : Boolean := False;
      --  NACK generation (slave mode) The bit is set by software, cleared by
      --  hardware when the NACK is sent, or when a STOP condition or an
      --  Address matched is received, or when PE = 0. Note: Writing 0 to this
      --  bit has no effect. Note: This bit is used only in slave mode: in
      --  master receiver mode, NACK is automatically generated after last byte
      --  preceding STOP or RESTART condition, whatever the NACK bit value.
      --  Note: When an overrun occurs in slave receiver NOSTRETCH mode, a NACK
      --  is automatically generated, whatever the NACK bit value. Note: When
      --  hardware PEC checking is enabled (PECBYTE = 1), the PEC acknowledge
      --  value does not depend on the NACK value.
      NACK           : Boolean := False;
      --  Number of bytes The number of bytes to be transmitted/received is
      --  programmed there. This field is don’t care in slave mode with SBC =
      --  0. Note: Changing these bits when the START bit is set is not
      --  allowed.
      NBYTES         : I2C_CR2_NBYTES_Field := 16#0#;
      --  NBYTES reload mode This bit is set and cleared by software.
      RELOAD         : Boolean := False;
      --  Automatic end mode (master mode) This bit is set and cleared by
      --  software. Note: This bit has no effect in slave mode or when the
      --  RELOAD bit is set.
      AUTOEND        : Boolean := False;
      --  Packet error checking byte This bit is set by software, and cleared
      --  by hardware when the PEC is transferred, or when a STOP condition or
      --  an Address matched is received, also when PE = 0. Note: Writing 0 to
      --  this bit has no effect. Note: This bit has no effect when RELOAD is
      --  set, and in slave mode when SBC = 0. Note: If the SMBus feature is
      --  not supported, this bit is reserved and forced by hardware to 0.
      --  Refer to Section75.3.
      PECBYTE        : Boolean := False;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_CR2_Register use record
      SADD           at 0 range 0 .. 9;
      RD_WRN         at 0 range 10 .. 10;
      ADD10          at 0 range 11 .. 11;
      HEAD10R        at 0 range 12 .. 12;
      START          at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      NACK           at 0 range 15 .. 15;
      NBYTES         at 0 range 16 .. 23;
      RELOAD         at 0 range 24 .. 24;
      AUTOEND        at 0 range 25 .. 25;
      PECBYTE        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype I2C_OAR1_OA1_Field is Interfaces.Bit_Types.UInt10;

   --  I2C own address 1 register
   type I2C_OAR1_Register is record
      --  Interface own slave address 7-bit addressing mode: OA1[7:1] contains
      --  the 7-bit own slave address. Bits OA1[9], OA1[8] and OA1[0] are don't
      --  care. 10-bit addressing mode: OA1[9:0] contains the 10-bit own slave
      --  address. Note: These bits can be written only when OA1EN = 0.
      OA1            : I2C_OAR1_OA1_Field := 16#0#;
      --  Own address 1 10-bit mode Note: This bit can be written only when
      --  OA1EN = 0.
      OA1MODE        : Boolean := False;
      --  unspecified
      Reserved_11_14 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Own address 1 enable
      OA1EN          : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_OAR1_Register use record
      OA1            at 0 range 0 .. 9;
      OA1MODE        at 0 range 10 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      OA1EN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I2C_OAR2_OA2_Field is Interfaces.Bit_Types.UInt7;
   subtype I2C_OAR2_OA2MSK_Field is Interfaces.Bit_Types.UInt3;

   --  I2C own address 2 register
   type I2C_OAR2_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Interface address 7-bit addressing mode: 7-bit address Note: These
      --  bits can be written only when OA2EN = 0.
      OA2            : I2C_OAR2_OA2_Field := 16#0#;
      --  Own address 2 masks Note: These bits can be written only when OA2EN =
      --  0. Note: As soon as OA2MSK different 0, the reserved I2C addresses
      --  (0b0000xxx and 0b1111xxx) are not acknowledged, even if the
      --  comparison matches.
      OA2MSK         : I2C_OAR2_OA2MSK_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Own address 2 enable
      OA2EN          : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_OAR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      OA2            at 0 range 1 .. 7;
      OA2MSK         at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      OA2EN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I2C_TIMINGR_SCLL_Field is Interfaces.Bit_Types.Byte;
   subtype I2C_TIMINGR_SCLH_Field is Interfaces.Bit_Types.Byte;
   subtype I2C_TIMINGR_SDADEL_Field is Interfaces.Bit_Types.UInt4;
   subtype I2C_TIMINGR_SCLDEL_Field is Interfaces.Bit_Types.UInt4;
   subtype I2C_TIMINGR_PRESC_Field is Interfaces.Bit_Types.UInt4;

   --  I2C timing register
   type I2C_TIMINGR_Register is record
      --  SCL low period (master mode) This field is used to generate the SCL
      --  low period in master mode. tsubSCLL /sub= (SCLL + 1) x tsubPRESC/sub
      --  Note: SCLL is also used to generate tsubBUF /suband tsubSU:STA
      --  /subtimings.
      SCLL           : I2C_TIMINGR_SCLL_Field := 16#0#;
      --  SCL high period (master mode) This field is used to generate the SCL
      --  high period in master mode. tsubSCLH /sub= (SCLH + 1) x tsubPRESC/sub
      --  Note: SCLH is also used to generate tsubSU:STO /suband tsubHD:STA
      --  /subtiming.
      SCLH           : I2C_TIMINGR_SCLH_Field := 16#0#;
      --  Data hold time This field is used to generate the delay tsubSDADEL
      --  /subbetween SCL falling edge and SDA edge. In master and in slave
      --  modes with NOSTRETCH = 0, the SCL line is stretched low during
      --  tsubSDADEL/sub. tsubSDADEL/sub= SDADEL x tsubPRESC/sub Note: SDADEL
      --  is used to generate tsubHD:DAT /subtiming.
      SDADEL         : I2C_TIMINGR_SDADEL_Field := 16#0#;
      --  Data setup time This field is used to generate a delay tsubSCLDEL/sub
      --  = (SCLDEL + 1) x tsubPRESC/sub between SDA edge and SCL rising edge.
      --  In master and in slave modes with NOSTRETCH = 0, the SCL line is
      --  stretched low during tsubSCLDEL/sub. Note: tsubSCLDEL/sub is used to
      --  generate tsubSU:DAT /subtiming.
      SCLDEL         : I2C_TIMINGR_SCLDEL_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Timing prescaler This field is used to prescale i2c_ker_ck to
      --  generate the clock period tsubPRESC /subused for data setup and hold
      --  counters (refer to I2C timings), and for SCL high and low level
      --  counters (refer to I2C master initialization). tsubPRESC /sub= (PRESC
      --  + 1) x tsubI2CCLK/sub
      PRESC          : I2C_TIMINGR_PRESC_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_TIMINGR_Register use record
      SCLL           at 0 range 0 .. 7;
      SCLH           at 0 range 8 .. 15;
      SDADEL         at 0 range 16 .. 19;
      SCLDEL         at 0 range 20 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      PRESC          at 0 range 28 .. 31;
   end record;

   subtype I2C_TIMEOUTR_TIMEOUTA_Field is Interfaces.Bit_Types.UInt12;
   subtype I2C_TIMEOUTR_TIMEOUTB_Field is Interfaces.Bit_Types.UInt12;

   --  I2C timeout register
   type I2C_TIMEOUTR_Register is record
      --  Bus timeout A This field is used to configure: The SCL low timeout
      --  condition tsubTIMEOUT/sub when TIDLE = 0 tsubTIMEOUT/sub= (TIMEOUTA +
      --  1) x 2048 x tsubI2CCLK/sub The bus idle condition (both SCL and SDA
      --  high) when TIDLE = 1 tsubIDLE/sub= (TIMEOUTA + 1) x 4 x
      --  tsubI2CCLK/sub Note: These bits can be written only when TIMOUTEN =
      --  0.
      TIMEOUTA       : I2C_TIMEOUTR_TIMEOUTA_Field := 16#0#;
      --  Idle clock timeout detection Note: This bit can be written only when
      --  TIMOUTEN = 0.
      TIDLE          : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Clock timeout enable
      TIMOUTEN       : Boolean := False;
      --  Bus timeout B This field is used to configure the cumulative clock
      --  extension timeout: Master mode: the master cumulative clock low
      --  extend time (tsubLOW:MEXT/sub) is detected Slave mode: the slave
      --  cumulative clock low extend time (tsubLOW:SEXT/sub) is detected
      --  tsubLOW:EXT /sub= (TIMEOUTB + TIDLE = 01) x 2048 x tsubI2CCLK/sub
      --  Note: These bits can be written only when TEXTEN = 0.
      TIMEOUTB       : I2C_TIMEOUTR_TIMEOUTB_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Extended clock timeout enable
      TEXTEN         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_TIMEOUTR_Register use record
      TIMEOUTA       at 0 range 0 .. 11;
      TIDLE          at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      TIMOUTEN       at 0 range 15 .. 15;
      TIMEOUTB       at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      TEXTEN         at 0 range 31 .. 31;
   end record;

   subtype I2C_ISR_ADDCODE_Field is Interfaces.Bit_Types.UInt7;

   --  I2C interrupt and status register
   type I2C_ISR_Register is record
      --  Transmit data register empty (transmitters) This bit is set by
      --  hardware when the I2C_TXDR register is empty. It is cleared when the
      --  next data to be sent is written in the I2C_TXDR register. This bit
      --  can be written to 1 by software in order to flush the transmit data
      --  register I2C_TXDR. Note: This bit is set by hardware when PE = 0.
      TXE            : Boolean := True;
      --  Transmit interrupt status (transmitters) This bit is set by hardware
      --  when the I2C_TXDR register is empty and the data to be transmitted
      --  must be written in the I2C_TXDR register. It is cleared when the next
      --  data to be sent is written in the I2C_TXDR register. This bit can be
      --  written to 1 by software only when NOSTRETCH = 1, to generate a TXIS
      --  event (interrupt if TXIE = 1 or DMA request if TXDMAEN = 1). Note:
      --  This bit is cleared by hardware when PE = 0.
      TXIS           : Boolean := False;
      --  Read-only. Receive data register not empty (receivers) This bit is
      --  set by hardware when the received data is copied into the I2C_RXDR
      --  register, and is ready to be read. It is cleared when I2C_RXDR is
      --  read. Note: This bit is cleared by hardware when PE = 0.
      RXNE           : Boolean := False;
      --  Read-only. Address matched (slave mode) This bit is set by hardware
      --  as soon as the received slave address matched with one of the enabled
      --  slave addresses. It is cleared by software by setting ADDRCF bit.
      --  Note: This bit is cleared by hardware when PE = 0.
      ADDR           : Boolean := False;
      --  Read-only. Not acknowledge received flag This flag is set by hardware
      --  when a NACK is received after a byte transmission. It is cleared by
      --  software by setting the NACKCF bit. Note: This bit is cleared by
      --  hardware when PE = 0.
      NACKF          : Boolean := False;
      --  Read-only. Stop detection flag This flag is set by hardware when a
      --  STOP condition is detected on the bus and the peripheral is involved
      --  in this transfer: as a master, provided that the STOP condition is
      --  generated by the peripheral. as a slave, provided that the peripheral
      --  has been addressed previously during this transfer. It is cleared by
      --  software by setting the STOPCF bit. Note: This bit is cleared by
      --  hardware when PE = 0.
      STOPF          : Boolean := False;
      --  Read-only. Transfer complete (master mode) This flag is set by
      --  hardware when RELOAD = 0, AUTOEND = 0 and NBYTES data have been
      --  transferred. It is cleared by software when START bit or STOP bit is
      --  set. Note: This bit is cleared by hardware when PE = 0.
      TC             : Boolean := False;
      --  Read-only. Transfer complete reload This flag is set by hardware when
      --  RELOAD = 1 and NBYTES data have been transferred. It is cleared by
      --  software when NBYTES is written to a non-zero value. Note: This bit
      --  is cleared by hardware when PE = 0. Note: This flag is only for
      --  master mode, or for slave mode when the SBC bit is set.
      TCR            : Boolean := False;
      --  Read-only. Bus error This flag is set by hardware when a misplaced
      --  Start or STOP condition is detected whereas the peripheral is
      --  involved in the transfer. The flag is not set during the address
      --  phase in slave mode. It is cleared by software by setting the BERRCF
      --  bit. Note: This bit is cleared by hardware when PE = 0.
      BERR           : Boolean := False;
      --  Read-only. Arbitration lost This flag is set by hardware in case of
      --  arbitration loss. It is cleared by software by setting the ARLOCF
      --  bit. Note: This bit is cleared by hardware when PE = 0.
      ARLO           : Boolean := False;
      --  Read-only. Overrun/underrun (slave mode) This flag is set by hardware
      --  in slave mode with NOSTRETCH = 1, when an overrun/underrun error
      --  occurs. It is cleared by software by setting the OVRCF bit. Note:
      --  This bit is cleared by hardware when PE = 0.
      OVR            : Boolean := False;
      --  Read-only. PEC error in reception This flag is set by hardware when
      --  the received PEC does not match with the PEC register content. A NACK
      --  is automatically sent after the wrong PEC reception. It is cleared by
      --  software by setting the PECCF bit. Note: This bit is cleared by
      --  hardware when PE = 0. Note: If the SMBus feature is not supported,
      --  this bit is reserved and forced by hardware to 0. Refer to
      --  Section75.3.
      PECERR         : Boolean := False;
      --  Read-only. Timeout or tsubLOW/sub detection flag This flag is set by
      --  hardware when a timeout or extended clock timeout occurred. It is
      --  cleared by software by setting the TIMEOUTCF bit. Note: This bit is
      --  cleared by hardware when PE = 0. Note: If the SMBus feature is not
      --  supported, this bit is reserved and forced by hardware to 0. Refer to
      --  Section75.3.
      TIMEOUT        : Boolean := False;
      --  Read-only. SMBus alert This flag is set by hardware when SMBHEN = 1
      --  (SMBus host configuration), ALERTEN = 1 and an SMBALERT event
      --  (falling edge) is detected on SMBA pin. It is cleared by software by
      --  setting the ALERTCF bit. Note: This bit is cleared by hardware when
      --  PE = 0. Note: If the SMBus feature is not supported, this bit is
      --  reserved and forced by hardware to 0. Refer to Section75.3.
      ALERT          : Boolean := False;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Bus busy This flag indicates that a communication is in
      --  progress on the bus. It is set by hardware when a START condition is
      --  detected, and cleared by hardware when a STOP condition is detected,
      --  or when PE = 0.
      BUSY           : Boolean := False;
      --  Read-only. Transfer direction (slave mode) This flag is updated when
      --  an address match event occurs (ADDR = 1).
      DIR            : Boolean := False;
      --  Read-only. Address match code (slave mode) These bits are updated
      --  with the received address when an address match event occurs (ADDR =
      --  1). In the case of a 10-bit address, ADDCODE provides the 10-bit
      --  header followed by the two MSBs of the address.
      ADDCODE        : I2C_ISR_ADDCODE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_ISR_Register use record
      TXE            at 0 range 0 .. 0;
      TXIS           at 0 range 1 .. 1;
      RXNE           at 0 range 2 .. 2;
      ADDR           at 0 range 3 .. 3;
      NACKF          at 0 range 4 .. 4;
      STOPF          at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      TCR            at 0 range 7 .. 7;
      BERR           at 0 range 8 .. 8;
      ARLO           at 0 range 9 .. 9;
      OVR            at 0 range 10 .. 10;
      PECERR         at 0 range 11 .. 11;
      TIMEOUT        at 0 range 12 .. 12;
      ALERT          at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      BUSY           at 0 range 15 .. 15;
      DIR            at 0 range 16 .. 16;
      ADDCODE        at 0 range 17 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  I2C interrupt clear register
   type I2C_ICR_Register is record
      --  unspecified
      Reserved_0_2   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Address matched flag clear Writing 1 to this bit clears
      --  the ADDR flag in the I2C_ISR register. Writing 1 to this bit also
      --  clears the START bit in the I2C_CR2 register.
      ADDRCF         : Boolean := False;
      --  Write-only. Not acknowledge flag clear Writing 1 to this bit clears
      --  the NACKF flag in I2C_ISR register.
      NACKCF         : Boolean := False;
      --  Write-only. STOP detection flag clear Writing 1 to this bit clears
      --  the STOPF flag in the I2C_ISR register.
      STOPCF         : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Bus error flag clear Writing 1 to this bit clears the
      --  BERRF flag in the I2C_ISR register.
      BERRCF         : Boolean := False;
      --  Write-only. Arbitration lost flag clear Writing 1 to this bit clears
      --  the ARLO flag in the I2C_ISR register.
      ARLOCF         : Boolean := False;
      --  Write-only. Overrun/underrun flag clear Writing 1 to this bit clears
      --  the OVR flag in the I2C_ISR register.
      OVRCF          : Boolean := False;
      --  Write-only. PEC error flag clear Writing 1 to this bit clears the
      --  PECERR flag in the I2C_ISR register. Note: If the SMBus feature is
      --  not supported, this bit is reserved and forced by hardware to 0.
      --  Refer to Section75.3.
      PECCF          : Boolean := False;
      --  Write-only. Timeout detection flag clear Writing 1 to this bit clears
      --  the TIMEOUT flag in the I2C_ISR register. Note: If the SMBus feature
      --  is not supported, this bit is reserved and forced by hardware to 0.
      --  Refer to Section75.3.
      TIMOUTCF       : Boolean := False;
      --  Write-only. Alert flag clear Note: Writing 1 to this bit clears the
      --  ALERT flag in the I2C_ISR register. Note: If the SMBus feature is not
      --  supported, this bit is reserved and forced by hardware to 0. Refer to
      --  Section75.3.
      ALERTCF        : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_ICR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      ADDRCF         at 0 range 3 .. 3;
      NACKCF         at 0 range 4 .. 4;
      STOPCF         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      BERRCF         at 0 range 8 .. 8;
      ARLOCF         at 0 range 9 .. 9;
      OVRCF          at 0 range 10 .. 10;
      PECCF          at 0 range 11 .. 11;
      TIMOUTCF       at 0 range 12 .. 12;
      ALERTCF        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype I2C_PECR_PEC_Field is Interfaces.Bit_Types.Byte;

   --  I2C PEC register
   type I2C_PECR_Register is record
      --  Read-only. Packet error checking register This field contains the
      --  internal PEC when PECEN=1. The PEC is cleared by hardware when PE =
      --  0.
      PEC           : I2C_PECR_PEC_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_PECR_Register use record
      PEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype I2C_RXDR_RXDATA_Field is Interfaces.Bit_Types.Byte;

   --  I2C receive data register
   type I2C_RXDR_Register is record
      --  Read-only. 8-bit receive data Data byte received from the Isup2/supC
      --  bus
      RXDATA        : I2C_RXDR_RXDATA_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_RXDR_Register use record
      RXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype I2C_TXDR_TXDATA_Field is Interfaces.Bit_Types.Byte;

   --  I2C transmit data register
   type I2C_TXDR_Register is record
      --  8-bit transmit data Data byte to be transmitted to the Isup2/supC bus
      --  Note: These bits can be written only when TXE = 1.
      TXDATA        : I2C_TXDR_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_TXDR_Register use record
      TXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype I2C_AUTOCR_TRIGSEL_Field is Interfaces.Bit_Types.UInt4;

   --  I2C Autonomous mode control register
   type I2C_AUTOCR_Register is record
      --  unspecified
      Reserved_0_5   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  DMA request enable on Transfer Complete event
      TCDMAEN        : Boolean := False;
      --  DMA request enable on Transfer Complete Reload event
      TCRDMAEN       : Boolean := False;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Trigger selection (refer to Section75.4.2: I2C pins and internal
      --  signals I2C interconnections tables). ... Note: This bit can be
      --  written only when PE = 0
      TRIGSEL        : I2C_AUTOCR_TRIGSEL_Field := 16#0#;
      --  Trigger polarity Note: This bit can be written only when PE = 0
      TRIGPOL        : Boolean := False;
      --  Trigger enable When a trigger is detected, a START condition is sent
      --  and the transfer is launched as defined in I2C_CR2.
      TRIGEN         : Boolean := False;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_AUTOCR_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      TCDMAEN        at 0 range 6 .. 6;
      TCRDMAEN       at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      TRIGSEL        at 0 range 16 .. 19;
      TRIGPOL        at 0 range 20 .. 20;
      TRIGEN         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype I2C_HWCFGR_SMBUS_Field is Interfaces.Bit_Types.UInt4;
   subtype I2C_HWCFGR_ASYN_Field is Interfaces.Bit_Types.UInt4;
   subtype I2C_HWCFGR_WKP_Field is Interfaces.Bit_Types.UInt4;
   subtype I2C_HWCFGR_AUTON_Field is Interfaces.Bit_Types.UInt4;

   --  I2C hardware configuration register
   type I2C_HWCFGR_Register is record
      --  Read-only. None
      SMBUS          : I2C_HWCFGR_SMBUS_Field;
      --  Read-only. None
      ASYN           : I2C_HWCFGR_ASYN_Field;
      --  Read-only. None
      WKP            : I2C_HWCFGR_WKP_Field;
      --  Read-only. None
      AUTON          : I2C_HWCFGR_AUTON_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_HWCFGR_Register use record
      SMBUS          at 0 range 0 .. 3;
      ASYN           at 0 range 4 .. 7;
      WKP            at 0 range 8 .. 11;
      AUTON          at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I2C_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype I2C_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  I2C version register
   type I2C_VERR_Register is record
      --  Read-only. Minor revision
      MINREV        : I2C_VERR_MINREV_Field;
      --  Read-only. Major revision
      MAJREV        : I2C_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  I2C address block description
   type I2C_Peripheral is record
      --  I2C control register 1
      I2C_CR1      : aliased I2C_CR1_Register;
      --  I2C control register 2
      I2C_CR2      : aliased I2C_CR2_Register;
      --  I2C own address 1 register
      I2C_OAR1     : aliased I2C_OAR1_Register;
      --  I2C own address 2 register
      I2C_OAR2     : aliased I2C_OAR2_Register;
      --  I2C timing register
      I2C_TIMINGR  : aliased I2C_TIMINGR_Register;
      --  I2C timeout register
      I2C_TIMEOUTR : aliased I2C_TIMEOUTR_Register;
      --  I2C interrupt and status register
      I2C_ISR      : aliased I2C_ISR_Register;
      --  I2C interrupt clear register
      I2C_ICR      : aliased I2C_ICR_Register;
      --  I2C PEC register
      I2C_PECR     : aliased I2C_PECR_Register;
      --  I2C receive data register
      I2C_RXDR     : aliased I2C_RXDR_Register;
      --  I2C transmit data register
      I2C_TXDR     : aliased I2C_TXDR_Register;
      --  I2C Autonomous mode control register
      I2C_AUTOCR   : aliased I2C_AUTOCR_Register;
      --  I2C hardware configuration register
      I2C_HWCFGR   : aliased I2C_HWCFGR_Register;
      --  I2C version register
      I2C_VERR     : aliased I2C_VERR_Register;
      --  I2C identification register
      I2C_IPIDR    : aliased Interfaces.Bit_Types.UInt32;
      --  I2C size identification register
      I2C_SIDR     : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for I2C_Peripheral use record
      I2C_CR1      at 16#0# range 0 .. 31;
      I2C_CR2      at 16#4# range 0 .. 31;
      I2C_OAR1     at 16#8# range 0 .. 31;
      I2C_OAR2     at 16#C# range 0 .. 31;
      I2C_TIMINGR  at 16#10# range 0 .. 31;
      I2C_TIMEOUTR at 16#14# range 0 .. 31;
      I2C_ISR      at 16#18# range 0 .. 31;
      I2C_ICR      at 16#1C# range 0 .. 31;
      I2C_PECR     at 16#20# range 0 .. 31;
      I2C_RXDR     at 16#24# range 0 .. 31;
      I2C_TXDR     at 16#28# range 0 .. 31;
      I2C_AUTOCR   at 16#2C# range 0 .. 31;
      I2C_HWCFGR   at 16#3F0# range 0 .. 31;
      I2C_VERR     at 16#3F4# range 0 .. 31;
      I2C_IPIDR    at 16#3F8# range 0 .. 31;
      I2C_SIDR     at 16#3FC# range 0 .. 31;
   end record;

   --  I2C address block description
   I2C_Periph : aliased I2C_Peripheral
     with Import, Address => I2C_Base;

   --  I2C address block description
   I2C1_S_Periph : aliased I2C_Peripheral
     with Import, Address => I2C1_S_Base;

   --  I2C address block description
   I2C2_Periph : aliased I2C_Peripheral
     with Import, Address => I2C2_Base;

   --  I2C address block description
   I2C2_S_Periph : aliased I2C_Peripheral
     with Import, Address => I2C2_S_Base;

   --  I2C address block description
   I2C3_Periph : aliased I2C_Peripheral
     with Import, Address => I2C3_Base;

   --  I2C address block description
   I2C3_S_Periph : aliased I2C_Peripheral
     with Import, Address => I2C3_S_Base;

   --  I2C address block description
   I2C4_Periph : aliased I2C_Peripheral
     with Import, Address => I2C4_Base;

   --  I2C address block description
   I2C4_S_Periph : aliased I2C_Peripheral
     with Import, Address => I2C4_S_Base;

   --  I2C address block description
   I2C5_Periph : aliased I2C_Peripheral
     with Import, Address => I2C5_Base;

   --  I2C address block description
   I2C5_S_Periph : aliased I2C_Peripheral
     with Import, Address => I2C5_S_Base;

   --  I2C address block description
   I2C6_Periph : aliased I2C_Peripheral
     with Import, Address => I2C6_Base;

   --  I2C address block description
   I2C6_S_Periph : aliased I2C_Peripheral
     with Import, Address => I2C6_S_Base;

   --  I2C address block description
   I2C7_Periph : aliased I2C_Peripheral
     with Import, Address => I2C7_Base;

   --  I2C address block description
   I2C7_S_Periph : aliased I2C_Peripheral
     with Import, Address => I2C7_S_Base;

   --  I2C address block description
   I2C8_Periph : aliased I2C_Peripheral
     with Import, Address => I2C8_Base;

   --  I2C address block description
   I2C8_S_Periph : aliased I2C_Peripheral
     with Import, Address => I2C8_S_Base;

end Interfaces.STM32.I2C;
