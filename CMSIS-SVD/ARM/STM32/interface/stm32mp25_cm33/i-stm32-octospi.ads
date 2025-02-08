--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.OCTOSPI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype OCTOSPI_CR_FTHRES_Field is Interfaces.Bit_Types.UInt6;
   subtype OCTOSPI_CR_FMODE_Field is Interfaces.Bit_Types.UInt2;

   --  OCTOSPI control register
   type OCTOSPI_CR_Register is record
      --  Enable This bit enables the OCTOSPI. The DMA request can be aborted
      --  without having received the ACK in case this EN bit is cleared during
      --  the operation. Note: In case this bit is set to 0 during a DMA
      --  transfer, the REQ signal to DMA returns to inactive state without
      --  waiting for the ACK signal from DMA to be active.
      EN             : Boolean := False;
      --  Abort request This bit aborts the ongoing command sequence. It is
      --  automatically reset once the abort is completed. This bit stops the
      --  current transfer. Note: This bit is always read as 0.
      ABORT_k        : Boolean := False;
      --  DMA enable In indirect mode, the DMA can be used to input or output
      --  data via OCTOSPI_DR. DMA transfers are initiated when FTF is set.
      --  Note: Resetting the DMAEN bit while a DMA transfer is ongoing, breaks
      --  the handshake with the DMA. Do not write this bit during DMA
      --  operation.
      DMAEN          : Boolean := False;
      --  Timeout counter enable This bit is valid only when the memory-mapped
      --  mode (FMODE[1:0]=11) is selected. This bit enables the timeout
      --  counter. Note: This bit can be modified only when BUSY = 0.
      TCEN           : Boolean := False;
      --  unspecified
      Reserved_4_5   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Dual-memory configuration This bit activates the dual-memory
      --  configuration, where two external devices are used simultaneously to
      --  double the throughput and the capacity Note: This bit can be modified
      --  only when BUSY = 0.
      DMM            : Boolean := False;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  FIFO threshold level This field defines, in indirect mode, the
      --  threshold number of bytes in the FIFO that causes the FIFO threshold
      --  flag FTF in OCTOSPI_SR, to be set. ... Note: If DMAEN=1, the DMA
      --  controller for the corresponding channel must be disabled before
      --  changing the FTHRES[5:0] value.
      FTHRES         : OCTOSPI_CR_FTHRES_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Transfer error interrupt enable This bit enables the transfer error
      --  interrupt.
      TEIE           : Boolean := False;
      --  Transfer complete interrupt enable This bit enables the transfer
      --  complete interrupt.
      TCIE           : Boolean := False;
      --  FIFO threshold interrupt enable This bit enables the FIFO threshold
      --  interrupt.
      FTIE           : Boolean := False;
      --  Status-match interrupt enable This bit enables the status-match
      --  interrupt.
      SMIE           : Boolean := False;
      --  Timeout interrupt enable This bit enables the timeout interrupt.
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_21_21 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Automatic status-polling mode stop This bit determines if the
      --  automatic status-polling mode is stopped after a match. Note: This
      --  bit can be modified only when BUSY = 0.
      APMS           : Boolean := False;
      --  Polling match mode This bit indicates which method must be used to
      --  determine a match during the automatic status-polling mode. Note:
      --  This bit can be modified only when BUSY = 0.
      PMM            : Boolean := False;
      --  Chip-select selection This bit indicates to OCTOSPI I/O manager if it
      --  must copy NCS to NCS1 or NCS2. Note: This bit can be modified only
      --  when BUSY = 0.
      CSSEL          : Boolean := False;
      --  unspecified
      Reserved_25_27 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Functional mode This bit field defines the OCTOSPI functional mode of
      --  operation. If DMAEN=1 already, then the DMA controller for the
      --  corresponding channel must be disabled before changing the FMODE[1:0]
      --  value. If FMODE[1:0] and FTHRES[4:0] are wrongly updated while
      --  DMAEN=1, the DMA request signal automatically goes to inactive state.
      --  Note: This bit field can be modified only when BUSY = 0.
      FMODE          : OCTOSPI_CR_FMODE_Field := 16#0#;
      --  External memory select This bit selects the external memory to be
      --  addressed in single-, dual-, quad-SPI mode in single-memory
      --  configuration (when DMM = 0). This bit is ignored when DMM = 1 or
      --  when octal-SPI mode is selected. Note: This bit is mirrored in bit 7.
      --  This bit can be modified only when BUSY = 0.
      MSEL           : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_CR_Register use record
      EN             at 0 range 0 .. 0;
      ABORT_k        at 0 range 1 .. 1;
      DMAEN          at 0 range 2 .. 2;
      TCEN           at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DMM            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      FTHRES         at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      TEIE           at 0 range 16 .. 16;
      TCIE           at 0 range 17 .. 17;
      FTIE           at 0 range 18 .. 18;
      SMIE           at 0 range 19 .. 19;
      TOIE           at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      APMS           at 0 range 22 .. 22;
      PMM            at 0 range 23 .. 23;
      CSSEL          at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      FMODE          at 0 range 28 .. 29;
      MSEL           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OCTOSPI_DCR1_CSHT_Field is Interfaces.Bit_Types.UInt6;
   subtype OCTOSPI_DCR1_DEVSIZE_Field is Interfaces.Bit_Types.UInt5;
   subtype OCTOSPI_DCR1_MTYP_Field is Interfaces.Bit_Types.UInt3;

   --  OCTOSPI device configuration register 1
   type OCTOSPI_DCR1_Register is record
      --  Clock mode 0/mode 3 This bit indicates the level taken by the CLK
      --  between commands (when NCS=1).
      CKMODE         : Boolean := False;
      --  Free running clock This bit configures the free running clock. Note:
      --  Free running clock mode is intended for delay calibration only. No
      --  memory or other device access is possible when FRCK is set.
      FRCK           : Boolean := False;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Delay block bypass
      DLYBYP         : Boolean := False;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Chip-select high time CSHT+1 defines the minimum number of CLK cycles
      --  where the chip-select (NCS) must remain high between commands issued
      --  to the external device. ...
      CSHT           : OCTOSPI_DCR1_CSHT_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Device size This bit field defines the size of the external device
      --  using the following formula: Number of bytes in device =
      --  2sup[DEVSIZE+1]/sup. DEVSIZE + 1 is effectively the number of address
      --  bits required to address the external device. The device capacity can
      --  be up to 4Gbytes (addressed using 32-bits) in indirect mode, but the
      --  addressable space in memory-mapped mode is limited to 256Mbytes. In
      --  regular-command protocol, if DMM=1, DEVSIZE[4:0] indicates the
      --  capacity of one of the two external devices.
      DEVSIZE        : OCTOSPI_DCR1_DEVSIZE_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Memory type This bit field indicates the type of memory to be
      --  supported. Note: In this mode, DQS signal polarity is inverted with
      --  respect to the memory clock signal. This is the default value and
      --  care must be taken to change MTYP[2:0] for memories different from
      --  Micron. in single-, dual-, quad-, and octal-SPI modes. Others:
      --  Reserved
      MTYP           : OCTOSPI_DCR1_MTYP_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_DCR1_Register use record
      CKMODE         at 0 range 0 .. 0;
      FRCK           at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      DLYBYP         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CSHT           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DEVSIZE        at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      MTYP           at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype OCTOSPI_DCR2_PRESCALER_Field is Interfaces.Bit_Types.Byte;
   subtype OCTOSPI_DCR2_WRAPSIZE_Field is Interfaces.Bit_Types.UInt3;

   --  OCTOSPI device configuration register 2
   type OCTOSPI_DCR2_Register is record
      --  Clock prescaler This bit field defines the scaler factor for
      --  generating the CLK based on the kernel clock (value+1). ... For odd
      --  clock division factors, the CLK duty cycle is not 50%. The clock
      --  signal remains low one cycle longer than it stays high.
      PRESCALER      : OCTOSPI_DCR2_PRESCALER_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Wrap size This bit field indicates the wrap size to which the memory
      --  is configured. For memories which have a separate command for wrapped
      --  instructions, this bit field indicates the wrap-size associated with
      --  the command held in the OCTOSPI1_WPIR register. Others: Reserved
      WRAPSIZE       : OCTOSPI_DCR2_WRAPSIZE_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_DCR2_Register use record
      PRESCALER      at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRAPSIZE       at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype OCTOSPI_DCR3_MAXTRAN_Field is Interfaces.Bit_Types.Byte;
   subtype OCTOSPI_DCR3_CSBOUND_Field is Interfaces.Bit_Types.UInt5;

   --  OCTOSPI device configuration register 3
   type OCTOSPI_DCR3_Register is record
      --  Maximum transfer This bit field enables the communication regulation
      --  feature. The NCS is released every MAXTRAN+1 clock cycles when the
      --  other OCTOSPI request the access to the bus. Others: Maximum
      --  communication is set to MAXTRAN+1 bytes.
      MAXTRAN        : OCTOSPI_DCR3_MAXTRAN_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  NCS boundary This bit field enables the transaction boundary feature.
      --  When active, a minimum value of 3 is recommended. The NCS is released
      --  on each boundary of 2supCSBOUND/sup bytes. Others: NCS boundary set
      --  to 2supCSBOUND/sup bytes
      CSBOUND        : OCTOSPI_DCR3_CSBOUND_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_DCR3_Register use record
      MAXTRAN        at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CSBOUND        at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype OCTOSPI_SR_FLEVEL_Field is Interfaces.Bit_Types.UInt7;

   --  OCTOSPI status register
   type OCTOSPI_SR_Register is record
      --  Read-only. Transfer error flag This bit is set in indirect mode when
      --  an invalid address is being accessed in indirect mode. It is cleared
      --  by writing 1 to CTEF.
      TEF            : Boolean;
      --  Read-only. Transfer complete flag This bit is set in indirect mode
      --  when the programmed number of data has been transferred or in any
      --  mode when the transfer has been aborted.It is cleared by writing 1 to
      --  CTCF.
      TCF            : Boolean;
      --  Read-only. FIFO threshold flag In indirect mode, this bit is set when
      --  the FIFO threshold has been reached, or if there is any data left in
      --  the FIFO after the reads from the external device are complete. It is
      --  cleared automatically as soon as the threshold condition is no longer
      --  true. In automatic status-polling mode, this bit is set every time
      --  the status register is read, and the bit is cleared when the data
      --  register is read.
      FTF            : Boolean;
      --  Read-only. Status match flag This bit is set in automatic
      --  status-polling mode when the unmasked received data matches the
      --  corresponding bits in the match register (OCTOSPI_PSMAR). It is
      --  cleared by writing 1 to CSMF.
      SMF            : Boolean;
      --  Read-only. Timeout flag This bit is set when timeout occurs. It is
      --  cleared by writing 1 to CTOF.
      TOF            : Boolean;
      --  Read-only. Busy This bit is set when an operation is ongoing. It is
      --  cleared automatically when the operation with the external device is
      --  finished and the FIFO is empty.
      BUSY           : Boolean;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2;
      --  Read-only. FIFO level This bit field gives the number of valid bytes
      --  that are being held in the FIFO. FLEVEL=0 when the FIFO is empty, and
      --  64 when it is full. In automatic status-polling mode, FLEVEL is zero.
      FLEVEL         : OCTOSPI_SR_FLEVEL_Field;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_SR_Register use record
      TEF            at 0 range 0 .. 0;
      TCF            at 0 range 1 .. 1;
      FTF            at 0 range 2 .. 2;
      SMF            at 0 range 3 .. 3;
      TOF            at 0 range 4 .. 4;
      BUSY           at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FLEVEL         at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  OCTOSPI flag clear register
   type OCTOSPI_FCR_Register is record
      --  Write-only. Clear transfer error flag Writing 1 clears the TEF flag
      --  in the OCTOSPI_SR register.
      CTEF          : Boolean := False;
      --  Write-only. Clear transfer complete flag Writing 1 clears the TCF
      --  flag in the OCTOSPI_SR register.
      CTCF          : Boolean := False;
      --  unspecified
      Reserved_2_2  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Clear status match flag Writing 1 clears the SMF flag in
      --  the OCTOSPI_SR register.
      CSMF          : Boolean := False;
      --  Write-only. Clear timeout flag Writing 1 clears the TOF flag in the
      --  OCTOSPI_SR register.
      CTOF          : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_FCR_Register use record
      CTEF          at 0 range 0 .. 0;
      CTCF          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      CSMF          at 0 range 3 .. 3;
      CTOF          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype OCTOSPI_PIR_INTERVAL_Field is Interfaces.Bit_Types.UInt16;

   --  OCTOSPI polling interval register
   type OCTOSPI_PIR_Register is record
      --  Polling interval Number of CLK cycles between a read during the
      --  automatic status-polling phases
      INTERVAL       : OCTOSPI_PIR_INTERVAL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_PIR_Register use record
      INTERVAL       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OCTOSPI_CCR_IMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype OCTOSPI_CCR_ISIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype OCTOSPI_CCR_ADMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype OCTOSPI_CCR_ADSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype OCTOSPI_CCR_ABMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype OCTOSPI_CCR_ABSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype OCTOSPI_CCR_DMODE_Field is Interfaces.Bit_Types.UInt3;

   --  OCTOSPI communication configuration register
   type OCTOSPI_CCR_Register is record
      --  Instruction mode This bit field defines the instruction phase mode of
      --  operation. Others: Reserved
      IMODE          : OCTOSPI_CCR_IMODE_Field := 16#0#;
      --  Instruction double transfer rate This bit sets the DTR mode for the
      --  instruction phase.
      IDTR           : Boolean := False;
      --  Instruction size This bit field defines instruction size.
      ISIZE          : OCTOSPI_CCR_ISIZE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Address mode This bit field defines the address phase mode of
      --  operation. Others: Reserved
      ADMODE         : OCTOSPI_CCR_ADMODE_Field := 16#0#;
      --  Address double transfer rate This bit sets the DTR mode for the
      --  address phase.
      ADDTR          : Boolean := False;
      --  Address size This bit field defines the address size.
      ADSIZE         : OCTOSPI_CCR_ADSIZE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Alternate-byte mode This bit field defines the alternate-byte phase
      --  mode of operation. Others: Reserved
      ABMODE         : OCTOSPI_CCR_ABMODE_Field := 16#0#;
      --  Alternate- byte double transfer rate This bit sets the DTR mode for
      --  the alternate-byte phase.
      ABDTR          : Boolean := False;
      --  Alternate-byte size This bit field defines the alternate-byte size.
      ABSIZE         : OCTOSPI_CCR_ABSIZE_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data mode This bit field defines the data phase mode of operation.
      --  Others: Reserved
      DMODE          : OCTOSPI_CCR_DMODE_Field := 16#0#;
      --  Data double transfer rate This bit sets the DTR mode for the data
      --  phase.
      DDTR           : Boolean := False;
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit := 16#0#;
      --  DQS enable This bit enables the data strobe management.
      DQSE           : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_CCR_Register use record
      IMODE          at 0 range 0 .. 2;
      IDTR           at 0 range 3 .. 3;
      ISIZE          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADMODE         at 0 range 8 .. 10;
      ADDTR          at 0 range 11 .. 11;
      ADSIZE         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      ABMODE         at 0 range 16 .. 18;
      ABDTR          at 0 range 19 .. 19;
      ABSIZE         at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DMODE          at 0 range 24 .. 26;
      DDTR           at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      DQSE           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype OCTOSPI_TCR_DCYC_Field is Interfaces.Bit_Types.UInt5;

   --  OCTOSPI timing configuration register
   type OCTOSPI_TCR_Register is record
      --  Number of dummy cycles This bit field defines the duration of the
      --  dummy phase according to the memory latency. In both SDR and DTR
      --  modes, it specifies a number of CLK cycles (0-31).
      DCYC           : OCTOSPI_TCR_DCYC_Field := 16#0#;
      --  unspecified
      Reserved_5_27  : Interfaces.Bit_Types.UInt23 := 16#0#;
      --  Delay hold quarter cycle
      DHQC           : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Sample shift By default, the OCTOSPI samples data 1/2 of a CLK cycle
      --  after the data is driven by the external device. This bit allows the
      --  data to be sampled later in order to consider the external signal
      --  delays. The software must ensure that SSHIFT=0 when the data phase is
      --  configured in DTR mode (when DDTR=1.)
      SSHIFT         : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_TCR_Register use record
      DCYC           at 0 range 0 .. 4;
      Reserved_5_27  at 0 range 5 .. 27;
      DHQC           at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      SSHIFT         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OCTOSPI_LPTR_TIMEOUT_Field is Interfaces.Bit_Types.UInt16;

   --  OCTOSPI low-power timeout register
   type OCTOSPI_LPTR_Register is record
      --  Timeout period After each access in memory-mapped mode, the OCTOSPI
      --  prefetches the subsequent bytes and hold them in the FIFO. This bit
      --  field indicates how many CLK cycles the OCTOSPI waits after the clock
      --  becomes inactive and until it raises the NCS, putting the external
      --  device in a lower-consumption state.
      TIMEOUT        : OCTOSPI_LPTR_TIMEOUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_LPTR_Register use record
      TIMEOUT        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OCTOSPI_WPCCR_IMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype OCTOSPI_WPCCR_ISIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype OCTOSPI_WPCCR_ADMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype OCTOSPI_WPCCR_ADSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype OCTOSPI_WPCCR_ABMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype OCTOSPI_WPCCR_ABSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype OCTOSPI_WPCCR_DMODE_Field is Interfaces.Bit_Types.UInt3;

   --  OCTOSPI wrap communication configuration register
   type OCTOSPI_WPCCR_Register is record
      --  Instruction mode This bit field defines the instruction phase mode of
      --  operation. Others: Reserved
      IMODE          : OCTOSPI_WPCCR_IMODE_Field := 16#0#;
      --  Instruction double transfer rate This bit sets the DTR mode for the
      --  instruction phase.
      IDTR           : Boolean := False;
      --  Instruction size This bit field defines the instruction size.
      ISIZE          : OCTOSPI_WPCCR_ISIZE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Address mode This bit field defines the address phase mode of
      --  operation. Others: Reserved
      ADMODE         : OCTOSPI_WPCCR_ADMODE_Field := 16#0#;
      --  Address double transfer rate This bit sets the DTR mode for the
      --  address phase.
      ADDTR          : Boolean := False;
      --  Address size This bit field defines the address size.
      ADSIZE         : OCTOSPI_WPCCR_ADSIZE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Alternate-byte mode This bit field defines the alternate-byte phase
      --  mode of operation. Others: reserved
      ABMODE         : OCTOSPI_WPCCR_ABMODE_Field := 16#0#;
      --  Alternate-byte double transfer rate This bit sets the DTR mode for
      --  the alternate-byte phase.
      ABDTR          : Boolean := False;
      --  Alternate-byte size This bit field defines the alternate-byte size.
      ABSIZE         : OCTOSPI_WPCCR_ABSIZE_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data mode This bit field defines the data phase mode of operation.
      --  Others: Reserved
      DMODE          : OCTOSPI_WPCCR_DMODE_Field := 16#0#;
      --  Data double transfer rate This bit sets the DTR mode for the data
      --  phase.
      DDTR           : Boolean := False;
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit := 16#0#;
      --  DQS enable This bit enables the data strobe management.
      DQSE           : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_WPCCR_Register use record
      IMODE          at 0 range 0 .. 2;
      IDTR           at 0 range 3 .. 3;
      ISIZE          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADMODE         at 0 range 8 .. 10;
      ADDTR          at 0 range 11 .. 11;
      ADSIZE         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      ABMODE         at 0 range 16 .. 18;
      ABDTR          at 0 range 19 .. 19;
      ABSIZE         at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DMODE          at 0 range 24 .. 26;
      DDTR           at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      DQSE           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype OCTOSPI_WPTCR_DCYC_Field is Interfaces.Bit_Types.UInt5;

   --  OCTOSPI wrap timing configuration register
   type OCTOSPI_WPTCR_Register is record
      --  Number of dummy cycles This bit field defines the duration of the
      --  dummy phase according to the memory latency. In both SDR and DTR
      --  modes, it specifies a number of CLK cycles (0-31).
      DCYC           : OCTOSPI_WPTCR_DCYC_Field := 16#0#;
      --  unspecified
      Reserved_5_27  : Interfaces.Bit_Types.UInt23 := 16#0#;
      --  Delay hold quarter cycle Add a quarter cycle delay on the outputs in
      --  DTR communication to match hold requirement.
      DHQC           : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Sample shift By default, the OCTOSPI samples data 1/2 of a CLK cycle
      --  after the data is driven by the external device. This bit allows the
      --  data to be sampled later in order to consider the external signal
      --  delays. The firmware must assure that SSHIFT=0 when the data phase is
      --  configured in DTR mode (when DDTR=1).
      SSHIFT         : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_WPTCR_Register use record
      DCYC           at 0 range 0 .. 4;
      Reserved_5_27  at 0 range 5 .. 27;
      DHQC           at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      SSHIFT         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OCTOSPI_WCCR_IMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype OCTOSPI_WCCR_ISIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype OCTOSPI_WCCR_ADMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype OCTOSPI_WCCR_ADSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype OCTOSPI_WCCR_ABMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype OCTOSPI_WCCR_ABSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype OCTOSPI_WCCR_DMODE_Field is Interfaces.Bit_Types.UInt3;

   --  OCTOSPI write communication configuration register
   type OCTOSPI_WCCR_Register is record
      --  Instruction mode This bit field defines the instruction phase mode of
      --  operation. Others: Reserved
      IMODE          : OCTOSPI_WCCR_IMODE_Field := 16#0#;
      --  Instruction double transfer rate This bit sets the DTR mode for the
      --  instruction phase.
      IDTR           : Boolean := False;
      --  Instruction size This bit field defines the instruction size.
      ISIZE          : OCTOSPI_WCCR_ISIZE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Address mode This bit field defines the address phase mode of
      --  operation. Others: Reserved
      ADMODE         : OCTOSPI_WCCR_ADMODE_Field := 16#0#;
      --  Address double transfer rate This bit sets the DTR mode for the
      --  address phase.
      ADDTR          : Boolean := False;
      --  Address size This bit field defines the address size.
      ADSIZE         : OCTOSPI_WCCR_ADSIZE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Alternate-byte mode This bit field defines the alternate-byte phase
      --  mode of operation. Others: Reserved
      ABMODE         : OCTOSPI_WCCR_ABMODE_Field := 16#0#;
      --  Alternate bytes double transfer rate This bit sets the DTR mode for
      --  the alternate-bytes phase.
      ABDTR          : Boolean := False;
      --  Alternate-byte size This bit field defines the alternate-byte size.
      ABSIZE         : OCTOSPI_WCCR_ABSIZE_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Data mode This bit field defines the data phase mode of operation.
      --  Others: Reserved
      DMODE          : OCTOSPI_WCCR_DMODE_Field := 16#0#;
      --  data double transfer rate This bit sets the DTR mode for the data
      --  phase.
      DDTR           : Boolean := False;
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit := 16#0#;
      --  DQS enable This bit enables the data strobe management.
      DQSE           : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_WCCR_Register use record
      IMODE          at 0 range 0 .. 2;
      IDTR           at 0 range 3 .. 3;
      ISIZE          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADMODE         at 0 range 8 .. 10;
      ADDTR          at 0 range 11 .. 11;
      ADSIZE         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      ABMODE         at 0 range 16 .. 18;
      ABDTR          at 0 range 19 .. 19;
      ABSIZE         at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DMODE          at 0 range 24 .. 26;
      DDTR           at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      DQSE           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype OCTOSPI_WTCR_DCYC_Field is Interfaces.Bit_Types.UInt5;

   --  OCTOSPI write timing configuration register
   type OCTOSPI_WTCR_Register is record
      --  Number of dummy cycles This bit field defines the duration of the
      --  dummy phase according to the memory latency. In both SDR and DTR
      --  modes, it specifies a number of CLK cycles (0-31).
      DCYC          : OCTOSPI_WTCR_DCYC_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_WTCR_Register use record
      DCYC          at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype OCTOSPI_HLCR_TACC_Field is Interfaces.Bit_Types.Byte;
   subtype OCTOSPI_HLCR_TRWR_Field is Interfaces.Bit_Types.Byte;

   --  OCTOSPI HyperBus latency configuration register
   type OCTOSPI_HLCR_Register is record
      --  Latency mode This bit selects the latency mode.
      LM             : Boolean := False;
      --  Write zero latency This bit enables zero latency on write operations.
      WZL            : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Access time Device access time according to the memory latency,
      --  expressed in number of communication clock cycles
      TACC           : OCTOSPI_HLCR_TACC_Field := 16#0#;
      --  Read-write minimum recovery time Device read-to-write/write-to-read
      --  minimum recovery time expressed in number of communication clock
      --  cycles
      TRWR           : OCTOSPI_HLCR_TRWR_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_HLCR_Register use record
      LM             at 0 range 0 .. 0;
      WZL            at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TACC           at 0 range 8 .. 15;
      TRWR           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype OCTOSPI_HWCFGR2_FRCK_Field is Interfaces.Bit_Types.UInt4;
   subtype OCTOSPI_HWCFGR2_RDFT_Field is Interfaces.Bit_Types.UInt4;
   subtype OCTOSPI_HWCFGR2_ARBM_Field is Interfaces.Bit_Types.UInt4;
   subtype OCTOSPI_HWCFGR2_MEM16_Field is Interfaces.Bit_Types.UInt4;
   subtype OCTOSPI_HWCFGR2_HSINT_Field is Interfaces.Bit_Types.UInt4;

   --  OCTOSPI hardware configuration register 2
   type OCTOSPI_HWCFGR2_Register is record
      --  Read-only. Free running clock Others: reserved
      FRCK           : OCTOSPI_HWCFGR2_FRCK_Field;
      --  Read-only. Reduced features Others: Reserved
      RDFT           : OCTOSPI_HWCFGR2_RDFT_Field;
      --  Read-only. Arbitration configuration Others: Reserved
      ARBM           : OCTOSPI_HWCFGR2_ARBM_Field;
      --  Read-only. Size of the SPI memory supported Others: Reserved
      MEM16          : OCTOSPI_HWCFGR2_MEM16_Field;
      --  Read-only. High-speed interface Others: Reserved
      HSINT          : OCTOSPI_HWCFGR2_HSINT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_HWCFGR2_Register use record
      FRCK           at 0 range 0 .. 3;
      RDFT           at 0 range 4 .. 7;
      ARBM           at 0 range 8 .. 11;
      MEM16          at 0 range 12 .. 15;
      HSINT          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype OCTOSPI_HWCFGR_AXI_Field is Interfaces.Bit_Types.UInt4;
   subtype OCTOSPI_HWCFGR_FIFO_Field is Interfaces.Bit_Types.Byte;
   subtype OCTOSPI_HWCFGR_PRES_Field is Interfaces.Bit_Types.Byte;
   subtype OCTOSPI_HWCFGR_IDL_Field is Interfaces.Bit_Types.UInt4;
   subtype OCTOSPI_HWCFGR_MMW_Field is Interfaces.Bit_Types.UInt4;
   subtype OCTOSPI_HWCFGR_CSSRV_Field is Interfaces.Bit_Types.UInt4;

   --  OCTOSPI hardware configuration register
   type OCTOSPI_HWCFGR_Register is record
      --  Read-only. OCTOSPI interface Others: Reserved
      AXI   : OCTOSPI_HWCFGR_AXI_Field;
      --  Read-only. FIFO depth FIFO size in 32-bit words
      FIFO  : OCTOSPI_HWCFGR_FIFO_Field;
      --  Read-only. Prescaler Prescaler reset value
      PRES  : OCTOSPI_HWCFGR_PRES_Field;
      --  Read-only. ID Length AXI ID Length
      IDL   : OCTOSPI_HWCFGR_IDL_Field;
      --  Read-only. Memory-mapped write OCTOSPI memory-mapped write
      MMW   : OCTOSPI_HWCFGR_MMW_Field;
      --  Read-only. CSSEL reset value Others: Reserved
      CSSRV : OCTOSPI_HWCFGR_CSSRV_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_HWCFGR_Register use record
      AXI   at 0 range 0 .. 3;
      FIFO  at 0 range 4 .. 11;
      PRES  at 0 range 12 .. 19;
      IDL   at 0 range 20 .. 23;
      MMW   at 0 range 24 .. 27;
      CSSRV at 0 range 28 .. 31;
   end record;

   subtype OCTOSPI_VERR_VER_Field is Interfaces.Bit_Types.Byte;

   --  OCTOSPI version register
   type OCTOSPI_VERR_Register is record
      --  Read-only. OCTOSPI version
      VER           : OCTOSPI_VERR_VER_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPI_VERR_Register use record
      VER           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  OCTOSPI register block
   type OCTOSPI_Peripheral is record
      --  OCTOSPI control register
      OCTOSPI_CR      : aliased OCTOSPI_CR_Register;
      --  OCTOSPI device configuration register 1
      OCTOSPI_DCR1    : aliased OCTOSPI_DCR1_Register;
      --  OCTOSPI device configuration register 2
      OCTOSPI_DCR2    : aliased OCTOSPI_DCR2_Register;
      --  OCTOSPI device configuration register 3
      OCTOSPI_DCR3    : aliased OCTOSPI_DCR3_Register;
      --  OCTOSPI device configuration register 4
      OCTOSPI_DCR4    : aliased Interfaces.Bit_Types.UInt32;
      --  OCTOSPI status register
      OCTOSPI_SR      : aliased OCTOSPI_SR_Register;
      --  OCTOSPI flag clear register
      OCTOSPI_FCR     : aliased OCTOSPI_FCR_Register;
      --  OCTOSPI data length register
      OCTOSPI_DLR     : aliased Interfaces.Bit_Types.UInt32;
      --  OCTOSPI address register
      OCTOSPI_AR      : aliased Interfaces.Bit_Types.UInt32;
      --  OCTOSPI data register
      OCTOSPI_DR      : aliased Interfaces.Bit_Types.UInt32;
      --  OCTOSPI polling status mask register
      OCTOSPI_PSMKR   : aliased Interfaces.Bit_Types.UInt32;
      --  OCTOSPI polling status match register
      OCTOSPI_PSMAR   : aliased Interfaces.Bit_Types.UInt32;
      --  OCTOSPI polling interval register
      OCTOSPI_PIR     : aliased OCTOSPI_PIR_Register;
      --  OCTOSPI communication configuration register
      OCTOSPI_CCR     : aliased OCTOSPI_CCR_Register;
      --  OCTOSPI timing configuration register
      OCTOSPI_TCR     : aliased OCTOSPI_TCR_Register;
      --  OCTOSPI instruction register
      OCTOSPI_IR      : aliased Interfaces.Bit_Types.UInt32;
      --  OCTOSPI alternate bytes register
      OCTOSPI_ABR     : aliased Interfaces.Bit_Types.UInt32;
      --  OCTOSPI low-power timeout register
      OCTOSPI_LPTR    : aliased OCTOSPI_LPTR_Register;
      --  OCTOSPI wrap communication configuration register
      OCTOSPI_WPCCR   : aliased OCTOSPI_WPCCR_Register;
      --  OCTOSPI wrap timing configuration register
      OCTOSPI_WPTCR   : aliased OCTOSPI_WPTCR_Register;
      --  OCTOSPI wrap instruction register
      OCTOSPI_WPIR    : aliased Interfaces.Bit_Types.UInt32;
      --  OCTOSPI wrap alternate bytes register
      OCTOSPI_WPABR   : aliased Interfaces.Bit_Types.UInt32;
      --  OCTOSPI write communication configuration register
      OCTOSPI_WCCR    : aliased OCTOSPI_WCCR_Register;
      --  OCTOSPI write timing configuration register
      OCTOSPI_WTCR    : aliased OCTOSPI_WTCR_Register;
      --  OCTOSPI write instruction register
      OCTOSPI_WIR     : aliased Interfaces.Bit_Types.UInt32;
      --  OCTOSPI write alternate bytes register
      OCTOSPI_WABR    : aliased Interfaces.Bit_Types.UInt32;
      --  OCTOSPI HyperBus latency configuration register
      OCTOSPI_HLCR    : aliased OCTOSPI_HLCR_Register;
      --  OCTOSPI hardware configuration register 2
      OCTOSPI_HWCFGR2 : aliased OCTOSPI_HWCFGR2_Register;
      --  OCTOSPI hardware configuration register
      OCTOSPI_HWCFGR  : aliased OCTOSPI_HWCFGR_Register;
      --  OCTOSPI version register
      OCTOSPI_VERR    : aliased OCTOSPI_VERR_Register;
      --  OCTOSPI identification register
      OCTOSPI_IDR     : aliased Interfaces.Bit_Types.UInt32;
      --  OCTOSPI hardware magic identification register
      OCTOSPI_MIDR    : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for OCTOSPI_Peripheral use record
      OCTOSPI_CR      at 16#0# range 0 .. 31;
      OCTOSPI_DCR1    at 16#8# range 0 .. 31;
      OCTOSPI_DCR2    at 16#C# range 0 .. 31;
      OCTOSPI_DCR3    at 16#10# range 0 .. 31;
      OCTOSPI_DCR4    at 16#14# range 0 .. 31;
      OCTOSPI_SR      at 16#20# range 0 .. 31;
      OCTOSPI_FCR     at 16#24# range 0 .. 31;
      OCTOSPI_DLR     at 16#40# range 0 .. 31;
      OCTOSPI_AR      at 16#48# range 0 .. 31;
      OCTOSPI_DR      at 16#50# range 0 .. 31;
      OCTOSPI_PSMKR   at 16#80# range 0 .. 31;
      OCTOSPI_PSMAR   at 16#88# range 0 .. 31;
      OCTOSPI_PIR     at 16#90# range 0 .. 31;
      OCTOSPI_CCR     at 16#100# range 0 .. 31;
      OCTOSPI_TCR     at 16#108# range 0 .. 31;
      OCTOSPI_IR      at 16#110# range 0 .. 31;
      OCTOSPI_ABR     at 16#120# range 0 .. 31;
      OCTOSPI_LPTR    at 16#130# range 0 .. 31;
      OCTOSPI_WPCCR   at 16#140# range 0 .. 31;
      OCTOSPI_WPTCR   at 16#148# range 0 .. 31;
      OCTOSPI_WPIR    at 16#150# range 0 .. 31;
      OCTOSPI_WPABR   at 16#160# range 0 .. 31;
      OCTOSPI_WCCR    at 16#180# range 0 .. 31;
      OCTOSPI_WTCR    at 16#188# range 0 .. 31;
      OCTOSPI_WIR     at 16#190# range 0 .. 31;
      OCTOSPI_WABR    at 16#1A0# range 0 .. 31;
      OCTOSPI_HLCR    at 16#200# range 0 .. 31;
      OCTOSPI_HWCFGR2 at 16#3EC# range 0 .. 31;
      OCTOSPI_HWCFGR  at 16#3F0# range 0 .. 31;
      OCTOSPI_VERR    at 16#3F4# range 0 .. 31;
      OCTOSPI_IDR     at 16#3F8# range 0 .. 31;
      OCTOSPI_MIDR    at 16#3FC# range 0 .. 31;
   end record;

   --  OCTOSPI register block
   OCTOSPI_Periph : aliased OCTOSPI_Peripheral
     with Import, Address => OCTOSPI_Base;

   --  OCTOSPI register block
   OCTOSPI1_S_Periph : aliased OCTOSPI_Peripheral
     with Import, Address => OCTOSPI1_S_Base;

   --  OCTOSPI register block
   OCTOSPI2_Periph : aliased OCTOSPI_Peripheral
     with Import, Address => OCTOSPI2_Base;

   --  OCTOSPI register block
   OCTOSPI2_S_Periph : aliased OCTOSPI_Peripheral
     with Import, Address => OCTOSPI2_S_Base;

end Interfaces.STM32.OCTOSPI;
