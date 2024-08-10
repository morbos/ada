--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32L4x3.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.SWPMI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR_RXDMA_Field is Interfaces.Bit_Types.Bit;
   subtype CR_TXDMA_Field is Interfaces.Bit_Types.Bit;
   subtype CR_RXMODE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_TXMODE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_LPBK_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SWPME_Field is Interfaces.Bit_Types.Bit;
   subtype CR_DEACT_Field is Interfaces.Bit_Types.Bit;

   --  SWPMI Configuration/Control register
   type CR_Register is record
      --  Reception DMA enable
      RXDMA          : CR_RXDMA_Field := 16#0#;
      --  Transmission DMA enable
      TXDMA          : CR_TXDMA_Field := 16#0#;
      --  Reception buffering mode
      RXMODE         : CR_RXMODE_Field := 16#0#;
      --  Transmission buffering mode
      TXMODE         : CR_TXMODE_Field := 16#0#;
      --  Loopback mode enable
      LPBK           : CR_LPBK_Field := 16#0#;
      --  Single wire protocol master interface enable
      SWPME          : CR_SWPME_Field := 16#0#;
      --  unspecified
      Reserved_6_9   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Single wire protocol master interface deactivate
      DEACT          : CR_DEACT_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      RXDMA          at 0 range 0 .. 0;
      TXDMA          at 0 range 1 .. 1;
      RXMODE         at 0 range 2 .. 2;
      TXMODE         at 0 range 3 .. 3;
      LPBK           at 0 range 4 .. 4;
      SWPME          at 0 range 5 .. 5;
      Reserved_6_9   at 0 range 6 .. 9;
      DEACT          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype BRR_BR_Field is Interfaces.Bit_Types.UInt6;

   --  SWPMI Bitrate register
   type BRR_Register is record
      --  Bitrate prescaler
      BR            : BRR_BR_Field := 16#1#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRR_Register use record
      BR            at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype ISR_RXBFF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TXBEF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_RXBERF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_RXOVRF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TXUNRF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_RXNE_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TXE_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TCF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_SRF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_SUSP_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_DEACTF_Field is Interfaces.Bit_Types.Bit;

   --  SWPMI Interrupt and Status register
   type ISR_Register is record
      --  Read-only. Receive buffer full flag
      RXBFF          : ISR_RXBFF_Field;
      --  Read-only. Transmit buffer empty flag
      TXBEF          : ISR_TXBEF_Field;
      --  Read-only. Receive CRC error flag
      RXBERF         : ISR_RXBERF_Field;
      --  Read-only. Receive overrun error flag
      RXOVRF         : ISR_RXOVRF_Field;
      --  Read-only. Transmit underrun error flag
      TXUNRF         : ISR_TXUNRF_Field;
      --  Read-only. Receive data register not empty
      RXNE           : ISR_RXNE_Field;
      --  Read-only. Transmit data register empty
      TXE            : ISR_TXE_Field;
      --  Read-only. Transfer complete flag
      TCF            : ISR_TCF_Field;
      --  Read-only. Slave resume flag
      SRF            : ISR_SRF_Field;
      --  Read-only. SUSPEND flag
      SUSP           : ISR_SUSP_Field;
      --  Read-only. DEACTIVATED flag
      DEACTF         : ISR_DEACTF_Field;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      RXBFF          at 0 range 0 .. 0;
      TXBEF          at 0 range 1 .. 1;
      RXBERF         at 0 range 2 .. 2;
      RXOVRF         at 0 range 3 .. 3;
      TXUNRF         at 0 range 4 .. 4;
      RXNE           at 0 range 5 .. 5;
      TXE            at 0 range 6 .. 6;
      TCF            at 0 range 7 .. 7;
      SRF            at 0 range 8 .. 8;
      SUSP           at 0 range 9 .. 9;
      DEACTF         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype ICR_CRXBFF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_CTXBEF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_CRXBERF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_CRXOVRF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_CTXUNRF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_CTCF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_CSRF_Field is Interfaces.Bit_Types.Bit;

   --  SWPMI Interrupt Flag Clear register
   type ICR_Register is record
      --  Write-only. Clear receive buffer full flag
      CRXBFF        : ICR_CRXBFF_Field := 16#0#;
      --  Write-only. Clear transmit buffer empty flag
      CTXBEF        : ICR_CTXBEF_Field := 16#0#;
      --  Write-only. Clear receive CRC error flag
      CRXBERF       : ICR_CRXBERF_Field := 16#0#;
      --  Write-only. Clear receive overrun error flag
      CRXOVRF       : ICR_CRXOVRF_Field := 16#0#;
      --  Write-only. Clear transmit underrun error flag
      CTXUNRF       : ICR_CTXUNRF_Field := 16#0#;
      --  unspecified
      Reserved_5_6  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Clear transfer complete flag
      CTCF          : ICR_CTCF_Field := 16#0#;
      --  Write-only. Clear slave resume flag
      CSRF          : ICR_CSRF_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      CRXBFF        at 0 range 0 .. 0;
      CTXBEF        at 0 range 1 .. 1;
      CRXBERF       at 0 range 2 .. 2;
      CRXOVRF       at 0 range 3 .. 3;
      CTXUNRF       at 0 range 4 .. 4;
      Reserved_5_6  at 0 range 5 .. 6;
      CTCF          at 0 range 7 .. 7;
      CSRF          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype IER_RXBFIE_Field is Interfaces.Bit_Types.Bit;
   subtype IER_TXBEIE_Field is Interfaces.Bit_Types.Bit;
   subtype IER_RXBERIE_Field is Interfaces.Bit_Types.Bit;
   subtype IER_RXOVRIE_Field is Interfaces.Bit_Types.Bit;
   subtype IER_TXUNRIE_Field is Interfaces.Bit_Types.Bit;
   subtype IER_RIE_Field is Interfaces.Bit_Types.Bit;
   subtype IER_TIE_Field is Interfaces.Bit_Types.Bit;
   subtype IER_TCIE_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SRIE_Field is Interfaces.Bit_Types.Bit;

   --  SWPMI Interrupt Enable register
   type IER_Register is record
      --  Receive buffer full interrupt enable
      RXBFIE        : IER_RXBFIE_Field := 16#0#;
      --  Transmit buffer empty interrupt enable
      TXBEIE        : IER_TXBEIE_Field := 16#0#;
      --  Receive CRC error interrupt enable
      RXBERIE       : IER_RXBERIE_Field := 16#0#;
      --  Receive overrun error interrupt enable
      RXOVRIE       : IER_RXOVRIE_Field := 16#0#;
      --  Transmit underrun error interrupt enable
      TXUNRIE       : IER_TXUNRIE_Field := 16#0#;
      --  Receive interrupt enable
      RIE           : IER_RIE_Field := 16#0#;
      --  Transmit interrupt enable
      TIE           : IER_TIE_Field := 16#0#;
      --  Transmit complete interrupt enable
      TCIE          : IER_TCIE_Field := 16#0#;
      --  Slave resume interrupt enable
      SRIE          : IER_SRIE_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      RXBFIE        at 0 range 0 .. 0;
      TXBEIE        at 0 range 1 .. 1;
      RXBERIE       at 0 range 2 .. 2;
      RXOVRIE       at 0 range 3 .. 3;
      TXUNRIE       at 0 range 4 .. 4;
      RIE           at 0 range 5 .. 5;
      TIE           at 0 range 6 .. 6;
      TCIE          at 0 range 7 .. 7;
      SRIE          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RFL_RFL_Field is Interfaces.Bit_Types.UInt5;

   --  SWPMI Receive Frame Length register
   type RFL_Register is record
      --  Read-only. Receive frame length
      RFL           : RFL_RFL_Field;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RFL_Register use record
      RFL           at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Single Wire Protocol Master Interface
   type SWPMI1_Peripheral is record
      --  SWPMI Configuration/Control register
      CR  : aliased CR_Register;
      --  SWPMI Bitrate register
      BRR : aliased BRR_Register;
      --  SWPMI Interrupt and Status register
      ISR : aliased ISR_Register;
      --  SWPMI Interrupt Flag Clear register
      ICR : aliased ICR_Register;
      --  SWPMI Interrupt Enable register
      IER : aliased IER_Register;
      --  SWPMI Receive Frame Length register
      RFL : aliased RFL_Register;
      --  SWPMI Transmit data register
      TDR : aliased Interfaces.Bit_Types.UInt32;
      --  SWPMI Receive data register
      RDR : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for SWPMI1_Peripheral use record
      CR  at 16#0# range 0 .. 31;
      BRR at 16#4# range 0 .. 31;
      ISR at 16#C# range 0 .. 31;
      ICR at 16#10# range 0 .. 31;
      IER at 16#14# range 0 .. 31;
      RFL at 16#18# range 0 .. 31;
      TDR at 16#1C# range 0 .. 31;
      RDR at 16#20# range 0 .. 31;
   end record;

   --  Single Wire Protocol Master Interface
   SWPMI1_Periph : aliased SWPMI1_Peripheral
     with Import, Address => SWPMI1_Base;

end Interfaces.STM32.SWPMI;
