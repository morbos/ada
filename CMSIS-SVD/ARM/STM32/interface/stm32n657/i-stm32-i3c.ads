--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.I3C is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype I3C_CR_DCNT_Field is Interfaces.Bit_Types.UInt16;
   subtype I3C_CR_ADD_Field is Interfaces.Bit_Types.UInt7;
   subtype I3C_CR_MTYPE_Field is Interfaces.Bit_Types.UInt4;

   --  I3C message control register
   type I3C_CR_Register is record
      --  Write-only. Count of data to transfer during a read or write message,
      --  in bytes (whatever I3C acts as controller/target)
      DCNT           : I3C_CR_DCNT_Field := 16#0#;
      --  Write-only. Read / non-write message (when I3C acts as controller)
      RNW            : Boolean := False;
      --  Write-only. 7-bit I3C dynamic / Iless thansup>2less than/sup>C static
      --  target address (when I3C acts as controller)
      ADD            : I3C_CR_ADD_Field := 16#0#;
      --  unspecified
      Reserved_24_26 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Message type (whatever I3C acts as controller/target)
      MTYPE          : I3C_CR_MTYPE_Field := 16#0#;
      --  Write-only. Message end type / last message of a frame (when the I3C
      --  acts as controller)
      MEND           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_CR_Register use record
      DCNT           at 0 range 0 .. 15;
      RNW            at 0 range 16 .. 16;
      ADD            at 0 range 17 .. 23;
      Reserved_24_26 at 0 range 24 .. 26;
      MTYPE          at 0 range 27 .. 30;
      MEND           at 0 range 31 .. 31;
   end record;

   subtype I3C_CR_alternate_DCNT_Field is Interfaces.Bit_Types.UInt16;
   subtype I3C_CR_alternate_CCC_Field is Interfaces.Bit_Types.Byte;
   subtype I3C_CR_alternate_MTYPE_Field is Interfaces.Bit_Types.UInt4;

   --  I3C message control register
   type I3C_CR_alternate_Register is record
      --  Write-only. Count of related data to the CCC command to transfer as
      --  CCC defining bytes, or CCC sub-command bytes, or CCC data bytes, in
      --  bytes
      DCNT           : I3C_CR_alternate_DCNT_Field := 16#0#;
      --  Write-only. 8-bit CCC code (when I3C acts as controller)
      CCC            : I3C_CR_alternate_CCC_Field := 16#0#;
      --  unspecified
      Reserved_24_26 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Message type (when I3C acts as controller)
      MTYPE          : I3C_CR_alternate_MTYPE_Field := 16#0#;
      --  Write-only. Message end type / last message of a frame (when I3C acts
      --  as controller)
      MEND           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_CR_alternate_Register use record
      DCNT           at 0 range 0 .. 15;
      CCC            at 0 range 16 .. 23;
      Reserved_24_26 at 0 range 24 .. 26;
      MTYPE          at 0 range 27 .. 30;
      MEND           at 0 range 31 .. 31;
   end record;

   --  I3C configuration register
   type I3C_CFGR_Register is record
      --  I3C enable (whatever I3C acts as controller/target)
      EN             : Boolean := False;
      --  Initial controller/target role
      CRINIT         : Boolean := False;
      --  No arbitrable header after a start (when I3C acts as a controller)
      NOARBH         : Boolean := False;
      --  HDR reset pattern enable (when I3C acts as a controller)
      RSTPTRN        : Boolean := False;
      --  HDR exit pattern enable (when I3C acts as a controller)
      EXITPTRN       : Boolean := False;
      --  High-keeper enable on SDA line (when I3C acts as a controller)
      HKSDAEN        : Boolean := False;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Hot-join request acknowledge (when I3C acts as a controller)
      HJACK          : Boolean := False;
      --  RX-FIFO DMA request enable (whatever I3C acts as controller/target)
      RXDMAEN        : Boolean := False;
      --  Write-only. RX-FIFO flush (whatever I3C acts as controller/target)
      RXFLUSH        : Boolean := False;
      --  RX-FIFO threshold (whatever I3C acts as controller/target)
      RXTHRES        : Boolean := False;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  TX-FIFO DMA request enable (whatever I3C acts as controller/target)
      TXDMAEN        : Boolean := False;
      --  Write-only. TX-FIFO flush (whatever I3C acts as controller/target)
      TXFLUSH        : Boolean := False;
      --  TX-FIFO threshold (whatever I3C acts as controller/target)
      TXTHRES        : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  S-FIFO DMA request enable (when I3C acts as controller)
      SDMAEN         : Boolean := False;
      --  Write-only. S-FIFO flush (when I3C acts as controller)
      SFLUSH         : Boolean := False;
      --  S-FIFO enable / status receive mode (when I3C acts as controller)
      SMODE          : Boolean := False;
      --  Transmit mode (when I3C acts as controller)
      TMODE          : Boolean := False;
      --  C-FIFO DMA request enable (when I3C acts as controller)
      CDMAEN         : Boolean := False;
      --  Write-only. C-FIFO flush (when I3C acts as controller)
      CFLUSH         : Boolean := False;
      --  unspecified
      Reserved_22_29 : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Frame transfer set (software trigger) (when I3C acts as
      --  controller)
      TSFSET         : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_CFGR_Register use record
      EN             at 0 range 0 .. 0;
      CRINIT         at 0 range 1 .. 1;
      NOARBH         at 0 range 2 .. 2;
      RSTPTRN        at 0 range 3 .. 3;
      EXITPTRN       at 0 range 4 .. 4;
      HKSDAEN        at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      HJACK          at 0 range 7 .. 7;
      RXDMAEN        at 0 range 8 .. 8;
      RXFLUSH        at 0 range 9 .. 9;
      RXTHRES        at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TXDMAEN        at 0 range 12 .. 12;
      TXFLUSH        at 0 range 13 .. 13;
      TXTHRES        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SDMAEN         at 0 range 16 .. 16;
      SFLUSH         at 0 range 17 .. 17;
      SMODE          at 0 range 18 .. 18;
      TMODE          at 0 range 19 .. 19;
      CDMAEN         at 0 range 20 .. 20;
      CFLUSH         at 0 range 21 .. 21;
      Reserved_22_29 at 0 range 22 .. 29;
      TSFSET         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype I3C_RDR_RDB0_Field is Interfaces.Bit_Types.Byte;

   --  I3C receive data byte register
   type I3C_RDR_Register is record
      --  Read-only. 8-bit received data on I3C bus.
      RDB0          : I3C_RDR_RDB0_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_RDR_Register use record
      RDB0          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  I3C_RDWR_RDB array element
   subtype I3C_RDWR_RDB_Element is Interfaces.Bit_Types.Byte;

   --  I3C_RDWR_RDB array
   type I3C_RDWR_RDB_Field_Array is array (0 .. 3) of I3C_RDWR_RDB_Element
     with Component_Size => 8, Size => 32;

   --  I3C receive data word register
   type I3C_RDWR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDB as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  RDB as an array
            Arr : I3C_RDWR_RDB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_RDWR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype I3C_TDR_TDB0_Field is Interfaces.Bit_Types.Byte;

   --  I3C transmit data byte register
   type I3C_TDR_Register is record
      --  Write-only. 8-bit data to transmit on I3C bus.
      TDB0          : I3C_TDR_TDB0_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_TDR_Register use record
      TDB0          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  I3C_TDWR_TDB array element
   subtype I3C_TDWR_TDB_Element is Interfaces.Bit_Types.Byte;

   --  I3C_TDWR_TDB array
   type I3C_TDWR_TDB_Field_Array is array (0 .. 3) of I3C_TDWR_TDB_Element
     with Component_Size => 8, Size => 32;

   --  I3C transmit data word register
   type I3C_TDWR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TDB as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  TDB as an array
            Arr : I3C_TDWR_TDB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_TDWR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  I3C_IBIDR_IBIDB array element
   subtype I3C_IBIDR_IBIDB_Element is Interfaces.Bit_Types.Byte;

   --  I3C_IBIDR_IBIDB array
   type I3C_IBIDR_IBIDB_Field_Array is array (0 .. 3)
     of I3C_IBIDR_IBIDB_Element
     with Component_Size => 8, Size => 32;

   --  I3C IBI payload data register
   type I3C_IBIDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IBIDB as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IBIDB as an array
            Arr : I3C_IBIDR_IBIDB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_IBIDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype I3C_TGTTDR_TGTTDCNT_Field is Interfaces.Bit_Types.UInt16;

   --  I3C target transmit configuration register
   type I3C_TGTTDR_Register is record
      --  Transmit data counter, in bytes (when I3C is configured as target)
      TGTTDCNT       : I3C_TGTTDR_TGTTDCNT_Field := 16#0#;
      --  Preload of the TX-FIFO (when I3C is configured as target)
      PRELOAD        : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_TGTTDR_Register use record
      TGTTDCNT       at 0 range 0 .. 15;
      PRELOAD        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype I3C_SR_XDCNT_Field is Interfaces.Bit_Types.UInt16;
   subtype I3C_SR_MID_Field is Interfaces.Bit_Types.Byte;

   --  I3C status register
   type I3C_SR_Register is record
      --  Read-only. Data counter
      XDCNT          : I3C_SR_XDCNT_Field;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit;
      --  Read-only. A private read message is ended prematurely by the target
      --  (when the I3C acts as controller)
      ABT            : Boolean;
      --  Read-only. Message direction
      DIR            : Boolean;
      --  unspecified
      Reserved_19_23 : Interfaces.Bit_Types.UInt5;
      --  Read-only. Message identifier/counter of a given frame (when the I3C
      --  acts as controller)
      MID            : I3C_SR_MID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_SR_Register use record
      XDCNT          at 0 range 0 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      ABT            at 0 range 17 .. 17;
      DIR            at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      MID            at 0 range 24 .. 31;
   end record;

   subtype I3C_SER_CODERR_Field is Interfaces.Bit_Types.UInt4;

   --  I3C status error register
   type I3C_SER_Register is record
      --  Read-only. Protocol error code/type
      CODERR         : I3C_SER_CODERR_Field;
      --  Read-only. Protocol error
      PERR           : Boolean;
      --  Read-only. SCL stall error (when the I3C acts as target)
      STALL          : Boolean;
      --  Read-only. RX-FIFO overrun or TX-FIFO underrun
      DOVR           : Boolean;
      --  Read-only. C-FIFO underrun or S-FIFO overrun (when the I3C acts as
      --  controller)
      COVR           : Boolean;
      --  Read-only. Address not acknowledged (when the I3C is configured as
      --  controller)
      ANACK          : Boolean;
      --  Read-only. Data not acknowledged (when the I3C acts as controller)
      DNACK          : Boolean;
      --  Read-only. Data error (when the I3C acts as controller)
      DERR           : Boolean;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_SER_Register use record
      CODERR         at 0 range 0 .. 3;
      PERR           at 0 range 4 .. 4;
      STALL          at 0 range 5 .. 5;
      DOVR           at 0 range 6 .. 6;
      COVR           at 0 range 7 .. 7;
      ANACK          at 0 range 8 .. 8;
      DNACK          at 0 range 9 .. 9;
      DERR           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype I3C_RMR_IBIRDCNT_Field is Interfaces.Bit_Types.UInt3;
   subtype I3C_RMR_RCODE_Field is Interfaces.Bit_Types.Byte;
   subtype I3C_RMR_RADD_Field is Interfaces.Bit_Types.UInt7;

   --  I3C received message register
   type I3C_RMR_Register is record
      --  Read-only. IBI received payload data count (when the I3C is
      --  configured as controller)
      IBIRDCNT       : I3C_RMR_IBIRDCNT_Field;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5;
      --  Read-only. Received CCC code (when the I3C is configured as target)
      RCODE          : I3C_RMR_RCODE_Field;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit;
      --  Read-only. Received target address (when the I3C is configured as
      --  controller)
      RADD           : I3C_RMR_RADD_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_RMR_Register use record
      IBIRDCNT       at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      RCODE          at 0 range 8 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      RADD           at 0 range 17 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  I3C event register
   type I3C_EVR_Register is record
      --  Read-only. C-FIFO empty flag (whatever the I3C acts as controller)
      CFEF           : Boolean;
      --  Read-only. TX-FIFO empty flag (whatever the I3C acts as
      --  controller/target)
      TXFEF          : Boolean;
      --  Read-only. C-FIFO not full flag (when the I3C acts as controller)
      CFNFF          : Boolean;
      --  Read-only. S-FIFO not empty flag (when the I3C acts as controller)
      SFNEF          : Boolean;
      --  Read-only. TX-FIFO not full flag (whatever the I3C acts as
      --  controller/target)
      TXFNFF         : Boolean;
      --  Read-only. RX-FIFO not empty flag (whatever the I3C acts as
      --  controller/target)
      RXFNEF         : Boolean;
      --  Read-only. Last written data byte/word flag (whatever the I3C acts as
      --  controller/target)
      TXLASTF        : Boolean;
      --  Read-only. Last read data byte/word flag (when the I3C acts as
      --  controller)
      RXLASTF        : Boolean;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit;
      --  Read-only. Frame complete flag (whatever the I3C acts as
      --  controller/target)
      FCF            : Boolean;
      --  Read-only. Target-initiated read end flag (when the I3C acts as
      --  controller)
      RXTGTENDF      : Boolean;
      --  Read-only. Flag (whatever the I3C acts as controller/target)
      ERRF           : Boolean;
      --  unspecified
      Reserved_12_14 : Interfaces.Bit_Types.UInt3;
      --  Read-only. IBI flag (when the I3C acts as controller)
      IBIF           : Boolean;
      --  Read-only. IBI end flag (when the I3C acts as target)
      IBIENDF        : Boolean;
      --  Read-only. Controller-role request flag (when the I3C acts as
      --  controller)
      CRF            : Boolean;
      --  Read-only. Controller-role update flag (when the I3C acts as target)
      CRUPDF         : Boolean;
      --  Read-only. Hot-join flag (when the I3C acts as controller)
      HJF            : Boolean;
      --  unspecified
      Reserved_20_20 : Interfaces.Bit_Types.Bit;
      --  Read-only. Wake-up/missed start flag (when the I3C acts as target)
      WKPF           : Boolean;
      --  Read-only. Get flag (when the I3C acts as target)
      GETF           : Boolean;
      --  Read-only. Get status flag (when the I3C acts as target)
      STAF           : Boolean;
      --  Read-only. Dynamic address update flag (when the I3C acts as target)
      DAUPDF         : Boolean;
      --  Read-only. Maximum write length update flag (when the I3C acts as
      --  target)
      MWLUPDF        : Boolean;
      --  Read-only. Maximum read length update flag (when the I3C acts as
      --  target)
      MRLUPDF        : Boolean;
      --  Read-only. Reset pattern flag (when the I3C acts as target)
      RSTF           : Boolean;
      --  Read-only. Activity state update flag (when the I3C acts as target)
      ASUPDF         : Boolean;
      --  Read-only. Interrupt/controller-role/hot-join update flag (when the
      --  I3C acts as target)
      INTUPDF        : Boolean;
      --  Read-only. DEFTGTS flag (when the I3C acts as target)
      DEFF           : Boolean;
      --  Read-only. Group addressing flag (when the I3C acts as target)
      GRPF           : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_EVR_Register use record
      CFEF           at 0 range 0 .. 0;
      TXFEF          at 0 range 1 .. 1;
      CFNFF          at 0 range 2 .. 2;
      SFNEF          at 0 range 3 .. 3;
      TXFNFF         at 0 range 4 .. 4;
      RXFNEF         at 0 range 5 .. 5;
      TXLASTF        at 0 range 6 .. 6;
      RXLASTF        at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      FCF            at 0 range 9 .. 9;
      RXTGTENDF      at 0 range 10 .. 10;
      ERRF           at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      IBIF           at 0 range 15 .. 15;
      IBIENDF        at 0 range 16 .. 16;
      CRF            at 0 range 17 .. 17;
      CRUPDF         at 0 range 18 .. 18;
      HJF            at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      WKPF           at 0 range 21 .. 21;
      GETF           at 0 range 22 .. 22;
      STAF           at 0 range 23 .. 23;
      DAUPDF         at 0 range 24 .. 24;
      MWLUPDF        at 0 range 25 .. 25;
      MRLUPDF        at 0 range 26 .. 26;
      RSTF           at 0 range 27 .. 27;
      ASUPDF         at 0 range 28 .. 28;
      INTUPDF        at 0 range 29 .. 29;
      DEFF           at 0 range 30 .. 30;
      GRPF           at 0 range 31 .. 31;
   end record;

   --  I3C interrupt enable register
   type I3C_IER_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2;
      --  Read-only. C-FIFO not full interrupt enable (whatever the I3C acts as
      --  controller/target)
      CFNFIE         : Boolean;
      --  Read-only. S-FIFO not empty interrupt enable (whatever the I3C acts
      --  as controller/target)
      SFNEIE         : Boolean;
      --  Read-only. TX-FIFO not full interrupt enable (whatever the I3C acts
      --  as controller/target)
      TXFNFIE        : Boolean;
      --  Read-only. RX-FIFO not empty interrupt enable (whatever the I3C acts
      --  as controller/target)
      RXFNEIE        : Boolean;
      --  unspecified
      Reserved_6_8   : Interfaces.Bit_Types.UInt3;
      --  Read-only. frame complete interrupt enable (whatever the I3C acts as
      --  controller/target)
      FCIE           : Boolean;
      --  Read-only. target-initiated read end interrupt enable (when the I3C
      --  acts as controller)
      RXTGTENDIE     : Boolean;
      --  Read-only. error interrupt enable (whatever the I3C acts as
      --  controller/target)
      ERRIE          : Boolean;
      --  unspecified
      Reserved_12_14 : Interfaces.Bit_Types.UInt3;
      --  Read-only. IBI request interrupt enable (when the I3C acts as
      --  controller)
      IBIIE          : Boolean;
      --  Read-only. IBI end interrupt enable (when the I3C acts as target)
      IBIENDIE       : Boolean;
      --  Read-only. Controller-role request interrupt enable (when the I3C
      --  acts as controller)
      CRIE           : Boolean;
      --  Read-only. Controller-role update interrupt enable (when the I3C acts
      --  as target)
      CRUPDIE        : Boolean;
      --  Read-only. Hot-join interrupt enable (when the I3C acts as
      --  controller)
      HJIE           : Boolean;
      --  unspecified
      Reserved_20_20 : Interfaces.Bit_Types.Bit;
      --  Read-only. Wake-up interrupt enable (when the I3C acts as target)
      WKPIE          : Boolean;
      --  Read-only. GETxxx CCC interrupt enable (except GETSTATUS of format 1)
      --  (when the I3C acts as target)
      GETIE          : Boolean;
      --  Read-only. format 1 GETSTATUS CCC interrupt enable (when the I3C acts
      --  as target)
      STAIE          : Boolean;
      --  Read-only. ENTDAA/RSTDAA/SETNEWDA CCC interrupt enable (when the I3C
      --  acts as target)
      DAUPDIE        : Boolean;
      --  Read-only. SETMWL CCC interrupt enable (when the I3C acts as target)
      MWLUPDIE       : Boolean;
      --  Read-only. SETMRL CCC interrupt enable (when the I3C acts as target)
      MRLUPDIE       : Boolean;
      --  Read-only. reset pattern interrupt enable (when the I3C acts as
      --  target)
      RSTIE          : Boolean;
      --  Read-only. ENTASx CCC interrupt enable (when the I3C acts as target)
      ASUPDIE        : Boolean;
      --  Read-only. ENEC/DISEC CCC interrupt enable (when the I3C acts as
      --  target)
      INTUPDIE       : Boolean;
      --  Read-only. DEFTGTS CCC interrupt enable (when the I3C acts as target)
      DEFIE          : Boolean;
      --  Read-only. DEFGRPA CCC interrupt enable (when the I3C acts as target)
      GRPIE          : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_IER_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      CFNFIE         at 0 range 2 .. 2;
      SFNEIE         at 0 range 3 .. 3;
      TXFNFIE        at 0 range 4 .. 4;
      RXFNEIE        at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      FCIE           at 0 range 9 .. 9;
      RXTGTENDIE     at 0 range 10 .. 10;
      ERRIE          at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      IBIIE          at 0 range 15 .. 15;
      IBIENDIE       at 0 range 16 .. 16;
      CRIE           at 0 range 17 .. 17;
      CRUPDIE        at 0 range 18 .. 18;
      HJIE           at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      WKPIE          at 0 range 21 .. 21;
      GETIE          at 0 range 22 .. 22;
      STAIE          at 0 range 23 .. 23;
      DAUPDIE        at 0 range 24 .. 24;
      MWLUPDIE       at 0 range 25 .. 25;
      MRLUPDIE       at 0 range 26 .. 26;
      RSTIE          at 0 range 27 .. 27;
      ASUPDIE        at 0 range 28 .. 28;
      INTUPDIE       at 0 range 29 .. 29;
      DEFIE          at 0 range 30 .. 30;
      GRPIE          at 0 range 31 .. 31;
   end record;

   --  I3C clear event register
   type I3C_CEVR_Register is record
      --  unspecified
      Reserved_0_8   : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Write-only. Clear frame complete flag (whatever the I3C acts as
      --  controller/target)
      CFCF           : Boolean := False;
      --  Write-only. Clear target-initiated read end flag (when the I3C acts
      --  as controller)
      CRXTGTENDF     : Boolean := False;
      --  Write-only. Clear error flag (whatever the I3C acts as
      --  controller/target)
      CERRF          : Boolean := False;
      --  unspecified
      Reserved_12_14 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Clear IBI request flag (when the I3C acts as controller)
      CIBIF          : Boolean := False;
      --  Write-only. Clear IBI end flag (when the I3C acts as target)
      CIBIENDF       : Boolean := False;
      --  Write-only. Clear controller-role request flag (when the I3C acts as
      --  controller)
      CCRF           : Boolean := False;
      --  Write-only. Clear controller-role update flag (when the I3C acts as
      --  target)
      CCRUPDF        : Boolean := False;
      --  Write-only. Clear hot-join flag (when the I3C acts as controller)
      CHJF           : Boolean := False;
      --  unspecified
      Reserved_20_20 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Clear wake-up flag (when the I3C acts as target)
      CWKPF          : Boolean := False;
      --  Write-only. Clear GETxxx CCC flag (except GETSTATUS of format 1)
      --  (when the I3C acts as target)
      CGETF          : Boolean := False;
      --  Write-only. Clear format 1 GETSTATUS CCC flag (when the I3C acts as
      --  target)
      CSTAF          : Boolean := False;
      --  Write-only. Clear ENTDAA/RSTDAA/SETNEWDA CCC flag (when the I3C acts
      --  as target)
      CDAUPDF        : Boolean := False;
      --  Write-only. Clear SETMWL CCC flag (when the I3C acts as target)
      CMWLUPDF       : Boolean := False;
      --  Write-only. Clear SETMRL CCC flag (when the I3C acts as target)
      CMRLUPDF       : Boolean := False;
      --  Write-only. Clear reset pattern flag (when the I3C acts as target)
      CRSTF          : Boolean := False;
      --  Write-only. Clear ENTASx CCC flag (when the I3C acts as target)
      CASUPDF        : Boolean := False;
      --  Write-only. Clear ENEC/DISEC CCC flag (when the I3C acts as target)
      CINTUPDF       : Boolean := False;
      --  Write-only. Clear DEFTGTS CCC flag (when the I3C acts as target)
      CDEFF          : Boolean := False;
      --  Write-only. Clear DEFGRPA CCC flag (when the I3C acts as target)
      CGRPF          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_CEVR_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      CFCF           at 0 range 9 .. 9;
      CRXTGTENDF     at 0 range 10 .. 10;
      CERRF          at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      CIBIF          at 0 range 15 .. 15;
      CIBIENDF       at 0 range 16 .. 16;
      CCRF           at 0 range 17 .. 17;
      CCRUPDF        at 0 range 18 .. 18;
      CHJF           at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      CWKPF          at 0 range 21 .. 21;
      CGETF          at 0 range 22 .. 22;
      CSTAF          at 0 range 23 .. 23;
      CDAUPDF        at 0 range 24 .. 24;
      CMWLUPDF       at 0 range 25 .. 25;
      CMRLUPDF       at 0 range 26 .. 26;
      CRSTF          at 0 range 27 .. 27;
      CASUPDF        at 0 range 28 .. 28;
      CINTUPDF       at 0 range 29 .. 29;
      CDEFF          at 0 range 30 .. 30;
      CGRPF          at 0 range 31 .. 31;
   end record;

   subtype I3C_DEVR0_DA_Field is Interfaces.Bit_Types.UInt7;
   subtype I3C_DEVR0_AS_Field is Interfaces.Bit_Types.UInt2;
   subtype I3C_DEVR0_RSTACT_Field is Interfaces.Bit_Types.UInt2;

   --  I3C own device characteristics register
   type I3C_DEVR0_Register is record
      --  Dynamic address is valid (when the I3C acts as target)
      DAVAL          : Boolean := False;
      --  7-bit dynamic address
      DA             : I3C_DEVR0_DA_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  IBI request enable (when the I3C acts as target)
      IBIEN          : Boolean := False;
      --  Controller-role request enable (when the I3C acts as target)
      CREN           : Boolean := False;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Hot-join request enable (when the I3C acts as target)
      HJEN           : Boolean := False;
      --  Read-only. Activity state (when the I3C acts as target)
      AS             : I3C_DEVR0_AS_Field := 16#0#;
      --  Read-only. Reset action/level on received reset pattern (when the I3C
      --  acts as target)
      RSTACT         : I3C_DEVR0_RSTACT_Field := 16#0#;
      --  Read-only. Reset action is valid (when the I3C acts as target)
      RSTVAL         : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_DEVR0_Register use record
      DAVAL          at 0 range 0 .. 0;
      DA             at 0 range 1 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      IBIEN          at 0 range 16 .. 16;
      CREN           at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      HJEN           at 0 range 19 .. 19;
      AS             at 0 range 20 .. 21;
      RSTACT         at 0 range 22 .. 23;
      RSTVAL         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype I3C_DEVR_DA_Field is Interfaces.Bit_Types.UInt7;

   --  I3C device 1 characteristics register
   type I3C_DEVR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Assigned I3C dynamic address to target x (when the I3C acts as
      --  controller)
      DA             : I3C_DEVR_DA_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  IBI request acknowledge (when the I3C acts as controller)
      IBIACK         : Boolean := False;
      --  Controller-role request acknowledge (when the I3C acts as controller)
      CRACK          : Boolean := False;
      --  IBI data enable (when the I3C acts as controller)
      IBIDEN         : Boolean := False;
      --  Suspend/stop I3C transfer on received IBI (when the I3C acts as
      --  controller)
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_20_30 : Interfaces.Bit_Types.UInt11 := 16#0#;
      --  Read-only. DA[6:0] write disabled (when the I3C acts as controller)
      DIS            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_DEVR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      DA             at 0 range 1 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      IBIACK         at 0 range 16 .. 16;
      CRACK          at 0 range 17 .. 17;
      IBIDEN         at 0 range 18 .. 18;
      SUSP           at 0 range 19 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      DIS            at 0 range 31 .. 31;
   end record;

   subtype I3C_MAXRLR_MRL_Field is Interfaces.Bit_Types.UInt16;
   subtype I3C_MAXRLR_IBIP_Field is Interfaces.Bit_Types.UInt3;

   --  I3C maximum read length register
   type I3C_MAXRLR_Register is record
      --  Maximum data read length (when I3C acts as target)
      MRL            : I3C_MAXRLR_MRL_Field := 16#0#;
      --  IBI payload data maximum size, in bytes (when I3C acts as target)
      IBIP           : I3C_MAXRLR_IBIP_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_MAXRLR_Register use record
      MRL            at 0 range 0 .. 15;
      IBIP           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype I3C_MAXWLR_MWL_Field is Interfaces.Bit_Types.UInt16;

   --  I3C maximum write length register
   type I3C_MAXWLR_Register is record
      --  Maximum data write length (when I3C acts as target)
      MWL            : I3C_MAXWLR_MWL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_MAXWLR_Register use record
      MWL            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I3C_TIMINGR0_SCLL_PP_Field is Interfaces.Bit_Types.Byte;
   subtype I3C_TIMINGR0_SCLH_I3C_Field is Interfaces.Bit_Types.Byte;
   subtype I3C_TIMINGR0_SCLL_OD_Field is Interfaces.Bit_Types.Byte;
   subtype I3C_TIMINGR0_SCLH_I2C_Field is Interfaces.Bit_Types.Byte;

   --  I3C timing register 0
   type I3C_TIMINGR0_Register is record
      --  SCL low duration in I3C push-pull phases, in number of kernel clocks
      --  cycles:
      SCLL_PP  : I3C_TIMINGR0_SCLL_PP_Field := 16#0#;
      --  SCL high duration, used for I3C messages (both in push-pull and
      --  open-drain phases), in number of kernel clocks cycles:
      SCLH_I3C : I3C_TIMINGR0_SCLH_I3C_Field := 16#0#;
      --  SCL low duration in open-drain phases, used for legacy Iless
      --  thansup>2less than/sup>C messages and for I3C open-drain phases
      --  (address phase following a start, ACK phase during
      --  controller-initiated messages, and T bit phase during
      --  direct/private/IBI payload), in number of kernel clocks cycles:
      SCLL_OD  : I3C_TIMINGR0_SCLL_OD_Field := 16#0#;
      --  SCL high duration, used for legacy Iless thansup>2less than/sup>C
      --  messages, in number of kernel clocks cycles:
      SCLH_I2C : I3C_TIMINGR0_SCLH_I2C_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_TIMINGR0_Register use record
      SCLL_PP  at 0 range 0 .. 7;
      SCLH_I3C at 0 range 8 .. 15;
      SCLL_OD  at 0 range 16 .. 23;
      SCLH_I2C at 0 range 24 .. 31;
   end record;

   subtype I3C_TIMINGR1_AVAL_Field is Interfaces.Bit_Types.Byte;
   subtype I3C_TIMINGR1_ASNCR_Field is Interfaces.Bit_Types.UInt2;
   subtype I3C_TIMINGR1_FREE_Field is Interfaces.Bit_Types.UInt7;

   --  I3C timing register 1
   type I3C_TIMINGR1_Register is record
      --  Number of kernel clock cycles to set a time unit of 1 s, whatever I3C
      --  acts as controller or target.
      AVAL           : I3C_TIMINGR1_AVAL_Field := 16#0#;
      --  Activity state of the new controller (when I3C acts as active
      --  controller)
      ASNCR          : I3C_TIMINGR1_ASNCR_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Number of kernel clocks cycles that is used to set some MIPI timings
      --  like bus free condition time (when the I3C acts as controller)
      FREE           : I3C_TIMINGR1_FREE_Field := 16#0#;
      --  unspecified
      Reserved_23_27 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  SDA hold time (when the I3C acts as controller), in number of kernel
      --  clocks cycles (refer to MIPI timing SDA hold time in push-pull tless
      --  thansub>HD_PPless than/sub>):
      SDA_HD         : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_TIMINGR1_Register use record
      AVAL           at 0 range 0 .. 7;
      ASNCR          at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      FREE           at 0 range 16 .. 22;
      Reserved_23_27 at 0 range 23 .. 27;
      SDA_HD         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype I3C_TIMINGR2_STALL_Field is Interfaces.Bit_Types.Byte;

   --  I3C timing register 2
   type I3C_TIMINGR2_Register is record
      --  Controller clock stall enable on T-bit phase of data (and on the
      --  ACK/NACK phase of data byte of a legacy Iless thansup>2less
      --  than/sup>C read)
      STALLT         : Boolean := False;
      --  Controller clock stall enable on PAR phase of Data
      STALLD         : Boolean := False;
      --  Controller clock stall enable on PAR phase of CCC
      STALLC         : Boolean := False;
      --  Controller clock stall enable on ACK phase
      STALLA         : Boolean := False;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Controller clock stall time, in number of kernel clock cycles
      STALL          : I3C_TIMINGR2_STALL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_TIMINGR2_Register use record
      STALLT         at 0 range 0 .. 0;
      STALLD         at 0 range 1 .. 1;
      STALLC         at 0 range 2 .. 2;
      STALLA         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      STALL          at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  I3C bus characteristics register
   type I3C_BCR_Register is record
      --  max data speed limitation
      BCR0          : Boolean := False;
      --  unspecified
      Reserved_1_1  : Interfaces.Bit_Types.Bit := 16#0#;
      --  in-band interrupt (IBI) payload
      BCR2          : Boolean := False;
      --  unspecified
      Reserved_3_5  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Controller capable
      BCR6          : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_BCR_Register use record
      BCR0          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      BCR2          at 0 range 2 .. 2;
      Reserved_3_5  at 0 range 3 .. 5;
      BCR6          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype I3C_DCR_DCR_Field is Interfaces.Bit_Types.Byte;

   --  I3C device characteristics register
   type I3C_DCR_Register is record
      --  device characteristics ID
      DCR           : I3C_DCR_DCR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_DCR_Register use record
      DCR           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  I3C get capability register
   type I3C_GETCAPR_Register is record
      --  unspecified
      Reserved_0_13  : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  IBI MDB support for pending read notification
      CAPPEND        : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_GETCAPR_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      CAPPEND        at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  I3C controller-role capability register
   type I3C_CRCAPR_Register is record
      --  unspecified
      Reserved_0_2   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  delayed controller-role hand-off
      CAPDHOFF       : Boolean := False;
      --  unspecified
      Reserved_4_8   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  group management support (when acting as controller)
      CAPGRP         : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_CRCAPR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      CAPDHOFF       at 0 range 3 .. 3;
      Reserved_4_8   at 0 range 4 .. 8;
      CAPGRP         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype I3C_GETMXDSR_HOFFAS_Field is Interfaces.Bit_Types.UInt2;
   subtype I3C_GETMXDSR_FMT_Field is Interfaces.Bit_Types.UInt2;
   subtype I3C_GETMXDSR_RDTURN_Field is Interfaces.Bit_Types.Byte;

   --  I3C get capability register
   type I3C_GETMXDSR_Register is record
      --  Controller hand-off activity state
      HOFFAS         : I3C_GETMXDSR_HOFFAS_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  GETMXDS CCC format
      FMT            : I3C_GETMXDSR_FMT_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  programmed byte of the 3-byte MaxRdTurn (maximum read turnaround
      --  byte)
      RDTURN         : I3C_GETMXDSR_RDTURN_Field := 16#0#;
      --  clock-to-data turnaround time (tless thansub>SCOless than/sub>)
      TSCO           : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_GETMXDSR_Register use record
      HOFFAS         at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      FMT            at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      RDTURN         at 0 range 16 .. 23;
      TSCO           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype I3C_EPIDR_MIPIID_Field is Interfaces.Bit_Types.UInt4;
   subtype I3C_EPIDR_MIPIMID_Field is Interfaces.Bit_Types.UInt15;

   --  I3C extended provisioned ID register
   type I3C_EPIDR_Register is record
      --  unspecified
      Reserved_0_11 : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  4-bit MIPI Instance ID
      MIPIID        : I3C_EPIDR_MIPIID_Field := 16#0#;
      --  Read-only. provisioned ID type selector
      IDTSEL        : Boolean := False;
      --  Read-only. 15-bit MIPI manufacturer ID
      MIPIMID       : I3C_EPIDR_MIPIMID_Field := 16#104#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_EPIDR_Register use record
      Reserved_0_11 at 0 range 0 .. 11;
      MIPIID        at 0 range 12 .. 15;
      IDTSEL        at 0 range 16 .. 16;
      MIPIMID       at 0 range 17 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type I3C1_Disc is
     (Default,
      ALTERNATE);

   --  Improved inter-integrated circuit
   type I3C_Peripheral
     (Discriminent : I3C1_Disc := Default)
   is record
      --  I3C configuration register
      I3C_CFGR         : aliased I3C_CFGR_Register;
      --  I3C receive data byte register
      I3C_RDR          : aliased I3C_RDR_Register;
      --  I3C receive data word register
      I3C_RDWR         : aliased I3C_RDWR_Register;
      --  I3C transmit data byte register
      I3C_TDR          : aliased I3C_TDR_Register;
      --  I3C transmit data word register
      I3C_TDWR         : aliased I3C_TDWR_Register;
      --  I3C IBI payload data register
      I3C_IBIDR        : aliased I3C_IBIDR_Register;
      --  I3C target transmit configuration register
      I3C_TGTTDR       : aliased I3C_TGTTDR_Register;
      --  I3C status register
      I3C_SR           : aliased I3C_SR_Register;
      --  I3C status error register
      I3C_SER          : aliased I3C_SER_Register;
      --  I3C received message register
      I3C_RMR          : aliased I3C_RMR_Register;
      --  I3C event register
      I3C_EVR          : aliased I3C_EVR_Register;
      --  I3C interrupt enable register
      I3C_IER          : aliased I3C_IER_Register;
      --  I3C clear event register
      I3C_CEVR         : aliased I3C_CEVR_Register;
      --  I3C own device characteristics register
      I3C_DEVR0        : aliased I3C_DEVR0_Register;
      --  I3C device 1 characteristics register
      I3C_DEVR1        : aliased I3C_DEVR_Register;
      --  I3C device 2 characteristics register
      I3C_DEVR2        : aliased I3C_DEVR_Register;
      --  I3C device 3 characteristics register
      I3C_DEVR3        : aliased I3C_DEVR_Register;
      --  I3C device 4 characteristics register
      I3C_DEVR4        : aliased I3C_DEVR_Register;
      --  I3C maximum read length register
      I3C_MAXRLR       : aliased I3C_MAXRLR_Register;
      --  I3C maximum write length register
      I3C_MAXWLR       : aliased I3C_MAXWLR_Register;
      --  I3C timing register 0
      I3C_TIMINGR0     : aliased I3C_TIMINGR0_Register;
      --  I3C timing register 1
      I3C_TIMINGR1     : aliased I3C_TIMINGR1_Register;
      --  I3C timing register 2
      I3C_TIMINGR2     : aliased I3C_TIMINGR2_Register;
      --  I3C bus characteristics register
      I3C_BCR          : aliased I3C_BCR_Register;
      --  I3C device characteristics register
      I3C_DCR          : aliased I3C_DCR_Register;
      --  I3C get capability register
      I3C_GETCAPR      : aliased I3C_GETCAPR_Register;
      --  I3C controller-role capability register
      I3C_CRCAPR       : aliased I3C_CRCAPR_Register;
      --  I3C get capability register
      I3C_GETMXDSR     : aliased I3C_GETMXDSR_Register;
      --  I3C extended provisioned ID register
      I3C_EPIDR        : aliased I3C_EPIDR_Register;
      case Discriminent is
         when Default =>
            --  I3C message control register
            I3C_CR : aliased I3C_CR_Register;
         when ALTERNATE =>
            --  I3C message control register
            I3C_CR_alternate : aliased I3C_CR_alternate_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for I3C_Peripheral use record
      I3C_CFGR         at 16#4# range 0 .. 31;
      I3C_RDR          at 16#10# range 0 .. 31;
      I3C_RDWR         at 16#14# range 0 .. 31;
      I3C_TDR          at 16#18# range 0 .. 31;
      I3C_TDWR         at 16#1C# range 0 .. 31;
      I3C_IBIDR        at 16#20# range 0 .. 31;
      I3C_TGTTDR       at 16#24# range 0 .. 31;
      I3C_SR           at 16#30# range 0 .. 31;
      I3C_SER          at 16#34# range 0 .. 31;
      I3C_RMR          at 16#40# range 0 .. 31;
      I3C_EVR          at 16#50# range 0 .. 31;
      I3C_IER          at 16#54# range 0 .. 31;
      I3C_CEVR         at 16#58# range 0 .. 31;
      I3C_DEVR0        at 16#60# range 0 .. 31;
      I3C_DEVR1        at 16#64# range 0 .. 31;
      I3C_DEVR2        at 16#68# range 0 .. 31;
      I3C_DEVR3        at 16#6C# range 0 .. 31;
      I3C_DEVR4        at 16#70# range 0 .. 31;
      I3C_MAXRLR       at 16#90# range 0 .. 31;
      I3C_MAXWLR       at 16#94# range 0 .. 31;
      I3C_TIMINGR0     at 16#A0# range 0 .. 31;
      I3C_TIMINGR1     at 16#A4# range 0 .. 31;
      I3C_TIMINGR2     at 16#A8# range 0 .. 31;
      I3C_BCR          at 16#C0# range 0 .. 31;
      I3C_DCR          at 16#C4# range 0 .. 31;
      I3C_GETCAPR      at 16#C8# range 0 .. 31;
      I3C_CRCAPR       at 16#CC# range 0 .. 31;
      I3C_GETMXDSR     at 16#D0# range 0 .. 31;
      I3C_EPIDR        at 16#D4# range 0 .. 31;
      I3C_CR           at 16#0# range 0 .. 31;
      I3C_CR_alternate at 16#0# range 0 .. 31;
   end record;

   --  Improved inter-integrated circuit
   I3C1_Periph : aliased I3C_Peripheral
     with Import, Address => I3C1_Base;

   --  Improved inter-integrated circuit
   I3C1_S_Periph : aliased I3C_Peripheral
     with Import, Address => I3C1_S_Base;

   --  Improved inter-integrated circuit
   I3C2_Periph : aliased I3C_Peripheral
     with Import, Address => I3C2_Base;

   --  Improved inter-integrated circuit
   I3C2_S_Periph : aliased I3C_Peripheral
     with Import, Address => I3C2_S_Base;

end Interfaces.STM32.I3C;
