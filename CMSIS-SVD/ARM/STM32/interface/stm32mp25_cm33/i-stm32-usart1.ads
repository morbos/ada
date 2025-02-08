--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.USART1 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype USART1_CR1_DEDT_Field is Interfaces.Bit_Types.UInt5;
   subtype USART1_CR1_DEAT_Field is Interfaces.Bit_Types.UInt5;

   --  USART control register 1
   type USART1_CR1_Register is record
      --  USART enable
      UE      : Boolean := False;
      --  USART enable in low-power mode
      UESM    : Boolean := False;
      --  Receiver enable
      RE      : Boolean := False;
      --  Transmitter enable
      TE      : Boolean := False;
      --  IDLE interrupt enable
      IDLEIE  : Boolean := False;
      --  RXFIFO not empty interrupt enable
      RXFNEIE : Boolean := False;
      --  Transmission complete interrupt enable
      TCIE    : Boolean := False;
      --  TXFIFO not full interrupt enable
      TXFNFIE : Boolean := False;
      --  PE interrupt enable
      PEIE    : Boolean := False;
      --  Parity selection
      PS      : Boolean := False;
      --  Parity control enable
      PCE     : Boolean := False;
      --  Receiver wake-up method
      WAKE    : Boolean := False;
      --  Word length
      M0      : Boolean := False;
      --  Mute mode enable
      MME     : Boolean := False;
      --  Character match interrupt enable
      CMIE    : Boolean := False;
      --  Oversampling mode
      OVER8   : Boolean := False;
      --  Driver Enable deassertion time
      DEDT    : USART1_CR1_DEDT_Field := 16#0#;
      --  Driver Enable assertion time
      DEAT    : USART1_CR1_DEAT_Field := 16#0#;
      --  Receiver timeout interrupt enable
      RTOIE   : Boolean := False;
      --  End of block interrupt enable
      EOBIE   : Boolean := False;
      --  Word length
      M1      : Boolean := False;
      --  FIFO mode enable
      FIFOEN  : Boolean := False;
      --  TXFIFO empty interrupt enable
      TXFEIE  : Boolean := False;
      --  RXFIFO Full interrupt enable
      RXFFIE  : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_CR1_Register use record
      UE      at 0 range 0 .. 0;
      UESM    at 0 range 1 .. 1;
      RE      at 0 range 2 .. 2;
      TE      at 0 range 3 .. 3;
      IDLEIE  at 0 range 4 .. 4;
      RXFNEIE at 0 range 5 .. 5;
      TCIE    at 0 range 6 .. 6;
      TXFNFIE at 0 range 7 .. 7;
      PEIE    at 0 range 8 .. 8;
      PS      at 0 range 9 .. 9;
      PCE     at 0 range 10 .. 10;
      WAKE    at 0 range 11 .. 11;
      M0      at 0 range 12 .. 12;
      MME     at 0 range 13 .. 13;
      CMIE    at 0 range 14 .. 14;
      OVER8   at 0 range 15 .. 15;
      DEDT    at 0 range 16 .. 20;
      DEAT    at 0 range 21 .. 25;
      RTOIE   at 0 range 26 .. 26;
      EOBIE   at 0 range 27 .. 27;
      M1      at 0 range 28 .. 28;
      FIFOEN  at 0 range 29 .. 29;
      TXFEIE  at 0 range 30 .. 30;
      RXFFIE  at 0 range 31 .. 31;
   end record;

   subtype USART1_CR1_ALTERNATE1_DEDT_Field is Interfaces.Bit_Types.UInt5;
   subtype USART1_CR1_ALTERNATE1_DEAT_Field is Interfaces.Bit_Types.UInt5;

   --  USART control register 1
   type USART1_CR1_ALTERNATE1_Register is record
      --  USART enable
      UE             : Boolean := False;
      --  USART enable in low-power mode
      UESM           : Boolean := False;
      --  Receiver enable
      RE             : Boolean := False;
      --  Transmitter enable
      TE             : Boolean := False;
      --  IDLE interrupt enable
      IDLEIE         : Boolean := False;
      --  Receive data register not empty
      RXNEIE         : Boolean := False;
      --  Transmission complete interrupt enable
      TCIE           : Boolean := False;
      --  Transmit data register empty
      TXEIE          : Boolean := False;
      --  PE interrupt enable
      PEIE           : Boolean := False;
      --  Parity selection
      PS             : Boolean := False;
      --  Parity control enable
      PCE            : Boolean := False;
      --  Receiver wake-up method
      WAKE           : Boolean := False;
      --  Word length
      M0             : Boolean := False;
      --  Mute mode enable
      MME            : Boolean := False;
      --  Character match interrupt enable
      CMIE           : Boolean := False;
      --  Oversampling mode
      OVER8          : Boolean := False;
      --  Driver Enable deassertion time
      DEDT           : USART1_CR1_ALTERNATE1_DEDT_Field := 16#0#;
      --  Driver Enable assertion time
      DEAT           : USART1_CR1_ALTERNATE1_DEAT_Field := 16#0#;
      --  Receiver timeout interrupt enable
      RTOIE          : Boolean := False;
      --  End of block interrupt enable
      EOBIE          : Boolean := False;
      --  Word length
      M1             : Boolean := False;
      --  FIFO mode enable
      FIFOEN         : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_CR1_ALTERNATE1_Register use record
      UE             at 0 range 0 .. 0;
      UESM           at 0 range 1 .. 1;
      RE             at 0 range 2 .. 2;
      TE             at 0 range 3 .. 3;
      IDLEIE         at 0 range 4 .. 4;
      RXNEIE         at 0 range 5 .. 5;
      TCIE           at 0 range 6 .. 6;
      TXEIE          at 0 range 7 .. 7;
      PEIE           at 0 range 8 .. 8;
      PS             at 0 range 9 .. 9;
      PCE            at 0 range 10 .. 10;
      WAKE           at 0 range 11 .. 11;
      M0             at 0 range 12 .. 12;
      MME            at 0 range 13 .. 13;
      CMIE           at 0 range 14 .. 14;
      OVER8          at 0 range 15 .. 15;
      DEDT           at 0 range 16 .. 20;
      DEAT           at 0 range 21 .. 25;
      RTOIE          at 0 range 26 .. 26;
      EOBIE          at 0 range 27 .. 27;
      M1             at 0 range 28 .. 28;
      FIFOEN         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype USART1_CR2_STOP_Field is Interfaces.Bit_Types.UInt2;
   subtype USART1_CR2_ABRMOD_Field is Interfaces.Bit_Types.UInt2;
   subtype USART1_CR2_ADD_Field is Interfaces.Bit_Types.Byte;

   --  USART control register 2
   type USART1_CR2_Register is record
      --  Synchronous slave mode enable
      SLVEN        : Boolean := False;
      --  unspecified
      Reserved_1_2 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  When the DIS_NSS bit is set, the NSS pin input is ignored.
      DIS_NSS      : Boolean := False;
      --  7-bit Address Detection/4-bit Address Detection
      ADDM7        : Boolean := False;
      --  LIN break detection length
      LBDL         : Boolean := False;
      --  LIN break detection interrupt enable
      LBDIE        : Boolean := False;
      --  unspecified
      Reserved_7_7 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Last bit clock pulse
      LBCL         : Boolean := False;
      --  Clock phase
      CPHA         : Boolean := False;
      --  Clock polarity
      CPOL         : Boolean := False;
      --  Clock enable
      CLKEN        : Boolean := False;
      --  stop bits
      STOP         : USART1_CR2_STOP_Field := 16#0#;
      --  LIN mode enable
      LINEN        : Boolean := False;
      --  Swap TX/RX pins
      SWAP         : Boolean := False;
      --  RX pin active level inversion
      RXINV        : Boolean := False;
      --  TX pin active level inversion
      TXINV        : Boolean := False;
      --  Binary data inversion
      DATAINV      : Boolean := False;
      --  Most significant bit first
      MSBFIRST     : Boolean := False;
      --  Auto baud rate enable
      ABREN        : Boolean := False;
      --  Auto baud rate mode
      ABRMOD       : USART1_CR2_ABRMOD_Field := 16#0#;
      --  Receiver timeout enable
      RTOEN        : Boolean := False;
      --  Address of the USART node
      ADD          : USART1_CR2_ADD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_CR2_Register use record
      SLVEN        at 0 range 0 .. 0;
      Reserved_1_2 at 0 range 1 .. 2;
      DIS_NSS      at 0 range 3 .. 3;
      ADDM7        at 0 range 4 .. 4;
      LBDL         at 0 range 5 .. 5;
      LBDIE        at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      LBCL         at 0 range 8 .. 8;
      CPHA         at 0 range 9 .. 9;
      CPOL         at 0 range 10 .. 10;
      CLKEN        at 0 range 11 .. 11;
      STOP         at 0 range 12 .. 13;
      LINEN        at 0 range 14 .. 14;
      SWAP         at 0 range 15 .. 15;
      RXINV        at 0 range 16 .. 16;
      TXINV        at 0 range 17 .. 17;
      DATAINV      at 0 range 18 .. 18;
      MSBFIRST     at 0 range 19 .. 19;
      ABREN        at 0 range 20 .. 20;
      ABRMOD       at 0 range 21 .. 22;
      RTOEN        at 0 range 23 .. 23;
      ADD          at 0 range 24 .. 31;
   end record;

   subtype USART1_CR3_SCARCNT_Field is Interfaces.Bit_Types.UInt3;
   subtype USART1_CR3_RXFTCFG_Field is Interfaces.Bit_Types.UInt3;
   subtype USART1_CR3_TXFTCFG_Field is Interfaces.Bit_Types.UInt3;

   --  USART control register 3
   type USART1_CR3_Register is record
      --  Error interrupt enable
      EIE            : Boolean := False;
      --  IrDA mode enable
      IREN           : Boolean := False;
      --  IrDA low-power
      IRLP           : Boolean := False;
      --  Half-duplex selection
      HDSEL          : Boolean := False;
      --  Smartcard NACK enable
      NACK           : Boolean := False;
      --  Smartcard mode enable
      SCEN           : Boolean := False;
      --  DMA enable receiver
      DMAR           : Boolean := False;
      --  DMA enable transmitter
      DMAT           : Boolean := False;
      --  RTS enable
      RTSE           : Boolean := False;
      --  CTS enable
      CTSE           : Boolean := False;
      --  CTS interrupt enable
      CTSIE          : Boolean := False;
      --  One sample bit method enable
      ONEBIT         : Boolean := False;
      --  Overrun Disable
      OVRDIS         : Boolean := False;
      --  DMA Disable on reception Error
      DDRE           : Boolean := False;
      --  Driver enable mode
      DEM            : Boolean := False;
      --  Driver enable polarity selection
      DEP            : Boolean := False;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Smartcard auto-retry count
      SCARCNT        : USART1_CR3_SCARCNT_Field := 16#0#;
      --  unspecified
      Reserved_20_22 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  TXFIFO threshold interrupt enable
      TXFTIE         : Boolean := False;
      --  Transmission Complete before guard time, interrupt enable
      TCBGTIE        : Boolean := False;
      --  Receive FIFO threshold configuration
      RXFTCFG        : USART1_CR3_RXFTCFG_Field := 16#0#;
      --  RXFIFO threshold interrupt enable
      RXFTIE         : Boolean := False;
      --  TXFIFO threshold configuration
      TXFTCFG        : USART1_CR3_TXFTCFG_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_CR3_Register use record
      EIE            at 0 range 0 .. 0;
      IREN           at 0 range 1 .. 1;
      IRLP           at 0 range 2 .. 2;
      HDSEL          at 0 range 3 .. 3;
      NACK           at 0 range 4 .. 4;
      SCEN           at 0 range 5 .. 5;
      DMAR           at 0 range 6 .. 6;
      DMAT           at 0 range 7 .. 7;
      RTSE           at 0 range 8 .. 8;
      CTSE           at 0 range 9 .. 9;
      CTSIE          at 0 range 10 .. 10;
      ONEBIT         at 0 range 11 .. 11;
      OVRDIS         at 0 range 12 .. 12;
      DDRE           at 0 range 13 .. 13;
      DEM            at 0 range 14 .. 14;
      DEP            at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      SCARCNT        at 0 range 17 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      TXFTIE         at 0 range 23 .. 23;
      TCBGTIE        at 0 range 24 .. 24;
      RXFTCFG        at 0 range 25 .. 27;
      RXFTIE         at 0 range 28 .. 28;
      TXFTCFG        at 0 range 29 .. 31;
   end record;

   subtype USART1_CR3_ALTERNATE1_SCARCNT_Field is Interfaces.Bit_Types.UInt3;

   --  USART control register 3
   type USART1_CR3_ALTERNATE1_Register is record
      --  Error interrupt enable
      EIE            : Boolean := False;
      --  IrDA mode enable
      IREN           : Boolean := False;
      --  IrDA low-power
      IRLP           : Boolean := False;
      --  Half-duplex selection
      HDSEL          : Boolean := False;
      --  Smartcard NACK enable
      NACK           : Boolean := False;
      --  Smartcard mode enable
      SCEN           : Boolean := False;
      --  DMA enable receiver
      DMAR           : Boolean := False;
      --  DMA enable transmitter
      DMAT           : Boolean := False;
      --  RTS enable
      RTSE           : Boolean := False;
      --  CTS enable
      CTSE           : Boolean := False;
      --  CTS interrupt enable
      CTSIE          : Boolean := False;
      --  One sample bit method enable
      ONEBIT         : Boolean := False;
      --  Overrun Disable
      OVRDIS         : Boolean := False;
      --  DMA Disable on reception Error
      DDRE           : Boolean := False;
      --  Driver enable mode
      DEM            : Boolean := False;
      --  Driver enable polarity selection
      DEP            : Boolean := False;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Smartcard auto-retry count
      SCARCNT        : USART1_CR3_ALTERNATE1_SCARCNT_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transmission Complete before guard time, interrupt enable
      TCBGTIE        : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_CR3_ALTERNATE1_Register use record
      EIE            at 0 range 0 .. 0;
      IREN           at 0 range 1 .. 1;
      IRLP           at 0 range 2 .. 2;
      HDSEL          at 0 range 3 .. 3;
      NACK           at 0 range 4 .. 4;
      SCEN           at 0 range 5 .. 5;
      DMAR           at 0 range 6 .. 6;
      DMAT           at 0 range 7 .. 7;
      RTSE           at 0 range 8 .. 8;
      CTSE           at 0 range 9 .. 9;
      CTSIE          at 0 range 10 .. 10;
      ONEBIT         at 0 range 11 .. 11;
      OVRDIS         at 0 range 12 .. 12;
      DDRE           at 0 range 13 .. 13;
      DEM            at 0 range 14 .. 14;
      DEP            at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      SCARCNT        at 0 range 17 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TCBGTIE        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype USART1_BRR_BRR_Field is Interfaces.Bit_Types.UInt16;

   --  USART baud rate register
   type USART1_BRR_Register is record
      --  USART baud rate
      BRR            : USART1_BRR_BRR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_BRR_Register use record
      BRR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART1_GTPR_PSC_Field is Interfaces.Bit_Types.Byte;
   subtype USART1_GTPR_GT_Field is Interfaces.Bit_Types.Byte;

   --  USART guard time and prescaler register
   type USART1_GTPR_Register is record
      --  Prescaler value
      PSC            : USART1_GTPR_PSC_Field := 16#0#;
      --  Guard time value
      GT             : USART1_GTPR_GT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_GTPR_Register use record
      PSC            at 0 range 0 .. 7;
      GT             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART1_RTOR_RTO_Field is Interfaces.Bit_Types.UInt24;
   subtype USART1_RTOR_BLEN_Field is Interfaces.Bit_Types.Byte;

   --  USART receiver timeout register
   type USART1_RTOR_Register is record
      --  Receiver timeout value
      RTO  : USART1_RTOR_RTO_Field := 16#0#;
      --  Block Length
      BLEN : USART1_RTOR_BLEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_RTOR_Register use record
      RTO  at 0 range 0 .. 23;
      BLEN at 0 range 24 .. 31;
   end record;

   --  USART request register
   type USART1_RQR_Register is record
      --  Write-only. Auto baud rate request
      ABRRQ         : Boolean := False;
      --  Write-only. Send break request
      SBKRQ         : Boolean := False;
      --  Write-only. Mute mode request
      MMRQ          : Boolean := False;
      --  Write-only. Receive data flush request
      RXFRQ         : Boolean := False;
      --  Write-only. Transmit data flush request
      TXFRQ         : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_RQR_Register use record
      ABRRQ         at 0 range 0 .. 0;
      SBKRQ         at 0 range 1 .. 1;
      MMRQ          at 0 range 2 .. 2;
      RXFRQ         at 0 range 3 .. 3;
      TXFRQ         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  USART interrupt and status register
   type USART1_ISR_Register is record
      --  Read-only. Parity error
      PE             : Boolean;
      --  Read-only. Framing error
      FE             : Boolean;
      --  Read-only. Noise detection flag
      NE             : Boolean;
      --  Read-only. Overrun error
      ORE            : Boolean;
      --  Read-only. Idle line detected
      IDLE           : Boolean;
      --  Read-only. RXFIFO not empty
      RXFNE          : Boolean;
      --  Read-only. Transmission complete
      TC             : Boolean;
      --  Read-only. TXFIFO not full
      TXFNF          : Boolean;
      --  Read-only. LIN break detection flag
      LBDF           : Boolean;
      --  Read-only. CTS interrupt flag
      CTSIF          : Boolean;
      --  Read-only. CTS flag
      CTS            : Boolean;
      --  Read-only. Receiver timeout
      RTOF           : Boolean;
      --  Read-only. End of block flag
      EOBF           : Boolean;
      --  Read-only. SPI slave underrun error flag
      UDR            : Boolean;
      --  Read-only. Auto baud rate error
      ABRE           : Boolean;
      --  Read-only. Auto baud rate flag
      ABRF           : Boolean;
      --  Read-only. Busy flag
      BUSY           : Boolean;
      --  Read-only. Character match flag
      CMF            : Boolean;
      --  Read-only. Send break flag
      SBKF           : Boolean;
      --  Read-only. Receiver wake-up from mute mode
      RWU            : Boolean;
      --  unspecified
      Reserved_20_20 : Interfaces.Bit_Types.Bit;
      --  Read-only. Transmit enable acknowledge flag
      TEACK          : Boolean;
      --  Read-only. Receive enable acknowledge flag
      REACK          : Boolean;
      --  Read-only. TXFIFO Empty
      TXFE           : Boolean;
      --  Read-only. RXFIFO Full
      RXFF           : Boolean;
      --  Read-only. Transmission complete before guard time flag
      TCBGT          : Boolean;
      --  Read-only. RXFIFO threshold flag
      RXFT           : Boolean;
      --  Read-only. TXFIFO threshold flag
      TXFT           : Boolean;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_ISR_Register use record
      PE             at 0 range 0 .. 0;
      FE             at 0 range 1 .. 1;
      NE             at 0 range 2 .. 2;
      ORE            at 0 range 3 .. 3;
      IDLE           at 0 range 4 .. 4;
      RXFNE          at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      TXFNF          at 0 range 7 .. 7;
      LBDF           at 0 range 8 .. 8;
      CTSIF          at 0 range 9 .. 9;
      CTS            at 0 range 10 .. 10;
      RTOF           at 0 range 11 .. 11;
      EOBF           at 0 range 12 .. 12;
      UDR            at 0 range 13 .. 13;
      ABRE           at 0 range 14 .. 14;
      ABRF           at 0 range 15 .. 15;
      BUSY           at 0 range 16 .. 16;
      CMF            at 0 range 17 .. 17;
      SBKF           at 0 range 18 .. 18;
      RWU            at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      TEACK          at 0 range 21 .. 21;
      REACK          at 0 range 22 .. 22;
      TXFE           at 0 range 23 .. 23;
      RXFF           at 0 range 24 .. 24;
      TCBGT          at 0 range 25 .. 25;
      RXFT           at 0 range 26 .. 26;
      TXFT           at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  USART interrupt and status register
   type USART1_ISR_ALTERNATE1_Register is record
      --  Read-only. Parity error
      PE             : Boolean;
      --  Read-only. Framing error
      FE             : Boolean;
      --  Read-only. Noise detection flag
      NE             : Boolean;
      --  Read-only. Overrun error
      ORE            : Boolean;
      --  Read-only. Idle line detected
      IDLE           : Boolean;
      --  Read-only. Read data register not empty
      RXNE           : Boolean;
      --  Read-only. Transmission complete
      TC             : Boolean;
      --  Read-only. Transmit data register empty
      TXE            : Boolean;
      --  Read-only. LIN break detection flag
      LBDF           : Boolean;
      --  Read-only. CTS interrupt flag
      CTSIF          : Boolean;
      --  Read-only. CTS flag
      CTS            : Boolean;
      --  Read-only. Receiver timeout
      RTOF           : Boolean;
      --  Read-only. End of block flag
      EOBF           : Boolean;
      --  Read-only. SPI slave underrun error flag
      UDR            : Boolean;
      --  Read-only. Auto baud rate error
      ABRE           : Boolean;
      --  Read-only. Auto baud rate flag
      ABRF           : Boolean;
      --  Read-only. Busy flag
      BUSY           : Boolean;
      --  Read-only. Character match flag
      CMF            : Boolean;
      --  Read-only. Send break flag
      SBKF           : Boolean;
      --  Read-only. Receiver wake-up from mute mode
      RWU            : Boolean;
      --  unspecified
      Reserved_20_20 : Interfaces.Bit_Types.Bit;
      --  Read-only. Transmit enable acknowledge flag
      TEACK          : Boolean;
      --  Read-only. Receive enable acknowledge flag
      REACK          : Boolean;
      --  unspecified
      Reserved_23_24 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Transmission complete before guard time flag
      TCBGT          : Boolean;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_ISR_ALTERNATE1_Register use record
      PE             at 0 range 0 .. 0;
      FE             at 0 range 1 .. 1;
      NE             at 0 range 2 .. 2;
      ORE            at 0 range 3 .. 3;
      IDLE           at 0 range 4 .. 4;
      RXNE           at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      TXE            at 0 range 7 .. 7;
      LBDF           at 0 range 8 .. 8;
      CTSIF          at 0 range 9 .. 9;
      CTS            at 0 range 10 .. 10;
      RTOF           at 0 range 11 .. 11;
      EOBF           at 0 range 12 .. 12;
      UDR            at 0 range 13 .. 13;
      ABRE           at 0 range 14 .. 14;
      ABRF           at 0 range 15 .. 15;
      BUSY           at 0 range 16 .. 16;
      CMF            at 0 range 17 .. 17;
      SBKF           at 0 range 18 .. 18;
      RWU            at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      TEACK          at 0 range 21 .. 21;
      REACK          at 0 range 22 .. 22;
      Reserved_23_24 at 0 range 23 .. 24;
      TCBGT          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  USART interrupt flag clear register
   type USART1_ICR_Register is record
      --  Write-only. Parity error clear flag
      PECF           : Boolean := False;
      --  Write-only. Framing error clear flag
      FECF           : Boolean := False;
      --  Write-only. Noise detected clear flag
      NECF           : Boolean := False;
      --  Write-only. Overrun error clear flag
      ORECF          : Boolean := False;
      --  Write-only. Idle line detected clear flag
      IDLECF         : Boolean := False;
      --  Write-only. TXFIFO empty clear flag
      TXFECF         : Boolean := False;
      --  Write-only. Transmission complete clear flag
      TCCF           : Boolean := False;
      --  Write-only. Transmission complete before Guard time clear flag
      TCBGTCF        : Boolean := False;
      --  Write-only. LIN break detection clear flag
      LBDCF          : Boolean := False;
      --  Write-only. CTS clear flag
      CTSCF          : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Receiver timeout clear flag
      RTOCF          : Boolean := False;
      --  Write-only. End of block clear flag
      EOBCF          : Boolean := False;
      --  Write-only. SPI slave underrun clear flag
      UDRCF          : Boolean := False;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Character match clear flag
      CMCF           : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_ICR_Register use record
      PECF           at 0 range 0 .. 0;
      FECF           at 0 range 1 .. 1;
      NECF           at 0 range 2 .. 2;
      ORECF          at 0 range 3 .. 3;
      IDLECF         at 0 range 4 .. 4;
      TXFECF         at 0 range 5 .. 5;
      TCCF           at 0 range 6 .. 6;
      TCBGTCF        at 0 range 7 .. 7;
      LBDCF          at 0 range 8 .. 8;
      CTSCF          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      RTOCF          at 0 range 11 .. 11;
      EOBCF          at 0 range 12 .. 12;
      UDRCF          at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      CMCF           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype USART1_RDR_RDR_Field is Interfaces.Bit_Types.UInt9;

   --  USART receive data register
   type USART1_RDR_Register is record
      --  Read-only. Receive data value
      RDR           : USART1_RDR_RDR_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_RDR_Register use record
      RDR           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype USART1_TDR_TDR_Field is Interfaces.Bit_Types.UInt9;

   --  USART transmit data register
   type USART1_TDR_Register is record
      --  Transmit data value
      TDR           : USART1_TDR_TDR_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_TDR_Register use record
      TDR           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype USART1_PRESC_PRESCALER_Field is Interfaces.Bit_Types.UInt4;

   --  USART prescaler register
   type USART1_PRESC_Register is record
      --  Clock prescaler
      PRESCALER     : USART1_PRESC_PRESCALER_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_PRESC_Register use record
      PRESCALER     at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype USART1_AUTOCR_TDN_Field is Interfaces.Bit_Types.UInt16;
   subtype USART1_AUTOCR_TRIGSEL_Field is Interfaces.Bit_Types.UInt4;

   --  USART autonomous mode control register
   type USART1_AUTOCR_Register is record
      --  TDN transmission data number
      TDN            : USART1_AUTOCR_TDN_Field := 16#0#;
      --  Trigger polarity bit
      TRIGPOL        : Boolean := False;
      --  Trigger enable bit
      TRIGEN         : Boolean := False;
      --  Idle frame transmission disable bit after enabling the transmitter
      IDLEDIS        : Boolean := False;
      --  Trigger selection bits
      TRIGSEL        : USART1_AUTOCR_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#100#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_AUTOCR_Register use record
      TDN            at 0 range 0 .. 15;
      TRIGPOL        at 0 range 16 .. 16;
      TRIGEN         at 0 range 17 .. 17;
      IDLEDIS        at 0 range 18 .. 18;
      TRIGSEL        at 0 range 19 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  USART1_HWCFGR2_CFG array element
   subtype USART1_HWCFGR2_CFG_Element is Interfaces.Bit_Types.UInt4;

   --  USART1_HWCFGR2_CFG array
   type USART1_HWCFGR2_CFG_Field_Array is array (1 .. 3)
     of USART1_HWCFGR2_CFG_Element
     with Component_Size => 4, Size => 12;

   --  Type definition for USART1_HWCFGR2_CFG
   type USART1_HWCFGR2_CFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFG as a value
            Val : Interfaces.Bit_Types.UInt12;
         when True =>
            --  CFG as an array
            Arr : USART1_HWCFGR2_CFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for USART1_HWCFGR2_CFG_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  USART hardware configuration register 2
   type USART1_HWCFGR2_Register is record
      --  Read-only. USART hardware configuration 1
      CFG            : USART1_HWCFGR2_CFG_Field;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_HWCFGR2_Register use record
      CFG            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  USART1_HWCFGR1_CFG array element
   subtype USART1_HWCFGR1_CFG_Element is Interfaces.Bit_Types.UInt4;

   --  USART1_HWCFGR1_CFG array
   type USART1_HWCFGR1_CFG_Field_Array is array (1 .. 8)
     of USART1_HWCFGR1_CFG_Element
     with Component_Size => 4, Size => 32;

   --  USART hardware configuration register 1
   type USART1_HWCFGR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFG as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  CFG as an array
            Arr : USART1_HWCFGR1_CFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_HWCFGR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype USART1_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype USART1_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  USART version register
   type USART1_VERR_Register is record
      --  Read-only. USART minor revision
      MINREV        : USART1_VERR_MINREV_Field;
      --  Read-only. USART major revision
      MAJREV        : USART1_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART1_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type UART4_Disc is
     (Default,
      Alternate1);

   --  USART1 address block description
   type USART1_Peripheral
     (Discriminent : UART4_Disc := Default)
   is record
      --  USART control register 2
      USART1_CR2            : aliased USART1_CR2_Register;
      --  USART baud rate register
      USART1_BRR            : aliased USART1_BRR_Register;
      --  USART guard time and prescaler register
      USART1_GTPR           : aliased USART1_GTPR_Register;
      --  USART receiver timeout register
      USART1_RTOR           : aliased USART1_RTOR_Register;
      --  USART request register
      USART1_RQR            : aliased USART1_RQR_Register;
      --  USART interrupt flag clear register
      USART1_ICR            : aliased USART1_ICR_Register;
      --  USART receive data register
      USART1_RDR            : aliased USART1_RDR_Register;
      --  USART transmit data register
      USART1_TDR            : aliased USART1_TDR_Register;
      --  USART prescaler register
      USART1_PRESC          : aliased USART1_PRESC_Register;
      --  USART autonomous mode control register
      USART1_AUTOCR         : aliased USART1_AUTOCR_Register;
      --  USART hardware configuration register 2
      USART1_HWCFGR2        : aliased USART1_HWCFGR2_Register;
      --  USART hardware configuration register 1
      USART1_HWCFGR1        : aliased USART1_HWCFGR1_Register;
      --  USART version register
      USART1_VERR           : aliased USART1_VERR_Register;
      --  USART identification register
      USART1_IPIDR          : aliased Interfaces.Bit_Types.UInt32;
      --  USART size identification register
      USART1_SIDR           : aliased Interfaces.Bit_Types.UInt32;
      case Discriminent is
         when Default =>
            --  USART control register 1
            USART1_CR1 : aliased USART1_CR1_Register;
            --  USART control register 3
            USART1_CR3 : aliased USART1_CR3_Register;
            --  USART interrupt and status register
            USART1_ISR : aliased USART1_ISR_Register;
         when Alternate1 =>
            --  USART control register 1
            USART1_CR1_ALTERNATE1 : aliased USART1_CR1_ALTERNATE1_Register;
            --  USART control register 3
            USART1_CR3_ALTERNATE1 : aliased USART1_CR3_ALTERNATE1_Register;
            --  USART interrupt and status register
            USART1_ISR_ALTERNATE1 : aliased USART1_ISR_ALTERNATE1_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USART1_Peripheral use record
      USART1_CR2            at 16#4# range 0 .. 31;
      USART1_BRR            at 16#C# range 0 .. 31;
      USART1_GTPR           at 16#10# range 0 .. 31;
      USART1_RTOR           at 16#14# range 0 .. 31;
      USART1_RQR            at 16#18# range 0 .. 31;
      USART1_ICR            at 16#20# range 0 .. 31;
      USART1_RDR            at 16#24# range 0 .. 31;
      USART1_TDR            at 16#28# range 0 .. 31;
      USART1_PRESC          at 16#2C# range 0 .. 31;
      USART1_AUTOCR         at 16#30# range 0 .. 31;
      USART1_HWCFGR2        at 16#3EC# range 0 .. 31;
      USART1_HWCFGR1        at 16#3F0# range 0 .. 31;
      USART1_VERR           at 16#3F4# range 0 .. 31;
      USART1_IPIDR          at 16#3F8# range 0 .. 31;
      USART1_SIDR           at 16#3FC# range 0 .. 31;
      USART1_CR1            at 16#0# range 0 .. 31;
      USART1_CR3            at 16#8# range 0 .. 31;
      USART1_ISR            at 16#1C# range 0 .. 31;
      USART1_CR1_ALTERNATE1 at 16#0# range 0 .. 31;
      USART1_CR3_ALTERNATE1 at 16#8# range 0 .. 31;
      USART1_ISR_ALTERNATE1 at 16#1C# range 0 .. 31;
   end record;

   --  USART1 address block description
   UART4_Periph : aliased USART1_Peripheral
     with Import, Address => UART4_Base;

   --  USART1 address block description
   UART4_S_Periph : aliased USART1_Peripheral
     with Import, Address => UART4_S_Base;

   --  USART1 address block description
   UART5_Periph : aliased USART1_Peripheral
     with Import, Address => UART5_Base;

   --  USART1 address block description
   UART5_S_Periph : aliased USART1_Peripheral
     with Import, Address => UART5_S_Base;

   --  USART1 address block description
   UART7_Periph : aliased USART1_Peripheral
     with Import, Address => UART7_Base;

   --  USART1 address block description
   UART7_S_Periph : aliased USART1_Peripheral
     with Import, Address => UART7_S_Base;

   --  USART1 address block description
   UART8_Periph : aliased USART1_Peripheral
     with Import, Address => UART8_Base;

   --  USART1 address block description
   UART8_S_Periph : aliased USART1_Peripheral
     with Import, Address => UART8_S_Base;

   --  USART1 address block description
   UART9_Periph : aliased USART1_Peripheral
     with Import, Address => UART9_Base;

   --  USART1 address block description
   UART9_S_Periph : aliased USART1_Peripheral
     with Import, Address => UART9_S_Base;

   --  USART1 address block description
   USART1_Periph : aliased USART1_Peripheral
     with Import, Address => USART1_Base;

   --  USART1 address block description
   USART1_S_Periph : aliased USART1_Peripheral
     with Import, Address => USART1_S_Base;

   --  USART1 address block description
   USART2_Periph : aliased USART1_Peripheral
     with Import, Address => USART2_Base;

   --  USART1 address block description
   USART2_S_Periph : aliased USART1_Peripheral
     with Import, Address => USART2_S_Base;

   --  USART1 address block description
   USART3_Periph : aliased USART1_Peripheral
     with Import, Address => USART3_Base;

   --  USART1 address block description
   USART3_S_Periph : aliased USART1_Peripheral
     with Import, Address => USART3_S_Base;

   --  USART1 address block description
   USART6_Periph : aliased USART1_Peripheral
     with Import, Address => USART6_Base;

   --  USART1 address block description
   USART6_S_Periph : aliased USART1_Peripheral
     with Import, Address => USART6_S_Base;

end Interfaces.STM32.USART1;
