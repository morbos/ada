--
--  Copyright (C) 2021, AdaCore
--

--  Copyright (c) 2020 Raspberry Pi (Trading) Ltd.
--
--  SPDX-License-Identifier: BSD-3-Clause

--  This spec has been automatically generated from rp2040.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

--  DW_apb_ssi has the following features:\n
--          * APB interface – Allows for easy integration into a DesignWare
--  Synthesizable Components for AMBA 2 implementation.\n
--          * APB3 and APB4 protocol support.\n
--          * Scalable APB data bus width – Supports APB data bus widths of
--  8, 16, and 32 bits.\n
--          * Serial-master or serial-slave operation – Enables serial
--  communication with serial-master or serial-slave peripheral devices.\n
--          * Programmable Dual/Quad/Octal SPI support in Master Mode.\n
--          * Dual Data Rate (DDR) and Read Data Strobe (RDS) Support - Enables
--  the DW_apb_ssi master to perform operations with the device in DDR and RDS
--  modes when working in Dual/Quad/Octal mode of operation.\n
--          * Data Mask Support - Enables the DW_apb_ssi to selectively update
--  the bytes in the device. This feature is applicable only in enhanced SPI
--  modes.\n
--          * eXecute-In-Place (XIP) support - Enables the DW_apb_ssi master to
--  behave as a memory mapped I/O and fetches the data from the device based on
--  the APB read request. This feature is applicable only in enhanced SPI
--  modes.\n
--          * DMA Controller Interface – Enables the DW_apb_ssi to interface
--  to a DMA controller over the bus using a handshaking interface for transfer
--  requests.\n
--          * Independent masking of interrupts – Master collision, transmit
--  FIFO overflow, transmit FIFO empty, receive FIFO full, receive FIFO
--  underflow, and receive FIFO overflow interrupts can all be masked
--  independently.\n
--          * Multi-master contention detection – Informs the processor of
--  multiple serial-master accesses on the serial bus.\n
--          * Bypass of meta-stability flip-flops for synchronous clocks –
--  When the APB clock (pclk) and the DW_apb_ssi serial clock (ssi_clk) are
--  synchronous, meta-stable flip-flops are not used when transferring control
--  signals across these clock domains.\n
--          * Programmable delay on the sample time of the received serial data
--  bit (rxd); enables programmable control of routing delays resulting in
--  higher serial data-bit rates.\n
--          * Programmable features:\n
--          - Serial interface operation – Choice of Motorola SPI, Texas
--  Instruments Synchronous Serial Protocol or National Semiconductor
--  Microwire.\n
--          - Clock bit-rate – Dynamic control of the serial bit rate of the
--  data transfer; used in only serial-master mode of operation.\n
--          - Data Item size (4 to 32 bits) – Item size of each data transfer
--  under the control of the programmer.\n
--          * Configured features:\n
--          - FIFO depth – 16 words deep. The FIFO width is fixed at 32
--  bits.\n
--          - 1 slave select output.\n
--          - Hardware slave-select – Dedicated hardware slave-select line.\n
--          - Combined interrupt line - one combined interrupt line from the
--  DW_apb_ssi to the interrupt controller.\n
--          - Interrupt polarity – active high interrupt lines.\n
--          - Serial clock polarity – low serial-clock polarity directly
--  after reset.\n
--          - Serial clock phase – capture on first edge of serial-clock
--  directly after reset.
package Interfaces.RP.XIP_SSI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRLR0_DFS_Field is Interfaces.Bit_Types.UInt4;
   subtype CTRLR0_FRF_Field is Interfaces.Bit_Types.UInt2;
   subtype CTRLR0_SCPH_Field is Interfaces.Bit_Types.Bit;
   subtype CTRLR0_SCPOL_Field is Interfaces.Bit_Types.Bit;

   --  Transfer mode
   type CTRLR0_TMOD_Field is
     (--  Both transmit and receive
      Tx_And_Rx,
      --  Transmit only (not for FRF == 0, standard SPI mode)
      Tx_Only,
      --  Receive only (not for FRF == 0, standard SPI mode)
      Rx_Only,
      --  EEPROM read mode (TX then RX; RX starts after control data TX'd)
      Eeprom_Read)
     with Size => 2;
   for CTRLR0_TMOD_Field use
     (Tx_And_Rx => 0,
      Tx_Only => 1,
      Rx_Only => 2,
      Eeprom_Read => 3);

   subtype CTRLR0_SLV_OE_Field is Interfaces.Bit_Types.Bit;
   subtype CTRLR0_SRL_Field is Interfaces.Bit_Types.Bit;
   subtype CTRLR0_CFS_Field is Interfaces.Bit_Types.UInt4;
   subtype CTRLR0_DFS_32_Field is Interfaces.Bit_Types.UInt5;

   --  SPI frame format
   type CTRLR0_SPI_FRF_Field is
     (--  Standard 1-bit SPI frame format; 1 bit per SCK, full-duplex
      Std,
      --  Dual-SPI frame format; two bits per SCK, half-duplex
      Dual,
      --  Quad-SPI frame format; four bits per SCK, half-duplex
      Quad)
     with Size => 2;
   for CTRLR0_SPI_FRF_Field use
     (Std => 0,
      Dual => 1,
      Quad => 2);

   subtype CTRLR0_SSTE_Field is Interfaces.Bit_Types.Bit;

   --  Control register 0
   type CTRLR0_Register is record
      --  Data frame size
      DFS            : CTRLR0_DFS_Field := 16#0#;
      --  Frame format
      FRF            : CTRLR0_FRF_Field := 16#0#;
      --  Serial clock phase
      SCPH           : CTRLR0_SCPH_Field := 16#0#;
      --  Serial clock polarity
      SCPOL          : CTRLR0_SCPOL_Field := 16#0#;
      --  Transfer mode
      TMOD           : CTRLR0_TMOD_Field := Interfaces.RP.XIP_SSI.Tx_And_Rx;
      --  Slave output enable
      SLV_OE         : CTRLR0_SLV_OE_Field := 16#0#;
      --  Shift register loop (test mode)
      SRL            : CTRLR0_SRL_Field := 16#0#;
      --  Control frame size\n Value of n -> n+1 clocks per frame.
      CFS            : CTRLR0_CFS_Field := 16#0#;
      --  Data frame size in 32b transfer mode\n Value of n -> n+1 clocks per
      --  frame.
      DFS_32         : CTRLR0_DFS_32_Field := 16#0#;
      --  SPI frame format
      SPI_FRF        : CTRLR0_SPI_FRF_Field := Interfaces.RP.XIP_SSI.Std;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Slave select toggle enable
      SSTE           : CTRLR0_SSTE_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRLR0_Register use record
      DFS            at 0 range 0 .. 3;
      FRF            at 0 range 4 .. 5;
      SCPH           at 0 range 6 .. 6;
      SCPOL          at 0 range 7 .. 7;
      TMOD           at 0 range 8 .. 9;
      SLV_OE         at 0 range 10 .. 10;
      SRL            at 0 range 11 .. 11;
      CFS            at 0 range 12 .. 15;
      DFS_32         at 0 range 16 .. 20;
      SPI_FRF        at 0 range 21 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SSTE           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CTRLR1_NDF_Field is Interfaces.Bit_Types.UInt16;

   --  Master Control register 1
   type CTRLR1_Register is record
      --  Number of data frames
      NDF            : CTRLR1_NDF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRLR1_Register use record
      NDF            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSIENR_SSI_EN_Field is Interfaces.Bit_Types.Bit;

   --  SSI Enable
   type SSIENR_Register is record
      --  SSI enable
      SSI_EN        : SSIENR_SSI_EN_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSIENR_Register use record
      SSI_EN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype MWCR_MWMOD_Field is Interfaces.Bit_Types.Bit;
   subtype MWCR_MDD_Field is Interfaces.Bit_Types.Bit;
   subtype MWCR_MHS_Field is Interfaces.Bit_Types.Bit;

   --  Microwire Control
   type MWCR_Register is record
      --  Microwire transfer mode
      MWMOD         : MWCR_MWMOD_Field := 16#0#;
      --  Microwire control
      MDD           : MWCR_MDD_Field := 16#0#;
      --  Microwire handshaking
      MHS           : MWCR_MHS_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MWCR_Register use record
      MWMOD         at 0 range 0 .. 0;
      MDD           at 0 range 1 .. 1;
      MHS           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype SER_SER_Field is Interfaces.Bit_Types.Bit;

   --  Slave enable
   type SER_Register is record
      --  For each bit:\n 0 -> slave not selected\n 1 -> slave selected
      SER           : SER_SER_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SER_Register use record
      SER           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype BAUDR_SCKDV_Field is Interfaces.Bit_Types.UInt16;

   --  Baud rate
   type BAUDR_Register is record
      --  SSI clock divider
      SCKDV          : BAUDR_SCKDV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BAUDR_Register use record
      SCKDV          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TXFTLR_TFT_Field is Interfaces.Bit_Types.Byte;

   --  TX FIFO threshold level
   type TXFTLR_Register is record
      --  Transmit FIFO threshold
      TFT           : TXFTLR_TFT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXFTLR_Register use record
      TFT           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RXFTLR_RFT_Field is Interfaces.Bit_Types.Byte;

   --  RX FIFO threshold level
   type RXFTLR_Register is record
      --  Receive FIFO threshold
      RFT           : RXFTLR_RFT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXFTLR_Register use record
      RFT           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TXFLR_TFTFL_Field is Interfaces.Bit_Types.Byte;

   --  TX FIFO level
   type TXFLR_Register is record
      --  Read-only. Transmit FIFO level
      TFTFL         : TXFLR_TFTFL_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXFLR_Register use record
      TFTFL         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RXFLR_RXTFL_Field is Interfaces.Bit_Types.Byte;

   --  RX FIFO level
   type RXFLR_Register is record
      --  Read-only. Receive FIFO level
      RXTFL         : RXFLR_RXTFL_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXFLR_Register use record
      RXTFL         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SR_BUSY_Field is Interfaces.Bit_Types.Bit;
   subtype SR_TFNF_Field is Interfaces.Bit_Types.Bit;
   subtype SR_TFE_Field is Interfaces.Bit_Types.Bit;
   subtype SR_RFNE_Field is Interfaces.Bit_Types.Bit;
   subtype SR_RFF_Field is Interfaces.Bit_Types.Bit;
   subtype SR_TXE_Field is Interfaces.Bit_Types.Bit;
   subtype SR_DCOL_Field is Interfaces.Bit_Types.Bit;

   --  Status register
   type SR_Register is record
      --  Read-only. SSI busy flag
      BUSY          : SR_BUSY_Field;
      --  Read-only. Transmit FIFO not full
      TFNF          : SR_TFNF_Field;
      --  Read-only. Transmit FIFO empty
      TFE           : SR_TFE_Field;
      --  Read-only. Receive FIFO not empty
      RFNE          : SR_RFNE_Field;
      --  Read-only. Receive FIFO full
      RFF           : SR_RFF_Field;
      --  Read-only. Transmission error
      TXE           : SR_TXE_Field;
      --  Read-only. Data collision error
      DCOL          : SR_DCOL_Field;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      BUSY          at 0 range 0 .. 0;
      TFNF          at 0 range 1 .. 1;
      TFE           at 0 range 2 .. 2;
      RFNE          at 0 range 3 .. 3;
      RFF           at 0 range 4 .. 4;
      TXE           at 0 range 5 .. 5;
      DCOL          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype IMR_TXEIM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_TXOIM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_RXUIM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_RXOIM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_RXFIM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_MSTIM_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt mask
   type IMR_Register is record
      --  Transmit FIFO empty interrupt mask
      TXEIM         : IMR_TXEIM_Field := 16#0#;
      --  Transmit FIFO overflow interrupt mask
      TXOIM         : IMR_TXOIM_Field := 16#0#;
      --  Receive FIFO underflow interrupt mask
      RXUIM         : IMR_RXUIM_Field := 16#0#;
      --  Receive FIFO overflow interrupt mask
      RXOIM         : IMR_RXOIM_Field := 16#0#;
      --  Receive FIFO full interrupt mask
      RXFIM         : IMR_RXFIM_Field := 16#0#;
      --  Multi-master contention interrupt mask
      MSTIM         : IMR_MSTIM_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR_Register use record
      TXEIM         at 0 range 0 .. 0;
      TXOIM         at 0 range 1 .. 1;
      RXUIM         at 0 range 2 .. 2;
      RXOIM         at 0 range 3 .. 3;
      RXFIM         at 0 range 4 .. 4;
      MSTIM         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype ISR_TXEIS_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TXOIS_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_RXUIS_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_RXOIS_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_RXFIS_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_MSTIS_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt status
   type ISR_Register is record
      --  Read-only. Transmit FIFO empty interrupt status
      TXEIS         : ISR_TXEIS_Field;
      --  Read-only. Transmit FIFO overflow interrupt status
      TXOIS         : ISR_TXOIS_Field;
      --  Read-only. Receive FIFO underflow interrupt status
      RXUIS         : ISR_RXUIS_Field;
      --  Read-only. Receive FIFO overflow interrupt status
      RXOIS         : ISR_RXOIS_Field;
      --  Read-only. Receive FIFO full interrupt status
      RXFIS         : ISR_RXFIS_Field;
      --  Read-only. Multi-master contention interrupt status
      MSTIS         : ISR_MSTIS_Field;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      TXEIS         at 0 range 0 .. 0;
      TXOIS         at 0 range 1 .. 1;
      RXUIS         at 0 range 2 .. 2;
      RXOIS         at 0 range 3 .. 3;
      RXFIS         at 0 range 4 .. 4;
      MSTIS         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype RISR_TXEIR_Field is Interfaces.Bit_Types.Bit;
   subtype RISR_TXOIR_Field is Interfaces.Bit_Types.Bit;
   subtype RISR_RXUIR_Field is Interfaces.Bit_Types.Bit;
   subtype RISR_RXOIR_Field is Interfaces.Bit_Types.Bit;
   subtype RISR_RXFIR_Field is Interfaces.Bit_Types.Bit;
   subtype RISR_MSTIR_Field is Interfaces.Bit_Types.Bit;

   --  Raw interrupt status
   type RISR_Register is record
      --  Read-only. Transmit FIFO empty raw interrupt status
      TXEIR         : RISR_TXEIR_Field;
      --  Read-only. Transmit FIFO overflow raw interrupt status
      TXOIR         : RISR_TXOIR_Field;
      --  Read-only. Receive FIFO underflow raw interrupt status
      RXUIR         : RISR_RXUIR_Field;
      --  Read-only. Receive FIFO overflow raw interrupt status
      RXOIR         : RISR_RXOIR_Field;
      --  Read-only. Receive FIFO full raw interrupt status
      RXFIR         : RISR_RXFIR_Field;
      --  Read-only. Multi-master contention raw interrupt status
      MSTIR         : RISR_MSTIR_Field;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISR_Register use record
      TXEIR         at 0 range 0 .. 0;
      TXOIR         at 0 range 1 .. 1;
      RXUIR         at 0 range 2 .. 2;
      RXOIR         at 0 range 3 .. 3;
      RXFIR         at 0 range 4 .. 4;
      MSTIR         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype TXOICR_TXOICR_Field is Interfaces.Bit_Types.Bit;

   --  TX FIFO overflow interrupt clear
   type TXOICR_Register is record
      --  Read-only. Clear-on-read transmit FIFO overflow interrupt
      TXOICR        : TXOICR_TXOICR_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXOICR_Register use record
      TXOICR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype RXOICR_RXOICR_Field is Interfaces.Bit_Types.Bit;

   --  RX FIFO overflow interrupt clear
   type RXOICR_Register is record
      --  Read-only. Clear-on-read receive FIFO overflow interrupt
      RXOICR        : RXOICR_RXOICR_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXOICR_Register use record
      RXOICR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype RXUICR_RXUICR_Field is Interfaces.Bit_Types.Bit;

   --  RX FIFO underflow interrupt clear
   type RXUICR_Register is record
      --  Read-only. Clear-on-read receive FIFO underflow interrupt
      RXUICR        : RXUICR_RXUICR_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXUICR_Register use record
      RXUICR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype MSTICR_MSTICR_Field is Interfaces.Bit_Types.Bit;

   --  Multi-master interrupt clear
   type MSTICR_Register is record
      --  Read-only. Clear-on-read multi-master contention interrupt
      MSTICR        : MSTICR_MSTICR_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSTICR_Register use record
      MSTICR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ICR_ICR_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt clear
   type ICR_Register is record
      --  Read-only. Clear-on-read all active interrupts
      ICR           : ICR_ICR_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      ICR           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DMACR_RDMAE_Field is Interfaces.Bit_Types.Bit;
   subtype DMACR_TDMAE_Field is Interfaces.Bit_Types.Bit;

   --  DMA control
   type DMACR_Register is record
      --  Receive DMA enable
      RDMAE         : DMACR_RDMAE_Field := 16#0#;
      --  Transmit DMA enable
      TDMAE         : DMACR_TDMAE_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMACR_Register use record
      RDMAE         at 0 range 0 .. 0;
      TDMAE         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DMATDLR_DMATDL_Field is Interfaces.Bit_Types.Byte;

   --  DMA TX data level
   type DMATDLR_Register is record
      --  Transmit data watermark level
      DMATDL        : DMATDLR_DMATDL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMATDLR_Register use record
      DMATDL        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DMARDLR_DMARDL_Field is Interfaces.Bit_Types.Byte;

   --  DMA RX data level
   type DMARDLR_Register is record
      --  Receive data watermark level (DMARDLR+1)
      DMARDL        : DMARDLR_DMARDL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMARDLR_Register use record
      DMARDL        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RX_SAMPLE_DLY_RSD_Field is Interfaces.Bit_Types.Byte;

   --  RX sample delay
   type RX_SAMPLE_DLY_Register is record
      --  RXD sample delay (in SCLK cycles)
      RSD           : RX_SAMPLE_DLY_RSD_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX_SAMPLE_DLY_Register use record
      RSD           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Address and instruction transfer format
   type SPI_CTRLR0_TRANS_TYPE_Field is
     (--  Command and address both in standard SPI frame format
      Val_1C1A,
      --  Command in standard SPI format, address in format specified by FRF
      Val_1C2A,
      --  Command and address both in format specified by FRF (e.g. Dual-SPI)
      Val_2C2A)
     with Size => 2;
   for SPI_CTRLR0_TRANS_TYPE_Field use
     (Val_1C1A => 0,
      Val_1C2A => 1,
      Val_2C2A => 2);

   subtype SPI_CTRLR0_ADDR_L_Field is Interfaces.Bit_Types.UInt4;

   --  Instruction length (0/4/8/16b)
   type SPI_CTRLR0_INST_L_Field is
     (--  No instruction
      None,
      --  4-bit instruction
      Val_4B,
      --  8-bit instruction
      Val_8B,
      --  16-bit instruction
      Val_16B)
     with Size => 2;
   for SPI_CTRLR0_INST_L_Field use
     (None => 0,
      Val_4B => 1,
      Val_8B => 2,
      Val_16B => 3);

   subtype SPI_CTRLR0_WAIT_CYCLES_Field is Interfaces.Bit_Types.UInt5;
   subtype SPI_CTRLR0_SPI_DDR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype SPI_CTRLR0_INST_DDR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype SPI_CTRLR0_SPI_RXDS_EN_Field is Interfaces.Bit_Types.Bit;
   subtype SPI_CTRLR0_XIP_CMD_Field is Interfaces.Bit_Types.Byte;

   --  SPI control
   type SPI_CTRLR0_Register is record
      --  Address and instruction transfer format
      TRANS_TYPE     : SPI_CTRLR0_TRANS_TYPE_Field :=
                        Interfaces.RP.XIP_SSI.Val_1C1A;
      --  Address length (0b-60b in 4b increments)
      ADDR_L         : SPI_CTRLR0_ADDR_L_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Instruction length (0/4/8/16b)
      INST_L         : SPI_CTRLR0_INST_L_Field := Interfaces.RP.XIP_SSI.None;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Wait cycles between control frame transmit and data reception (in
      --  SCLK cycles)
      WAIT_CYCLES    : SPI_CTRLR0_WAIT_CYCLES_Field := 16#0#;
      --  SPI DDR transfer enable
      SPI_DDR_EN     : SPI_CTRLR0_SPI_DDR_EN_Field := 16#0#;
      --  Instruction DDR transfer enable
      INST_DDR_EN    : SPI_CTRLR0_INST_DDR_EN_Field := 16#0#;
      --  Read data strobe enable
      SPI_RXDS_EN    : SPI_CTRLR0_SPI_RXDS_EN_Field := 16#0#;
      --  unspecified
      Reserved_19_23 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  SPI Command to send in XIP mode (INST_L = 8-bit) or to append to
      --  Address (INST_L = 0-bit)
      XIP_CMD        : SPI_CTRLR0_XIP_CMD_Field := 16#3#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_CTRLR0_Register use record
      TRANS_TYPE     at 0 range 0 .. 1;
      ADDR_L         at 0 range 2 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      INST_L         at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WAIT_CYCLES    at 0 range 11 .. 15;
      SPI_DDR_EN     at 0 range 16 .. 16;
      INST_DDR_EN    at 0 range 17 .. 17;
      SPI_RXDS_EN    at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      XIP_CMD        at 0 range 24 .. 31;
   end record;

   subtype TXD_DRIVE_EDGE_TDE_Field is Interfaces.Bit_Types.Byte;

   --  TX drive edge
   type TXD_DRIVE_EDGE_Register is record
      --  TXD drive edge
      TDE           : TXD_DRIVE_EDGE_TDE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXD_DRIVE_EDGE_Register use record
      TDE           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DW_apb_ssi has the following features:\n * APB interface – Allows for
   --  easy integration into a DesignWare Synthesizable Components for AMBA 2
   --  implementation.\n * APB3 and APB4 protocol support.\n * Scalable APB
   --  data bus width – Supports APB data bus widths of 8, 16, and 32 bits.\n
   --  * Serial-master or serial-slave operation – Enables serial
   --  communication with serial-master or serial-slave peripheral devices.\n *
   --  Programmable Dual/Quad/Octal SPI support in Master Mode.\n * Dual Data
   --  Rate (DDR) and Read Data Strobe (RDS) Support - Enables the DW_apb_ssi
   --  master to perform operations with the device in DDR and RDS modes when
   --  working in Dual/Quad/Octal mode of operation.\n * Data Mask Support -
   --  Enables the DW_apb_ssi to selectively update the bytes in the device.
   --  This feature is applicable only in enhanced SPI modes.\n *
   --  eXecute-In-Place (XIP) support - Enables the DW_apb_ssi master to behave
   --  as a memory mapped I/O and fetches the data from the device based on the
   --  APB read request. This feature is applicable only in enhanced SPI
   --  modes.\n * DMA Controller Interface – Enables the DW_apb_ssi to
   --  interface to a DMA controller over the bus using a handshaking interface
   --  for transfer requests.\n * Independent masking of interrupts – Master
   --  collision, transmit FIFO overflow, transmit FIFO empty, receive FIFO
   --  full, receive FIFO underflow, and receive FIFO overflow interrupts can
   --  all be masked independently.\n * Multi-master contention detection –
   --  Informs the processor of multiple serial-master accesses on the serial
   --  bus.\n * Bypass of meta-stability flip-flops for synchronous clocks –
   --  When the APB clock (pclk) and the DW_apb_ssi serial clock (ssi_clk) are
   --  synchronous, meta-stable flip-flops are not used when transferring
   --  control signals across these clock domains.\n * Programmable delay on
   --  the sample time of the received serial data bit (rxd); enables
   --  programmable control of routing delays resulting in higher serial
   --  data-bit rates.\n * Programmable features:\n - Serial interface
   --  operation – Choice of Motorola SPI, Texas Instruments Synchronous
   --  Serial Protocol or National Semiconductor Microwire.\n - Clock bit-rate
   --  – Dynamic control of the serial bit rate of the data transfer; used in
   --  only serial-master mode of operation.\n - Data Item size (4 to 32 bits)
   --  – Item size of each data transfer under the control of the
   --  programmer.\n * Configured features:\n - FIFO depth – 16 words deep.
   --  The FIFO width is fixed at 32 bits.\n - 1 slave select output.\n -
   --  Hardware slave-select – Dedicated hardware slave-select line.\n -
   --  Combined interrupt line - one combined interrupt line from the
   --  DW_apb_ssi to the interrupt controller.\n - Interrupt polarity –
   --  active high interrupt lines.\n - Serial clock polarity – low
   --  serial-clock polarity directly after reset.\n - Serial clock phase –
   --  capture on first edge of serial-clock directly after reset.
   type XIP_SSI_Peripheral is record
      --  Control register 0
      CTRLR0         : aliased CTRLR0_Register;
      --  Master Control register 1
      CTRLR1         : aliased CTRLR1_Register;
      --  SSI Enable
      SSIENR         : aliased SSIENR_Register;
      --  Microwire Control
      MWCR           : aliased MWCR_Register;
      --  Slave enable
      SER            : aliased SER_Register;
      --  Baud rate
      BAUDR          : aliased BAUDR_Register;
      --  TX FIFO threshold level
      TXFTLR         : aliased TXFTLR_Register;
      --  RX FIFO threshold level
      RXFTLR         : aliased RXFTLR_Register;
      --  TX FIFO level
      TXFLR          : aliased TXFLR_Register;
      --  RX FIFO level
      RXFLR          : aliased RXFLR_Register;
      --  Status register
      SR             : aliased SR_Register;
      --  Interrupt mask
      IMR            : aliased IMR_Register;
      --  Interrupt status
      ISR            : aliased ISR_Register;
      --  Raw interrupt status
      RISR           : aliased RISR_Register;
      --  TX FIFO overflow interrupt clear
      TXOICR         : aliased TXOICR_Register;
      --  RX FIFO overflow interrupt clear
      RXOICR         : aliased RXOICR_Register;
      --  RX FIFO underflow interrupt clear
      RXUICR         : aliased RXUICR_Register;
      --  Multi-master interrupt clear
      MSTICR         : aliased MSTICR_Register;
      --  Interrupt clear
      ICR            : aliased ICR_Register;
      --  DMA control
      DMACR          : aliased DMACR_Register;
      --  DMA TX data level
      DMATDLR        : aliased DMATDLR_Register;
      --  DMA RX data level
      DMARDLR        : aliased DMARDLR_Register;
      --  Identification register
      IDR            : aliased Interfaces.Bit_Types.UInt32;
      --  Version ID
      SSI_VERSION_ID : aliased Interfaces.Bit_Types.UInt32;
      --  Data Register 0 (of 36)
      DR0            : aliased Interfaces.Bit_Types.UInt32;
      --  RX sample delay
      RX_SAMPLE_DLY  : aliased RX_SAMPLE_DLY_Register;
      --  SPI control
      SPI_CTRLR0     : aliased SPI_CTRLR0_Register;
      --  TX drive edge
      TXD_DRIVE_EDGE : aliased TXD_DRIVE_EDGE_Register;
   end record
     with Volatile;

   for XIP_SSI_Peripheral use record
      CTRLR0         at 16#0# range 0 .. 31;
      CTRLR1         at 16#4# range 0 .. 31;
      SSIENR         at 16#8# range 0 .. 31;
      MWCR           at 16#C# range 0 .. 31;
      SER            at 16#10# range 0 .. 31;
      BAUDR          at 16#14# range 0 .. 31;
      TXFTLR         at 16#18# range 0 .. 31;
      RXFTLR         at 16#1C# range 0 .. 31;
      TXFLR          at 16#20# range 0 .. 31;
      RXFLR          at 16#24# range 0 .. 31;
      SR             at 16#28# range 0 .. 31;
      IMR            at 16#2C# range 0 .. 31;
      ISR            at 16#30# range 0 .. 31;
      RISR           at 16#34# range 0 .. 31;
      TXOICR         at 16#38# range 0 .. 31;
      RXOICR         at 16#3C# range 0 .. 31;
      RXUICR         at 16#40# range 0 .. 31;
      MSTICR         at 16#44# range 0 .. 31;
      ICR            at 16#48# range 0 .. 31;
      DMACR          at 16#4C# range 0 .. 31;
      DMATDLR        at 16#50# range 0 .. 31;
      DMARDLR        at 16#54# range 0 .. 31;
      IDR            at 16#58# range 0 .. 31;
      SSI_VERSION_ID at 16#5C# range 0 .. 31;
      DR0            at 16#60# range 0 .. 31;
      RX_SAMPLE_DLY  at 16#F0# range 0 .. 31;
      SPI_CTRLR0     at 16#F4# range 0 .. 31;
      TXD_DRIVE_EDGE at 16#F8# range 0 .. 31;
   end record;

   --  DW_apb_ssi has the following features:\n * APB interface – Allows for
   --  easy integration into a DesignWare Synthesizable Components for AMBA 2
   --  implementation.\n * APB3 and APB4 protocol support.\n * Scalable APB
   --  data bus width – Supports APB data bus widths of 8, 16, and 32 bits.\n
   --  * Serial-master or serial-slave operation – Enables serial
   --  communication with serial-master or serial-slave peripheral devices.\n *
   --  Programmable Dual/Quad/Octal SPI support in Master Mode.\n * Dual Data
   --  Rate (DDR) and Read Data Strobe (RDS) Support - Enables the DW_apb_ssi
   --  master to perform operations with the device in DDR and RDS modes when
   --  working in Dual/Quad/Octal mode of operation.\n * Data Mask Support -
   --  Enables the DW_apb_ssi to selectively update the bytes in the device.
   --  This feature is applicable only in enhanced SPI modes.\n *
   --  eXecute-In-Place (XIP) support - Enables the DW_apb_ssi master to behave
   --  as a memory mapped I/O and fetches the data from the device based on the
   --  APB read request. This feature is applicable only in enhanced SPI
   --  modes.\n * DMA Controller Interface – Enables the DW_apb_ssi to
   --  interface to a DMA controller over the bus using a handshaking interface
   --  for transfer requests.\n * Independent masking of interrupts – Master
   --  collision, transmit FIFO overflow, transmit FIFO empty, receive FIFO
   --  full, receive FIFO underflow, and receive FIFO overflow interrupts can
   --  all be masked independently.\n * Multi-master contention detection –
   --  Informs the processor of multiple serial-master accesses on the serial
   --  bus.\n * Bypass of meta-stability flip-flops for synchronous clocks –
   --  When the APB clock (pclk) and the DW_apb_ssi serial clock (ssi_clk) are
   --  synchronous, meta-stable flip-flops are not used when transferring
   --  control signals across these clock domains.\n * Programmable delay on
   --  the sample time of the received serial data bit (rxd); enables
   --  programmable control of routing delays resulting in higher serial
   --  data-bit rates.\n * Programmable features:\n - Serial interface
   --  operation – Choice of Motorola SPI, Texas Instruments Synchronous
   --  Serial Protocol or National Semiconductor Microwire.\n - Clock bit-rate
   --  – Dynamic control of the serial bit rate of the data transfer; used in
   --  only serial-master mode of operation.\n - Data Item size (4 to 32 bits)
   --  – Item size of each data transfer under the control of the
   --  programmer.\n * Configured features:\n - FIFO depth – 16 words deep.
   --  The FIFO width is fixed at 32 bits.\n - 1 slave select output.\n -
   --  Hardware slave-select – Dedicated hardware slave-select line.\n -
   --  Combined interrupt line - one combined interrupt line from the
   --  DW_apb_ssi to the interrupt controller.\n - Interrupt polarity –
   --  active high interrupt lines.\n - Serial clock polarity – low
   --  serial-clock polarity directly after reset.\n - Serial clock phase –
   --  capture on first edge of serial-clock directly after reset.
   XIP_SSI_Periph : aliased XIP_SSI_Peripheral
     with Import, Address => XIP_SSI_Base;

end Interfaces.RP.XIP_SSI;
