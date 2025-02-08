--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

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
      --  in bytes (whatever I3C acts as controller/target) When I3C acts as
      --  controller, this field is used if MTYPE[3:0] = 0010 (private
      --  message), or MTYPE[3:0] = 0011 (direct message), or MTYPE[3:0] = 0100
      --  (legacy Isup2/supC message), to set the number of exchanged data
      --  bytes on the bus. In case of a private or legacy Isup2/supC
      --  read/write message, this field must be non-null. When I3C acts as
      --  target, this field is used if MTYPE[3:0] = 1010 (IBI request) and if
      --  any IBI data payload (data to be transmitted if BCR2 = 1 in the
      --  I3C_BCR register), to set the number of bytes of the IBI data payload
      --  (1, 2, 3, or 4). Linear encoding up to 64Kbytes - 1 ...
      DCNT           : I3C_CR_DCNT_Field := 16#0#;
      --  Write-only. Read / non-write message (when I3C acts as controller)
      --  When I3C acts as controller, this field is used if MTYPE[3:0] = 0010
      --  (private message), or MTYPE[3:0] = 0011 (direct message), or
      --  MTYPE[3:0] = 0100 (legacy Isup2/supC message), to emit the RnW bit on
      --  the I3C bus.
      RNW            : Boolean := False;
      --  Write-only. 7-bit I3C dynamic / Isup2/supC static target address
      --  (when I3C acts as controller) When I3C acts as controller, this field
      --  is used if MTYPE[3:0] = 0010 (private message), or MTYPE[3:0] = 0011
      --  (direct message), or MTYPE[3:0] = 0100 (legacy Isup2/supC message)
      ADD            : I3C_CR_ADD_Field := 16#0#;
      --  unspecified
      Reserved_24_26 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Message type (whatever I3C acts as controller/target)
      --  Bits[26:0] are ignored. On a CE1 error detection (ERRF = 1 in the
      --  I3C_EVR register and CODERR[3:0] = 0001 in the I3C_SER register)
      --  where a start/restart/stop is prevented from being generated, the
      --  software must use this message type for SCL “stuck at” recovery.
      --  Refer to Table 760. Bits[26:0] are ignored. If the addressed target
      --  is not responding with an ACK to a private/direct message, as an
      --  escalation stage after a failed GETSTATUS tentative, the software
      --  must program this with EXITPTRN = 1 in the I3C_CFGR register, so that
      --  an HDR exit pattern is emitted on the bus, whatever the header is
      --  ACK-ed or NACK-ed (to avoid the target to consider that the I3C bus
      --  is in HDR mode). Refer to Table760 and MIPI specification about
      --  escalation handling. Bits[23:17] (ADD[6:0]) are the emitted 7-bit
      --  dynamic address. Bit[16] (RNW) is the emitted RnW bit. Bits[15:0]
      --  (DCNT[15:0]) are the number of programmed data bytes. The transferred
      --  private message is: {S / S + 0b111_1110 + RnW = 0 + Sr/Sr+*} + 7-bit
      --  DynAddr + RnW + (8-bit Data + T)* + Sr/P. After an S (start),
      --  depending upon bit NOARBH in the I3C_CFGR register, the arbitrable
      --  header (0b111_1110 + RnW = 0) is inserted or not. Sr+*: after an Sr
      --  (repeated start), the hardware automatically inserts (0b111_1110 +
      --  RnW = 0) if needed, if it follows a previous message without ending
      --  by a P (stop). Bits[23:17] (ADD[6:0]) are the emitted 7-bit dynamic
      --  address. Bit[16] (RNW) is the emitted RnW bit. Bits[15:0]
      --  (DCNT[15:0]) are the number of programmed data bytes. The transferred
      --  direct message is: Sr + 7-bit DynAddr + RnW + (8-bit Data + T)* +
      --  Sr/P Bits[23:17] (ADD[6:0]) are the emitted 7-bit static address.
      --  Bit[16] (RNW) is the emitted RnW bit. Bits[15:0] (DCNT[15:0]) are the
      --  number of programmed data bytes. The transferred legacy Isup2/supC
      --  message is: {S / S + 0b111_1110 + RnW = 0 + Sr/Sr+*} + 7-bit StaAddr
      --  + RnW + (8-bit data + T)* + Sr/P. After an S, depending on NOARBH,
      --  the arbitrable header (0b111_1110 + RnW = 0) is inserted or not.
      --  Sr+*: after an Sr (repeated start), the hardware automatically
      --  inserts (0b111_1110 + RnW = 0) if needed (if it follows a previous
      --  message without ending by a P (stop)). Others: reserved The
      --  transferred hot-join request is {S +} 0b000_0010 addr + RnW = 0.
      --  Writing the control word initiates the hot-join request if target is
      --  allowed to do so (HJEN = 1 in the I3C_DEVR0 register), either
      --  actively after a bus idle condition via the hardware issuing a start
      --  request (SDA low) and waiting for the controller to activate SCL
      --  clock, or passively if the controller initiates a concurrent message.
      --  The transferred controller-role request is {S +} DA[6:0] + RnW = 0
      --  (DA in the I3C_DEVR0 register) Writing the control word initiates the
      --  controller-role request if target is allowed to do so (CREN = 1 and
      --  DAVAL = 1 in the I3C_DEVR0 register), either actively after a bus
      --  idle condition via the hardware issuing a start request (SDA low) and
      --  waiting for the controller to activate SCL clock, or passively if the
      --  controller initiates a concurrent message. Bits[15:0] (DCNT[15:0])
      --  are the number of the IBI data payload (including the first MDB), if
      --  any. The transferred IBI request is {S +} DA[6:0] + RnW = 1 +
      --  optional IBI data payload. Writing the control word initiates the IBI
      --  request if target is allowed to do so (IBIEN = 1 and DAVAL = 1 in the
      --  I3C_DEVR0.register), either actively after a bus idle condition via
      --  the hardware issuing a start request (SDA low) and waiting for the
      --  controller to activate SCL clock, or passively if the controller
      --  initiates a concurrent message. When acknowledged from controller,
      --  the transmitted IBI payload data (optional, depending upon BCR2 in
      --  the I3C_BCR register) is defined by DCNT[15:0] in the I3C_CR register
      --  and I3C_IBIDR, and must be consistently programmed vs. the IBI
      --  payload data size defined by IBIP[2:0] in the I3C_IBIDR register.
      --  Others: reserved
      MTYPE          : I3C_CR_MTYPE_Field := 16#0#;
      --  Write-only. Message end type/last message of a frame (when the I3C
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

   subtype I3C_CR_ALTERNATE1_DCNT_Field is Interfaces.Bit_Types.UInt16;
   subtype I3C_CR_ALTERNATE1_CCC_Field is Interfaces.Bit_Types.Byte;
   subtype I3C_CR_ALTERNATE1_MTYPE_Field is Interfaces.Bit_Types.UInt4;

   --  I3C message control register
   type I3C_CR_ALTERNATE1_Register is record
      --  Write-only. Count of related data to the CCC command to transfer as
      --  CCC defining bytes, or CCC sub-command bytes, or CCC data bytes, in
      --  bytes Linear encoding up to 64Kbytes - 1. Note: Value mandatory when
      --  emitting ENTDAA broadcast CCC (refer to Figure900). Note: Value
      --  mandatory when emitting RSTACT direct/broadcast CCC (refer to
      --  Figure901). ...
      DCNT           : I3C_CR_ALTERNATE1_DCNT_Field := 16#0#;
      --  Write-only. 8-bit CCC code (when I3C acts as controller) If bit[23] =
      --  CCC[7] = 1, this is the first part of an I3C SDR direct CCC command.
      --  If bit[23] = CCC[7] = 0, this is an I3C SDR broadcast CCC command
      --  (including ENTDAA).
      CCC            : I3C_CR_ALTERNATE1_CCC_Field := 16#0#;
      --  unspecified
      Reserved_24_26 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Message type (when I3C acts as controller) Bits[23:16]
      --  (CCC[7:0]) are the emitted 8-bit CCC code Bits[15:0] (DCNT[15:0]) are
      --  the number of the CCC defining bytes, or CCC sub-command bytes, or
      --  CCC data bytes. If Bit[23] = CCC[7] = 1: this is the first part of an
      --  I3C SDR direct CCC command The transferred direct CCC command (first
      --  part) message is: {S / S + 0b111_1110 +RnW = 0 / Sr+*} + (direct CCC
      --  + T) + (8-bit Data + T)* + Sr After an S (start), depending upon
      --  NOARBH in the I3C_CFGR register, the arbitrable header
      --  (0b111_1110+RnW = 0) is inserted or not. Sr+*: after an Sr (repeated
      --  start), the hardware automatically inserts (0b111_1110 + R/W). If
      --  Bit[23] = CCC[7] = 0: this is an I3C SDR broadcast CCC command
      --  (including specific ENTDAA, refer to Figure900) The transferred
      --  broadcast CCC command message is: {S / S + 0b111_1110 + RnW = 0 /
      --  Sr+*} + (broadcast CCC + T) + (8-bit Data + T)* + Sr/P After an S
      --  (start), depending on NOARBH, the arbitrable header
      --  (0b111_1110+RnW=0) is inserted or not. Sr+*: after an Sr (repeated
      --  start), the hardware automatically inserts (0b111_1110 + R/W).
      --  Others: reserved
      MTYPE          : I3C_CR_ALTERNATE1_MTYPE_Field := 16#0#;
      --  Write-only. Message end type/last message of a frame (when I3C acts
      --  as controller)
      MEND           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_CR_ALTERNATE1_Register use record
      DCNT           at 0 range 0 .. 15;
      CCC            at 0 range 16 .. 23;
      Reserved_24_26 at 0 range 24 .. 26;
      MTYPE          at 0 range 27 .. 30;
      MEND           at 0 range 31 .. 31;
   end record;

   --  I3C configuration register
   type I3C_CFGR_Register is record
      --  I3C enable (whatever I3C acts as controller/target) - Except
      --  registers, the peripheral is under reset (partial reset). - Before
      --  clearing EN, when I3C acts as a controller, all the possible target
      --  requests must be disabled using DISEC CCC. - When I3C acts as a
      --  target, software must not disable the I3C, unless a partial reset is
      --  needed. In this state, some register fields cannot be modified (like
      --  CRINIT, HKSDAEN for the I3C_CFGR)
      EN             : Boolean := False;
      --  Initial controller/target role This bit can be modified only when
      --  EN=0 in the I3C_CFGR register. Once enabled by setting EN=1, the
      --  peripheral initially acts as a target. I3C does not drive SCL line
      --  and does not enable SDA pull-up, until it eventually acquires the
      --  controller role. Once enabled by setting EN=1, the peripheral
      --  initially acts as a controller. It has the I3C controller role, so
      --  drives SCL line and enables SDA pull-up, until it eventually offers
      --  the controller role to an I3C secondary controller.
      CRINIT         : Boolean := False;
      --  No arbitrable header after a start (when I3C acts as a controller)
      --  This bit can be modified only when there is no on-going frame. - The
      --  target address is emitted directly after a start in case of a legacy
      --  Isup2/supC message or an I3C SDR private read/write message. - This
      --  is a more performing option (when the emission of the 0x7E arbitrable
      --  header is useless), but must be used only when the controller is sure
      --  that the addressed target device cannot emit concurrently an IBI or a
      --  controller-role request (to insure no misinterpretation and no
      --  potential conflict between the address emitted by the controller in
      --  open-drain mode and the same address a target device can emit after a
      --  start, for IBI or MR).
      NOARBH         : Boolean := False;
      --  HDR reset pattern enable (when I3C acts as a controller) This bit can
      --  be modified only when there is no on-going frame.
      RSTPTRN        : Boolean := False;
      --  HDR exit pattern enable (when I3C acts as a controller) This bit can
      --  be modified only when there is no on-going frame. The HDR exit
      --  pattern is sent whatever the message header {S/Sr + 0x7E addr + W} is
      --  ACK-ed or NACK-ed..
      EXITPTRN       : Boolean := False;
      --  High-keeper enable on SDA line (when I3C acts as a controller) Note:
      --  This bit can be modified only when EN = 0 in the I3C_CFGR register.
      HKSDAEN        : Boolean := False;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Hot-join request acknowledge (when I3C acts as a controller) After
      --  the NACK, the controller continues as initially programmed (the
      --  hot-joining target is aware of the NACK and must emit another
      --  hot-join request later on). After the ACK, the controller continues
      --  as initially programmed. The software is notified by the HJ interrupt
      --  (flag HJF is set in the I3C_EVR register), and must initiate the
      --  ENTDAA sequence later on, potentially preventing other hot-join
      --  requests with a disable target events command (DISEC, with DISHJ =
      --  1).
      HJACK          : Boolean := False;
      --  RX-FIFO DMA request enable (whatever I3C acts as controller/target) -
      --  Software reads and pops a data byte/word from RX-FIFO (it reads
      --  I3C_RDR or I3C_RDWR register). - A next data byte/word must be read
      --  by the software either via polling flag RXFNEF = 1 in the I3C_EVR
      --  register, or via interrupt notification (enabled by RXFNEIE = 1 in
      --  the I3C_IER register). - DMA reads and pops data byte(s)/word(s) from
      --  RX-FIFO (reads I3C_RDR or I3C_RDWR register). - A next data byte/word
      --  is automatically read by the programmed hardware (via the asserted
      --  RX-FIFO DMA request from the I3C and the programmed DMA channel).
      RXDMAEN        : Boolean := False;
      --  Write-only. RX-FIFO flush (whatever I3C acts as controller/target)
      --  This bit can only be written.
      RXFLUSH        : Boolean := False;
      --  RX-FIFO threshold (whatever I3C acts as controller/target) This
      --  threshold defines, compared to the RX-FIFO level, when the RXFNEF
      --  flag in the I3C_EVR register is set (and consequently if RXDMAEN = 1
      --  when is asserted a DMA RX request). RXFNEF is set when 1 byte must be
      --  read in RX-FIFO (in the I3C_RDR register). RXFNEF is set when 1 word
      --  / 4 bytes is/are to be read in RX-FIFO (in I3C_RDWR). In the case of
      --  a number of last received data being not a multiple of 4 bytes, only
      --  the relevant 1, 2 or 3 valid LSB bytes of the last word are to be
      --  considered by the software. The number of effective received data
      --  bytes is reported by XDCNT[15:0] in the I3C_SR register.
      RXTHRES        : Boolean := False;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  TX-FIFO DMA request enable (whatever I3C acts as controller/target) -
      --  Software writes and pushes a data byte/word into TX-FIFO (writes
      --  I3C_TDR or I3C_TDWR register), to be transmitted over the I3C bus. -
      --  A next data byte/word must be written by the software either via
      --  polling on the flag TXFNFF = 1 or via interrupt notification (enabled
      --  by TXFNFIE = 1). - DMA writes and pushes data byte(s)/word(s) into
      --  TX-FIFO (writes I3C_TDR or I3C_TDWR register). - A next data
      --  byte/word transfer is automatically pushed by the programmed hardware
      --  (via the asserted TX-FIFO DMA request from the I3C and the programmed
      --  DMA channel).
      TXDMAEN        : Boolean := False;
      --  Write-only. TX-FIFO flush (whatever I3C acts as controller/target)
      --  This bit can only be written. When the I3C acts as target, this bit
      --  can be used to flush the TX-FIFO on a private read if the controller
      --  has aborted the data read (driven low the T bit), and there is/are
      --  remaining data in the TX-FIFO (ABT = 1, and XDCNT[15:0] in the I3C_SR
      --  register TGTTDCNT[15:0] in the I3C_TGTTDR register).
      TXFLUSH        : Boolean := False;
      --  TX-FIFO threshold (whatever I3C acts as controller/target) This
      --  threshold defines, compared to the TX-FIFO level, when the TXFNFF
      --  flag is set in the I3C_EVR register (and consequently if TXDMAEN = 1
      --  when is asserted a DMA TX request). TXFNFF is set when 1 byte must be
      --  written in TX-FIFO (in I3C_TDR). TXFNFF is set when 1 word / 4 bytes
      --  must be written in TX-FIFO (in the I3C_TDWR register). If the a
      --  number of the last transmitted data is not a multiple of 4 bytes
      --  (XDCNT[1:0] = 00 in the I3C_SR register), only the relevant 1, 2, or
      --  3 valid LSB bytes of the last word are taken into account by the
      --  hardware, and sent on the I3C bus.
      TXTHRES        : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  S-FIFO DMA request enable (when I3C acts as controller) This bit must
      --  be cleared if SMODE = 0 in the I3C_CFGR register (S-FIFO is
      --  disabled). In other words, DMA mode cannot be used if S-FIFO is
      --  disabled. Then the status register I3C_SR can be read or not. This
      --  bit can be set or cleared if SMODE = 1 (S-FIFO is enabled). In other
      --  words, status register I3C_SR must be read for each message, either
      --  by software, or via an allocated DMA channel. - SMODE = 0: software
      --  can read the I3C_SR register after a completed frame (FCF = 1 in the
      --  I3C_EVR register) or an error (ERRF = 1 in the I3C_EVR register). Via
      --  polling on these register flags or via interrupt notification
      --  (enabled by FCIE = 1 and ERRIE=1 in the I3C_IER register). - SMODE =
      --  1: software must read and pop a status word from S-FIFO (read I3C_SR
      --  register) after each asserted flag SFNEF = 1. Via polling on this
      --  register flag or via interrupt notification (enabled by SFNEIE = 1 in
      --  the I3C_IER register). - Must have SMODE = 1 in the I3C_CFGR register
      --  (S-FIFO enabled) - DMA reads and pops status word(s) from S-FIFO (it
      --  reads I3C_SR register) - Status word(s) are automatically read by the
      --  programmed hardware (via the asserted S-FIFO DMA request from the I3C
      --  and the programmed DMA channel).
      SDMAEN         : Boolean := False;
      --  Write-only. S-FIFO flush (when I3C acts as controller) This bit can
      --  be written and used only when I3C acts as controller.
      SFLUSH         : Boolean := False;
      --  S-FIFO enable / status receive mode (when I3C acts as controller)
      --  When I3C acts as controller, this bit is used to enable the FIFO for
      --  the status (S-FIFO) of the exchanged message on the I3C bus. When I3C
      --  acts as target, this bit must be cleared. - Status register (I3C_SR)
      --  is used without FIFO mechanism. - There is no SCL stalling if a new
      --  status register content is not read. - Status register must be read
      --  before being overwritten by the hardware. - Must have SDMAEN = 0 in
      --  the I3C_CFGR register. - Each message status must be read. - There is
      --  SCL stalling when the S-FIFO is full and a next message status must
      --  be read. - S-FIFO overrun error is reported after the maximum SCL
      --  clock stalling time.
      SMODE          : Boolean := False;
      --  Transmit mode (when I3C acts as controller) When I3C acts as
      --  controller, this bit is used for the C-FIFO and TX-FIFO management
      --  vs. the emitted frame on the I3C bus. A frame transfer starts as soon
      --  as the first control word is present in C-FIFO.
      TMODE          : Boolean := False;
      --  C-FIFO DMA request enable (when I3C acts as controller) When I3C acts
      --  as controller: - Software writes and pushes control word(s) into
      --  C-FIFO (writes I3C_CR register), as needed for a given frame - A next
      --  control word transfer can be written by software either via polling
      --  on the flag CFNFF = 1 in the I3C_EVR register, or via interrupt
      --  notification (enabled by CFNFIE = 1 in the I3C_IER register). - DMA
      --  writes and pushes control word(s) into C-FIFO (writes I3C_CR
      --  register), as needed for a given frame. - A next control word
      --  transfer is automatically written by the programmed hardware (via the
      --  asserted C-FIFO DMA request from the I3C and the programmed DMA
      --  channel).
      CDMAEN         : Boolean := False;
      --  Write-only. C-FIFO flush (when I3C acts as controller) This bit can
      --  only be written.
      CFLUSH         : Boolean := False;
      --  unspecified
      Reserved_22_29 : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Frame transfer set (software trigger) (when I3C acts as
      --  controller) This bit can only be written. When I3C acts as I3C
      --  controller: Note: If this bit is not set, the other alternative for
      --  the software to initiate a frame transfer is to directly write the
      --  first control word register (I3C_CR) while C-FIFO is empty (CFEF = 1
      --  in the I3C_EVR register). Then, if the first written control word is
      --  not tagged as a message end (MEND = 0 in the I3C_CR register), it
      --  causes the hardware to assert CFNFF.
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
      --  This bit field must be written by software in the same access when is
      --  asserted PRELOAD, in order to define the number of bytes to preload
      --  and to transmit. This bit field is updated by hardware and reports,
      --  when read, the remaining number of bytes to be loaded into the
      --  TX-FIFO.
      TGTTDCNT       : I3C_TGTTDR_TGTTDCNT_Field := 16#0#;
      --  Preload of the TX-FIFO (when I3C is configured as target) This bit
      --  must be written and asserted by software in the same access when is
      --  written and defined the number of bytes to preload into the TX-FIFO
      --  and to transmit. This bit is cleared by hardware when all the data
      --  bytes to transmit are loaded into the TX-FIFO.
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
      --  Read-only. Data counter - When the I3C acts as controller: number of
      --  targets detected on the bus - When the I3C acts as target: number of
      --  transmitted bytes - Whatever the I3C acts as controller or target:
      --  number of data bytes read from or transmitted on the I3C bus during
      --  the message
      XDCNT          : I3C_SR_XDCNT_Field;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit;
      --  Read-only. A private read message is ended prematurely by the target
      --  (when the I3C acts as controller) When the I3C acts as controller,
      --  this bit indicates if the private read data transmitted by the target
      --  early terminates (the target drives T bit low earlier vs. what the
      --  controller expects in terms of programmed number of read data bytes
      --  DCNT[15:0] in the I3C_CR register).
      ABT            : Boolean;
      --  Read-only. Message direction Whatever the I3C acts as controller or
      --  target, this bit indicates the direction of the related message on
      --  the I3C bus Note: ENTDAA CCC is considered as a write command.
      DIR            : Boolean;
      --  unspecified
      Reserved_19_23 : Interfaces.Bit_Types.UInt5;
      --  Read-only. Message identifier/counter of a given frame (when the I3C
      --  acts as controller) When I3C acts as controller, this fbitield
      --  identifies the control word message (I3C_CR) to whom the I3C_SR
      --  status register refers. First message of a frame is identified with
      --  MID[7:0] = 0. This bit field is incremented (by hardware) on the
      --  completion of a new message control word (I3C_CR) over I3C bus. This
      --  field is reset for every new frame start.
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
      --  Read-only. Protocol error code/type controller detected an illegally
      --  formatted CCC controller detected that transmitted data on the bus is
      --  different from expected controller detected a not acknowledged
      --  broadcast address (0b111_1110) controller detected the new controller
      --  did not drive bus after controller-role hand-off target detected an
      --  invalid broadcast address 0b111_1110 + W target detected a parity
      --  error on a CCC code via a parity check (vs. T bit) target detected a
      --  parity error on a write data via a parity check (vs. T bit) target
      --  detected a parity error on the assigned address during dynamic
      --  address arbitration via a parity check (vs. PAR bit) target detected
      --  a 0b111_1110 + R missing after Sr during dynamic address arbitration
      --  target detected an illegally formatted CCC target detected that
      --  transmitted data on the bus is different from expected others:
      --  reserved
      CODERR         : I3C_SER_CODERR_Field;
      --  Read-only. Protocol error
      PERR           : Boolean;
      --  Read-only. SCL stall error (when the I3C acts as target)
      STALL          : Boolean;
      --  Read-only. RX-FIFO overrun or TX-FIFO underrun i) a TX-FIFO underrun:
      --  TX-FIFO is empty and a write data byte must be transmitted ii) a
      --  RX-FIFO overrun: RX-FIFO is full and a new data byte is received
      DOVR           : Boolean;
      --  Read-only. C-FIFO underrun or S-FIFO overrun (when the I3C acts as
      --  controller) i) a C-FIFO underrun: control FIFO is empty and a restart
      --  must be emitted ii) an S-FIFO overrun: S-FIFO is full and a new
      --  message ends
      COVR           : Boolean;
      --  Read-only. Address not acknowledged (when the I3C is configured as
      --  controller) i) a legacy I2C read/write transfer ii) a direct CCC
      --  write transfer iii) the second trial of a direct CCC read transfer
      --  iv) a private read/write transfer
      ANACK          : Boolean;
      --  Read-only. Data not acknowledged (when the I3C acts as controller) i)
      --  a legacy I2C write transfer ii) the second trial when sending dynamic
      --  address during ENTDAA procedure
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
      --  configured as controller) When the I3C is configured as controller,
      --  this field logs the number of data bytes effectively received in the
      --  I3C_IBIDR register.
      IBIRDCNT       : I3C_RMR_IBIRDCNT_Field;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5;
      --  Read-only. Received CCC code (when the I3C is configured as target)
      --  When the I3C is configured as target, this field logs the received
      --  CCC code.
      RCODE          : I3C_RMR_RCODE_Field;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit;
      --  Read-only. Received target address (when the I3C is configured as
      --  controller) When the I3C is configured as controller, this field logs
      --  the received dynamic address from the target during acknowledged IBI
      --  or controller-role request.
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
      --  This flag is asserted by hardware to indicate that the C-FIFO is
      --  empty when controller, and that the I3C_CR register contains no
      --  control word (none IBI/CR/HJ request) when target. This flag is
      --  de-asserted by hardware to indicate that the C-FIFO is not empty when
      --  controller, and that the I3C_CR register contains one control word (a
      --  pending IBI/CR/HJ request) when target. Note: When the I3C acts as
      --  controller, if the C-FIFO and TX-FIFO preload is configured (TMODE =
      --  1 in the I3C_CFGR register), the software must wait for TXFEF = 1 and
      --  CFEF = 1 before starting a new frame transfer.
      CFEF           : Boolean;
      --  Read-only. TX-FIFO empty flag (whatever the I3C acts as
      --  controller/target) This flag is asserted by hardware to indicate that
      --  the TX-FIFO is empty. This flag is de-asserted by hardware to
      --  indicate that the TX-FIFO is not empty.
      TXFEF          : Boolean;
      --  Read-only. C-FIFO not full flag (when the I3C acts as controller)
      --  When the I3C acts as controller, this flag is asserted by hardware to
      --  indicate that a control word must be written to the C-FIFO. The flag
      --  is de-asserted by hardware to indicate that a control word is not to
      --  be written to the C-FIFO. Note: The software must wait for CFNFF = 1
      --  (by polling or via the enabled interrupt) before writing to C-FIFO
      --  (writing to I3C_CR).
      CFNFF          : Boolean;
      --  Read-only. S-FIFO not empty flag (when the I3C acts as controller)
      --  When the I3C acts as controller, if the S-FIFO is enabled (SMODE = 1
      --  in the I3C_CFGR register), this flag is asserted by hardware to
      --  indicate that a status word must be read from the S-FIFO. The flag is
      --  de-asserted by hardware to indicate that a status word is not to be
      --  read from the S-FIFO.
      SFNEF          : Boolean;
      --  Read-only. TX-FIFO not full flag (whatever the I3C acts as
      --  controller/target) This flag is asserted/de-asserted by hardware to
      --  indicate that a data byte/word must/must not be written to the
      --  TX-FIFO. Note: The software must wait for TXFNFF = 1 (by polling or
      --  via the enabled interrupt) before writing to TX-FIFO (writing to
      --  I3C_TDR or I3C_TDWR, depending upon TXTHRES). Note: When the I3C acts
      --  as target, if the software intends to use the TXFNFF flag for writing
      --  into I3C_TDR/I3C_TDWR, it must have configured and set the TX-FIFO
      --  preload (write PRELOAD in the I3C_TGTTDR register).
      TXFNFF         : Boolean;
      --  Read-only. RX-FIFO not empty flag (whatever the I3C acts as
      --  controller/target) This flag is asserted/de-asserted by hardware to
      --  indicate that a data byte must/must not be read from the RX-FIFO.
      --  Note: The software must wait for RXFNEF = 1 (by polling or via the
      --  enabled interrupt) before reading from RX-FIFO (reading from I3C_RDR
      --  or I3C_RDWR, depending upon RXTHRES).
      RXFNEF         : Boolean;
      --  Read-only. Last written data byte/word flag (whatever the I3C acts as
      --  controller/target) This flag is asserted by hardware to indicate that
      --  the last data byte/word (depending upon TXTHRES in the I3C_CFGR
      --  register) of a message must be written to the TX-FIFO. The flag is
      --  de-asserted by hardware when the last data byte/word of a message is
      --  written.
      TXLASTF        : Boolean;
      --  Read-only. Last read data byte/word flag (when the I3C acts as
      --  controller) When the I3C acts as controller, this flag is asserted by
      --  hardware to indicate that the last data byte/word (depending upon
      --  RXTHRES in the I3C_CFGR register) of a message must be read from the
      --  RX-FIFO. The flag is de-asserted by hardware when the last data
      --  byte/word of a message is read.
      RXLASTF        : Boolean;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit;
      --  Read-only. Frame complete flag (whatever the I3C acts as
      --  controller/target) When the I3C acts as controller, this flag is
      --  asserted by hardware to indicate that a frame has been (normally)
      --  completed on the I3C bus, for example, when a stop is issued. When
      --  the I3C acts as target, this flag is asserted by hardware to indicate
      --  that a message addressed to/by this target has been (normally)
      --  completed on the I3C bus, for example, when a next stop or repeated
      --  start is then issued by the controller. The flag is cleared when
      --  software writes 1 into the corresponding CFCF bit in the I3C_CEVR
      --  register.
      FCF            : Boolean;
      --  Read-only. Target-initiated read end flag (when the I3C acts as
      --  controller) When the I3C acts as controller, and only if the S-FIFO
      --  is disabled (SMODE = 0 in the I3C_CFGR register), this flag is
      --  asserted by hardware to indicate that the target has prematurely
      --  ended a read transfer. Then, software must read the status register
      --  I3C_SR to check information related to the last message and get the
      --  number of received data bytes on the prematurely read transfer (XDCNT
      --  in the I3C_SR register). The flag is cleared when software writes 1
      --  into the corresponding CRXTGTENDF bit in the I3C_CEVR register.
      RXTGTENDF      : Boolean;
      --  Read-only. Flag (whatever the I3C acts as controller/target) This
      --  flag is asserted by hardware to indicate that an error occurred.Then,
      --  software must read I3C_SER to get the error type. The flag is cleared
      --  when software writes 1 into the corresponding CERRF bit in the
      --  I3C_CEVR register.
      ERRF           : Boolean;
      --  unspecified
      Reserved_12_14 : Interfaces.Bit_Types.UInt3;
      --  Read-only. IBI flag (when the I3C acts as controller) When the I3C
      --  acts as controller, this flag is asserted by hardware to indicate
      --  that an IBI request has been received. The flag is cleared when
      --  software writes 1 into the corresponding CIBIF bit in the I3C_CEVR
      --  register.
      IBIF           : Boolean;
      --  Read-only. IBI end flag (when the I3C acts as target) When the I3C
      --  acts as target, this flag is asserted by hardware to indicate that an
      --  IBI transfer has been received and completed (IBI acknowledged and
      --  IBI data bytes read by controller if any). The flag is cleared when
      --  software writes 1 into the corresponding CIBIENDF bit in the I3C_CEVR
      --  register.
      IBIENDF        : Boolean;
      --  Read-only. Controller-role request flag (when the I3C acts as
      --  controller) When the I3C acts as controller, this flag is asserted by
      --  hardware to indicate that a controller-role request has been
      --  acknowledged and completed (by hardware). The software must then
      --  issue a GETACCCR CCC (get accept controller role) for the
      --  controller-role hand-off procedure. The flag is cleared when software
      --  writes 1 into the corresponding CCRF bit in the I3C_CEVR register.
      CRF            : Boolean;
      --  Read-only. Controller-role update flag (when the I3C acts as target)
      --  When the I3C acts as target, this flag is asserted by hardware to
      --  indicate that it has now gained the controller role after the
      --  completed controller-role hand-off procedure. The flag is cleared
      --  when software writes 1 into the corresponding CCRUPDF bit in the
      --  I3C_CEVR register.
      CRUPDF         : Boolean;
      --  Read-only. Hot-join flag (when the I3C acts as controller) When the
      --  I3C acts as controller, this flag is asserted by hardware to indicate
      --  that an hot join request has been received. The flag is cleared when
      --  software writes 1 into the corresponding CHJF bit in the I3C_CEVR
      --  register.
      HJF            : Boolean;
      --  unspecified
      Reserved_20_20 : Interfaces.Bit_Types.Bit;
      --  Read-only. Wake-up/missed start flag (when the I3C acts as target)
      --  When the I3C acts as target, this flag is asserted by hardware to
      --  indicate that a start has been detected (an SDA falling edge followed
      --  by an SCL falling edge) but on the next SCL falling edge, the I3C
      --  kernel clock is (still) gated. Thus an I3C bus transaction may have
      --  been lost by the target. The corresponding interrupt can be used to
      --  wake up the device from a low power (Sleep or Stop) mode. The flag is
      --  cleared when software writes 1 into the corresponding CWKPF bit in
      --  the I3C_CEVR register.
      WKPF           : Boolean;
      --  Read-only. Get flag (when the I3C acts as target) When the I3C acts
      --  as target, this flag is asserted by hardware to indicate that any
      --  direct CCC of get type (GET*** CCC) except the GETSTATUS of format 1
      --  (but including GETSTATUS of format 2) has been received. The flag is
      --  cleared when software writes 1 into the corresponding CGETF bit in
      --  the I3C_CEVR register.
      GETF           : Boolean;
      --  Read-only. Get status flag (when the I3C acts as target) When the I3C
      --  acts as target, this flag is asserted by hardware to indicate that a
      --  direct GETSTATUS CCC of format 1 (without defining byte or with
      --  defining byte TGTSTAT) has been received. The flag is cleared when
      --  software writes 1 into the corresponding CSTAF bit in the I3C_CEVR
      --  register.
      STAF           : Boolean;
      --  Read-only. Dynamic address update flag (when the I3C acts as target)
      --  When the I3C acts as target, this flag is asserted by hardware to
      --  indicate that a dynamic address update has been received via any of
      --  the broadcast ENTDAA, RSTDAA and direct SETNEWDA CCC. Then, software
      --  must read DA[6:0] and DAVAL in the I3C_DEVR0 register to get the
      --  dynamic address update. The flag is cleared when software writes 1
      --  into the corresponding CDAUPDF bit in the I3C_CEVR register.
      DAUPDF         : Boolean;
      --  Read-only. Maximum write length update flag (when the I3C acts as
      --  target) When the I3C acts as target, this flag is asserted by
      --  hardware to indicate that a direct SETMWL CCC (set max write length)
      --  has been received. Then, software must read MWL[15:0] in the
      --  I3C_MAXRLR register to get the maximum write length value. The flag
      --  is cleared when software writes 1 into the corresponding CMWLUPDF bit
      --  in the I3C_CEVR register.
      MWLUPDF        : Boolean;
      --  Read-only. Maximum read length update flag (when the I3C acts as
      --  target) When the I3C acts as target, this flag is asserted by
      --  hardware to indicate that a direct SETMRL CCC (set max read length)
      --  has been received. Then, software must read MRL[15:0] in the
      --  I3C_MAXRLR register to get the maximum read length value. The flag is
      --  cleared when software writes 1 into the corresponding CMRLUPDF bit in
      --  the I3C_CEVR register.
      MRLUPDF        : Boolean;
      --  Read-only. Reset pattern flag (when the I3C acts as target) When I3C
      --  acts as target, this flag is asserted by hardware to indicate that a
      --  reset pattern has been detected (14 SDA transitions while SCL is low,
      --  followed by repeated start, then stop). Then, when not in Stop mode,
      --  software must read RSTACT[1:0] and RSTVAL in the I3C_DEVR0 register,
      --  to know the required reset level. If RSTVAL = 1: when the RSTF is
      --  asserted (and/or the corresponding interrupt if enabled), RSTACT[1:0]
      --  in the I3C_DEVR0 register dictates the reset action to be performed
      --  by the software, if any. If RSTVAL = 0: when the RSTF is asserted
      --  (and/or the corresponding interrupt if enabled), the software must
      --  issue an I3C reset after a first detected reset pattern, and a system
      --  reset on the second one. When in Stop mode, the corresponding
      --  interrupt can be used to wake up the device. The flag is cleared when
      --  software writes 1 into the corresponding CRSTF bit in the I3C_CEVR
      --  register.
      RSTF           : Boolean;
      --  Read-only. Activity state update flag (when the I3C acts as target)
      --  When the I3C acts as target, this flag is asserted by hardware to
      --  indicate that the direct or broadcast ENTASx CCC (with x = 0...3) has
      --  been received. Then, software must read AS[1:0] in the I3C_DEVR0
      --  register. The flag is cleared when software writes 1 into the
      --  corresponding CASUPDF bit in the I3C_CEVR register.
      ASUPDF         : Boolean;
      --  Read-only. Interrupt/controller-role/hot-join update flag (when the
      --  I3C acts as target) When the I3C acts as target, this flag is
      --  asserted by hardware to indicate that the direct or broadcast
      --  ENEC/DISEC CCC (enable/disable target events) has been received,
      --  where a target event is either an interrupt/IBI request, a
      --  controller-role request, or an hot-join request. Then, software must
      --  read respectively IBIEN, CREN, or HJEN in the I3C_DEVR0 register. The
      --  flag is cleared when software writes 1 into the corresponding
      --  CINTUPDF bit in the I3C_CEVR register.
      INTUPDF        : Boolean;
      --  Read-only. DEFTGTS flag (when the I3C acts as target) When the I3C
      --  acts as target (and is typically controller capable), this flag is
      --  asserted by hardware to indicate that the broadcast DEFTGTS CCC
      --  (define list of targets) has been received. Then, software can store
      --  the received data for when getting the controller role. The flag is
      --  cleared when software writes 1 into the corresponding CDEFF bit in
      --  the I3C_CEVR register.
      DEFF           : Boolean;
      --  Read-only. Group addressing flag (when the I3C acts as target) When
      --  the I3C acts as target (and is typically controller-capable), this
      --  flag is asserted by hardware to indicate that the broadcast DEFGRPA
      --  CCC (define list of group addresses) has been received. Then,
      --  software can store the received data for when getting controller
      --  role. The flag is cleared when software writes 1 into the
      --  corresponding CGRPF bit in the I3C_CR register.
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
      --  Read-only. C-FIFO not full interrupt enable when the I3C acts as
      --  controller
      CFNFIE         : Boolean;
      --  Read-only. S-FIFO not empty interrupt enable when the I3C acts as
      --  controller
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
      --  Dynamic address is valid (when the I3C acts as target) When the I3C
      --  acts as controller, this bit can be written by software, for
      --  validating its own dynamic address, for example before a
      --  controller-role hand-off. When the I3C acts as target, this bit is
      --  asserted by hardware on the acknowledge of the broadcast ENTDAA CCC
      --  or the direct SETNEWDA CCC, and this field is cleared by hardware on
      --  the acknowledge of the broadcast RSTDAA CCC.
      DAVAL          : Boolean := False;
      --  7-bit dynamic address When the I3C acts as controller, this field can
      --  be written by software, for defining its own dynamic address. When
      --  the I3C acts as target, this field is updated by hardware on the
      --  reception of either the broadcast ENTDAA CCC or the direct SETNEWDA
      --  CCC.
      DA             : I3C_DEVR0_DA_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  IBI request enable (when the I3C acts as target) This bit is
      --  initially written by software when EN = 0, and is updated by hardware
      --  on the reception of DISEC CCC with DISINT = 1 (cleared) and the
      --  reception of ENEC CCC with ENINT = 1 (set). This bit can only be
      --  written by software when EN = 0 in the I3C_CFGR register.
      IBIEN          : Boolean := False;
      --  Controller-role request enable (when the I3C acts as target) This bit
      --  is initially written by software when EN = 0, and is updated by
      --  hardware on the reception of DISEC CCC with DISCR = 1 (cleared) and
      --  the reception of ENEC CCC with ENCR=1 (set). This bit can only be
      --  written by software when EN = 0 in the I3C_CFGR register.
      CREN           : Boolean := False;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Hot-join request enable (when the I3C acts as target) This bit is
      --  initially written by software when EN = 0, and is updated by hardware
      --  on the reception of DISEC CCC with DISHJ= 1 (cleared) and the
      --  reception of ENEC CCC with ENHJ= 1 (set). This bit can only be
      --  written by software when EN = 0 in the I3C_CFGR register.
      HJEN           : Boolean := False;
      --  Read-only. Activity state (when the I3C acts as target) This read
      --  field is updated by hardware on the reception of a ENTASx CCC (enter
      --  activity state, with x = 0-3):
      AS             : I3C_DEVR0_AS_Field := 16#0#;
      --  Read-only. Reset action/level on received reset pattern (when the I3C
      --  acts as target) This read field is used by hardware on the reception
      --  of a direct read RSTACT CCC in order to return the corresponding data
      --  byte on the I3C bus. This read field is updated by hardware on the
      --  reception of a broadcast or direct write RSTACT CCC (target reset
      --  action). Only the defining bytes 0x00, 0x01 and 0x02 are mapped, and
      --  RSTACT[1:0] = Defining Byte[1:0]. a) partially reset the peripheral,
      --  by a write and clear of the enable bit of the I3C configuration
      --  register (write EN = 0). This resets the I3C bus interface and the
      --  I3C kernel sub-parts, without modifying the content of the I3C APB
      --  registers (except the EN bit). b) fully reset the peripheral,
      --  including all its registers, via a write and set of the I3C reset
      --  control bit of the RCC (reset and clock controller) register. – the
      --  software writes and sets the SYSRESETREQ control bit of the AITR
      --  register, when the device is controlled by a Cortexsup®/sup-M. –
      --  the software writes and sets SYSRST = 1 in the RCC_GRSTCSETR
      --  register, when the device is controlled by a Cortexsup®/sup-A.
      RSTACT         : I3C_DEVR0_RSTACT_Field := 16#0#;
      --  Read-only. Reset action is valid (when the I3C acts as target) This
      --  bit is asserted by hardware to indicate that the RSTACT[1:0] field
      --  has been updated on the reception of a broadcast or direct write
      --  RSTACT CCC (target reset action) and is valid. This bit is cleared by
      --  hardware when the target receives a frame start. When the device is
      --  not in Stop mode: If RSTVAL = 1: when RSTF in the I3C_EVR register is
      --  asserted (and/or the corresponding interrupt if enabled), RSTACT[1:0]
      --  in the I3C_DEVR0 register dictates the reset action to be performed
      --  by the software, if any. If RSTVAL = 0: when RSTF is asserted (and/or
      --  the corresponding interrupt if enabled), the software must issue an
      --  I3C reset after a first detected reset pattern, and a system reset on
      --  the second one. When in Stop mode, the corresponding interrupt can be
      --  used to wake up the device.
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
      --  controller) When the I3C acts as controller, this field must be
      --  written by software to store the 7-bit dynamic address that the
      --  controller sends via a broadcast ENTDAA or a direct SETNEWDA CCC
      --  acknowledged by the target x. Writing to this field has no impact
      --  when the read field DIS = 1 in the I3C_DEVRx register.
      DA             : I3C_DEVR_DA_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  IBI request acknowledge (when the I3C acts as controller) When the
      --  I3C acts as controller, this bit is written by software to define the
      --  acknowledge policy to be applied on the I3C bus on the reception of
      --  an IBI request from target x: - After the NACK, the message continues
      --  as initially programmed (the target is aware of the NACK and can emit
      --  another IBI request later on) - The field DIS is asserted by hardware
      --  to protect DA[6:0] from being modified by software meanwhile the
      --  hardware can store internally the current DA[6:0] into the kernel
      --  clock domain. - After the ACK, the controller logs the IBI payload
      --  data, if any, depending on I3C_DEVRx.IBIDEN. - The software is
      --  notified by the IBI flag (IBIF = 1) and/or the corresponding
      --  interrupt if enabled; - Independently from IBIACK configuration for
      --  this or other devices, further IBI request(s) are NACK-ed until IBI
      --  request flag (IBIF) and controller-role request flag (CRF) are both
      --  cleared.
      IBIACK         : Boolean := False;
      --  Controller-role request acknowledge (when the I3C acts as controller)
      --  When the I3C acts as controller, this bit is written by software to
      --  define the acknowledge policy to be applied on the I3C bus on the
      --  reception of a controller-role request from target x: After the NACK,
      --  the message continues as initially programmed (the target is aware of
      --  the NACK and can emit another controller-role request later on) - The
      --  field DIS is asserted by hardware to protect DA[6:0] from being
      --  modified by software meanwhile the hardware can store internally the
      --  current DA[6:0] into the kernel clock domain. - After the ACK, the
      --  message continues as initially programmed. The software is notified
      --  by the controller-role request flag (CRF = 1 in the I3C_EVR register)
      --  and/or the corresponding interrupt if enabled; For effectively
      --  granting the controller-role to the requesting secondary controller,
      --  software must issue a GETACCCR (formerly known as GETACCMST),
      --  followed by a stop. - Independently of CRACK configuration for this
      --  or other devices, further controller-role request(s) are NACK-ed
      --  until controller-role request flag (CRF) and IBI flag (IBIF) in the
      --  I3C_EVR register are both cleared.
      CRACK          : Boolean := False;
      --  IBI data enable (when the I3C acts as controller) When the I3C acts
      --  as controller, this bit must be written by software to store the
      --  BCR[2] bit as received from the target x during broadcast ENTDAA or
      --  direct GETBCR CCC via the received I3C_RDR. Writing to this field has
      --  no impact when the DIS = 1 in the I3C_DEVRx register.
      IBIDEN         : Boolean := False;
      --  Suspend/stop I3C transfer on received IBI (when the I3C acts as
      --  controller) When the I3C acts as controller, this bit can be used to
      --  receive an IBI from target x with pending read notification feature
      --  (received MDB[7:5] = 3’b101). If this bit is set, when an IBI is
      --  received and completed (IBIF = 1 in the I3C_EVR register), a stop is
      --  emitted on the I3C bus and both C-FIFO and TX-FIFO are automatically
      --  flushed by hardware. The controller execution flow is stopped, even
      --  if a next control message is programmed. When the IBI is completed,
      --  the controller software can issue a new control word, such as a
      --  private read, to the target device that initiated the IBI request.
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_20_30 : Interfaces.Bit_Types.UInt11 := 16#0#;
      --  Read-only. DA[6:0] write disabled (when the I3C acts as controller)
      --  When the I3C acts as controller, once the software sets IBIACK= 1 or
      --  CRACK= 1, this read bit is set by hardware (DIS = 1) to lock the
      --  configured DA[6:0] and IBIDEN values. Then, to be able to modify
      --  DA[6:0], IBIDEN or SUSP, the software must wait for DIS to be
      --  de-asserted by hardware (polling on DIS = 0) before modifying these
      --  three assigned values to the target x. Indeed, the target can request
      --  an IBI or a controller-role while the controller intends to modify
      --  DA[6:0], IBIDEN or SUSP.
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
      --  Maximum data read length (when I3C acts as target) This field is
      --  initially written by software when EN = 0 and updated by hardware on
      --  the reception of SETMRL command (with potentially also updated
      --  IBIP[2:0]). Software is notified of an MRL update by MRLUPF and the
      --  corresponding interrupt, if enabled. This field is used by hardware
      --  to return the value on the I3C bus when the target receives a GETMRL
      --  CCC.
      MRL            : I3C_MAXRLR_MRL_Field := 16#0#;
      --  IBI payload data maximum size, in bytes (when I3C acts as target)
      --  This field is initially written by software when EN = 0 to set the
      --  maximum number of data bytes to be sent to the controller after an
      --  IBI request has been acknowledged.This field can be updated by
      --  hardware on the reception of SETMRL command (which potentially also
      --  updated IBIP[2:0]). Software is notified of an MRL update by MRLUPF
      --  in the I3C_EVR register and the corresponding interrupt, if enabled.
      --  others: same as 100
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
      --  Maximum data write length (when I3C acts as target) This field is
      --  initially written by software when EN = 0 and updated by hardware on
      --  the reception of SETMWL command. Software is notified of an MWL
      --  update by MWLUPF in the I3C_EVR register and the corresponding
      --  interrupt, if enabled. This field is used by hardware to return the
      --  value on the I3C bus when the target receives a GETMWL CCC.
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
      --  cycles: tsubSCLL_PP/sub=(SCLL_PP+1)xtsubI3CCLK/sub Note: SCLL_PP is
      --  used to generate tsubDIG_L/sub (I3C in PP) timing. Note:
      --  tsubDIG_Lmin/sub = 32 ns (max 40/60 duty cycle at 12.5 MHz).
      SCLL_PP  : I3C_TIMINGR0_SCLL_PP_Field := 16#0#;
      --  SCL high duration, used for I3C messages (both in push-pull and
      --  open-drain phases), in number of kernel clocks cycles:
      --  tsubSCLH_I3C/sub=(SCLH_I3C+1)xtsubI3CCLK/sub Note: SCLH_I3C is used
      --  to generate both tsubDIG_H /sub(I3C) and tsubDIG_H_MIXED /subtimings.
      --  Note: For mixed bus (with at least one Isup2/supC target):
      --  tsubDIG_H_MIXEDmin /sub= 32 ns and tsubDIG_H_MIXEDmax /sub= 45 ns
      --  (due to Isup2/supC 50 ns spike filter). Note: For pure I3C bus (with
      --  no Isup2/supC targets): tsubDIG_Hmin/sub = 32 ns.
      SCLH_I3C : I3C_TIMINGR0_SCLH_I3C_Field := 16#0#;
      --  SCL low duration in open-drain phases, used for legacy Isup2/supC
      --  messages and for I3C open-drain phases (address phase following a
      --  start, ACK phase during controller-initiated messages, and T bit
      --  phase during direct/private/IBI payload), in number of kernel clocks
      --  cycles: tsubSCLL_OD/sub=(SCLL_OD+1)xtsubI3CCLK/sub Note: SCLL_OD is
      --  used to generate both tsubDIG_L /sub(Isup2/supC) and
      --  tsubDIG_OD_L/sub(I3C) timings. Note: With Isup2/supC fm+ device
      --  tsubDIG_Lmin/sub = 500 ns, with Isup2/supC fm device tsubDIG_Lmin/sub
      --  = 1320 ns. Note: I3C messages: tsubDIG_OD_Lmin /sub= 200 ns. Note: If
      --  a single I3C frame is gathering Isup2/supC and I3C messages, the SCL
      --  low duration during I3C open-drain phases is increased to fit
      --  Isup2/supC timings.
      SCLL_OD  : I3C_TIMINGR0_SCLL_OD_Field := 16#0#;
      --  SCL high duration, used for legacy Isup2/supC messages, in number of
      --  kernel clocks cycles: tsubSCLH_I2C/sub=(SCLH_I2C+1)xtsubI3CCLK/sub
      --  Note: SCLH_I2C is used to generate tsubDIG_H /sub(Isup2/supC) timing
      --  when communicating with Isup2/supC devices. Note: With Isup2/supC fm+
      --  device tsubDIG_Hmin/sub = 260 ns, with Isup2/supC fm device
      --  tsubDIG_Hmin/sub = 600 ns.
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
      --  acts as controller or target. This time unit is then used by the
      --  hardware to build some internal timers, corresponding to the
      --  following MIPI I3C timings: When the I3C acts as target: for bus
      --  available condition time: it must wait for (bus available condition)
      --  time to be elapsed after a stop and before issuing a start request
      --  for an IBI or a controller-role request (bus free condition is
      --  sustained for at least tsubAVAL/sub). Refer to MIPI timing
      --  tsubAVAL/sub=1s. This timing is defined by:
      --  tsubAVAL/sub=(AVAL[7:0]+2)xtsubI3CCLK/sub for bus idle condition
      --  time: it must wait for (bus idle condition) time to be elapsed after
      --  that both SDA and SCL are continuously high and stable before issuing
      --  a hot-join event. Refer to MIPI v1.1 timing tsubIDLE/sub= 200 s .
      --  This timing is defined by: tsubIDLE/sub=(AVAL[7:0]+2)x200 x
      --  tsubI3CCLK/sub When the I3C acts as controller, it cannot stall the
      --  clock beyond a maximum stall time (stall the SCL clock low), as
      --  follows: on first bit of assigned address during dynamic address
      --  assignment: it cannot stall the clock beyond the MIPI timing
      --  tsubSTALLDAA/sub = 15 ms. This timing is defined by:
      --  tsubSTALLDAAmax/sub=(AVAL[7:0]+1)x15000 x tsubI3CCLK/sub on ACK/NACK
      --  phase of I3C/Isup2/supC transfer, on parity bit of write data
      --  transfer, on transition bit of I3C read transfer: it cannot stall the
      --  clock beyond the MIPI timing tsubSTALL/sub= 100 s. This timing is
      --  defined by: tsubSTALLmax/sub=(AVAL[7:0]+1)x100 x tsubI3CCLK/sub
      --  Whatever the I3C acts as controller or as (controller-capable)
      --  target, during a controller-role hand-off procedure: The new
      --  controller must wait for tsubNEWCRLock /subbefore pulling SDA low
      --  (issuing a start) after a completed GETACCR CCC. Then the new
      --  controller, within tsubCAS/sub, can pull SCL low to activate SCL
      --  clock. The active controller must wait for the same tsubNEWCRLock
      --  /subtime, or at least 100 s, before testing if the new controller has
      --  gained control of the bus by pulling SDA low. The time to wait
      --  depends upon the value of ANSCR[1:0] in the I3C_TIMINGR1 register:
      --  ASNCR[1:0] = 00: tsubNEWCRLock/sub=(AVAL[7:0]+1)x tsubI3CCLK/sub
      --  ASNCR[1:0] = 01: tsubNEWCRLock/sub=(AVAL[7:0]+1)x100 x tsubI3CCLK/sub
      --  ASNCR[1:0] = 10: tsubNEWCRLock/sub=(AVAL[7:0]+1)x2000 x
      --  tsubI3CCLK/sub ASNCR[1:0] = 11: tsubNEWCRLock/sub=(AVAL[7:0]+1)x50000
      --  x tsubI3CCLK/sub
      AVAL           : I3C_TIMINGR1_AVAL_Field := 16#0#;
      --  Activity state of the new controller (when I3C acts as active
      --  controller) This field indicates the time to wait before being
      --  accessed as new target, refer AVAL[7:0]. This field can be modified
      --  only when the I3C acts as controller.
      ASNCR          : I3C_TIMINGR1_ASNCR_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Number of kernel clocks cycles that is used to set some MIPI timings
      --  like bus free condition time (when the I3C acts as controller) When
      --  the I3C acts as controller: for I3C start timing: it must wait for
      --  (bus free condition) time to be elapsed after a stop and before a
      --  start, refer to MIPI timings (I3C) tsubCAS /suband (Isup2/supC)sub
      --  /subtsubBUF/sub. These timings are defined by:
      --  tsubBUF/sub=tsubCAS/sub=[(FREE[6:0]+1)x2 - (0.5 + SDA_HD)] x
      --  tsubI3CCLK/sub Note: For pure I3C bus: tsubCASmin /sub=38.4 ns, and
      --  tsubCASmax/sub=1 s, 100 s, 2 ms, 50 ms for, respectively, ENTAS0, 1,
      --  2, and 3. Note: For mixed bus with Isup2/supC fm+ device
      --  tsubBUFmin/sub = 0.5 s, for mixed bus with Isup2/supC fm device
      --  tsubBUFmin/sub = 1.3 s. for I3C repeated start timing: must wait for
      --  time to be elapsed after a repeated start (SDA is de-asserted) and
      --  before driving SCL low, refer to. MIPI timing tsubCASr/sub. This
      --  timing is defined by: tsubCASr/sub=[(FREE[6:0]+1)x2 - (0.5 + SDA_HD)]
      --  x tsubI3CCLK/sub. Note: tsubCASr, miN/sub=19.2 ns. for I3C stop
      --  timing: must wait for time to be elapsed after that the SCL clock is
      --  driven high, and before the stop condition (SDA is asserted). This
      --  timing is defined by: tsubCBP/sub=(FREE[6:0]+1) x tsubI3CCLK/sub.
      --  Note: tsubCBPmiN/sub=19.2 ns. for I3C repeated start timing (T-bit
      --  when controller ends read with repeated start followed by stop): must
      --  wait for time to be elapsed after that the SCL clock is driven high,
      --  and before the repeated start condition (SDA is de-asserted). This
      --  timing is defined by: tsubCBSr/sub=(FREE[6:0]+1) x tsubI3CCLK/sub.
      --  Note: tsubCBSr, miN/sub=19.2 ns.
      FREE           : I3C_TIMINGR1_FREE_Field := 16#0#;
      --  unspecified
      Reserved_23_27 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  SDA hold time (when the I3C acts as controller), in number of kernel
      --  clocks cycles (refer to MIPI timing SDA hold time in push-pull
      --  tsubHD_PP/sub): SDA hold time = (SDA_HD + 0.5) xtsubI3CCLK/sub Note:
      --  when controller: tsubHD_PPmiN =/sub min (tsubCR /sub, tsubCF/sub) + 3
      --  ns.
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
      --  ACK/NACK phase of data byte of a legacy Isup2/supC read) The SCL is
      --  stalled during STALLxtsubSCLL_PP/sub in the T-bit phase (before the
      --  ninth bit). This allows the target to prepare the data to be sent.
      --  Note: tsubSCLL_PP/sub=(I3C_TIMINGR0.SCLL_PP[7:0]+1)xtsubI3CCLK/sub
      STALLT         : Boolean := False;
      --  Controller clock stall enable on PAR phase of Data The SCL is stalled
      --  during STALLxtsubSCLL_PP/sub in the T-bit phase (before the ninth
      --  bit). This allows the target to read received data. Note:
      --  tsubSCLL_PP/sub=(I3C_TIMINGR0.SCLL_PP[7:0]+1)xtsubI3CCLK/sub
      STALLD         : Boolean := False;
      --  Controller clock stall enable on PAR phase of CCC The SCL is stalled
      --  during STALLxtsubSCLL_PP /subin the T-bit phase of common command
      --  code (before the ninth bit). This allows the target to decode the
      --  command. Note:
      --  tsubSCLL_PP/sub=(I3C_TIMINGR0.SCLL_PP[7:0]+1)xtsubI3CCLK/sub
      STALLC         : Boolean := False;
      --  Controller clock stall enable on ACK phase The SCL is stalled (during
      --  tsubSCLL_STALL/subas defined by STALL) in the address ACK/NACK phase
      --  (before the ninth bit). This allows the target to prepare data. The
      --  ACK driven by the controller itself on a target-initiated request
      --  (IBI/HJ/CR) is not impacted by this control bit.
      STALLA         : Boolean := False;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Controller clock stall time, in number of kernel clock cycles
      --  tsubSCLL_STALL/sub=STALL x tsubI3CCLK/sub
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
      --  device characteristics ID others: ID to describe the type of the I3C
      --  sensor/device Note: The latest MIPI DCR ID assignments are available
      --  on https://www.mipi.org.
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
      --  IBI MDB support for pending read notification This bit is written by
      --  software during bus initialization (EN = 0), and indicates the
      --  support (or not) of the pending read notification via the IBI
      --  MDB[7:0] value. This bit is used to return the GETCAP3 byte in
      --  response to the GETCAPS CCC format 1.
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
      --  delayed controller-role hand-off This bit is written by software
      --  during bus initialization (EN = 0), and indicates if this target I3C
      --  needs additional time to process a controller-role hand-off requested
      --  by the current controller. This bit is used to return the CRCAP2 byte
      --  in response to the GETCAPS CCC format 2.
      CAPDHOFF       : Boolean := False;
      --  unspecified
      Reserved_4_8   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  group management support (when acting as controller) This bit is
      --  written by software during bus initialization (EN = 0), and indicates
      --  if the I3C is able to support group management when it acts as a
      --  controller (after controller-role hand-off) via emitted DEFGRPA,
      --  RSTGRPA, and SETGRPA CCC. This bit is used to return the CRCAP1 byte
      --  in response to the GETCAPS CCC format 2.
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

   --  I3C get max data speed register
   type I3C_GETMXDSR_Register is record
      --  Controller hand-off activity state This field is written by software
      --  during bus initialization (EN = 0), and indicates in which initial
      --  activity state the (other) current controller must expect the I3C bus
      --  after a controller-role hand-off to this controller-capable I3C, when
      --  returning the defining byte CRHDLY (0x91) to a GETMXDS CCC. This
      --  2-bit field is used to return the CRHDLY1 byte in response to the
      --  GETCAPS CCC format 3, to state the activity state of this I3C when
      --  becoming controller after a controller-role hand-off, and
      --  consequently the time the former controller must wait before testing
      --  this I3C to be confirmed its ownership.
      HOFFAS         : I3C_GETMXDSR_HOFFAS_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  GETMXDS CCC format This field is written by software during bus
      --  initialization (EN = 0) and indicates how is returned the GETMXDS
      --  format 1 (without MaxRdTurn) and format 2 (with MaxRdTurn). This
      --  field is used to return the 2-byte format 1 (MaxWr, MaxRd) or 5-byte
      --  format 2 (MaxWr, MaxRd, 3-byte MaxRdTurn) byte in response to the
      --  GETCAPS CCC. - 3-byte MaxRdTurn is returned with MSB = 0, middle byte
      --  = 0 and LSB = RDTURN[7:0]. - Max read turnaround time is less than
      --  256 s. - 3-byte MaxRdTurn is returned with MSB = 0, middle byte =
      --  RDTURN[7:0] and LSB = 0. - Max read turnaround time is between 256
      --  and 65535 s - 3-byte MaxRdTurn is returned with MSB = RDTURN[7:0],
      --  middle byte = 0 and LSB = 0. - Max read turnaround time is between
      --  65535 s and 16 s.
      FMT            : I3C_GETMXDSR_FMT_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  programmed byte of the 3-byte MaxRdTurn (maximum read turnaround
      --  byte) This bit is written by software during bus initialization (EN =
      --  0) and writes the value of the selected byte (via the FMT[1:0] field)
      --  of the 3-byte MaxRdTurn, which is returned in response to the GETMXDS
      --  CCC format 2 to encode the maximum read turnaround time.
      RDTURN         : I3C_GETMXDSR_RDTURN_Field := 16#0#;
      --  clock-to-data turnaround time (tsubSCO/sub) This bit is written by
      --  software during bus initialization (EN = 0 in the I3C_CFGR register)
      --  and is used to specify the clock-to-data turnaround time tsubSCO/sub
      --  (vs. the value of 12 ns). This bit is used by the hardware in
      --  response to the GETMXDS CCC to return the encoded clock-to-data
      --  turnaround time via the returned MaxRd[5:3] bits.
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
      --  4-bit MIPI Instance ID This field is written by software to set and
      --  identify individually each instance of this I3C IP with a specific
      --  number on a single I3C bus. This field represents bits[15:12] of the
      --  48-bit provisioned ID. Note: Bits[11:0] of the provisioned ID can be
      --  0.
      MIPIID        : I3C_EPIDR_MIPIID_Field := 16#0#;
      --  Read-only. provisioned ID type selector This field is set as 0
      --  (vendor fixed value). This field represents bit[32] of the 48-bit
      --  provisioned ID. Note: Bits[31:16] of the provisioned ID can be 0.
      IDTSEL        : Boolean := False;
      --  Read-only. 15-bit MIPI manufacturer ID This read field is the 15-bit
      --  STMicroelectronics MIPI ID (0x0104). This field represents
      --  bits[47:33] of the 48-bit provisioned ID.
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

   subtype I3C_HWCFGR_CSIZE_Field is Interfaces.Bit_Types.UInt4;
   subtype I3C_HWCFGR_SSIZE_Field is Interfaces.Bit_Types.UInt4;
   subtype I3C_HWCFGR_TSIZE_Field is Interfaces.Bit_Types.UInt4;
   subtype I3C_HWCFGR_RSIZE_Field is Interfaces.Bit_Types.UInt4;
   subtype I3C_HWCFGR_NBT_Field is Interfaces.Bit_Types.UInt4;

   --  I3C hardware configuration register
   type I3C_HWCFGR_Register is record
      --  Read-only. C-FIFO size, in multiple of (32-bit) words. Note: A C-FIFO
      --  element is a (control) word.
      CSIZE          : I3C_HWCFGR_CSIZE_Field;
      --  Read-only. S-FIFO size, in multiple of (32-bit) words. Note: A S-FIFO
      --  element is a (status) word.
      SSIZE          : I3C_HWCFGR_SSIZE_Field;
      --  Read-only. TX-FIFO size, in multiple of 4 bytes. Note: A TX-FIFO
      --  element is a (transmitted) byte.
      TSIZE          : I3C_HWCFGR_TSIZE_Field;
      --  Read-only. RX-FIFO size, in multiple of 4 bytes. Note: A RX-FIFO
      --  element is a (received) byte.
      RSIZE          : I3C_HWCFGR_RSIZE_Field;
      --  Read-only. number of targets whose the IBI/controller-role request
      --  can be managed in parallel by this I3C IP, when acting as controller
      --  This value drives the maximum value x of the I3C_DEVRx.
      NBT            : I3C_HWCFGR_NBT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_HWCFGR_Register use record
      CSIZE          at 0 range 0 .. 3;
      SSIZE          at 0 range 4 .. 7;
      TSIZE          at 0 range 8 .. 11;
      RSIZE          at 0 range 12 .. 15;
      NBT            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype I3C_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype I3C_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  I3C version register
   type I3C_VERR_Register is record
      --  Read-only. I3C minor revision
      MINREV        : I3C_VERR_MINREV_Field;
      --  Read-only. I3C major revision
      MAJREV        : I3C_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I3C_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type I3C_Disc is
     (Default,
      Alternate1);

   --  I3C register block
   type I3C_Peripheral
     (Discriminent : I3C_Disc := Default)
   is record
      --  I3C configuration register
      I3C_CFGR          : aliased I3C_CFGR_Register;
      --  I3C receive data byte register
      I3C_RDR           : aliased I3C_RDR_Register;
      --  I3C receive data word register
      I3C_RDWR          : aliased I3C_RDWR_Register;
      --  I3C transmit data byte register
      I3C_TDR           : aliased I3C_TDR_Register;
      --  I3C transmit data word register
      I3C_TDWR          : aliased I3C_TDWR_Register;
      --  I3C IBI payload data register
      I3C_IBIDR         : aliased I3C_IBIDR_Register;
      --  I3C target transmit configuration register
      I3C_TGTTDR        : aliased I3C_TGTTDR_Register;
      --  I3C status register
      I3C_SR            : aliased I3C_SR_Register;
      --  I3C status error register
      I3C_SER           : aliased I3C_SER_Register;
      --  I3C received message register
      I3C_RMR           : aliased I3C_RMR_Register;
      --  I3C event register
      I3C_EVR           : aliased I3C_EVR_Register;
      --  I3C interrupt enable register
      I3C_IER           : aliased I3C_IER_Register;
      --  I3C clear event register
      I3C_CEVR          : aliased I3C_CEVR_Register;
      --  I3C own device characteristics register
      I3C_DEVR0         : aliased I3C_DEVR0_Register;
      --  I3C device 1 characteristics register
      I3C_DEVR1         : aliased I3C_DEVR_Register;
      --  I3C device 2 characteristics register
      I3C_DEVR2         : aliased I3C_DEVR_Register;
      --  I3C device 3 characteristics register
      I3C_DEVR3         : aliased I3C_DEVR_Register;
      --  I3C device 4 characteristics register
      I3C_DEVR4         : aliased I3C_DEVR_Register;
      --  I3C maximum read length register
      I3C_MAXRLR        : aliased I3C_MAXRLR_Register;
      --  I3C maximum write length register
      I3C_MAXWLR        : aliased I3C_MAXWLR_Register;
      --  I3C timing register 0
      I3C_TIMINGR0      : aliased I3C_TIMINGR0_Register;
      --  I3C timing register 1
      I3C_TIMINGR1      : aliased I3C_TIMINGR1_Register;
      --  I3C timing register 2
      I3C_TIMINGR2      : aliased I3C_TIMINGR2_Register;
      --  I3C bus characteristics register
      I3C_BCR           : aliased I3C_BCR_Register;
      --  I3C device characteristics register
      I3C_DCR           : aliased I3C_DCR_Register;
      --  I3C get capability register
      I3C_GETCAPR       : aliased I3C_GETCAPR_Register;
      --  I3C controller-role capability register
      I3C_CRCAPR        : aliased I3C_CRCAPR_Register;
      --  I3C get max data speed register
      I3C_GETMXDSR      : aliased I3C_GETMXDSR_Register;
      --  I3C extended provisioned ID register
      I3C_EPIDR         : aliased I3C_EPIDR_Register;
      --  I3C hardware configuration register
      I3C_HWCFGR        : aliased I3C_HWCFGR_Register;
      --  I3C version register
      I3C_VERR          : aliased I3C_VERR_Register;
      --  I3C identification register
      I3C_IPIDR         : aliased Interfaces.Bit_Types.UInt32;
      --  I3C size identification register
      I3C_SIDR          : aliased Interfaces.Bit_Types.UInt32;
      case Discriminent is
         when Default =>
            --  I3C message control register
            I3C_CR : aliased I3C_CR_Register;
         when Alternate1 =>
            --  I3C message control register
            I3C_CR_ALTERNATE1 : aliased I3C_CR_ALTERNATE1_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for I3C_Peripheral use record
      I3C_CFGR          at 16#4# range 0 .. 31;
      I3C_RDR           at 16#10# range 0 .. 31;
      I3C_RDWR          at 16#14# range 0 .. 31;
      I3C_TDR           at 16#18# range 0 .. 31;
      I3C_TDWR          at 16#1C# range 0 .. 31;
      I3C_IBIDR         at 16#20# range 0 .. 31;
      I3C_TGTTDR        at 16#24# range 0 .. 31;
      I3C_SR            at 16#30# range 0 .. 31;
      I3C_SER           at 16#34# range 0 .. 31;
      I3C_RMR           at 16#40# range 0 .. 31;
      I3C_EVR           at 16#50# range 0 .. 31;
      I3C_IER           at 16#54# range 0 .. 31;
      I3C_CEVR          at 16#58# range 0 .. 31;
      I3C_DEVR0         at 16#60# range 0 .. 31;
      I3C_DEVR1         at 16#64# range 0 .. 31;
      I3C_DEVR2         at 16#68# range 0 .. 31;
      I3C_DEVR3         at 16#6C# range 0 .. 31;
      I3C_DEVR4         at 16#70# range 0 .. 31;
      I3C_MAXRLR        at 16#90# range 0 .. 31;
      I3C_MAXWLR        at 16#94# range 0 .. 31;
      I3C_TIMINGR0      at 16#A0# range 0 .. 31;
      I3C_TIMINGR1      at 16#A4# range 0 .. 31;
      I3C_TIMINGR2      at 16#A8# range 0 .. 31;
      I3C_BCR           at 16#C0# range 0 .. 31;
      I3C_DCR           at 16#C4# range 0 .. 31;
      I3C_GETCAPR       at 16#C8# range 0 .. 31;
      I3C_CRCAPR        at 16#CC# range 0 .. 31;
      I3C_GETMXDSR      at 16#D0# range 0 .. 31;
      I3C_EPIDR         at 16#D4# range 0 .. 31;
      I3C_HWCFGR        at 16#3F0# range 0 .. 31;
      I3C_VERR          at 16#3F4# range 0 .. 31;
      I3C_IPIDR         at 16#3F8# range 0 .. 31;
      I3C_SIDR          at 16#3FC# range 0 .. 31;
      I3C_CR            at 16#0# range 0 .. 31;
      I3C_CR_ALTERNATE1 at 16#0# range 0 .. 31;
   end record;

   --  I3C register block
   I3C_Periph : aliased I3C_Peripheral
     with Import, Address => I3C_Base;

   --  I3C register block
   I3C1_S_Periph : aliased I3C_Peripheral
     with Import, Address => I3C1_S_Base;

   --  I3C register block
   I3C2_Periph : aliased I3C_Peripheral
     with Import, Address => I3C2_Base;

   --  I3C register block
   I3C2_S_Periph : aliased I3C_Peripheral
     with Import, Address => I3C2_S_Base;

   --  I3C register block
   I3C3_Periph : aliased I3C_Peripheral
     with Import, Address => I3C3_Base;

   --  I3C register block
   I3C3_S_Periph : aliased I3C_Peripheral
     with Import, Address => I3C3_S_Base;

   --  I3C register block
   I3C4_Periph : aliased I3C_Peripheral
     with Import, Address => I3C4_Base;

   --  I3C register block
   I3C4_S_Periph : aliased I3C_Peripheral
     with Import, Address => I3C4_S_Base;

end Interfaces.STM32.I3C;
