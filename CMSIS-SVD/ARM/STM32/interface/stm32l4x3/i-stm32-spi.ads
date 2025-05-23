--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32L4x3.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.SPI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_CPHA_Field is Interfaces.Bit_Types.Bit;
   subtype CR1_CPOL_Field is Interfaces.Bit_Types.Bit;
   subtype CR1_MSTR_Field is Interfaces.Bit_Types.Bit;
   subtype CR1_BR_Field is Interfaces.Bit_Types.UInt3;
   subtype CR1_SPE_Field is Interfaces.Bit_Types.Bit;
   subtype CR1_LSBFIRST_Field is Interfaces.Bit_Types.Bit;
   subtype CR1_SSI_Field is Interfaces.Bit_Types.Bit;
   subtype CR1_SSM_Field is Interfaces.Bit_Types.Bit;
   subtype CR1_RXONLY_Field is Interfaces.Bit_Types.Bit;
   subtype CR1_DFF_Field is Interfaces.Bit_Types.Bit;
   subtype CR1_CRCNEXT_Field is Interfaces.Bit_Types.Bit;
   subtype CR1_CRCEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR1_BIDIOE_Field is Interfaces.Bit_Types.Bit;
   subtype CR1_BIDIMODE_Field is Interfaces.Bit_Types.Bit;

   --  control register 1
   type CR1_Register is record
      --  Clock phase
      CPHA           : CR1_CPHA_Field := 16#0#;
      --  Clock polarity
      CPOL           : CR1_CPOL_Field := 16#0#;
      --  Master selection
      MSTR           : CR1_MSTR_Field := 16#0#;
      --  Baud rate control
      BR             : CR1_BR_Field := 16#0#;
      --  SPI enable
      SPE            : CR1_SPE_Field := 16#0#;
      --  Frame format
      LSBFIRST       : CR1_LSBFIRST_Field := 16#0#;
      --  Internal slave select
      SSI            : CR1_SSI_Field := 16#0#;
      --  Software slave management
      SSM            : CR1_SSM_Field := 16#0#;
      --  Receive only
      RXONLY         : CR1_RXONLY_Field := 16#0#;
      --  Data frame format
      DFF            : CR1_DFF_Field := 16#0#;
      --  CRC transfer next
      CRCNEXT        : CR1_CRCNEXT_Field := 16#0#;
      --  Hardware CRC calculation enable
      CRCEN          : CR1_CRCEN_Field := 16#0#;
      --  Output enable in bidirectional mode
      BIDIOE         : CR1_BIDIOE_Field := 16#0#;
      --  Bidirectional data mode enable
      BIDIMODE       : CR1_BIDIMODE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
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

   subtype CR2_RXDMAEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR2_TXDMAEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR2_SSOE_Field is Interfaces.Bit_Types.Bit;
   subtype CR2_NSSP_Field is Interfaces.Bit_Types.Bit;
   subtype CR2_FRF_Field is Interfaces.Bit_Types.Bit;
   subtype CR2_ERRIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR2_RXNEIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR2_TXEIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR2_DS_Field is Interfaces.Bit_Types.UInt4;
   subtype CR2_FRXTH_Field is Interfaces.Bit_Types.Bit;
   subtype CR2_LDMA_RX_Field is Interfaces.Bit_Types.Bit;
   subtype CR2_LDMA_TX_Field is Interfaces.Bit_Types.Bit;

   --  control register 2
   type CR2_Register is record
      --  Rx buffer DMA enable
      RXDMAEN        : CR2_RXDMAEN_Field := 16#0#;
      --  Tx buffer DMA enable
      TXDMAEN        : CR2_TXDMAEN_Field := 16#0#;
      --  SS output enable
      SSOE           : CR2_SSOE_Field := 16#0#;
      --  NSS pulse management
      NSSP           : CR2_NSSP_Field := 16#0#;
      --  Frame format
      FRF            : CR2_FRF_Field := 16#0#;
      --  Error interrupt enable
      ERRIE          : CR2_ERRIE_Field := 16#0#;
      --  RX buffer not empty interrupt enable
      RXNEIE         : CR2_RXNEIE_Field := 16#0#;
      --  Tx buffer empty interrupt enable
      TXEIE          : CR2_TXEIE_Field := 16#0#;
      --  Data size
      DS             : CR2_DS_Field := 16#0#;
      --  FIFO reception threshold
      FRXTH          : CR2_FRXTH_Field := 16#0#;
      --  Last DMA transfer for reception
      LDMA_RX        : CR2_LDMA_RX_Field := 16#0#;
      --  Last DMA transfer for transmission
      LDMA_TX        : CR2_LDMA_TX_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
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
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype SR_RXNE_Field is Interfaces.Bit_Types.Bit;
   subtype SR_TXE_Field is Interfaces.Bit_Types.Bit;
   subtype SR_CRCERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_MODF_Field is Interfaces.Bit_Types.Bit;
   subtype SR_OVR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_BSY_Field is Interfaces.Bit_Types.Bit;
   subtype SR_TIFRFE_Field is Interfaces.Bit_Types.Bit;
   subtype SR_FRLVL_Field is Interfaces.Bit_Types.UInt2;
   subtype SR_FTLVL_Field is Interfaces.Bit_Types.UInt2;

   --  status register
   type SR_Register is record
      --  Read-only. Receive buffer not empty
      RXNE           : SR_RXNE_Field := 16#0#;
      --  Read-only. Transmit buffer empty
      TXE            : SR_TXE_Field := 16#1#;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  CRC error flag
      CRCERR         : SR_CRCERR_Field := 16#0#;
      --  Read-only. Mode fault
      MODF           : SR_MODF_Field := 16#0#;
      --  Read-only. Overrun flag
      OVR            : SR_OVR_Field := 16#0#;
      --  Read-only. Busy flag
      BSY            : SR_BSY_Field := 16#0#;
      --  Read-only. TI frame format error
      TIFRFE         : SR_TIFRFE_Field := 16#0#;
      --  Read-only. FIFO reception level
      FRLVL          : SR_FRLVL_Field := 16#0#;
      --  Read-only. FIFO transmission level
      FTLVL          : SR_FTLVL_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      RXNE           at 0 range 0 .. 0;
      TXE            at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CRCERR         at 0 range 4 .. 4;
      MODF           at 0 range 5 .. 5;
      OVR            at 0 range 6 .. 6;
      BSY            at 0 range 7 .. 7;
      TIFRFE         at 0 range 8 .. 8;
      FRLVL          at 0 range 9 .. 10;
      FTLVL          at 0 range 11 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype DR_DR_Field is Interfaces.Bit_Types.UInt16;

   --  data register
   type DR_Register is record
      --  Data register
      DR             : DR_DR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      DR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CRCPR_CRCPOLY_Field is Interfaces.Bit_Types.UInt16;

   --  CRC polynomial register
   type CRCPR_Register is record
      --  CRC polynomial register
      CRCPOLY        : CRCPR_CRCPOLY_Field := 16#7#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCPR_Register use record
      CRCPOLY        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RXCRCR_RxCRC_Field is Interfaces.Bit_Types.UInt16;

   --  RX CRC register
   type RXCRCR_Register is record
      --  Read-only. Rx CRC register
      RxCRC          : RXCRCR_RxCRC_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXCRCR_Register use record
      RxCRC          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TXCRCR_TxCRC_Field is Interfaces.Bit_Types.UInt16;

   --  TX CRC register
   type TXCRCR_Register is record
      --  Read-only. Tx CRC register
      TxCRC          : TXCRCR_TxCRC_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXCRCR_Register use record
      TxCRC          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial peripheral interface/Inter-IC sound
   type SPI_Peripheral is record
      --  control register 1
      CR1    : aliased CR1_Register;
      --  control register 2
      CR2    : aliased CR2_Register;
      --  status register
      SR     : aliased SR_Register;
      --  data register
      DR     : aliased DR_Register;
      --  CRC polynomial register
      CRCPR  : aliased CRCPR_Register;
      --  RX CRC register
      RXCRCR : aliased RXCRCR_Register;
      --  TX CRC register
      TXCRCR : aliased TXCRCR_Register;
   end record
     with Volatile;

   for SPI_Peripheral use record
      CR1    at 16#0# range 0 .. 31;
      CR2    at 16#4# range 0 .. 31;
      SR     at 16#8# range 0 .. 31;
      DR     at 16#C# range 0 .. 31;
      CRCPR  at 16#10# range 0 .. 31;
      RXCRCR at 16#14# range 0 .. 31;
      TXCRCR at 16#18# range 0 .. 31;
   end record;

   --  Serial peripheral interface/Inter-IC sound
   SPI1_Periph : aliased SPI_Peripheral
     with Import, Address => SPI1_Base;

   --  Serial peripheral interface/Inter-IC sound
   SPI2_Periph : aliased SPI_Peripheral
     with Import, Address => SPI2_Base;

   --  Serial peripheral interface/Inter-IC sound
   SPI3_Periph : aliased SPI_Peripheral
     with Import, Address => SPI3_Base;

end Interfaces.STM32.SPI;
