--
--  Copyright (C) 2026, AdaCore
--

--  This spec has been automatically generated from CH32V003xx.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.CH32.SPI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTLR1_BR_Field is Interfaces.Bit_Types.UInt3;

   --  control register 1
   type CTLR1_Register is record
      --  Clock phase
      CPHA           : Boolean := False;
      --  Clock polarity
      CPOL           : Boolean := False;
      --  Master selection
      MSTR           : Boolean := False;
      --  Baud rate control
      BR             : CTLR1_BR_Field := 16#0#;
      --  SPI enable
      SPE            : Boolean := False;
      --  Frame format
      LSBFIRST       : Boolean := False;
      --  Internal slave select
      SSI            : Boolean := False;
      --  Software slave management
      SSM            : Boolean := False;
      --  Receive only
      RXONLY         : Boolean := False;
      --  Data frame format
      DFF            : Boolean := False;
      --  CRC transfer next
      CRCNEXT        : Boolean := False;
      --  Hardware CRC calculation enable
      CRCEN          : Boolean := False;
      --  Output enable in bidirectional mode
      BIDIOE         : Boolean := False;
      --  Bidirectional data mode enable
      BIDIMODE       : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLR1_Register use record
      CPHA           at 0 range 0 .. 0;
      CPOL           at 0 range 1 .. 1;
      MSTR           at 0 range 2 .. 2;
      BR             at 0 range 3 .. 5;
      SPE            at 0 range 6 .. 6;
      LSBFIRST       at 0 range 7 .. 7;
      SSI            at 0 range 8 .. 8;
      SSM            at 0 range 9 .. 9;
      RXONLY         at 0 range 10 .. 10;
      DFF            at 0 range 11 .. 11;
      CRCNEXT        at 0 range 12 .. 12;
      CRCEN          at 0 range 13 .. 13;
      BIDIOE         at 0 range 14 .. 14;
      BIDIMODE       at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  control register 2
   type CTLR2_Register is record
      --  Rx buffer DMA enable
      RXDMAEN       : Boolean := False;
      --  Tx buffer DMA enable
      TXDMAEN       : Boolean := False;
      --  SS output enable
      SSOE          : Boolean := False;
      --  unspecified
      Reserved_3_4  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Error interrupt enable
      ERRIE         : Boolean := False;
      --  RX buffer not empty interrupt enable
      RXNEIE        : Boolean := False;
      --  Tx buffer empty interrupt enable
      TXEIE         : Boolean := False;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLR2_Register use record
      RXDMAEN       at 0 range 0 .. 0;
      TXDMAEN       at 0 range 1 .. 1;
      SSOE          at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      ERRIE         at 0 range 5 .. 5;
      RXNEIE        at 0 range 6 .. 6;
      TXEIE         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  status register
   type STATR_Register is record
      --  Read-only. Receive buffer not empty
      RXNE          : Boolean := False;
      --  Read-only. Transmit buffer empty
      TXE           : Boolean := True;
      --  Read-only. Channel side
      CHSID         : Boolean := False;
      --  Read-only. Underrun flag
      UDR           : Boolean := False;
      --  CRC error flag
      CRCERR        : Boolean := False;
      --  Read-only. Mode fault
      MODF          : Boolean := False;
      --  Overrun flag
      OVR           : Boolean := False;
      --  Read-only. Busy flag
      BSY           : Boolean := False;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATR_Register use record
      RXNE          at 0 range 0 .. 0;
      TXE           at 0 range 1 .. 1;
      CHSID         at 0 range 2 .. 2;
      UDR           at 0 range 3 .. 3;
      CRCERR        at 0 range 4 .. 4;
      MODF          at 0 range 5 .. 5;
      OVR           at 0 range 6 .. 6;
      BSY           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATAR_DATAR_Field is Interfaces.Bit_Types.UInt16;

   --  data register
   type DATAR_Register is record
      --  Data register
      DATAR          : DATAR_DATAR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATAR_Register use record
      DATAR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CRCR_CRCPOLY_Field is Interfaces.Bit_Types.UInt16;

   --  CRCR polynomial register
   type CRCR_Register is record
      --  CRC polynomial register
      CRCPOLY        : CRCR_CRCPOLY_Field := 16#7#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCR_Register use record
      CRCPOLY        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RCRCR_RXCRC_Field is Interfaces.Bit_Types.UInt16;

   --  RX CRC register
   type RCRCR_Register is record
      --  Read-only. Rx CRC register
      RXCRC          : RCRCR_RXCRC_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCRCR_Register use record
      RXCRC          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TCRCR_TXCRC_Field is Interfaces.Bit_Types.UInt16;

   --  send CRC register
   type TCRCR_Register is record
      --  Read-only. Tx CRC register
      TXCRC          : TCRCR_TXCRC_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCRCR_Register use record
      TXCRC          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  high speed control register
   type HSCR_Register is record
      --  Write-only. High speed mode read enable
      HSRXEN        : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSCR_Register use record
      HSRXEN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial peripheral interface
   type SPI1_Peripheral is record
      --  control register 1
      CTLR1 : aliased CTLR1_Register;
      --  control register 2
      CTLR2 : aliased CTLR2_Register;
      --  status register
      STATR : aliased STATR_Register;
      --  data register
      DATAR : aliased DATAR_Register;
      --  CRCR polynomial register
      CRCR  : aliased CRCR_Register;
      --  RX CRC register
      RCRCR : aliased RCRCR_Register;
      --  send CRC register
      TCRCR : aliased TCRCR_Register;
      --  high speed control register
      HSCR  : aliased HSCR_Register;
   end record
     with Volatile;

   for SPI1_Peripheral use record
      CTLR1 at 16#0# range 0 .. 31;
      CTLR2 at 16#4# range 0 .. 31;
      STATR at 16#8# range 0 .. 31;
      DATAR at 16#C# range 0 .. 31;
      CRCR  at 16#10# range 0 .. 31;
      RCRCR at 16#14# range 0 .. 31;
      TCRCR at 16#18# range 0 .. 31;
      HSCR  at 16#24# range 0 .. 31;
   end record;

   --  Serial peripheral interface
   SPI1_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI1_Base;

end Interfaces.CH32.SPI;
