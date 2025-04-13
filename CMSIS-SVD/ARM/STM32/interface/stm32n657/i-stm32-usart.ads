--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.USART is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_FIFO_ENABLED_DEDT_Field is Interfaces.Bit_Types.UInt5;
   subtype CR1_FIFO_ENABLED_DEAT_Field is Interfaces.Bit_Types.UInt5;

   --  USART control register 1 [alternate]
   type CR1_FIFO_ENABLED_Register is record
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
      --  Receiver wakeup method
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
      DEDT    : CR1_FIFO_ENABLED_DEDT_Field := 16#0#;
      --  Driver Enable assertion time
      DEAT    : CR1_FIFO_ENABLED_DEAT_Field := 16#0#;
      --  Receiver timeout interrupt enable
      RTOIE   : Boolean := False;
      --  End of Block interrupt enable
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

   for CR1_FIFO_ENABLED_Register use record
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

   subtype CR1_FIFO_DISABLED_DEDT_Field is Interfaces.Bit_Types.UInt5;
   subtype CR1_FIFO_DISABLED_DEAT_Field is Interfaces.Bit_Types.UInt5;

   --  USART control register 1 [alternate]
   type CR1_FIFO_DISABLED_Register is record
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
      --  Receiver wakeup method
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
      DEDT           : CR1_FIFO_DISABLED_DEDT_Field := 16#0#;
      --  Driver Enable assertion time
      DEAT           : CR1_FIFO_DISABLED_DEAT_Field := 16#0#;
      --  Receiver timeout interrupt enable
      RTOIE          : Boolean := False;
      --  End of Block interrupt enable
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

   for CR1_FIFO_DISABLED_Register use record
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

   subtype CR2_STOP_Field is Interfaces.Bit_Types.UInt2;
   subtype CR2_ABRMOD_Field is Interfaces.Bit_Types.UInt2;
   subtype CR2_ADD_Field is Interfaces.Bit_Types.Byte;

   --  USART control register 2
   type CR2_Register is record
      --  Synchronous Slave mode enable
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
      STOP         : CR2_STOP_Field := 16#0#;
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
      ABRMOD       : CR2_ABRMOD_Field := 16#0#;
      --  Receiver timeout enable
      RTOEN        : Boolean := False;
      --  Address of the USART node
      ADD          : CR2_ADD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
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

   subtype CR3_SCARCNT_Field is Interfaces.Bit_Types.UInt3;

   --  CR3_WUS array
   type CR3_WUS_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CR3_WUS
   type CR3_WUS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUS as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  WUS as an array
            Arr : CR3_WUS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CR3_WUS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CR3_RXFTCFG_Field is Interfaces.Bit_Types.UInt3;
   subtype CR3_TXFTCFG_Field is Interfaces.Bit_Types.UInt3;

   --  USART control register 3
   type CR3_Register is record
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
      --  DMA Disable on Reception Error
      DDRE           : Boolean := False;
      --  Driver enable mode
      DEM            : Boolean := False;
      --  Driver enable polarity selection
      DEP            : Boolean := False;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Smartcard auto-retry count
      SCARCNT        : CR3_SCARCNT_Field := 16#0#;
      --  Wakeup from low-power mode interrupt flag selection
      WUS            : CR3_WUS_Field := (As_Array => False, Val => 16#0#);
      --  Wakeup from low-power mode interrupt enable
      WUFIE          : Boolean := False;
      --  TXFIFO threshold interrupt enable
      TXFTIE         : Boolean := False;
      --  Transmission Complete before guard time, interrupt enable
      TCBGTIE        : Boolean := False;
      --  Receive FIFO threshold configuration
      RXFTCFG        : CR3_RXFTCFG_Field := 16#0#;
      --  RXFIFO threshold interrupt enable
      RXFTIE         : Boolean := False;
      --  TXFIFO threshold configuration
      TXFTCFG        : CR3_TXFTCFG_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR3_Register use record
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
      WUS            at 0 range 20 .. 21;
      WUFIE          at 0 range 22 .. 22;
      TXFTIE         at 0 range 23 .. 23;
      TCBGTIE        at 0 range 24 .. 24;
      RXFTCFG        at 0 range 25 .. 27;
      RXFTIE         at 0 range 28 .. 28;
      TXFTCFG        at 0 range 29 .. 31;
   end record;

   subtype BRR_BRR_Field is Interfaces.Bit_Types.UInt16;

   --  USART baud rate register
   type BRR_Register is record
      --  USART baud rate
      BRR            : BRR_BRR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRR_Register use record
      BRR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GTPR_PSC_Field is Interfaces.Bit_Types.Byte;
   subtype GTPR_GT_Field is Interfaces.Bit_Types.Byte;

   --  USART guard time and prescaler register
   type GTPR_Register is record
      --  Prescaler value
      PSC            : GTPR_PSC_Field := 16#0#;
      --  Guard time value
      GT             : GTPR_GT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTPR_Register use record
      PSC            at 0 range 0 .. 7;
      GT             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RTOR_RTO_Field is Interfaces.Bit_Types.UInt24;
   subtype RTOR_BLEN_Field is Interfaces.Bit_Types.Byte;

   --  USART receiver timeout register
   type RTOR_Register is record
      --  Receiver timeout value
      RTO  : RTOR_RTO_Field := 16#0#;
      --  Block Length
      BLEN : RTOR_BLEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTOR_Register use record
      RTO  at 0 range 0 .. 23;
      BLEN at 0 range 24 .. 31;
   end record;

   --  USART request register
   type RQR_Register is record
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

   for RQR_Register use record
      ABRRQ         at 0 range 0 .. 0;
      SBKRQ         at 0 range 1 .. 1;
      MMRQ          at 0 range 2 .. 2;
      RXFRQ         at 0 range 3 .. 3;
      TXFRQ         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  USART interrupt and status register [alternate]
   type ISR_FIFO_ENABLED_Register is record
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
      --  Read-only. Receiver wakeup from Mute mode
      RWU            : Boolean;
      --  Read-only. Wakeup from low-power mode flag
      WUF            : Boolean;
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

   for ISR_FIFO_ENABLED_Register use record
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
      WUF            at 0 range 20 .. 20;
      TEACK          at 0 range 21 .. 21;
      REACK          at 0 range 22 .. 22;
      TXFE           at 0 range 23 .. 23;
      RXFF           at 0 range 24 .. 24;
      TCBGT          at 0 range 25 .. 25;
      RXFT           at 0 range 26 .. 26;
      TXFT           at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  USART interrupt and status register [alternate]
   type ISR_FIFO_DISABLED_Register is record
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
      --  Read-only. Receiver wakeup from Mute mode
      RWU            : Boolean;
      --  Read-only. Wakeup from low-power mode flag
      WUF            : Boolean;
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

   for ISR_FIFO_DISABLED_Register use record
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
      WUF            at 0 range 20 .. 20;
      TEACK          at 0 range 21 .. 21;
      REACK          at 0 range 22 .. 22;
      Reserved_23_24 at 0 range 23 .. 24;
      TCBGT          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  USART interrupt flag clear register
   type ICR_Register is record
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
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Wakeup from low-power mode clear flag
      WUCF           : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
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
      Reserved_18_19 at 0 range 18 .. 19;
      WUCF           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype RDR_RDR_Field is Interfaces.Bit_Types.UInt9;

   --  USART receive data register
   type RDR_Register is record
      --  Read-only. Receive data value
      RDR           : RDR_RDR_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RDR_Register use record
      RDR           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype TDR_TDR_Field is Interfaces.Bit_Types.UInt9;

   --  USART transmit data register
   type TDR_Register is record
      --  Transmit data value
      TDR           : TDR_TDR_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TDR_Register use record
      TDR           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype PRESC_PRESCALER_Field is Interfaces.Bit_Types.UInt4;

   --  USART prescaler register
   type PRESC_Register is record
      --  Clock prescaler
      PRESCALER     : PRESC_PRESCALER_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRESC_Register use record
      PRESCALER     at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type UART4_Disc is
     (Enabled,
      Disabled);

   --  Universal synchronous/asynchronous receiver transmitter
   type USART_Peripheral
     (Discriminent : UART4_Disc := Enabled)
   is record
      --  USART control register 2
      CR2               : aliased CR2_Register;
      --  USART control register 3
      CR3               : aliased CR3_Register;
      --  USART baud rate register
      BRR               : aliased BRR_Register;
      --  USART guard time and prescaler register
      GTPR              : aliased GTPR_Register;
      --  USART receiver timeout register
      RTOR              : aliased RTOR_Register;
      --  USART request register
      RQR               : aliased RQR_Register;
      --  USART interrupt flag clear register
      ICR               : aliased ICR_Register;
      --  USART receive data register
      RDR               : aliased RDR_Register;
      --  USART transmit data register
      TDR               : aliased TDR_Register;
      --  USART prescaler register
      PRESC             : aliased PRESC_Register;
      case Discriminent is
         when Enabled =>
            --  USART control register 1 [alternate]
            CR1_FIFO_ENABLED : aliased CR1_FIFO_ENABLED_Register;
            --  USART interrupt and status register [alternate]
            ISR_FIFO_ENABLED : aliased ISR_FIFO_ENABLED_Register;
         when Disabled =>
            --  USART control register 1 [alternate]
            CR1_FIFO_DISABLED : aliased CR1_FIFO_DISABLED_Register;
            --  USART interrupt and status register [alternate]
            ISR_FIFO_DISABLED : aliased ISR_FIFO_DISABLED_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USART_Peripheral use record
      CR2               at 16#4# range 0 .. 31;
      CR3               at 16#8# range 0 .. 31;
      BRR               at 16#C# range 0 .. 31;
      GTPR              at 16#10# range 0 .. 31;
      RTOR              at 16#14# range 0 .. 31;
      RQR               at 16#18# range 0 .. 31;
      ICR               at 16#20# range 0 .. 31;
      RDR               at 16#24# range 0 .. 31;
      TDR               at 16#28# range 0 .. 31;
      PRESC             at 16#2C# range 0 .. 31;
      CR1_FIFO_ENABLED  at 16#0# range 0 .. 31;
      ISR_FIFO_ENABLED  at 16#1C# range 0 .. 31;
      CR1_FIFO_DISABLED at 16#0# range 0 .. 31;
      ISR_FIFO_DISABLED at 16#1C# range 0 .. 31;
   end record;

   --  Universal synchronous/asynchronous receiver transmitter
   UART4_Periph : aliased USART_Peripheral
     with Import, Address => UART4_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   UART4_S_Periph : aliased USART_Peripheral
     with Import, Address => UART4_S_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   UART5_Periph : aliased USART_Peripheral
     with Import, Address => UART5_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   UART5_S_Periph : aliased USART_Peripheral
     with Import, Address => UART5_S_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   UART7_Periph : aliased USART_Peripheral
     with Import, Address => UART7_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   UART7_S_Periph : aliased USART_Peripheral
     with Import, Address => UART7_S_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   UART8_Periph : aliased USART_Peripheral
     with Import, Address => UART8_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   UART8_S_Periph : aliased USART_Peripheral
     with Import, Address => UART8_S_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   UART9_Periph : aliased USART_Peripheral
     with Import, Address => UART9_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   UART9_S_Periph : aliased USART_Peripheral
     with Import, Address => UART9_S_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   USART1_Periph : aliased USART_Peripheral
     with Import, Address => USART1_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   USART10_Periph : aliased USART_Peripheral
     with Import, Address => USART10_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   USART10_S_Periph : aliased USART_Peripheral
     with Import, Address => USART10_S_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   USART1_S_Periph : aliased USART_Peripheral
     with Import, Address => USART1_S_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   USART2_Periph : aliased USART_Peripheral
     with Import, Address => USART2_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   USART2_S_Periph : aliased USART_Peripheral
     with Import, Address => USART2_S_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   USART3_Periph : aliased USART_Peripheral
     with Import, Address => USART3_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   USART3_S_Periph : aliased USART_Peripheral
     with Import, Address => USART3_S_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   USART6_Periph : aliased USART_Peripheral
     with Import, Address => USART6_Base;

   --  Universal synchronous/asynchronous receiver transmitter
   USART6_S_Periph : aliased USART_Peripheral
     with Import, Address => USART6_S_Base;

end Interfaces.STM32.USART;
