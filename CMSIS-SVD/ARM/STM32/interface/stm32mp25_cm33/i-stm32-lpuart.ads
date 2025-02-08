--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.LPUART is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype LPUART_CR1_DEDT_Field is Interfaces.Bit_Types.UInt5;
   subtype LPUART_CR1_DEAT_Field is Interfaces.Bit_Types.UInt5;

   --  LPUART control register 1
   type LPUART_CR1_Register is record
      --  LPUART enable
      UE             : Boolean := False;
      --  LPUART enable in low-power mode
      UESM           : Boolean := False;
      --  Receiver enable
      RE             : Boolean := False;
      --  Transmitter enable
      TE             : Boolean := False;
      --  IDLE interrupt enable
      IDLEIE         : Boolean := False;
      --  RXFIFO not empty interrupt enable
      RXFNEIE        : Boolean := False;
      --  Transmission complete interrupt enable
      TCIE           : Boolean := False;
      --  TXFIFO not full interrupt enable
      TXFNFIE        : Boolean := False;
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
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Driver Enable deassertion time
      DEDT           : LPUART_CR1_DEDT_Field := 16#0#;
      --  Driver Enable assertion time
      DEAT           : LPUART_CR1_DEAT_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Word length
      M1             : Boolean := False;
      --  FIFO mode enable
      FIFOEN         : Boolean := False;
      --  TXFIFO empty interrupt enable
      TXFEIE         : Boolean := False;
      --  RXFIFO Full interrupt enable
      RXFFIE         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPUART_CR1_Register use record
      UE             at 0 range 0 .. 0;
      UESM           at 0 range 1 .. 1;
      RE             at 0 range 2 .. 2;
      TE             at 0 range 3 .. 3;
      IDLEIE         at 0 range 4 .. 4;
      RXFNEIE        at 0 range 5 .. 5;
      TCIE           at 0 range 6 .. 6;
      TXFNFIE        at 0 range 7 .. 7;
      PEIE           at 0 range 8 .. 8;
      PS             at 0 range 9 .. 9;
      PCE            at 0 range 10 .. 10;
      WAKE           at 0 range 11 .. 11;
      M0             at 0 range 12 .. 12;
      MME            at 0 range 13 .. 13;
      CMIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      DEDT           at 0 range 16 .. 20;
      DEAT           at 0 range 21 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      M1             at 0 range 28 .. 28;
      FIFOEN         at 0 range 29 .. 29;
      TXFEIE         at 0 range 30 .. 30;
      RXFFIE         at 0 range 31 .. 31;
   end record;

   subtype LPUART_CR1_ALTERNATE1_DEDT_Field is Interfaces.Bit_Types.UInt5;
   subtype LPUART_CR1_ALTERNATE1_DEAT_Field is Interfaces.Bit_Types.UInt5;

   --  LPUART control register 1
   type LPUART_CR1_ALTERNATE1_Register is record
      --  LPUART enable
      UE             : Boolean := False;
      --  LPUART enable in low-power mode
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
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Driver Enable deassertion time
      DEDT           : LPUART_CR1_ALTERNATE1_DEDT_Field := 16#0#;
      --  Driver Enable assertion time
      DEAT           : LPUART_CR1_ALTERNATE1_DEAT_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Word length
      M1             : Boolean := False;
      --  FIFO mode enable
      FIFOEN         : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPUART_CR1_ALTERNATE1_Register use record
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
      Reserved_15_15 at 0 range 15 .. 15;
      DEDT           at 0 range 16 .. 20;
      DEAT           at 0 range 21 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      M1             at 0 range 28 .. 28;
      FIFOEN         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype LPUART_CR2_STOP_Field is Interfaces.Bit_Types.UInt2;
   subtype LPUART_CR2_ADD_Field is Interfaces.Bit_Types.Byte;

   --  LPUART control register 2
   type LPUART_CR2_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  7-bit Address Detection/4-bit Address Detection
      ADDM7          : Boolean := False;
      --  unspecified
      Reserved_5_11  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  STOP bits
      STOP           : LPUART_CR2_STOP_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Swap TX/RX pins
      SWAP           : Boolean := False;
      --  RX pin active level inversion
      RXINV          : Boolean := False;
      --  TX pin active level inversion
      TXINV          : Boolean := False;
      --  Binary data inversion
      DATAINV        : Boolean := False;
      --  Most significant bit first
      MSBFIRST       : Boolean := False;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Address of the LPUART node
      ADD            : LPUART_CR2_ADD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPUART_CR2_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      ADDM7          at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      STOP           at 0 range 12 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      SWAP           at 0 range 15 .. 15;
      RXINV          at 0 range 16 .. 16;
      TXINV          at 0 range 17 .. 17;
      DATAINV        at 0 range 18 .. 18;
      MSBFIRST       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ADD            at 0 range 24 .. 31;
   end record;

   subtype LPUART_CR3_RXFTCFG_Field is Interfaces.Bit_Types.UInt3;
   subtype LPUART_CR3_TXFTCFG_Field is Interfaces.Bit_Types.UInt3;

   --  LPUART control register 3
   type LPUART_CR3_Register is record
      --  Error interrupt enable
      EIE            : Boolean := False;
      --  unspecified
      Reserved_1_2   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Half-duplex selection
      HDSEL          : Boolean := False;
      --  unspecified
      Reserved_4_5   : Interfaces.Bit_Types.UInt2 := 16#0#;
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
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Overrun Disable
      OVRDIS         : Boolean := False;
      --  DMA Disable on reception Error
      DDRE           : Boolean := False;
      --  Driver enable mode
      DEM            : Boolean := False;
      --  Driver enable polarity selection
      DEP            : Boolean := False;
      --  unspecified
      Reserved_16_22 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  TXFIFO threshold interrupt enable
      TXFTIE         : Boolean := False;
      --  unspecified
      Reserved_24_24 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Receive FIFO threshold configuration
      RXFTCFG        : LPUART_CR3_RXFTCFG_Field := 16#0#;
      --  RXFIFO threshold interrupt enable
      RXFTIE         : Boolean := False;
      --  TXFIFO threshold configuration
      TXFTCFG        : LPUART_CR3_TXFTCFG_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPUART_CR3_Register use record
      EIE            at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      HDSEL          at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DMAR           at 0 range 6 .. 6;
      DMAT           at 0 range 7 .. 7;
      RTSE           at 0 range 8 .. 8;
      CTSE           at 0 range 9 .. 9;
      CTSIE          at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      OVRDIS         at 0 range 12 .. 12;
      DDRE           at 0 range 13 .. 13;
      DEM            at 0 range 14 .. 14;
      DEP            at 0 range 15 .. 15;
      Reserved_16_22 at 0 range 16 .. 22;
      TXFTIE         at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      RXFTCFG        at 0 range 25 .. 27;
      RXFTIE         at 0 range 28 .. 28;
      TXFTCFG        at 0 range 29 .. 31;
   end record;

   --  LPUART control register 3
   type LPUART_CR3_ALTERNATE1_Register is record
      --  Error interrupt enable
      EIE            : Boolean := False;
      --  unspecified
      Reserved_1_2   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Half-duplex selection
      HDSEL          : Boolean := False;
      --  unspecified
      Reserved_4_5   : Interfaces.Bit_Types.UInt2 := 16#0#;
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
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Overrun Disable
      OVRDIS         : Boolean := False;
      --  DMA Disable on reception Error
      DDRE           : Boolean := False;
      --  Driver enable mode
      DEM            : Boolean := False;
      --  Driver enable polarity selection
      DEP            : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPUART_CR3_ALTERNATE1_Register use record
      EIE            at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      HDSEL          at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DMAR           at 0 range 6 .. 6;
      DMAT           at 0 range 7 .. 7;
      RTSE           at 0 range 8 .. 8;
      CTSE           at 0 range 9 .. 9;
      CTSIE          at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      OVRDIS         at 0 range 12 .. 12;
      DDRE           at 0 range 13 .. 13;
      DEM            at 0 range 14 .. 14;
      DEP            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPUART_BRR_BRR_Field is Interfaces.Bit_Types.UInt20;

   --  LPUART baud rate register
   type LPUART_BRR_Register is record
      --  LPUART baud rate division (LPUARTDIV)
      BRR            : LPUART_BRR_BRR_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPUART_BRR_Register use record
      BRR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  LPUART request register
   type LPUART_RQR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
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

   for LPUART_RQR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      SBKRQ         at 0 range 1 .. 1;
      MMRQ          at 0 range 2 .. 2;
      RXFRQ         at 0 range 3 .. 3;
      TXFRQ         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  LPUART interrupt and status register
   type LPUART_ISR_Register is record
      --  Read-only. Parity error
      PE             : Boolean;
      --  Read-only. Framing error
      FE             : Boolean;
      --  Read-only. Start bit noise detection flag
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
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit;
      --  Read-only. CTS interrupt flag
      CTSIF          : Boolean;
      --  Read-only. CTS flag
      CTS            : Boolean;
      --  unspecified
      Reserved_11_15 : Interfaces.Bit_Types.UInt5;
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
      --  unspecified
      Reserved_25_25 : Interfaces.Bit_Types.Bit;
      --  Read-only. RXFIFO threshold flag
      RXFT           : Boolean;
      --  Read-only. TXFIFO threshold flag
      TXFT           : Boolean;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPUART_ISR_Register use record
      PE             at 0 range 0 .. 0;
      FE             at 0 range 1 .. 1;
      NE             at 0 range 2 .. 2;
      ORE            at 0 range 3 .. 3;
      IDLE           at 0 range 4 .. 4;
      RXFNE          at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      TXFNF          at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CTSIF          at 0 range 9 .. 9;
      CTS            at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      BUSY           at 0 range 16 .. 16;
      CMF            at 0 range 17 .. 17;
      SBKF           at 0 range 18 .. 18;
      RWU            at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      TEACK          at 0 range 21 .. 21;
      REACK          at 0 range 22 .. 22;
      TXFE           at 0 range 23 .. 23;
      RXFF           at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      RXFT           at 0 range 26 .. 26;
      TXFT           at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  LPUART interrupt and status register
   type LPUART_ISR_ALTERNATE1_Register is record
      --  Read-only. Parity error
      PE             : Boolean;
      --  Read-only. Framing error
      FE             : Boolean;
      --  Read-only. Start bit noise detection flag
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
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit;
      --  Read-only. CTS interrupt flag
      CTSIF          : Boolean;
      --  Read-only. CTS flag
      CTS            : Boolean;
      --  unspecified
      Reserved_11_15 : Interfaces.Bit_Types.UInt5;
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
      Reserved_23_31 : Interfaces.Bit_Types.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPUART_ISR_ALTERNATE1_Register use record
      PE             at 0 range 0 .. 0;
      FE             at 0 range 1 .. 1;
      NE             at 0 range 2 .. 2;
      ORE            at 0 range 3 .. 3;
      IDLE           at 0 range 4 .. 4;
      RXNE           at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      TXE            at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CTSIF          at 0 range 9 .. 9;
      CTS            at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      BUSY           at 0 range 16 .. 16;
      CMF            at 0 range 17 .. 17;
      SBKF           at 0 range 18 .. 18;
      RWU            at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      TEACK          at 0 range 21 .. 21;
      REACK          at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  LPUART interrupt flag clear register
   type LPUART_ICR_Register is record
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
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Transmission complete clear flag
      TCCF           : Boolean := False;
      --  unspecified
      Reserved_7_8   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. CTS clear flag
      CTSCF          : Boolean := False;
      --  unspecified
      Reserved_10_16 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. Character match clear flag
      CMCF           : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPUART_ICR_Register use record
      PECF           at 0 range 0 .. 0;
      FECF           at 0 range 1 .. 1;
      NECF           at 0 range 2 .. 2;
      ORECF          at 0 range 3 .. 3;
      IDLECF         at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      TCCF           at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      CTSCF          at 0 range 9 .. 9;
      Reserved_10_16 at 0 range 10 .. 16;
      CMCF           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype LPUART_RDR_RDR_Field is Interfaces.Bit_Types.UInt9;

   --  LPUART receive data register
   type LPUART_RDR_Register is record
      --  Read-only. Receive data value
      RDR           : LPUART_RDR_RDR_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPUART_RDR_Register use record
      RDR           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype LPUART_TDR_TDR_Field is Interfaces.Bit_Types.UInt9;

   --  LPUART transmit data register
   type LPUART_TDR_Register is record
      --  Transmit data value
      TDR           : LPUART_TDR_TDR_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPUART_TDR_Register use record
      TDR           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype LPUART_PRESC_PRESCALER_Field is Interfaces.Bit_Types.UInt4;

   --  LPUART prescaler register
   type LPUART_PRESC_Register is record
      --  Clock prescaler
      PRESCALER     : LPUART_PRESC_PRESCALER_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPUART_PRESC_Register use record
      PRESCALER     at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype LPUART_AUTOCR_TDN_Field is Interfaces.Bit_Types.UInt16;
   subtype LPUART_AUTOCR_TRIGSEL_Field is Interfaces.Bit_Types.UInt4;

   --  LPUART autonomous mode control register
   type LPUART_AUTOCR_Register is record
      --  TDC transmission data number
      TDN            : LPUART_AUTOCR_TDN_Field := 16#0#;
      --  Trigger polarity bit
      TRIGPOL        : Boolean := False;
      --  Trigger enable bit
      TRIGEN         : Boolean := False;
      --  Idle frame transmission disable bit after enabling the transmitter
      IDLEDIS        : Boolean := False;
      --  Trigger selection bits
      TRIGSEL        : LPUART_AUTOCR_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#100#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPUART_AUTOCR_Register use record
      TDN            at 0 range 0 .. 15;
      TRIGPOL        at 0 range 16 .. 16;
      TRIGEN         at 0 range 17 .. 17;
      IDLEDIS        at 0 range 18 .. 18;
      TRIGSEL        at 0 range 19 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  LPUART_HWCFGR2_CFG array element
   subtype LPUART_HWCFGR2_CFG_Element is Interfaces.Bit_Types.UInt4;

   --  LPUART_HWCFGR2_CFG array
   type LPUART_HWCFGR2_CFG_Field_Array is array (1 .. 3)
     of LPUART_HWCFGR2_CFG_Element
     with Component_Size => 4, Size => 12;

   --  Type definition for LPUART_HWCFGR2_CFG
   type LPUART_HWCFGR2_CFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFG as a value
            Val : Interfaces.Bit_Types.UInt12;
         when True =>
            --  CFG as an array
            Arr : LPUART_HWCFGR2_CFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for LPUART_HWCFGR2_CFG_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  LPUART hardware configuration register 2
   type LPUART_HWCFGR2_Register is record
      --  Read-only. LPUART hardware configuration 1
      CFG            : LPUART_HWCFGR2_CFG_Field;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPUART_HWCFGR2_Register use record
      CFG            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  LPUART_HWCFGR1_CFG array element
   subtype LPUART_HWCFGR1_CFG_Element is Interfaces.Bit_Types.UInt4;

   --  LPUART_HWCFGR1_CFG array
   type LPUART_HWCFGR1_CFG_Field_Array is array (1 .. 8)
     of LPUART_HWCFGR1_CFG_Element
     with Component_Size => 4, Size => 32;

   --  LPUART hardware configuration register 1
   type LPUART_HWCFGR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFG as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  CFG as an array
            Arr : LPUART_HWCFGR1_CFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPUART_HWCFGR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype LPUART_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype LPUART_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  LPUART version register
   type LPUART_VERR_Register is record
      --  Read-only. Minor revision
      MINREV        : LPUART_VERR_MINREV_Field;
      --  Read-only. Major revision
      MAJREV        : LPUART_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPUART_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type LPUART_Disc is
     (Default,
      Alternate1);

   --  LPUART address block description
   type LPUART_Peripheral
     (Discriminent : LPUART_Disc := Default)
   is record
      --  LPUART control register 2
      LPUART_CR2            : aliased LPUART_CR2_Register;
      --  LPUART baud rate register
      LPUART_BRR            : aliased LPUART_BRR_Register;
      --  LPUART request register
      LPUART_RQR            : aliased LPUART_RQR_Register;
      --  LPUART interrupt flag clear register
      LPUART_ICR            : aliased LPUART_ICR_Register;
      --  LPUART receive data register
      LPUART_RDR            : aliased LPUART_RDR_Register;
      --  LPUART transmit data register
      LPUART_TDR            : aliased LPUART_TDR_Register;
      --  LPUART prescaler register
      LPUART_PRESC          : aliased LPUART_PRESC_Register;
      --  LPUART autonomous mode control register
      LPUART_AUTOCR         : aliased LPUART_AUTOCR_Register;
      --  LPUART hardware configuration register 2
      LPUART_HWCFGR2        : aliased LPUART_HWCFGR2_Register;
      --  LPUART hardware configuration register 1
      LPUART_HWCFGR1        : aliased LPUART_HWCFGR1_Register;
      --  LPUART version register
      LPUART_VERR           : aliased LPUART_VERR_Register;
      --  LPUART identification register
      LPUART_IPIDR          : aliased Interfaces.Bit_Types.UInt32;
      --  LPUART size identification register
      LPUART_SIDR           : aliased Interfaces.Bit_Types.UInt32;
      case Discriminent is
         when Default =>
            --  LPUART control register 1
            LPUART_CR1 : aliased LPUART_CR1_Register;
            --  LPUART control register 3
            LPUART_CR3 : aliased LPUART_CR3_Register;
            --  LPUART interrupt and status register
            LPUART_ISR : aliased LPUART_ISR_Register;
         when Alternate1 =>
            --  LPUART control register 1
            LPUART_CR1_ALTERNATE1 : aliased LPUART_CR1_ALTERNATE1_Register;
            --  LPUART control register 3
            LPUART_CR3_ALTERNATE1 : aliased LPUART_CR3_ALTERNATE1_Register;
            --  LPUART interrupt and status register
            LPUART_ISR_ALTERNATE1 : aliased LPUART_ISR_ALTERNATE1_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for LPUART_Peripheral use record
      LPUART_CR2            at 16#4# range 0 .. 31;
      LPUART_BRR            at 16#C# range 0 .. 31;
      LPUART_RQR            at 16#18# range 0 .. 31;
      LPUART_ICR            at 16#20# range 0 .. 31;
      LPUART_RDR            at 16#24# range 0 .. 31;
      LPUART_TDR            at 16#28# range 0 .. 31;
      LPUART_PRESC          at 16#2C# range 0 .. 31;
      LPUART_AUTOCR         at 16#30# range 0 .. 31;
      LPUART_HWCFGR2        at 16#3EC# range 0 .. 31;
      LPUART_HWCFGR1        at 16#3F0# range 0 .. 31;
      LPUART_VERR           at 16#3F4# range 0 .. 31;
      LPUART_IPIDR          at 16#3F8# range 0 .. 31;
      LPUART_SIDR           at 16#3FC# range 0 .. 31;
      LPUART_CR1            at 16#0# range 0 .. 31;
      LPUART_CR3            at 16#8# range 0 .. 31;
      LPUART_ISR            at 16#1C# range 0 .. 31;
      LPUART_CR1_ALTERNATE1 at 16#0# range 0 .. 31;
      LPUART_CR3_ALTERNATE1 at 16#8# range 0 .. 31;
      LPUART_ISR_ALTERNATE1 at 16#1C# range 0 .. 31;
   end record;

   --  LPUART address block description
   LPUART_Periph : aliased LPUART_Peripheral
     with Import, Address => LPUART_Base;

   --  LPUART address block description
   LPUART1_S_Periph : aliased LPUART_Peripheral
     with Import, Address => LPUART1_S_Base;

end Interfaces.STM32.LPUART;
