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

--  DMA with separate read and write masters
package Interfaces.RP.DMA is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CH0_CTRL_TRIG_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH0_CTRL_TRIG_HIGH_PRIORITY_Field is Interfaces.Bit_Types.Bit;

   --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
   --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
   type CH0_CTRL_TRIG_DATA_SIZE_Field is
     (Size_Byte,
      Size_Halfword,
      Size_Word)
     with Size => 2;
   for CH0_CTRL_TRIG_DATA_SIZE_Field use
     (Size_Byte => 0,
      Size_Halfword => 1,
      Size_Word => 2);

   subtype CH0_CTRL_TRIG_INCR_READ_Field is Interfaces.Bit_Types.Bit;
   subtype CH0_CTRL_TRIG_INCR_WRITE_Field is Interfaces.Bit_Types.Bit;

   --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
   --  the lower n bits of the address will change. This wraps the address on a
   --  (1 << n) byte boundary, facilitating access to naturally-aligned ring
   --  buffers.\n\n Ring sizes between 2 and 32768 bytes are possible. This can
   --  apply to either read or write addresses, based on value of RING_SEL.
   type CH0_CTRL_TRIG_RING_SIZE_Field is
     (Ring_None)
     with Size => 4;
   for CH0_CTRL_TRIG_RING_SIZE_Field use
     (Ring_None => 0);

   subtype CH0_CTRL_TRIG_RING_SEL_Field is Interfaces.Bit_Types.Bit;
   subtype CH0_CTRL_TRIG_CHAIN_TO_Field is Interfaces.Bit_Types.UInt4;

   --  Select a Transfer Request signal.\n The channel uses the transfer
   --  request signal to pace its data transfer rate. Sources for TREQ signals
   --  are internal (TIMERS) or external (DREQ, a Data Request from the
   --  system).\n 0x0 to 0x3a -> select DREQ n as TREQ
   type CH0_CTRL_TRIG_TREQ_SEL_Field is
     (--  Reset value for the field
      Ch0_Ctrl_Trig_Treq_Sel_Field_Reset,
      --  Select Timer 0 as TREQ
      Timer0,
      --  Select Timer 1 as TREQ
      Timer1,
      --  Select Timer 2 as TREQ (Optional)
      Timer2,
      --  Select Timer 3 as TREQ (Optional)
      Timer3,
      --  Permanent request, for unpaced transfers.
      Permanent)
     with Size => 6;
   for CH0_CTRL_TRIG_TREQ_SEL_Field use
     (Ch0_Ctrl_Trig_Treq_Sel_Field_Reset => 0,
      Timer0 => 59,
      Timer1 => 60,
      Timer2 => 61,
      Timer3 => 62,
      Permanent => 63);

   subtype CH0_CTRL_TRIG_IRQ_QUIET_Field is Interfaces.Bit_Types.Bit;
   subtype CH0_CTRL_TRIG_BSWAP_Field is Interfaces.Bit_Types.Bit;
   subtype CH0_CTRL_TRIG_SNIFF_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH0_CTRL_TRIG_BUSY_Field is Interfaces.Bit_Types.Bit;
   subtype CH0_CTRL_TRIG_WRITE_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH0_CTRL_TRIG_READ_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH0_CTRL_TRIG_AHB_ERROR_Field is Interfaces.Bit_Types.Bit;

   --  DMA Channel 0 Control and Status
   type CH0_CTRL_TRIG_Register is record
      --  DMA Channel Enable.\n When 1, the channel will respond to triggering
      --  events, which will cause it to become BUSY and start transferring
      --  data. When 0, the channel will ignore triggers, stop issuing
      --  transfers, and pause the current transfer sequence (i.e. BUSY will
      --  remain high if already high)
      EN             : CH0_CTRL_TRIG_EN_Field := 16#0#;
      --  HIGH_PRIORITY gives a channel preferential treatment in issue
      --  scheduling: in each scheduling round, all high priority channels are
      --  considered first, and then only a single low priority channel, before
      --  returning to the high priority channels.\n\n This only affects the
      --  order in which the DMA schedules channels. The DMA's bus priority is
      --  not changed. If the DMA is not saturated then a low priority channel
      --  will see no loss of throughput.
      HIGH_PRIORITY  : CH0_CTRL_TRIG_HIGH_PRIORITY_Field := 16#0#;
      --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
      --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
      DATA_SIZE      : CH0_CTRL_TRIG_DATA_SIZE_Field :=
                        Interfaces.RP.DMA.Size_Byte;
      --  If 1, the read address increments with each transfer. If 0, each read
      --  is directed to the same, initial address.\n\n Generally this should
      --  be disabled for peripheral-to-memory transfers.
      INCR_READ      : CH0_CTRL_TRIG_INCR_READ_Field := 16#0#;
      --  If 1, the write address increments with each transfer. If 0, each
      --  write is directed to the same, initial address.\n\n Generally this
      --  should be disabled for memory-to-peripheral transfers.
      INCR_WRITE     : CH0_CTRL_TRIG_INCR_WRITE_Field := 16#0#;
      --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
      --  the lower n bits of the address will change. This wraps the address
      --  on a (1 << n) byte boundary, facilitating access to naturally-aligned
      --  ring buffers.\n\n Ring sizes between 2 and 32768 bytes are possible.
      --  This can apply to either read or write addresses, based on value of
      --  RING_SEL.
      RING_SIZE      : CH0_CTRL_TRIG_RING_SIZE_Field :=
                        Interfaces.RP.DMA.Ring_None;
      --  Select whether RING_SIZE applies to read or write addresses.\n If 0,
      --  read addresses are wrapped on a (1 << RING_SIZE) boundary. If 1,
      --  write addresses are wrapped.
      RING_SEL       : CH0_CTRL_TRIG_RING_SEL_Field := 16#0#;
      --  When this channel completes, it will trigger the channel indicated by
      --  CHAIN_TO. Disable by setting CHAIN_TO = _(this channel)_.\n Reset
      --  value is equal to channel number (0).
      CHAIN_TO       : CH0_CTRL_TRIG_CHAIN_TO_Field := 16#0#;
      --  Select a Transfer Request signal.\n The channel uses the transfer
      --  request signal to pace its data transfer rate. Sources for TREQ
      --  signals are internal (TIMERS) or external (DREQ, a Data Request from
      --  the system).\n 0x0 to 0x3a -> select DREQ n as TREQ
      TREQ_SEL       : CH0_CTRL_TRIG_TREQ_SEL_Field :=
                        Ch0_Ctrl_Trig_Treq_Sel_Field_Reset;
      --  In QUIET mode, the channel does not generate IRQs at the end of every
      --  transfer block. Instead, an IRQ is raised when NULL is written to a
      --  trigger register, indicating the end of a control block chain.\n\n
      --  This reduces the number of interrupts to be serviced by the CPU when
      --  transferring a DMA chain of many small control blocks.
      IRQ_QUIET      : CH0_CTRL_TRIG_IRQ_QUIET_Field := 16#0#;
      --  Apply byte-swap transformation to DMA data.\n For byte data, this has
      --  no effect. For halfword data, the two bytes of each halfword are
      --  swapped. For word data, the four bytes of each word are swapped to
      --  reverse order.
      BSWAP          : CH0_CTRL_TRIG_BSWAP_Field := 16#0#;
      --  If 1, this channel's data transfers are visible to the sniff
      --  hardware, and each transfer will advance the state of the checksum.
      --  This only applies if the sniff hardware is enabled, and has this
      --  channel selected.\n\n This allows checksum to be enabled or disabled
      --  on a per-control- block basis.
      SNIFF_EN       : CH0_CTRL_TRIG_SNIFF_EN_Field := 16#0#;
      --  Read-only. This flag goes high when the channel starts a new transfer
      --  sequence, and low when the last transfer of that sequence completes.
      --  Clearing EN while BUSY is high pauses the channel, and BUSY will stay
      --  high while paused.\n\n To terminate a sequence early (and clear the
      --  BUSY flag), see CHAN_ABORT.
      BUSY           : CH0_CTRL_TRIG_BUSY_Field := 16#0#;
      --  unspecified
      Reserved_25_28 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a write bus error. Write one
      --  to clear.\n WRITE_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 5
      --  transfers later)
      WRITE_ERROR    : CH0_CTRL_TRIG_WRITE_ERROR_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a read bus error. Write one
      --  to clear.\n READ_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 3
      --  transfers later)
      READ_ERROR     : CH0_CTRL_TRIG_READ_ERROR_Field := 16#0#;
      --  Read-only. Logical OR of the READ_ERROR and WRITE_ERROR flags. The
      --  channel halts when it encounters any bus error, and always raises its
      --  channel IRQ flag.
      AHB_ERROR      : CH0_CTRL_TRIG_AHB_ERROR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_CTRL_TRIG_Register use record
      EN             at 0 range 0 .. 0;
      HIGH_PRIORITY  at 0 range 1 .. 1;
      DATA_SIZE      at 0 range 2 .. 3;
      INCR_READ      at 0 range 4 .. 4;
      INCR_WRITE     at 0 range 5 .. 5;
      RING_SIZE      at 0 range 6 .. 9;
      RING_SEL       at 0 range 10 .. 10;
      CHAIN_TO       at 0 range 11 .. 14;
      TREQ_SEL       at 0 range 15 .. 20;
      IRQ_QUIET      at 0 range 21 .. 21;
      BSWAP          at 0 range 22 .. 22;
      SNIFF_EN       at 0 range 23 .. 23;
      BUSY           at 0 range 24 .. 24;
      Reserved_25_28 at 0 range 25 .. 28;
      WRITE_ERROR    at 0 range 29 .. 29;
      READ_ERROR     at 0 range 30 .. 30;
      AHB_ERROR      at 0 range 31 .. 31;
   end record;

   subtype CH1_CTRL_TRIG_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH1_CTRL_TRIG_HIGH_PRIORITY_Field is Interfaces.Bit_Types.Bit;

   --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
   --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
   type CH1_CTRL_TRIG_DATA_SIZE_Field is
     (Size_Byte,
      Size_Halfword,
      Size_Word)
     with Size => 2;
   for CH1_CTRL_TRIG_DATA_SIZE_Field use
     (Size_Byte => 0,
      Size_Halfword => 1,
      Size_Word => 2);

   subtype CH1_CTRL_TRIG_INCR_READ_Field is Interfaces.Bit_Types.Bit;
   subtype CH1_CTRL_TRIG_INCR_WRITE_Field is Interfaces.Bit_Types.Bit;

   --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
   --  the lower n bits of the address will change. This wraps the address on a
   --  (1 << n) byte boundary, facilitating access to naturally-aligned ring
   --  buffers.\n\n Ring sizes between 2 and 32768 bytes are possible. This can
   --  apply to either read or write addresses, based on value of RING_SEL.
   type CH1_CTRL_TRIG_RING_SIZE_Field is
     (Ring_None)
     with Size => 4;
   for CH1_CTRL_TRIG_RING_SIZE_Field use
     (Ring_None => 0);

   subtype CH1_CTRL_TRIG_RING_SEL_Field is Interfaces.Bit_Types.Bit;
   subtype CH1_CTRL_TRIG_CHAIN_TO_Field is Interfaces.Bit_Types.UInt4;

   --  Select a Transfer Request signal.\n The channel uses the transfer
   --  request signal to pace its data transfer rate. Sources for TREQ signals
   --  are internal (TIMERS) or external (DREQ, a Data Request from the
   --  system).\n 0x0 to 0x3a -> select DREQ n as TREQ
   type CH1_CTRL_TRIG_TREQ_SEL_Field is
     (--  Reset value for the field
      Ch1_Ctrl_Trig_Treq_Sel_Field_Reset,
      --  Select Timer 0 as TREQ
      Timer0,
      --  Select Timer 1 as TREQ
      Timer1,
      --  Select Timer 2 as TREQ (Optional)
      Timer2,
      --  Select Timer 3 as TREQ (Optional)
      Timer3,
      --  Permanent request, for unpaced transfers.
      Permanent)
     with Size => 6;
   for CH1_CTRL_TRIG_TREQ_SEL_Field use
     (Ch1_Ctrl_Trig_Treq_Sel_Field_Reset => 0,
      Timer0 => 59,
      Timer1 => 60,
      Timer2 => 61,
      Timer3 => 62,
      Permanent => 63);

   subtype CH1_CTRL_TRIG_IRQ_QUIET_Field is Interfaces.Bit_Types.Bit;
   subtype CH1_CTRL_TRIG_BSWAP_Field is Interfaces.Bit_Types.Bit;
   subtype CH1_CTRL_TRIG_SNIFF_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH1_CTRL_TRIG_BUSY_Field is Interfaces.Bit_Types.Bit;
   subtype CH1_CTRL_TRIG_WRITE_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH1_CTRL_TRIG_READ_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH1_CTRL_TRIG_AHB_ERROR_Field is Interfaces.Bit_Types.Bit;

   --  DMA Channel 1 Control and Status
   type CH1_CTRL_TRIG_Register is record
      --  DMA Channel Enable.\n When 1, the channel will respond to triggering
      --  events, which will cause it to become BUSY and start transferring
      --  data. When 0, the channel will ignore triggers, stop issuing
      --  transfers, and pause the current transfer sequence (i.e. BUSY will
      --  remain high if already high)
      EN             : CH1_CTRL_TRIG_EN_Field := 16#0#;
      --  HIGH_PRIORITY gives a channel preferential treatment in issue
      --  scheduling: in each scheduling round, all high priority channels are
      --  considered first, and then only a single low priority channel, before
      --  returning to the high priority channels.\n\n This only affects the
      --  order in which the DMA schedules channels. The DMA's bus priority is
      --  not changed. If the DMA is not saturated then a low priority channel
      --  will see no loss of throughput.
      HIGH_PRIORITY  : CH1_CTRL_TRIG_HIGH_PRIORITY_Field := 16#0#;
      --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
      --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
      DATA_SIZE      : CH1_CTRL_TRIG_DATA_SIZE_Field :=
                        Interfaces.RP.DMA.Size_Byte;
      --  If 1, the read address increments with each transfer. If 0, each read
      --  is directed to the same, initial address.\n\n Generally this should
      --  be disabled for peripheral-to-memory transfers.
      INCR_READ      : CH1_CTRL_TRIG_INCR_READ_Field := 16#0#;
      --  If 1, the write address increments with each transfer. If 0, each
      --  write is directed to the same, initial address.\n\n Generally this
      --  should be disabled for memory-to-peripheral transfers.
      INCR_WRITE     : CH1_CTRL_TRIG_INCR_WRITE_Field := 16#0#;
      --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
      --  the lower n bits of the address will change. This wraps the address
      --  on a (1 << n) byte boundary, facilitating access to naturally-aligned
      --  ring buffers.\n\n Ring sizes between 2 and 32768 bytes are possible.
      --  This can apply to either read or write addresses, based on value of
      --  RING_SEL.
      RING_SIZE      : CH1_CTRL_TRIG_RING_SIZE_Field :=
                        Interfaces.RP.DMA.Ring_None;
      --  Select whether RING_SIZE applies to read or write addresses.\n If 0,
      --  read addresses are wrapped on a (1 << RING_SIZE) boundary. If 1,
      --  write addresses are wrapped.
      RING_SEL       : CH1_CTRL_TRIG_RING_SEL_Field := 16#0#;
      --  When this channel completes, it will trigger the channel indicated by
      --  CHAIN_TO. Disable by setting CHAIN_TO = _(this channel)_.\n Reset
      --  value is equal to channel number (1).
      CHAIN_TO       : CH1_CTRL_TRIG_CHAIN_TO_Field := 16#1#;
      --  Select a Transfer Request signal.\n The channel uses the transfer
      --  request signal to pace its data transfer rate. Sources for TREQ
      --  signals are internal (TIMERS) or external (DREQ, a Data Request from
      --  the system).\n 0x0 to 0x3a -> select DREQ n as TREQ
      TREQ_SEL       : CH1_CTRL_TRIG_TREQ_SEL_Field :=
                        Ch1_Ctrl_Trig_Treq_Sel_Field_Reset;
      --  In QUIET mode, the channel does not generate IRQs at the end of every
      --  transfer block. Instead, an IRQ is raised when NULL is written to a
      --  trigger register, indicating the end of a control block chain.\n\n
      --  This reduces the number of interrupts to be serviced by the CPU when
      --  transferring a DMA chain of many small control blocks.
      IRQ_QUIET      : CH1_CTRL_TRIG_IRQ_QUIET_Field := 16#0#;
      --  Apply byte-swap transformation to DMA data.\n For byte data, this has
      --  no effect. For halfword data, the two bytes of each halfword are
      --  swapped. For word data, the four bytes of each word are swapped to
      --  reverse order.
      BSWAP          : CH1_CTRL_TRIG_BSWAP_Field := 16#0#;
      --  If 1, this channel's data transfers are visible to the sniff
      --  hardware, and each transfer will advance the state of the checksum.
      --  This only applies if the sniff hardware is enabled, and has this
      --  channel selected.\n\n This allows checksum to be enabled or disabled
      --  on a per-control- block basis.
      SNIFF_EN       : CH1_CTRL_TRIG_SNIFF_EN_Field := 16#0#;
      --  Read-only. This flag goes high when the channel starts a new transfer
      --  sequence, and low when the last transfer of that sequence completes.
      --  Clearing EN while BUSY is high pauses the channel, and BUSY will stay
      --  high while paused.\n\n To terminate a sequence early (and clear the
      --  BUSY flag), see CHAN_ABORT.
      BUSY           : CH1_CTRL_TRIG_BUSY_Field := 16#0#;
      --  unspecified
      Reserved_25_28 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a write bus error. Write one
      --  to clear.\n WRITE_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 5
      --  transfers later)
      WRITE_ERROR    : CH1_CTRL_TRIG_WRITE_ERROR_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a read bus error. Write one
      --  to clear.\n READ_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 3
      --  transfers later)
      READ_ERROR     : CH1_CTRL_TRIG_READ_ERROR_Field := 16#0#;
      --  Read-only. Logical OR of the READ_ERROR and WRITE_ERROR flags. The
      --  channel halts when it encounters any bus error, and always raises its
      --  channel IRQ flag.
      AHB_ERROR      : CH1_CTRL_TRIG_AHB_ERROR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_CTRL_TRIG_Register use record
      EN             at 0 range 0 .. 0;
      HIGH_PRIORITY  at 0 range 1 .. 1;
      DATA_SIZE      at 0 range 2 .. 3;
      INCR_READ      at 0 range 4 .. 4;
      INCR_WRITE     at 0 range 5 .. 5;
      RING_SIZE      at 0 range 6 .. 9;
      RING_SEL       at 0 range 10 .. 10;
      CHAIN_TO       at 0 range 11 .. 14;
      TREQ_SEL       at 0 range 15 .. 20;
      IRQ_QUIET      at 0 range 21 .. 21;
      BSWAP          at 0 range 22 .. 22;
      SNIFF_EN       at 0 range 23 .. 23;
      BUSY           at 0 range 24 .. 24;
      Reserved_25_28 at 0 range 25 .. 28;
      WRITE_ERROR    at 0 range 29 .. 29;
      READ_ERROR     at 0 range 30 .. 30;
      AHB_ERROR      at 0 range 31 .. 31;
   end record;

   subtype CH2_CTRL_TRIG_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH2_CTRL_TRIG_HIGH_PRIORITY_Field is Interfaces.Bit_Types.Bit;

   --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
   --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
   type CH2_CTRL_TRIG_DATA_SIZE_Field is
     (Size_Byte,
      Size_Halfword,
      Size_Word)
     with Size => 2;
   for CH2_CTRL_TRIG_DATA_SIZE_Field use
     (Size_Byte => 0,
      Size_Halfword => 1,
      Size_Word => 2);

   subtype CH2_CTRL_TRIG_INCR_READ_Field is Interfaces.Bit_Types.Bit;
   subtype CH2_CTRL_TRIG_INCR_WRITE_Field is Interfaces.Bit_Types.Bit;

   --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
   --  the lower n bits of the address will change. This wraps the address on a
   --  (1 << n) byte boundary, facilitating access to naturally-aligned ring
   --  buffers.\n\n Ring sizes between 2 and 32768 bytes are possible. This can
   --  apply to either read or write addresses, based on value of RING_SEL.
   type CH2_CTRL_TRIG_RING_SIZE_Field is
     (Ring_None)
     with Size => 4;
   for CH2_CTRL_TRIG_RING_SIZE_Field use
     (Ring_None => 0);

   subtype CH2_CTRL_TRIG_RING_SEL_Field is Interfaces.Bit_Types.Bit;
   subtype CH2_CTRL_TRIG_CHAIN_TO_Field is Interfaces.Bit_Types.UInt4;

   --  Select a Transfer Request signal.\n The channel uses the transfer
   --  request signal to pace its data transfer rate. Sources for TREQ signals
   --  are internal (TIMERS) or external (DREQ, a Data Request from the
   --  system).\n 0x0 to 0x3a -> select DREQ n as TREQ
   type CH2_CTRL_TRIG_TREQ_SEL_Field is
     (--  Reset value for the field
      Ch2_Ctrl_Trig_Treq_Sel_Field_Reset,
      --  Select Timer 0 as TREQ
      Timer0,
      --  Select Timer 1 as TREQ
      Timer1,
      --  Select Timer 2 as TREQ (Optional)
      Timer2,
      --  Select Timer 3 as TREQ (Optional)
      Timer3,
      --  Permanent request, for unpaced transfers.
      Permanent)
     with Size => 6;
   for CH2_CTRL_TRIG_TREQ_SEL_Field use
     (Ch2_Ctrl_Trig_Treq_Sel_Field_Reset => 0,
      Timer0 => 59,
      Timer1 => 60,
      Timer2 => 61,
      Timer3 => 62,
      Permanent => 63);

   subtype CH2_CTRL_TRIG_IRQ_QUIET_Field is Interfaces.Bit_Types.Bit;
   subtype CH2_CTRL_TRIG_BSWAP_Field is Interfaces.Bit_Types.Bit;
   subtype CH2_CTRL_TRIG_SNIFF_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH2_CTRL_TRIG_BUSY_Field is Interfaces.Bit_Types.Bit;
   subtype CH2_CTRL_TRIG_WRITE_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH2_CTRL_TRIG_READ_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH2_CTRL_TRIG_AHB_ERROR_Field is Interfaces.Bit_Types.Bit;

   --  DMA Channel 2 Control and Status
   type CH2_CTRL_TRIG_Register is record
      --  DMA Channel Enable.\n When 1, the channel will respond to triggering
      --  events, which will cause it to become BUSY and start transferring
      --  data. When 0, the channel will ignore triggers, stop issuing
      --  transfers, and pause the current transfer sequence (i.e. BUSY will
      --  remain high if already high)
      EN             : CH2_CTRL_TRIG_EN_Field := 16#0#;
      --  HIGH_PRIORITY gives a channel preferential treatment in issue
      --  scheduling: in each scheduling round, all high priority channels are
      --  considered first, and then only a single low priority channel, before
      --  returning to the high priority channels.\n\n This only affects the
      --  order in which the DMA schedules channels. The DMA's bus priority is
      --  not changed. If the DMA is not saturated then a low priority channel
      --  will see no loss of throughput.
      HIGH_PRIORITY  : CH2_CTRL_TRIG_HIGH_PRIORITY_Field := 16#0#;
      --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
      --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
      DATA_SIZE      : CH2_CTRL_TRIG_DATA_SIZE_Field :=
                        Interfaces.RP.DMA.Size_Byte;
      --  If 1, the read address increments with each transfer. If 0, each read
      --  is directed to the same, initial address.\n\n Generally this should
      --  be disabled for peripheral-to-memory transfers.
      INCR_READ      : CH2_CTRL_TRIG_INCR_READ_Field := 16#0#;
      --  If 1, the write address increments with each transfer. If 0, each
      --  write is directed to the same, initial address.\n\n Generally this
      --  should be disabled for memory-to-peripheral transfers.
      INCR_WRITE     : CH2_CTRL_TRIG_INCR_WRITE_Field := 16#0#;
      --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
      --  the lower n bits of the address will change. This wraps the address
      --  on a (1 << n) byte boundary, facilitating access to naturally-aligned
      --  ring buffers.\n\n Ring sizes between 2 and 32768 bytes are possible.
      --  This can apply to either read or write addresses, based on value of
      --  RING_SEL.
      RING_SIZE      : CH2_CTRL_TRIG_RING_SIZE_Field :=
                        Interfaces.RP.DMA.Ring_None;
      --  Select whether RING_SIZE applies to read or write addresses.\n If 0,
      --  read addresses are wrapped on a (1 << RING_SIZE) boundary. If 1,
      --  write addresses are wrapped.
      RING_SEL       : CH2_CTRL_TRIG_RING_SEL_Field := 16#0#;
      --  When this channel completes, it will trigger the channel indicated by
      --  CHAIN_TO. Disable by setting CHAIN_TO = _(this channel)_.\n Reset
      --  value is equal to channel number (2).
      CHAIN_TO       : CH2_CTRL_TRIG_CHAIN_TO_Field := 16#2#;
      --  Select a Transfer Request signal.\n The channel uses the transfer
      --  request signal to pace its data transfer rate. Sources for TREQ
      --  signals are internal (TIMERS) or external (DREQ, a Data Request from
      --  the system).\n 0x0 to 0x3a -> select DREQ n as TREQ
      TREQ_SEL       : CH2_CTRL_TRIG_TREQ_SEL_Field :=
                        Ch2_Ctrl_Trig_Treq_Sel_Field_Reset;
      --  In QUIET mode, the channel does not generate IRQs at the end of every
      --  transfer block. Instead, an IRQ is raised when NULL is written to a
      --  trigger register, indicating the end of a control block chain.\n\n
      --  This reduces the number of interrupts to be serviced by the CPU when
      --  transferring a DMA chain of many small control blocks.
      IRQ_QUIET      : CH2_CTRL_TRIG_IRQ_QUIET_Field := 16#0#;
      --  Apply byte-swap transformation to DMA data.\n For byte data, this has
      --  no effect. For halfword data, the two bytes of each halfword are
      --  swapped. For word data, the four bytes of each word are swapped to
      --  reverse order.
      BSWAP          : CH2_CTRL_TRIG_BSWAP_Field := 16#0#;
      --  If 1, this channel's data transfers are visible to the sniff
      --  hardware, and each transfer will advance the state of the checksum.
      --  This only applies if the sniff hardware is enabled, and has this
      --  channel selected.\n\n This allows checksum to be enabled or disabled
      --  on a per-control- block basis.
      SNIFF_EN       : CH2_CTRL_TRIG_SNIFF_EN_Field := 16#0#;
      --  Read-only. This flag goes high when the channel starts a new transfer
      --  sequence, and low when the last transfer of that sequence completes.
      --  Clearing EN while BUSY is high pauses the channel, and BUSY will stay
      --  high while paused.\n\n To terminate a sequence early (and clear the
      --  BUSY flag), see CHAN_ABORT.
      BUSY           : CH2_CTRL_TRIG_BUSY_Field := 16#0#;
      --  unspecified
      Reserved_25_28 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a write bus error. Write one
      --  to clear.\n WRITE_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 5
      --  transfers later)
      WRITE_ERROR    : CH2_CTRL_TRIG_WRITE_ERROR_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a read bus error. Write one
      --  to clear.\n READ_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 3
      --  transfers later)
      READ_ERROR     : CH2_CTRL_TRIG_READ_ERROR_Field := 16#0#;
      --  Read-only. Logical OR of the READ_ERROR and WRITE_ERROR flags. The
      --  channel halts when it encounters any bus error, and always raises its
      --  channel IRQ flag.
      AHB_ERROR      : CH2_CTRL_TRIG_AHB_ERROR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_CTRL_TRIG_Register use record
      EN             at 0 range 0 .. 0;
      HIGH_PRIORITY  at 0 range 1 .. 1;
      DATA_SIZE      at 0 range 2 .. 3;
      INCR_READ      at 0 range 4 .. 4;
      INCR_WRITE     at 0 range 5 .. 5;
      RING_SIZE      at 0 range 6 .. 9;
      RING_SEL       at 0 range 10 .. 10;
      CHAIN_TO       at 0 range 11 .. 14;
      TREQ_SEL       at 0 range 15 .. 20;
      IRQ_QUIET      at 0 range 21 .. 21;
      BSWAP          at 0 range 22 .. 22;
      SNIFF_EN       at 0 range 23 .. 23;
      BUSY           at 0 range 24 .. 24;
      Reserved_25_28 at 0 range 25 .. 28;
      WRITE_ERROR    at 0 range 29 .. 29;
      READ_ERROR     at 0 range 30 .. 30;
      AHB_ERROR      at 0 range 31 .. 31;
   end record;

   subtype CH3_CTRL_TRIG_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH3_CTRL_TRIG_HIGH_PRIORITY_Field is Interfaces.Bit_Types.Bit;

   --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
   --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
   type CH3_CTRL_TRIG_DATA_SIZE_Field is
     (Size_Byte,
      Size_Halfword,
      Size_Word)
     with Size => 2;
   for CH3_CTRL_TRIG_DATA_SIZE_Field use
     (Size_Byte => 0,
      Size_Halfword => 1,
      Size_Word => 2);

   subtype CH3_CTRL_TRIG_INCR_READ_Field is Interfaces.Bit_Types.Bit;
   subtype CH3_CTRL_TRIG_INCR_WRITE_Field is Interfaces.Bit_Types.Bit;

   --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
   --  the lower n bits of the address will change. This wraps the address on a
   --  (1 << n) byte boundary, facilitating access to naturally-aligned ring
   --  buffers.\n\n Ring sizes between 2 and 32768 bytes are possible. This can
   --  apply to either read or write addresses, based on value of RING_SEL.
   type CH3_CTRL_TRIG_RING_SIZE_Field is
     (Ring_None)
     with Size => 4;
   for CH3_CTRL_TRIG_RING_SIZE_Field use
     (Ring_None => 0);

   subtype CH3_CTRL_TRIG_RING_SEL_Field is Interfaces.Bit_Types.Bit;
   subtype CH3_CTRL_TRIG_CHAIN_TO_Field is Interfaces.Bit_Types.UInt4;

   --  Select a Transfer Request signal.\n The channel uses the transfer
   --  request signal to pace its data transfer rate. Sources for TREQ signals
   --  are internal (TIMERS) or external (DREQ, a Data Request from the
   --  system).\n 0x0 to 0x3a -> select DREQ n as TREQ
   type CH3_CTRL_TRIG_TREQ_SEL_Field is
     (--  Reset value for the field
      Ch3_Ctrl_Trig_Treq_Sel_Field_Reset,
      --  Select Timer 0 as TREQ
      Timer0,
      --  Select Timer 1 as TREQ
      Timer1,
      --  Select Timer 2 as TREQ (Optional)
      Timer2,
      --  Select Timer 3 as TREQ (Optional)
      Timer3,
      --  Permanent request, for unpaced transfers.
      Permanent)
     with Size => 6;
   for CH3_CTRL_TRIG_TREQ_SEL_Field use
     (Ch3_Ctrl_Trig_Treq_Sel_Field_Reset => 0,
      Timer0 => 59,
      Timer1 => 60,
      Timer2 => 61,
      Timer3 => 62,
      Permanent => 63);

   subtype CH3_CTRL_TRIG_IRQ_QUIET_Field is Interfaces.Bit_Types.Bit;
   subtype CH3_CTRL_TRIG_BSWAP_Field is Interfaces.Bit_Types.Bit;
   subtype CH3_CTRL_TRIG_SNIFF_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH3_CTRL_TRIG_BUSY_Field is Interfaces.Bit_Types.Bit;
   subtype CH3_CTRL_TRIG_WRITE_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH3_CTRL_TRIG_READ_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH3_CTRL_TRIG_AHB_ERROR_Field is Interfaces.Bit_Types.Bit;

   --  DMA Channel 3 Control and Status
   type CH3_CTRL_TRIG_Register is record
      --  DMA Channel Enable.\n When 1, the channel will respond to triggering
      --  events, which will cause it to become BUSY and start transferring
      --  data. When 0, the channel will ignore triggers, stop issuing
      --  transfers, and pause the current transfer sequence (i.e. BUSY will
      --  remain high if already high)
      EN             : CH3_CTRL_TRIG_EN_Field := 16#0#;
      --  HIGH_PRIORITY gives a channel preferential treatment in issue
      --  scheduling: in each scheduling round, all high priority channels are
      --  considered first, and then only a single low priority channel, before
      --  returning to the high priority channels.\n\n This only affects the
      --  order in which the DMA schedules channels. The DMA's bus priority is
      --  not changed. If the DMA is not saturated then a low priority channel
      --  will see no loss of throughput.
      HIGH_PRIORITY  : CH3_CTRL_TRIG_HIGH_PRIORITY_Field := 16#0#;
      --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
      --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
      DATA_SIZE      : CH3_CTRL_TRIG_DATA_SIZE_Field :=
                        Interfaces.RP.DMA.Size_Byte;
      --  If 1, the read address increments with each transfer. If 0, each read
      --  is directed to the same, initial address.\n\n Generally this should
      --  be disabled for peripheral-to-memory transfers.
      INCR_READ      : CH3_CTRL_TRIG_INCR_READ_Field := 16#0#;
      --  If 1, the write address increments with each transfer. If 0, each
      --  write is directed to the same, initial address.\n\n Generally this
      --  should be disabled for memory-to-peripheral transfers.
      INCR_WRITE     : CH3_CTRL_TRIG_INCR_WRITE_Field := 16#0#;
      --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
      --  the lower n bits of the address will change. This wraps the address
      --  on a (1 << n) byte boundary, facilitating access to naturally-aligned
      --  ring buffers.\n\n Ring sizes between 2 and 32768 bytes are possible.
      --  This can apply to either read or write addresses, based on value of
      --  RING_SEL.
      RING_SIZE      : CH3_CTRL_TRIG_RING_SIZE_Field :=
                        Interfaces.RP.DMA.Ring_None;
      --  Select whether RING_SIZE applies to read or write addresses.\n If 0,
      --  read addresses are wrapped on a (1 << RING_SIZE) boundary. If 1,
      --  write addresses are wrapped.
      RING_SEL       : CH3_CTRL_TRIG_RING_SEL_Field := 16#0#;
      --  When this channel completes, it will trigger the channel indicated by
      --  CHAIN_TO. Disable by setting CHAIN_TO = _(this channel)_.\n Reset
      --  value is equal to channel number (3).
      CHAIN_TO       : CH3_CTRL_TRIG_CHAIN_TO_Field := 16#3#;
      --  Select a Transfer Request signal.\n The channel uses the transfer
      --  request signal to pace its data transfer rate. Sources for TREQ
      --  signals are internal (TIMERS) or external (DREQ, a Data Request from
      --  the system).\n 0x0 to 0x3a -> select DREQ n as TREQ
      TREQ_SEL       : CH3_CTRL_TRIG_TREQ_SEL_Field :=
                        Ch3_Ctrl_Trig_Treq_Sel_Field_Reset;
      --  In QUIET mode, the channel does not generate IRQs at the end of every
      --  transfer block. Instead, an IRQ is raised when NULL is written to a
      --  trigger register, indicating the end of a control block chain.\n\n
      --  This reduces the number of interrupts to be serviced by the CPU when
      --  transferring a DMA chain of many small control blocks.
      IRQ_QUIET      : CH3_CTRL_TRIG_IRQ_QUIET_Field := 16#0#;
      --  Apply byte-swap transformation to DMA data.\n For byte data, this has
      --  no effect. For halfword data, the two bytes of each halfword are
      --  swapped. For word data, the four bytes of each word are swapped to
      --  reverse order.
      BSWAP          : CH3_CTRL_TRIG_BSWAP_Field := 16#0#;
      --  If 1, this channel's data transfers are visible to the sniff
      --  hardware, and each transfer will advance the state of the checksum.
      --  This only applies if the sniff hardware is enabled, and has this
      --  channel selected.\n\n This allows checksum to be enabled or disabled
      --  on a per-control- block basis.
      SNIFF_EN       : CH3_CTRL_TRIG_SNIFF_EN_Field := 16#0#;
      --  Read-only. This flag goes high when the channel starts a new transfer
      --  sequence, and low when the last transfer of that sequence completes.
      --  Clearing EN while BUSY is high pauses the channel, and BUSY will stay
      --  high while paused.\n\n To terminate a sequence early (and clear the
      --  BUSY flag), see CHAN_ABORT.
      BUSY           : CH3_CTRL_TRIG_BUSY_Field := 16#0#;
      --  unspecified
      Reserved_25_28 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a write bus error. Write one
      --  to clear.\n WRITE_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 5
      --  transfers later)
      WRITE_ERROR    : CH3_CTRL_TRIG_WRITE_ERROR_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a read bus error. Write one
      --  to clear.\n READ_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 3
      --  transfers later)
      READ_ERROR     : CH3_CTRL_TRIG_READ_ERROR_Field := 16#0#;
      --  Read-only. Logical OR of the READ_ERROR and WRITE_ERROR flags. The
      --  channel halts when it encounters any bus error, and always raises its
      --  channel IRQ flag.
      AHB_ERROR      : CH3_CTRL_TRIG_AHB_ERROR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_CTRL_TRIG_Register use record
      EN             at 0 range 0 .. 0;
      HIGH_PRIORITY  at 0 range 1 .. 1;
      DATA_SIZE      at 0 range 2 .. 3;
      INCR_READ      at 0 range 4 .. 4;
      INCR_WRITE     at 0 range 5 .. 5;
      RING_SIZE      at 0 range 6 .. 9;
      RING_SEL       at 0 range 10 .. 10;
      CHAIN_TO       at 0 range 11 .. 14;
      TREQ_SEL       at 0 range 15 .. 20;
      IRQ_QUIET      at 0 range 21 .. 21;
      BSWAP          at 0 range 22 .. 22;
      SNIFF_EN       at 0 range 23 .. 23;
      BUSY           at 0 range 24 .. 24;
      Reserved_25_28 at 0 range 25 .. 28;
      WRITE_ERROR    at 0 range 29 .. 29;
      READ_ERROR     at 0 range 30 .. 30;
      AHB_ERROR      at 0 range 31 .. 31;
   end record;

   subtype CH4_CTRL_TRIG_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH4_CTRL_TRIG_HIGH_PRIORITY_Field is Interfaces.Bit_Types.Bit;

   --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
   --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
   type CH4_CTRL_TRIG_DATA_SIZE_Field is
     (Size_Byte,
      Size_Halfword,
      Size_Word)
     with Size => 2;
   for CH4_CTRL_TRIG_DATA_SIZE_Field use
     (Size_Byte => 0,
      Size_Halfword => 1,
      Size_Word => 2);

   subtype CH4_CTRL_TRIG_INCR_READ_Field is Interfaces.Bit_Types.Bit;
   subtype CH4_CTRL_TRIG_INCR_WRITE_Field is Interfaces.Bit_Types.Bit;

   --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
   --  the lower n bits of the address will change. This wraps the address on a
   --  (1 << n) byte boundary, facilitating access to naturally-aligned ring
   --  buffers.\n\n Ring sizes between 2 and 32768 bytes are possible. This can
   --  apply to either read or write addresses, based on value of RING_SEL.
   type CH4_CTRL_TRIG_RING_SIZE_Field is
     (Ring_None)
     with Size => 4;
   for CH4_CTRL_TRIG_RING_SIZE_Field use
     (Ring_None => 0);

   subtype CH4_CTRL_TRIG_RING_SEL_Field is Interfaces.Bit_Types.Bit;
   subtype CH4_CTRL_TRIG_CHAIN_TO_Field is Interfaces.Bit_Types.UInt4;

   --  Select a Transfer Request signal.\n The channel uses the transfer
   --  request signal to pace its data transfer rate. Sources for TREQ signals
   --  are internal (TIMERS) or external (DREQ, a Data Request from the
   --  system).\n 0x0 to 0x3a -> select DREQ n as TREQ
   type CH4_CTRL_TRIG_TREQ_SEL_Field is
     (--  Reset value for the field
      Ch4_Ctrl_Trig_Treq_Sel_Field_Reset,
      --  Select Timer 0 as TREQ
      Timer0,
      --  Select Timer 1 as TREQ
      Timer1,
      --  Select Timer 2 as TREQ (Optional)
      Timer2,
      --  Select Timer 3 as TREQ (Optional)
      Timer3,
      --  Permanent request, for unpaced transfers.
      Permanent)
     with Size => 6;
   for CH4_CTRL_TRIG_TREQ_SEL_Field use
     (Ch4_Ctrl_Trig_Treq_Sel_Field_Reset => 0,
      Timer0 => 59,
      Timer1 => 60,
      Timer2 => 61,
      Timer3 => 62,
      Permanent => 63);

   subtype CH4_CTRL_TRIG_IRQ_QUIET_Field is Interfaces.Bit_Types.Bit;
   subtype CH4_CTRL_TRIG_BSWAP_Field is Interfaces.Bit_Types.Bit;
   subtype CH4_CTRL_TRIG_SNIFF_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH4_CTRL_TRIG_BUSY_Field is Interfaces.Bit_Types.Bit;
   subtype CH4_CTRL_TRIG_WRITE_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH4_CTRL_TRIG_READ_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH4_CTRL_TRIG_AHB_ERROR_Field is Interfaces.Bit_Types.Bit;

   --  DMA Channel 4 Control and Status
   type CH4_CTRL_TRIG_Register is record
      --  DMA Channel Enable.\n When 1, the channel will respond to triggering
      --  events, which will cause it to become BUSY and start transferring
      --  data. When 0, the channel will ignore triggers, stop issuing
      --  transfers, and pause the current transfer sequence (i.e. BUSY will
      --  remain high if already high)
      EN             : CH4_CTRL_TRIG_EN_Field := 16#0#;
      --  HIGH_PRIORITY gives a channel preferential treatment in issue
      --  scheduling: in each scheduling round, all high priority channels are
      --  considered first, and then only a single low priority channel, before
      --  returning to the high priority channels.\n\n This only affects the
      --  order in which the DMA schedules channels. The DMA's bus priority is
      --  not changed. If the DMA is not saturated then a low priority channel
      --  will see no loss of throughput.
      HIGH_PRIORITY  : CH4_CTRL_TRIG_HIGH_PRIORITY_Field := 16#0#;
      --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
      --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
      DATA_SIZE      : CH4_CTRL_TRIG_DATA_SIZE_Field :=
                        Interfaces.RP.DMA.Size_Byte;
      --  If 1, the read address increments with each transfer. If 0, each read
      --  is directed to the same, initial address.\n\n Generally this should
      --  be disabled for peripheral-to-memory transfers.
      INCR_READ      : CH4_CTRL_TRIG_INCR_READ_Field := 16#0#;
      --  If 1, the write address increments with each transfer. If 0, each
      --  write is directed to the same, initial address.\n\n Generally this
      --  should be disabled for memory-to-peripheral transfers.
      INCR_WRITE     : CH4_CTRL_TRIG_INCR_WRITE_Field := 16#0#;
      --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
      --  the lower n bits of the address will change. This wraps the address
      --  on a (1 << n) byte boundary, facilitating access to naturally-aligned
      --  ring buffers.\n\n Ring sizes between 2 and 32768 bytes are possible.
      --  This can apply to either read or write addresses, based on value of
      --  RING_SEL.
      RING_SIZE      : CH4_CTRL_TRIG_RING_SIZE_Field :=
                        Interfaces.RP.DMA.Ring_None;
      --  Select whether RING_SIZE applies to read or write addresses.\n If 0,
      --  read addresses are wrapped on a (1 << RING_SIZE) boundary. If 1,
      --  write addresses are wrapped.
      RING_SEL       : CH4_CTRL_TRIG_RING_SEL_Field := 16#0#;
      --  When this channel completes, it will trigger the channel indicated by
      --  CHAIN_TO. Disable by setting CHAIN_TO = _(this channel)_.\n Reset
      --  value is equal to channel number (4).
      CHAIN_TO       : CH4_CTRL_TRIG_CHAIN_TO_Field := 16#4#;
      --  Select a Transfer Request signal.\n The channel uses the transfer
      --  request signal to pace its data transfer rate. Sources for TREQ
      --  signals are internal (TIMERS) or external (DREQ, a Data Request from
      --  the system).\n 0x0 to 0x3a -> select DREQ n as TREQ
      TREQ_SEL       : CH4_CTRL_TRIG_TREQ_SEL_Field :=
                        Ch4_Ctrl_Trig_Treq_Sel_Field_Reset;
      --  In QUIET mode, the channel does not generate IRQs at the end of every
      --  transfer block. Instead, an IRQ is raised when NULL is written to a
      --  trigger register, indicating the end of a control block chain.\n\n
      --  This reduces the number of interrupts to be serviced by the CPU when
      --  transferring a DMA chain of many small control blocks.
      IRQ_QUIET      : CH4_CTRL_TRIG_IRQ_QUIET_Field := 16#0#;
      --  Apply byte-swap transformation to DMA data.\n For byte data, this has
      --  no effect. For halfword data, the two bytes of each halfword are
      --  swapped. For word data, the four bytes of each word are swapped to
      --  reverse order.
      BSWAP          : CH4_CTRL_TRIG_BSWAP_Field := 16#0#;
      --  If 1, this channel's data transfers are visible to the sniff
      --  hardware, and each transfer will advance the state of the checksum.
      --  This only applies if the sniff hardware is enabled, and has this
      --  channel selected.\n\n This allows checksum to be enabled or disabled
      --  on a per-control- block basis.
      SNIFF_EN       : CH4_CTRL_TRIG_SNIFF_EN_Field := 16#0#;
      --  Read-only. This flag goes high when the channel starts a new transfer
      --  sequence, and low when the last transfer of that sequence completes.
      --  Clearing EN while BUSY is high pauses the channel, and BUSY will stay
      --  high while paused.\n\n To terminate a sequence early (and clear the
      --  BUSY flag), see CHAN_ABORT.
      BUSY           : CH4_CTRL_TRIG_BUSY_Field := 16#0#;
      --  unspecified
      Reserved_25_28 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a write bus error. Write one
      --  to clear.\n WRITE_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 5
      --  transfers later)
      WRITE_ERROR    : CH4_CTRL_TRIG_WRITE_ERROR_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a read bus error. Write one
      --  to clear.\n READ_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 3
      --  transfers later)
      READ_ERROR     : CH4_CTRL_TRIG_READ_ERROR_Field := 16#0#;
      --  Read-only. Logical OR of the READ_ERROR and WRITE_ERROR flags. The
      --  channel halts when it encounters any bus error, and always raises its
      --  channel IRQ flag.
      AHB_ERROR      : CH4_CTRL_TRIG_AHB_ERROR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH4_CTRL_TRIG_Register use record
      EN             at 0 range 0 .. 0;
      HIGH_PRIORITY  at 0 range 1 .. 1;
      DATA_SIZE      at 0 range 2 .. 3;
      INCR_READ      at 0 range 4 .. 4;
      INCR_WRITE     at 0 range 5 .. 5;
      RING_SIZE      at 0 range 6 .. 9;
      RING_SEL       at 0 range 10 .. 10;
      CHAIN_TO       at 0 range 11 .. 14;
      TREQ_SEL       at 0 range 15 .. 20;
      IRQ_QUIET      at 0 range 21 .. 21;
      BSWAP          at 0 range 22 .. 22;
      SNIFF_EN       at 0 range 23 .. 23;
      BUSY           at 0 range 24 .. 24;
      Reserved_25_28 at 0 range 25 .. 28;
      WRITE_ERROR    at 0 range 29 .. 29;
      READ_ERROR     at 0 range 30 .. 30;
      AHB_ERROR      at 0 range 31 .. 31;
   end record;

   subtype CH5_CTRL_TRIG_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH5_CTRL_TRIG_HIGH_PRIORITY_Field is Interfaces.Bit_Types.Bit;

   --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
   --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
   type CH5_CTRL_TRIG_DATA_SIZE_Field is
     (Size_Byte,
      Size_Halfword,
      Size_Word)
     with Size => 2;
   for CH5_CTRL_TRIG_DATA_SIZE_Field use
     (Size_Byte => 0,
      Size_Halfword => 1,
      Size_Word => 2);

   subtype CH5_CTRL_TRIG_INCR_READ_Field is Interfaces.Bit_Types.Bit;
   subtype CH5_CTRL_TRIG_INCR_WRITE_Field is Interfaces.Bit_Types.Bit;

   --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
   --  the lower n bits of the address will change. This wraps the address on a
   --  (1 << n) byte boundary, facilitating access to naturally-aligned ring
   --  buffers.\n\n Ring sizes between 2 and 32768 bytes are possible. This can
   --  apply to either read or write addresses, based on value of RING_SEL.
   type CH5_CTRL_TRIG_RING_SIZE_Field is
     (Ring_None)
     with Size => 4;
   for CH5_CTRL_TRIG_RING_SIZE_Field use
     (Ring_None => 0);

   subtype CH5_CTRL_TRIG_RING_SEL_Field is Interfaces.Bit_Types.Bit;
   subtype CH5_CTRL_TRIG_CHAIN_TO_Field is Interfaces.Bit_Types.UInt4;

   --  Select a Transfer Request signal.\n The channel uses the transfer
   --  request signal to pace its data transfer rate. Sources for TREQ signals
   --  are internal (TIMERS) or external (DREQ, a Data Request from the
   --  system).\n 0x0 to 0x3a -> select DREQ n as TREQ
   type CH5_CTRL_TRIG_TREQ_SEL_Field is
     (--  Reset value for the field
      Ch5_Ctrl_Trig_Treq_Sel_Field_Reset,
      --  Select Timer 0 as TREQ
      Timer0,
      --  Select Timer 1 as TREQ
      Timer1,
      --  Select Timer 2 as TREQ (Optional)
      Timer2,
      --  Select Timer 3 as TREQ (Optional)
      Timer3,
      --  Permanent request, for unpaced transfers.
      Permanent)
     with Size => 6;
   for CH5_CTRL_TRIG_TREQ_SEL_Field use
     (Ch5_Ctrl_Trig_Treq_Sel_Field_Reset => 0,
      Timer0 => 59,
      Timer1 => 60,
      Timer2 => 61,
      Timer3 => 62,
      Permanent => 63);

   subtype CH5_CTRL_TRIG_IRQ_QUIET_Field is Interfaces.Bit_Types.Bit;
   subtype CH5_CTRL_TRIG_BSWAP_Field is Interfaces.Bit_Types.Bit;
   subtype CH5_CTRL_TRIG_SNIFF_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH5_CTRL_TRIG_BUSY_Field is Interfaces.Bit_Types.Bit;
   subtype CH5_CTRL_TRIG_WRITE_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH5_CTRL_TRIG_READ_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH5_CTRL_TRIG_AHB_ERROR_Field is Interfaces.Bit_Types.Bit;

   --  DMA Channel 5 Control and Status
   type CH5_CTRL_TRIG_Register is record
      --  DMA Channel Enable.\n When 1, the channel will respond to triggering
      --  events, which will cause it to become BUSY and start transferring
      --  data. When 0, the channel will ignore triggers, stop issuing
      --  transfers, and pause the current transfer sequence (i.e. BUSY will
      --  remain high if already high)
      EN             : CH5_CTRL_TRIG_EN_Field := 16#0#;
      --  HIGH_PRIORITY gives a channel preferential treatment in issue
      --  scheduling: in each scheduling round, all high priority channels are
      --  considered first, and then only a single low priority channel, before
      --  returning to the high priority channels.\n\n This only affects the
      --  order in which the DMA schedules channels. The DMA's bus priority is
      --  not changed. If the DMA is not saturated then a low priority channel
      --  will see no loss of throughput.
      HIGH_PRIORITY  : CH5_CTRL_TRIG_HIGH_PRIORITY_Field := 16#0#;
      --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
      --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
      DATA_SIZE      : CH5_CTRL_TRIG_DATA_SIZE_Field :=
                        Interfaces.RP.DMA.Size_Byte;
      --  If 1, the read address increments with each transfer. If 0, each read
      --  is directed to the same, initial address.\n\n Generally this should
      --  be disabled for peripheral-to-memory transfers.
      INCR_READ      : CH5_CTRL_TRIG_INCR_READ_Field := 16#0#;
      --  If 1, the write address increments with each transfer. If 0, each
      --  write is directed to the same, initial address.\n\n Generally this
      --  should be disabled for memory-to-peripheral transfers.
      INCR_WRITE     : CH5_CTRL_TRIG_INCR_WRITE_Field := 16#0#;
      --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
      --  the lower n bits of the address will change. This wraps the address
      --  on a (1 << n) byte boundary, facilitating access to naturally-aligned
      --  ring buffers.\n\n Ring sizes between 2 and 32768 bytes are possible.
      --  This can apply to either read or write addresses, based on value of
      --  RING_SEL.
      RING_SIZE      : CH5_CTRL_TRIG_RING_SIZE_Field :=
                        Interfaces.RP.DMA.Ring_None;
      --  Select whether RING_SIZE applies to read or write addresses.\n If 0,
      --  read addresses are wrapped on a (1 << RING_SIZE) boundary. If 1,
      --  write addresses are wrapped.
      RING_SEL       : CH5_CTRL_TRIG_RING_SEL_Field := 16#0#;
      --  When this channel completes, it will trigger the channel indicated by
      --  CHAIN_TO. Disable by setting CHAIN_TO = _(this channel)_.\n Reset
      --  value is equal to channel number (5).
      CHAIN_TO       : CH5_CTRL_TRIG_CHAIN_TO_Field := 16#5#;
      --  Select a Transfer Request signal.\n The channel uses the transfer
      --  request signal to pace its data transfer rate. Sources for TREQ
      --  signals are internal (TIMERS) or external (DREQ, a Data Request from
      --  the system).\n 0x0 to 0x3a -> select DREQ n as TREQ
      TREQ_SEL       : CH5_CTRL_TRIG_TREQ_SEL_Field :=
                        Ch5_Ctrl_Trig_Treq_Sel_Field_Reset;
      --  In QUIET mode, the channel does not generate IRQs at the end of every
      --  transfer block. Instead, an IRQ is raised when NULL is written to a
      --  trigger register, indicating the end of a control block chain.\n\n
      --  This reduces the number of interrupts to be serviced by the CPU when
      --  transferring a DMA chain of many small control blocks.
      IRQ_QUIET      : CH5_CTRL_TRIG_IRQ_QUIET_Field := 16#0#;
      --  Apply byte-swap transformation to DMA data.\n For byte data, this has
      --  no effect. For halfword data, the two bytes of each halfword are
      --  swapped. For word data, the four bytes of each word are swapped to
      --  reverse order.
      BSWAP          : CH5_CTRL_TRIG_BSWAP_Field := 16#0#;
      --  If 1, this channel's data transfers are visible to the sniff
      --  hardware, and each transfer will advance the state of the checksum.
      --  This only applies if the sniff hardware is enabled, and has this
      --  channel selected.\n\n This allows checksum to be enabled or disabled
      --  on a per-control- block basis.
      SNIFF_EN       : CH5_CTRL_TRIG_SNIFF_EN_Field := 16#0#;
      --  Read-only. This flag goes high when the channel starts a new transfer
      --  sequence, and low when the last transfer of that sequence completes.
      --  Clearing EN while BUSY is high pauses the channel, and BUSY will stay
      --  high while paused.\n\n To terminate a sequence early (and clear the
      --  BUSY flag), see CHAN_ABORT.
      BUSY           : CH5_CTRL_TRIG_BUSY_Field := 16#0#;
      --  unspecified
      Reserved_25_28 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a write bus error. Write one
      --  to clear.\n WRITE_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 5
      --  transfers later)
      WRITE_ERROR    : CH5_CTRL_TRIG_WRITE_ERROR_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a read bus error. Write one
      --  to clear.\n READ_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 3
      --  transfers later)
      READ_ERROR     : CH5_CTRL_TRIG_READ_ERROR_Field := 16#0#;
      --  Read-only. Logical OR of the READ_ERROR and WRITE_ERROR flags. The
      --  channel halts when it encounters any bus error, and always raises its
      --  channel IRQ flag.
      AHB_ERROR      : CH5_CTRL_TRIG_AHB_ERROR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH5_CTRL_TRIG_Register use record
      EN             at 0 range 0 .. 0;
      HIGH_PRIORITY  at 0 range 1 .. 1;
      DATA_SIZE      at 0 range 2 .. 3;
      INCR_READ      at 0 range 4 .. 4;
      INCR_WRITE     at 0 range 5 .. 5;
      RING_SIZE      at 0 range 6 .. 9;
      RING_SEL       at 0 range 10 .. 10;
      CHAIN_TO       at 0 range 11 .. 14;
      TREQ_SEL       at 0 range 15 .. 20;
      IRQ_QUIET      at 0 range 21 .. 21;
      BSWAP          at 0 range 22 .. 22;
      SNIFF_EN       at 0 range 23 .. 23;
      BUSY           at 0 range 24 .. 24;
      Reserved_25_28 at 0 range 25 .. 28;
      WRITE_ERROR    at 0 range 29 .. 29;
      READ_ERROR     at 0 range 30 .. 30;
      AHB_ERROR      at 0 range 31 .. 31;
   end record;

   subtype CH6_CTRL_TRIG_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH6_CTRL_TRIG_HIGH_PRIORITY_Field is Interfaces.Bit_Types.Bit;

   --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
   --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
   type CH6_CTRL_TRIG_DATA_SIZE_Field is
     (Size_Byte,
      Size_Halfword,
      Size_Word)
     with Size => 2;
   for CH6_CTRL_TRIG_DATA_SIZE_Field use
     (Size_Byte => 0,
      Size_Halfword => 1,
      Size_Word => 2);

   subtype CH6_CTRL_TRIG_INCR_READ_Field is Interfaces.Bit_Types.Bit;
   subtype CH6_CTRL_TRIG_INCR_WRITE_Field is Interfaces.Bit_Types.Bit;

   --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
   --  the lower n bits of the address will change. This wraps the address on a
   --  (1 << n) byte boundary, facilitating access to naturally-aligned ring
   --  buffers.\n\n Ring sizes between 2 and 32768 bytes are possible. This can
   --  apply to either read or write addresses, based on value of RING_SEL.
   type CH6_CTRL_TRIG_RING_SIZE_Field is
     (Ring_None)
     with Size => 4;
   for CH6_CTRL_TRIG_RING_SIZE_Field use
     (Ring_None => 0);

   subtype CH6_CTRL_TRIG_RING_SEL_Field is Interfaces.Bit_Types.Bit;
   subtype CH6_CTRL_TRIG_CHAIN_TO_Field is Interfaces.Bit_Types.UInt4;

   --  Select a Transfer Request signal.\n The channel uses the transfer
   --  request signal to pace its data transfer rate. Sources for TREQ signals
   --  are internal (TIMERS) or external (DREQ, a Data Request from the
   --  system).\n 0x0 to 0x3a -> select DREQ n as TREQ
   type CH6_CTRL_TRIG_TREQ_SEL_Field is
     (--  Reset value for the field
      Ch6_Ctrl_Trig_Treq_Sel_Field_Reset,
      --  Select Timer 0 as TREQ
      Timer0,
      --  Select Timer 1 as TREQ
      Timer1,
      --  Select Timer 2 as TREQ (Optional)
      Timer2,
      --  Select Timer 3 as TREQ (Optional)
      Timer3,
      --  Permanent request, for unpaced transfers.
      Permanent)
     with Size => 6;
   for CH6_CTRL_TRIG_TREQ_SEL_Field use
     (Ch6_Ctrl_Trig_Treq_Sel_Field_Reset => 0,
      Timer0 => 59,
      Timer1 => 60,
      Timer2 => 61,
      Timer3 => 62,
      Permanent => 63);

   subtype CH6_CTRL_TRIG_IRQ_QUIET_Field is Interfaces.Bit_Types.Bit;
   subtype CH6_CTRL_TRIG_BSWAP_Field is Interfaces.Bit_Types.Bit;
   subtype CH6_CTRL_TRIG_SNIFF_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH6_CTRL_TRIG_BUSY_Field is Interfaces.Bit_Types.Bit;
   subtype CH6_CTRL_TRIG_WRITE_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH6_CTRL_TRIG_READ_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH6_CTRL_TRIG_AHB_ERROR_Field is Interfaces.Bit_Types.Bit;

   --  DMA Channel 6 Control and Status
   type CH6_CTRL_TRIG_Register is record
      --  DMA Channel Enable.\n When 1, the channel will respond to triggering
      --  events, which will cause it to become BUSY and start transferring
      --  data. When 0, the channel will ignore triggers, stop issuing
      --  transfers, and pause the current transfer sequence (i.e. BUSY will
      --  remain high if already high)
      EN             : CH6_CTRL_TRIG_EN_Field := 16#0#;
      --  HIGH_PRIORITY gives a channel preferential treatment in issue
      --  scheduling: in each scheduling round, all high priority channels are
      --  considered first, and then only a single low priority channel, before
      --  returning to the high priority channels.\n\n This only affects the
      --  order in which the DMA schedules channels. The DMA's bus priority is
      --  not changed. If the DMA is not saturated then a low priority channel
      --  will see no loss of throughput.
      HIGH_PRIORITY  : CH6_CTRL_TRIG_HIGH_PRIORITY_Field := 16#0#;
      --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
      --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
      DATA_SIZE      : CH6_CTRL_TRIG_DATA_SIZE_Field :=
                        Interfaces.RP.DMA.Size_Byte;
      --  If 1, the read address increments with each transfer. If 0, each read
      --  is directed to the same, initial address.\n\n Generally this should
      --  be disabled for peripheral-to-memory transfers.
      INCR_READ      : CH6_CTRL_TRIG_INCR_READ_Field := 16#0#;
      --  If 1, the write address increments with each transfer. If 0, each
      --  write is directed to the same, initial address.\n\n Generally this
      --  should be disabled for memory-to-peripheral transfers.
      INCR_WRITE     : CH6_CTRL_TRIG_INCR_WRITE_Field := 16#0#;
      --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
      --  the lower n bits of the address will change. This wraps the address
      --  on a (1 << n) byte boundary, facilitating access to naturally-aligned
      --  ring buffers.\n\n Ring sizes between 2 and 32768 bytes are possible.
      --  This can apply to either read or write addresses, based on value of
      --  RING_SEL.
      RING_SIZE      : CH6_CTRL_TRIG_RING_SIZE_Field :=
                        Interfaces.RP.DMA.Ring_None;
      --  Select whether RING_SIZE applies to read or write addresses.\n If 0,
      --  read addresses are wrapped on a (1 << RING_SIZE) boundary. If 1,
      --  write addresses are wrapped.
      RING_SEL       : CH6_CTRL_TRIG_RING_SEL_Field := 16#0#;
      --  When this channel completes, it will trigger the channel indicated by
      --  CHAIN_TO. Disable by setting CHAIN_TO = _(this channel)_.\n Reset
      --  value is equal to channel number (6).
      CHAIN_TO       : CH6_CTRL_TRIG_CHAIN_TO_Field := 16#6#;
      --  Select a Transfer Request signal.\n The channel uses the transfer
      --  request signal to pace its data transfer rate. Sources for TREQ
      --  signals are internal (TIMERS) or external (DREQ, a Data Request from
      --  the system).\n 0x0 to 0x3a -> select DREQ n as TREQ
      TREQ_SEL       : CH6_CTRL_TRIG_TREQ_SEL_Field :=
                        Ch6_Ctrl_Trig_Treq_Sel_Field_Reset;
      --  In QUIET mode, the channel does not generate IRQs at the end of every
      --  transfer block. Instead, an IRQ is raised when NULL is written to a
      --  trigger register, indicating the end of a control block chain.\n\n
      --  This reduces the number of interrupts to be serviced by the CPU when
      --  transferring a DMA chain of many small control blocks.
      IRQ_QUIET      : CH6_CTRL_TRIG_IRQ_QUIET_Field := 16#0#;
      --  Apply byte-swap transformation to DMA data.\n For byte data, this has
      --  no effect. For halfword data, the two bytes of each halfword are
      --  swapped. For word data, the four bytes of each word are swapped to
      --  reverse order.
      BSWAP          : CH6_CTRL_TRIG_BSWAP_Field := 16#0#;
      --  If 1, this channel's data transfers are visible to the sniff
      --  hardware, and each transfer will advance the state of the checksum.
      --  This only applies if the sniff hardware is enabled, and has this
      --  channel selected.\n\n This allows checksum to be enabled or disabled
      --  on a per-control- block basis.
      SNIFF_EN       : CH6_CTRL_TRIG_SNIFF_EN_Field := 16#0#;
      --  Read-only. This flag goes high when the channel starts a new transfer
      --  sequence, and low when the last transfer of that sequence completes.
      --  Clearing EN while BUSY is high pauses the channel, and BUSY will stay
      --  high while paused.\n\n To terminate a sequence early (and clear the
      --  BUSY flag), see CHAN_ABORT.
      BUSY           : CH6_CTRL_TRIG_BUSY_Field := 16#0#;
      --  unspecified
      Reserved_25_28 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a write bus error. Write one
      --  to clear.\n WRITE_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 5
      --  transfers later)
      WRITE_ERROR    : CH6_CTRL_TRIG_WRITE_ERROR_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a read bus error. Write one
      --  to clear.\n READ_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 3
      --  transfers later)
      READ_ERROR     : CH6_CTRL_TRIG_READ_ERROR_Field := 16#0#;
      --  Read-only. Logical OR of the READ_ERROR and WRITE_ERROR flags. The
      --  channel halts when it encounters any bus error, and always raises its
      --  channel IRQ flag.
      AHB_ERROR      : CH6_CTRL_TRIG_AHB_ERROR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH6_CTRL_TRIG_Register use record
      EN             at 0 range 0 .. 0;
      HIGH_PRIORITY  at 0 range 1 .. 1;
      DATA_SIZE      at 0 range 2 .. 3;
      INCR_READ      at 0 range 4 .. 4;
      INCR_WRITE     at 0 range 5 .. 5;
      RING_SIZE      at 0 range 6 .. 9;
      RING_SEL       at 0 range 10 .. 10;
      CHAIN_TO       at 0 range 11 .. 14;
      TREQ_SEL       at 0 range 15 .. 20;
      IRQ_QUIET      at 0 range 21 .. 21;
      BSWAP          at 0 range 22 .. 22;
      SNIFF_EN       at 0 range 23 .. 23;
      BUSY           at 0 range 24 .. 24;
      Reserved_25_28 at 0 range 25 .. 28;
      WRITE_ERROR    at 0 range 29 .. 29;
      READ_ERROR     at 0 range 30 .. 30;
      AHB_ERROR      at 0 range 31 .. 31;
   end record;

   subtype CH7_CTRL_TRIG_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH7_CTRL_TRIG_HIGH_PRIORITY_Field is Interfaces.Bit_Types.Bit;

   --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
   --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
   type CH7_CTRL_TRIG_DATA_SIZE_Field is
     (Size_Byte,
      Size_Halfword,
      Size_Word)
     with Size => 2;
   for CH7_CTRL_TRIG_DATA_SIZE_Field use
     (Size_Byte => 0,
      Size_Halfword => 1,
      Size_Word => 2);

   subtype CH7_CTRL_TRIG_INCR_READ_Field is Interfaces.Bit_Types.Bit;
   subtype CH7_CTRL_TRIG_INCR_WRITE_Field is Interfaces.Bit_Types.Bit;

   --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
   --  the lower n bits of the address will change. This wraps the address on a
   --  (1 << n) byte boundary, facilitating access to naturally-aligned ring
   --  buffers.\n\n Ring sizes between 2 and 32768 bytes are possible. This can
   --  apply to either read or write addresses, based on value of RING_SEL.
   type CH7_CTRL_TRIG_RING_SIZE_Field is
     (Ring_None)
     with Size => 4;
   for CH7_CTRL_TRIG_RING_SIZE_Field use
     (Ring_None => 0);

   subtype CH7_CTRL_TRIG_RING_SEL_Field is Interfaces.Bit_Types.Bit;
   subtype CH7_CTRL_TRIG_CHAIN_TO_Field is Interfaces.Bit_Types.UInt4;

   --  Select a Transfer Request signal.\n The channel uses the transfer
   --  request signal to pace its data transfer rate. Sources for TREQ signals
   --  are internal (TIMERS) or external (DREQ, a Data Request from the
   --  system).\n 0x0 to 0x3a -> select DREQ n as TREQ
   type CH7_CTRL_TRIG_TREQ_SEL_Field is
     (--  Reset value for the field
      Ch7_Ctrl_Trig_Treq_Sel_Field_Reset,
      --  Select Timer 0 as TREQ
      Timer0,
      --  Select Timer 1 as TREQ
      Timer1,
      --  Select Timer 2 as TREQ (Optional)
      Timer2,
      --  Select Timer 3 as TREQ (Optional)
      Timer3,
      --  Permanent request, for unpaced transfers.
      Permanent)
     with Size => 6;
   for CH7_CTRL_TRIG_TREQ_SEL_Field use
     (Ch7_Ctrl_Trig_Treq_Sel_Field_Reset => 0,
      Timer0 => 59,
      Timer1 => 60,
      Timer2 => 61,
      Timer3 => 62,
      Permanent => 63);

   subtype CH7_CTRL_TRIG_IRQ_QUIET_Field is Interfaces.Bit_Types.Bit;
   subtype CH7_CTRL_TRIG_BSWAP_Field is Interfaces.Bit_Types.Bit;
   subtype CH7_CTRL_TRIG_SNIFF_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH7_CTRL_TRIG_BUSY_Field is Interfaces.Bit_Types.Bit;
   subtype CH7_CTRL_TRIG_WRITE_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH7_CTRL_TRIG_READ_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH7_CTRL_TRIG_AHB_ERROR_Field is Interfaces.Bit_Types.Bit;

   --  DMA Channel 7 Control and Status
   type CH7_CTRL_TRIG_Register is record
      --  DMA Channel Enable.\n When 1, the channel will respond to triggering
      --  events, which will cause it to become BUSY and start transferring
      --  data. When 0, the channel will ignore triggers, stop issuing
      --  transfers, and pause the current transfer sequence (i.e. BUSY will
      --  remain high if already high)
      EN             : CH7_CTRL_TRIG_EN_Field := 16#0#;
      --  HIGH_PRIORITY gives a channel preferential treatment in issue
      --  scheduling: in each scheduling round, all high priority channels are
      --  considered first, and then only a single low priority channel, before
      --  returning to the high priority channels.\n\n This only affects the
      --  order in which the DMA schedules channels. The DMA's bus priority is
      --  not changed. If the DMA is not saturated then a low priority channel
      --  will see no loss of throughput.
      HIGH_PRIORITY  : CH7_CTRL_TRIG_HIGH_PRIORITY_Field := 16#0#;
      --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
      --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
      DATA_SIZE      : CH7_CTRL_TRIG_DATA_SIZE_Field :=
                        Interfaces.RP.DMA.Size_Byte;
      --  If 1, the read address increments with each transfer. If 0, each read
      --  is directed to the same, initial address.\n\n Generally this should
      --  be disabled for peripheral-to-memory transfers.
      INCR_READ      : CH7_CTRL_TRIG_INCR_READ_Field := 16#0#;
      --  If 1, the write address increments with each transfer. If 0, each
      --  write is directed to the same, initial address.\n\n Generally this
      --  should be disabled for memory-to-peripheral transfers.
      INCR_WRITE     : CH7_CTRL_TRIG_INCR_WRITE_Field := 16#0#;
      --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
      --  the lower n bits of the address will change. This wraps the address
      --  on a (1 << n) byte boundary, facilitating access to naturally-aligned
      --  ring buffers.\n\n Ring sizes between 2 and 32768 bytes are possible.
      --  This can apply to either read or write addresses, based on value of
      --  RING_SEL.
      RING_SIZE      : CH7_CTRL_TRIG_RING_SIZE_Field :=
                        Interfaces.RP.DMA.Ring_None;
      --  Select whether RING_SIZE applies to read or write addresses.\n If 0,
      --  read addresses are wrapped on a (1 << RING_SIZE) boundary. If 1,
      --  write addresses are wrapped.
      RING_SEL       : CH7_CTRL_TRIG_RING_SEL_Field := 16#0#;
      --  When this channel completes, it will trigger the channel indicated by
      --  CHAIN_TO. Disable by setting CHAIN_TO = _(this channel)_.\n Reset
      --  value is equal to channel number (7).
      CHAIN_TO       : CH7_CTRL_TRIG_CHAIN_TO_Field := 16#7#;
      --  Select a Transfer Request signal.\n The channel uses the transfer
      --  request signal to pace its data transfer rate. Sources for TREQ
      --  signals are internal (TIMERS) or external (DREQ, a Data Request from
      --  the system).\n 0x0 to 0x3a -> select DREQ n as TREQ
      TREQ_SEL       : CH7_CTRL_TRIG_TREQ_SEL_Field :=
                        Ch7_Ctrl_Trig_Treq_Sel_Field_Reset;
      --  In QUIET mode, the channel does not generate IRQs at the end of every
      --  transfer block. Instead, an IRQ is raised when NULL is written to a
      --  trigger register, indicating the end of a control block chain.\n\n
      --  This reduces the number of interrupts to be serviced by the CPU when
      --  transferring a DMA chain of many small control blocks.
      IRQ_QUIET      : CH7_CTRL_TRIG_IRQ_QUIET_Field := 16#0#;
      --  Apply byte-swap transformation to DMA data.\n For byte data, this has
      --  no effect. For halfword data, the two bytes of each halfword are
      --  swapped. For word data, the four bytes of each word are swapped to
      --  reverse order.
      BSWAP          : CH7_CTRL_TRIG_BSWAP_Field := 16#0#;
      --  If 1, this channel's data transfers are visible to the sniff
      --  hardware, and each transfer will advance the state of the checksum.
      --  This only applies if the sniff hardware is enabled, and has this
      --  channel selected.\n\n This allows checksum to be enabled or disabled
      --  on a per-control- block basis.
      SNIFF_EN       : CH7_CTRL_TRIG_SNIFF_EN_Field := 16#0#;
      --  Read-only. This flag goes high when the channel starts a new transfer
      --  sequence, and low when the last transfer of that sequence completes.
      --  Clearing EN while BUSY is high pauses the channel, and BUSY will stay
      --  high while paused.\n\n To terminate a sequence early (and clear the
      --  BUSY flag), see CHAN_ABORT.
      BUSY           : CH7_CTRL_TRIG_BUSY_Field := 16#0#;
      --  unspecified
      Reserved_25_28 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a write bus error. Write one
      --  to clear.\n WRITE_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 5
      --  transfers later)
      WRITE_ERROR    : CH7_CTRL_TRIG_WRITE_ERROR_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a read bus error. Write one
      --  to clear.\n READ_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 3
      --  transfers later)
      READ_ERROR     : CH7_CTRL_TRIG_READ_ERROR_Field := 16#0#;
      --  Read-only. Logical OR of the READ_ERROR and WRITE_ERROR flags. The
      --  channel halts when it encounters any bus error, and always raises its
      --  channel IRQ flag.
      AHB_ERROR      : CH7_CTRL_TRIG_AHB_ERROR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH7_CTRL_TRIG_Register use record
      EN             at 0 range 0 .. 0;
      HIGH_PRIORITY  at 0 range 1 .. 1;
      DATA_SIZE      at 0 range 2 .. 3;
      INCR_READ      at 0 range 4 .. 4;
      INCR_WRITE     at 0 range 5 .. 5;
      RING_SIZE      at 0 range 6 .. 9;
      RING_SEL       at 0 range 10 .. 10;
      CHAIN_TO       at 0 range 11 .. 14;
      TREQ_SEL       at 0 range 15 .. 20;
      IRQ_QUIET      at 0 range 21 .. 21;
      BSWAP          at 0 range 22 .. 22;
      SNIFF_EN       at 0 range 23 .. 23;
      BUSY           at 0 range 24 .. 24;
      Reserved_25_28 at 0 range 25 .. 28;
      WRITE_ERROR    at 0 range 29 .. 29;
      READ_ERROR     at 0 range 30 .. 30;
      AHB_ERROR      at 0 range 31 .. 31;
   end record;

   subtype CH8_CTRL_TRIG_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH8_CTRL_TRIG_HIGH_PRIORITY_Field is Interfaces.Bit_Types.Bit;

   --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
   --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
   type CH8_CTRL_TRIG_DATA_SIZE_Field is
     (Size_Byte,
      Size_Halfword,
      Size_Word)
     with Size => 2;
   for CH8_CTRL_TRIG_DATA_SIZE_Field use
     (Size_Byte => 0,
      Size_Halfword => 1,
      Size_Word => 2);

   subtype CH8_CTRL_TRIG_INCR_READ_Field is Interfaces.Bit_Types.Bit;
   subtype CH8_CTRL_TRIG_INCR_WRITE_Field is Interfaces.Bit_Types.Bit;

   --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
   --  the lower n bits of the address will change. This wraps the address on a
   --  (1 << n) byte boundary, facilitating access to naturally-aligned ring
   --  buffers.\n\n Ring sizes between 2 and 32768 bytes are possible. This can
   --  apply to either read or write addresses, based on value of RING_SEL.
   type CH8_CTRL_TRIG_RING_SIZE_Field is
     (Ring_None)
     with Size => 4;
   for CH8_CTRL_TRIG_RING_SIZE_Field use
     (Ring_None => 0);

   subtype CH8_CTRL_TRIG_RING_SEL_Field is Interfaces.Bit_Types.Bit;
   subtype CH8_CTRL_TRIG_CHAIN_TO_Field is Interfaces.Bit_Types.UInt4;

   --  Select a Transfer Request signal.\n The channel uses the transfer
   --  request signal to pace its data transfer rate. Sources for TREQ signals
   --  are internal (TIMERS) or external (DREQ, a Data Request from the
   --  system).\n 0x0 to 0x3a -> select DREQ n as TREQ
   type CH8_CTRL_TRIG_TREQ_SEL_Field is
     (--  Reset value for the field
      Ch8_Ctrl_Trig_Treq_Sel_Field_Reset,
      --  Select Timer 0 as TREQ
      Timer0,
      --  Select Timer 1 as TREQ
      Timer1,
      --  Select Timer 2 as TREQ (Optional)
      Timer2,
      --  Select Timer 3 as TREQ (Optional)
      Timer3,
      --  Permanent request, for unpaced transfers.
      Permanent)
     with Size => 6;
   for CH8_CTRL_TRIG_TREQ_SEL_Field use
     (Ch8_Ctrl_Trig_Treq_Sel_Field_Reset => 0,
      Timer0 => 59,
      Timer1 => 60,
      Timer2 => 61,
      Timer3 => 62,
      Permanent => 63);

   subtype CH8_CTRL_TRIG_IRQ_QUIET_Field is Interfaces.Bit_Types.Bit;
   subtype CH8_CTRL_TRIG_BSWAP_Field is Interfaces.Bit_Types.Bit;
   subtype CH8_CTRL_TRIG_SNIFF_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH8_CTRL_TRIG_BUSY_Field is Interfaces.Bit_Types.Bit;
   subtype CH8_CTRL_TRIG_WRITE_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH8_CTRL_TRIG_READ_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH8_CTRL_TRIG_AHB_ERROR_Field is Interfaces.Bit_Types.Bit;

   --  DMA Channel 8 Control and Status
   type CH8_CTRL_TRIG_Register is record
      --  DMA Channel Enable.\n When 1, the channel will respond to triggering
      --  events, which will cause it to become BUSY and start transferring
      --  data. When 0, the channel will ignore triggers, stop issuing
      --  transfers, and pause the current transfer sequence (i.e. BUSY will
      --  remain high if already high)
      EN             : CH8_CTRL_TRIG_EN_Field := 16#0#;
      --  HIGH_PRIORITY gives a channel preferential treatment in issue
      --  scheduling: in each scheduling round, all high priority channels are
      --  considered first, and then only a single low priority channel, before
      --  returning to the high priority channels.\n\n This only affects the
      --  order in which the DMA schedules channels. The DMA's bus priority is
      --  not changed. If the DMA is not saturated then a low priority channel
      --  will see no loss of throughput.
      HIGH_PRIORITY  : CH8_CTRL_TRIG_HIGH_PRIORITY_Field := 16#0#;
      --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
      --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
      DATA_SIZE      : CH8_CTRL_TRIG_DATA_SIZE_Field :=
                        Interfaces.RP.DMA.Size_Byte;
      --  If 1, the read address increments with each transfer. If 0, each read
      --  is directed to the same, initial address.\n\n Generally this should
      --  be disabled for peripheral-to-memory transfers.
      INCR_READ      : CH8_CTRL_TRIG_INCR_READ_Field := 16#0#;
      --  If 1, the write address increments with each transfer. If 0, each
      --  write is directed to the same, initial address.\n\n Generally this
      --  should be disabled for memory-to-peripheral transfers.
      INCR_WRITE     : CH8_CTRL_TRIG_INCR_WRITE_Field := 16#0#;
      --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
      --  the lower n bits of the address will change. This wraps the address
      --  on a (1 << n) byte boundary, facilitating access to naturally-aligned
      --  ring buffers.\n\n Ring sizes between 2 and 32768 bytes are possible.
      --  This can apply to either read or write addresses, based on value of
      --  RING_SEL.
      RING_SIZE      : CH8_CTRL_TRIG_RING_SIZE_Field :=
                        Interfaces.RP.DMA.Ring_None;
      --  Select whether RING_SIZE applies to read or write addresses.\n If 0,
      --  read addresses are wrapped on a (1 << RING_SIZE) boundary. If 1,
      --  write addresses are wrapped.
      RING_SEL       : CH8_CTRL_TRIG_RING_SEL_Field := 16#0#;
      --  When this channel completes, it will trigger the channel indicated by
      --  CHAIN_TO. Disable by setting CHAIN_TO = _(this channel)_.\n Reset
      --  value is equal to channel number (8).
      CHAIN_TO       : CH8_CTRL_TRIG_CHAIN_TO_Field := 16#8#;
      --  Select a Transfer Request signal.\n The channel uses the transfer
      --  request signal to pace its data transfer rate. Sources for TREQ
      --  signals are internal (TIMERS) or external (DREQ, a Data Request from
      --  the system).\n 0x0 to 0x3a -> select DREQ n as TREQ
      TREQ_SEL       : CH8_CTRL_TRIG_TREQ_SEL_Field :=
                        Ch8_Ctrl_Trig_Treq_Sel_Field_Reset;
      --  In QUIET mode, the channel does not generate IRQs at the end of every
      --  transfer block. Instead, an IRQ is raised when NULL is written to a
      --  trigger register, indicating the end of a control block chain.\n\n
      --  This reduces the number of interrupts to be serviced by the CPU when
      --  transferring a DMA chain of many small control blocks.
      IRQ_QUIET      : CH8_CTRL_TRIG_IRQ_QUIET_Field := 16#0#;
      --  Apply byte-swap transformation to DMA data.\n For byte data, this has
      --  no effect. For halfword data, the two bytes of each halfword are
      --  swapped. For word data, the four bytes of each word are swapped to
      --  reverse order.
      BSWAP          : CH8_CTRL_TRIG_BSWAP_Field := 16#0#;
      --  If 1, this channel's data transfers are visible to the sniff
      --  hardware, and each transfer will advance the state of the checksum.
      --  This only applies if the sniff hardware is enabled, and has this
      --  channel selected.\n\n This allows checksum to be enabled or disabled
      --  on a per-control- block basis.
      SNIFF_EN       : CH8_CTRL_TRIG_SNIFF_EN_Field := 16#0#;
      --  Read-only. This flag goes high when the channel starts a new transfer
      --  sequence, and low when the last transfer of that sequence completes.
      --  Clearing EN while BUSY is high pauses the channel, and BUSY will stay
      --  high while paused.\n\n To terminate a sequence early (and clear the
      --  BUSY flag), see CHAN_ABORT.
      BUSY           : CH8_CTRL_TRIG_BUSY_Field := 16#0#;
      --  unspecified
      Reserved_25_28 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a write bus error. Write one
      --  to clear.\n WRITE_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 5
      --  transfers later)
      WRITE_ERROR    : CH8_CTRL_TRIG_WRITE_ERROR_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a read bus error. Write one
      --  to clear.\n READ_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 3
      --  transfers later)
      READ_ERROR     : CH8_CTRL_TRIG_READ_ERROR_Field := 16#0#;
      --  Read-only. Logical OR of the READ_ERROR and WRITE_ERROR flags. The
      --  channel halts when it encounters any bus error, and always raises its
      --  channel IRQ flag.
      AHB_ERROR      : CH8_CTRL_TRIG_AHB_ERROR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH8_CTRL_TRIG_Register use record
      EN             at 0 range 0 .. 0;
      HIGH_PRIORITY  at 0 range 1 .. 1;
      DATA_SIZE      at 0 range 2 .. 3;
      INCR_READ      at 0 range 4 .. 4;
      INCR_WRITE     at 0 range 5 .. 5;
      RING_SIZE      at 0 range 6 .. 9;
      RING_SEL       at 0 range 10 .. 10;
      CHAIN_TO       at 0 range 11 .. 14;
      TREQ_SEL       at 0 range 15 .. 20;
      IRQ_QUIET      at 0 range 21 .. 21;
      BSWAP          at 0 range 22 .. 22;
      SNIFF_EN       at 0 range 23 .. 23;
      BUSY           at 0 range 24 .. 24;
      Reserved_25_28 at 0 range 25 .. 28;
      WRITE_ERROR    at 0 range 29 .. 29;
      READ_ERROR     at 0 range 30 .. 30;
      AHB_ERROR      at 0 range 31 .. 31;
   end record;

   subtype CH9_CTRL_TRIG_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH9_CTRL_TRIG_HIGH_PRIORITY_Field is Interfaces.Bit_Types.Bit;

   --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
   --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
   type CH9_CTRL_TRIG_DATA_SIZE_Field is
     (Size_Byte,
      Size_Halfword,
      Size_Word)
     with Size => 2;
   for CH9_CTRL_TRIG_DATA_SIZE_Field use
     (Size_Byte => 0,
      Size_Halfword => 1,
      Size_Word => 2);

   subtype CH9_CTRL_TRIG_INCR_READ_Field is Interfaces.Bit_Types.Bit;
   subtype CH9_CTRL_TRIG_INCR_WRITE_Field is Interfaces.Bit_Types.Bit;

   --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
   --  the lower n bits of the address will change. This wraps the address on a
   --  (1 << n) byte boundary, facilitating access to naturally-aligned ring
   --  buffers.\n\n Ring sizes between 2 and 32768 bytes are possible. This can
   --  apply to either read or write addresses, based on value of RING_SEL.
   type CH9_CTRL_TRIG_RING_SIZE_Field is
     (Ring_None)
     with Size => 4;
   for CH9_CTRL_TRIG_RING_SIZE_Field use
     (Ring_None => 0);

   subtype CH9_CTRL_TRIG_RING_SEL_Field is Interfaces.Bit_Types.Bit;
   subtype CH9_CTRL_TRIG_CHAIN_TO_Field is Interfaces.Bit_Types.UInt4;

   --  Select a Transfer Request signal.\n The channel uses the transfer
   --  request signal to pace its data transfer rate. Sources for TREQ signals
   --  are internal (TIMERS) or external (DREQ, a Data Request from the
   --  system).\n 0x0 to 0x3a -> select DREQ n as TREQ
   type CH9_CTRL_TRIG_TREQ_SEL_Field is
     (--  Reset value for the field
      Ch9_Ctrl_Trig_Treq_Sel_Field_Reset,
      --  Select Timer 0 as TREQ
      Timer0,
      --  Select Timer 1 as TREQ
      Timer1,
      --  Select Timer 2 as TREQ (Optional)
      Timer2,
      --  Select Timer 3 as TREQ (Optional)
      Timer3,
      --  Permanent request, for unpaced transfers.
      Permanent)
     with Size => 6;
   for CH9_CTRL_TRIG_TREQ_SEL_Field use
     (Ch9_Ctrl_Trig_Treq_Sel_Field_Reset => 0,
      Timer0 => 59,
      Timer1 => 60,
      Timer2 => 61,
      Timer3 => 62,
      Permanent => 63);

   subtype CH9_CTRL_TRIG_IRQ_QUIET_Field is Interfaces.Bit_Types.Bit;
   subtype CH9_CTRL_TRIG_BSWAP_Field is Interfaces.Bit_Types.Bit;
   subtype CH9_CTRL_TRIG_SNIFF_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH9_CTRL_TRIG_BUSY_Field is Interfaces.Bit_Types.Bit;
   subtype CH9_CTRL_TRIG_WRITE_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH9_CTRL_TRIG_READ_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH9_CTRL_TRIG_AHB_ERROR_Field is Interfaces.Bit_Types.Bit;

   --  DMA Channel 9 Control and Status
   type CH9_CTRL_TRIG_Register is record
      --  DMA Channel Enable.\n When 1, the channel will respond to triggering
      --  events, which will cause it to become BUSY and start transferring
      --  data. When 0, the channel will ignore triggers, stop issuing
      --  transfers, and pause the current transfer sequence (i.e. BUSY will
      --  remain high if already high)
      EN             : CH9_CTRL_TRIG_EN_Field := 16#0#;
      --  HIGH_PRIORITY gives a channel preferential treatment in issue
      --  scheduling: in each scheduling round, all high priority channels are
      --  considered first, and then only a single low priority channel, before
      --  returning to the high priority channels.\n\n This only affects the
      --  order in which the DMA schedules channels. The DMA's bus priority is
      --  not changed. If the DMA is not saturated then a low priority channel
      --  will see no loss of throughput.
      HIGH_PRIORITY  : CH9_CTRL_TRIG_HIGH_PRIORITY_Field := 16#0#;
      --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
      --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
      DATA_SIZE      : CH9_CTRL_TRIG_DATA_SIZE_Field :=
                        Interfaces.RP.DMA.Size_Byte;
      --  If 1, the read address increments with each transfer. If 0, each read
      --  is directed to the same, initial address.\n\n Generally this should
      --  be disabled for peripheral-to-memory transfers.
      INCR_READ      : CH9_CTRL_TRIG_INCR_READ_Field := 16#0#;
      --  If 1, the write address increments with each transfer. If 0, each
      --  write is directed to the same, initial address.\n\n Generally this
      --  should be disabled for memory-to-peripheral transfers.
      INCR_WRITE     : CH9_CTRL_TRIG_INCR_WRITE_Field := 16#0#;
      --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
      --  the lower n bits of the address will change. This wraps the address
      --  on a (1 << n) byte boundary, facilitating access to naturally-aligned
      --  ring buffers.\n\n Ring sizes between 2 and 32768 bytes are possible.
      --  This can apply to either read or write addresses, based on value of
      --  RING_SEL.
      RING_SIZE      : CH9_CTRL_TRIG_RING_SIZE_Field :=
                        Interfaces.RP.DMA.Ring_None;
      --  Select whether RING_SIZE applies to read or write addresses.\n If 0,
      --  read addresses are wrapped on a (1 << RING_SIZE) boundary. If 1,
      --  write addresses are wrapped.
      RING_SEL       : CH9_CTRL_TRIG_RING_SEL_Field := 16#0#;
      --  When this channel completes, it will trigger the channel indicated by
      --  CHAIN_TO. Disable by setting CHAIN_TO = _(this channel)_.\n Reset
      --  value is equal to channel number (9).
      CHAIN_TO       : CH9_CTRL_TRIG_CHAIN_TO_Field := 16#9#;
      --  Select a Transfer Request signal.\n The channel uses the transfer
      --  request signal to pace its data transfer rate. Sources for TREQ
      --  signals are internal (TIMERS) or external (DREQ, a Data Request from
      --  the system).\n 0x0 to 0x3a -> select DREQ n as TREQ
      TREQ_SEL       : CH9_CTRL_TRIG_TREQ_SEL_Field :=
                        Ch9_Ctrl_Trig_Treq_Sel_Field_Reset;
      --  In QUIET mode, the channel does not generate IRQs at the end of every
      --  transfer block. Instead, an IRQ is raised when NULL is written to a
      --  trigger register, indicating the end of a control block chain.\n\n
      --  This reduces the number of interrupts to be serviced by the CPU when
      --  transferring a DMA chain of many small control blocks.
      IRQ_QUIET      : CH9_CTRL_TRIG_IRQ_QUIET_Field := 16#0#;
      --  Apply byte-swap transformation to DMA data.\n For byte data, this has
      --  no effect. For halfword data, the two bytes of each halfword are
      --  swapped. For word data, the four bytes of each word are swapped to
      --  reverse order.
      BSWAP          : CH9_CTRL_TRIG_BSWAP_Field := 16#0#;
      --  If 1, this channel's data transfers are visible to the sniff
      --  hardware, and each transfer will advance the state of the checksum.
      --  This only applies if the sniff hardware is enabled, and has this
      --  channel selected.\n\n This allows checksum to be enabled or disabled
      --  on a per-control- block basis.
      SNIFF_EN       : CH9_CTRL_TRIG_SNIFF_EN_Field := 16#0#;
      --  Read-only. This flag goes high when the channel starts a new transfer
      --  sequence, and low when the last transfer of that sequence completes.
      --  Clearing EN while BUSY is high pauses the channel, and BUSY will stay
      --  high while paused.\n\n To terminate a sequence early (and clear the
      --  BUSY flag), see CHAN_ABORT.
      BUSY           : CH9_CTRL_TRIG_BUSY_Field := 16#0#;
      --  unspecified
      Reserved_25_28 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a write bus error. Write one
      --  to clear.\n WRITE_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 5
      --  transfers later)
      WRITE_ERROR    : CH9_CTRL_TRIG_WRITE_ERROR_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a read bus error. Write one
      --  to clear.\n READ_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 3
      --  transfers later)
      READ_ERROR     : CH9_CTRL_TRIG_READ_ERROR_Field := 16#0#;
      --  Read-only. Logical OR of the READ_ERROR and WRITE_ERROR flags. The
      --  channel halts when it encounters any bus error, and always raises its
      --  channel IRQ flag.
      AHB_ERROR      : CH9_CTRL_TRIG_AHB_ERROR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH9_CTRL_TRIG_Register use record
      EN             at 0 range 0 .. 0;
      HIGH_PRIORITY  at 0 range 1 .. 1;
      DATA_SIZE      at 0 range 2 .. 3;
      INCR_READ      at 0 range 4 .. 4;
      INCR_WRITE     at 0 range 5 .. 5;
      RING_SIZE      at 0 range 6 .. 9;
      RING_SEL       at 0 range 10 .. 10;
      CHAIN_TO       at 0 range 11 .. 14;
      TREQ_SEL       at 0 range 15 .. 20;
      IRQ_QUIET      at 0 range 21 .. 21;
      BSWAP          at 0 range 22 .. 22;
      SNIFF_EN       at 0 range 23 .. 23;
      BUSY           at 0 range 24 .. 24;
      Reserved_25_28 at 0 range 25 .. 28;
      WRITE_ERROR    at 0 range 29 .. 29;
      READ_ERROR     at 0 range 30 .. 30;
      AHB_ERROR      at 0 range 31 .. 31;
   end record;

   subtype CH10_CTRL_TRIG_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH10_CTRL_TRIG_HIGH_PRIORITY_Field is Interfaces.Bit_Types.Bit;

   --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
   --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
   type CH10_CTRL_TRIG_DATA_SIZE_Field is
     (Size_Byte,
      Size_Halfword,
      Size_Word)
     with Size => 2;
   for CH10_CTRL_TRIG_DATA_SIZE_Field use
     (Size_Byte => 0,
      Size_Halfword => 1,
      Size_Word => 2);

   subtype CH10_CTRL_TRIG_INCR_READ_Field is Interfaces.Bit_Types.Bit;
   subtype CH10_CTRL_TRIG_INCR_WRITE_Field is Interfaces.Bit_Types.Bit;

   --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
   --  the lower n bits of the address will change. This wraps the address on a
   --  (1 << n) byte boundary, facilitating access to naturally-aligned ring
   --  buffers.\n\n Ring sizes between 2 and 32768 bytes are possible. This can
   --  apply to either read or write addresses, based on value of RING_SEL.
   type CH10_CTRL_TRIG_RING_SIZE_Field is
     (Ring_None)
     with Size => 4;
   for CH10_CTRL_TRIG_RING_SIZE_Field use
     (Ring_None => 0);

   subtype CH10_CTRL_TRIG_RING_SEL_Field is Interfaces.Bit_Types.Bit;
   subtype CH10_CTRL_TRIG_CHAIN_TO_Field is Interfaces.Bit_Types.UInt4;

   --  Select a Transfer Request signal.\n The channel uses the transfer
   --  request signal to pace its data transfer rate. Sources for TREQ signals
   --  are internal (TIMERS) or external (DREQ, a Data Request from the
   --  system).\n 0x0 to 0x3a -> select DREQ n as TREQ
   type CH10_CTRL_TRIG_TREQ_SEL_Field is
     (--  Reset value for the field
      Ch10_Ctrl_Trig_Treq_Sel_Field_Reset,
      --  Select Timer 0 as TREQ
      Timer0,
      --  Select Timer 1 as TREQ
      Timer1,
      --  Select Timer 2 as TREQ (Optional)
      Timer2,
      --  Select Timer 3 as TREQ (Optional)
      Timer3,
      --  Permanent request, for unpaced transfers.
      Permanent)
     with Size => 6;
   for CH10_CTRL_TRIG_TREQ_SEL_Field use
     (Ch10_Ctrl_Trig_Treq_Sel_Field_Reset => 0,
      Timer0 => 59,
      Timer1 => 60,
      Timer2 => 61,
      Timer3 => 62,
      Permanent => 63);

   subtype CH10_CTRL_TRIG_IRQ_QUIET_Field is Interfaces.Bit_Types.Bit;
   subtype CH10_CTRL_TRIG_BSWAP_Field is Interfaces.Bit_Types.Bit;
   subtype CH10_CTRL_TRIG_SNIFF_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH10_CTRL_TRIG_BUSY_Field is Interfaces.Bit_Types.Bit;
   subtype CH10_CTRL_TRIG_WRITE_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH10_CTRL_TRIG_READ_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH10_CTRL_TRIG_AHB_ERROR_Field is Interfaces.Bit_Types.Bit;

   --  DMA Channel 10 Control and Status
   type CH10_CTRL_TRIG_Register is record
      --  DMA Channel Enable.\n When 1, the channel will respond to triggering
      --  events, which will cause it to become BUSY and start transferring
      --  data. When 0, the channel will ignore triggers, stop issuing
      --  transfers, and pause the current transfer sequence (i.e. BUSY will
      --  remain high if already high)
      EN             : CH10_CTRL_TRIG_EN_Field := 16#0#;
      --  HIGH_PRIORITY gives a channel preferential treatment in issue
      --  scheduling: in each scheduling round, all high priority channels are
      --  considered first, and then only a single low priority channel, before
      --  returning to the high priority channels.\n\n This only affects the
      --  order in which the DMA schedules channels. The DMA's bus priority is
      --  not changed. If the DMA is not saturated then a low priority channel
      --  will see no loss of throughput.
      HIGH_PRIORITY  : CH10_CTRL_TRIG_HIGH_PRIORITY_Field := 16#0#;
      --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
      --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
      DATA_SIZE      : CH10_CTRL_TRIG_DATA_SIZE_Field :=
                        Interfaces.RP.DMA.Size_Byte;
      --  If 1, the read address increments with each transfer. If 0, each read
      --  is directed to the same, initial address.\n\n Generally this should
      --  be disabled for peripheral-to-memory transfers.
      INCR_READ      : CH10_CTRL_TRIG_INCR_READ_Field := 16#0#;
      --  If 1, the write address increments with each transfer. If 0, each
      --  write is directed to the same, initial address.\n\n Generally this
      --  should be disabled for memory-to-peripheral transfers.
      INCR_WRITE     : CH10_CTRL_TRIG_INCR_WRITE_Field := 16#0#;
      --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
      --  the lower n bits of the address will change. This wraps the address
      --  on a (1 << n) byte boundary, facilitating access to naturally-aligned
      --  ring buffers.\n\n Ring sizes between 2 and 32768 bytes are possible.
      --  This can apply to either read or write addresses, based on value of
      --  RING_SEL.
      RING_SIZE      : CH10_CTRL_TRIG_RING_SIZE_Field :=
                        Interfaces.RP.DMA.Ring_None;
      --  Select whether RING_SIZE applies to read or write addresses.\n If 0,
      --  read addresses are wrapped on a (1 << RING_SIZE) boundary. If 1,
      --  write addresses are wrapped.
      RING_SEL       : CH10_CTRL_TRIG_RING_SEL_Field := 16#0#;
      --  When this channel completes, it will trigger the channel indicated by
      --  CHAIN_TO. Disable by setting CHAIN_TO = _(this channel)_.\n Reset
      --  value is equal to channel number (10).
      CHAIN_TO       : CH10_CTRL_TRIG_CHAIN_TO_Field := 16#A#;
      --  Select a Transfer Request signal.\n The channel uses the transfer
      --  request signal to pace its data transfer rate. Sources for TREQ
      --  signals are internal (TIMERS) or external (DREQ, a Data Request from
      --  the system).\n 0x0 to 0x3a -> select DREQ n as TREQ
      TREQ_SEL       : CH10_CTRL_TRIG_TREQ_SEL_Field :=
                        Ch10_Ctrl_Trig_Treq_Sel_Field_Reset;
      --  In QUIET mode, the channel does not generate IRQs at the end of every
      --  transfer block. Instead, an IRQ is raised when NULL is written to a
      --  trigger register, indicating the end of a control block chain.\n\n
      --  This reduces the number of interrupts to be serviced by the CPU when
      --  transferring a DMA chain of many small control blocks.
      IRQ_QUIET      : CH10_CTRL_TRIG_IRQ_QUIET_Field := 16#0#;
      --  Apply byte-swap transformation to DMA data.\n For byte data, this has
      --  no effect. For halfword data, the two bytes of each halfword are
      --  swapped. For word data, the four bytes of each word are swapped to
      --  reverse order.
      BSWAP          : CH10_CTRL_TRIG_BSWAP_Field := 16#0#;
      --  If 1, this channel's data transfers are visible to the sniff
      --  hardware, and each transfer will advance the state of the checksum.
      --  This only applies if the sniff hardware is enabled, and has this
      --  channel selected.\n\n This allows checksum to be enabled or disabled
      --  on a per-control- block basis.
      SNIFF_EN       : CH10_CTRL_TRIG_SNIFF_EN_Field := 16#0#;
      --  Read-only. This flag goes high when the channel starts a new transfer
      --  sequence, and low when the last transfer of that sequence completes.
      --  Clearing EN while BUSY is high pauses the channel, and BUSY will stay
      --  high while paused.\n\n To terminate a sequence early (and clear the
      --  BUSY flag), see CHAN_ABORT.
      BUSY           : CH10_CTRL_TRIG_BUSY_Field := 16#0#;
      --  unspecified
      Reserved_25_28 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a write bus error. Write one
      --  to clear.\n WRITE_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 5
      --  transfers later)
      WRITE_ERROR    : CH10_CTRL_TRIG_WRITE_ERROR_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a read bus error. Write one
      --  to clear.\n READ_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 3
      --  transfers later)
      READ_ERROR     : CH10_CTRL_TRIG_READ_ERROR_Field := 16#0#;
      --  Read-only. Logical OR of the READ_ERROR and WRITE_ERROR flags. The
      --  channel halts when it encounters any bus error, and always raises its
      --  channel IRQ flag.
      AHB_ERROR      : CH10_CTRL_TRIG_AHB_ERROR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH10_CTRL_TRIG_Register use record
      EN             at 0 range 0 .. 0;
      HIGH_PRIORITY  at 0 range 1 .. 1;
      DATA_SIZE      at 0 range 2 .. 3;
      INCR_READ      at 0 range 4 .. 4;
      INCR_WRITE     at 0 range 5 .. 5;
      RING_SIZE      at 0 range 6 .. 9;
      RING_SEL       at 0 range 10 .. 10;
      CHAIN_TO       at 0 range 11 .. 14;
      TREQ_SEL       at 0 range 15 .. 20;
      IRQ_QUIET      at 0 range 21 .. 21;
      BSWAP          at 0 range 22 .. 22;
      SNIFF_EN       at 0 range 23 .. 23;
      BUSY           at 0 range 24 .. 24;
      Reserved_25_28 at 0 range 25 .. 28;
      WRITE_ERROR    at 0 range 29 .. 29;
      READ_ERROR     at 0 range 30 .. 30;
      AHB_ERROR      at 0 range 31 .. 31;
   end record;

   subtype CH11_CTRL_TRIG_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH11_CTRL_TRIG_HIGH_PRIORITY_Field is Interfaces.Bit_Types.Bit;

   --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
   --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
   type CH11_CTRL_TRIG_DATA_SIZE_Field is
     (Size_Byte,
      Size_Halfword,
      Size_Word)
     with Size => 2;
   for CH11_CTRL_TRIG_DATA_SIZE_Field use
     (Size_Byte => 0,
      Size_Halfword => 1,
      Size_Word => 2);

   subtype CH11_CTRL_TRIG_INCR_READ_Field is Interfaces.Bit_Types.Bit;
   subtype CH11_CTRL_TRIG_INCR_WRITE_Field is Interfaces.Bit_Types.Bit;

   --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
   --  the lower n bits of the address will change. This wraps the address on a
   --  (1 << n) byte boundary, facilitating access to naturally-aligned ring
   --  buffers.\n\n Ring sizes between 2 and 32768 bytes are possible. This can
   --  apply to either read or write addresses, based on value of RING_SEL.
   type CH11_CTRL_TRIG_RING_SIZE_Field is
     (Ring_None)
     with Size => 4;
   for CH11_CTRL_TRIG_RING_SIZE_Field use
     (Ring_None => 0);

   subtype CH11_CTRL_TRIG_RING_SEL_Field is Interfaces.Bit_Types.Bit;
   subtype CH11_CTRL_TRIG_CHAIN_TO_Field is Interfaces.Bit_Types.UInt4;

   --  Select a Transfer Request signal.\n The channel uses the transfer
   --  request signal to pace its data transfer rate. Sources for TREQ signals
   --  are internal (TIMERS) or external (DREQ, a Data Request from the
   --  system).\n 0x0 to 0x3a -> select DREQ n as TREQ
   type CH11_CTRL_TRIG_TREQ_SEL_Field is
     (--  Reset value for the field
      Ch11_Ctrl_Trig_Treq_Sel_Field_Reset,
      --  Select Timer 0 as TREQ
      Timer0,
      --  Select Timer 1 as TREQ
      Timer1,
      --  Select Timer 2 as TREQ (Optional)
      Timer2,
      --  Select Timer 3 as TREQ (Optional)
      Timer3,
      --  Permanent request, for unpaced transfers.
      Permanent)
     with Size => 6;
   for CH11_CTRL_TRIG_TREQ_SEL_Field use
     (Ch11_Ctrl_Trig_Treq_Sel_Field_Reset => 0,
      Timer0 => 59,
      Timer1 => 60,
      Timer2 => 61,
      Timer3 => 62,
      Permanent => 63);

   subtype CH11_CTRL_TRIG_IRQ_QUIET_Field is Interfaces.Bit_Types.Bit;
   subtype CH11_CTRL_TRIG_BSWAP_Field is Interfaces.Bit_Types.Bit;
   subtype CH11_CTRL_TRIG_SNIFF_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CH11_CTRL_TRIG_BUSY_Field is Interfaces.Bit_Types.Bit;
   subtype CH11_CTRL_TRIG_WRITE_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH11_CTRL_TRIG_READ_ERROR_Field is Interfaces.Bit_Types.Bit;
   subtype CH11_CTRL_TRIG_AHB_ERROR_Field is Interfaces.Bit_Types.Bit;

   --  DMA Channel 11 Control and Status
   type CH11_CTRL_TRIG_Register is record
      --  DMA Channel Enable.\n When 1, the channel will respond to triggering
      --  events, which will cause it to become BUSY and start transferring
      --  data. When 0, the channel will ignore triggers, stop issuing
      --  transfers, and pause the current transfer sequence (i.e. BUSY will
      --  remain high if already high)
      EN             : CH11_CTRL_TRIG_EN_Field := 16#0#;
      --  HIGH_PRIORITY gives a channel preferential treatment in issue
      --  scheduling: in each scheduling round, all high priority channels are
      --  considered first, and then only a single low priority channel, before
      --  returning to the high priority channels.\n\n This only affects the
      --  order in which the DMA schedules channels. The DMA's bus priority is
      --  not changed. If the DMA is not saturated then a low priority channel
      --  will see no loss of throughput.
      HIGH_PRIORITY  : CH11_CTRL_TRIG_HIGH_PRIORITY_Field := 16#0#;
      --  Set the size of each bus transfer (byte/halfword/word). READ_ADDR and
      --  WRITE_ADDR advance by this amount (1/2/4 bytes) with each transfer.
      DATA_SIZE      : CH11_CTRL_TRIG_DATA_SIZE_Field :=
                        Interfaces.RP.DMA.Size_Byte;
      --  If 1, the read address increments with each transfer. If 0, each read
      --  is directed to the same, initial address.\n\n Generally this should
      --  be disabled for peripheral-to-memory transfers.
      INCR_READ      : CH11_CTRL_TRIG_INCR_READ_Field := 16#0#;
      --  If 1, the write address increments with each transfer. If 0, each
      --  write is directed to the same, initial address.\n\n Generally this
      --  should be disabled for memory-to-peripheral transfers.
      INCR_WRITE     : CH11_CTRL_TRIG_INCR_WRITE_Field := 16#0#;
      --  Size of address wrap region. If 0, don't wrap. For values n > 0, only
      --  the lower n bits of the address will change. This wraps the address
      --  on a (1 << n) byte boundary, facilitating access to naturally-aligned
      --  ring buffers.\n\n Ring sizes between 2 and 32768 bytes are possible.
      --  This can apply to either read or write addresses, based on value of
      --  RING_SEL.
      RING_SIZE      : CH11_CTRL_TRIG_RING_SIZE_Field :=
                        Interfaces.RP.DMA.Ring_None;
      --  Select whether RING_SIZE applies to read or write addresses.\n If 0,
      --  read addresses are wrapped on a (1 << RING_SIZE) boundary. If 1,
      --  write addresses are wrapped.
      RING_SEL       : CH11_CTRL_TRIG_RING_SEL_Field := 16#0#;
      --  When this channel completes, it will trigger the channel indicated by
      --  CHAIN_TO. Disable by setting CHAIN_TO = _(this channel)_.\n Reset
      --  value is equal to channel number (11).
      CHAIN_TO       : CH11_CTRL_TRIG_CHAIN_TO_Field := 16#B#;
      --  Select a Transfer Request signal.\n The channel uses the transfer
      --  request signal to pace its data transfer rate. Sources for TREQ
      --  signals are internal (TIMERS) or external (DREQ, a Data Request from
      --  the system).\n 0x0 to 0x3a -> select DREQ n as TREQ
      TREQ_SEL       : CH11_CTRL_TRIG_TREQ_SEL_Field :=
                        Ch11_Ctrl_Trig_Treq_Sel_Field_Reset;
      --  In QUIET mode, the channel does not generate IRQs at the end of every
      --  transfer block. Instead, an IRQ is raised when NULL is written to a
      --  trigger register, indicating the end of a control block chain.\n\n
      --  This reduces the number of interrupts to be serviced by the CPU when
      --  transferring a DMA chain of many small control blocks.
      IRQ_QUIET      : CH11_CTRL_TRIG_IRQ_QUIET_Field := 16#0#;
      --  Apply byte-swap transformation to DMA data.\n For byte data, this has
      --  no effect. For halfword data, the two bytes of each halfword are
      --  swapped. For word data, the four bytes of each word are swapped to
      --  reverse order.
      BSWAP          : CH11_CTRL_TRIG_BSWAP_Field := 16#0#;
      --  If 1, this channel's data transfers are visible to the sniff
      --  hardware, and each transfer will advance the state of the checksum.
      --  This only applies if the sniff hardware is enabled, and has this
      --  channel selected.\n\n This allows checksum to be enabled or disabled
      --  on a per-control- block basis.
      SNIFF_EN       : CH11_CTRL_TRIG_SNIFF_EN_Field := 16#0#;
      --  Read-only. This flag goes high when the channel starts a new transfer
      --  sequence, and low when the last transfer of that sequence completes.
      --  Clearing EN while BUSY is high pauses the channel, and BUSY will stay
      --  high while paused.\n\n To terminate a sequence early (and clear the
      --  BUSY flag), see CHAN_ABORT.
      BUSY           : CH11_CTRL_TRIG_BUSY_Field := 16#0#;
      --  unspecified
      Reserved_25_28 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a write bus error. Write one
      --  to clear.\n WRITE_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 5
      --  transfers later)
      WRITE_ERROR    : CH11_CTRL_TRIG_WRITE_ERROR_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. If 1, the channel received a read bus error. Write one
      --  to clear.\n READ_ADDR shows the approximate address where the bus
      --  error was encountered (will not to be earlier, or more than 3
      --  transfers later)
      READ_ERROR     : CH11_CTRL_TRIG_READ_ERROR_Field := 16#0#;
      --  Read-only. Logical OR of the READ_ERROR and WRITE_ERROR flags. The
      --  channel halts when it encounters any bus error, and always raises its
      --  channel IRQ flag.
      AHB_ERROR      : CH11_CTRL_TRIG_AHB_ERROR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH11_CTRL_TRIG_Register use record
      EN             at 0 range 0 .. 0;
      HIGH_PRIORITY  at 0 range 1 .. 1;
      DATA_SIZE      at 0 range 2 .. 3;
      INCR_READ      at 0 range 4 .. 4;
      INCR_WRITE     at 0 range 5 .. 5;
      RING_SIZE      at 0 range 6 .. 9;
      RING_SEL       at 0 range 10 .. 10;
      CHAIN_TO       at 0 range 11 .. 14;
      TREQ_SEL       at 0 range 15 .. 20;
      IRQ_QUIET      at 0 range 21 .. 21;
      BSWAP          at 0 range 22 .. 22;
      SNIFF_EN       at 0 range 23 .. 23;
      BUSY           at 0 range 24 .. 24;
      Reserved_25_28 at 0 range 25 .. 28;
      WRITE_ERROR    at 0 range 29 .. 29;
      READ_ERROR     at 0 range 30 .. 30;
      AHB_ERROR      at 0 range 31 .. 31;
   end record;

   subtype INTR_INTR_Field is Interfaces.Bit_Types.UInt16;

   --  Interrupt Status (raw)
   type INTR_Register is record
      --  Read-only. Raw interrupt status for DMA Channels 0..15. Bit n
      --  corresponds to channel n. Ignores any masking or forcing. Channel
      --  interrupts can be cleared by writing a bit mask to INTR, INTS0 or
      --  INTS1.\n\n Channel interrupts can be routed to either of two
      --  system-level IRQs based on INTE0 and INTE1.\n\n This can be used
      --  vector different channel interrupts to different ISRs: this might be
      --  done to allow NVIC IRQ preemption for more time-critical channels, or
      --  to spread IRQ load across different cores.\n\n It is also valid to
      --  ignore this behaviour and just use INTE0/INTS0/IRQ 0.
      INTR           : INTR_INTR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTR_Register use record
      INTR           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype INTE0_INTE0_Field is Interfaces.Bit_Types.UInt16;

   --  Interrupt Enables for IRQ 0
   type INTE0_Register is record
      --  Set bit n to pass interrupts from channel n to DMA IRQ 0.
      INTE0          : INTE0_INTE0_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTE0_Register use record
      INTE0          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype INTF0_INTF0_Field is Interfaces.Bit_Types.UInt16;

   --  Force Interrupts
   type INTF0_Register is record
      --  Write 1s to force the corresponding bits in INTE0. The interrupt
      --  remains asserted until INTF0 is cleared.
      INTF0          : INTF0_INTF0_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTF0_Register use record
      INTF0          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype INTS0_INTS0_Field is Interfaces.Bit_Types.UInt16;

   --  Interrupt Status for IRQ 0
   type INTS0_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Indicates active channel interrupt requests which are
      --  currently causing IRQ 0 to be asserted.\n Channel interrupts can be
      --  cleared by writing a bit mask here.
      INTS0          : INTS0_INTS0_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTS0_Register use record
      INTS0          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype INTE1_INTE1_Field is Interfaces.Bit_Types.UInt16;

   --  Interrupt Enables for IRQ 1
   type INTE1_Register is record
      --  Set bit n to pass interrupts from channel n to DMA IRQ 1.
      INTE1          : INTE1_INTE1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTE1_Register use record
      INTE1          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype INTF1_INTF1_Field is Interfaces.Bit_Types.UInt16;

   --  Force Interrupts for IRQ 1
   type INTF1_Register is record
      --  Write 1s to force the corresponding bits in INTE0. The interrupt
      --  remains asserted until INTF0 is cleared.
      INTF1          : INTF1_INTF1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTF1_Register use record
      INTF1          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype INTS1_INTS1_Field is Interfaces.Bit_Types.UInt16;

   --  Interrupt Status (masked) for IRQ 1
   type INTS1_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Indicates active channel interrupt requests which are
      --  currently causing IRQ 1 to be asserted.\n Channel interrupts can be
      --  cleared by writing a bit mask here.
      INTS1          : INTS1_INTS1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTS1_Register use record
      INTS1          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIMER_Y_Field is Interfaces.Bit_Types.UInt16;
   subtype TIMER_X_Field is Interfaces.Bit_Types.UInt16;

   --  Pacing (X/Y) Fractional Timer\n The pacing timer produces TREQ
   --  assertions at a rate set by ((X/Y) * sys_clk). This equation is
   --  evaluated every sys_clk cycles and therefore can only generate TREQs at
   --  a rate of 1 per sys_clk (i.e. permanent TREQ) or less.
   type TIMER_Register is record
      --  Pacing Timer Divisor. Specifies the Y value for the (X/Y) fractional
      --  timer.
      Y : TIMER_Y_Field := 16#0#;
      --  Pacing Timer Dividend. Specifies the X value for the (X/Y) fractional
      --  timer.
      X : TIMER_X_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER_Register use record
      Y at 0 range 0 .. 15;
      X at 0 range 16 .. 31;
   end record;

   subtype MULTI_CHAN_TRIGGER_MULTI_CHAN_TRIGGER_Field is
     Interfaces.Bit_Types.UInt16;

   --  Trigger one or more channels simultaneously
   type MULTI_CHAN_TRIGGER_Register is record
      --  After a write operation all bits in the field are cleared (set to
      --  zero). Each bit in this register corresponds to a DMA channel.
      --  Writing a 1 to the relevant bit is the same as writing to that
      --  channel's trigger register; the channel will start if it is currently
      --  enabled and not already busy.
      MULTI_CHAN_TRIGGER : MULTI_CHAN_TRIGGER_MULTI_CHAN_TRIGGER_Field :=
                            16#0#;
      --  unspecified
      Reserved_16_31     : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MULTI_CHAN_TRIGGER_Register use record
      MULTI_CHAN_TRIGGER at 0 range 0 .. 15;
      Reserved_16_31     at 0 range 16 .. 31;
   end record;

   subtype SNIFF_CTRL_EN_Field is Interfaces.Bit_Types.Bit;
   subtype SNIFF_CTRL_DMACH_Field is Interfaces.Bit_Types.UInt4;

   type SNIFF_CTRL_CALC_Field is
     (--  Calculate a CRC-32 (IEEE802.3 polynomial)
      Crc32,
      --  Calculate a CRC-32 (IEEE802.3 polynomial) with bit reversed data
      Crc32R,
      --  Calculate a CRC-16-CCITT
      Crc16,
      --  Calculate a CRC-16-CCITT with bit reversed data
      Crc16R,
      --  XOR reduction over all data. == 1 if the total 1 population count is odd.
      Even,
      --  Calculate a simple 32-bit checksum (addition with a 32 bit accumulator)
      Sum)
     with Size => 4;
   for SNIFF_CTRL_CALC_Field use
     (Crc32 => 0,
      Crc32R => 1,
      Crc16 => 2,
      Crc16R => 3,
      Even => 14,
      Sum => 15);

   subtype SNIFF_CTRL_BSWAP_Field is Interfaces.Bit_Types.Bit;
   subtype SNIFF_CTRL_OUT_REV_Field is Interfaces.Bit_Types.Bit;
   subtype SNIFF_CTRL_OUT_INV_Field is Interfaces.Bit_Types.Bit;

   --  Sniffer Control
   type SNIFF_CTRL_Register is record
      --  Enable sniffer
      EN             : SNIFF_CTRL_EN_Field := 16#0#;
      --  DMA channel for Sniffer to observe
      DMACH          : SNIFF_CTRL_DMACH_Field := 16#0#;
      CALC           : SNIFF_CTRL_CALC_Field := Interfaces.RP.DMA.Crc32;
      --  Locally perform a byte reverse on the sniffed data, before feeding
      --  into checksum.\n\n Note that the sniff hardware is downstream of the
      --  DMA channel byteswap performed in the read master: if channel
      --  CTRL_BSWAP and SNIFF_CTRL_BSWAP are both enabled, their effects
      --  cancel from the sniffer's point of view.
      BSWAP          : SNIFF_CTRL_BSWAP_Field := 16#0#;
      --  If set, the result appears bit-reversed when read. This does not
      --  affect the way the checksum is calculated; the result is transformed
      --  on-the-fly between the result register and the bus.
      OUT_REV        : SNIFF_CTRL_OUT_REV_Field := 16#0#;
      --  If set, the result appears inverted (bitwise complement) when read.
      --  This does not affect the way the checksum is calculated; the result
      --  is transformed on-the-fly between the result register and the bus.
      OUT_INV        : SNIFF_CTRL_OUT_INV_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SNIFF_CTRL_Register use record
      EN             at 0 range 0 .. 0;
      DMACH          at 0 range 1 .. 4;
      CALC           at 0 range 5 .. 8;
      BSWAP          at 0 range 9 .. 9;
      OUT_REV        at 0 range 10 .. 10;
      OUT_INV        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype FIFO_LEVELS_TDF_LVL_Field is Interfaces.Bit_Types.Byte;
   subtype FIFO_LEVELS_WAF_LVL_Field is Interfaces.Bit_Types.Byte;
   subtype FIFO_LEVELS_RAF_LVL_Field is Interfaces.Bit_Types.Byte;

   --  Debug RAF, WAF, TDF levels
   type FIFO_LEVELS_Register is record
      --  Read-only. Current Transfer-Data-FIFO fill level
      TDF_LVL        : FIFO_LEVELS_TDF_LVL_Field;
      --  Read-only. Current Write-Address-FIFO fill level
      WAF_LVL        : FIFO_LEVELS_WAF_LVL_Field;
      --  Read-only. Current Read-Address-FIFO fill level
      RAF_LVL        : FIFO_LEVELS_RAF_LVL_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFO_LEVELS_Register use record
      TDF_LVL        at 0 range 0 .. 7;
      WAF_LVL        at 0 range 8 .. 15;
      RAF_LVL        at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CHAN_ABORT_CHAN_ABORT_Field is Interfaces.Bit_Types.UInt16;

   --  Abort an in-progress transfer sequence on one or more channels
   type CHAN_ABORT_Register is record
      --  After a write operation all bits in the field are cleared (set to
      --  zero). Each bit corresponds to a channel. Writing a 1 aborts whatever
      --  transfer sequence is in progress on that channel. The bit will remain
      --  high until any in-flight transfers have been flushed through the
      --  address and data FIFOs.\n\n After writing, this register must be
      --  polled until it returns all-zero. Until this point, it is unsafe to
      --  restart the channel.
      CHAN_ABORT     : CHAN_ABORT_CHAN_ABORT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHAN_ABORT_Register use record
      CHAN_ABORT     at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype N_CHANNELS_N_CHANNELS_Field is Interfaces.Bit_Types.UInt5;

   --  The number of channels this DMA instance is equipped with. This DMA
   --  supports up to 16 hardware channels, but can be configured with as few
   --  as one, to minimise silicon area.
   type N_CHANNELS_Register is record
      --  Read-only.
      N_CHANNELS    : N_CHANNELS_N_CHANNELS_Field;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for N_CHANNELS_Register use record
      N_CHANNELS    at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype CH0_DBG_CTDREQ_CH0_DBG_CTDREQ_Field is Interfaces.Bit_Types.UInt6;

   --  Read: get channel DREQ counter (i.e. how many accesses the DMA expects
   --  it can perform on the peripheral without overflow/underflow. Write any
   --  value: clears the counter, and cause channel to re-initiate DREQ
   --  handshake.
   type CH0_DBG_CTDREQ_Register is record
      --  Read-only.
      CH0_DBG_CTDREQ : CH0_DBG_CTDREQ_CH0_DBG_CTDREQ_Field;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_DBG_CTDREQ_Register use record
      CH0_DBG_CTDREQ at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype CH1_DBG_CTDREQ_CH1_DBG_CTDREQ_Field is Interfaces.Bit_Types.UInt6;

   --  Read: get channel DREQ counter (i.e. how many accesses the DMA expects
   --  it can perform on the peripheral without overflow/underflow. Write any
   --  value: clears the counter, and cause channel to re-initiate DREQ
   --  handshake.
   type CH1_DBG_CTDREQ_Register is record
      --  Read-only.
      CH1_DBG_CTDREQ : CH1_DBG_CTDREQ_CH1_DBG_CTDREQ_Field;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_DBG_CTDREQ_Register use record
      CH1_DBG_CTDREQ at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype CH2_DBG_CTDREQ_CH2_DBG_CTDREQ_Field is Interfaces.Bit_Types.UInt6;

   --  Read: get channel DREQ counter (i.e. how many accesses the DMA expects
   --  it can perform on the peripheral without overflow/underflow. Write any
   --  value: clears the counter, and cause channel to re-initiate DREQ
   --  handshake.
   type CH2_DBG_CTDREQ_Register is record
      --  Read-only.
      CH2_DBG_CTDREQ : CH2_DBG_CTDREQ_CH2_DBG_CTDREQ_Field;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_DBG_CTDREQ_Register use record
      CH2_DBG_CTDREQ at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype CH3_DBG_CTDREQ_CH3_DBG_CTDREQ_Field is Interfaces.Bit_Types.UInt6;

   --  Read: get channel DREQ counter (i.e. how many accesses the DMA expects
   --  it can perform on the peripheral without overflow/underflow. Write any
   --  value: clears the counter, and cause channel to re-initiate DREQ
   --  handshake.
   type CH3_DBG_CTDREQ_Register is record
      --  Read-only.
      CH3_DBG_CTDREQ : CH3_DBG_CTDREQ_CH3_DBG_CTDREQ_Field;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_DBG_CTDREQ_Register use record
      CH3_DBG_CTDREQ at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype CH4_DBG_CTDREQ_CH4_DBG_CTDREQ_Field is Interfaces.Bit_Types.UInt6;

   --  Read: get channel DREQ counter (i.e. how many accesses the DMA expects
   --  it can perform on the peripheral without overflow/underflow. Write any
   --  value: clears the counter, and cause channel to re-initiate DREQ
   --  handshake.
   type CH4_DBG_CTDREQ_Register is record
      --  Read-only.
      CH4_DBG_CTDREQ : CH4_DBG_CTDREQ_CH4_DBG_CTDREQ_Field;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH4_DBG_CTDREQ_Register use record
      CH4_DBG_CTDREQ at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype CH5_DBG_CTDREQ_CH5_DBG_CTDREQ_Field is Interfaces.Bit_Types.UInt6;

   --  Read: get channel DREQ counter (i.e. how many accesses the DMA expects
   --  it can perform on the peripheral without overflow/underflow. Write any
   --  value: clears the counter, and cause channel to re-initiate DREQ
   --  handshake.
   type CH5_DBG_CTDREQ_Register is record
      --  Read-only.
      CH5_DBG_CTDREQ : CH5_DBG_CTDREQ_CH5_DBG_CTDREQ_Field;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH5_DBG_CTDREQ_Register use record
      CH5_DBG_CTDREQ at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype CH6_DBG_CTDREQ_CH6_DBG_CTDREQ_Field is Interfaces.Bit_Types.UInt6;

   --  Read: get channel DREQ counter (i.e. how many accesses the DMA expects
   --  it can perform on the peripheral without overflow/underflow. Write any
   --  value: clears the counter, and cause channel to re-initiate DREQ
   --  handshake.
   type CH6_DBG_CTDREQ_Register is record
      --  Read-only.
      CH6_DBG_CTDREQ : CH6_DBG_CTDREQ_CH6_DBG_CTDREQ_Field;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH6_DBG_CTDREQ_Register use record
      CH6_DBG_CTDREQ at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype CH7_DBG_CTDREQ_CH7_DBG_CTDREQ_Field is Interfaces.Bit_Types.UInt6;

   --  Read: get channel DREQ counter (i.e. how many accesses the DMA expects
   --  it can perform on the peripheral without overflow/underflow. Write any
   --  value: clears the counter, and cause channel to re-initiate DREQ
   --  handshake.
   type CH7_DBG_CTDREQ_Register is record
      --  Read-only.
      CH7_DBG_CTDREQ : CH7_DBG_CTDREQ_CH7_DBG_CTDREQ_Field;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH7_DBG_CTDREQ_Register use record
      CH7_DBG_CTDREQ at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype CH8_DBG_CTDREQ_CH8_DBG_CTDREQ_Field is Interfaces.Bit_Types.UInt6;

   --  Read: get channel DREQ counter (i.e. how many accesses the DMA expects
   --  it can perform on the peripheral without overflow/underflow. Write any
   --  value: clears the counter, and cause channel to re-initiate DREQ
   --  handshake.
   type CH8_DBG_CTDREQ_Register is record
      --  Read-only.
      CH8_DBG_CTDREQ : CH8_DBG_CTDREQ_CH8_DBG_CTDREQ_Field;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH8_DBG_CTDREQ_Register use record
      CH8_DBG_CTDREQ at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype CH9_DBG_CTDREQ_CH9_DBG_CTDREQ_Field is Interfaces.Bit_Types.UInt6;

   --  Read: get channel DREQ counter (i.e. how many accesses the DMA expects
   --  it can perform on the peripheral without overflow/underflow. Write any
   --  value: clears the counter, and cause channel to re-initiate DREQ
   --  handshake.
   type CH9_DBG_CTDREQ_Register is record
      --  Read-only.
      CH9_DBG_CTDREQ : CH9_DBG_CTDREQ_CH9_DBG_CTDREQ_Field;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH9_DBG_CTDREQ_Register use record
      CH9_DBG_CTDREQ at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype CH10_DBG_CTDREQ_CH10_DBG_CTDREQ_Field is Interfaces.Bit_Types.UInt6;

   --  Read: get channel DREQ counter (i.e. how many accesses the DMA expects
   --  it can perform on the peripheral without overflow/underflow. Write any
   --  value: clears the counter, and cause channel to re-initiate DREQ
   --  handshake.
   type CH10_DBG_CTDREQ_Register is record
      --  Read-only.
      CH10_DBG_CTDREQ : CH10_DBG_CTDREQ_CH10_DBG_CTDREQ_Field;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH10_DBG_CTDREQ_Register use record
      CH10_DBG_CTDREQ at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype CH11_DBG_CTDREQ_CH11_DBG_CTDREQ_Field is Interfaces.Bit_Types.UInt6;

   --  Read: get channel DREQ counter (i.e. how many accesses the DMA expects
   --  it can perform on the peripheral without overflow/underflow. Write any
   --  value: clears the counter, and cause channel to re-initiate DREQ
   --  handshake.
   type CH11_DBG_CTDREQ_Register is record
      --  Read-only.
      CH11_DBG_CTDREQ : CH11_DBG_CTDREQ_CH11_DBG_CTDREQ_Field;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH11_DBG_CTDREQ_Register use record
      CH11_DBG_CTDREQ at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DMA with separate read and write masters
   type DMA_Peripheral is record
      --  DMA Channel 0 Read Address pointer\n This register updates
      --  automatically each time a read completes. The current value is the
      --  next address to be read by this channel.
      CH0_READ_ADDR             : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 0 Write Address pointer\n This register updates
      --  automatically each time a write completes. The current value is the
      --  next address to be written by this channel.
      CH0_WRITE_ADDR            : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 0 Transfer Count\n Program the number of bus transfers a
      --  channel will perform before halting. Note that, if transfers are
      --  larger than one byte in size, this is not equal to the number of
      --  bytes transferred (see CTRL_DATA_SIZE).\n\n When the channel is
      --  active, reading this register shows the number of transfers
      --  remaining, updating automatically each time a write transfer
      --  completes.\n\n Writing this register sets the RELOAD value for the
      --  transfer counter. Each time this channel is triggered, the RELOAD
      --  value is copied into the live transfer counter. The channel can be
      --  started multiple times, and will perform the same number of transfers
      --  each time, as programmed by most recent write.\n\n The RELOAD value
      --  can be observed at CHx_DBG_TCR. If TRANS_COUNT is used as a trigger,
      --  the written value is used immediately as the length of the new
      --  transfer sequence, as well as being written to RELOAD.
      CH0_TRANS_COUNT           : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 0 Control and Status
      CH0_CTRL_TRIG             : aliased CH0_CTRL_TRIG_Register;
      --  Alias for channel 0 CTRL register
      CH0_AL1_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 0 READ_ADDR register
      CH0_AL1_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 0 WRITE_ADDR register
      CH0_AL1_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 0 TRANS_COUNT register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH0_AL1_TRANS_COUNT_TRIG  : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 0 CTRL register
      CH0_AL2_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 0 TRANS_COUNT register
      CH0_AL2_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 0 READ_ADDR register
      CH0_AL2_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 0 WRITE_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH0_AL2_WRITE_ADDR_TRIG   : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 0 CTRL register
      CH0_AL3_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 0 WRITE_ADDR register
      CH0_AL3_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 0 TRANS_COUNT register
      CH0_AL3_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 0 READ_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH0_AL3_READ_ADDR_TRIG    : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 1 Read Address pointer\n This register updates
      --  automatically each time a read completes. The current value is the
      --  next address to be read by this channel.
      CH1_READ_ADDR             : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 1 Write Address pointer\n This register updates
      --  automatically each time a write completes. The current value is the
      --  next address to be written by this channel.
      CH1_WRITE_ADDR            : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 1 Transfer Count\n Program the number of bus transfers a
      --  channel will perform before halting. Note that, if transfers are
      --  larger than one byte in size, this is not equal to the number of
      --  bytes transferred (see CTRL_DATA_SIZE).\n\n When the channel is
      --  active, reading this register shows the number of transfers
      --  remaining, updating automatically each time a write transfer
      --  completes.\n\n Writing this register sets the RELOAD value for the
      --  transfer counter. Each time this channel is triggered, the RELOAD
      --  value is copied into the live transfer counter. The channel can be
      --  started multiple times, and will perform the same number of transfers
      --  each time, as programmed by most recent write.\n\n The RELOAD value
      --  can be observed at CHx_DBG_TCR. If TRANS_COUNT is used as a trigger,
      --  the written value is used immediately as the length of the new
      --  transfer sequence, as well as being written to RELOAD.
      CH1_TRANS_COUNT           : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 1 Control and Status
      CH1_CTRL_TRIG             : aliased CH1_CTRL_TRIG_Register;
      --  Alias for channel 1 CTRL register
      CH1_AL1_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 1 READ_ADDR register
      CH1_AL1_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 1 WRITE_ADDR register
      CH1_AL1_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 1 TRANS_COUNT register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH1_AL1_TRANS_COUNT_TRIG  : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 1 CTRL register
      CH1_AL2_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 1 TRANS_COUNT register
      CH1_AL2_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 1 READ_ADDR register
      CH1_AL2_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 1 WRITE_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH1_AL2_WRITE_ADDR_TRIG   : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 1 CTRL register
      CH1_AL3_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 1 WRITE_ADDR register
      CH1_AL3_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 1 TRANS_COUNT register
      CH1_AL3_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 1 READ_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH1_AL3_READ_ADDR_TRIG    : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 2 Read Address pointer\n This register updates
      --  automatically each time a read completes. The current value is the
      --  next address to be read by this channel.
      CH2_READ_ADDR             : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 2 Write Address pointer\n This register updates
      --  automatically each time a write completes. The current value is the
      --  next address to be written by this channel.
      CH2_WRITE_ADDR            : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 2 Transfer Count\n Program the number of bus transfers a
      --  channel will perform before halting. Note that, if transfers are
      --  larger than one byte in size, this is not equal to the number of
      --  bytes transferred (see CTRL_DATA_SIZE).\n\n When the channel is
      --  active, reading this register shows the number of transfers
      --  remaining, updating automatically each time a write transfer
      --  completes.\n\n Writing this register sets the RELOAD value for the
      --  transfer counter. Each time this channel is triggered, the RELOAD
      --  value is copied into the live transfer counter. The channel can be
      --  started multiple times, and will perform the same number of transfers
      --  each time, as programmed by most recent write.\n\n The RELOAD value
      --  can be observed at CHx_DBG_TCR. If TRANS_COUNT is used as a trigger,
      --  the written value is used immediately as the length of the new
      --  transfer sequence, as well as being written to RELOAD.
      CH2_TRANS_COUNT           : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 2 Control and Status
      CH2_CTRL_TRIG             : aliased CH2_CTRL_TRIG_Register;
      --  Alias for channel 2 CTRL register
      CH2_AL1_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 2 READ_ADDR register
      CH2_AL1_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 2 WRITE_ADDR register
      CH2_AL1_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 2 TRANS_COUNT register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH2_AL1_TRANS_COUNT_TRIG  : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 2 CTRL register
      CH2_AL2_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 2 TRANS_COUNT register
      CH2_AL2_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 2 READ_ADDR register
      CH2_AL2_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 2 WRITE_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH2_AL2_WRITE_ADDR_TRIG   : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 2 CTRL register
      CH2_AL3_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 2 WRITE_ADDR register
      CH2_AL3_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 2 TRANS_COUNT register
      CH2_AL3_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 2 READ_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH2_AL3_READ_ADDR_TRIG    : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 3 Read Address pointer\n This register updates
      --  automatically each time a read completes. The current value is the
      --  next address to be read by this channel.
      CH3_READ_ADDR             : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 3 Write Address pointer\n This register updates
      --  automatically each time a write completes. The current value is the
      --  next address to be written by this channel.
      CH3_WRITE_ADDR            : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 3 Transfer Count\n Program the number of bus transfers a
      --  channel will perform before halting. Note that, if transfers are
      --  larger than one byte in size, this is not equal to the number of
      --  bytes transferred (see CTRL_DATA_SIZE).\n\n When the channel is
      --  active, reading this register shows the number of transfers
      --  remaining, updating automatically each time a write transfer
      --  completes.\n\n Writing this register sets the RELOAD value for the
      --  transfer counter. Each time this channel is triggered, the RELOAD
      --  value is copied into the live transfer counter. The channel can be
      --  started multiple times, and will perform the same number of transfers
      --  each time, as programmed by most recent write.\n\n The RELOAD value
      --  can be observed at CHx_DBG_TCR. If TRANS_COUNT is used as a trigger,
      --  the written value is used immediately as the length of the new
      --  transfer sequence, as well as being written to RELOAD.
      CH3_TRANS_COUNT           : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 3 Control and Status
      CH3_CTRL_TRIG             : aliased CH3_CTRL_TRIG_Register;
      --  Alias for channel 3 CTRL register
      CH3_AL1_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 3 READ_ADDR register
      CH3_AL1_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 3 WRITE_ADDR register
      CH3_AL1_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 3 TRANS_COUNT register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH3_AL1_TRANS_COUNT_TRIG  : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 3 CTRL register
      CH3_AL2_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 3 TRANS_COUNT register
      CH3_AL2_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 3 READ_ADDR register
      CH3_AL2_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 3 WRITE_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH3_AL2_WRITE_ADDR_TRIG   : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 3 CTRL register
      CH3_AL3_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 3 WRITE_ADDR register
      CH3_AL3_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 3 TRANS_COUNT register
      CH3_AL3_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 3 READ_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH3_AL3_READ_ADDR_TRIG    : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 4 Read Address pointer\n This register updates
      --  automatically each time a read completes. The current value is the
      --  next address to be read by this channel.
      CH4_READ_ADDR             : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 4 Write Address pointer\n This register updates
      --  automatically each time a write completes. The current value is the
      --  next address to be written by this channel.
      CH4_WRITE_ADDR            : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 4 Transfer Count\n Program the number of bus transfers a
      --  channel will perform before halting. Note that, if transfers are
      --  larger than one byte in size, this is not equal to the number of
      --  bytes transferred (see CTRL_DATA_SIZE).\n\n When the channel is
      --  active, reading this register shows the number of transfers
      --  remaining, updating automatically each time a write transfer
      --  completes.\n\n Writing this register sets the RELOAD value for the
      --  transfer counter. Each time this channel is triggered, the RELOAD
      --  value is copied into the live transfer counter. The channel can be
      --  started multiple times, and will perform the same number of transfers
      --  each time, as programmed by most recent write.\n\n The RELOAD value
      --  can be observed at CHx_DBG_TCR. If TRANS_COUNT is used as a trigger,
      --  the written value is used immediately as the length of the new
      --  transfer sequence, as well as being written to RELOAD.
      CH4_TRANS_COUNT           : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 4 Control and Status
      CH4_CTRL_TRIG             : aliased CH4_CTRL_TRIG_Register;
      --  Alias for channel 4 CTRL register
      CH4_AL1_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 4 READ_ADDR register
      CH4_AL1_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 4 WRITE_ADDR register
      CH4_AL1_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 4 TRANS_COUNT register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH4_AL1_TRANS_COUNT_TRIG  : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 4 CTRL register
      CH4_AL2_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 4 TRANS_COUNT register
      CH4_AL2_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 4 READ_ADDR register
      CH4_AL2_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 4 WRITE_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH4_AL2_WRITE_ADDR_TRIG   : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 4 CTRL register
      CH4_AL3_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 4 WRITE_ADDR register
      CH4_AL3_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 4 TRANS_COUNT register
      CH4_AL3_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 4 READ_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH4_AL3_READ_ADDR_TRIG    : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 5 Read Address pointer\n This register updates
      --  automatically each time a read completes. The current value is the
      --  next address to be read by this channel.
      CH5_READ_ADDR             : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 5 Write Address pointer\n This register updates
      --  automatically each time a write completes. The current value is the
      --  next address to be written by this channel.
      CH5_WRITE_ADDR            : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 5 Transfer Count\n Program the number of bus transfers a
      --  channel will perform before halting. Note that, if transfers are
      --  larger than one byte in size, this is not equal to the number of
      --  bytes transferred (see CTRL_DATA_SIZE).\n\n When the channel is
      --  active, reading this register shows the number of transfers
      --  remaining, updating automatically each time a write transfer
      --  completes.\n\n Writing this register sets the RELOAD value for the
      --  transfer counter. Each time this channel is triggered, the RELOAD
      --  value is copied into the live transfer counter. The channel can be
      --  started multiple times, and will perform the same number of transfers
      --  each time, as programmed by most recent write.\n\n The RELOAD value
      --  can be observed at CHx_DBG_TCR. If TRANS_COUNT is used as a trigger,
      --  the written value is used immediately as the length of the new
      --  transfer sequence, as well as being written to RELOAD.
      CH5_TRANS_COUNT           : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 5 Control and Status
      CH5_CTRL_TRIG             : aliased CH5_CTRL_TRIG_Register;
      --  Alias for channel 5 CTRL register
      CH5_AL1_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 5 READ_ADDR register
      CH5_AL1_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 5 WRITE_ADDR register
      CH5_AL1_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 5 TRANS_COUNT register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH5_AL1_TRANS_COUNT_TRIG  : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 5 CTRL register
      CH5_AL2_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 5 TRANS_COUNT register
      CH5_AL2_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 5 READ_ADDR register
      CH5_AL2_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 5 WRITE_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH5_AL2_WRITE_ADDR_TRIG   : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 5 CTRL register
      CH5_AL3_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 5 WRITE_ADDR register
      CH5_AL3_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 5 TRANS_COUNT register
      CH5_AL3_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 5 READ_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH5_AL3_READ_ADDR_TRIG    : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 6 Read Address pointer\n This register updates
      --  automatically each time a read completes. The current value is the
      --  next address to be read by this channel.
      CH6_READ_ADDR             : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 6 Write Address pointer\n This register updates
      --  automatically each time a write completes. The current value is the
      --  next address to be written by this channel.
      CH6_WRITE_ADDR            : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 6 Transfer Count\n Program the number of bus transfers a
      --  channel will perform before halting. Note that, if transfers are
      --  larger than one byte in size, this is not equal to the number of
      --  bytes transferred (see CTRL_DATA_SIZE).\n\n When the channel is
      --  active, reading this register shows the number of transfers
      --  remaining, updating automatically each time a write transfer
      --  completes.\n\n Writing this register sets the RELOAD value for the
      --  transfer counter. Each time this channel is triggered, the RELOAD
      --  value is copied into the live transfer counter. The channel can be
      --  started multiple times, and will perform the same number of transfers
      --  each time, as programmed by most recent write.\n\n The RELOAD value
      --  can be observed at CHx_DBG_TCR. If TRANS_COUNT is used as a trigger,
      --  the written value is used immediately as the length of the new
      --  transfer sequence, as well as being written to RELOAD.
      CH6_TRANS_COUNT           : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 6 Control and Status
      CH6_CTRL_TRIG             : aliased CH6_CTRL_TRIG_Register;
      --  Alias for channel 6 CTRL register
      CH6_AL1_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 6 READ_ADDR register
      CH6_AL1_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 6 WRITE_ADDR register
      CH6_AL1_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 6 TRANS_COUNT register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH6_AL1_TRANS_COUNT_TRIG  : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 6 CTRL register
      CH6_AL2_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 6 TRANS_COUNT register
      CH6_AL2_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 6 READ_ADDR register
      CH6_AL2_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 6 WRITE_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH6_AL2_WRITE_ADDR_TRIG   : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 6 CTRL register
      CH6_AL3_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 6 WRITE_ADDR register
      CH6_AL3_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 6 TRANS_COUNT register
      CH6_AL3_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 6 READ_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH6_AL3_READ_ADDR_TRIG    : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 7 Read Address pointer\n This register updates
      --  automatically each time a read completes. The current value is the
      --  next address to be read by this channel.
      CH7_READ_ADDR             : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 7 Write Address pointer\n This register updates
      --  automatically each time a write completes. The current value is the
      --  next address to be written by this channel.
      CH7_WRITE_ADDR            : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 7 Transfer Count\n Program the number of bus transfers a
      --  channel will perform before halting. Note that, if transfers are
      --  larger than one byte in size, this is not equal to the number of
      --  bytes transferred (see CTRL_DATA_SIZE).\n\n When the channel is
      --  active, reading this register shows the number of transfers
      --  remaining, updating automatically each time a write transfer
      --  completes.\n\n Writing this register sets the RELOAD value for the
      --  transfer counter. Each time this channel is triggered, the RELOAD
      --  value is copied into the live transfer counter. The channel can be
      --  started multiple times, and will perform the same number of transfers
      --  each time, as programmed by most recent write.\n\n The RELOAD value
      --  can be observed at CHx_DBG_TCR. If TRANS_COUNT is used as a trigger,
      --  the written value is used immediately as the length of the new
      --  transfer sequence, as well as being written to RELOAD.
      CH7_TRANS_COUNT           : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 7 Control and Status
      CH7_CTRL_TRIG             : aliased CH7_CTRL_TRIG_Register;
      --  Alias for channel 7 CTRL register
      CH7_AL1_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 7 READ_ADDR register
      CH7_AL1_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 7 WRITE_ADDR register
      CH7_AL1_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 7 TRANS_COUNT register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH7_AL1_TRANS_COUNT_TRIG  : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 7 CTRL register
      CH7_AL2_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 7 TRANS_COUNT register
      CH7_AL2_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 7 READ_ADDR register
      CH7_AL2_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 7 WRITE_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH7_AL2_WRITE_ADDR_TRIG   : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 7 CTRL register
      CH7_AL3_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 7 WRITE_ADDR register
      CH7_AL3_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 7 TRANS_COUNT register
      CH7_AL3_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 7 READ_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH7_AL3_READ_ADDR_TRIG    : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 8 Read Address pointer\n This register updates
      --  automatically each time a read completes. The current value is the
      --  next address to be read by this channel.
      CH8_READ_ADDR             : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 8 Write Address pointer\n This register updates
      --  automatically each time a write completes. The current value is the
      --  next address to be written by this channel.
      CH8_WRITE_ADDR            : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 8 Transfer Count\n Program the number of bus transfers a
      --  channel will perform before halting. Note that, if transfers are
      --  larger than one byte in size, this is not equal to the number of
      --  bytes transferred (see CTRL_DATA_SIZE).\n\n When the channel is
      --  active, reading this register shows the number of transfers
      --  remaining, updating automatically each time a write transfer
      --  completes.\n\n Writing this register sets the RELOAD value for the
      --  transfer counter. Each time this channel is triggered, the RELOAD
      --  value is copied into the live transfer counter. The channel can be
      --  started multiple times, and will perform the same number of transfers
      --  each time, as programmed by most recent write.\n\n The RELOAD value
      --  can be observed at CHx_DBG_TCR. If TRANS_COUNT is used as a trigger,
      --  the written value is used immediately as the length of the new
      --  transfer sequence, as well as being written to RELOAD.
      CH8_TRANS_COUNT           : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 8 Control and Status
      CH8_CTRL_TRIG             : aliased CH8_CTRL_TRIG_Register;
      --  Alias for channel 8 CTRL register
      CH8_AL1_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 8 READ_ADDR register
      CH8_AL1_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 8 WRITE_ADDR register
      CH8_AL1_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 8 TRANS_COUNT register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH8_AL1_TRANS_COUNT_TRIG  : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 8 CTRL register
      CH8_AL2_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 8 TRANS_COUNT register
      CH8_AL2_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 8 READ_ADDR register
      CH8_AL2_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 8 WRITE_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH8_AL2_WRITE_ADDR_TRIG   : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 8 CTRL register
      CH8_AL3_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 8 WRITE_ADDR register
      CH8_AL3_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 8 TRANS_COUNT register
      CH8_AL3_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 8 READ_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH8_AL3_READ_ADDR_TRIG    : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 9 Read Address pointer\n This register updates
      --  automatically each time a read completes. The current value is the
      --  next address to be read by this channel.
      CH9_READ_ADDR             : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 9 Write Address pointer\n This register updates
      --  automatically each time a write completes. The current value is the
      --  next address to be written by this channel.
      CH9_WRITE_ADDR            : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 9 Transfer Count\n Program the number of bus transfers a
      --  channel will perform before halting. Note that, if transfers are
      --  larger than one byte in size, this is not equal to the number of
      --  bytes transferred (see CTRL_DATA_SIZE).\n\n When the channel is
      --  active, reading this register shows the number of transfers
      --  remaining, updating automatically each time a write transfer
      --  completes.\n\n Writing this register sets the RELOAD value for the
      --  transfer counter. Each time this channel is triggered, the RELOAD
      --  value is copied into the live transfer counter. The channel can be
      --  started multiple times, and will perform the same number of transfers
      --  each time, as programmed by most recent write.\n\n The RELOAD value
      --  can be observed at CHx_DBG_TCR. If TRANS_COUNT is used as a trigger,
      --  the written value is used immediately as the length of the new
      --  transfer sequence, as well as being written to RELOAD.
      CH9_TRANS_COUNT           : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 9 Control and Status
      CH9_CTRL_TRIG             : aliased CH9_CTRL_TRIG_Register;
      --  Alias for channel 9 CTRL register
      CH9_AL1_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 9 READ_ADDR register
      CH9_AL1_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 9 WRITE_ADDR register
      CH9_AL1_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 9 TRANS_COUNT register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH9_AL1_TRANS_COUNT_TRIG  : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 9 CTRL register
      CH9_AL2_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 9 TRANS_COUNT register
      CH9_AL2_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 9 READ_ADDR register
      CH9_AL2_READ_ADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 9 WRITE_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH9_AL2_WRITE_ADDR_TRIG   : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 9 CTRL register
      CH9_AL3_CTRL              : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 9 WRITE_ADDR register
      CH9_AL3_WRITE_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 9 TRANS_COUNT register
      CH9_AL3_TRANS_COUNT       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 9 READ_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH9_AL3_READ_ADDR_TRIG    : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 10 Read Address pointer\n This register updates
      --  automatically each time a read completes. The current value is the
      --  next address to be read by this channel.
      CH10_READ_ADDR            : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 10 Write Address pointer\n This register updates
      --  automatically each time a write completes. The current value is the
      --  next address to be written by this channel.
      CH10_WRITE_ADDR           : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 10 Transfer Count\n Program the number of bus transfers a
      --  channel will perform before halting. Note that, if transfers are
      --  larger than one byte in size, this is not equal to the number of
      --  bytes transferred (see CTRL_DATA_SIZE).\n\n When the channel is
      --  active, reading this register shows the number of transfers
      --  remaining, updating automatically each time a write transfer
      --  completes.\n\n Writing this register sets the RELOAD value for the
      --  transfer counter. Each time this channel is triggered, the RELOAD
      --  value is copied into the live transfer counter. The channel can be
      --  started multiple times, and will perform the same number of transfers
      --  each time, as programmed by most recent write.\n\n The RELOAD value
      --  can be observed at CHx_DBG_TCR. If TRANS_COUNT is used as a trigger,
      --  the written value is used immediately as the length of the new
      --  transfer sequence, as well as being written to RELOAD.
      CH10_TRANS_COUNT          : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 10 Control and Status
      CH10_CTRL_TRIG            : aliased CH10_CTRL_TRIG_Register;
      --  Alias for channel 10 CTRL register
      CH10_AL1_CTRL             : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 10 READ_ADDR register
      CH10_AL1_READ_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 10 WRITE_ADDR register
      CH10_AL1_WRITE_ADDR       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 10 TRANS_COUNT register\n This is a trigger
      --  register (0xc). Writing a nonzero value will\n reload the channel
      --  counter and start the channel.
      CH10_AL1_TRANS_COUNT_TRIG : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 10 CTRL register
      CH10_AL2_CTRL             : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 10 TRANS_COUNT register
      CH10_AL2_TRANS_COUNT      : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 10 READ_ADDR register
      CH10_AL2_READ_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 10 WRITE_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH10_AL2_WRITE_ADDR_TRIG  : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 10 CTRL register
      CH10_AL3_CTRL             : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 10 WRITE_ADDR register
      CH10_AL3_WRITE_ADDR       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 10 TRANS_COUNT register
      CH10_AL3_TRANS_COUNT      : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 10 READ_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH10_AL3_READ_ADDR_TRIG   : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 11 Read Address pointer\n This register updates
      --  automatically each time a read completes. The current value is the
      --  next address to be read by this channel.
      CH11_READ_ADDR            : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 11 Write Address pointer\n This register updates
      --  automatically each time a write completes. The current value is the
      --  next address to be written by this channel.
      CH11_WRITE_ADDR           : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 11 Transfer Count\n Program the number of bus transfers a
      --  channel will perform before halting. Note that, if transfers are
      --  larger than one byte in size, this is not equal to the number of
      --  bytes transferred (see CTRL_DATA_SIZE).\n\n When the channel is
      --  active, reading this register shows the number of transfers
      --  remaining, updating automatically each time a write transfer
      --  completes.\n\n Writing this register sets the RELOAD value for the
      --  transfer counter. Each time this channel is triggered, the RELOAD
      --  value is copied into the live transfer counter. The channel can be
      --  started multiple times, and will perform the same number of transfers
      --  each time, as programmed by most recent write.\n\n The RELOAD value
      --  can be observed at CHx_DBG_TCR. If TRANS_COUNT is used as a trigger,
      --  the written value is used immediately as the length of the new
      --  transfer sequence, as well as being written to RELOAD.
      CH11_TRANS_COUNT          : aliased Interfaces.Bit_Types.UInt32;
      --  DMA Channel 11 Control and Status
      CH11_CTRL_TRIG            : aliased CH11_CTRL_TRIG_Register;
      --  Alias for channel 11 CTRL register
      CH11_AL1_CTRL             : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 11 READ_ADDR register
      CH11_AL1_READ_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 11 WRITE_ADDR register
      CH11_AL1_WRITE_ADDR       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 11 TRANS_COUNT register\n This is a trigger
      --  register (0xc). Writing a nonzero value will\n reload the channel
      --  counter and start the channel.
      CH11_AL1_TRANS_COUNT_TRIG : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 11 CTRL register
      CH11_AL2_CTRL             : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 11 TRANS_COUNT register
      CH11_AL2_TRANS_COUNT      : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 11 READ_ADDR register
      CH11_AL2_READ_ADDR        : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 11 WRITE_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH11_AL2_WRITE_ADDR_TRIG  : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 11 CTRL register
      CH11_AL3_CTRL             : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 11 WRITE_ADDR register
      CH11_AL3_WRITE_ADDR       : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 11 TRANS_COUNT register
      CH11_AL3_TRANS_COUNT      : aliased Interfaces.Bit_Types.UInt32;
      --  Alias for channel 11 READ_ADDR register\n This is a trigger register
      --  (0xc). Writing a nonzero value will\n reload the channel counter and
      --  start the channel.
      CH11_AL3_READ_ADDR_TRIG   : aliased Interfaces.Bit_Types.UInt32;
      --  Interrupt Status (raw)
      INTR                      : aliased INTR_Register;
      --  Interrupt Enables for IRQ 0
      INTE0                     : aliased INTE0_Register;
      --  Force Interrupts
      INTF0                     : aliased INTF0_Register;
      --  Interrupt Status for IRQ 0
      INTS0                     : aliased INTS0_Register;
      --  Interrupt Enables for IRQ 1
      INTE1                     : aliased INTE1_Register;
      --  Force Interrupts for IRQ 1
      INTF1                     : aliased INTF1_Register;
      --  Interrupt Status (masked) for IRQ 1
      INTS1                     : aliased INTS1_Register;
      --  Pacing (X/Y) Fractional Timer\n The pacing timer produces TREQ
      --  assertions at a rate set by ((X/Y) * sys_clk). This equation is
      --  evaluated every sys_clk cycles and therefore can only generate TREQs
      --  at a rate of 1 per sys_clk (i.e. permanent TREQ) or less.
      TIMER0                    : aliased TIMER_Register;
      --  Pacing (X/Y) Fractional Timer\n The pacing timer produces TREQ
      --  assertions at a rate set by ((X/Y) * sys_clk). This equation is
      --  evaluated every sys_clk cycles and therefore can only generate TREQs
      --  at a rate of 1 per sys_clk (i.e. permanent TREQ) or less.
      TIMER1                    : aliased TIMER_Register;
      --  Trigger one or more channels simultaneously
      MULTI_CHAN_TRIGGER        : aliased MULTI_CHAN_TRIGGER_Register;
      --  Sniffer Control
      SNIFF_CTRL                : aliased SNIFF_CTRL_Register;
      --  Data accumulator for sniff hardware\n Write an initial seed value
      --  here before starting a DMA transfer on the channel indicated by
      --  SNIFF_CTRL_DMACH. The hardware will update this register each time it
      --  observes a read from the indicated channel. Once the channel
      --  completes, the final result can be read from this register.
      SNIFF_DATA                : aliased Interfaces.Bit_Types.UInt32;
      --  Debug RAF, WAF, TDF levels
      FIFO_LEVELS               : aliased FIFO_LEVELS_Register;
      --  Abort an in-progress transfer sequence on one or more channels
      CHAN_ABORT                : aliased CHAN_ABORT_Register;
      --  The number of channels this DMA instance is equipped with. This DMA
      --  supports up to 16 hardware channels, but can be configured with as
      --  few as one, to minimise silicon area.
      N_CHANNELS                : aliased N_CHANNELS_Register;
      --  Read: get channel DREQ counter (i.e. how many accesses the DMA
      --  expects it can perform on the peripheral without overflow/underflow.
      --  Write any value: clears the counter, and cause channel to re-initiate
      --  DREQ handshake.
      CH0_DBG_CTDREQ            : aliased CH0_DBG_CTDREQ_Register;
      --  Read to get channel TRANS_COUNT reload value, i.e. the length of the
      --  next transfer
      CH0_DBG_TCR               : aliased Interfaces.Bit_Types.UInt32;
      --  Read: get channel DREQ counter (i.e. how many accesses the DMA
      --  expects it can perform on the peripheral without overflow/underflow.
      --  Write any value: clears the counter, and cause channel to re-initiate
      --  DREQ handshake.
      CH1_DBG_CTDREQ            : aliased CH1_DBG_CTDREQ_Register;
      --  Read to get channel TRANS_COUNT reload value, i.e. the length of the
      --  next transfer
      CH1_DBG_TCR               : aliased Interfaces.Bit_Types.UInt32;
      --  Read: get channel DREQ counter (i.e. how many accesses the DMA
      --  expects it can perform on the peripheral without overflow/underflow.
      --  Write any value: clears the counter, and cause channel to re-initiate
      --  DREQ handshake.
      CH2_DBG_CTDREQ            : aliased CH2_DBG_CTDREQ_Register;
      --  Read to get channel TRANS_COUNT reload value, i.e. the length of the
      --  next transfer
      CH2_DBG_TCR               : aliased Interfaces.Bit_Types.UInt32;
      --  Read: get channel DREQ counter (i.e. how many accesses the DMA
      --  expects it can perform on the peripheral without overflow/underflow.
      --  Write any value: clears the counter, and cause channel to re-initiate
      --  DREQ handshake.
      CH3_DBG_CTDREQ            : aliased CH3_DBG_CTDREQ_Register;
      --  Read to get channel TRANS_COUNT reload value, i.e. the length of the
      --  next transfer
      CH3_DBG_TCR               : aliased Interfaces.Bit_Types.UInt32;
      --  Read: get channel DREQ counter (i.e. how many accesses the DMA
      --  expects it can perform on the peripheral without overflow/underflow.
      --  Write any value: clears the counter, and cause channel to re-initiate
      --  DREQ handshake.
      CH4_DBG_CTDREQ            : aliased CH4_DBG_CTDREQ_Register;
      --  Read to get channel TRANS_COUNT reload value, i.e. the length of the
      --  next transfer
      CH4_DBG_TCR               : aliased Interfaces.Bit_Types.UInt32;
      --  Read: get channel DREQ counter (i.e. how many accesses the DMA
      --  expects it can perform on the peripheral without overflow/underflow.
      --  Write any value: clears the counter, and cause channel to re-initiate
      --  DREQ handshake.
      CH5_DBG_CTDREQ            : aliased CH5_DBG_CTDREQ_Register;
      --  Read to get channel TRANS_COUNT reload value, i.e. the length of the
      --  next transfer
      CH5_DBG_TCR               : aliased Interfaces.Bit_Types.UInt32;
      --  Read: get channel DREQ counter (i.e. how many accesses the DMA
      --  expects it can perform on the peripheral without overflow/underflow.
      --  Write any value: clears the counter, and cause channel to re-initiate
      --  DREQ handshake.
      CH6_DBG_CTDREQ            : aliased CH6_DBG_CTDREQ_Register;
      --  Read to get channel TRANS_COUNT reload value, i.e. the length of the
      --  next transfer
      CH6_DBG_TCR               : aliased Interfaces.Bit_Types.UInt32;
      --  Read: get channel DREQ counter (i.e. how many accesses the DMA
      --  expects it can perform on the peripheral without overflow/underflow.
      --  Write any value: clears the counter, and cause channel to re-initiate
      --  DREQ handshake.
      CH7_DBG_CTDREQ            : aliased CH7_DBG_CTDREQ_Register;
      --  Read to get channel TRANS_COUNT reload value, i.e. the length of the
      --  next transfer
      CH7_DBG_TCR               : aliased Interfaces.Bit_Types.UInt32;
      --  Read: get channel DREQ counter (i.e. how many accesses the DMA
      --  expects it can perform on the peripheral without overflow/underflow.
      --  Write any value: clears the counter, and cause channel to re-initiate
      --  DREQ handshake.
      CH8_DBG_CTDREQ            : aliased CH8_DBG_CTDREQ_Register;
      --  Read to get channel TRANS_COUNT reload value, i.e. the length of the
      --  next transfer
      CH8_DBG_TCR               : aliased Interfaces.Bit_Types.UInt32;
      --  Read: get channel DREQ counter (i.e. how many accesses the DMA
      --  expects it can perform on the peripheral without overflow/underflow.
      --  Write any value: clears the counter, and cause channel to re-initiate
      --  DREQ handshake.
      CH9_DBG_CTDREQ            : aliased CH9_DBG_CTDREQ_Register;
      --  Read to get channel TRANS_COUNT reload value, i.e. the length of the
      --  next transfer
      CH9_DBG_TCR               : aliased Interfaces.Bit_Types.UInt32;
      --  Read: get channel DREQ counter (i.e. how many accesses the DMA
      --  expects it can perform on the peripheral without overflow/underflow.
      --  Write any value: clears the counter, and cause channel to re-initiate
      --  DREQ handshake.
      CH10_DBG_CTDREQ           : aliased CH10_DBG_CTDREQ_Register;
      --  Read to get channel TRANS_COUNT reload value, i.e. the length of the
      --  next transfer
      CH10_DBG_TCR              : aliased Interfaces.Bit_Types.UInt32;
      --  Read: get channel DREQ counter (i.e. how many accesses the DMA
      --  expects it can perform on the peripheral without overflow/underflow.
      --  Write any value: clears the counter, and cause channel to re-initiate
      --  DREQ handshake.
      CH11_DBG_CTDREQ           : aliased CH11_DBG_CTDREQ_Register;
      --  Read to get channel TRANS_COUNT reload value, i.e. the length of the
      --  next transfer
      CH11_DBG_TCR              : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for DMA_Peripheral use record
      CH0_READ_ADDR             at 16#0# range 0 .. 31;
      CH0_WRITE_ADDR            at 16#4# range 0 .. 31;
      CH0_TRANS_COUNT           at 16#8# range 0 .. 31;
      CH0_CTRL_TRIG             at 16#C# range 0 .. 31;
      CH0_AL1_CTRL              at 16#10# range 0 .. 31;
      CH0_AL1_READ_ADDR         at 16#14# range 0 .. 31;
      CH0_AL1_WRITE_ADDR        at 16#18# range 0 .. 31;
      CH0_AL1_TRANS_COUNT_TRIG  at 16#1C# range 0 .. 31;
      CH0_AL2_CTRL              at 16#20# range 0 .. 31;
      CH0_AL2_TRANS_COUNT       at 16#24# range 0 .. 31;
      CH0_AL2_READ_ADDR         at 16#28# range 0 .. 31;
      CH0_AL2_WRITE_ADDR_TRIG   at 16#2C# range 0 .. 31;
      CH0_AL3_CTRL              at 16#30# range 0 .. 31;
      CH0_AL3_WRITE_ADDR        at 16#34# range 0 .. 31;
      CH0_AL3_TRANS_COUNT       at 16#38# range 0 .. 31;
      CH0_AL3_READ_ADDR_TRIG    at 16#3C# range 0 .. 31;
      CH1_READ_ADDR             at 16#40# range 0 .. 31;
      CH1_WRITE_ADDR            at 16#44# range 0 .. 31;
      CH1_TRANS_COUNT           at 16#48# range 0 .. 31;
      CH1_CTRL_TRIG             at 16#4C# range 0 .. 31;
      CH1_AL1_CTRL              at 16#50# range 0 .. 31;
      CH1_AL1_READ_ADDR         at 16#54# range 0 .. 31;
      CH1_AL1_WRITE_ADDR        at 16#58# range 0 .. 31;
      CH1_AL1_TRANS_COUNT_TRIG  at 16#5C# range 0 .. 31;
      CH1_AL2_CTRL              at 16#60# range 0 .. 31;
      CH1_AL2_TRANS_COUNT       at 16#64# range 0 .. 31;
      CH1_AL2_READ_ADDR         at 16#68# range 0 .. 31;
      CH1_AL2_WRITE_ADDR_TRIG   at 16#6C# range 0 .. 31;
      CH1_AL3_CTRL              at 16#70# range 0 .. 31;
      CH1_AL3_WRITE_ADDR        at 16#74# range 0 .. 31;
      CH1_AL3_TRANS_COUNT       at 16#78# range 0 .. 31;
      CH1_AL3_READ_ADDR_TRIG    at 16#7C# range 0 .. 31;
      CH2_READ_ADDR             at 16#80# range 0 .. 31;
      CH2_WRITE_ADDR            at 16#84# range 0 .. 31;
      CH2_TRANS_COUNT           at 16#88# range 0 .. 31;
      CH2_CTRL_TRIG             at 16#8C# range 0 .. 31;
      CH2_AL1_CTRL              at 16#90# range 0 .. 31;
      CH2_AL1_READ_ADDR         at 16#94# range 0 .. 31;
      CH2_AL1_WRITE_ADDR        at 16#98# range 0 .. 31;
      CH2_AL1_TRANS_COUNT_TRIG  at 16#9C# range 0 .. 31;
      CH2_AL2_CTRL              at 16#A0# range 0 .. 31;
      CH2_AL2_TRANS_COUNT       at 16#A4# range 0 .. 31;
      CH2_AL2_READ_ADDR         at 16#A8# range 0 .. 31;
      CH2_AL2_WRITE_ADDR_TRIG   at 16#AC# range 0 .. 31;
      CH2_AL3_CTRL              at 16#B0# range 0 .. 31;
      CH2_AL3_WRITE_ADDR        at 16#B4# range 0 .. 31;
      CH2_AL3_TRANS_COUNT       at 16#B8# range 0 .. 31;
      CH2_AL3_READ_ADDR_TRIG    at 16#BC# range 0 .. 31;
      CH3_READ_ADDR             at 16#C0# range 0 .. 31;
      CH3_WRITE_ADDR            at 16#C4# range 0 .. 31;
      CH3_TRANS_COUNT           at 16#C8# range 0 .. 31;
      CH3_CTRL_TRIG             at 16#CC# range 0 .. 31;
      CH3_AL1_CTRL              at 16#D0# range 0 .. 31;
      CH3_AL1_READ_ADDR         at 16#D4# range 0 .. 31;
      CH3_AL1_WRITE_ADDR        at 16#D8# range 0 .. 31;
      CH3_AL1_TRANS_COUNT_TRIG  at 16#DC# range 0 .. 31;
      CH3_AL2_CTRL              at 16#E0# range 0 .. 31;
      CH3_AL2_TRANS_COUNT       at 16#E4# range 0 .. 31;
      CH3_AL2_READ_ADDR         at 16#E8# range 0 .. 31;
      CH3_AL2_WRITE_ADDR_TRIG   at 16#EC# range 0 .. 31;
      CH3_AL3_CTRL              at 16#F0# range 0 .. 31;
      CH3_AL3_WRITE_ADDR        at 16#F4# range 0 .. 31;
      CH3_AL3_TRANS_COUNT       at 16#F8# range 0 .. 31;
      CH3_AL3_READ_ADDR_TRIG    at 16#FC# range 0 .. 31;
      CH4_READ_ADDR             at 16#100# range 0 .. 31;
      CH4_WRITE_ADDR            at 16#104# range 0 .. 31;
      CH4_TRANS_COUNT           at 16#108# range 0 .. 31;
      CH4_CTRL_TRIG             at 16#10C# range 0 .. 31;
      CH4_AL1_CTRL              at 16#110# range 0 .. 31;
      CH4_AL1_READ_ADDR         at 16#114# range 0 .. 31;
      CH4_AL1_WRITE_ADDR        at 16#118# range 0 .. 31;
      CH4_AL1_TRANS_COUNT_TRIG  at 16#11C# range 0 .. 31;
      CH4_AL2_CTRL              at 16#120# range 0 .. 31;
      CH4_AL2_TRANS_COUNT       at 16#124# range 0 .. 31;
      CH4_AL2_READ_ADDR         at 16#128# range 0 .. 31;
      CH4_AL2_WRITE_ADDR_TRIG   at 16#12C# range 0 .. 31;
      CH4_AL3_CTRL              at 16#130# range 0 .. 31;
      CH4_AL3_WRITE_ADDR        at 16#134# range 0 .. 31;
      CH4_AL3_TRANS_COUNT       at 16#138# range 0 .. 31;
      CH4_AL3_READ_ADDR_TRIG    at 16#13C# range 0 .. 31;
      CH5_READ_ADDR             at 16#140# range 0 .. 31;
      CH5_WRITE_ADDR            at 16#144# range 0 .. 31;
      CH5_TRANS_COUNT           at 16#148# range 0 .. 31;
      CH5_CTRL_TRIG             at 16#14C# range 0 .. 31;
      CH5_AL1_CTRL              at 16#150# range 0 .. 31;
      CH5_AL1_READ_ADDR         at 16#154# range 0 .. 31;
      CH5_AL1_WRITE_ADDR        at 16#158# range 0 .. 31;
      CH5_AL1_TRANS_COUNT_TRIG  at 16#15C# range 0 .. 31;
      CH5_AL2_CTRL              at 16#160# range 0 .. 31;
      CH5_AL2_TRANS_COUNT       at 16#164# range 0 .. 31;
      CH5_AL2_READ_ADDR         at 16#168# range 0 .. 31;
      CH5_AL2_WRITE_ADDR_TRIG   at 16#16C# range 0 .. 31;
      CH5_AL3_CTRL              at 16#170# range 0 .. 31;
      CH5_AL3_WRITE_ADDR        at 16#174# range 0 .. 31;
      CH5_AL3_TRANS_COUNT       at 16#178# range 0 .. 31;
      CH5_AL3_READ_ADDR_TRIG    at 16#17C# range 0 .. 31;
      CH6_READ_ADDR             at 16#180# range 0 .. 31;
      CH6_WRITE_ADDR            at 16#184# range 0 .. 31;
      CH6_TRANS_COUNT           at 16#188# range 0 .. 31;
      CH6_CTRL_TRIG             at 16#18C# range 0 .. 31;
      CH6_AL1_CTRL              at 16#190# range 0 .. 31;
      CH6_AL1_READ_ADDR         at 16#194# range 0 .. 31;
      CH6_AL1_WRITE_ADDR        at 16#198# range 0 .. 31;
      CH6_AL1_TRANS_COUNT_TRIG  at 16#19C# range 0 .. 31;
      CH6_AL2_CTRL              at 16#1A0# range 0 .. 31;
      CH6_AL2_TRANS_COUNT       at 16#1A4# range 0 .. 31;
      CH6_AL2_READ_ADDR         at 16#1A8# range 0 .. 31;
      CH6_AL2_WRITE_ADDR_TRIG   at 16#1AC# range 0 .. 31;
      CH6_AL3_CTRL              at 16#1B0# range 0 .. 31;
      CH6_AL3_WRITE_ADDR        at 16#1B4# range 0 .. 31;
      CH6_AL3_TRANS_COUNT       at 16#1B8# range 0 .. 31;
      CH6_AL3_READ_ADDR_TRIG    at 16#1BC# range 0 .. 31;
      CH7_READ_ADDR             at 16#1C0# range 0 .. 31;
      CH7_WRITE_ADDR            at 16#1C4# range 0 .. 31;
      CH7_TRANS_COUNT           at 16#1C8# range 0 .. 31;
      CH7_CTRL_TRIG             at 16#1CC# range 0 .. 31;
      CH7_AL1_CTRL              at 16#1D0# range 0 .. 31;
      CH7_AL1_READ_ADDR         at 16#1D4# range 0 .. 31;
      CH7_AL1_WRITE_ADDR        at 16#1D8# range 0 .. 31;
      CH7_AL1_TRANS_COUNT_TRIG  at 16#1DC# range 0 .. 31;
      CH7_AL2_CTRL              at 16#1E0# range 0 .. 31;
      CH7_AL2_TRANS_COUNT       at 16#1E4# range 0 .. 31;
      CH7_AL2_READ_ADDR         at 16#1E8# range 0 .. 31;
      CH7_AL2_WRITE_ADDR_TRIG   at 16#1EC# range 0 .. 31;
      CH7_AL3_CTRL              at 16#1F0# range 0 .. 31;
      CH7_AL3_WRITE_ADDR        at 16#1F4# range 0 .. 31;
      CH7_AL3_TRANS_COUNT       at 16#1F8# range 0 .. 31;
      CH7_AL3_READ_ADDR_TRIG    at 16#1FC# range 0 .. 31;
      CH8_READ_ADDR             at 16#200# range 0 .. 31;
      CH8_WRITE_ADDR            at 16#204# range 0 .. 31;
      CH8_TRANS_COUNT           at 16#208# range 0 .. 31;
      CH8_CTRL_TRIG             at 16#20C# range 0 .. 31;
      CH8_AL1_CTRL              at 16#210# range 0 .. 31;
      CH8_AL1_READ_ADDR         at 16#214# range 0 .. 31;
      CH8_AL1_WRITE_ADDR        at 16#218# range 0 .. 31;
      CH8_AL1_TRANS_COUNT_TRIG  at 16#21C# range 0 .. 31;
      CH8_AL2_CTRL              at 16#220# range 0 .. 31;
      CH8_AL2_TRANS_COUNT       at 16#224# range 0 .. 31;
      CH8_AL2_READ_ADDR         at 16#228# range 0 .. 31;
      CH8_AL2_WRITE_ADDR_TRIG   at 16#22C# range 0 .. 31;
      CH8_AL3_CTRL              at 16#230# range 0 .. 31;
      CH8_AL3_WRITE_ADDR        at 16#234# range 0 .. 31;
      CH8_AL3_TRANS_COUNT       at 16#238# range 0 .. 31;
      CH8_AL3_READ_ADDR_TRIG    at 16#23C# range 0 .. 31;
      CH9_READ_ADDR             at 16#240# range 0 .. 31;
      CH9_WRITE_ADDR            at 16#244# range 0 .. 31;
      CH9_TRANS_COUNT           at 16#248# range 0 .. 31;
      CH9_CTRL_TRIG             at 16#24C# range 0 .. 31;
      CH9_AL1_CTRL              at 16#250# range 0 .. 31;
      CH9_AL1_READ_ADDR         at 16#254# range 0 .. 31;
      CH9_AL1_WRITE_ADDR        at 16#258# range 0 .. 31;
      CH9_AL1_TRANS_COUNT_TRIG  at 16#25C# range 0 .. 31;
      CH9_AL2_CTRL              at 16#260# range 0 .. 31;
      CH9_AL2_TRANS_COUNT       at 16#264# range 0 .. 31;
      CH9_AL2_READ_ADDR         at 16#268# range 0 .. 31;
      CH9_AL2_WRITE_ADDR_TRIG   at 16#26C# range 0 .. 31;
      CH9_AL3_CTRL              at 16#270# range 0 .. 31;
      CH9_AL3_WRITE_ADDR        at 16#274# range 0 .. 31;
      CH9_AL3_TRANS_COUNT       at 16#278# range 0 .. 31;
      CH9_AL3_READ_ADDR_TRIG    at 16#27C# range 0 .. 31;
      CH10_READ_ADDR            at 16#280# range 0 .. 31;
      CH10_WRITE_ADDR           at 16#284# range 0 .. 31;
      CH10_TRANS_COUNT          at 16#288# range 0 .. 31;
      CH10_CTRL_TRIG            at 16#28C# range 0 .. 31;
      CH10_AL1_CTRL             at 16#290# range 0 .. 31;
      CH10_AL1_READ_ADDR        at 16#294# range 0 .. 31;
      CH10_AL1_WRITE_ADDR       at 16#298# range 0 .. 31;
      CH10_AL1_TRANS_COUNT_TRIG at 16#29C# range 0 .. 31;
      CH10_AL2_CTRL             at 16#2A0# range 0 .. 31;
      CH10_AL2_TRANS_COUNT      at 16#2A4# range 0 .. 31;
      CH10_AL2_READ_ADDR        at 16#2A8# range 0 .. 31;
      CH10_AL2_WRITE_ADDR_TRIG  at 16#2AC# range 0 .. 31;
      CH10_AL3_CTRL             at 16#2B0# range 0 .. 31;
      CH10_AL3_WRITE_ADDR       at 16#2B4# range 0 .. 31;
      CH10_AL3_TRANS_COUNT      at 16#2B8# range 0 .. 31;
      CH10_AL3_READ_ADDR_TRIG   at 16#2BC# range 0 .. 31;
      CH11_READ_ADDR            at 16#2C0# range 0 .. 31;
      CH11_WRITE_ADDR           at 16#2C4# range 0 .. 31;
      CH11_TRANS_COUNT          at 16#2C8# range 0 .. 31;
      CH11_CTRL_TRIG            at 16#2CC# range 0 .. 31;
      CH11_AL1_CTRL             at 16#2D0# range 0 .. 31;
      CH11_AL1_READ_ADDR        at 16#2D4# range 0 .. 31;
      CH11_AL1_WRITE_ADDR       at 16#2D8# range 0 .. 31;
      CH11_AL1_TRANS_COUNT_TRIG at 16#2DC# range 0 .. 31;
      CH11_AL2_CTRL             at 16#2E0# range 0 .. 31;
      CH11_AL2_TRANS_COUNT      at 16#2E4# range 0 .. 31;
      CH11_AL2_READ_ADDR        at 16#2E8# range 0 .. 31;
      CH11_AL2_WRITE_ADDR_TRIG  at 16#2EC# range 0 .. 31;
      CH11_AL3_CTRL             at 16#2F0# range 0 .. 31;
      CH11_AL3_WRITE_ADDR       at 16#2F4# range 0 .. 31;
      CH11_AL3_TRANS_COUNT      at 16#2F8# range 0 .. 31;
      CH11_AL3_READ_ADDR_TRIG   at 16#2FC# range 0 .. 31;
      INTR                      at 16#400# range 0 .. 31;
      INTE0                     at 16#404# range 0 .. 31;
      INTF0                     at 16#408# range 0 .. 31;
      INTS0                     at 16#40C# range 0 .. 31;
      INTE1                     at 16#414# range 0 .. 31;
      INTF1                     at 16#418# range 0 .. 31;
      INTS1                     at 16#41C# range 0 .. 31;
      TIMER0                    at 16#420# range 0 .. 31;
      TIMER1                    at 16#424# range 0 .. 31;
      MULTI_CHAN_TRIGGER        at 16#430# range 0 .. 31;
      SNIFF_CTRL                at 16#434# range 0 .. 31;
      SNIFF_DATA                at 16#438# range 0 .. 31;
      FIFO_LEVELS               at 16#440# range 0 .. 31;
      CHAN_ABORT                at 16#444# range 0 .. 31;
      N_CHANNELS                at 16#448# range 0 .. 31;
      CH0_DBG_CTDREQ            at 16#800# range 0 .. 31;
      CH0_DBG_TCR               at 16#804# range 0 .. 31;
      CH1_DBG_CTDREQ            at 16#840# range 0 .. 31;
      CH1_DBG_TCR               at 16#844# range 0 .. 31;
      CH2_DBG_CTDREQ            at 16#880# range 0 .. 31;
      CH2_DBG_TCR               at 16#884# range 0 .. 31;
      CH3_DBG_CTDREQ            at 16#8C0# range 0 .. 31;
      CH3_DBG_TCR               at 16#8C4# range 0 .. 31;
      CH4_DBG_CTDREQ            at 16#900# range 0 .. 31;
      CH4_DBG_TCR               at 16#904# range 0 .. 31;
      CH5_DBG_CTDREQ            at 16#940# range 0 .. 31;
      CH5_DBG_TCR               at 16#944# range 0 .. 31;
      CH6_DBG_CTDREQ            at 16#980# range 0 .. 31;
      CH6_DBG_TCR               at 16#984# range 0 .. 31;
      CH7_DBG_CTDREQ            at 16#9C0# range 0 .. 31;
      CH7_DBG_TCR               at 16#9C4# range 0 .. 31;
      CH8_DBG_CTDREQ            at 16#A00# range 0 .. 31;
      CH8_DBG_TCR               at 16#A04# range 0 .. 31;
      CH9_DBG_CTDREQ            at 16#A40# range 0 .. 31;
      CH9_DBG_TCR               at 16#A44# range 0 .. 31;
      CH10_DBG_CTDREQ           at 16#A80# range 0 .. 31;
      CH10_DBG_TCR              at 16#A84# range 0 .. 31;
      CH11_DBG_CTDREQ           at 16#AC0# range 0 .. 31;
      CH11_DBG_TCR              at 16#AC4# range 0 .. 31;
   end record;

   --  DMA with separate read and write masters
   DMA_Periph : aliased DMA_Peripheral
     with Import, Address => DMA_Base;

end Interfaces.RP.DMA;
