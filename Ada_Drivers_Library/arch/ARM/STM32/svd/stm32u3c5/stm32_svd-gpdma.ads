--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.GPDMA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  GPDMA_SECCFGR_SEC array
   type GPDMA_SECCFGR_SEC_Field_Array is array (0 .. 11) of Boolean
     with Component_Size => 1, Size => 12;

   --  Type definition for GPDMA_SECCFGR_SEC
   type GPDMA_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt12;
         when True =>
            --  SEC as an array
            Arr : GPDMA_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for GPDMA_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  GPDMA secure configuration register
   type GPDMA_SECCFGR_Register is record
      --  None 0: non-secure 1: secure
      SEC            : GPDMA_SECCFGR_SEC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_SECCFGR_Register use record
      SEC            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  GPDMA_PRIVCFGR_PRIV array
   type GPDMA_PRIVCFGR_PRIV_Field_Array is array (0 .. 11) of Boolean
     with Component_Size => 1, Size => 12;

   --  Type definition for GPDMA_PRIVCFGR_PRIV
   type GPDMA_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt12;
         when True =>
            --  PRIV as an array
            Arr : GPDMA_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for GPDMA_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  GPDMA privileged configuration register
   type GPDMA_PRIVCFGR_Register is record
      --  None 0: unprivileged 1: privileged
      PRIV           : GPDMA_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  GPDMA_RCFGLOCKR_LOCK array
   type GPDMA_RCFGLOCKR_LOCK_Field_Array is array (0 .. 11) of Boolean
     with Component_Size => 1, Size => 12;

   --  Type definition for GPDMA_RCFGLOCKR_LOCK
   type GPDMA_RCFGLOCKR_LOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LOCK as a value
            Val : HAL.UInt12;
         when True =>
            --  LOCK as an array
            Arr : GPDMA_RCFGLOCKR_LOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for GPDMA_RCFGLOCKR_LOCK_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  GPDMA configuration lock register
   type GPDMA_RCFGLOCKR_Register is record
      --  This bit is cleared after reset and, once set, it cannot be reset
      --  until a global GPDMA reset. 0: secure privilege configuration of the
      --  channel 0 is writable. 1: secure privilege configuration of the
      --  channel 0 is not writable. Note: If TZEN = 0, this register can be
      --  written by a privileged access with any secure/non-secure attribute.
      LOCK           : GPDMA_RCFGLOCKR_LOCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_RCFGLOCKR_Register use record
      LOCK           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  GPDMA_MISR_MIS array
   type GPDMA_MISR_MIS_Field_Array is array (0 .. 11) of Boolean
     with Component_Size => 1, Size => 12;

   --  Type definition for GPDMA_MISR_MIS
   type GPDMA_MISR_MIS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MIS as a value
            Val : HAL.UInt12;
         when True =>
            --  MIS as an array
            Arr : GPDMA_MISR_MIS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for GPDMA_MISR_MIS_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  GPDMA non-secure masked interrupt status register
   type GPDMA_MISR_Register is record
      --  Read-only. None 0: no interrupt occurred on channel 0 1: an interrupt
      --  occurred on channel 0
      MIS            : GPDMA_MISR_MIS_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_MISR_Register use record
      MIS            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  GPDMA_SMISR_MIS array
   type GPDMA_SMISR_MIS_Field_Array is array (0 .. 11) of Boolean
     with Component_Size => 1, Size => 12;

   --  Type definition for GPDMA_SMISR_MIS
   type GPDMA_SMISR_MIS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MIS as a value
            Val : HAL.UInt12;
         when True =>
            --  MIS as an array
            Arr : GPDMA_SMISR_MIS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for GPDMA_SMISR_MIS_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  GPDMA secure masked interrupt status register
   type GPDMA_SMISR_Register is record
      --  Read-only. None 0: no interrupt occurred on the secure channel 0 1:
      --  an interrupt occurred on the secure channel 0
      MIS            : GPDMA_SMISR_MIS_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_SMISR_Register use record
      MIS            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype GPDMA_C0LBAR_LBA_Field is HAL.UInt16;

   --  GPDMA channel 0 linked-list base address register
   type GPDMA_C0LBAR_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  None
      LBA           : GPDMA_C0LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C0LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   --  GPDMA channel 0 flag clear register
   type GPDMA_C0FCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. None 0: no effect 1: corresponding TCF flag cleared
      TCF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding HTF flag cleared
      HTF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding DTEF flag cleared
      DTEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding ULEF flag cleared
      ULEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding USEF flag cleared
      USEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding SUSPF flag cleared
      SUSPF          : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding TOF flag cleared
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C0FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype GPDMA_C0SR_FIFOL_Field is HAL.UInt8;

   --  GPDMA channel 0 status register
   type GPDMA_C0SR_Register is record
      --  Read-only. This idle flag is deasserted by hardware when the channel
      --  is enabled (GPDMA_C0CR.EN = 1) with a valid channel configuration (no
      --  USEF to be immediately reported). This idle flag is asserted after
      --  hard reset or by hardware when the channel is back in idle state (in
      --  suspended or disabled state). 0: channel not in idle state 1: channel
      --  in idle state
      IDLEF          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. A transfer complete event is either a block transfer
      --  complete, a 2D/repeated block transfer complete, or a LLI transfer
      --  complete including the upload of the next LLI if any, or the full
      --  linked-list completion, depending on the transfer complete event mode
      --  (GPDMA_C0TR2.TCEM[1:0]). 0: no transfer complete event 1: a transfer
      --  complete event occurred
      TCF            : Boolean;
      --  Read-only. A half transfer event is either a half block transfer or a
      --  half 2D/repeated block transfer, depending on the transfer complete
      --  event mode (GPDMA_C0TR2.TCEM[1:0]). A half block transfer occurs when
      --  half of the bytes of the source block size (rounded up integer of
      --  GPDMA_C0BR1.BNDT[15:0]/2) has been transferred to the destination. A
      --  half 2D/repeated block transfer occurs when half of the repeated
      --  blocks (rounded up integer of (GPDMA_C0BR1.BRC[10:0]+1)/2)) has been
      --  transferred to the destination. 0: no half transfer event 1: a half
      --  transfer event occurred
      HTF            : Boolean;
      --  Read-only. None 0: no data transfer error event 1: a master bus error
      --  event occurred on a data transfer
      DTEF           : Boolean;
      --  Read-only. None 0: no update link transfer error event 1: a master
      --  bus error event occurred while updating a linked-list register from
      --  memory
      ULEF           : Boolean;
      --  Read-only. None 0: no user setting error event 1: a user setting
      --  error event occurred
      USEF           : Boolean;
      --  Read-only. None 0: no completed suspension event 1: a completed
      --  suspension event occurred
      SUSPF          : Boolean;
      --  Read-only. None 0: no trigger overrun event 1: a trigger overrun
      --  event occurred
      TOF            : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Number of available write beats in the FIFO, in units of
      --  the programmed destination data width (see GPDMA_C0TR1.DDW_LOG2[1:0],
      --  in units of bytes, half-words, or words). Note: After having
      --  suspended an active transfer, the user may need to read FIFOL[7:0],
      --  additionally to GPDMA_C0BR1.BDNT[15:0] and GPDMA_C0BR1.BRC[10:0], to
      --  know how many data have been transferred to the destination. Before
      --  reading, the user may wait for the transfer to be suspended
      --  (GPDMA_C0SR.SUSPF = 1).
      FIFOL          : GPDMA_C0SR_FIFOL_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C0SR_Register use record
      IDLEF          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FIFOL          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C0CR_PRIO_Field is HAL.UInt2;

   --  GPDMA channel 0 control register
   type GPDMA_C0CR_Register is record
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 0. Else: this
      --  bit is deasserted by hardware when there is a transfer error (master
      --  bus error or user setting error) or when there is a channel transfer
      --  complete (channel ready to be configured, for example if LSM = 1 at
      --  the end of a single execution of the LLI). Else, this bit can be
      --  asserted by software. Writing 0 into this EN bit is ignored. 0:
      --  write: ignored, read: channel disabled 1: write: enable channel,
      --  read: channel enabled
      EN             : Boolean := False;
      --  Write-only. This bit is write only. Writing 0 has no impact. Writing
      --  1 implies the reset of the following: the FIFO, the channel internal
      --  state, SUSP and EN bits (whatever is written receptively in bit 2 and
      --  bit 0). The reset is effective when the channel is in steady state,
      --  meaning one of the following: - active channel in suspended state
      --  (GPDMA_C0SR.SUSPF = 1 and GPDMA_C0SR.IDLEF=GPDMA_C0CR.EN = 1) -
      --  channel in disabled state (GPDMA_C0SR.IDLEF = 1 and GPDMA_C0CR.EN =
      --  0). After writing a RESET, to continue using this channel, the user
      --  must explicitly reconfigure the channel including the
      --  hardware-modified configuration registers (GPDMA_C0BR1, GPDMA_CxSAR
      --  and GPDMA_CxDAR) before enabling again the channel (see the
      --  programming sequence in less than xe6
      --  [GPDMA_abort_restart/ID00-1465]/>). 0: no channel reset 1: channel
      --  reset
      RESET          : Boolean := False;
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 2. Else:
      --  Software must write 1 in order to suspend an active channel (channel
      --  with an ongoing GPDMA transfer over its master ports). The software
      --  must write 0 in order to resume a suspended channel, following the
      --  programming sequence detailed in less than xe5
      --  [GPDMA_channel_suspend_and_resume/ID00-1456]/>. 0: write: resume
      --  channel, read: channel not suspended 1: write: suspend channel, read:
      --  channel suspended.
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  None 0: interrupt disabled 1: interrupt enabled
      TCIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      HTIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      DTEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      ULEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      USEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      SUSPIE         : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  First the (possible 1D/repeated) block transfer is executed as
      --  defined by the current internal register file until
      --  GPDMA_C0BR1.BNDT[15:0] = 0 and GPDMA_C0BR1.BRC[10:0] = 0. Secondly
      --  the next linked-list data structure is conditionally uploaded from
      --  memory as defined by GPDMA_C0LLR. Then channel execution is
      --  completed. 0: channel executed for the full linked-list and completed
      --  at the end of the last LLI (GPDMA_C0LLR = 0). The 16 low-significant
      --  bits of the link address are null (LA[15:0] = 0) and all the update
      --  bits are null (UT1 = UB1 = UT2 = USA = UDA = ULL = 0 and UT3 = UB2 =
      --  0). Then GPDMA_C0BR1.BNDT[15:0] = 0 and GPDMA_C0BR1.BRC[10:0] = 0. 1:
      --  channel executed once for the current LLI Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      LSM            : Boolean := False;
      --  This bit is used to allocate the master port for the update of the
      --  GPDMA linked-list registers from the memory. 0: port 0 (AHB)
      --  allocated 1: port 1 (AHB) allocated Note: This bit must be written
      --  when EN = 0. This bit is read-only when EN = 1.
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  None 00: low priority, low weight 01: low priority, mid weight 10:
      --  low priority, high weight 11: high priority Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      PRIO           : GPDMA_C0CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C0CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C0TR1_SDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C0TR1_SBL_1_Field is HAL.UInt6;
   subtype GPDMA_C0TR1_PAM_Field is HAL.UInt2;
   subtype GPDMA_C0TR1_DDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C0TR1_DBL_1_Field is HAL.UInt6;

   --  GPDMA channel 0 transfer register 1
   type GPDMA_C0TR1_Register is record
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and no transfer
      --  is issued. +: A source block size must be a multiple of the source
      --  data width (GPDMA_C0BR1.BNDT[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and no transfer is issued. +: A source
      --  burst transfer must have an aligned address with its data width
      --  (start address GPDMA_CxSAR[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and none transfer is issued.
      SDW_LOG2       : GPDMA_C0TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  The source address, pointed by GPDMA_CxSAR, is kept constant after a
      --  burst beat/single transfer or is incremented by the offset value
      --  corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      SINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  SBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width SDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 0, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      SBL_1          : GPDMA_C0TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  If DDW_LOG2[1:0] = SDW_LOG2[1:0]: if the data width of a burst
      --  destination transfer is equal to the data width of a burst source
      --  transfer, these bits are ignored.
      PAM            : GPDMA_C0TR1_PAM_Field := 16#0#;
      --  If the source data width is shorter than a word, this bit is ignored.
      --  If the source data width is a word: 0: no byte-based exchange within
      --  the unaligned half-word of each source word 1: the two consecutive
      --  bytes within the unaligned half-word of each source word are
      --  exchanged.
      SBx            : Boolean := False;
      --  This bit is used to allocate the master port for the source transfer
      --  0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note: This bit
      --  must be written when EN = 0. This bit is read-only when EN = 1.
      SAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC0 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC0 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC0 = 0. When
      --  GPDMA_SECCFGR.SEC0 is deasserted, this SSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer from the source is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      SSEC           : Boolean := False;
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and none
      --  transfer is issued. +: A destination burst transfer must have an
      --  aligned address with its data width (start address GPDMA_CxDAR[2:0]
      --  and address offset GPDMA_CxTR3.DAO[2:0], versus DDW_LOG2[1:0]).
      --  Otherwise a user setting error is reported and no transfer is issued.
      DDW_LOG2       : GPDMA_C0TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  The destination address, pointed by GPDMA_CxDAR, is kept constant
      --  after a burst beat/single transfer, or is incremented by the offset
      --  value corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      DINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  DBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width DDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 0, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      DBL_1          : GPDMA_C0TR1_DBL_1_Field := 16#0#;
      --  If the destination data size is a byte, this bit is ignored. If the
      --  destination data size is not a byte: 0: no byte-based exchange within
      --  half-word 1: the two consecutive (post PAM) bytes are exchanged in
      --  each destination half-word.
      DBx            : Boolean := False;
      --  If the destination data size is shorter than a word, this bit is
      --  ignored. If the destination data size is a word: 0: no halfword-based
      --  exchanged within word 1: the two consecutive (post PAM) half-words
      --  are exchanged in each destination word.
      DHx            : Boolean := False;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  This bit is used to allocate the master port for the destination
      --  transfer 0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note:
      --  This bit must be written when EN = 0. This bit is read-only when EN =
      --  1.
      DAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC0 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC0 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC0 = 0. When
      --  GPDMA_SECCFGR.SEC0 is deasserted, this DSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer to the destination is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C0TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBx            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBx            at 0 range 26 .. 26;
      DHx            at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C0TR2_REQSEL_Field is HAL.UInt7;
   subtype GPDMA_C0TR2_TRIGM_Field is HAL.UInt2;
   subtype GPDMA_C0TR2_TRIGSEL_Field is HAL.UInt6;
   subtype GPDMA_C0TR2_TRIGPOL_Field is HAL.UInt2;
   subtype GPDMA_C0TR2_TCEM_Field is HAL.UInt2;

   --  GPDMA channel 0 transfer register 2
   type GPDMA_C0TR2_Register is record
      --  These bits are ignored if channel 0 is activated (GPDMA_C0CR.EN
      --  asserted) with SWREQ=1 (software request for a memory-to-memory
      --  transfer). Else, the selected hardware request is internally taken
      --  into account as per less than xe4 [GPDMA_requests]/>. The user must
      --  not assign a same input hardware request (same REQSEL[6:0] value) to
      --  different active GPDMA channels (GPDMA_C0CR.EN = 1 and
      --  GPDMA_C0TR2.SWREQ = 0 for these channels). GPDMA is not intended to
      --  hardware support the case of simultaneous enabled channels
      --  incorrectly configured with a same hardware peripheral request
      --  signal, and there is no user setting error reporting.
      REQSEL         : GPDMA_C0TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  This bit is internally taken into account when GPDMA_C0CR.EN is
      --  asserted. 0: no software request. The selected hardware request
      --  REQSEL[6:0] is taken into account. 1: software request for a
      --  memory-to-memory transfer. The default selected hardware request as
      --  per REQSEL[6:0] is ignored.
      SWREQ          : Boolean := False;
      --  This bit is ignored if channel 0 is activated (GPDMA_C0CR.EN
      --  asserted) with SWREQ = 1 (software request for a memory-to-memory
      --  transfer). Else: 0: selected hardware request driven by a source
      --  peripheral (request signal taken into account by the GPDMA transfer
      --  scheduler over the source/read port) 1: selected hardware request
      --  driven by a destination peripheral (request signal taken into account
      --  by the GPDMA transfer scheduler over the destination/write port)
      --  Note: If the channel 0 is activated (GPDMA_C0CR.EN is asserted) with
      --  SWREQ = 0 and PFREQ = 1 (peripheral hardware request with peripheral
      --  flow-control mode), any software assertion to this DREQ bit is
      --  ignored: in peripheral flow-control mode, only a peripheral-to-memory
      --  transfer is supported.
      DREQ           : Boolean := False;
      --  If the channel 0 is activated (GPDMA_C0CR.EN asserted) with SWREQ = 1
      --  (software request for a memory-to-memory transfer), this bit is
      --  ignored. Else: 0: the selected hardware request is driven by a
      --  peripheral with a hardware request/acknowledge protocol at a burst
      --  level. 1: the selected hardware request is driven by a peripheral
      --  with a hardware request/acknowledge protocol at a block level (see
      --  less than xe4 [GPDMA_requests]/>).
      BREQ           : Boolean := False;
      --  Caution: If a given channel 0 is not implemented with this feature,
      --  this bit is reserved and PFREQ is not present (see less than xe1
      --  [GPDMA_channels]/> for the list of the implemented channels with this
      --  feature).
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  These bits define the transfer granularity for its conditioning by
      --  the trigger. If the channel 0 is enabled (GPDMA_C0CR.EN asserted)
      --  with TRIGPOL[1:0] = 00 or 11, these TRIGM[1:0] bits are ignored.
      --  Else, a GPDMA transfer is conditioned by at least one trigger hit:
      --  00: at block level: the first burst read of each block transfer is
      --  conditioned by one hit trigger (channel 0 = 12 to 15, for each block
      --  if a 2D/repeated block is configured with GPDMA_C0BR1.BRC[10:0] is
      --  not equal to 0). 10: at link level: a LLI link transfer is
      --  conditioned by one hit trigger. The LLI data transfer (if any) is not
      --  conditioned. 11: at programmed burst level: If SWREQ = 1, each
      --  programmed burst read is conditioned by one hit trigger. If SWREQ =
      --  0, each programmed burst that is requested by the selected
      --  peripheral, is conditioned by one hit trigger. - If the peripheral is
      --  programmed as a source (DREQ = 0) of the LLI data transfer, each
      --  programmed burst read is conditioned. - If the peripheral is
      --  programmed as a destination (DREQ = 1) of the LLI data transfer, each
      --  programmed burst write is conditioned. The first memory burst read of
      --  a (possibly 2D/repeated) block, also named as the first ready
      --  FIFO-based source burst, is gated by the occurrence of both the
      --  hardware request and the first trigger hit.01: channel 0 = 0 to ,
      --  same as 00; channel 0 , at 2D/repeated block level. The first burst
      --  read of a 2D/repeated block transfer is conditioned by one hit
      --  trigger. The GPDMA monitoring of a trigger for channel 0 is started
      --  when the channel is enabled/loaded with a new active trigger
      --  configuration: rising or falling edge on a selected trigger
      --  (TRIGPOL[1:0] = 01 or respectively TRIGPOL[1:0]=10). The monitoring
      --  of this trigger is kept active during the triggered and uncompleted
      --  (data or link) transfer; and if a new trigger is detected then, this
      --  hit is internally memorized to grant the next transfer, as long as
      --  the defined rising or falling edge is not modified, and the
      --  TRIGSEL[5:0] is not modified, and the channel is enabled.
      --  Transferring a next LLIn+1 that updates the GPDMA_C0TR2 with a new
      --  value for any of TRIGSEL[5:0] or TRIGPOL[1:0], resets the monitoring,
      --  trashing the memorized hit of the formerly defined LLIn trigger.
      --  After a first new trigger hitn+1 is memorized, if another second
      --  trigger hitn+2 is detected and if the hitn triggered transfer is
      --  still not completed, hitn+2 is lost and not memorized.memorized. A
      --  trigger overrun flag is reported (GPDMA_C0SR.TOF=1), and an interrupt
      --  is generated if enabled (GPDMA_C0CR.TOIE = 1). The channel is not
      --  automatically disabled by hardware due to a trigger overrun. Note:
      --  When the source block size is not a multiple of the source burst size
      --  and is a multiple of the source data width, then the last programmed
      --  source burst is not completed and is internally shorten to match the
      --  block size. In this case, if TRIGM[1:0] = 11 and (SWREQ = 1 or (SWREQ
      --  = 0 and DREQ = 0)), the shortened burst transfer (by singles or/and
      --  by bursts of lower length) is conditioned once by the trigger. +:
      --  When the programmed destination burst is internally shortened by
      --  singles or/and by bursts of lower length (versus FIFO size, versus
      --  block size, 1-Kbyte boundary address crossing): if the trigger is
      --  conditioning the programmed destination burst (if TRIGM[1:0] = 11 and
      --  SWREQ = 0 and DREQ = 1), this shortened destination burst transfer is
      --  conditioned once by the trigger.
      TRIGM          : GPDMA_C0TR2_TRIGM_Field := 16#0#;
      --  These bits select the trigger event input of the GPDMA transfer (as
      --  per less than xe3 [GPDMA_triggers]/>), with anactive trigger event if
      --  TRIGPOL[1:0] is not equal to 00.
      TRIGSEL        : GPDMA_C0TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  These bits define the polarity of the selected trigger event input
      --  defined by TRIGSEL[5:0]. 00: no trigger (masked trigger event) 01:
      --  trigger on the rising edge 10: trigger on the falling edge 11: same
      --  as 00
      TRIGPOL        : GPDMA_C0TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  These bits define the transfer granularity for the transfer complete
      --  and half transfer complete events generation. 00: at block level
      --  (when GPDMA_C0BR1.BNDT[15:0] = 0): the complete (and the half)
      --  transfer event is generated at the (respectively half of the) end of
      --  a block. 01: channel 0 (0 to ), same as 00, channel 0 , at
      --  2D/repeated block level (when GPDMA_C0BR1.BRC[10:0] = 0 and
      --  GPDMA_C0BR1.BNDT[15:0] = 0). The complete (and the half) transfer
      --  event is generated at the end (respectively half of the end) of the
      --  2D/repeated block. 10: at LLI level: the complete transfer event is
      --  generated at the end of the LLI transfer, including the update of the
      --  LLI if any. The half transfer event is generated at the half of the
      --  LLI data transfer. The LLI data transfer is a block transfer or a
      --  2D/repeated block transfer for channel 0 , if any data transfer. 11:
      --  at channel level: the complete transfer event is generated at the end
      --  of the last LLI transfer. The half transfer event is generated at the
      --  half of the data transfer of the last LLI. The last LLI updates the
      --  link address GPDMA_C0LLR.LA[15:2] to zero and clears all the
      --  GPDMA_C0LLR update bits (UT1, UT2, UB1, USA, UDA and ULL, plus UT3
      --  and UB2). If the channel transfer is continuous/infinite, no event is
      --  generated. Note: If the initial LLI0 data transfer is null/void
      --  (directly programmed by the internal register file with
      --  GPDMA_C0BR1.BNDT[15:0] = 0), then neither the complete transfer event
      --  nor the half transfer event is generated. +: If the initial LLI0 data
      --  transfer is null/void (directly programmed by the internal register
      --  file with GPDMA_C0BR1.BNDT[15:0] = 0), then neither the complete
      --  transfer event nor the half transfer event is generated. +: If the
      --  initial LLI0 data transfer is null/void (directly programmed by the
      --  internal register file with GPDMA_C0BR1.BNDT[15:0] = 0), then the
      --  half transfer event is not generated, and the transfer complete event
      --  is generated when is completed the loading of the LLI1.
      TCEM           : GPDMA_C0TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C0TR2_Register use record
      REQSEL         at 0 range 0 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype GPDMA_C0BR1_BNDT_Field is HAL.UInt16;

   --  GPDMA channel 0 block register 1
   type GPDMA_C0BR1_Register is record
      --  Block size transferred from the source. When the channel is enabled,
      --  this field becomes read-only and is decremented, indicating the
      --  remaining number of data items in the current source block to be
      --  transferred. BNDT[15:0] is programmed in number of bytes, maximum
      --  source block size is 64 Kbytes -1. Once the last data transfer is
      --  completed (BNDT[15:0] = 0): - if GPDMA_C0LLR.UB1 = 1, this field is
      --  updated by the LLI in the memory. - if GPDMA_C0LLR.UB1 = 0 and if
      --  there is at least one not null Uxx update bit, this field is
      --  internally restored to the programmed value. - if all GPDMA_C0LLR.Uxx
      --  = 0 and if GPDMA_C0LLR.LA[15:0] is not equal to 0, this field is
      --  internally restored to the programmed value (infinite/continuous last
      --  LLI). - if GPDMA_C0LLR = 0, this field is kept as zero following the
      --  last LLI data transfer. Note: A non-null source block size must be a
      --  multiple of the source data width (BNDT[2:0] versus
      --  GPDMA_C0TR1.SDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued. +: When configured in packing mode
      --  (GPDMA_C0TR1.PAM[1] = 1 and destination data width different from
      --  source data width), a non-null source block size must be a multiple
      --  of the destination data width (BNDT[2:0] versus
      --  GPDMA_C0TR1.DDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued.
      BNDT           : GPDMA_C0BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C0BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPDMA_C0LLR_LA_Field is HAL.UInt14;

   --  GPDMA channel 0 linked-list address register
   type GPDMA_C0LLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  If UT1 = UT2 = UB1 = USA = UDA = ULL = 0 and if LA[15:20] = 0, the
      --  current LLI is the last one. The channel transfer is completed
      --  without any update of the linked-list GPDMA register file. Else, this
      --  field is the pointer to the memory address offset from which the next
      --  linked-list data structure is automatically fetched from, once the
      --  data transfer is completed, in order to conditionally update the
      --  linked-list GPDMA internal register file (GPDMA_C0TR1, GPDMA_C0TR2,
      --  GPDMA_C0BR1, GPDMA_CxSAR, GPDMA_CxDAR and GPDMA_C0LLR). Note: The
      --  user must program the pointer to be 32-bit aligned. The two
      --  low-significant bits are write ignored.
      LA             : GPDMA_C0LLR_LA_Field := 16#0#;
      --  This bit is used to control the update of GPDMA_C0LLR from the memory
      --  during the link transfer. 0: no GPDMA_C0LLR update 1: GPDMA_C0LLR
      --  update
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : HAL.UInt10 := 16#0#;
      --  This bit is used to control the update of GPDMA_CxDAR from the memory
      --  during the link transfer. 0: no GPDMA_CxDAR update 1: GPDMA_CxDAR
      --  update
      UDA            : Boolean := False;
      --  This bit controls the update of GPDMA_CxSAR from the memory during
      --  the link transfer. 0: no GPDMA_CxSAR update 1: GPDMA_CxSAR update
      USA            : Boolean := False;
      --  This bit controls the update of GPDMA_C0BR1 from the memory during
      --  the link transfer. If UB1 = 0 and if GPDMA_C0LLR is not equal to 0,
      --  the linked-list is not completed. GPDMA_C0BR1.BNDT[15:0] is then
      --  restored to the programmed value after data transfer is completed and
      --  before the link transfer. 0: no GPDMA_C0BR1 update from memory
      --  (GPDMA_C0BR1.BNDT[15:0] restored if any link transfer) 1: GPDMA_C0BR1
      --  update
      UB1            : Boolean := False;
      --  This bit controls the update of GPDMA_C0TR2 from the memory during
      --  the link transfer. 0: no GPDMA_C0TR2 update 1: GPDMA_C0TR2 update
      UT2            : Boolean := False;
      --  This bit controls the update of GPDMA_C0TR1 from the memory during
      --  the link transfer. 0: no GPDMA_C0TR1 update 1: GPDMA_C0TR1 update
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C0LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C1LBAR_LBA_Field is HAL.UInt16;

   --  GPDMA channel 1 linked-list base address register
   type GPDMA_C1LBAR_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  None
      LBA           : GPDMA_C1LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C1LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   --  GPDMA channel 1 flag clear register
   type GPDMA_C1FCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. None 0: no effect 1: corresponding TCF flag cleared
      TCF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding HTF flag cleared
      HTF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding DTEF flag cleared
      DTEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding ULEF flag cleared
      ULEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding USEF flag cleared
      USEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding SUSPF flag cleared
      SUSPF          : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding TOF flag cleared
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C1FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype GPDMA_C1SR_FIFOL_Field is HAL.UInt8;

   --  GPDMA channel 1 status register
   type GPDMA_C1SR_Register is record
      --  Read-only. This idle flag is deasserted by hardware when the channel
      --  is enabled (GPDMA_C1CR.EN = 1) with a valid channel configuration (no
      --  USEF to be immediately reported). This idle flag is asserted after
      --  hard reset or by hardware when the channel is back in idle state (in
      --  suspended or disabled state). 0: channel not in idle state 1: channel
      --  in idle state
      IDLEF          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. A transfer complete event is either a block transfer
      --  complete, a 2D/repeated block transfer complete, or a LLI transfer
      --  complete including the upload of the next LLI if any, or the full
      --  linked-list completion, depending on the transfer complete event mode
      --  (GPDMA_C1TR2.TCEM[1:0]). 0: no transfer complete event 1: a transfer
      --  complete event occurred
      TCF            : Boolean;
      --  Read-only. A half transfer event is either a half block transfer or a
      --  half 2D/repeated block transfer, depending on the transfer complete
      --  event mode (GPDMA_C1TR2.TCEM[1:0]). A half block transfer occurs when
      --  half of the bytes of the source block size (rounded up integer of
      --  GPDMA_C1BR1.BNDT[15:0]/2) has been transferred to the destination. A
      --  half 2D/repeated block transfer occurs when half of the repeated
      --  blocks (rounded up integer of (GPDMA_C1BR1.BRC[10:0]+1)/2)) has been
      --  transferred to the destination. 0: no half transfer event 1: a half
      --  transfer event occurred
      HTF            : Boolean;
      --  Read-only. None 0: no data transfer error event 1: a master bus error
      --  event occurred on a data transfer
      DTEF           : Boolean;
      --  Read-only. None 0: no update link transfer error event 1: a master
      --  bus error event occurred while updating a linked-list register from
      --  memory
      ULEF           : Boolean;
      --  Read-only. None 0: no user setting error event 1: a user setting
      --  error event occurred
      USEF           : Boolean;
      --  Read-only. None 0: no completed suspension event 1: a completed
      --  suspension event occurred
      SUSPF          : Boolean;
      --  Read-only. None 0: no trigger overrun event 1: a trigger overrun
      --  event occurred
      TOF            : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Number of available write beats in the FIFO, in units of
      --  the programmed destination data width (see GPDMA_C1TR1.DDW_LOG2[1:0],
      --  in units of bytes, half-words, or words). Note: After having
      --  suspended an active transfer, the user may need to read FIFOL[7:0],
      --  additionally to GPDMA_C1BR1.BDNT[15:0] and GPDMA_C1BR1.BRC[10:0], to
      --  know how many data have been transferred to the destination. Before
      --  reading, the user may wait for the transfer to be suspended
      --  (GPDMA_C1SR.SUSPF = 1).
      FIFOL          : GPDMA_C1SR_FIFOL_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C1SR_Register use record
      IDLEF          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FIFOL          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C1CR_PRIO_Field is HAL.UInt2;

   --  GPDMA channel 1 control register
   type GPDMA_C1CR_Register is record
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 0. Else: this
      --  bit is deasserted by hardware when there is a transfer error (master
      --  bus error or user setting error) or when there is a channel transfer
      --  complete (channel ready to be configured, for example if LSM = 1 at
      --  the end of a single execution of the LLI). Else, this bit can be
      --  asserted by software. Writing 0 into this EN bit is ignored. 0:
      --  write: ignored, read: channel disabled 1: write: enable channel,
      --  read: channel enabled
      EN             : Boolean := False;
      --  Write-only. This bit is write only. Writing 0 has no impact. Writing
      --  1 implies the reset of the following: the FIFO, the channel internal
      --  state, SUSP and EN bits (whatever is written receptively in bit 2 and
      --  bit 0). The reset is effective when the channel is in steady state,
      --  meaning one of the following: - active channel in suspended state
      --  (GPDMA_C1SR.SUSPF = 1 and GPDMA_C1SR.IDLEF=GPDMA_C1CR.EN = 1) -
      --  channel in disabled state (GPDMA_C1SR.IDLEF = 1 and GPDMA_C1CR.EN =
      --  0). After writing a RESET, to continue using this channel, the user
      --  must explicitly reconfigure the channel including the
      --  hardware-modified configuration registers (GPDMA_C1BR1, GPDMA_CxSAR
      --  and GPDMA_CxDAR) before enabling again the channel (see the
      --  programming sequence in less than xe6
      --  [GPDMA_abort_restart/ID00-1465]/>). 0: no channel reset 1: channel
      --  reset
      RESET          : Boolean := False;
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 2. Else:
      --  Software must write 1 in order to suspend an active channel (channel
      --  with an ongoing GPDMA transfer over its master ports). The software
      --  must write 0 in order to resume a suspended channel, following the
      --  programming sequence detailed in less than xe5
      --  [GPDMA_channel_suspend_and_resume/ID00-1456]/>. 0: write: resume
      --  channel, read: channel not suspended 1: write: suspend channel, read:
      --  channel suspended.
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  None 0: interrupt disabled 1: interrupt enabled
      TCIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      HTIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      DTEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      ULEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      USEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      SUSPIE         : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  First the (possible 1D/repeated) block transfer is executed as
      --  defined by the current internal register file until
      --  GPDMA_C1BR1.BNDT[15:0] = 0 and GPDMA_C1BR1.BRC[10:0] = 0. Secondly
      --  the next linked-list data structure is conditionally uploaded from
      --  memory as defined by GPDMA_C1LLR. Then channel execution is
      --  completed. 0: channel executed for the full linked-list and completed
      --  at the end of the last LLI (GPDMA_C1LLR = 0). The 16 low-significant
      --  bits of the link address are null (LA[15:0] = 0) and all the update
      --  bits are null (UT1 = UB1 = UT2 = USA = UDA = ULL = 0 and UT3 = UB2 =
      --  0). Then GPDMA_C1BR1.BNDT[15:0] = 0 and GPDMA_C1BR1.BRC[10:0] = 0. 1:
      --  channel executed once for the current LLI Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      LSM            : Boolean := False;
      --  This bit is used to allocate the master port for the update of the
      --  GPDMA linked-list registers from the memory. 0: port 0 (AHB)
      --  allocated 1: port 1 (AHB) allocated Note: This bit must be written
      --  when EN = 0. This bit is read-only when EN = 1.
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  None 00: low priority, low weight 01: low priority, mid weight 10:
      --  low priority, high weight 11: high priority Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      PRIO           : GPDMA_C1CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C1CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C1TR1_SDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C1TR1_SBL_1_Field is HAL.UInt6;
   subtype GPDMA_C1TR1_PAM_Field is HAL.UInt2;
   subtype GPDMA_C1TR1_DDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C1TR1_DBL_1_Field is HAL.UInt6;

   --  GPDMA channel 1 transfer register 1
   type GPDMA_C1TR1_Register is record
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and no transfer
      --  is issued. +: A source block size must be a multiple of the source
      --  data width (GPDMA_C1BR1.BNDT[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and no transfer is issued. +: A source
      --  burst transfer must have an aligned address with its data width
      --  (start address GPDMA_CxSAR[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and none transfer is issued.
      SDW_LOG2       : GPDMA_C1TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  The source address, pointed by GPDMA_CxSAR, is kept constant after a
      --  burst beat/single transfer or is incremented by the offset value
      --  corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      SINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  SBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width SDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 1, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      SBL_1          : GPDMA_C1TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  If DDW_LOG2[1:0] = SDW_LOG2[1:0]: if the data width of a burst
      --  destination transfer is equal to the data width of a burst source
      --  transfer, these bits are ignored.
      PAM            : GPDMA_C1TR1_PAM_Field := 16#0#;
      --  If the source data width is shorter than a word, this bit is ignored.
      --  If the source data width is a word: 0: no byte-based exchange within
      --  the unaligned half-word of each source word 1: the two consecutive
      --  bytes within the unaligned half-word of each source word are
      --  exchanged.
      SBx            : Boolean := False;
      --  This bit is used to allocate the master port for the source transfer
      --  0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note: This bit
      --  must be written when EN = 0. This bit is read-only when EN = 1.
      SAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC1 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC1 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC1 = 0. When
      --  GPDMA_SECCFGR.SEC1 is deasserted, this SSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer from the source is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      SSEC           : Boolean := False;
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and none
      --  transfer is issued. +: A destination burst transfer must have an
      --  aligned address with its data width (start address GPDMA_CxDAR[2:0]
      --  and address offset GPDMA_CxTR3.DAO[2:0], versus DDW_LOG2[1:0]).
      --  Otherwise a user setting error is reported and no transfer is issued.
      DDW_LOG2       : GPDMA_C1TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  The destination address, pointed by GPDMA_CxDAR, is kept constant
      --  after a burst beat/single transfer, or is incremented by the offset
      --  value corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      DINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  DBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width DDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 1, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      DBL_1          : GPDMA_C1TR1_DBL_1_Field := 16#0#;
      --  If the destination data size is a byte, this bit is ignored. If the
      --  destination data size is not a byte: 0: no byte-based exchange within
      --  half-word 1: the two consecutive (post PAM) bytes are exchanged in
      --  each destination half-word.
      DBx            : Boolean := False;
      --  If the destination data size is shorter than a word, this bit is
      --  ignored. If the destination data size is a word: 0: no halfword-based
      --  exchanged within word 1: the two consecutive (post PAM) half-words
      --  are exchanged in each destination word.
      DHx            : Boolean := False;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  This bit is used to allocate the master port for the destination
      --  transfer 0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note:
      --  This bit must be written when EN = 0. This bit is read-only when EN =
      --  1.
      DAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC1 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC1 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC1 = 0. When
      --  GPDMA_SECCFGR.SEC1 is deasserted, this DSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer to the destination is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C1TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBx            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBx            at 0 range 26 .. 26;
      DHx            at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C1TR2_REQSEL_Field is HAL.UInt7;
   subtype GPDMA_C1TR2_TRIGM_Field is HAL.UInt2;
   subtype GPDMA_C1TR2_TRIGSEL_Field is HAL.UInt6;
   subtype GPDMA_C1TR2_TRIGPOL_Field is HAL.UInt2;
   subtype GPDMA_C1TR2_TCEM_Field is HAL.UInt2;

   --  GPDMA channel 1 transfer register 2
   type GPDMA_C1TR2_Register is record
      --  These bits are ignored if channel 1 is activated (GPDMA_C1CR.EN
      --  asserted) with SWREQ=1 (software request for a memory-to-memory
      --  transfer). Else, the selected hardware request is internally taken
      --  into account as per less than xe4 [GPDMA_requests]/>. The user must
      --  not assign a same input hardware request (same REQSEL[6:0] value) to
      --  different active GPDMA channels (GPDMA_C1CR.EN = 1 and
      --  GPDMA_C1TR2.SWREQ = 0 for these channels). GPDMA is not intended to
      --  hardware support the case of simultaneous enabled channels
      --  incorrectly configured with a same hardware peripheral request
      --  signal, and there is no user setting error reporting.
      REQSEL         : GPDMA_C1TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  This bit is internally taken into account when GPDMA_C1CR.EN is
      --  asserted. 0: no software request. The selected hardware request
      --  REQSEL[6:0] is taken into account. 1: software request for a
      --  memory-to-memory transfer. The default selected hardware request as
      --  per REQSEL[6:0] is ignored.
      SWREQ          : Boolean := False;
      --  This bit is ignored if channel 1 is activated (GPDMA_C1CR.EN
      --  asserted) with SWREQ = 1 (software request for a memory-to-memory
      --  transfer). Else: 0: selected hardware request driven by a source
      --  peripheral (request signal taken into account by the GPDMA transfer
      --  scheduler over the source/read port) 1: selected hardware request
      --  driven by a destination peripheral (request signal taken into account
      --  by the GPDMA transfer scheduler over the destination/write port)
      --  Note: If the channel 1 is activated (GPDMA_C1CR.EN is asserted) with
      --  SWREQ = 0 and PFREQ = 1 (peripheral hardware request with peripheral
      --  flow-control mode), any software assertion to this DREQ bit is
      --  ignored: in peripheral flow-control mode, only a peripheral-to-memory
      --  transfer is supported.
      DREQ           : Boolean := False;
      --  If the channel 1 is activated (GPDMA_C1CR.EN asserted) with SWREQ = 1
      --  (software request for a memory-to-memory transfer), this bit is
      --  ignored. Else: 0: the selected hardware request is driven by a
      --  peripheral with a hardware request/acknowledge protocol at a burst
      --  level. 1: the selected hardware request is driven by a peripheral
      --  with a hardware request/acknowledge protocol at a block level (see
      --  less than xe4 [GPDMA_requests]/>).
      BREQ           : Boolean := False;
      --  Caution: If a given channel 1 is not implemented with this feature,
      --  this bit is reserved and PFREQ is not present (see less than xe1
      --  [GPDMA_channels]/> for the list of the implemented channels with this
      --  feature).
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  These bits define the transfer granularity for its conditioning by
      --  the trigger. If the channel 1 is enabled (GPDMA_C1CR.EN asserted)
      --  with TRIGPOL[1:0] = 00 or 11, these TRIGM[1:0] bits are ignored.
      --  Else, a GPDMA transfer is conditioned by at least one trigger hit:
      --  00: at block level: the first burst read of each block transfer is
      --  conditioned by one hit trigger (channel 1 = 12 to 15, for each block
      --  if a 2D/repeated block is configured with GPDMA_C1BR1.BRC[10:0] is
      --  not equal to 0). 10: at link level: a LLI link transfer is
      --  conditioned by one hit trigger. The LLI data transfer (if any) is not
      --  conditioned. 11: at programmed burst level: If SWREQ = 1, each
      --  programmed burst read is conditioned by one hit trigger. If SWREQ =
      --  0, each programmed burst that is requested by the selected
      --  peripheral, is conditioned by one hit trigger. - If the peripheral is
      --  programmed as a source (DREQ = 0) of the LLI data transfer, each
      --  programmed burst read is conditioned. - If the peripheral is
      --  programmed as a destination (DREQ = 1) of the LLI data transfer, each
      --  programmed burst write is conditioned. The first memory burst read of
      --  a (possibly 2D/repeated) block, also named as the first ready
      --  FIFO-based source burst, is gated by the occurrence of both the
      --  hardware request and the first trigger hit.01: channel 1 = 0 to ,
      --  same as 00; channel 1 , at 2D/repeated block level. The first burst
      --  read of a 2D/repeated block transfer is conditioned by one hit
      --  trigger. The GPDMA monitoring of a trigger for channel 1 is started
      --  when the channel is enabled/loaded with a new active trigger
      --  configuration: rising or falling edge on a selected trigger
      --  (TRIGPOL[1:0] = 01 or respectively TRIGPOL[1:0]=10). The monitoring
      --  of this trigger is kept active during the triggered and uncompleted
      --  (data or link) transfer; and if a new trigger is detected then, this
      --  hit is internally memorized to grant the next transfer, as long as
      --  the defined rising or falling edge is not modified, and the
      --  TRIGSEL[5:0] is not modified, and the channel is enabled.
      --  Transferring a next LLIn+1 that updates the GPDMA_C1TR2 with a new
      --  value for any of TRIGSEL[5:0] or TRIGPOL[1:0], resets the monitoring,
      --  trashing the memorized hit of the formerly defined LLIn trigger.
      --  After a first new trigger hitn+1 is memorized, if another second
      --  trigger hitn+2 is detected and if the hitn triggered transfer is
      --  still not completed, hitn+2 is lost and not memorized.memorized. A
      --  trigger overrun flag is reported (GPDMA_C1SR.TOF=1), and an interrupt
      --  is generated if enabled (GPDMA_C1CR.TOIE = 1). The channel is not
      --  automatically disabled by hardware due to a trigger overrun. Note:
      --  When the source block size is not a multiple of the source burst size
      --  and is a multiple of the source data width, then the last programmed
      --  source burst is not completed and is internally shorten to match the
      --  block size. In this case, if TRIGM[1:0] = 11 and (SWREQ = 1 or (SWREQ
      --  = 0 and DREQ = 0)), the shortened burst transfer (by singles or/and
      --  by bursts of lower length) is conditioned once by the trigger. +:
      --  When the programmed destination burst is internally shortened by
      --  singles or/and by bursts of lower length (versus FIFO size, versus
      --  block size, 1-Kbyte boundary address crossing): if the trigger is
      --  conditioning the programmed destination burst (if TRIGM[1:0] = 11 and
      --  SWREQ = 0 and DREQ = 1), this shortened destination burst transfer is
      --  conditioned once by the trigger.
      TRIGM          : GPDMA_C1TR2_TRIGM_Field := 16#0#;
      --  These bits select the trigger event input of the GPDMA transfer (as
      --  per less than xe3 [GPDMA_triggers]/>), with anactive trigger event if
      --  TRIGPOL[1:0] is not equal to 00.
      TRIGSEL        : GPDMA_C1TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  These bits define the polarity of the selected trigger event input
      --  defined by TRIGSEL[5:0]. 00: no trigger (masked trigger event) 01:
      --  trigger on the rising edge 10: trigger on the falling edge 11: same
      --  as 00
      TRIGPOL        : GPDMA_C1TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  These bits define the transfer granularity for the transfer complete
      --  and half transfer complete events generation. 00: at block level
      --  (when GPDMA_C1BR1.BNDT[15:0] = 0): the complete (and the half)
      --  transfer event is generated at the (respectively half of the) end of
      --  a block. 01: channel 1 (0 to ), same as 00, channel 1 , at
      --  2D/repeated block level (when GPDMA_C1BR1.BRC[10:0] = 0 and
      --  GPDMA_C1BR1.BNDT[15:0] = 0). The complete (and the half) transfer
      --  event is generated at the end (respectively half of the end) of the
      --  2D/repeated block. 10: at LLI level: the complete transfer event is
      --  generated at the end of the LLI transfer, including the update of the
      --  LLI if any. The half transfer event is generated at the half of the
      --  LLI data transfer. The LLI data transfer is a block transfer or a
      --  2D/repeated block transfer for channel 1 , if any data transfer. 11:
      --  at channel level: the complete transfer event is generated at the end
      --  of the last LLI transfer. The half transfer event is generated at the
      --  half of the data transfer of the last LLI. The last LLI updates the
      --  link address GPDMA_C1LLR.LA[15:2] to zero and clears all the
      --  GPDMA_C1LLR update bits (UT1, UT2, UB1, USA, UDA and ULL, plus UT3
      --  and UB2). If the channel transfer is continuous/infinite, no event is
      --  generated. Note: If the initial LLI0 data transfer is null/void
      --  (directly programmed by the internal register file with
      --  GPDMA_C1BR1.BNDT[15:0] = 0), then neither the complete transfer event
      --  nor the half transfer event is generated. +: If the initial LLI0 data
      --  transfer is null/void (directly programmed by the internal register
      --  file with GPDMA_C1BR1.BNDT[15:0] = 0), then neither the complete
      --  transfer event nor the half transfer event is generated. +: If the
      --  initial LLI0 data transfer is null/void (directly programmed by the
      --  internal register file with GPDMA_C1BR1.BNDT[15:0] = 0), then the
      --  half transfer event is not generated, and the transfer complete event
      --  is generated when is completed the loading of the LLI1.
      TCEM           : GPDMA_C1TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C1TR2_Register use record
      REQSEL         at 0 range 0 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype GPDMA_C1BR1_BNDT_Field is HAL.UInt16;

   --  GPDMA channel 1 block register 1
   type GPDMA_C1BR1_Register is record
      --  Block size transferred from the source. When the channel is enabled,
      --  this field becomes read-only and is decremented, indicating the
      --  remaining number of data items in the current source block to be
      --  transferred. BNDT[15:0] is programmed in number of bytes, maximum
      --  source block size is 64 Kbytes -1. Once the last data transfer is
      --  completed (BNDT[15:0] = 0): - if GPDMA_C1LLR.UB1 = 1, this field is
      --  updated by the LLI in the memory. - if GPDMA_C1LLR.UB1 = 0 and if
      --  there is at least one not null Uxx update bit, this field is
      --  internally restored to the programmed value. - if all GPDMA_C1LLR.Uxx
      --  = 0 and if GPDMA_C1LLR.LA[15:0] is not equal to 0, this field is
      --  internally restored to the programmed value (infinite/continuous last
      --  LLI). - if GPDMA_C1LLR = 0, this field is kept as zero following the
      --  last LLI data transfer. Note: A non-null source block size must be a
      --  multiple of the source data width (BNDT[2:0] versus
      --  GPDMA_C1TR1.SDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued. +: When configured in packing mode
      --  (GPDMA_C1TR1.PAM[1] = 1 and destination data width different from
      --  source data width), a non-null source block size must be a multiple
      --  of the destination data width (BNDT[2:0] versus
      --  GPDMA_C1TR1.DDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued.
      BNDT           : GPDMA_C1BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C1BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPDMA_C1LLR_LA_Field is HAL.UInt14;

   --  GPDMA channel 1 linked-list address register
   type GPDMA_C1LLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  If UT1 = UT2 = UB1 = USA = UDA = ULL = 0 and if LA[15:20] = 0, the
      --  current LLI is the last one. The channel transfer is completed
      --  without any update of the linked-list GPDMA register file. Else, this
      --  field is the pointer to the memory address offset from which the next
      --  linked-list data structure is automatically fetched from, once the
      --  data transfer is completed, in order to conditionally update the
      --  linked-list GPDMA internal register file (GPDMA_C1TR1, GPDMA_C1TR2,
      --  GPDMA_C1BR1, GPDMA_CxSAR, GPDMA_CxDAR and GPDMA_C1LLR). Note: The
      --  user must program the pointer to be 32-bit aligned. The two
      --  low-significant bits are write ignored.
      LA             : GPDMA_C1LLR_LA_Field := 16#0#;
      --  This bit is used to control the update of GPDMA_C1LLR from the memory
      --  during the link transfer. 0: no GPDMA_C1LLR update 1: GPDMA_C1LLR
      --  update
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : HAL.UInt10 := 16#0#;
      --  This bit is used to control the update of GPDMA_CxDAR from the memory
      --  during the link transfer. 0: no GPDMA_CxDAR update 1: GPDMA_CxDAR
      --  update
      UDA            : Boolean := False;
      --  This bit controls the update of GPDMA_CxSAR from the memory during
      --  the link transfer. 0: no GPDMA_CxSAR update 1: GPDMA_CxSAR update
      USA            : Boolean := False;
      --  This bit controls the update of GPDMA_C1BR1 from the memory during
      --  the link transfer. If UB1 = 0 and if GPDMA_C1LLR is not equal to 0,
      --  the linked-list is not completed. GPDMA_C1BR1.BNDT[15:0] is then
      --  restored to the programmed value after data transfer is completed and
      --  before the link transfer. 0: no GPDMA_C1BR1 update from memory
      --  (GPDMA_C1BR1.BNDT[15:0] restored if any link transfer) 1: GPDMA_C1BR1
      --  update
      UB1            : Boolean := False;
      --  This bit controls the update of GPDMA_C1TR2 from the memory during
      --  the link transfer. 0: no GPDMA_C1TR2 update 1: GPDMA_C1TR2 update
      UT2            : Boolean := False;
      --  This bit controls the update of GPDMA_C1TR1 from the memory during
      --  the link transfer. 0: no GPDMA_C1TR1 update 1: GPDMA_C1TR1 update
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C1LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C2LBAR_LBA_Field is HAL.UInt16;

   --  GPDMA channel 2 linked-list base address register
   type GPDMA_C2LBAR_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  None
      LBA           : GPDMA_C2LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C2LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   --  GPDMA channel 2 flag clear register
   type GPDMA_C2FCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. None 0: no effect 1: corresponding TCF flag cleared
      TCF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding HTF flag cleared
      HTF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding DTEF flag cleared
      DTEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding ULEF flag cleared
      ULEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding USEF flag cleared
      USEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding SUSPF flag cleared
      SUSPF          : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding TOF flag cleared
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C2FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype GPDMA_C2SR_FIFOL_Field is HAL.UInt8;

   --  GPDMA channel 2 status register
   type GPDMA_C2SR_Register is record
      --  Read-only. This idle flag is deasserted by hardware when the channel
      --  is enabled (GPDMA_C2CR.EN = 1) with a valid channel configuration (no
      --  USEF to be immediately reported). This idle flag is asserted after
      --  hard reset or by hardware when the channel is back in idle state (in
      --  suspended or disabled state). 0: channel not in idle state 1: channel
      --  in idle state
      IDLEF          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. A transfer complete event is either a block transfer
      --  complete, a 2D/repeated block transfer complete, or a LLI transfer
      --  complete including the upload of the next LLI if any, or the full
      --  linked-list completion, depending on the transfer complete event mode
      --  (GPDMA_C2TR2.TCEM[1:0]). 0: no transfer complete event 1: a transfer
      --  complete event occurred
      TCF            : Boolean;
      --  Read-only. A half transfer event is either a half block transfer or a
      --  half 2D/repeated block transfer, depending on the transfer complete
      --  event mode (GPDMA_C2TR2.TCEM[1:0]). A half block transfer occurs when
      --  half of the bytes of the source block size (rounded up integer of
      --  GPDMA_C2BR1.BNDT[15:0]/2) has been transferred to the destination. A
      --  half 2D/repeated block transfer occurs when half of the repeated
      --  blocks (rounded up integer of (GPDMA_C2BR1.BRC[10:0]+1)/2)) has been
      --  transferred to the destination. 0: no half transfer event 1: a half
      --  transfer event occurred
      HTF            : Boolean;
      --  Read-only. None 0: no data transfer error event 1: a master bus error
      --  event occurred on a data transfer
      DTEF           : Boolean;
      --  Read-only. None 0: no update link transfer error event 1: a master
      --  bus error event occurred while updating a linked-list register from
      --  memory
      ULEF           : Boolean;
      --  Read-only. None 0: no user setting error event 1: a user setting
      --  error event occurred
      USEF           : Boolean;
      --  Read-only. None 0: no completed suspension event 1: a completed
      --  suspension event occurred
      SUSPF          : Boolean;
      --  Read-only. None 0: no trigger overrun event 1: a trigger overrun
      --  event occurred
      TOF            : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Number of available write beats in the FIFO, in units of
      --  the programmed destination data width (see GPDMA_C2TR1.DDW_LOG2[1:0],
      --  in units of bytes, half-words, or words). Note: After having
      --  suspended an active transfer, the user may need to read FIFOL[7:0],
      --  additionally to GPDMA_C2BR1.BDNT[15:0] and GPDMA_C2BR1.BRC[10:0], to
      --  know how many data have been transferred to the destination. Before
      --  reading, the user may wait for the transfer to be suspended
      --  (GPDMA_C2SR.SUSPF = 1).
      FIFOL          : GPDMA_C2SR_FIFOL_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C2SR_Register use record
      IDLEF          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FIFOL          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C2CR_PRIO_Field is HAL.UInt2;

   --  GPDMA channel 2 control register
   type GPDMA_C2CR_Register is record
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 0. Else: this
      --  bit is deasserted by hardware when there is a transfer error (master
      --  bus error or user setting error) or when there is a channel transfer
      --  complete (channel ready to be configured, for example if LSM = 1 at
      --  the end of a single execution of the LLI). Else, this bit can be
      --  asserted by software. Writing 0 into this EN bit is ignored. 0:
      --  write: ignored, read: channel disabled 1: write: enable channel,
      --  read: channel enabled
      EN             : Boolean := False;
      --  Write-only. This bit is write only. Writing 0 has no impact. Writing
      --  1 implies the reset of the following: the FIFO, the channel internal
      --  state, SUSP and EN bits (whatever is written receptively in bit 2 and
      --  bit 0). The reset is effective when the channel is in steady state,
      --  meaning one of the following: - active channel in suspended state
      --  (GPDMA_C2SR.SUSPF = 1 and GPDMA_C2SR.IDLEF=GPDMA_C2CR.EN = 1) -
      --  channel in disabled state (GPDMA_C2SR.IDLEF = 1 and GPDMA_C2CR.EN =
      --  0). After writing a RESET, to continue using this channel, the user
      --  must explicitly reconfigure the channel including the
      --  hardware-modified configuration registers (GPDMA_C2BR1, GPDMA_CxSAR
      --  and GPDMA_CxDAR) before enabling again the channel (see the
      --  programming sequence in less than xe6
      --  [GPDMA_abort_restart/ID00-1465]/>). 0: no channel reset 1: channel
      --  reset
      RESET          : Boolean := False;
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 2. Else:
      --  Software must write 1 in order to suspend an active channel (channel
      --  with an ongoing GPDMA transfer over its master ports). The software
      --  must write 0 in order to resume a suspended channel, following the
      --  programming sequence detailed in less than xe5
      --  [GPDMA_channel_suspend_and_resume/ID00-1456]/>. 0: write: resume
      --  channel, read: channel not suspended 1: write: suspend channel, read:
      --  channel suspended.
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  None 0: interrupt disabled 1: interrupt enabled
      TCIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      HTIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      DTEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      ULEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      USEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      SUSPIE         : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  First the (possible 1D/repeated) block transfer is executed as
      --  defined by the current internal register file until
      --  GPDMA_C2BR1.BNDT[15:0] = 0 and GPDMA_C2BR1.BRC[10:0] = 0. Secondly
      --  the next linked-list data structure is conditionally uploaded from
      --  memory as defined by GPDMA_C2LLR. Then channel execution is
      --  completed. 0: channel executed for the full linked-list and completed
      --  at the end of the last LLI (GPDMA_C2LLR = 0). The 16 low-significant
      --  bits of the link address are null (LA[15:0] = 0) and all the update
      --  bits are null (UT1 = UB1 = UT2 = USA = UDA = ULL = 0 and UT3 = UB2 =
      --  0). Then GPDMA_C2BR1.BNDT[15:0] = 0 and GPDMA_C2BR1.BRC[10:0] = 0. 1:
      --  channel executed once for the current LLI Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      LSM            : Boolean := False;
      --  This bit is used to allocate the master port for the update of the
      --  GPDMA linked-list registers from the memory. 0: port 0 (AHB)
      --  allocated 1: port 1 (AHB) allocated Note: This bit must be written
      --  when EN = 0. This bit is read-only when EN = 1.
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  None 00: low priority, low weight 01: low priority, mid weight 10:
      --  low priority, high weight 11: high priority Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      PRIO           : GPDMA_C2CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C2CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C2TR1_SDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C2TR1_SBL_1_Field is HAL.UInt6;
   subtype GPDMA_C2TR1_PAM_Field is HAL.UInt2;
   subtype GPDMA_C2TR1_DDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C2TR1_DBL_1_Field is HAL.UInt6;

   --  GPDMA channel 2 transfer register 1
   type GPDMA_C2TR1_Register is record
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and no transfer
      --  is issued. +: A source block size must be a multiple of the source
      --  data width (GPDMA_C2BR1.BNDT[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and no transfer is issued. +: A source
      --  burst transfer must have an aligned address with its data width
      --  (start address GPDMA_CxSAR[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and none transfer is issued.
      SDW_LOG2       : GPDMA_C2TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  The source address, pointed by GPDMA_CxSAR, is kept constant after a
      --  burst beat/single transfer or is incremented by the offset value
      --  corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      SINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  SBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width SDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 2, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      SBL_1          : GPDMA_C2TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  If DDW_LOG2[1:0] = SDW_LOG2[1:0]: if the data width of a burst
      --  destination transfer is equal to the data width of a burst source
      --  transfer, these bits are ignored.
      PAM            : GPDMA_C2TR1_PAM_Field := 16#0#;
      --  If the source data width is shorter than a word, this bit is ignored.
      --  If the source data width is a word: 0: no byte-based exchange within
      --  the unaligned half-word of each source word 1: the two consecutive
      --  bytes within the unaligned half-word of each source word are
      --  exchanged.
      SBx            : Boolean := False;
      --  This bit is used to allocate the master port for the source transfer
      --  0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note: This bit
      --  must be written when EN = 0. This bit is read-only when EN = 1.
      SAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC2 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC2 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC2 = 0. When
      --  GPDMA_SECCFGR.SEC2 is deasserted, this SSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer from the source is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      SSEC           : Boolean := False;
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and none
      --  transfer is issued. +: A destination burst transfer must have an
      --  aligned address with its data width (start address GPDMA_CxDAR[2:0]
      --  and address offset GPDMA_CxTR3.DAO[2:0], versus DDW_LOG2[1:0]).
      --  Otherwise a user setting error is reported and no transfer is issued.
      DDW_LOG2       : GPDMA_C2TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  The destination address, pointed by GPDMA_CxDAR, is kept constant
      --  after a burst beat/single transfer, or is incremented by the offset
      --  value corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      DINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  DBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width DDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 2, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      DBL_1          : GPDMA_C2TR1_DBL_1_Field := 16#0#;
      --  If the destination data size is a byte, this bit is ignored. If the
      --  destination data size is not a byte: 0: no byte-based exchange within
      --  half-word 1: the two consecutive (post PAM) bytes are exchanged in
      --  each destination half-word.
      DBx            : Boolean := False;
      --  If the destination data size is shorter than a word, this bit is
      --  ignored. If the destination data size is a word: 0: no halfword-based
      --  exchanged within word 1: the two consecutive (post PAM) half-words
      --  are exchanged in each destination word.
      DHx            : Boolean := False;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  This bit is used to allocate the master port for the destination
      --  transfer 0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note:
      --  This bit must be written when EN = 0. This bit is read-only when EN =
      --  1.
      DAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC2 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC2 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC2 = 0. When
      --  GPDMA_SECCFGR.SEC2 is deasserted, this DSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer to the destination is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C2TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBx            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBx            at 0 range 26 .. 26;
      DHx            at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C2TR2_REQSEL_Field is HAL.UInt7;
   subtype GPDMA_C2TR2_TRIGM_Field is HAL.UInt2;
   subtype GPDMA_C2TR2_TRIGSEL_Field is HAL.UInt6;
   subtype GPDMA_C2TR2_TRIGPOL_Field is HAL.UInt2;
   subtype GPDMA_C2TR2_TCEM_Field is HAL.UInt2;

   --  GPDMA channel 2 transfer register 2
   type GPDMA_C2TR2_Register is record
      --  These bits are ignored if channel 2 is activated (GPDMA_C2CR.EN
      --  asserted) with SWREQ=1 (software request for a memory-to-memory
      --  transfer). Else, the selected hardware request is internally taken
      --  into account as per less than xe4 [GPDMA_requests]/>. The user must
      --  not assign a same input hardware request (same REQSEL[6:0] value) to
      --  different active GPDMA channels (GPDMA_C2CR.EN = 1 and
      --  GPDMA_C2TR2.SWREQ = 0 for these channels). GPDMA is not intended to
      --  hardware support the case of simultaneous enabled channels
      --  incorrectly configured with a same hardware peripheral request
      --  signal, and there is no user setting error reporting.
      REQSEL         : GPDMA_C2TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  This bit is internally taken into account when GPDMA_C2CR.EN is
      --  asserted. 0: no software request. The selected hardware request
      --  REQSEL[6:0] is taken into account. 1: software request for a
      --  memory-to-memory transfer. The default selected hardware request as
      --  per REQSEL[6:0] is ignored.
      SWREQ          : Boolean := False;
      --  This bit is ignored if channel 2 is activated (GPDMA_C2CR.EN
      --  asserted) with SWREQ = 1 (software request for a memory-to-memory
      --  transfer). Else: 0: selected hardware request driven by a source
      --  peripheral (request signal taken into account by the GPDMA transfer
      --  scheduler over the source/read port) 1: selected hardware request
      --  driven by a destination peripheral (request signal taken into account
      --  by the GPDMA transfer scheduler over the destination/write port)
      --  Note: If the channel 2 is activated (GPDMA_C2CR.EN is asserted) with
      --  SWREQ = 0 and PFREQ = 1 (peripheral hardware request with peripheral
      --  flow-control mode), any software assertion to this DREQ bit is
      --  ignored: in peripheral flow-control mode, only a peripheral-to-memory
      --  transfer is supported.
      DREQ           : Boolean := False;
      --  If the channel 2 is activated (GPDMA_C2CR.EN asserted) with SWREQ = 1
      --  (software request for a memory-to-memory transfer), this bit is
      --  ignored. Else: 0: the selected hardware request is driven by a
      --  peripheral with a hardware request/acknowledge protocol at a burst
      --  level. 1: the selected hardware request is driven by a peripheral
      --  with a hardware request/acknowledge protocol at a block level (see
      --  less than xe4 [GPDMA_requests]/>).
      BREQ           : Boolean := False;
      --  Caution: If a given channel 2 is not implemented with this feature,
      --  this bit is reserved and PFREQ is not present (see less than xe1
      --  [GPDMA_channels]/> for the list of the implemented channels with this
      --  feature).
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  These bits define the transfer granularity for its conditioning by
      --  the trigger. If the channel 2 is enabled (GPDMA_C2CR.EN asserted)
      --  with TRIGPOL[1:0] = 00 or 11, these TRIGM[1:0] bits are ignored.
      --  Else, a GPDMA transfer is conditioned by at least one trigger hit:
      --  00: at block level: the first burst read of each block transfer is
      --  conditioned by one hit trigger (channel 2 = 12 to 15, for each block
      --  if a 2D/repeated block is configured with GPDMA_C2BR1.BRC[10:0] is
      --  not equal to 0). 10: at link level: a LLI link transfer is
      --  conditioned by one hit trigger. The LLI data transfer (if any) is not
      --  conditioned. 11: at programmed burst level: If SWREQ = 1, each
      --  programmed burst read is conditioned by one hit trigger. If SWREQ =
      --  0, each programmed burst that is requested by the selected
      --  peripheral, is conditioned by one hit trigger. - If the peripheral is
      --  programmed as a source (DREQ = 0) of the LLI data transfer, each
      --  programmed burst read is conditioned. - If the peripheral is
      --  programmed as a destination (DREQ = 1) of the LLI data transfer, each
      --  programmed burst write is conditioned. The first memory burst read of
      --  a (possibly 2D/repeated) block, also named as the first ready
      --  FIFO-based source burst, is gated by the occurrence of both the
      --  hardware request and the first trigger hit.01: channel 2 = 0 to ,
      --  same as 00; channel 2 , at 2D/repeated block level. The first burst
      --  read of a 2D/repeated block transfer is conditioned by one hit
      --  trigger. The GPDMA monitoring of a trigger for channel 2 is started
      --  when the channel is enabled/loaded with a new active trigger
      --  configuration: rising or falling edge on a selected trigger
      --  (TRIGPOL[1:0] = 01 or respectively TRIGPOL[1:0]=10). The monitoring
      --  of this trigger is kept active during the triggered and uncompleted
      --  (data or link) transfer; and if a new trigger is detected then, this
      --  hit is internally memorized to grant the next transfer, as long as
      --  the defined rising or falling edge is not modified, and the
      --  TRIGSEL[5:0] is not modified, and the channel is enabled.
      --  Transferring a next LLIn+1 that updates the GPDMA_C2TR2 with a new
      --  value for any of TRIGSEL[5:0] or TRIGPOL[1:0], resets the monitoring,
      --  trashing the memorized hit of the formerly defined LLIn trigger.
      --  After a first new trigger hitn+1 is memorized, if another second
      --  trigger hitn+2 is detected and if the hitn triggered transfer is
      --  still not completed, hitn+2 is lost and not memorized.memorized. A
      --  trigger overrun flag is reported (GPDMA_C2SR.TOF=1), and an interrupt
      --  is generated if enabled (GPDMA_C2CR.TOIE = 1). The channel is not
      --  automatically disabled by hardware due to a trigger overrun. Note:
      --  When the source block size is not a multiple of the source burst size
      --  and is a multiple of the source data width, then the last programmed
      --  source burst is not completed and is internally shorten to match the
      --  block size. In this case, if TRIGM[1:0] = 11 and (SWREQ = 1 or (SWREQ
      --  = 0 and DREQ = 0)), the shortened burst transfer (by singles or/and
      --  by bursts of lower length) is conditioned once by the trigger. +:
      --  When the programmed destination burst is internally shortened by
      --  singles or/and by bursts of lower length (versus FIFO size, versus
      --  block size, 1-Kbyte boundary address crossing): if the trigger is
      --  conditioning the programmed destination burst (if TRIGM[1:0] = 11 and
      --  SWREQ = 0 and DREQ = 1), this shortened destination burst transfer is
      --  conditioned once by the trigger.
      TRIGM          : GPDMA_C2TR2_TRIGM_Field := 16#0#;
      --  These bits select the trigger event input of the GPDMA transfer (as
      --  per less than xe3 [GPDMA_triggers]/>), with anactive trigger event if
      --  TRIGPOL[1:0] is not equal to 00.
      TRIGSEL        : GPDMA_C2TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  These bits define the polarity of the selected trigger event input
      --  defined by TRIGSEL[5:0]. 00: no trigger (masked trigger event) 01:
      --  trigger on the rising edge 10: trigger on the falling edge 11: same
      --  as 00
      TRIGPOL        : GPDMA_C2TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  These bits define the transfer granularity for the transfer complete
      --  and half transfer complete events generation. 00: at block level
      --  (when GPDMA_C2BR1.BNDT[15:0] = 0): the complete (and the half)
      --  transfer event is generated at the (respectively half of the) end of
      --  a block. 01: channel 2 (0 to ), same as 00, channel 2 , at
      --  2D/repeated block level (when GPDMA_C2BR1.BRC[10:0] = 0 and
      --  GPDMA_C2BR1.BNDT[15:0] = 0). The complete (and the half) transfer
      --  event is generated at the end (respectively half of the end) of the
      --  2D/repeated block. 10: at LLI level: the complete transfer event is
      --  generated at the end of the LLI transfer, including the update of the
      --  LLI if any. The half transfer event is generated at the half of the
      --  LLI data transfer. The LLI data transfer is a block transfer or a
      --  2D/repeated block transfer for channel 2 , if any data transfer. 11:
      --  at channel level: the complete transfer event is generated at the end
      --  of the last LLI transfer. The half transfer event is generated at the
      --  half of the data transfer of the last LLI. The last LLI updates the
      --  link address GPDMA_C2LLR.LA[15:2] to zero and clears all the
      --  GPDMA_C2LLR update bits (UT1, UT2, UB1, USA, UDA and ULL, plus UT3
      --  and UB2). If the channel transfer is continuous/infinite, no event is
      --  generated. Note: If the initial LLI0 data transfer is null/void
      --  (directly programmed by the internal register file with
      --  GPDMA_C2BR1.BNDT[15:0] = 0), then neither the complete transfer event
      --  nor the half transfer event is generated. +: If the initial LLI0 data
      --  transfer is null/void (directly programmed by the internal register
      --  file with GPDMA_C2BR1.BNDT[15:0] = 0), then neither the complete
      --  transfer event nor the half transfer event is generated. +: If the
      --  initial LLI0 data transfer is null/void (directly programmed by the
      --  internal register file with GPDMA_C2BR1.BNDT[15:0] = 0), then the
      --  half transfer event is not generated, and the transfer complete event
      --  is generated when is completed the loading of the LLI1.
      TCEM           : GPDMA_C2TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C2TR2_Register use record
      REQSEL         at 0 range 0 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype GPDMA_C2BR1_BNDT_Field is HAL.UInt16;

   --  GPDMA channel 2 block register 1
   type GPDMA_C2BR1_Register is record
      --  Block size transferred from the source. When the channel is enabled,
      --  this field becomes read-only and is decremented, indicating the
      --  remaining number of data items in the current source block to be
      --  transferred. BNDT[15:0] is programmed in number of bytes, maximum
      --  source block size is 64 Kbytes -1. Once the last data transfer is
      --  completed (BNDT[15:0] = 0): - if GPDMA_C2LLR.UB1 = 1, this field is
      --  updated by the LLI in the memory. - if GPDMA_C2LLR.UB1 = 0 and if
      --  there is at least one not null Uxx update bit, this field is
      --  internally restored to the programmed value. - if all GPDMA_C2LLR.Uxx
      --  = 0 and if GPDMA_C2LLR.LA[15:0] is not equal to 0, this field is
      --  internally restored to the programmed value (infinite/continuous last
      --  LLI). - if GPDMA_C2LLR = 0, this field is kept as zero following the
      --  last LLI data transfer. Note: A non-null source block size must be a
      --  multiple of the source data width (BNDT[2:0] versus
      --  GPDMA_C2TR1.SDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued. +: When configured in packing mode
      --  (GPDMA_C2TR1.PAM[1] = 1 and destination data width different from
      --  source data width), a non-null source block size must be a multiple
      --  of the destination data width (BNDT[2:0] versus
      --  GPDMA_C2TR1.DDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued.
      BNDT           : GPDMA_C2BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C2BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPDMA_C2LLR_LA_Field is HAL.UInt14;

   --  GPDMA channel 2 linked-list address register
   type GPDMA_C2LLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  If UT1 = UT2 = UB1 = USA = UDA = ULL = 0 and if LA[15:20] = 0, the
      --  current LLI is the last one. The channel transfer is completed
      --  without any update of the linked-list GPDMA register file. Else, this
      --  field is the pointer to the memory address offset from which the next
      --  linked-list data structure is automatically fetched from, once the
      --  data transfer is completed, in order to conditionally update the
      --  linked-list GPDMA internal register file (GPDMA_C2TR1, GPDMA_C2TR2,
      --  GPDMA_C2BR1, GPDMA_CxSAR, GPDMA_CxDAR and GPDMA_C2LLR). Note: The
      --  user must program the pointer to be 32-bit aligned. The two
      --  low-significant bits are write ignored.
      LA             : GPDMA_C2LLR_LA_Field := 16#0#;
      --  This bit is used to control the update of GPDMA_C2LLR from the memory
      --  during the link transfer. 0: no GPDMA_C2LLR update 1: GPDMA_C2LLR
      --  update
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : HAL.UInt10 := 16#0#;
      --  This bit is used to control the update of GPDMA_CxDAR from the memory
      --  during the link transfer. 0: no GPDMA_CxDAR update 1: GPDMA_CxDAR
      --  update
      UDA            : Boolean := False;
      --  This bit controls the update of GPDMA_CxSAR from the memory during
      --  the link transfer. 0: no GPDMA_CxSAR update 1: GPDMA_CxSAR update
      USA            : Boolean := False;
      --  This bit controls the update of GPDMA_C2BR1 from the memory during
      --  the link transfer. If UB1 = 0 and if GPDMA_C2LLR is not equal to 0,
      --  the linked-list is not completed. GPDMA_C2BR1.BNDT[15:0] is then
      --  restored to the programmed value after data transfer is completed and
      --  before the link transfer. 0: no GPDMA_C2BR1 update from memory
      --  (GPDMA_C2BR1.BNDT[15:0] restored if any link transfer) 1: GPDMA_C2BR1
      --  update
      UB1            : Boolean := False;
      --  This bit controls the update of GPDMA_C2TR2 from the memory during
      --  the link transfer. 0: no GPDMA_C2TR2 update 1: GPDMA_C2TR2 update
      UT2            : Boolean := False;
      --  This bit controls the update of GPDMA_C2TR1 from the memory during
      --  the link transfer. 0: no GPDMA_C2TR1 update 1: GPDMA_C2TR1 update
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C2LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C3LBAR_LBA_Field is HAL.UInt16;

   --  GPDMA channel 3 linked-list base address register
   type GPDMA_C3LBAR_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  None
      LBA           : GPDMA_C3LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C3LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   --  GPDMA channel 3 flag clear register
   type GPDMA_C3FCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. None 0: no effect 1: corresponding TCF flag cleared
      TCF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding HTF flag cleared
      HTF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding DTEF flag cleared
      DTEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding ULEF flag cleared
      ULEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding USEF flag cleared
      USEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding SUSPF flag cleared
      SUSPF          : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding TOF flag cleared
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C3FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype GPDMA_C3SR_FIFOL_Field is HAL.UInt8;

   --  GPDMA channel 3 status register
   type GPDMA_C3SR_Register is record
      --  Read-only. This idle flag is deasserted by hardware when the channel
      --  is enabled (GPDMA_C3CR.EN = 1) with a valid channel configuration (no
      --  USEF to be immediately reported). This idle flag is asserted after
      --  hard reset or by hardware when the channel is back in idle state (in
      --  suspended or disabled state). 0: channel not in idle state 1: channel
      --  in idle state
      IDLEF          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. A transfer complete event is either a block transfer
      --  complete, a 2D/repeated block transfer complete, or a LLI transfer
      --  complete including the upload of the next LLI if any, or the full
      --  linked-list completion, depending on the transfer complete event mode
      --  (GPDMA_C3TR2.TCEM[1:0]). 0: no transfer complete event 1: a transfer
      --  complete event occurred
      TCF            : Boolean;
      --  Read-only. A half transfer event is either a half block transfer or a
      --  half 2D/repeated block transfer, depending on the transfer complete
      --  event mode (GPDMA_C3TR2.TCEM[1:0]). A half block transfer occurs when
      --  half of the bytes of the source block size (rounded up integer of
      --  GPDMA_C3BR1.BNDT[15:0]/2) has been transferred to the destination. A
      --  half 2D/repeated block transfer occurs when half of the repeated
      --  blocks (rounded up integer of (GPDMA_C3BR1.BRC[10:0]+1)/2)) has been
      --  transferred to the destination. 0: no half transfer event 1: a half
      --  transfer event occurred
      HTF            : Boolean;
      --  Read-only. None 0: no data transfer error event 1: a master bus error
      --  event occurred on a data transfer
      DTEF           : Boolean;
      --  Read-only. None 0: no update link transfer error event 1: a master
      --  bus error event occurred while updating a linked-list register from
      --  memory
      ULEF           : Boolean;
      --  Read-only. None 0: no user setting error event 1: a user setting
      --  error event occurred
      USEF           : Boolean;
      --  Read-only. None 0: no completed suspension event 1: a completed
      --  suspension event occurred
      SUSPF          : Boolean;
      --  Read-only. None 0: no trigger overrun event 1: a trigger overrun
      --  event occurred
      TOF            : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Number of available write beats in the FIFO, in units of
      --  the programmed destination data width (see GPDMA_C3TR1.DDW_LOG2[1:0],
      --  in units of bytes, half-words, or words). Note: After having
      --  suspended an active transfer, the user may need to read FIFOL[7:0],
      --  additionally to GPDMA_C3BR1.BDNT[15:0] and GPDMA_C3BR1.BRC[10:0], to
      --  know how many data have been transferred to the destination. Before
      --  reading, the user may wait for the transfer to be suspended
      --  (GPDMA_C3SR.SUSPF = 1).
      FIFOL          : GPDMA_C3SR_FIFOL_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C3SR_Register use record
      IDLEF          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FIFOL          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C3CR_PRIO_Field is HAL.UInt2;

   --  GPDMA channel 3 control register
   type GPDMA_C3CR_Register is record
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 0. Else: this
      --  bit is deasserted by hardware when there is a transfer error (master
      --  bus error or user setting error) or when there is a channel transfer
      --  complete (channel ready to be configured, for example if LSM = 1 at
      --  the end of a single execution of the LLI). Else, this bit can be
      --  asserted by software. Writing 0 into this EN bit is ignored. 0:
      --  write: ignored, read: channel disabled 1: write: enable channel,
      --  read: channel enabled
      EN             : Boolean := False;
      --  Write-only. This bit is write only. Writing 0 has no impact. Writing
      --  1 implies the reset of the following: the FIFO, the channel internal
      --  state, SUSP and EN bits (whatever is written receptively in bit 2 and
      --  bit 0). The reset is effective when the channel is in steady state,
      --  meaning one of the following: - active channel in suspended state
      --  (GPDMA_C3SR.SUSPF = 1 and GPDMA_C3SR.IDLEF=GPDMA_C3CR.EN = 1) -
      --  channel in disabled state (GPDMA_C3SR.IDLEF = 1 and GPDMA_C3CR.EN =
      --  0). After writing a RESET, to continue using this channel, the user
      --  must explicitly reconfigure the channel including the
      --  hardware-modified configuration registers (GPDMA_C3BR1, GPDMA_CxSAR
      --  and GPDMA_CxDAR) before enabling again the channel (see the
      --  programming sequence in less than xe6
      --  [GPDMA_abort_restart/ID00-1465]/>). 0: no channel reset 1: channel
      --  reset
      RESET          : Boolean := False;
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 2. Else:
      --  Software must write 1 in order to suspend an active channel (channel
      --  with an ongoing GPDMA transfer over its master ports). The software
      --  must write 0 in order to resume a suspended channel, following the
      --  programming sequence detailed in less than xe5
      --  [GPDMA_channel_suspend_and_resume/ID00-1456]/>. 0: write: resume
      --  channel, read: channel not suspended 1: write: suspend channel, read:
      --  channel suspended.
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  None 0: interrupt disabled 1: interrupt enabled
      TCIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      HTIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      DTEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      ULEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      USEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      SUSPIE         : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  First the (possible 1D/repeated) block transfer is executed as
      --  defined by the current internal register file until
      --  GPDMA_C3BR1.BNDT[15:0] = 0 and GPDMA_C3BR1.BRC[10:0] = 0. Secondly
      --  the next linked-list data structure is conditionally uploaded from
      --  memory as defined by GPDMA_C3LLR. Then channel execution is
      --  completed. 0: channel executed for the full linked-list and completed
      --  at the end of the last LLI (GPDMA_C3LLR = 0). The 16 low-significant
      --  bits of the link address are null (LA[15:0] = 0) and all the update
      --  bits are null (UT1 = UB1 = UT2 = USA = UDA = ULL = 0 and UT3 = UB2 =
      --  0). Then GPDMA_C3BR1.BNDT[15:0] = 0 and GPDMA_C3BR1.BRC[10:0] = 0. 1:
      --  channel executed once for the current LLI Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      LSM            : Boolean := False;
      --  This bit is used to allocate the master port for the update of the
      --  GPDMA linked-list registers from the memory. 0: port 0 (AHB)
      --  allocated 1: port 1 (AHB) allocated Note: This bit must be written
      --  when EN = 0. This bit is read-only when EN = 1.
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  None 00: low priority, low weight 01: low priority, mid weight 10:
      --  low priority, high weight 11: high priority Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      PRIO           : GPDMA_C3CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C3CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C3TR1_SDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C3TR1_SBL_1_Field is HAL.UInt6;
   subtype GPDMA_C3TR1_PAM_Field is HAL.UInt2;
   subtype GPDMA_C3TR1_DDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C3TR1_DBL_1_Field is HAL.UInt6;

   --  GPDMA channel 3 transfer register 1
   type GPDMA_C3TR1_Register is record
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and no transfer
      --  is issued. +: A source block size must be a multiple of the source
      --  data width (GPDMA_C3BR1.BNDT[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and no transfer is issued. +: A source
      --  burst transfer must have an aligned address with its data width
      --  (start address GPDMA_CxSAR[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and none transfer is issued.
      SDW_LOG2       : GPDMA_C3TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  The source address, pointed by GPDMA_CxSAR, is kept constant after a
      --  burst beat/single transfer or is incremented by the offset value
      --  corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      SINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  SBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width SDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 3, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      SBL_1          : GPDMA_C3TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  If DDW_LOG2[1:0] = SDW_LOG2[1:0]: if the data width of a burst
      --  destination transfer is equal to the data width of a burst source
      --  transfer, these bits are ignored.
      PAM            : GPDMA_C3TR1_PAM_Field := 16#0#;
      --  If the source data width is shorter than a word, this bit is ignored.
      --  If the source data width is a word: 0: no byte-based exchange within
      --  the unaligned half-word of each source word 1: the two consecutive
      --  bytes within the unaligned half-word of each source word are
      --  exchanged.
      SBx            : Boolean := False;
      --  This bit is used to allocate the master port for the source transfer
      --  0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note: This bit
      --  must be written when EN = 0. This bit is read-only when EN = 1.
      SAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC3 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC3 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC3 = 0. When
      --  GPDMA_SECCFGR.SEC3 is deasserted, this SSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer from the source is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      SSEC           : Boolean := False;
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and none
      --  transfer is issued. +: A destination burst transfer must have an
      --  aligned address with its data width (start address GPDMA_CxDAR[2:0]
      --  and address offset GPDMA_CxTR3.DAO[2:0], versus DDW_LOG2[1:0]).
      --  Otherwise a user setting error is reported and no transfer is issued.
      DDW_LOG2       : GPDMA_C3TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  The destination address, pointed by GPDMA_CxDAR, is kept constant
      --  after a burst beat/single transfer, or is incremented by the offset
      --  value corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      DINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  DBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width DDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 3, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      DBL_1          : GPDMA_C3TR1_DBL_1_Field := 16#0#;
      --  If the destination data size is a byte, this bit is ignored. If the
      --  destination data size is not a byte: 0: no byte-based exchange within
      --  half-word 1: the two consecutive (post PAM) bytes are exchanged in
      --  each destination half-word.
      DBx            : Boolean := False;
      --  If the destination data size is shorter than a word, this bit is
      --  ignored. If the destination data size is a word: 0: no halfword-based
      --  exchanged within word 1: the two consecutive (post PAM) half-words
      --  are exchanged in each destination word.
      DHx            : Boolean := False;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  This bit is used to allocate the master port for the destination
      --  transfer 0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note:
      --  This bit must be written when EN = 0. This bit is read-only when EN =
      --  1.
      DAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC3 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC3 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC3 = 0. When
      --  GPDMA_SECCFGR.SEC3 is deasserted, this DSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer to the destination is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C3TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBx            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBx            at 0 range 26 .. 26;
      DHx            at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C3TR2_REQSEL_Field is HAL.UInt7;
   subtype GPDMA_C3TR2_TRIGM_Field is HAL.UInt2;
   subtype GPDMA_C3TR2_TRIGSEL_Field is HAL.UInt6;
   subtype GPDMA_C3TR2_TRIGPOL_Field is HAL.UInt2;
   subtype GPDMA_C3TR2_TCEM_Field is HAL.UInt2;

   --  GPDMA channel 3 transfer register 2
   type GPDMA_C3TR2_Register is record
      --  These bits are ignored if channel 3 is activated (GPDMA_C3CR.EN
      --  asserted) with SWREQ=1 (software request for a memory-to-memory
      --  transfer). Else, the selected hardware request is internally taken
      --  into account as per less than xe4 [GPDMA_requests]/>. The user must
      --  not assign a same input hardware request (same REQSEL[6:0] value) to
      --  different active GPDMA channels (GPDMA_C3CR.EN = 1 and
      --  GPDMA_C3TR2.SWREQ = 0 for these channels). GPDMA is not intended to
      --  hardware support the case of simultaneous enabled channels
      --  incorrectly configured with a same hardware peripheral request
      --  signal, and there is no user setting error reporting.
      REQSEL         : GPDMA_C3TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  This bit is internally taken into account when GPDMA_C3CR.EN is
      --  asserted. 0: no software request. The selected hardware request
      --  REQSEL[6:0] is taken into account. 1: software request for a
      --  memory-to-memory transfer. The default selected hardware request as
      --  per REQSEL[6:0] is ignored.
      SWREQ          : Boolean := False;
      --  This bit is ignored if channel 3 is activated (GPDMA_C3CR.EN
      --  asserted) with SWREQ = 1 (software request for a memory-to-memory
      --  transfer). Else: 0: selected hardware request driven by a source
      --  peripheral (request signal taken into account by the GPDMA transfer
      --  scheduler over the source/read port) 1: selected hardware request
      --  driven by a destination peripheral (request signal taken into account
      --  by the GPDMA transfer scheduler over the destination/write port)
      --  Note: If the channel 3 is activated (GPDMA_C3CR.EN is asserted) with
      --  SWREQ = 0 and PFREQ = 1 (peripheral hardware request with peripheral
      --  flow-control mode), any software assertion to this DREQ bit is
      --  ignored: in peripheral flow-control mode, only a peripheral-to-memory
      --  transfer is supported.
      DREQ           : Boolean := False;
      --  If the channel 3 is activated (GPDMA_C3CR.EN asserted) with SWREQ = 1
      --  (software request for a memory-to-memory transfer), this bit is
      --  ignored. Else: 0: the selected hardware request is driven by a
      --  peripheral with a hardware request/acknowledge protocol at a burst
      --  level. 1: the selected hardware request is driven by a peripheral
      --  with a hardware request/acknowledge protocol at a block level (see
      --  less than xe4 [GPDMA_requests]/>).
      BREQ           : Boolean := False;
      --  Caution: If a given channel 3 is not implemented with this feature,
      --  this bit is reserved and PFREQ is not present (see less than xe1
      --  [GPDMA_channels]/> for the list of the implemented channels with this
      --  feature).
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  These bits define the transfer granularity for its conditioning by
      --  the trigger. If the channel 3 is enabled (GPDMA_C3CR.EN asserted)
      --  with TRIGPOL[1:0] = 00 or 11, these TRIGM[1:0] bits are ignored.
      --  Else, a GPDMA transfer is conditioned by at least one trigger hit:
      --  00: at block level: the first burst read of each block transfer is
      --  conditioned by one hit trigger (channel 3 = 12 to 15, for each block
      --  if a 2D/repeated block is configured with GPDMA_C3BR1.BRC[10:0] is
      --  not equal to 0). 10: at link level: a LLI link transfer is
      --  conditioned by one hit trigger. The LLI data transfer (if any) is not
      --  conditioned. 11: at programmed burst level: If SWREQ = 1, each
      --  programmed burst read is conditioned by one hit trigger. If SWREQ =
      --  0, each programmed burst that is requested by the selected
      --  peripheral, is conditioned by one hit trigger. - If the peripheral is
      --  programmed as a source (DREQ = 0) of the LLI data transfer, each
      --  programmed burst read is conditioned. - If the peripheral is
      --  programmed as a destination (DREQ = 1) of the LLI data transfer, each
      --  programmed burst write is conditioned. The first memory burst read of
      --  a (possibly 2D/repeated) block, also named as the first ready
      --  FIFO-based source burst, is gated by the occurrence of both the
      --  hardware request and the first trigger hit.01: channel 3 = 0 to ,
      --  same as 00; channel 3 , at 2D/repeated block level. The first burst
      --  read of a 2D/repeated block transfer is conditioned by one hit
      --  trigger. The GPDMA monitoring of a trigger for channel 3 is started
      --  when the channel is enabled/loaded with a new active trigger
      --  configuration: rising or falling edge on a selected trigger
      --  (TRIGPOL[1:0] = 01 or respectively TRIGPOL[1:0]=10). The monitoring
      --  of this trigger is kept active during the triggered and uncompleted
      --  (data or link) transfer; and if a new trigger is detected then, this
      --  hit is internally memorized to grant the next transfer, as long as
      --  the defined rising or falling edge is not modified, and the
      --  TRIGSEL[5:0] is not modified, and the channel is enabled.
      --  Transferring a next LLIn+1 that updates the GPDMA_C3TR2 with a new
      --  value for any of TRIGSEL[5:0] or TRIGPOL[1:0], resets the monitoring,
      --  trashing the memorized hit of the formerly defined LLIn trigger.
      --  After a first new trigger hitn+1 is memorized, if another second
      --  trigger hitn+2 is detected and if the hitn triggered transfer is
      --  still not completed, hitn+2 is lost and not memorized.memorized. A
      --  trigger overrun flag is reported (GPDMA_C3SR.TOF=1), and an interrupt
      --  is generated if enabled (GPDMA_C3CR.TOIE = 1). The channel is not
      --  automatically disabled by hardware due to a trigger overrun. Note:
      --  When the source block size is not a multiple of the source burst size
      --  and is a multiple of the source data width, then the last programmed
      --  source burst is not completed and is internally shorten to match the
      --  block size. In this case, if TRIGM[1:0] = 11 and (SWREQ = 1 or (SWREQ
      --  = 0 and DREQ = 0)), the shortened burst transfer (by singles or/and
      --  by bursts of lower length) is conditioned once by the trigger. +:
      --  When the programmed destination burst is internally shortened by
      --  singles or/and by bursts of lower length (versus FIFO size, versus
      --  block size, 1-Kbyte boundary address crossing): if the trigger is
      --  conditioning the programmed destination burst (if TRIGM[1:0] = 11 and
      --  SWREQ = 0 and DREQ = 1), this shortened destination burst transfer is
      --  conditioned once by the trigger.
      TRIGM          : GPDMA_C3TR2_TRIGM_Field := 16#0#;
      --  These bits select the trigger event input of the GPDMA transfer (as
      --  per less than xe3 [GPDMA_triggers]/>), with anactive trigger event if
      --  TRIGPOL[1:0] is not equal to 00.
      TRIGSEL        : GPDMA_C3TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  These bits define the polarity of the selected trigger event input
      --  defined by TRIGSEL[5:0]. 00: no trigger (masked trigger event) 01:
      --  trigger on the rising edge 10: trigger on the falling edge 11: same
      --  as 00
      TRIGPOL        : GPDMA_C3TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  These bits define the transfer granularity for the transfer complete
      --  and half transfer complete events generation. 00: at block level
      --  (when GPDMA_C3BR1.BNDT[15:0] = 0): the complete (and the half)
      --  transfer event is generated at the (respectively half of the) end of
      --  a block. 01: channel 3 (0 to ), same as 00, channel 3 , at
      --  2D/repeated block level (when GPDMA_C3BR1.BRC[10:0] = 0 and
      --  GPDMA_C3BR1.BNDT[15:0] = 0). The complete (and the half) transfer
      --  event is generated at the end (respectively half of the end) of the
      --  2D/repeated block. 10: at LLI level: the complete transfer event is
      --  generated at the end of the LLI transfer, including the update of the
      --  LLI if any. The half transfer event is generated at the half of the
      --  LLI data transfer. The LLI data transfer is a block transfer or a
      --  2D/repeated block transfer for channel 3 , if any data transfer. 11:
      --  at channel level: the complete transfer event is generated at the end
      --  of the last LLI transfer. The half transfer event is generated at the
      --  half of the data transfer of the last LLI. The last LLI updates the
      --  link address GPDMA_C3LLR.LA[15:2] to zero and clears all the
      --  GPDMA_C3LLR update bits (UT1, UT2, UB1, USA, UDA and ULL, plus UT3
      --  and UB2). If the channel transfer is continuous/infinite, no event is
      --  generated. Note: If the initial LLI0 data transfer is null/void
      --  (directly programmed by the internal register file with
      --  GPDMA_C3BR1.BNDT[15:0] = 0), then neither the complete transfer event
      --  nor the half transfer event is generated. +: If the initial LLI0 data
      --  transfer is null/void (directly programmed by the internal register
      --  file with GPDMA_C3BR1.BNDT[15:0] = 0), then neither the complete
      --  transfer event nor the half transfer event is generated. +: If the
      --  initial LLI0 data transfer is null/void (directly programmed by the
      --  internal register file with GPDMA_C3BR1.BNDT[15:0] = 0), then the
      --  half transfer event is not generated, and the transfer complete event
      --  is generated when is completed the loading of the LLI1.
      TCEM           : GPDMA_C3TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C3TR2_Register use record
      REQSEL         at 0 range 0 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype GPDMA_C3BR1_BNDT_Field is HAL.UInt16;

   --  GPDMA channel 3 block register 1
   type GPDMA_C3BR1_Register is record
      --  Block size transferred from the source. When the channel is enabled,
      --  this field becomes read-only and is decremented, indicating the
      --  remaining number of data items in the current source block to be
      --  transferred. BNDT[15:0] is programmed in number of bytes, maximum
      --  source block size is 64 Kbytes -1. Once the last data transfer is
      --  completed (BNDT[15:0] = 0): - if GPDMA_C3LLR.UB1 = 1, this field is
      --  updated by the LLI in the memory. - if GPDMA_C3LLR.UB1 = 0 and if
      --  there is at least one not null Uxx update bit, this field is
      --  internally restored to the programmed value. - if all GPDMA_C3LLR.Uxx
      --  = 0 and if GPDMA_C3LLR.LA[15:0] is not equal to 0, this field is
      --  internally restored to the programmed value (infinite/continuous last
      --  LLI). - if GPDMA_C3LLR = 0, this field is kept as zero following the
      --  last LLI data transfer. Note: A non-null source block size must be a
      --  multiple of the source data width (BNDT[2:0] versus
      --  GPDMA_C3TR1.SDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued. +: When configured in packing mode
      --  (GPDMA_C3TR1.PAM[1] = 1 and destination data width different from
      --  source data width), a non-null source block size must be a multiple
      --  of the destination data width (BNDT[2:0] versus
      --  GPDMA_C3TR1.DDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued.
      BNDT           : GPDMA_C3BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C3BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPDMA_C3LLR_LA_Field is HAL.UInt14;

   --  GPDMA channel 3 linked-list address register
   type GPDMA_C3LLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  If UT1 = UT2 = UB1 = USA = UDA = ULL = 0 and if LA[15:20] = 0, the
      --  current LLI is the last one. The channel transfer is completed
      --  without any update of the linked-list GPDMA register file. Else, this
      --  field is the pointer to the memory address offset from which the next
      --  linked-list data structure is automatically fetched from, once the
      --  data transfer is completed, in order to conditionally update the
      --  linked-list GPDMA internal register file (GPDMA_C3TR1, GPDMA_C3TR2,
      --  GPDMA_C3BR1, GPDMA_CxSAR, GPDMA_CxDAR and GPDMA_C3LLR). Note: The
      --  user must program the pointer to be 32-bit aligned. The two
      --  low-significant bits are write ignored.
      LA             : GPDMA_C3LLR_LA_Field := 16#0#;
      --  This bit is used to control the update of GPDMA_C3LLR from the memory
      --  during the link transfer. 0: no GPDMA_C3LLR update 1: GPDMA_C3LLR
      --  update
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : HAL.UInt10 := 16#0#;
      --  This bit is used to control the update of GPDMA_CxDAR from the memory
      --  during the link transfer. 0: no GPDMA_CxDAR update 1: GPDMA_CxDAR
      --  update
      UDA            : Boolean := False;
      --  This bit controls the update of GPDMA_CxSAR from the memory during
      --  the link transfer. 0: no GPDMA_CxSAR update 1: GPDMA_CxSAR update
      USA            : Boolean := False;
      --  This bit controls the update of GPDMA_C3BR1 from the memory during
      --  the link transfer. If UB1 = 0 and if GPDMA_C3LLR is not equal to 0,
      --  the linked-list is not completed. GPDMA_C3BR1.BNDT[15:0] is then
      --  restored to the programmed value after data transfer is completed and
      --  before the link transfer. 0: no GPDMA_C3BR1 update from memory
      --  (GPDMA_C3BR1.BNDT[15:0] restored if any link transfer) 1: GPDMA_C3BR1
      --  update
      UB1            : Boolean := False;
      --  This bit controls the update of GPDMA_C3TR2 from the memory during
      --  the link transfer. 0: no GPDMA_C3TR2 update 1: GPDMA_C3TR2 update
      UT2            : Boolean := False;
      --  This bit controls the update of GPDMA_C3TR1 from the memory during
      --  the link transfer. 0: no GPDMA_C3TR1 update 1: GPDMA_C3TR1 update
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C3LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C4LBAR_LBA_Field is HAL.UInt16;

   --  GPDMA channel 4 linked-list base address register
   type GPDMA_C4LBAR_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  None
      LBA           : GPDMA_C4LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C4LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   --  GPDMA channel 4 flag clear register
   type GPDMA_C4FCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. None 0: no effect 1: corresponding TCF flag cleared
      TCF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding HTF flag cleared
      HTF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding DTEF flag cleared
      DTEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding ULEF flag cleared
      ULEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding USEF flag cleared
      USEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding SUSPF flag cleared
      SUSPF          : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding TOF flag cleared
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C4FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype GPDMA_C4SR_FIFOL_Field is HAL.UInt8;

   --  GPDMA channel 4 status register
   type GPDMA_C4SR_Register is record
      --  Read-only. This idle flag is deasserted by hardware when the channel
      --  is enabled (GPDMA_C4CR.EN = 1) with a valid channel configuration (no
      --  USEF to be immediately reported). This idle flag is asserted after
      --  hard reset or by hardware when the channel is back in idle state (in
      --  suspended or disabled state). 0: channel not in idle state 1: channel
      --  in idle state
      IDLEF          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. A transfer complete event is either a block transfer
      --  complete, a 2D/repeated block transfer complete, or a LLI transfer
      --  complete including the upload of the next LLI if any, or the full
      --  linked-list completion, depending on the transfer complete event mode
      --  (GPDMA_C4TR2.TCEM[1:0]). 0: no transfer complete event 1: a transfer
      --  complete event occurred
      TCF            : Boolean;
      --  Read-only. A half transfer event is either a half block transfer or a
      --  half 2D/repeated block transfer, depending on the transfer complete
      --  event mode (GPDMA_C4TR2.TCEM[1:0]). A half block transfer occurs when
      --  half of the bytes of the source block size (rounded up integer of
      --  GPDMA_C4BR1.BNDT[15:0]/2) has been transferred to the destination. A
      --  half 2D/repeated block transfer occurs when half of the repeated
      --  blocks (rounded up integer of (GPDMA_C4BR1.BRC[10:0]+1)/2)) has been
      --  transferred to the destination. 0: no half transfer event 1: a half
      --  transfer event occurred
      HTF            : Boolean;
      --  Read-only. None 0: no data transfer error event 1: a master bus error
      --  event occurred on a data transfer
      DTEF           : Boolean;
      --  Read-only. None 0: no update link transfer error event 1: a master
      --  bus error event occurred while updating a linked-list register from
      --  memory
      ULEF           : Boolean;
      --  Read-only. None 0: no user setting error event 1: a user setting
      --  error event occurred
      USEF           : Boolean;
      --  Read-only. None 0: no completed suspension event 1: a completed
      --  suspension event occurred
      SUSPF          : Boolean;
      --  Read-only. None 0: no trigger overrun event 1: a trigger overrun
      --  event occurred
      TOF            : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Number of available write beats in the FIFO, in units of
      --  the programmed destination data width (see GPDMA_C4TR1.DDW_LOG2[1:0],
      --  in units of bytes, half-words, or words). Note: After having
      --  suspended an active transfer, the user may need to read FIFOL[7:0],
      --  additionally to GPDMA_C4BR1.BDNT[15:0] and GPDMA_C4BR1.BRC[10:0], to
      --  know how many data have been transferred to the destination. Before
      --  reading, the user may wait for the transfer to be suspended
      --  (GPDMA_C4SR.SUSPF = 1).
      FIFOL          : GPDMA_C4SR_FIFOL_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C4SR_Register use record
      IDLEF          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FIFOL          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C4CR_PRIO_Field is HAL.UInt2;

   --  GPDMA channel 4 control register
   type GPDMA_C4CR_Register is record
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 0. Else: this
      --  bit is deasserted by hardware when there is a transfer error (master
      --  bus error or user setting error) or when there is a channel transfer
      --  complete (channel ready to be configured, for example if LSM = 1 at
      --  the end of a single execution of the LLI). Else, this bit can be
      --  asserted by software. Writing 0 into this EN bit is ignored. 0:
      --  write: ignored, read: channel disabled 1: write: enable channel,
      --  read: channel enabled
      EN             : Boolean := False;
      --  Write-only. This bit is write only. Writing 0 has no impact. Writing
      --  1 implies the reset of the following: the FIFO, the channel internal
      --  state, SUSP and EN bits (whatever is written receptively in bit 2 and
      --  bit 0). The reset is effective when the channel is in steady state,
      --  meaning one of the following: - active channel in suspended state
      --  (GPDMA_C4SR.SUSPF = 1 and GPDMA_C4SR.IDLEF=GPDMA_C4CR.EN = 1) -
      --  channel in disabled state (GPDMA_C4SR.IDLEF = 1 and GPDMA_C4CR.EN =
      --  0). After writing a RESET, to continue using this channel, the user
      --  must explicitly reconfigure the channel including the
      --  hardware-modified configuration registers (GPDMA_C4BR1, GPDMA_CxSAR
      --  and GPDMA_CxDAR) before enabling again the channel (see the
      --  programming sequence in less than xe6
      --  [GPDMA_abort_restart/ID00-1465]/>). 0: no channel reset 1: channel
      --  reset
      RESET          : Boolean := False;
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 2. Else:
      --  Software must write 1 in order to suspend an active channel (channel
      --  with an ongoing GPDMA transfer over its master ports). The software
      --  must write 0 in order to resume a suspended channel, following the
      --  programming sequence detailed in less than xe5
      --  [GPDMA_channel_suspend_and_resume/ID00-1456]/>. 0: write: resume
      --  channel, read: channel not suspended 1: write: suspend channel, read:
      --  channel suspended.
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  None 0: interrupt disabled 1: interrupt enabled
      TCIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      HTIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      DTEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      ULEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      USEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      SUSPIE         : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  First the (possible 1D/repeated) block transfer is executed as
      --  defined by the current internal register file until
      --  GPDMA_C4BR1.BNDT[15:0] = 0 and GPDMA_C4BR1.BRC[10:0] = 0. Secondly
      --  the next linked-list data structure is conditionally uploaded from
      --  memory as defined by GPDMA_C4LLR. Then channel execution is
      --  completed. 0: channel executed for the full linked-list and completed
      --  at the end of the last LLI (GPDMA_C4LLR = 0). The 16 low-significant
      --  bits of the link address are null (LA[15:0] = 0) and all the update
      --  bits are null (UT1 = UB1 = UT2 = USA = UDA = ULL = 0 and UT3 = UB2 =
      --  0). Then GPDMA_C4BR1.BNDT[15:0] = 0 and GPDMA_C4BR1.BRC[10:0] = 0. 1:
      --  channel executed once for the current LLI Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      LSM            : Boolean := False;
      --  This bit is used to allocate the master port for the update of the
      --  GPDMA linked-list registers from the memory. 0: port 0 (AHB)
      --  allocated 1: port 1 (AHB) allocated Note: This bit must be written
      --  when EN = 0. This bit is read-only when EN = 1.
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  None 00: low priority, low weight 01: low priority, mid weight 10:
      --  low priority, high weight 11: high priority Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      PRIO           : GPDMA_C4CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C4CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C4TR1_SDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C4TR1_SBL_1_Field is HAL.UInt6;
   subtype GPDMA_C4TR1_PAM_Field is HAL.UInt2;
   subtype GPDMA_C4TR1_DDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C4TR1_DBL_1_Field is HAL.UInt6;

   --  GPDMA channel 4 transfer register 1
   type GPDMA_C4TR1_Register is record
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and no transfer
      --  is issued. +: A source block size must be a multiple of the source
      --  data width (GPDMA_C4BR1.BNDT[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and no transfer is issued. +: A source
      --  burst transfer must have an aligned address with its data width
      --  (start address GPDMA_CxSAR[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and none transfer is issued.
      SDW_LOG2       : GPDMA_C4TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  The source address, pointed by GPDMA_CxSAR, is kept constant after a
      --  burst beat/single transfer or is incremented by the offset value
      --  corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      SINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  SBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width SDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 4, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      SBL_1          : GPDMA_C4TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  If DDW_LOG2[1:0] = SDW_LOG2[1:0]: if the data width of a burst
      --  destination transfer is equal to the data width of a burst source
      --  transfer, these bits are ignored..
      PAM            : GPDMA_C4TR1_PAM_Field := 16#0#;
      --  If the source data width is shorter than a word, this bit is ignored.
      --  If the source data width is a word: 0: no byte-based exchange within
      --  the unaligned half-word of each source word 1: the two consecutive
      --  bytes within the unaligned half-word of each source word are
      --  exchanged.
      SBx            : Boolean := False;
      --  This bit is used to allocate the master port for the source transfer
      --  0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note: This bit
      --  must be written when EN = 0. This bit is read-only when EN = 1.
      SAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC4 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC4 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC4 = 0. When
      --  GPDMA_SECCFGR.SEC4 is deasserted, this SSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer from the source is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      SSEC           : Boolean := False;
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and none
      --  transfer is issued. +: A destination burst transfer must have an
      --  aligned address with its data width (start address GPDMA_CxDAR[2:0]
      --  and address offset GPDMA_CxTR3.DAO[2:0], versus DDW_LOG2[1:0]).
      --  Otherwise a user setting error is reported and no transfer is issued.
      DDW_LOG2       : GPDMA_C4TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  The destination address, pointed by GPDMA_CxDAR, is kept constant
      --  after a burst beat/single transfer, or is incremented by the offset
      --  value corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      DINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  DBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width DDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 4, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      DBL_1          : GPDMA_C4TR1_DBL_1_Field := 16#0#;
      --  If the destination data size is a byte, this bit is ignored. If the
      --  destination data size is not a byte: 0: no byte-based exchange within
      --  half-word 1: the two consecutive (post PAM) bytes are exchanged in
      --  each destination half-word.
      DBx            : Boolean := False;
      --  If the destination data size is shorter than a word, this bit is
      --  ignored. If the destination data size is a word: 0: no halfword-based
      --  exchanged within word 1: the two consecutive (post PAM) half-words
      --  are exchanged in each destination word.
      DHx            : Boolean := False;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  This bit is used to allocate the master port for the destination
      --  transfer 0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note:
      --  This bit must be written when EN = 0. This bit is read-only when EN =
      --  1.
      DAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC4 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC4 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC4 = 0. When
      --  GPDMA_SECCFGR.SEC4 is deasserted, this DSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer to the destination is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C4TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBx            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBx            at 0 range 26 .. 26;
      DHx            at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C4TR2_REQSEL_Field is HAL.UInt7;
   subtype GPDMA_C4TR2_TRIGM_Field is HAL.UInt2;
   subtype GPDMA_C4TR2_TRIGSEL_Field is HAL.UInt6;
   subtype GPDMA_C4TR2_TRIGPOL_Field is HAL.UInt2;
   subtype GPDMA_C4TR2_TCEM_Field is HAL.UInt2;

   --  GPDMA channel 4 transfer register 2
   type GPDMA_C4TR2_Register is record
      --  These bits are ignored if channel 4 is activated (GPDMA_C4CR.EN
      --  asserted) with SWREQ=1 (software request for a memory-to-memory
      --  transfer). Else, the selected hardware request is internally taken
      --  into account as per less than xe4 [GPDMA_requests]/>. The user must
      --  not assign a same input hardware request (same REQSEL[6:0] value) to
      --  different active GPDMA channels (GPDMA_C4CR.EN = 1 and
      --  GPDMA_C4TR2.SWREQ = 0 for these channels). GPDMA is not intended to
      --  hardware support the case of simultaneous enabled channels
      --  incorrectly configured with a same hardware peripheral request
      --  signal, and there is no user setting error reporting.
      REQSEL         : GPDMA_C4TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  This bit is internally taken into account when GPDMA_C4CR.EN is
      --  asserted. 0: no software request. The selected hardware request
      --  REQSEL[6:0] is taken into account. 1: software request for a
      --  memory-to-memory transfer. The default selected hardware request as
      --  per REQSEL[6:0] is ignored.
      SWREQ          : Boolean := False;
      --  This bit is ignored if channel 4 is activated (GPDMA_C4CR.EN
      --  asserted) with SWREQ = 1 (software request for a memory-to-memory
      --  transfer). Else: 0: selected hardware request driven by a source
      --  peripheral (request signal taken into account by the GPDMA transfer
      --  scheduler over the source/read port) 1: selected hardware request
      --  driven by a destination peripheral (request signal taken into account
      --  by the GPDMA transfer scheduler over the destination/write port)
      --  Note: If the channel 4 is activated (GPDMA_C4CR.EN is asserted) with
      --  SWREQ = 0 and PFREQ = 1 (peripheral hardware request with peripheral
      --  flow-control mode), any software assertion to this DREQ bit is
      --  ignored: in peripheral flow-control mode, only a peripheral-to-memory
      --  transfer is supported.
      DREQ           : Boolean := False;
      --  If the channel 4 is activated (GPDMA_C4CR.EN asserted) with SWREQ = 1
      --  (software request for a memory-to-memory transfer), this bit is
      --  ignored. Else: 0: the selected hardware request is driven by a
      --  peripheral with a hardware request/acknowledge protocol at a burst
      --  level. 1: the selected hardware request is driven by a peripheral
      --  with a hardware request/acknowledge protocol at a block level (see
      --  less than xe4 [GPDMA_requests]/>).
      BREQ           : Boolean := False;
      --  Caution: If a given channel 4 is not implemented with this feature,
      --  this bit is reserved and PFREQ is not present (see less than xe1
      --  [GPDMA_channels]/> for the list of the implemented channels with this
      --  feature).
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  These bits define the transfer granularity for its conditioning by
      --  the trigger. If the channel 4 is enabled (GPDMA_C4CR.EN asserted)
      --  with TRIGPOL[1:0] = 00 or 11, these TRIGM[1:0] bits are ignored.
      --  Else, a GPDMA transfer is conditioned by at least one trigger hit:
      --  00: at block level: the first burst read of each block transfer is
      --  conditioned by one hit trigger (channel 4 = 12 to 15, for each block
      --  if a 2D/repeated block is configured with GPDMA_C4BR1.BRC[10:0] is
      --  not equal to 0). 10: at link level: a LLI link transfer is
      --  conditioned by one hit trigger. The LLI data transfer (if any) is not
      --  conditioned. 11: at programmed burst level: If SWREQ = 1, each
      --  programmed burst read is conditioned by one hit trigger. If SWREQ =
      --  0, each programmed burst that is requested by the selected
      --  peripheral, is conditioned by one hit trigger. - If the peripheral is
      --  programmed as a source (DREQ = 0) of the LLI data transfer, each
      --  programmed burst read is conditioned. - If the peripheral is
      --  programmed as a destination (DREQ = 1) of the LLI data transfer, each
      --  programmed burst write is conditioned. The first memory burst read of
      --  a (possibly 2D/repeated) block, also named as the first ready
      --  FIFO-based source burst, is gated by the occurrence of both the
      --  hardware request and the first trigger hit.01: channel 4 = 0 to ,
      --  same as 00; channel 4 , at 2D/repeated block level. The first burst
      --  read of a 2D/repeated block transfer is conditioned by one hit
      --  trigger. The GPDMA monitoring of a trigger for channel 4 is started
      --  when the channel is enabled/loaded with a new active trigger
      --  configuration: rising or falling edge on a selected trigger
      --  (TRIGPOL[1:0] = 01 or respectively TRIGPOL[1:0]=10). The monitoring
      --  of this trigger is kept active during the triggered and uncompleted
      --  (data or link) transfer; and if a new trigger is detected then, this
      --  hit is internally memorized to grant the next transfer, as long as
      --  the defined rising or falling edge is not modified, and the
      --  TRIGSEL[5:0] is not modified, and the channel is enabled.
      --  Transferring a next LLIn+1 that updates the GPDMA_C4TR2 with a new
      --  value for any of TRIGSEL[5:0] or TRIGPOL[1:0], resets the monitoring,
      --  trashing the memorized hit of the formerly defined LLIn trigger.
      --  After a first new trigger hitn+1 is memorized, if another second
      --  trigger hitn+2 is detected and if the hitn triggered transfer is
      --  still not completed, hitn+2 is lost and not memorized.memorized. A
      --  trigger overrun flag is reported (GPDMA_C4SR.TOF=1), and an interrupt
      --  is generated if enabled (GPDMA_C4CR.TOIE = 1). The channel is not
      --  automatically disabled by hardware due to a trigger overrun. Note:
      --  When the source block size is not a multiple of the source burst size
      --  and is a multiple of the source data width, then the last programmed
      --  source burst is not completed and is internally shorten to match the
      --  block size. In this case, if TRIGM[1:0] = 11 and (SWREQ = 1 or (SWREQ
      --  = 0 and DREQ = 0)), the shortened burst transfer (by singles or/and
      --  by bursts of lower length) is conditioned once by the trigger. +:
      --  When the programmed destination burst is internally shortened by
      --  singles or/and by bursts of lower length (versus FIFO size, versus
      --  block size, 1-Kbyte boundary address crossing): if the trigger is
      --  conditioning the programmed destination burst (if TRIGM[1:0] = 11 and
      --  SWREQ = 0 and DREQ = 1), this shortened destination burst transfer is
      --  conditioned once by the trigger.
      TRIGM          : GPDMA_C4TR2_TRIGM_Field := 16#0#;
      --  These bits select the trigger event input of the GPDMA transfer (as
      --  per less than xe3 [GPDMA_triggers]/>), with anactive trigger event if
      --  TRIGPOL[1:0] is not equal to 00.
      TRIGSEL        : GPDMA_C4TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  These bits define the polarity of the selected trigger event input
      --  defined by TRIGSEL[5:0]. 00: no trigger (masked trigger event) 01:
      --  trigger on the rising edge 10: trigger on the falling edge 11: same
      --  as 00
      TRIGPOL        : GPDMA_C4TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  These bits define the transfer granularity for the transfer complete
      --  and half transfer complete events generation. 00: at block level
      --  (when GPDMA_C4BR1.BNDT[15:0] = 0): the complete (and the half)
      --  transfer event is generated at the (respectively half of the) end of
      --  a block. 01: channel 4 (0 to ), same as 00, channel 4 , at
      --  2D/repeated block level (when GPDMA_C4BR1.BRC[10:0] = 0 and
      --  GPDMA_C4BR1.BNDT[15:0] = 0). The complete (and the half) transfer
      --  event is generated at the end (respectively half of the end) of the
      --  2D/repeated block. 10: at LLI level: the complete transfer event is
      --  generated at the end of the LLI transfer, including the update of the
      --  LLI if any. The half transfer event is generated at the half of the
      --  LLI data transfer. The LLI data transfer is a block transfer or a
      --  2D/repeated block transfer for channel 4 , if any data transfer. 11:
      --  at channel level: the complete transfer event is generated at the end
      --  of the last LLI transfer. The half transfer event is generated at the
      --  half of the data transfer of the last LLI. The last LLI updates the
      --  link address GPDMA_C4LLR.LA[15:2] to zero and clears all the
      --  GPDMA_C4LLR update bits (UT1, UT2, UB1, USA, UDA and ULL, plus UT3
      --  and UB2). If the channel transfer is continuous/infinite, no event is
      --  generated. Note: If the initial LLI0 data transfer is null/void
      --  (directly programmed by the internal register file with
      --  GPDMA_C4BR1.BNDT[15:0] = 0), then neither the complete transfer event
      --  nor the half transfer event is generated. +: If the initial LLI0 data
      --  transfer is null/void (directly programmed by the internal register
      --  file with GPDMA_C4BR1.BNDT[15:0] = 0), then neither the complete
      --  transfer event nor the half transfer event is generated. +: If the
      --  initial LLI0 data transfer is null/void (directly programmed by the
      --  internal register file with GPDMA_C4BR1.BNDT[15:0] = 0), then the
      --  half transfer event is not generated, and the transfer complete event
      --  is generated when is completed the loading of the LLI1.
      TCEM           : GPDMA_C4TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C4TR2_Register use record
      REQSEL         at 0 range 0 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype GPDMA_C4BR1_BNDT_Field is HAL.UInt16;

   --  GPDMA channel 4 block register 1
   type GPDMA_C4BR1_Register is record
      --  Block size transferred from the source. When the channel is enabled,
      --  this field becomes read-only and is decremented, indicating the
      --  remaining number of data items in the current source block to be
      --  transferred. BNDT[15:0] is programmed in number of bytes, maximum
      --  source block size is 64 Kbytes -1. Once the last data transfer is
      --  completed (BNDT[15:0] = 0): - if GPDMA_C4LLR.UB1 = 1, this field is
      --  updated by the LLI in the memory. - if GPDMA_C4LLR.UB1 = 0 and if
      --  there is at least one not null Uxx update bit, this field is
      --  internally restored to the programmed value. - if all GPDMA_C4LLR.Uxx
      --  = 0 and if GPDMA_C4LLR.LA[15:0] is not equal to 0, this field is
      --  internally restored to the programmed value (infinite/continuous last
      --  LLI). - if GPDMA_C4LLR = 0, this field is kept as zero following the
      --  last LLI data transfer. Note: A non-null source block size must be a
      --  multiple of the source data width (BNDT[2:0] versus
      --  GPDMA_C4TR1.SDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued. +: When configured in packing mode
      --  (GPDMA_C4TR1.PAM[1] = 1 and destination data width different from
      --  source data width), a non-null source block size must be a multiple
      --  of the destination data width (BNDT[2:0] versus
      --  GPDMA_C4TR1.DDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued.
      BNDT           : GPDMA_C4BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C4BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPDMA_C4LLR_LA_Field is HAL.UInt14;

   --  GPDMA channel 4 linked-list address register
   type GPDMA_C4LLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  If UT1 = UT2 = UB1 = USA = UDA = ULL = 0 and if LA[15:20] = 0, the
      --  current LLI is the last one. The channel transfer is completed
      --  without any update of the linked-list GPDMA register file. Else, this
      --  field is the pointer to the memory address offset from which the next
      --  linked-list data structure is automatically fetched from, once the
      --  data transfer is completed, in order to conditionally update the
      --  linked-list GPDMA internal register file (GPDMA_C4TR1, GPDMA_C4TR2,
      --  GPDMA_C4BR1, GPDMA_CxSAR, GPDMA_CxDAR and GPDMA_C4LLR). Note: The
      --  user must program the pointer to be 32-bit aligned. The two
      --  low-significant bits are write ignored.
      LA             : GPDMA_C4LLR_LA_Field := 16#0#;
      --  This bit is used to control the update of GPDMA_C4LLR from the memory
      --  during the link transfer. 0: no GPDMA_C4LLR update 1: GPDMA_C4LLR
      --  update
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : HAL.UInt10 := 16#0#;
      --  This bit is used to control the update of GPDMA_CxDAR from the memory
      --  during the link transfer. 0: no GPDMA_CxDAR update 1: GPDMA_CxDAR
      --  update
      UDA            : Boolean := False;
      --  This bit controls the update of GPDMA_CxSAR from the memory during
      --  the link transfer. 0: no GPDMA_CxSAR update 1: GPDMA_CxSAR update
      USA            : Boolean := False;
      --  This bit controls the update of GPDMA_C4BR1 from the memory during
      --  the link transfer. If UB1 = 0 and if GPDMA_C4LLR is not equal to 0,
      --  the linked-list is not completed. GPDMA_C4BR1.BNDT[15:0] is then
      --  restored to the programmed value after data transfer is completed and
      --  before the link transfer. 0: no GPDMA_C4BR1 update from memory
      --  (GPDMA_C4BR1.BNDT[15:0] restored if any link transfer) 1: GPDMA_C4BR1
      --  update
      UB1            : Boolean := False;
      --  This bit controls the update of GPDMA_C4TR2 from the memory during
      --  the link transfer. 0: no GPDMA_C4TR2 update 1: GPDMA_C4TR2 update
      UT2            : Boolean := False;
      --  This bit controls the update of GPDMA_C4TR1 from the memory during
      --  the link transfer. 0: no GPDMA_C4TR1 update 1: GPDMA_C4TR1 update
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C4LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C5LBAR_LBA_Field is HAL.UInt16;

   --  GPDMA channel 5 linked-list base address register
   type GPDMA_C5LBAR_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  None
      LBA           : GPDMA_C5LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C5LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   --  GPDMA channel 5 flag clear register
   type GPDMA_C5FCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. None 0: no effect 1: corresponding TCF flag cleared
      TCF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding HTF flag cleared
      HTF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding DTEF flag cleared
      DTEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding ULEF flag cleared
      ULEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding USEF flag cleared
      USEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding SUSPF flag cleared
      SUSPF          : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding TOF flag cleared
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C5FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype GPDMA_C5SR_FIFOL_Field is HAL.UInt8;

   --  GPDMA channel 5 status register
   type GPDMA_C5SR_Register is record
      --  Read-only. This idle flag is deasserted by hardware when the channel
      --  is enabled (GPDMA_C5CR.EN = 1) with a valid channel configuration (no
      --  USEF to be immediately reported). This idle flag is asserted after
      --  hard reset or by hardware when the channel is back in idle state (in
      --  suspended or disabled state). 0: channel not in idle state 1: channel
      --  in idle state
      IDLEF          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. A transfer complete event is either a block transfer
      --  complete, a 2D/repeated block transfer complete, or a LLI transfer
      --  complete including the upload of the next LLI if any, or the full
      --  linked-list completion, depending on the transfer complete event mode
      --  (GPDMA_C5TR2.TCEM[1:0]). 0: no transfer complete event 1: a transfer
      --  complete event occurred
      TCF            : Boolean;
      --  Read-only. A half transfer event is either a half block transfer or a
      --  half 2D/repeated block transfer, depending on the transfer complete
      --  event mode (GPDMA_C5TR2.TCEM[1:0]). A half block transfer occurs when
      --  half of the bytes of the source block size (rounded up integer of
      --  GPDMA_C5BR1.BNDT[15:0]/2) has been transferred to the destination. A
      --  half 2D/repeated block transfer occurs when half of the repeated
      --  blocks (rounded up integer of (GPDMA_C5BR1.BRC[10:0]+1)/2)) has been
      --  transferred to the destination. 0: no half transfer event 1: a half
      --  transfer event occurred
      HTF            : Boolean;
      --  Read-only. None 0: no data transfer error event 1: a master bus error
      --  event occurred on a data transfer
      DTEF           : Boolean;
      --  Read-only. None 0: no update link transfer error event 1: a master
      --  bus error event occurred while updating a linked-list register from
      --  memory
      ULEF           : Boolean;
      --  Read-only. None 0: no user setting error event 1: a user setting
      --  error event occurred
      USEF           : Boolean;
      --  Read-only. None 0: no completed suspension event 1: a completed
      --  suspension event occurred
      SUSPF          : Boolean;
      --  Read-only. None 0: no trigger overrun event 1: a trigger overrun
      --  event occurred
      TOF            : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Number of available write beats in the FIFO, in units of
      --  the programmed destination data width (see GPDMA_C5TR1.DDW_LOG2[1:0],
      --  in units of bytes, half-words, or words). Note: After having
      --  suspended an active transfer, the user may need to read FIFOL[7:0],
      --  additionally to GPDMA_C5BR1.BDNT[15:0] and GPDMA_C5BR1.BRC[10:0], to
      --  know how many data have been transferred to the destination. Before
      --  reading, the user may wait for the transfer to be suspended
      --  (GPDMA_C5SR.SUSPF = 1).
      FIFOL          : GPDMA_C5SR_FIFOL_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C5SR_Register use record
      IDLEF          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FIFOL          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C5CR_PRIO_Field is HAL.UInt2;

   --  GPDMA channel 5 control register
   type GPDMA_C5CR_Register is record
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 0. Else: this
      --  bit is deasserted by hardware when there is a transfer error (master
      --  bus error or user setting error) or when there is a channel transfer
      --  complete (channel ready to be configured, for example if LSM = 1 at
      --  the end of a single execution of the LLI). Else, this bit can be
      --  asserted by software. Writing 0 into this EN bit is ignored. 0:
      --  write: ignored, read: channel disabled 1: write: enable channel,
      --  read: channel enabled
      EN             : Boolean := False;
      --  Write-only. This bit is write only. Writing 0 has no impact. Writing
      --  1 implies the reset of the following: the FIFO, the channel internal
      --  state, SUSP and EN bits (whatever is written receptively in bit 2 and
      --  bit 0). The reset is effective when the channel is in steady state,
      --  meaning one of the following: - active channel in suspended state
      --  (GPDMA_C5SR.SUSPF = 1 and GPDMA_C5SR.IDLEF=GPDMA_C5CR.EN = 1) -
      --  channel in disabled state (GPDMA_C5SR.IDLEF = 1 and GPDMA_C5CR.EN =
      --  0). After writing a RESET, to continue using this channel, the user
      --  must explicitly reconfigure the channel including the
      --  hardware-modified configuration registers (GPDMA_C5BR1, GPDMA_CxSAR
      --  and GPDMA_CxDAR) before enabling again the channel (see the
      --  programming sequence in less than xe6
      --  [GPDMA_abort_restart/ID00-1465]/>). 0: no channel reset 1: channel
      --  reset
      RESET          : Boolean := False;
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 2. Else:
      --  Software must write 1 in order to suspend an active channel (channel
      --  with an ongoing GPDMA transfer over its master ports). The software
      --  must write 0 in order to resume a suspended channel, following the
      --  programming sequence detailed in less than xe5
      --  [GPDMA_channel_suspend_and_resume/ID00-1456]/>. 0: write: resume
      --  channel, read: channel not suspended 1: write: suspend channel, read:
      --  channel suspended.
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  None 0: interrupt disabled 1: interrupt enabled
      TCIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      HTIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      DTEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      ULEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      USEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      SUSPIE         : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  First the (possible 1D/repeated) block transfer is executed as
      --  defined by the current internal register file until
      --  GPDMA_C5BR1.BNDT[15:0] = 0 and GPDMA_C5BR1.BRC[10:0] = 0. Secondly
      --  the next linked-list data structure is conditionally uploaded from
      --  memory as defined by GPDMA_C5LLR. Then channel execution is
      --  completed. 0: channel executed for the full linked-list and completed
      --  at the end of the last LLI (GPDMA_C5LLR = 0). The 16 low-significant
      --  bits of the link address are null (LA[15:0] = 0) and all the update
      --  bits are null (UT1 = UB1 = UT2 = USA = UDA = ULL = 0 and UT3 = UB2 =
      --  0). Then GPDMA_C5BR1.BNDT[15:0] = 0 and GPDMA_C5BR1.BRC[10:0] = 0. 1:
      --  channel executed once for the current LLI Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      LSM            : Boolean := False;
      --  This bit is used to allocate the master port for the update of the
      --  GPDMA linked-list registers from the memory. 0: port 0 (AHB)
      --  allocated 1: port 1 (AHB) allocated Note: This bit must be written
      --  when EN = 0. This bit is read-only when EN = 1.
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  None 00: low priority, low weight 01: low priority, mid weight 10:
      --  low priority, high weight 11: high priority Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      PRIO           : GPDMA_C5CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C5CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C5TR1_SDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C5TR1_SBL_1_Field is HAL.UInt6;
   subtype GPDMA_C5TR1_PAM_Field is HAL.UInt2;
   subtype GPDMA_C5TR1_DDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C5TR1_DBL_1_Field is HAL.UInt6;

   --  GPDMA channel 5 transfer register 1
   type GPDMA_C5TR1_Register is record
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and no transfer
      --  is issued. +: A source block size must be a multiple of the source
      --  data width (GPDMA_C5BR1.BNDT[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and no transfer is issued. +: A source
      --  burst transfer must have an aligned address with its data width
      --  (start address GPDMA_CxSAR[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and none transfer is issued.
      SDW_LOG2       : GPDMA_C5TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  The source address, pointed by GPDMA_CxSAR, is kept constant after a
      --  burst beat/single transfer or is incremented by the offset value
      --  corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      SINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  SBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width SDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 5, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      SBL_1          : GPDMA_C5TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  If DDW_LOG2[1:0] = SDW_LOG2[1:0]: if the data width of a burst
      --  destination transfer is equal to the data width of a burst source
      --  transfer, these bits are ignored.
      PAM            : GPDMA_C5TR1_PAM_Field := 16#0#;
      --  If the source data width is shorter than a word, this bit is ignored.
      --  If the source data width is a word: 0: no byte-based exchange within
      --  the unaligned half-word of each source word 1: the two consecutive
      --  bytes within the unaligned half-word of each source word are
      --  exchanged.
      SBx            : Boolean := False;
      --  This bit is used to allocate the master port for the source transfer
      --  0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note: This bit
      --  must be written when EN = 0. This bit is read-only when EN = 1.
      SAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC5 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC5 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC5 = 0. When
      --  GPDMA_SECCFGR.SEC5 is deasserted, this SSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer from the source is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      SSEC           : Boolean := False;
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and none
      --  transfer is issued. +: A destination burst transfer must have an
      --  aligned address with its data width (start address GPDMA_CxDAR[2:0]
      --  and address offset GPDMA_CxTR3.DAO[2:0], versus DDW_LOG2[1:0]).
      --  Otherwise a user setting error is reported and no transfer is issued.
      DDW_LOG2       : GPDMA_C5TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  The destination address, pointed by GPDMA_CxDAR, is kept constant
      --  after a burst beat/single transfer, or is incremented by the offset
      --  value corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      DINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  DBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width DDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 5, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      DBL_1          : GPDMA_C5TR1_DBL_1_Field := 16#0#;
      --  If the destination data size is a byte, this bit is ignored. If the
      --  destination data size is not a byte: 0: no byte-based exchange within
      --  half-word 1: the two consecutive (post PAM) bytes are exchanged in
      --  each destination half-word.
      DBx            : Boolean := False;
      --  If the destination data size is shorter than a word, this bit is
      --  ignored. If the destination data size is a word: 0: no halfword-based
      --  exchanged within word 1: the two consecutive (post PAM) half-words
      --  are exchanged in each destination word.
      DHx            : Boolean := False;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  This bit is used to allocate the master port for the destination
      --  transfer 0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note:
      --  This bit must be written when EN = 0. This bit is read-only when EN =
      --  1.
      DAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC5 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC5 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC5 = 0. When
      --  GPDMA_SECCFGR.SEC5 is deasserted, this DSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer to the destination is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C5TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBx            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBx            at 0 range 26 .. 26;
      DHx            at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C5TR2_REQSEL_Field is HAL.UInt7;
   subtype GPDMA_C5TR2_TRIGM_Field is HAL.UInt2;
   subtype GPDMA_C5TR2_TRIGSEL_Field is HAL.UInt6;
   subtype GPDMA_C5TR2_TRIGPOL_Field is HAL.UInt2;
   subtype GPDMA_C5TR2_TCEM_Field is HAL.UInt2;

   --  GPDMA channel 5 transfer register 2
   type GPDMA_C5TR2_Register is record
      --  These bits are ignored if channel 5 is activated (GPDMA_C5CR.EN
      --  asserted) with SWREQ=1 (software request for a memory-to-memory
      --  transfer). Else, the selected hardware request is internally taken
      --  into account as per less than xe4 [GPDMA_requests]/>. The user must
      --  not assign a same input hardware request (same REQSEL[6:0] value) to
      --  different active GPDMA channels (GPDMA_C5CR.EN = 1 and
      --  GPDMA_C5TR2.SWREQ = 0 for these channels). GPDMA is not intended to
      --  hardware support the case of simultaneous enabled channels
      --  incorrectly configured with a same hardware peripheral request
      --  signal, and there is no user setting error reporting.
      REQSEL         : GPDMA_C5TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  This bit is internally taken into account when GPDMA_C5CR.EN is
      --  asserted. 0: no software request. The selected hardware request
      --  REQSEL[6:0] is taken into account. 1: software request for a
      --  memory-to-memory transfer. The default selected hardware request as
      --  per REQSEL[6:0] is ignored.
      SWREQ          : Boolean := False;
      --  This bit is ignored if channel 5 is activated (GPDMA_C5CR.EN
      --  asserted) with SWREQ = 1 (software request for a memory-to-memory
      --  transfer). Else: 0: selected hardware request driven by a source
      --  peripheral (request signal taken into account by the GPDMA transfer
      --  scheduler over the source/read port) 1: selected hardware request
      --  driven by a destination peripheral (request signal taken into account
      --  by the GPDMA transfer scheduler over the destination/write port)
      --  Note: If the channel 5 is activated (GPDMA_C5CR.EN is asserted) with
      --  SWREQ = 0 and PFREQ = 1 (peripheral hardware request with peripheral
      --  flow-control mode), any software assertion to this DREQ bit is
      --  ignored: in peripheral flow-control mode, only a peripheral-to-memory
      --  transfer is supported.
      DREQ           : Boolean := False;
      --  If the channel 5 is activated (GPDMA_C5CR.EN asserted) with SWREQ = 1
      --  (software request for a memory-to-memory transfer), this bit is
      --  ignored. Else: 0: the selected hardware request is driven by a
      --  peripheral with a hardware request/acknowledge protocol at a burst
      --  level. 1: the selected hardware request is driven by a peripheral
      --  with a hardware request/acknowledge protocol at a block level (see
      --  less than xe4 [GPDMA_requests]/>).
      BREQ           : Boolean := False;
      --  Caution: If a given channel 5 is not implemented with this feature,
      --  this bit is reserved and PFREQ is not present (see less than xe1
      --  [GPDMA_channels]/> for the list of the implemented channels with this
      --  feature).
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  These bits define the transfer granularity for its conditioning by
      --  the trigger. If the channel 5 is enabled (GPDMA_C5CR.EN asserted)
      --  with TRIGPOL[1:0] = 00 or 11, these TRIGM[1:0] bits are ignored.
      --  Else, a GPDMA transfer is conditioned by at least one trigger hit:
      --  00: at block level: the first burst read of each block transfer is
      --  conditioned by one hit trigger (channel 5 = 12 to 15, for each block
      --  if a 2D/repeated block is configured with GPDMA_C5BR1.BRC[10:0] is
      --  not equal to 0). 10: at link level: a LLI link transfer is
      --  conditioned by one hit trigger. The LLI data transfer (if any) is not
      --  conditioned. 11: at programmed burst level: If SWREQ = 1, each
      --  programmed burst read is conditioned by one hit trigger. If SWREQ =
      --  0, each programmed burst that is requested by the selected
      --  peripheral, is conditioned by one hit trigger. - If the peripheral is
      --  programmed as a source (DREQ = 0) of the LLI data transfer, each
      --  programmed burst read is conditioned. - If the peripheral is
      --  programmed as a destination (DREQ = 1) of the LLI data transfer, each
      --  programmed burst write is conditioned. The first memory burst read of
      --  a (possibly 2D/repeated) block, also named as the first ready
      --  FIFO-based source burst, is gated by the occurrence of both the
      --  hardware request and the first trigger hit.01: channel 5 = 0 to ,
      --  same as 00; channel 5 , at 2D/repeated block level. The first burst
      --  read of a 2D/repeated block transfer is conditioned by one hit
      --  trigger. The GPDMA monitoring of a trigger for channel 5 is started
      --  when the channel is enabled/loaded with a new active trigger
      --  configuration: rising or falling edge on a selected trigger
      --  (TRIGPOL[1:0] = 01 or respectively TRIGPOL[1:0]=10). The monitoring
      --  of this trigger is kept active during the triggered and uncompleted
      --  (data or link) transfer; and if a new trigger is detected then, this
      --  hit is internally memorized to grant the next transfer, as long as
      --  the defined rising or falling edge is not modified, and the
      --  TRIGSEL[5:0] is not modified, and the channel is enabled.
      --  Transferring a next LLIn+1 that updates the GPDMA_C5TR2 with a new
      --  value for any of TRIGSEL[5:0] or TRIGPOL[1:0], resets the monitoring,
      --  trashing the memorized hit of the formerly defined LLIn trigger.
      --  After a first new trigger hitn+1 is memorized, if another second
      --  trigger hitn+2 is detected and if the hitn triggered transfer is
      --  still not completed, hitn+2 is lost and not memorized.memorized. A
      --  trigger overrun flag is reported (GPDMA_C5SR.TOF=1), and an interrupt
      --  is generated if enabled (GPDMA_C5CR.TOIE = 1). The channel is not
      --  automatically disabled by hardware due to a trigger overrun. Note:
      --  When the source block size is not a multiple of the source burst size
      --  and is a multiple of the source data width, then the last programmed
      --  source burst is not completed and is internally shorten to match the
      --  block size. In this case, if TRIGM[1:0] = 11 and (SWREQ = 1 or (SWREQ
      --  = 0 and DREQ = 0)), the shortened burst transfer (by singles or/and
      --  by bursts of lower length) is conditioned once by the trigger. +:
      --  When the programmed destination burst is internally shortened by
      --  singles or/and by bursts of lower length (versus FIFO size, versus
      --  block size, 1-Kbyte boundary address crossing): if the trigger is
      --  conditioning the programmed destination burst (if TRIGM[1:0] = 11 and
      --  SWREQ = 0 and DREQ = 1), this shortened destination burst transfer is
      --  conditioned once by the trigger.
      TRIGM          : GPDMA_C5TR2_TRIGM_Field := 16#0#;
      --  These bits select the trigger event input of the GPDMA transfer (as
      --  per less than xe3 [GPDMA_triggers]/>), with anactive trigger event if
      --  TRIGPOL[1:0] is not equal to 00.
      TRIGSEL        : GPDMA_C5TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  These bits define the polarity of the selected trigger event input
      --  defined by TRIGSEL[5:0]. 00: no trigger (masked trigger event) 01:
      --  trigger on the rising edge 10: trigger on the falling edge 11: same
      --  as 00
      TRIGPOL        : GPDMA_C5TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  These bits define the transfer granularity for the transfer complete
      --  and half transfer complete events generation. 00: at block level
      --  (when GPDMA_C5BR1.BNDT[15:0] = 0): the complete (and the half)
      --  transfer event is generated at the (respectively half of the) end of
      --  a block. 01: channel 5 (0 to ), same as 00, channel 5 , at
      --  2D/repeated block level (when GPDMA_C5BR1.BRC[10:0] = 0 and
      --  GPDMA_C5BR1.BNDT[15:0] = 0). The complete (and the half) transfer
      --  event is generated at the end (respectively half of the end) of the
      --  2D/repeated block. 10: at LLI level: the complete transfer event is
      --  generated at the end of the LLI transfer, including the update of the
      --  LLI if any. The half transfer event is generated at the half of the
      --  LLI data transfer. The LLI data transfer is a block transfer or a
      --  2D/repeated block transfer for channel 5 , if any data transfer. 11:
      --  at channel level: the complete transfer event is generated at the end
      --  of the last LLI transfer. The half transfer event is generated at the
      --  half of the data transfer of the last LLI. The last LLI updates the
      --  link address GPDMA_C5LLR.LA[15:2] to zero and clears all the
      --  GPDMA_C5LLR update bits (UT1, UT2, UB1, USA, UDA and ULL, plus UT3
      --  and UB2). If the channel transfer is continuous/infinite, no event is
      --  generated. Note: If the initial LLI0 data transfer is null/void
      --  (directly programmed by the internal register file with
      --  GPDMA_C5BR1.BNDT[15:0] = 0), then neither the complete transfer event
      --  nor the half transfer event is generated. +: If the initial LLI0 data
      --  transfer is null/void (directly programmed by the internal register
      --  file with GPDMA_C5BR1.BNDT[15:0] = 0), then neither the complete
      --  transfer event nor the half transfer event is generated. +: If the
      --  initial LLI0 data transfer is null/void (directly programmed by the
      --  internal register file with GPDMA_C5BR1.BNDT[15:0] = 0), then the
      --  half transfer event is not generated, and the transfer complete event
      --  is generated when is completed the loading of the LLI1.
      TCEM           : GPDMA_C5TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C5TR2_Register use record
      REQSEL         at 0 range 0 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype GPDMA_C5BR1_BNDT_Field is HAL.UInt16;

   --  GPDMA channel 5 block register 1
   type GPDMA_C5BR1_Register is record
      --  Block size transferred from the source. When the channel is enabled,
      --  this field becomes read-only and is decremented, indicating the
      --  remaining number of data items in the current source block to be
      --  transferred. BNDT[15:0] is programmed in number of bytes, maximum
      --  source block size is 64 Kbytes -1. Once the last data transfer is
      --  completed (BNDT[15:0] = 0): - if GPDMA_C5LLR.UB1 = 1, this field is
      --  updated by the LLI in the memory. - if GPDMA_C5LLR.UB1 = 0 and if
      --  there is at least one not null Uxx update bit, this field is
      --  internally restored to the programmed value. - if all GPDMA_C5LLR.Uxx
      --  = 0 and if GPDMA_C5LLR.LA[15:0] is not equal to 0, this field is
      --  internally restored to the programmed value (infinite/continuous last
      --  LLI). - if GPDMA_C5LLR = 0, this field is kept as zero following the
      --  last LLI data transfer. Note: A non-null source block size must be a
      --  multiple of the source data width (BNDT[2:0] versus
      --  GPDMA_C5TR1.SDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued. +: When configured in packing mode
      --  (GPDMA_C5TR1.PAM[1] = 1 and destination data width different from
      --  source data width), a non-null source block size must be a multiple
      --  of the destination data width (BNDT[2:0] versus
      --  GPDMA_C5TR1.DDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued.
      BNDT           : GPDMA_C5BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C5BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPDMA_C5LLR_LA_Field is HAL.UInt14;

   --  GPDMA channel 5 linked-list address register
   type GPDMA_C5LLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  If UT1 = UT2 = UB1 = USA = UDA = ULL = 0 and if LA[15:20] = 0, the
      --  current LLI is the last one. The channel transfer is completed
      --  without any update of the linked-list GPDMA register file. Else, this
      --  field is the pointer to the memory address offset from which the next
      --  linked-list data structure is automatically fetched from, once the
      --  data transfer is completed, in order to conditionally update the
      --  linked-list GPDMA internal register file (GPDMA_C5TR1, GPDMA_C5TR2,
      --  GPDMA_C5BR1, GPDMA_CxSAR, GPDMA_CxDAR and GPDMA_C5LLR). Note: The
      --  user must program the pointer to be 32-bit aligned. The two
      --  low-significant bits are write ignored.
      LA             : GPDMA_C5LLR_LA_Field := 16#0#;
      --  This bit is used to control the update of GPDMA_C5LLR from the memory
      --  during the link transfer. 0: no GPDMA_C5LLR update 1: GPDMA_C5LLR
      --  update
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : HAL.UInt10 := 16#0#;
      --  This bit is used to control the update of GPDMA_CxDAR from the memory
      --  during the link transfer. 0: no GPDMA_CxDAR update 1: GPDMA_CxDAR
      --  update
      UDA            : Boolean := False;
      --  This bit controls the update of GPDMA_CxSAR from the memory during
      --  the link transfer. 0: no GPDMA_CxSAR update 1: GPDMA_CxSAR update
      USA            : Boolean := False;
      --  This bit controls the update of GPDMA_C5BR1 from the memory during
      --  the link transfer. If UB1 = 0 and if GPDMA_C5LLR is not equal to 0,
      --  the linked-list is not completed. GPDMA_C5BR1.BNDT[15:0] is then
      --  restored to the programmed value after data transfer is completed and
      --  before the link transfer. 0: no GPDMA_C5BR1 update from memory
      --  (GPDMA_C5BR1.BNDT[15:0] restored if any link transfer) 1: GPDMA_C5BR1
      --  update
      UB1            : Boolean := False;
      --  This bit controls the update of GPDMA_C5TR2 from the memory during
      --  the link transfer. 0: no GPDMA_C5TR2 update 1: GPDMA_C5TR2 update
      UT2            : Boolean := False;
      --  This bit controls the update of GPDMA_C5TR1 from the memory during
      --  the link transfer. 0: no GPDMA_C5TR1 update 1: GPDMA_C5TR1 update
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C5LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C6LBAR_LBA_Field is HAL.UInt16;

   --  GPDMA channel 6 linked-list base address register
   type GPDMA_C6LBAR_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  None
      LBA           : GPDMA_C6LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C6LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   --  GPDMA channel 6 flag clear register
   type GPDMA_C6FCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. None 0: no effect 1: corresponding TCF flag cleared
      TCF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding HTF flag cleared
      HTF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding DTEF flag cleared
      DTEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding ULEF flag cleared
      ULEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding USEF flag cleared
      USEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding SUSPF flag cleared
      SUSPF          : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding TOF flag cleared
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C6FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype GPDMA_C6SR_FIFOL_Field is HAL.UInt8;

   --  GPDMA channel 6 status register
   type GPDMA_C6SR_Register is record
      --  Read-only. This idle flag is deasserted by hardware when the channel
      --  is enabled (GPDMA_C6CR.EN = 1) with a valid channel configuration (no
      --  USEF to be immediately reported). This idle flag is asserted after
      --  hard reset or by hardware when the channel is back in idle state (in
      --  suspended or disabled state). 0: channel not in idle state 1: channel
      --  in idle state
      IDLEF          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. A transfer complete event is either a block transfer
      --  complete, a 2D/repeated block transfer complete, or a LLI transfer
      --  complete including the upload of the next LLI if any, or the full
      --  linked-list completion, depending on the transfer complete event mode
      --  (GPDMA_C6TR2.TCEM[1:0]). 0: no transfer complete event 1: a transfer
      --  complete event occurred
      TCF            : Boolean;
      --  Read-only. A half transfer event is either a half block transfer or a
      --  half 2D/repeated block transfer, depending on the transfer complete
      --  event mode (GPDMA_C6TR2.TCEM[1:0]). A half block transfer occurs when
      --  half of the bytes of the source block size (rounded up integer of
      --  GPDMA_C6BR1.BNDT[15:0]/2) has been transferred to the destination. A
      --  half 2D/repeated block transfer occurs when half of the repeated
      --  blocks (rounded up integer of (GPDMA_C6BR1.BRC[10:0]+1)/2)) has been
      --  transferred to the destination. 0: no half transfer event 1: a half
      --  transfer event occurred
      HTF            : Boolean;
      --  Read-only. None 0: no data transfer error event 1: a master bus error
      --  event occurred on a data transfer
      DTEF           : Boolean;
      --  Read-only. None 0: no update link transfer error event 1: a master
      --  bus error event occurred while updating a linked-list register from
      --  memory
      ULEF           : Boolean;
      --  Read-only. None 0: no user setting error event 1: a user setting
      --  error event occurred
      USEF           : Boolean;
      --  Read-only. None 0: no completed suspension event 1: a completed
      --  suspension event occurred
      SUSPF          : Boolean;
      --  Read-only. None 0: no trigger overrun event 1: a trigger overrun
      --  event occurred
      TOF            : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Number of available write beats in the FIFO, in units of
      --  the programmed destination data width (see GPDMA_C6TR1.DDW_LOG2[1:0],
      --  in units of bytes, half-words, or words). Note: After having
      --  suspended an active transfer, the user may need to read FIFOL[7:0],
      --  additionally to GPDMA_C6BR1.BDNT[15:0] and GPDMA_C6BR1.BRC[10:0], to
      --  know how many data have been transferred to the destination. Before
      --  reading, the user may wait for the transfer to be suspended
      --  (GPDMA_C6SR.SUSPF = 1).
      FIFOL          : GPDMA_C6SR_FIFOL_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C6SR_Register use record
      IDLEF          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FIFOL          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C6CR_PRIO_Field is HAL.UInt2;

   --  GPDMA channel 6 control register
   type GPDMA_C6CR_Register is record
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 0. Else: this
      --  bit is deasserted by hardware when there is a transfer error (master
      --  bus error or user setting error) or when there is a channel transfer
      --  complete (channel ready to be configured, for example if LSM = 1 at
      --  the end of a single execution of the LLI). Else, this bit can be
      --  asserted by software. Writing 0 into this EN bit is ignored. 0:
      --  write: ignored, read: channel disabled 1: write: enable channel,
      --  read: channel enabled
      EN             : Boolean := False;
      --  Write-only. This bit is write only. Writing 0 has no impact. Writing
      --  1 implies the reset of the following: the FIFO, the channel internal
      --  state, SUSP and EN bits (whatever is written receptively in bit 2 and
      --  bit 0). The reset is effective when the channel is in steady state,
      --  meaning one of the following: - active channel in suspended state
      --  (GPDMA_C6SR.SUSPF = 1 and GPDMA_C6SR.IDLEF=GPDMA_C6CR.EN = 1) -
      --  channel in disabled state (GPDMA_C6SR.IDLEF = 1 and GPDMA_C6CR.EN =
      --  0). After writing a RESET, to continue using this channel, the user
      --  must explicitly reconfigure the channel including the
      --  hardware-modified configuration registers (GPDMA_C6BR1, GPDMA_CxSAR
      --  and GPDMA_CxDAR) before enabling again the channel (see the
      --  programming sequence in less than xe6
      --  [GPDMA_abort_restart/ID00-1465]/>). 0: no channel reset 1: channel
      --  reset
      RESET          : Boolean := False;
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 2. Else:
      --  Software must write 1 in order to suspend an active channel (channel
      --  with an ongoing GPDMA transfer over its master ports). The software
      --  must write 0 in order to resume a suspended channel, following the
      --  programming sequence detailed in less than xe5
      --  [GPDMA_channel_suspend_and_resume/ID00-1456]/>. 0: write: resume
      --  channel, read: channel not suspended 1: write: suspend channel, read:
      --  channel suspended.
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  None 0: interrupt disabled 1: interrupt enabled
      TCIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      HTIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      DTEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      ULEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      USEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      SUSPIE         : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  First the (possible 1D/repeated) block transfer is executed as
      --  defined by the current internal register file until
      --  GPDMA_C6BR1.BNDT[15:0] = 0 and GPDMA_C6BR1.BRC[10:0] = 0. Secondly
      --  the next linked-list data structure is conditionally uploaded from
      --  memory as defined by GPDMA_C6LLR. Then channel execution is
      --  completed. 0: channel executed for the full linked-list and completed
      --  at the end of the last LLI (GPDMA_C6LLR = 0). The 16 low-significant
      --  bits of the link address are null (LA[15:0] = 0) and all the update
      --  bits are null (UT1 = UB1 = UT2 = USA = UDA = ULL = 0 and UT3 = UB2 =
      --  0). Then GPDMA_C6BR1.BNDT[15:0] = 0 and GPDMA_C6BR1.BRC[10:0] = 0. 1:
      --  channel executed once for the current LLI Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      LSM            : Boolean := False;
      --  This bit is used to allocate the master port for the update of the
      --  GPDMA linked-list registers from the memory. 0: port 0 (AHB)
      --  allocated 1: port 1 (AHB) allocated Note: This bit must be written
      --  when EN = 0. This bit is read-only when EN = 1.
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  None 00: low priority, low weight 01: low priority, mid weight 10:
      --  low priority, high weight 11: high priority Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      PRIO           : GPDMA_C6CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C6CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C6TR1_SDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C6TR1_SBL_1_Field is HAL.UInt6;
   subtype GPDMA_C6TR1_PAM_Field is HAL.UInt2;
   subtype GPDMA_C6TR1_DDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C6TR1_DBL_1_Field is HAL.UInt6;

   --  GPDMA channel 6 transfer register 1
   type GPDMA_C6TR1_Register is record
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and no transfer
      --  is issued. +: A source block size must be a multiple of the source
      --  data width (GPDMA_C6BR1.BNDT[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and no transfer is issued. +: A source
      --  burst transfer must have an aligned address with its data width
      --  (start address GPDMA_CxSAR[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and none transfer is issued.
      SDW_LOG2       : GPDMA_C6TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  The source address, pointed by GPDMA_CxSAR, is kept constant after a
      --  burst beat/single transfer or is incremented by the offset value
      --  corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      SINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  SBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width SDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 6, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      SBL_1          : GPDMA_C6TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  If DDW_LOG2[1:0] = SDW_LOG2[1:0]: if the data width of a burst
      --  destination transfer is equal to the data width of a burst source
      --  transfer, these bits are ignored.
      PAM            : GPDMA_C6TR1_PAM_Field := 16#0#;
      --  If the source data width is shorter than a word, this bit is ignored.
      --  If the source data width is a word: 0: no byte-based exchange within
      --  the unaligned half-word of each source word 1: the two consecutive
      --  bytes within the unaligned half-word of each source word are
      --  exchanged.
      SBx            : Boolean := False;
      --  This bit is used to allocate the master port for the source transfer
      --  0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note: This bit
      --  must be written when EN = 0. This bit is read-only when EN = 1.
      SAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC6 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC6 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC6 = 0. When
      --  GPDMA_SECCFGR.SEC6 is deasserted, this SSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer from the source is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      SSEC           : Boolean := False;
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and none
      --  transfer is issued. +: A destination burst transfer must have an
      --  aligned address with its data width (start address GPDMA_CxDAR[2:0]
      --  and address offset GPDMA_CxTR3.DAO[2:0], versus DDW_LOG2[1:0]).
      --  Otherwise a user setting error is reported and no transfer is issued.
      DDW_LOG2       : GPDMA_C6TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  The destination address, pointed by GPDMA_CxDAR, is kept constant
      --  after a burst beat/single transfer, or is incremented by the offset
      --  value corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      DINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  DBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width DDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 6, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      DBL_1          : GPDMA_C6TR1_DBL_1_Field := 16#0#;
      --  If the destination data size is a byte, this bit is ignored. If the
      --  destination data size is not a byte: 0: no byte-based exchange within
      --  half-word 1: the two consecutive (post PAM) bytes are exchanged in
      --  each destination half-word.
      DBx            : Boolean := False;
      --  If the destination data size is shorter than a word, this bit is
      --  ignored. If the destination data size is a word: 0: no halfword-based
      --  exchanged within word 1: the two consecutive (post PAM) half-words
      --  are exchanged in each destination word.
      DHx            : Boolean := False;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  This bit is used to allocate the master port for the destination
      --  transfer 0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note:
      --  This bit must be written when EN = 0. This bit is read-only when EN =
      --  1.
      DAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC6 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC6 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC6 = 0. When
      --  GPDMA_SECCFGR.SEC6 is deasserted, this DSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer to the destination is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C6TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBx            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBx            at 0 range 26 .. 26;
      DHx            at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C6TR2_REQSEL_Field is HAL.UInt7;
   subtype GPDMA_C6TR2_TRIGM_Field is HAL.UInt2;
   subtype GPDMA_C6TR2_TRIGSEL_Field is HAL.UInt6;
   subtype GPDMA_C6TR2_TRIGPOL_Field is HAL.UInt2;
   subtype GPDMA_C6TR2_TCEM_Field is HAL.UInt2;

   --  GPDMA channel 6 transfer register 2
   type GPDMA_C6TR2_Register is record
      --  These bits are ignored if channel 6 is activated (GPDMA_C6CR.EN
      --  asserted) with SWREQ=1 (software request for a memory-to-memory
      --  transfer). Else, the selected hardware request is internally taken
      --  into account as per less than xe4 [GPDMA_requests]/>. The user must
      --  not assign a same input hardware request (same REQSEL[6:0] value) to
      --  different active GPDMA channels (GPDMA_C6CR.EN = 1 and
      --  GPDMA_C6TR2.SWREQ = 0 for these channels). GPDMA is not intended to
      --  hardware support the case of simultaneous enabled channels
      --  incorrectly configured with a same hardware peripheral request
      --  signal, and there is no user setting error reporting.
      REQSEL         : GPDMA_C6TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  This bit is internally taken into account when GPDMA_C6CR.EN is
      --  asserted. 0: no software request. The selected hardware request
      --  REQSEL[6:0] is taken into account. 1: software request for a
      --  memory-to-memory transfer. The default selected hardware request as
      --  per REQSEL[6:0] is ignored.
      SWREQ          : Boolean := False;
      --  This bit is ignored if channel 6 is activated (GPDMA_C6CR.EN
      --  asserted) with SWREQ = 1 (software request for a memory-to-memory
      --  transfer). Else: 0: selected hardware request driven by a source
      --  peripheral (request signal taken into account by the GPDMA transfer
      --  scheduler over the source/read port) 1: selected hardware request
      --  driven by a destination peripheral (request signal taken into account
      --  by the GPDMA transfer scheduler over the destination/write port)
      --  Note: If the channel 6 is activated (GPDMA_C6CR.EN is asserted) with
      --  SWREQ = 0 and PFREQ = 1 (peripheral hardware request with peripheral
      --  flow-control mode), any software assertion to this DREQ bit is
      --  ignored: in peripheral flow-control mode, only a peripheral-to-memory
      --  transfer is supported.
      DREQ           : Boolean := False;
      --  If the channel 6 is activated (GPDMA_C6CR.EN asserted) with SWREQ = 1
      --  (software request for a memory-to-memory transfer), this bit is
      --  ignored. Else: 0: the selected hardware request is driven by a
      --  peripheral with a hardware request/acknowledge protocol at a burst
      --  level. 1: the selected hardware request is driven by a peripheral
      --  with a hardware request/acknowledge protocol at a block level (see
      --  less than xe4 [GPDMA_requests]/>).
      BREQ           : Boolean := False;
      --  Caution: If a given channel 6 is not implemented with this feature,
      --  this bit is reserved and PFREQ is not present (see less than xe1
      --  [GPDMA_channels]/> for the list of the implemented channels with this
      --  feature).
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  These bits define the transfer granularity for its conditioning by
      --  the trigger. If the channel 6 is enabled (GPDMA_C6CR.EN asserted)
      --  with TRIGPOL[1:0] = 00 or 11, these TRIGM[1:0] bits are ignored.
      --  Else, a GPDMA transfer is conditioned by at least one trigger hit:
      --  00: at block level: the first burst read of each block transfer is
      --  conditioned by one hit trigger (channel 6 = 12 to 15, for each block
      --  if a 2D/repeated block is configured with GPDMA_C6BR1.BRC[10:0] is
      --  not equal to 0). 10: at link level: a LLI link transfer is
      --  conditioned by one hit trigger. The LLI data transfer (if any) is not
      --  conditioned. 11: at programmed burst level: If SWREQ = 1, each
      --  programmed burst read is conditioned by one hit trigger. If SWREQ =
      --  0, each programmed burst that is requested by the selected
      --  peripheral, is conditioned by one hit trigger. - If the peripheral is
      --  programmed as a source (DREQ = 0) of the LLI data transfer, each
      --  programmed burst read is conditioned. - If the peripheral is
      --  programmed as a destination (DREQ = 1) of the LLI data transfer, each
      --  programmed burst write is conditioned. The first memory burst read of
      --  a (possibly 2D/repeated) block, also named as the first ready
      --  FIFO-based source burst, is gated by the occurrence of both the
      --  hardware request and the first trigger hit.01: channel 6 = 0 to ,
      --  same as 00; channel 6 , at 2D/repeated block level. The first burst
      --  read of a 2D/repeated block transfer is conditioned by one hit
      --  trigger. The GPDMA monitoring of a trigger for channel 6 is started
      --  when the channel is enabled/loaded with a new active trigger
      --  configuration: rising or falling edge on a selected trigger
      --  (TRIGPOL[1:0] = 01 or respectively TRIGPOL[1:0]=10). The monitoring
      --  of this trigger is kept active during the triggered and uncompleted
      --  (data or link) transfer; and if a new trigger is detected then, this
      --  hit is internally memorized to grant the next transfer, as long as
      --  the defined rising or falling edge is not modified, and the
      --  TRIGSEL[5:0] is not modified, and the channel is enabled.
      --  Transferring a next LLIn+1 that updates the GPDMA_C6TR2 with a new
      --  value for any of TRIGSEL[5:0] or TRIGPOL[1:0], resets the monitoring,
      --  trashing the memorized hit of the formerly defined LLIn trigger.
      --  After a first new trigger hitn+1 is memorized, if another second
      --  trigger hitn+2 is detected and if the hitn triggered transfer is
      --  still not completed, hitn+2 is lost and not memorized.memorized. A
      --  trigger overrun flag is reported (GPDMA_C6SR.TOF=1), and an interrupt
      --  is generated if enabled (GPDMA_C6CR.TOIE = 1). The channel is not
      --  automatically disabled by hardware due to a trigger overrun. Note:
      --  When the source block size is not a multiple of the source burst size
      --  and is a multiple of the source data width, then the last programmed
      --  source burst is not completed and is internally shorten to match the
      --  block size. In this case, if TRIGM[1:0] = 11 and (SWREQ = 1 or (SWREQ
      --  = 0 and DREQ = 0)), the shortened burst transfer (by singles or/and
      --  by bursts of lower length) is conditioned once by the trigger. +:
      --  When the programmed destination burst is internally shortened by
      --  singles or/and by bursts of lower length (versus FIFO size, versus
      --  block size, 1-Kbyte boundary address crossing): if the trigger is
      --  conditioning the programmed destination burst (if TRIGM[1:0] = 11 and
      --  SWREQ = 0 and DREQ = 1), this shortened destination burst transfer is
      --  conditioned once by the trigger.
      TRIGM          : GPDMA_C6TR2_TRIGM_Field := 16#0#;
      --  These bits select the trigger event input of the GPDMA transfer (as
      --  per less than xe3 [GPDMA_triggers]/>), with anactive trigger event if
      --  TRIGPOL[1:0] is not equal to 00.
      TRIGSEL        : GPDMA_C6TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  These bits define the polarity of the selected trigger event input
      --  defined by TRIGSEL[5:0]. 00: no trigger (masked trigger event) 01:
      --  trigger on the rising edge 10: trigger on the falling edge 11: same
      --  as 00
      TRIGPOL        : GPDMA_C6TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  These bits define the transfer granularity for the transfer complete
      --  and half transfer complete events generation. 00: at block level
      --  (when GPDMA_C6BR1.BNDT[15:0] = 0): the complete (and the half)
      --  transfer event is generated at the (respectively half of the) end of
      --  a block. 01: channel 6 (0 to ), same as 00, channel 6 , at
      --  2D/repeated block level (when GPDMA_C6BR1.BRC[10:0] = 0 and
      --  GPDMA_C6BR1.BNDT[15:0] = 0). The complete (and the half) transfer
      --  event is generated at the end (respectively half of the end) of the
      --  2D/repeated block. 10: at LLI level: the complete transfer event is
      --  generated at the end of the LLI transfer, including the update of the
      --  LLI if any. The half transfer event is generated at the half of the
      --  LLI data transfer. The LLI data transfer is a block transfer or a
      --  2D/repeated block transfer for channel 6 , if any data transfer. 11:
      --  at channel level: the complete transfer event is generated at the end
      --  of the last LLI transfer. The half transfer event is generated at the
      --  half of the data transfer of the last LLI. The last LLI updates the
      --  link address GPDMA_C6LLR.LA[15:2] to zero and clears all the
      --  GPDMA_C6LLR update bits (UT1, UT2, UB1, USA, UDA and ULL, plus UT3
      --  and UB2). If the channel transfer is continuous/infinite, no event is
      --  generated. Note: If the initial LLI0 data transfer is null/void
      --  (directly programmed by the internal register file with
      --  GPDMA_C6BR1.BNDT[15:0] = 0), then neither the complete transfer event
      --  nor the half transfer event is generated. +: If the initial LLI0 data
      --  transfer is null/void (directly programmed by the internal register
      --  file with GPDMA_C6BR1.BNDT[15:0] = 0), then neither the complete
      --  transfer event nor the half transfer event is generated. +: If the
      --  initial LLI0 data transfer is null/void (directly programmed by the
      --  internal register file with GPDMA_C6BR1.BNDT[15:0] = 0), then the
      --  half transfer event is not generated, and the transfer complete event
      --  is generated when is completed the loading of the LLI1.
      TCEM           : GPDMA_C6TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C6TR2_Register use record
      REQSEL         at 0 range 0 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype GPDMA_C6BR1_BNDT_Field is HAL.UInt16;

   --  GPDMA channel 6 block register 1
   type GPDMA_C6BR1_Register is record
      --  Block size transferred from the source. When the channel is enabled,
      --  this field becomes read-only and is decremented, indicating the
      --  remaining number of data items in the current source block to be
      --  transferred. BNDT[15:0] is programmed in number of bytes, maximum
      --  source block size is 64 Kbytes -1. Once the last data transfer is
      --  completed (BNDT[15:0] = 0): - if GPDMA_C6LLR.UB1 = 1, this field is
      --  updated by the LLI in the memory. - if GPDMA_C6LLR.UB1 = 0 and if
      --  there is at least one not null Uxx update bit, this field is
      --  internally restored to the programmed value. - if all GPDMA_C6LLR.Uxx
      --  = 0 and if GPDMA_C6LLR.LA[15:0] is not equal to 0, this field is
      --  internally restored to the programmed value (infinite/continuous last
      --  LLI). - if GPDMA_C6LLR = 0, this field is kept as zero following the
      --  last LLI data transfer. Note: A non-null source block size must be a
      --  multiple of the source data width (BNDT[2:0] versus
      --  GPDMA_C6TR1.SDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued. +: When configured in packing mode
      --  (GPDMA_C6TR1.PAM[1] = 1 and destination data width different from
      --  source data width), a non-null source block size must be a multiple
      --  of the destination data width (BNDT[2:0] versus
      --  GPDMA_C6TR1.DDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued.
      BNDT           : GPDMA_C6BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C6BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPDMA_C6LLR_LA_Field is HAL.UInt14;

   --  GPDMA channel 6 linked-list address register
   type GPDMA_C6LLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  If UT1 = UT2 = UB1 = USA = UDA = ULL = 0 and if LA[15:20] = 0, the
      --  current LLI is the last one. The channel transfer is completed
      --  without any update of the linked-list GPDMA register file. Else, this
      --  field is the pointer to the memory address offset from which the next
      --  linked-list data structure is automatically fetched from, once the
      --  data transfer is completed, in order to conditionally update the
      --  linked-list GPDMA internal register file (GPDMA_C6TR1, GPDMA_C6TR2,
      --  GPDMA_C6BR1, GPDMA_CxSAR, GPDMA_CxDAR and GPDMA_C6LLR). Note: The
      --  user must program the pointer to be 32-bit aligned. The two
      --  low-significant bits are write ignored.
      LA             : GPDMA_C6LLR_LA_Field := 16#0#;
      --  This bit is used to control the update of GPDMA_C6LLR from the memory
      --  during the link transfer. 0: no GPDMA_C6LLR update 1: GPDMA_C6LLR
      --  update
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : HAL.UInt10 := 16#0#;
      --  This bit is used to control the update of GPDMA_CxDAR from the memory
      --  during the link transfer. 0: no GPDMA_CxDAR update 1: GPDMA_CxDAR
      --  update
      UDA            : Boolean := False;
      --  This bit controls the update of GPDMA_CxSAR from the memory during
      --  the link transfer. 0: no GPDMA_CxSAR update 1: GPDMA_CxSAR update
      USA            : Boolean := False;
      --  This bit controls the update of GPDMA_C6BR1 from the memory during
      --  the link transfer. If UB1 = 0 and if GPDMA_C6LLR is not equal to 0,
      --  the linked-list is not completed. GPDMA_C6BR1.BNDT[15:0] is then
      --  restored to the programmed value after data transfer is completed and
      --  before the link transfer. 0: no GPDMA_C6BR1 update from memory
      --  (GPDMA_C6BR1.BNDT[15:0] restored if any link transfer) 1: GPDMA_C6BR1
      --  update
      UB1            : Boolean := False;
      --  This bit controls the update of GPDMA_C6TR2 from the memory during
      --  the link transfer. 0: no GPDMA_C6TR2 update 1: GPDMA_C6TR2 update
      UT2            : Boolean := False;
      --  This bit controls the update of GPDMA_C6TR1 from the memory during
      --  the link transfer. 0: no GPDMA_C6TR1 update 1: GPDMA_C6TR1 update
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C6LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C7LBAR_LBA_Field is HAL.UInt16;

   --  GPDMA channel 7 linked-list base address register
   type GPDMA_C7LBAR_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  None
      LBA           : GPDMA_C7LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C7LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   --  GPDMA channel 7 flag clear register
   type GPDMA_C7FCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. None 0: no effect 1: corresponding TCF flag cleared
      TCF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding HTF flag cleared
      HTF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding DTEF flag cleared
      DTEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding ULEF flag cleared
      ULEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding USEF flag cleared
      USEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding SUSPF flag cleared
      SUSPF          : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding TOF flag cleared
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C7FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype GPDMA_C7SR_FIFOL_Field is HAL.UInt8;

   --  GPDMA channel 7 status register
   type GPDMA_C7SR_Register is record
      --  Read-only. This idle flag is deasserted by hardware when the channel
      --  is enabled (GPDMA_C7CR.EN = 1) with a valid channel configuration (no
      --  USEF to be immediately reported). This idle flag is asserted after
      --  hard reset or by hardware when the channel is back in idle state (in
      --  suspended or disabled state). 0: channel not in idle state 1: channel
      --  in idle state
      IDLEF          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. A transfer complete event is either a block transfer
      --  complete, a 2D/repeated block transfer complete, or a LLI transfer
      --  complete including the upload of the next LLI if any, or the full
      --  linked-list completion, depending on the transfer complete event mode
      --  (GPDMA_C7TR2.TCEM[1:0]). 0: no transfer complete event 1: a transfer
      --  complete event occurred
      TCF            : Boolean;
      --  Read-only. A half transfer event is either a half block transfer or a
      --  half 2D/repeated block transfer, depending on the transfer complete
      --  event mode (GPDMA_C7TR2.TCEM[1:0]). A half block transfer occurs when
      --  half of the bytes of the source block size (rounded up integer of
      --  GPDMA_C7BR1.BNDT[15:0]/2) has been transferred to the destination. A
      --  half 2D/repeated block transfer occurs when half of the repeated
      --  blocks (rounded up integer of (GPDMA_C7BR1.BRC[10:0]+1)/2)) has been
      --  transferred to the destination. 0: no half transfer event 1: a half
      --  transfer event occurred
      HTF            : Boolean;
      --  Read-only. None 0: no data transfer error event 1: a master bus error
      --  event occurred on a data transfer
      DTEF           : Boolean;
      --  Read-only. None 0: no update link transfer error event 1: a master
      --  bus error event occurred while updating a linked-list register from
      --  memory
      ULEF           : Boolean;
      --  Read-only. None 0: no user setting error event 1: a user setting
      --  error event occurred
      USEF           : Boolean;
      --  Read-only. None 0: no completed suspension event 1: a completed
      --  suspension event occurred
      SUSPF          : Boolean;
      --  Read-only. None 0: no trigger overrun event 1: a trigger overrun
      --  event occurred
      TOF            : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Number of available write beats in the FIFO, in units of
      --  the programmed destination data width (see GPDMA_C7TR1.DDW_LOG2[1:0],
      --  in units of bytes, half-words, or words). Note: After having
      --  suspended an active transfer, the user may need to read FIFOL[7:0],
      --  additionally to GPDMA_C7BR1.BDNT[15:0] and GPDMA_C7BR1.BRC[10:0], to
      --  know how many data have been transferred to the destination. Before
      --  reading, the user may wait for the transfer to be suspended
      --  (GPDMA_C7SR.SUSPF = 1).
      FIFOL          : GPDMA_C7SR_FIFOL_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C7SR_Register use record
      IDLEF          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FIFOL          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C7CR_PRIO_Field is HAL.UInt2;

   --  GPDMA channel 7 control register
   type GPDMA_C7CR_Register is record
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 0. Else: this
      --  bit is deasserted by hardware when there is a transfer error (master
      --  bus error or user setting error) or when there is a channel transfer
      --  complete (channel ready to be configured, for example if LSM = 1 at
      --  the end of a single execution of the LLI). Else, this bit can be
      --  asserted by software. Writing 0 into this EN bit is ignored. 0:
      --  write: ignored, read: channel disabled 1: write: enable channel,
      --  read: channel enabled
      EN             : Boolean := False;
      --  Write-only. This bit is write only. Writing 0 has no impact. Writing
      --  1 implies the reset of the following: the FIFO, the channel internal
      --  state, SUSP and EN bits (whatever is written receptively in bit 2 and
      --  bit 0). The reset is effective when the channel is in steady state,
      --  meaning one of the following: - active channel in suspended state
      --  (GPDMA_C7SR.SUSPF = 1 and GPDMA_C7SR.IDLEF=GPDMA_C7CR.EN = 1) -
      --  channel in disabled state (GPDMA_C7SR.IDLEF = 1 and GPDMA_C7CR.EN =
      --  0). After writing a RESET, to continue using this channel, the user
      --  must explicitly reconfigure the channel including the
      --  hardware-modified configuration registers (GPDMA_C7BR1, GPDMA_CxSAR
      --  and GPDMA_CxDAR) before enabling again the channel (see the
      --  programming sequence in less than xe6
      --  [GPDMA_abort_restart/ID00-1465]/>). 0: no channel reset 1: channel
      --  reset
      RESET          : Boolean := False;
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 2. Else:
      --  Software must write 1 in order to suspend an active channel (channel
      --  with an ongoing GPDMA transfer over its master ports). The software
      --  must write 0 in order to resume a suspended channel, following the
      --  programming sequence detailed in less than xe5
      --  [GPDMA_channel_suspend_and_resume/ID00-1456]/>. 0: write: resume
      --  channel, read: channel not suspended 1: write: suspend channel, read:
      --  channel suspended.
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  None 0: interrupt disabled 1: interrupt enabled
      TCIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      HTIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      DTEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      ULEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      USEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      SUSPIE         : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  First the (possible 1D/repeated) block transfer is executed as
      --  defined by the current internal register file until
      --  GPDMA_C7BR1.BNDT[15:0] = 0 and GPDMA_C7BR1.BRC[10:0] = 0. Secondly
      --  the next linked-list data structure is conditionally uploaded from
      --  memory as defined by GPDMA_C7LLR. Then channel execution is
      --  completed. 0: channel executed for the full linked-list and completed
      --  at the end of the last LLI (GPDMA_C7LLR = 0). The 16 low-significant
      --  bits of the link address are null (LA[15:0] = 0) and all the update
      --  bits are null (UT1 = UB1 = UT2 = USA = UDA = ULL = 0 and UT3 = UB2 =
      --  0). Then GPDMA_C7BR1.BNDT[15:0] = 0 and GPDMA_C7BR1.BRC[10:0] = 0. 1:
      --  channel executed once for the current LLI Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      LSM            : Boolean := False;
      --  This bit is used to allocate the master port for the update of the
      --  GPDMA linked-list registers from the memory. 0: port 0 (AHB)
      --  allocated 1: port 1 (AHB) allocated Note: This bit must be written
      --  when EN = 0. This bit is read-only when EN = 1.
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  None 00: low priority, low weight 01: low priority, mid weight 10:
      --  low priority, high weight 11: high priority Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      PRIO           : GPDMA_C7CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C7CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C7TR1_SDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C7TR1_SBL_1_Field is HAL.UInt6;
   subtype GPDMA_C7TR1_PAM_Field is HAL.UInt2;
   subtype GPDMA_C7TR1_DDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C7TR1_DBL_1_Field is HAL.UInt6;

   --  GPDMA channel 7 transfer register 1
   type GPDMA_C7TR1_Register is record
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and no transfer
      --  is issued. +: A source block size must be a multiple of the source
      --  data width (GPDMA_C7BR1.BNDT[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and no transfer is issued. +: A source
      --  burst transfer must have an aligned address with its data width
      --  (start address GPDMA_CxSAR[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and none transfer is issued.
      SDW_LOG2       : GPDMA_C7TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  The source address, pointed by GPDMA_CxSAR, is kept constant after a
      --  burst beat/single transfer or is incremented by the offset value
      --  corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      SINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  SBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width SDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 7, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      SBL_1          : GPDMA_C7TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  If DDW_LOG2[1:0] = SDW_LOG2[1:0]: if the data width of a burst
      --  destination transfer is equal to the data width of a burst source
      --  transfer, these bits are ignored.
      PAM            : GPDMA_C7TR1_PAM_Field := 16#0#;
      --  If the source data width is shorter than a word, this bit is ignored.
      --  If the source data width is a word: 0: no byte-based exchange within
      --  the unaligned half-word of each source word 1: the two consecutive
      --  bytes within the unaligned half-word of each source word are
      --  exchanged.
      SBx            : Boolean := False;
      --  This bit is used to allocate the master port for the source transfer
      --  0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note: This bit
      --  must be written when EN = 0. This bit is read-only when EN = 1.
      SAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC7 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC7 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC7 = 0. When
      --  GPDMA_SECCFGR.SEC7 is deasserted, this SSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer from the source is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      SSEC           : Boolean := False;
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and none
      --  transfer is issued. +: A destination burst transfer must have an
      --  aligned address with its data width (start address GPDMA_CxDAR[2:0]
      --  and address offset GPDMA_CxTR3.DAO[2:0], versus DDW_LOG2[1:0]).
      --  Otherwise a user setting error is reported and no transfer is issued.
      DDW_LOG2       : GPDMA_C7TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  The destination address, pointed by GPDMA_CxDAR, is kept constant
      --  after a burst beat/single transfer, or is incremented by the offset
      --  value corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      DINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  DBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width DDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 7, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      DBL_1          : GPDMA_C7TR1_DBL_1_Field := 16#0#;
      --  If the destination data size is a byte, this bit is ignored. If the
      --  destination data size is not a byte: 0: no byte-based exchange within
      --  half-word 1: the two consecutive (post PAM) bytes are exchanged in
      --  each destination half-word.
      DBx            : Boolean := False;
      --  If the destination data size is shorter than a word, this bit is
      --  ignored. If the destination data size is a word: 0: no halfword-based
      --  exchanged within word 1: the two consecutive (post PAM) half-words
      --  are exchanged in each destination word.
      DHx            : Boolean := False;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  This bit is used to allocate the master port for the destination
      --  transfer 0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note:
      --  This bit must be written when EN = 0. This bit is read-only when EN =
      --  1.
      DAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC7 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC7 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC7 = 0. When
      --  GPDMA_SECCFGR.SEC7 is deasserted, this DSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer to the destination is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C7TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBx            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBx            at 0 range 26 .. 26;
      DHx            at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C7TR2_REQSEL_Field is HAL.UInt7;
   subtype GPDMA_C7TR2_TRIGM_Field is HAL.UInt2;
   subtype GPDMA_C7TR2_TRIGSEL_Field is HAL.UInt6;
   subtype GPDMA_C7TR2_TRIGPOL_Field is HAL.UInt2;
   subtype GPDMA_C7TR2_TCEM_Field is HAL.UInt2;

   --  GPDMA channel 7 transfer register 2
   type GPDMA_C7TR2_Register is record
      --  These bits are ignored if channel 7 is activated (GPDMA_C7CR.EN
      --  asserted) with SWREQ=1 (software request for a memory-to-memory
      --  transfer). Else, the selected hardware request is internally taken
      --  into account as per less than xe4 [GPDMA_requests]/>. The user must
      --  not assign a same input hardware request (same REQSEL[6:0] value) to
      --  different active GPDMA channels (GPDMA_C7CR.EN = 1 and
      --  GPDMA_C7TR2.SWREQ = 0 for these channels). GPDMA is not intended to
      --  hardware support the case of simultaneous enabled channels
      --  incorrectly configured with a same hardware peripheral request
      --  signal, and there is no user setting error reporting.
      REQSEL         : GPDMA_C7TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  This bit is internally taken into account when GPDMA_C7CR.EN is
      --  asserted. 0: no software request. The selected hardware request
      --  REQSEL[6:0] is taken into account. 1: software request for a
      --  memory-to-memory transfer. The default selected hardware request as
      --  per REQSEL[6:0] is ignored.
      SWREQ          : Boolean := False;
      --  This bit is ignored if channel 7 is activated (GPDMA_C7CR.EN
      --  asserted) with SWREQ = 1 (software request for a memory-to-memory
      --  transfer). Else: 0: selected hardware request driven by a source
      --  peripheral (request signal taken into account by the GPDMA transfer
      --  scheduler over the source/read port) 1: selected hardware request
      --  driven by a destination peripheral (request signal taken into account
      --  by the GPDMA transfer scheduler over the destination/write port)
      --  Note: If the channel 7 is activated (GPDMA_C7CR.EN is asserted) with
      --  SWREQ = 0 and PFREQ = 1 (peripheral hardware request with peripheral
      --  flow-control mode), any software assertion to this DREQ bit is
      --  ignored: in peripheral flow-control mode, only a peripheral-to-memory
      --  transfer is supported.
      DREQ           : Boolean := False;
      --  If the channel 7 is activated (GPDMA_C7CR.EN asserted) with SWREQ = 1
      --  (software request for a memory-to-memory transfer), this bit is
      --  ignored. Else: 0: the selected hardware request is driven by a
      --  peripheral with a hardware request/acknowledge protocol at a burst
      --  level. 1: the selected hardware request is driven by a peripheral
      --  with a hardware request/acknowledge protocol at a block level (see
      --  less than xe4 [GPDMA_requests]/>).
      BREQ           : Boolean := False;
      --  Caution: If a given channel 7 is not implemented with this feature,
      --  this bit is reserved and PFREQ is not present (see less than xe1
      --  [GPDMA_channels]/> for the list of the implemented channels with this
      --  feature).
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  These bits define the transfer granularity for its conditioning by
      --  the trigger. If the channel 7 is enabled (GPDMA_C7CR.EN asserted)
      --  with TRIGPOL[1:0] = 00 or 11, these TRIGM[1:0] bits are ignored.
      --  Else, a GPDMA transfer is conditioned by at least one trigger hit:
      --  00: at block level: the first burst read of each block transfer is
      --  conditioned by one hit trigger (channel 7 = 12 to 15, for each block
      --  if a 2D/repeated block is configured with GPDMA_C7BR1.BRC[10:0] is
      --  not equal to 0). 10: at link level: a LLI link transfer is
      --  conditioned by one hit trigger. The LLI data transfer (if any) is not
      --  conditioned. 11: at programmed burst level: If SWREQ = 1, each
      --  programmed burst read is conditioned by one hit trigger. If SWREQ =
      --  0, each programmed burst that is requested by the selected
      --  peripheral, is conditioned by one hit trigger. - If the peripheral is
      --  programmed as a source (DREQ = 0) of the LLI data transfer, each
      --  programmed burst read is conditioned. - If the peripheral is
      --  programmed as a destination (DREQ = 1) of the LLI data transfer, each
      --  programmed burst write is conditioned. The first memory burst read of
      --  a (possibly 2D/repeated) block, also named as the first ready
      --  FIFO-based source burst, is gated by the occurrence of both the
      --  hardware request and the first trigger hit.01: channel 7 = 0 to ,
      --  same as 00; channel 7 , at 2D/repeated block level. The first burst
      --  read of a 2D/repeated block transfer is conditioned by one hit
      --  trigger. The GPDMA monitoring of a trigger for channel 7 is started
      --  when the channel is enabled/loaded with a new active trigger
      --  configuration: rising or falling edge on a selected trigger
      --  (TRIGPOL[1:0] = 01 or respectively TRIGPOL[1:0]=10). The monitoring
      --  of this trigger is kept active during the triggered and uncompleted
      --  (data or link) transfer; and if a new trigger is detected then, this
      --  hit is internally memorized to grant the next transfer, as long as
      --  the defined rising or falling edge is not modified, and the
      --  TRIGSEL[5:0] is not modified, and the channel is enabled.
      --  Transferring a next LLIn+1 that updates the GPDMA_C7TR2 with a new
      --  value for any of TRIGSEL[5:0] or TRIGPOL[1:0], resets the monitoring,
      --  trashing the memorized hit of the formerly defined LLIn trigger.
      --  After a first new trigger hitn+1 is memorized, if another second
      --  trigger hitn+2 is detected and if the hitn triggered transfer is
      --  still not completed, hitn+2 is lost and not memorized.memorized. A
      --  trigger overrun flag is reported (GPDMA_C7SR.TOF=1), and an interrupt
      --  is generated if enabled (GPDMA_C7CR.TOIE = 1). The channel is not
      --  automatically disabled by hardware due to a trigger overrun. Note:
      --  When the source block size is not a multiple of the source burst size
      --  and is a multiple of the source data width, then the last programmed
      --  source burst is not completed and is internally shorten to match the
      --  block size. In this case, if TRIGM[1:0] = 11 and (SWREQ = 1 or (SWREQ
      --  = 0 and DREQ = 0)), the shortened burst transfer (by singles or/and
      --  by bursts of lower length) is conditioned once by the trigger. +:
      --  When the programmed destination burst is internally shortened by
      --  singles or/and by bursts of lower length (versus FIFO size, versus
      --  block size, 1-Kbyte boundary address crossing): if the trigger is
      --  conditioning the programmed destination burst (if TRIGM[1:0] = 11 and
      --  SWREQ = 0 and DREQ = 1), this shortened destination burst transfer is
      --  conditioned once by the trigger.
      TRIGM          : GPDMA_C7TR2_TRIGM_Field := 16#0#;
      --  These bits select the trigger event input of the GPDMA transfer (as
      --  per less than xe3 [GPDMA_triggers]/>), with anactive trigger event if
      --  TRIGPOL[1:0] is not equal to 00.
      TRIGSEL        : GPDMA_C7TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  These bits define the polarity of the selected trigger event input
      --  defined by TRIGSEL[5:0]. 00: no trigger (masked trigger event) 01:
      --  trigger on the rising edge 10: trigger on the falling edge 11: same
      --  as 00
      TRIGPOL        : GPDMA_C7TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  These bits define the transfer granularity for the transfer complete
      --  and half transfer complete events generation. 00: at block level
      --  (when GPDMA_C7BR1.BNDT[15:0] = 0): the complete (and the half)
      --  transfer event is generated at the (respectively half of the) end of
      --  a block. 01: channel 7 (0 to ), same as 00, channel 7 , at
      --  2D/repeated block level (when GPDMA_C7BR1.BRC[10:0] = 0 and
      --  GPDMA_C7BR1.BNDT[15:0] = 0). The complete (and the half) transfer
      --  event is generated at the end (respectively half of the end) of the
      --  2D/repeated block. 10: at LLI level: the complete transfer event is
      --  generated at the end of the LLI transfer, including the update of the
      --  LLI if any. The half transfer event is generated at the half of the
      --  LLI data transfer. The LLI data transfer is a block transfer or a
      --  2D/repeated block transfer for channel 7 , if any data transfer. 11:
      --  at channel level: the complete transfer event is generated at the end
      --  of the last LLI transfer. The half transfer event is generated at the
      --  half of the data transfer of the last LLI. The last LLI updates the
      --  link address GPDMA_C7LLR.LA[15:2] to zero and clears all the
      --  GPDMA_C7LLR update bits (UT1, UT2, UB1, USA, UDA and ULL, plus UT3
      --  and UB2). If the channel transfer is continuous/infinite, no event is
      --  generated. Note: If the initial LLI0 data transfer is null/void
      --  (directly programmed by the internal register file with
      --  GPDMA_C7BR1.BNDT[15:0] = 0), then neither the complete transfer event
      --  nor the half transfer event is generated. +: If the initial LLI0 data
      --  transfer is null/void (directly programmed by the internal register
      --  file with GPDMA_C7BR1.BNDT[15:0] = 0), then neither the complete
      --  transfer event nor the half transfer event is generated. +: If the
      --  initial LLI0 data transfer is null/void (directly programmed by the
      --  internal register file with GPDMA_C7BR1.BNDT[15:0] = 0), then the
      --  half transfer event is not generated, and the transfer complete event
      --  is generated when is completed the loading of the LLI1.
      TCEM           : GPDMA_C7TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C7TR2_Register use record
      REQSEL         at 0 range 0 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype GPDMA_C7BR1_BNDT_Field is HAL.UInt16;

   --  GPDMA channel 7 block register 1
   type GPDMA_C7BR1_Register is record
      --  Block size transferred from the source. When the channel is enabled,
      --  this field becomes read-only and is decremented, indicating the
      --  remaining number of data items in the current source block to be
      --  transferred. BNDT[15:0] is programmed in number of bytes, maximum
      --  source block size is 64 Kbytes -1. Once the last data transfer is
      --  completed (BNDT[15:0] = 0): - if GPDMA_C7LLR.UB1 = 1, this field is
      --  updated by the LLI in the memory. - if GPDMA_C7LLR.UB1 = 0 and if
      --  there is at least one not null Uxx update bit, this field is
      --  internally restored to the programmed value. - if all GPDMA_C7LLR.Uxx
      --  = 0 and if GPDMA_C7LLR.LA[15:0] is not equal to 0, this field is
      --  internally restored to the programmed value (infinite/continuous last
      --  LLI). - if GPDMA_C7LLR = 0, this field is kept as zero following the
      --  last LLI data transfer. Note: A non-null source block size must be a
      --  multiple of the source data width (BNDT[2:0] versus
      --  GPDMA_C7TR1.SDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued. +: When configured in packing mode
      --  (GPDMA_C7TR1.PAM[1] = 1 and destination data width different from
      --  source data width), a non-null source block size must be a multiple
      --  of the destination data width (BNDT[2:0] versus
      --  GPDMA_C7TR1.DDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued.
      BNDT           : GPDMA_C7BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C7BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPDMA_C7LLR_LA_Field is HAL.UInt14;

   --  GPDMA channel 7 linked-list address register
   type GPDMA_C7LLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  If UT1 = UT2 = UB1 = USA = UDA = ULL = 0 and if LA[15:20] = 0, the
      --  current LLI is the last one. The channel transfer is completed
      --  without any update of the linked-list GPDMA register file. Else, this
      --  field is the pointer to the memory address offset from which the next
      --  linked-list data structure is automatically fetched from, once the
      --  data transfer is completed, in order to conditionally update the
      --  linked-list GPDMA internal register file (GPDMA_C7TR1, GPDMA_C7TR2,
      --  GPDMA_C7BR1, GPDMA_CxSAR, GPDMA_CxDAR and GPDMA_C7LLR). Note: The
      --  user must program the pointer to be 32-bit aligned. The two
      --  low-significant bits are write ignored.
      LA             : GPDMA_C7LLR_LA_Field := 16#0#;
      --  This bit is used to control the update of GPDMA_C7LLR from the memory
      --  during the link transfer. 0: no GPDMA_C7LLR update 1: GPDMA_C7LLR
      --  update
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : HAL.UInt10 := 16#0#;
      --  This bit is used to control the update of GPDMA_CxDAR from the memory
      --  during the link transfer. 0: no GPDMA_CxDAR update 1: GPDMA_CxDAR
      --  update
      UDA            : Boolean := False;
      --  This bit controls the update of GPDMA_CxSAR from the memory during
      --  the link transfer. 0: no GPDMA_CxSAR update 1: GPDMA_CxSAR update
      USA            : Boolean := False;
      --  This bit controls the update of GPDMA_C7BR1 from the memory during
      --  the link transfer. If UB1 = 0 and if GPDMA_C7LLR is not equal to 0,
      --  the linked-list is not completed. GPDMA_C7BR1.BNDT[15:0] is then
      --  restored to the programmed value after data transfer is completed and
      --  before the link transfer. 0: no GPDMA_C7BR1 update from memory
      --  (GPDMA_C7BR1.BNDT[15:0] restored if any link transfer) 1: GPDMA_C7BR1
      --  update
      UB1            : Boolean := False;
      --  This bit controls the update of GPDMA_C7TR2 from the memory during
      --  the link transfer. 0: no GPDMA_C7TR2 update 1: GPDMA_C7TR2 update
      UT2            : Boolean := False;
      --  This bit controls the update of GPDMA_C7TR1 from the memory during
      --  the link transfer. 0: no GPDMA_C7TR1 update 1: GPDMA_C7TR1 update
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C7LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C8LBAR_LBA_Field is HAL.UInt16;

   --  GPDMA channel 8 linked-list base address register
   type GPDMA_C8LBAR_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  None
      LBA           : GPDMA_C8LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C8LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   --  GPDMA channel 8 flag clear register
   type GPDMA_C8FCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. None 0: no effect 1: corresponding TCF flag cleared
      TCF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding HTF flag cleared
      HTF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding DTEF flag cleared
      DTEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding ULEF flag cleared
      ULEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding USEF flag cleared
      USEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding SUSPF flag cleared
      SUSPF          : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding TOF flag cleared
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C8FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype GPDMA_C8SR_FIFOL_Field is HAL.UInt8;

   --  GPDMA channel 8 status register
   type GPDMA_C8SR_Register is record
      --  Read-only. This idle flag is deasserted by hardware when the channel
      --  is enabled (GPDMA_C8CR.EN = 1) with a valid channel configuration (no
      --  USEF to be immediately reported). This idle flag is asserted after
      --  hard reset or by hardware when the channel is back in idle state (in
      --  suspended or disabled state). 0: channel not in idle state 1: channel
      --  in idle state
      IDLEF          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. A transfer complete event is either a block transfer
      --  complete, a 2D/repeated block transfer complete, or a LLI transfer
      --  complete including the upload of the next LLI if any, or the full
      --  linked-list completion, depending on the transfer complete event mode
      --  (GPDMA_C8TR2.TCEM[1:0]). 0: no transfer complete event 1: a transfer
      --  complete event occurred
      TCF            : Boolean;
      --  Read-only. A half transfer event is either a half block transfer or a
      --  half 2D/repeated block transfer, depending on the transfer complete
      --  event mode (GPDMA_C8TR2.TCEM[1:0]). A half block transfer occurs when
      --  half of the bytes of the source block size (rounded up integer of
      --  GPDMA_C8BR1.BNDT[15:0]/2) has been transferred to the destination. A
      --  half 2D/repeated block transfer occurs when half of the repeated
      --  blocks (rounded up integer of (GPDMA_C8BR1.BRC[10:0]+1)/2)) has been
      --  transferred to the destination. 0: no half transfer event 1: a half
      --  transfer event occurred
      HTF            : Boolean;
      --  Read-only. None 0: no data transfer error event 1: a master bus error
      --  event occurred on a data transfer
      DTEF           : Boolean;
      --  Read-only. None 0: no update link transfer error event 1: a master
      --  bus error event occurred while updating a linked-list register from
      --  memory
      ULEF           : Boolean;
      --  Read-only. None 0: no user setting error event 1: a user setting
      --  error event occurred
      USEF           : Boolean;
      --  Read-only. None 0: no completed suspension event 1: a completed
      --  suspension event occurred
      SUSPF          : Boolean;
      --  Read-only. None 0: no trigger overrun event 1: a trigger overrun
      --  event occurred
      TOF            : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Number of available write beats in the FIFO, in units of
      --  the programmed destination data width (see GPDMA_C8TR1.DDW_LOG2[1:0],
      --  in units of bytes, half-words, or words). Note: After having
      --  suspended an active transfer, the user may need to read FIFOL[7:0],
      --  additionally to GPDMA_C8BR1.BDNT[15:0] and GPDMA_C8BR1.BRC[10:0], to
      --  know how many data have been transferred to the destination. Before
      --  reading, the user may wait for the transfer to be suspended
      --  (GPDMA_C8SR.SUSPF = 1).
      FIFOL          : GPDMA_C8SR_FIFOL_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C8SR_Register use record
      IDLEF          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FIFOL          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C8CR_PRIO_Field is HAL.UInt2;

   --  GPDMA channel 8 control register
   type GPDMA_C8CR_Register is record
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 0. Else: this
      --  bit is deasserted by hardware when there is a transfer error (master
      --  bus error or user setting error) or when there is a channel transfer
      --  complete (channel ready to be configured, for example if LSM = 1 at
      --  the end of a single execution of the LLI). Else, this bit can be
      --  asserted by software. Writing 0 into this EN bit is ignored. 0:
      --  write: ignored, read: channel disabled 1: write: enable channel,
      --  read: channel enabled
      EN             : Boolean := False;
      --  Write-only. This bit is write only. Writing 0 has no impact. Writing
      --  1 implies the reset of the following: the FIFO, the channel internal
      --  state, SUSP and EN bits (whatever is written receptively in bit 2 and
      --  bit 0). The reset is effective when the channel is in steady state,
      --  meaning one of the following: - active channel in suspended state
      --  (GPDMA_C8SR.SUSPF = 1 and GPDMA_C8SR.IDLEF=GPDMA_C8CR.EN = 1) -
      --  channel in disabled state (GPDMA_C8SR.IDLEF = 1 and GPDMA_C8CR.EN =
      --  0). After writing a RESET, to continue using this channel, the user
      --  must explicitly reconfigure the channel including the
      --  hardware-modified configuration registers (GPDMA_C8BR1, GPDMA_CxSAR
      --  and GPDMA_CxDAR) before enabling again the channel (see the
      --  programming sequence in less than xe6
      --  [GPDMA_abort_restart/ID00-1465]/>). 0: no channel reset 1: channel
      --  reset
      RESET          : Boolean := False;
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 2. Else:
      --  Software must write 1 in order to suspend an active channel (channel
      --  with an ongoing GPDMA transfer over its master ports). The software
      --  must write 0 in order to resume a suspended channel, following the
      --  programming sequence detailed in less than xe5
      --  [GPDMA_channel_suspend_and_resume/ID00-1456]/>. 0: write: resume
      --  channel, read: channel not suspended 1: write: suspend channel, read:
      --  channel suspended.
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  None 0: interrupt disabled 1: interrupt enabled
      TCIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      HTIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      DTEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      ULEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      USEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      SUSPIE         : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  First the (possible 1D/repeated) block transfer is executed as
      --  defined by the current internal register file until
      --  GPDMA_C8BR1.BNDT[15:0] = 0 and GPDMA_C8BR1.BRC[10:0] = 0. Secondly
      --  the next linked-list data structure is conditionally uploaded from
      --  memory as defined by GPDMA_C8LLR. Then channel execution is
      --  completed. 0: channel executed for the full linked-list and completed
      --  at the end of the last LLI (GPDMA_C8LLR = 0). The 16 low-significant
      --  bits of the link address are null (LA[15:0] = 0) and all the update
      --  bits are null (UT1 = UB1 = UT2 = USA = UDA = ULL = 0 and UT3 = UB2 =
      --  0). Then GPDMA_C8BR1.BNDT[15:0] = 0 and GPDMA_C8BR1.BRC[10:0] = 0. 1:
      --  channel executed once for the current LLI Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      LSM            : Boolean := False;
      --  This bit is used to allocate the master port for the update of the
      --  GPDMA linked-list registers from the memory. 0: port 0 (AHB)
      --  allocated 1: port 1 (AHB) allocated Note: This bit must be written
      --  when EN = 0. This bit is read-only when EN = 1.
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  None 00: low priority, low weight 01: low priority, mid weight 10:
      --  low priority, high weight 11: high priority Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      PRIO           : GPDMA_C8CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C8CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C8TR1_SDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C8TR1_SBL_1_Field is HAL.UInt6;
   subtype GPDMA_C8TR1_PAM_Field is HAL.UInt2;
   subtype GPDMA_C8TR1_DDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C8TR1_DBL_1_Field is HAL.UInt6;

   --  GPDMA channel 8 transfer register 1
   type GPDMA_C8TR1_Register is record
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and no transfer
      --  is issued. +: A source block size must be a multiple of the source
      --  data width (GPDMA_C8BR1.BNDT[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and no transfer is issued. +: A source
      --  burst transfer must have an aligned address with its data width
      --  (start address GPDMA_CxSAR[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and none transfer is issued.
      SDW_LOG2       : GPDMA_C8TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  The source address, pointed by GPDMA_CxSAR, is kept constant after a
      --  burst beat/single transfer or is incremented by the offset value
      --  corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      SINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  SBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width SDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 8, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      SBL_1          : GPDMA_C8TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  If DDW_LOG2[1:0] = SDW_LOG2[1:0]: if the data width of a burst
      --  destination transfer is equal to the data width of a burst source
      --  transfer, these bits are ignored.
      PAM            : GPDMA_C8TR1_PAM_Field := 16#0#;
      --  If the source data width is shorter than a word, this bit is ignored.
      --  If the source data width is a word: 0: no byte-based exchange within
      --  the unaligned half-word of each source word 1: the two consecutive
      --  bytes within the unaligned half-word of each source word are
      --  exchanged.
      SBx            : Boolean := False;
      --  This bit is used to allocate the master port for the source transfer
      --  0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note: This bit
      --  must be written when EN = 0. This bit is read-only when EN = 1.
      SAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC8 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC8 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC8 = 0. When
      --  GPDMA_SECCFGR.SEC8 is deasserted, this SSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer from the source is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      SSEC           : Boolean := False;
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and none
      --  transfer is issued. +: A destination burst transfer must have an
      --  aligned address with its data width (start address GPDMA_CxDAR[2:0]
      --  and address offset GPDMA_CxTR3.DAO[2:0], versus DDW_LOG2[1:0]).
      --  Otherwise a user setting error is reported and no transfer is issued.
      DDW_LOG2       : GPDMA_C8TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  The destination address, pointed by GPDMA_CxDAR, is kept constant
      --  after a burst beat/single transfer, or is incremented by the offset
      --  value corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      DINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  DBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width DDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 8, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      DBL_1          : GPDMA_C8TR1_DBL_1_Field := 16#0#;
      --  If the destination data size is a byte, this bit is ignored. If the
      --  destination data size is not a byte: 0: no byte-based exchange within
      --  half-word 1: the two consecutive (post PAM) bytes are exchanged in
      --  each destination half-word.
      DBx            : Boolean := False;
      --  If the destination data size is shorter than a word, this bit is
      --  ignored. If the destination data size is a word: 0: no halfword-based
      --  exchanged within word 1: the two consecutive (post PAM) half-words
      --  are exchanged in each destination word.
      DHx            : Boolean := False;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  This bit is used to allocate the master port for the destination
      --  transfer 0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note:
      --  This bit must be written when EN = 0. This bit is read-only when EN =
      --  1.
      DAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC8 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC8 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC8 = 0. When
      --  GPDMA_SECCFGR.SEC8 is deasserted, this DSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer to the destination is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C8TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBx            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBx            at 0 range 26 .. 26;
      DHx            at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C8TR2_REQSEL_Field is HAL.UInt7;
   subtype GPDMA_C8TR2_TRIGM_Field is HAL.UInt2;
   subtype GPDMA_C8TR2_TRIGSEL_Field is HAL.UInt6;
   subtype GPDMA_C8TR2_TRIGPOL_Field is HAL.UInt2;
   subtype GPDMA_C8TR2_TCEM_Field is HAL.UInt2;

   --  GPDMA channel 8 transfer register 2
   type GPDMA_C8TR2_Register is record
      --  These bits are ignored if channel 8 is activated (GPDMA_C8CR.EN
      --  asserted) with SWREQ=1 (software request for a memory-to-memory
      --  transfer). Else, the selected hardware request is internally taken
      --  into account as per less than xe4 [GPDMA_requests]/>. The user must
      --  not assign a same input hardware request (same REQSEL[6:0] value) to
      --  different active GPDMA channels (GPDMA_C8CR.EN = 1 and
      --  GPDMA_C8TR2.SWREQ = 0 for these channels). GPDMA is not intended to
      --  hardware support the case of simultaneous enabled channels
      --  incorrectly configured with a same hardware peripheral request
      --  signal, and there is no user setting error reporting.
      REQSEL         : GPDMA_C8TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  This bit is internally taken into account when GPDMA_C8CR.EN is
      --  asserted. 0: no software request. The selected hardware request
      --  REQSEL[6:0] is taken into account. 1: software request for a
      --  memory-to-memory transfer. The default selected hardware request as
      --  per REQSEL[6:0] is ignored.
      SWREQ          : Boolean := False;
      --  This bit is ignored if channel 8 is activated (GPDMA_C8CR.EN
      --  asserted) with SWREQ = 1 (software request for a memory-to-memory
      --  transfer). Else: 0: selected hardware request driven by a source
      --  peripheral (request signal taken into account by the GPDMA transfer
      --  scheduler over the source/read port) 1: selected hardware request
      --  driven by a destination peripheral (request signal taken into account
      --  by the GPDMA transfer scheduler over the destination/write port)
      --  Note: If the channel 8 is activated (GPDMA_C8CR.EN is asserted) with
      --  SWREQ = 0 and PFREQ = 1 (peripheral hardware request with peripheral
      --  flow-control mode), any software assertion to this DREQ bit is
      --  ignored: in peripheral flow-control mode, only a peripheral-to-memory
      --  transfer is supported.
      DREQ           : Boolean := False;
      --  If the channel 8 is activated (GPDMA_C8CR.EN asserted) with SWREQ = 1
      --  (software request for a memory-to-memory transfer), this bit is
      --  ignored. Else: 0: the selected hardware request is driven by a
      --  peripheral with a hardware request/acknowledge protocol at a burst
      --  level. 1: the selected hardware request is driven by a peripheral
      --  with a hardware request/acknowledge protocol at a block level (see
      --  less than xe4 [GPDMA_requests]/>).
      BREQ           : Boolean := False;
      --  Caution: If a given channel 8 is not implemented with this feature,
      --  this bit is reserved and PFREQ is not present (see less than xe1
      --  [GPDMA_channels]/> for the list of the implemented channels with this
      --  feature).
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  These bits define the transfer granularity for its conditioning by
      --  the trigger. If the channel 8 is enabled (GPDMA_C8CR.EN asserted)
      --  with TRIGPOL[1:0] = 00 or 11, these TRIGM[1:0] bits are ignored.
      --  Else, a GPDMA transfer is conditioned by at least one trigger hit:
      --  00: at block level: the first burst read of each block transfer is
      --  conditioned by one hit trigger (channel 8 = 12 to 15, for each block
      --  if a 2D/repeated block is configured with GPDMA_C8BR1.BRC[10:0] is
      --  not equal to 0). 10: at link level: a LLI link transfer is
      --  conditioned by one hit trigger. The LLI data transfer (if any) is not
      --  conditioned. 11: at programmed burst level: If SWREQ = 1, each
      --  programmed burst read is conditioned by one hit trigger. If SWREQ =
      --  0, each programmed burst that is requested by the selected
      --  peripheral, is conditioned by one hit trigger. - If the peripheral is
      --  programmed as a source (DREQ = 0) of the LLI data transfer, each
      --  programmed burst read is conditioned. - If the peripheral is
      --  programmed as a destination (DREQ = 1) of the LLI data transfer, each
      --  programmed burst write is conditioned. The first memory burst read of
      --  a (possibly 2D/repeated) block, also named as the first ready
      --  FIFO-based source burst, is gated by the occurrence of both the
      --  hardware request and the first trigger hit.01: channel 8 = 0 to ,
      --  same as 00; channel 8 , at 2D/repeated block level. The first burst
      --  read of a 2D/repeated block transfer is conditioned by one hit
      --  trigger. The GPDMA monitoring of a trigger for channel 8 is started
      --  when the channel is enabled/loaded with a new active trigger
      --  configuration: rising or falling edge on a selected trigger
      --  (TRIGPOL[1:0] = 01 or respectively TRIGPOL[1:0]=10). The monitoring
      --  of this trigger is kept active during the triggered and uncompleted
      --  (data or link) transfer; and if a new trigger is detected then, this
      --  hit is internally memorized to grant the next transfer, as long as
      --  the defined rising or falling edge is not modified, and the
      --  TRIGSEL[5:0] is not modified, and the channel is enabled.
      --  Transferring a next LLIn+1 that updates the GPDMA_C8TR2 with a new
      --  value for any of TRIGSEL[5:0] or TRIGPOL[1:0], resets the monitoring,
      --  trashing the memorized hit of the formerly defined LLIn trigger.
      --  After a first new trigger hitn+1 is memorized, if another second
      --  trigger hitn+2 is detected and if the hitn triggered transfer is
      --  still not completed, hitn+2 is lost and not memorized.memorized. A
      --  trigger overrun flag is reported (GPDMA_C8SR.TOF=1), and an interrupt
      --  is generated if enabled (GPDMA_C8CR.TOIE = 1). The channel is not
      --  automatically disabled by hardware due to a trigger overrun. Note:
      --  When the source block size is not a multiple of the source burst size
      --  and is a multiple of the source data width, then the last programmed
      --  source burst is not completed and is internally shorten to match the
      --  block size. In this case, if TRIGM[1:0] = 11 and (SWREQ = 1 or (SWREQ
      --  = 0 and DREQ = 0)), the shortened burst transfer (by singles or/and
      --  by bursts of lower length) is conditioned once by the trigger. +:
      --  When the programmed destination burst is internally shortened by
      --  singles or/and by bursts of lower length (versus FIFO size, versus
      --  block size, 1-Kbyte boundary address crossing): if the trigger is
      --  conditioning the programmed destination burst (if TRIGM[1:0] = 11 and
      --  SWREQ = 0 and DREQ = 1), this shortened destination burst transfer is
      --  conditioned once by the trigger.
      TRIGM          : GPDMA_C8TR2_TRIGM_Field := 16#0#;
      --  These bits select the trigger event input of the GPDMA transfer (as
      --  per less than xe3 [GPDMA_triggers]/>), with anactive trigger event if
      --  TRIGPOL[1:0] is not equal to 00.
      TRIGSEL        : GPDMA_C8TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  These bits define the polarity of the selected trigger event input
      --  defined by TRIGSEL[5:0]. 00: no trigger (masked trigger event) 01:
      --  trigger on the rising edge 10: trigger on the falling edge 11: same
      --  as 00
      TRIGPOL        : GPDMA_C8TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  These bits define the transfer granularity for the transfer complete
      --  and half transfer complete events generation. 00: at block level
      --  (when GPDMA_C8BR1.BNDT[15:0] = 0): the complete (and the half)
      --  transfer event is generated at the (respectively half of the) end of
      --  a block. 01: channel 8 (0 to ), same as 00, channel 8 , at
      --  2D/repeated block level (when GPDMA_C8BR1.BRC[10:0] = 0 and
      --  GPDMA_C8BR1.BNDT[15:0] = 0). The complete (and the half) transfer
      --  event is generated at the end (respectively half of the end) of the
      --  2D/repeated block. 10: at LLI level: the complete transfer event is
      --  generated at the end of the LLI transfer, including the update of the
      --  LLI if any. The half transfer event is generated at the half of the
      --  LLI data transfer. The LLI data transfer is a block transfer or a
      --  2D/repeated block transfer for channel 8 , if any data transfer. 11:
      --  at channel level: the complete transfer event is generated at the end
      --  of the last LLI transfer. The half transfer event is generated at the
      --  half of the data transfer of the last LLI. The last LLI updates the
      --  link address GPDMA_C8LLR.LA[15:2] to zero and clears all the
      --  GPDMA_C8LLR update bits (UT1, UT2, UB1, USA, UDA and ULL, plus UT3
      --  and UB2). If the channel transfer is continuous/infinite, no event is
      --  generated. Note: If the initial LLI0 data transfer is null/void
      --  (directly programmed by the internal register file with
      --  GPDMA_C8BR1.BNDT[15:0] = 0), then neither the complete transfer event
      --  nor the half transfer event is generated. +: If the initial LLI0 data
      --  transfer is null/void (directly programmed by the internal register
      --  file with GPDMA_C8BR1.BNDT[15:0] = 0), then neither the complete
      --  transfer event nor the half transfer event is generated. +: If the
      --  initial LLI0 data transfer is null/void (directly programmed by the
      --  internal register file with GPDMA_C8BR1.BNDT[15:0] = 0), then the
      --  half transfer event is not generated, and the transfer complete event
      --  is generated when is completed the loading of the LLI1.
      TCEM           : GPDMA_C8TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C8TR2_Register use record
      REQSEL         at 0 range 0 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype GPDMA_C8BR1_BNDT_Field is HAL.UInt16;

   --  GPDMA channel 8 block register 1
   type GPDMA_C8BR1_Register is record
      --  Block size transferred from the source. When the channel is enabled,
      --  this field becomes read-only and is decremented, indicating the
      --  remaining number of data items in the current source block to be
      --  transferred. BNDT[15:0] is programmed in number of bytes, maximum
      --  source block size is 64 Kbytes -1. Once the last data transfer is
      --  completed (BNDT[15:0] = 0): - if GPDMA_C8LLR.UB1 = 1, this field is
      --  updated by the LLI in the memory. - if GPDMA_C8LLR.UB1 = 0 and if
      --  there is at least one not null Uxx update bit, this field is
      --  internally restored to the programmed value. - if all GPDMA_C8LLR.Uxx
      --  = 0 and if GPDMA_C8LLR.LA[15:0] is not equal to 0, this field is
      --  internally restored to the programmed value (infinite/continuous last
      --  LLI). - if GPDMA_C8LLR = 0, this field is kept as zero following the
      --  last LLI data transfer. Note: A non-null source block size must be a
      --  multiple of the source data width (BNDT[2:0] versus
      --  GPDMA_C8TR1.SDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued. +: When configured in packing mode
      --  (GPDMA_C8TR1.PAM[1] = 1 and destination data width different from
      --  source data width), a non-null source block size must be a multiple
      --  of the destination data width (BNDT[2:0] versus
      --  GPDMA_C8TR1.DDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued.
      BNDT           : GPDMA_C8BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C8BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPDMA_C10BR1_BNDT_Field is HAL.UInt16;
   subtype GPDMA_C10BR1_BRC_Field is HAL.UInt11;

   --  GPDMA channel 10 block register 1
   type GPDMA_C10BR1_Register is record
      --  Block size transferred from the source. When the channel is enabled,
      --  this field becomes read-only and is decremented, indicating the
      --  remaining number of data items in the current source block to be
      --  transferred. BNDT[15:0] is programmed in number of bytes, maximum
      --  source block size is 64 Kbytes -1. Once the last data transfer is
      --  completed (BNDT[15:0] = 0): - if GPDMA_C10LLR.UB1 = 1, this field is
      --  updated by the LLI in the memory. - if GPDMA_C10LLR.UB1 = 0 and if
      --  there is at least one not null Uxx update bit, this field is
      --  internally restored to the programmed value. - if all
      --  GPDMA_C10LLR.Uxx = 0 and if GPDMA_C10LLR.LA[15:0] is not equal to 0,
      --  this field is internally restored to the programmed value
      --  (infinite/continuous last LLI). - if GPDMA_C10LLR = 0, this field is
      --  kept as zero following the last LLI data transfer. Note: A non-null
      --  source block size must be a multiple of the source data width
      --  (BNDT[2:0] versus GPDMA_C10TR1.SDW_LOG2[1:0]). Else a user setting
      --  error is reported and no transfer is issued. +: When configured in
      --  packing mode (GPDMA_C10TR1.PAM[1] = 1 and destination data width
      --  different from source data width), a non-null source block size must
      --  be a multiple of the destination data width (BNDT[2:0] versus
      --  GPDMA_C{x}TR1.DDW_LOG2[1:0]). Else a user setting error is reported
      --  and no transfer is issued.
      BNDT           : GPDMA_C10BR1_BNDT_Field := 16#0#;
      --  This field contains the number of repetitions of the current block (0
      --  to 2047). When the channel is enabled, this field becomes read-only.
      --  After decrements, this field indicates the remaining number of
      --  blocks, excluding the current one. This counter is hardware
      --  decremented for each completed block transfer. Once the last block
      --  transfer is completed (BRC[10:0] = BNDT[15:0] = 0): - If
      --  GPDMA_C10LLR.UB1 = 1, all GPDMA_C10BR1 fields are updated by the next
      --  LLI in the memory. - If GPDMA_C10LLR.UB1 = 0 and if there is at least
      --  one not null Uxx update bit, this field is internally restored to the
      --  programmed value. - if all GPDMA_C10LLR.Uxx = 0 and if
      --  GPDMA_C10LLR.LA[15:0] is not equal to 0, this field is internally
      --  restored to the programmed value (infinite/continuous last LLI). - if
      --  GPDMA_C10LL R = 0, this field is kept as zero following the last LLI
      --  and data transfer.
      BRC            : GPDMA_C10BR1_BRC_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  None 0: At the end of a programmed burst transfer from the source,
      --  the GPDMA_C10SAR register is updated by adding the programmed offset
      --  GPDMA_C10TR3.SAO to the current GPDMA_C10SAR value (current source
      --  address) 1: At the end of a programmed burst transfer from the
      --  source, the GPDMA_C10SAR register is updated by subtracting the
      --  programmed offset GPDMA_C10TR3.SAO to the current GPDMA_C10SAR value
      --  (current source address)
      SDEC           : Boolean := False;
      --  None 0: At the end of a programmed burst transfer to the destination,
      --  the GPDMA_C10DAR register is updated by adding the programmed offset
      --  GPDMA_C10TR3.DAO to the current GPDMA_C10DAR value (current
      --  destination address) 1: At the end of a programmed burst transfer to
      --  the destination, the GPDMA_C10DAR register is updated by subtracting
      --  the programmed offset GPDMA_C10TR3.DAO to the current GPDMA_C10DAR
      --  value (current destination address)
      DDEC           : Boolean := False;
      --  None 0: at the end of a block transfer, the GPDMA_C10SAR register is
      --  updated by adding the programmed offset GPDMA_C10BR2.BRSAO to the
      --  current GPDMA_C10SAR value (current source address) 1: at the end of
      --  a block transfer, the GPDMA_C10SAR register is updated by subtracting
      --  the programmed offset GPDMA_C10BR2.BRSAO from the current
      --  GPDMA_C10SAR value (current source address) Note: On top of this
      --  increment/decrement (depending on BRSDEC), GPDMA_C10SAR is in the
      --  same time also updated by the increment/decrement (depending on SDEC)
      --  of the GPDMA_C10TR3.SAO value, as it is done after any programmed
      --  burst transfer.
      BRSDEC         : Boolean := False;
      --  None 0: at the end of a block transfer, the GPDMA_C10DAR register is
      --  updated by adding the programmed offset GPDMA_C10BR2.BRDAO to the
      --  current GPDMA_C10DAR value (current destination address) 1: at the
      --  end of a block transfer, the GPDMA_C10DAR register is updated by
      --  subtracting the programmed offset GPDMA_C10BR2.BRDAO from the current
      --  GPDMA_C10DAR value (current destination address) Note: On top of this
      --  increment/decrement (depending on BRDDEC), GPDMA_C10DAR is in the
      --  same time also updated by the increment/decrement (depending on DDEC)
      --  of the GPDMA_C10TR3.DAO value, as it is usually done at the end of
      --  each programmed bursttransfer.
      BRDDEC         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C10BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      BRC            at 0 range 16 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SDEC           at 0 range 28 .. 28;
      DDEC           at 0 range 29 .. 29;
      BRSDEC         at 0 range 30 .. 30;
      BRDDEC         at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C10TR3_SAO_Field is HAL.UInt13;
   subtype GPDMA_C10TR3_DAO_Field is HAL.UInt13;

   --  GPDMA channel 10 transfer register 3
   type GPDMA_C10TR3_Register is record
      --  The source address, pointed by GPDMA_CxSAR, is incremented or
      --  decremented (depending on GPDMA_C10BR1.SDEC) by this offset SAO[12:0]
      --  for each programmed source burst. This offset is not including and is
      --  added to the programmed burst size when the completed burst is
      --  addressed in incremented mode (GPDMA_C10TR1.SINC = 1). Note: A source
      --  address offset must be aligned with the programmed data width of a
      --  source burst (SAO[2:0] versus GPDMA_C10TR1.SDW_LOG2[1:0]). Else a
      --  user setting error is reported and none transfer is issued. +: When
      --  the source block size is not a multiple of the destination burst size
      --  and is a multiple of the source data width, then the last programmed
      --  source burst is not completed and is internally shorten to match the
      --  block size. In this case, the additional GPDMA_CxTR3.SAO[12:0] is not
      --  applied.
      SAO            : GPDMA_C10TR3_SAO_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  The destination address, pointed by GPDMA_CxDAR, is incremented or
      --  decremented (depending on GPDMA_C10BR1.DDEC) by this offset DAO[12:0]
      --  for each programmed destination burst. This offset is not including
      --  and is added to the programmed burst size when the completed burst is
      --  addressed in incremented mode (GPDMA_C10TR1.DINC = 1). Note: A
      --  destination address offset must be aligned with the programmed data
      --  width of a destination burst (DAO[2:0] versus
      --  GPDMA_C10TR1.DDW_LOG2[1:0]). Else, a user setting error is reported
      --  and no transfer is issued.
      DAO            : GPDMA_C10TR3_DAO_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C10TR3_Register use record
      SAO            at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DAO            at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype GPDMA_C10BR2_BRSAO_Field is HAL.UInt16;
   subtype GPDMA_C10BR2_BRDAO_Field is HAL.UInt16;

   --  GPDMA channel 10 block register 2
   type GPDMA_C10BR2_Register is record
      --  For a channel with 2D addressing capability, this field is used to
      --  update (by addition or subtraction depending on GPDMA_C10BR1.BRSDEC)
      --  the current source address (GPDMA_CxSAR) at the end of a block
      --  transfer. Note: A block repeated source address offset must be
      --  aligned with the programmed data width of a source burst (BRSAO[2:0]
      --  versus GPDMA_C10TR1.SDW_LOG2[1:0]). Else a user setting error is
      --  reported and no transfer is issued. +: BRSAO[15:0] must be set to 0
      --  in peripheral flow-control mode (ifGPDMA_C10TR2.PFREQ = 1).
      BRSAO : GPDMA_C10BR2_BRSAO_Field := 16#0#;
      --  For a channel with 2D addressing capability, this field is used to
      --  update (by addition or subtraction depending on GPDMA_C10BR1.BRDDEC)
      --  the current destination address (GPDMA_CxDAR) at the end of a block
      --  transfer. Note: A block repeated destination address offset must be
      --  aligned with the programmed data width of a destination burst
      --  (BRDAO[2:0] versus GPDMA_C10TR1.DDW_LOG2[1:0]). Else a user setting
      --  error is reported and no transfer is issued. +: BRDAO[15:0] must be
      --  set to 0 in peripheral flow-control mode (ifGPDMA_C10TR2.PFREQ = 1).
      BRDAO : GPDMA_C10BR2_BRDAO_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C10BR2_Register use record
      BRSAO at 0 range 0 .. 15;
      BRDAO at 0 range 16 .. 31;
   end record;

   subtype GPDMA_C8LLR_LA_Field is HAL.UInt14;

   --  GPDMA channel 8 linked-list address register
   type GPDMA_C8LLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  If UT1 = UT2 = UB1 = USA = UDA = ULL = 0 and if LA[15:20] = 0, the
      --  current LLI is the last one. The channel transfer is completed
      --  without any update of the linked-list GPDMA register file. Else, this
      --  field is the pointer to the memory address offset from which the next
      --  linked-list data structure is automatically fetched from, once the
      --  data transfer is completed, in order to conditionally update the
      --  linked-list GPDMA internal register file (GPDMA_C8TR1, GPDMA_C8TR2,
      --  GPDMA_C8BR1, GPDMA_CxSAR, GPDMA_CxDAR and GPDMA_C8LLR). Note: The
      --  user must program the pointer to be 32-bit aligned. The two
      --  low-significant bits are write ignored.
      LA             : GPDMA_C8LLR_LA_Field := 16#0#;
      --  This bit is used to control the update of GPDMA_C8LLR from the memory
      --  during the link transfer. 0: no GPDMA_C8LLR update 1: GPDMA_C8LLR
      --  update
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : HAL.UInt10 := 16#0#;
      --  This bit is used to control the update of GPDMA_CxDAR from the memory
      --  during the link transfer. 0: no GPDMA_CxDAR update 1: GPDMA_CxDAR
      --  update
      UDA            : Boolean := False;
      --  This bit controls the update of GPDMA_CxSAR from the memory during
      --  the link transfer. 0: no GPDMA_CxSAR update 1: GPDMA_CxSAR update
      USA            : Boolean := False;
      --  This bit controls the update of GPDMA_C8BR1 from the memory during
      --  the link transfer. If UB1 = 0 and if GPDMA_C8LLR is not equal to 0,
      --  the linked-list is not completed. GPDMA_C8BR1.BNDT[15:0] is then
      --  restored to the programmed value after data transfer is completed and
      --  before the link transfer. 0: no GPDMA_C8BR1 update from memory
      --  (GPDMA_C8BR1.BNDT[15:0] restored if any link transfer) 1: GPDMA_C8BR1
      --  update
      UB1            : Boolean := False;
      --  This bit controls the update of GPDMA_C8TR2 from the memory during
      --  the link transfer. 0: no GPDMA_C8TR2 update 1: GPDMA_C8TR2 update
      UT2            : Boolean := False;
      --  This bit controls the update of GPDMA_C8TR1 from the memory during
      --  the link transfer. 0: no GPDMA_C8TR1 update 1: GPDMA_C8TR1 update
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C8LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C10LLR_LA_Field is HAL.UInt14;

   --  GPDMA channel 10 linked-list address register
   type GPDMA_C10LLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  If UT1 = UT2 = UB1 = USA = UDA = ULL = 0 and if LA[15:20] = 0, the
      --  current LLI is the last one. The channel transfer is completed
      --  without any update of the linked-list GPDMA register file. Else, this
      --  field is the pointer to the memory address offset from which the next
      --  linked-list data structure is automatically fetched from, once the
      --  data transfer is completed, in order to conditionally update the
      --  linked-list GPDMA internal register file (GPDMA_C10TR1, GPDMA_C10TR2,
      --  GPDMA_C10BR1, GPDMA_CxSAR, GPDMA_CxDAR and GPDMA_C10LLR). Note: The
      --  user must program the pointer to be 32-bit aligned. The two
      --  low-significant bits are write ignored.
      LA             : GPDMA_C10LLR_LA_Field := 16#0#;
      --  This bit is used to control the update of GPDMA_C10LLR from the
      --  memory during the link transfer. 0: no GPDMA_C10LLR update 1:
      --  GPDMA_C10LLR update
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_24 : HAL.UInt8 := 16#0#;
      --  This bit controls the update of GPDMA_CxBR2 from the memory during
      --  the link transfer. 0: no GPDMA_CxBR2 update 1: GPDMA_CxBR2 update
      UB2            : Boolean := False;
      --  This bit controls the update of GPDMA_CxTR3 from the memory during
      --  the link transfer. 0: no GPDMA_CxTR3 update 1: GPDMA_CxTR3 update
      UT3            : Boolean := False;
      --  This bit is used to control the update of GPDMA_CxDAR from the memory
      --  during the link transfer. 0: no GPDMA_CxDAR update 1: GPDMA_CxDAR
      --  update
      UDA            : Boolean := False;
      --  This bit controls the update of GPDMA_CxSAR from the memory during
      --  the link transfer. 0: no GPDMA_CxSAR update 1: GPDMA_CxSAR update
      USA            : Boolean := False;
      --  This bit controls the update of GPDMA_C10BR1 from the memory during
      --  the link transfer. If UB1 = 0 and if GPDMA_C10LLR is not equal to 0,
      --  the linked-list is not completed. GPDMA_C10BR1.BNDT[15:0] is then
      --  restored to the programmed value after data transfer is completed and
      --  before the link transfer. 0: no GPDMA_C10BR1 update from memory
      --  (GPDMA_C10BR1.BNDT[15:0] restored if any link transfer) 1:
      --  GPDMA_C10BR1 update
      UB1            : Boolean := False;
      --  This bit controls the update of GPDMA_C10TR2 from the memory during
      --  the link transfer. 0: no GPDMA_C10TR2 update 1: GPDMA_C10TR2 update
      UT2            : Boolean := False;
      --  This bit controls the update of GPDMA_C10TR1 from the memory during
      --  the link transfer. 0: no GPDMA_C10TR1 update 1: GPDMA_C10TR1 update
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C10LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_24 at 0 range 17 .. 24;
      UB2            at 0 range 25 .. 25;
      UT3            at 0 range 26 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C9LBAR_LBA_Field is HAL.UInt16;

   --  GPDMA channel 9 linked-list base address register
   type GPDMA_C9LBAR_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  None
      LBA           : GPDMA_C9LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C9LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   --  GPDMA channel 9 flag clear register
   type GPDMA_C9FCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. None 0: no effect 1: corresponding TCF flag cleared
      TCF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding HTF flag cleared
      HTF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding DTEF flag cleared
      DTEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding ULEF flag cleared
      ULEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding USEF flag cleared
      USEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding SUSPF flag cleared
      SUSPF          : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding TOF flag cleared
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C9FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype GPDMA_C9SR_FIFOL_Field is HAL.UInt8;

   --  GPDMA channel 9 status register
   type GPDMA_C9SR_Register is record
      --  Read-only. This idle flag is deasserted by hardware when the channel
      --  is enabled (GPDMA_C9CR.EN = 1) with a valid channel configuration (no
      --  USEF to be immediately reported). This idle flag is asserted after
      --  hard reset or by hardware when the channel is back in idle state (in
      --  suspended or disabled state). 0: channel not in idle state 1: channel
      --  in idle state
      IDLEF          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. A transfer complete event is either a block transfer
      --  complete, a 2D/repeated block transfer complete, or a LLI transfer
      --  complete including the upload of the next LLI if any, or the full
      --  linked-list completion, depending on the transfer complete event mode
      --  (GPDMA_C9TR2.TCEM[1:0]). 0: no transfer complete event 1: a transfer
      --  complete event occurred
      TCF            : Boolean;
      --  Read-only. A half transfer event is either a half block transfer or a
      --  half 2D/repeated block transfer, depending on the transfer complete
      --  event mode (GPDMA_C9TR2.TCEM[1:0]). A half block transfer occurs when
      --  half of the bytes of the source block size (rounded up integer of
      --  GPDMA_C9BR1.BNDT[15:0]/2) has been transferred to the destination. A
      --  half 2D/repeated block transfer occurs when half of the repeated
      --  blocks (rounded up integer of (GPDMA_C9BR1.BRC[10:0]+1)/2)) has been
      --  transferred to the destination. 0: no half transfer event 1: a half
      --  transfer event occurred
      HTF            : Boolean;
      --  Read-only. None 0: no data transfer error event 1: a master bus error
      --  event occurred on a data transfer
      DTEF           : Boolean;
      --  Read-only. None 0: no update link transfer error event 1: a master
      --  bus error event occurred while updating a linked-list register from
      --  memory
      ULEF           : Boolean;
      --  Read-only. None 0: no user setting error event 1: a user setting
      --  error event occurred
      USEF           : Boolean;
      --  Read-only. None 0: no completed suspension event 1: a completed
      --  suspension event occurred
      SUSPF          : Boolean;
      --  Read-only. None 0: no trigger overrun event 1: a trigger overrun
      --  event occurred
      TOF            : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Number of available write beats in the FIFO, in units of
      --  the programmed destination data width (see GPDMA_C9TR1.DDW_LOG2[1:0],
      --  in units of bytes, half-words, or words). Note: After having
      --  suspended an active transfer, the user may need to read FIFOL[7:0],
      --  additionally to GPDMA_C9BR1.BDNT[15:0] and GPDMA_C9BR1.BRC[10:0], to
      --  know how many data have been transferred to the destination. Before
      --  reading, the user may wait for the transfer to be suspended
      --  (GPDMA_C9SR.SUSPF = 1).
      FIFOL          : GPDMA_C9SR_FIFOL_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C9SR_Register use record
      IDLEF          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FIFOL          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C9CR_PRIO_Field is HAL.UInt2;

   --  GPDMA channel 9 control register
   type GPDMA_C9CR_Register is record
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 0. Else: this
      --  bit is deasserted by hardware when there is a transfer error (master
      --  bus error or user setting error) or when there is a channel transfer
      --  complete (channel ready to be configured, for example if LSM = 1 at
      --  the end of a single execution of the LLI). Else, this bit can be
      --  asserted by software. Writing 0 into this EN bit is ignored. 0:
      --  write: ignored, read: channel disabled 1: write: enable channel,
      --  read: channel enabled
      EN             : Boolean := False;
      --  Write-only. This bit is write only. Writing 0 has no impact. Writing
      --  1 implies the reset of the following: the FIFO, the channel internal
      --  state, SUSP and EN bits (whatever is written receptively in bit 2 and
      --  bit 0). The reset is effective when the channel is in steady state,
      --  meaning one of the following: - active channel in suspended state
      --  (GPDMA_C9SR.SUSPF = 1 and GPDMA_C9SR.IDLEF=GPDMA_C9CR.EN = 1) -
      --  channel in disabled state (GPDMA_C9SR.IDLEF = 1 and GPDMA_C9CR.EN =
      --  0). After writing a RESET, to continue using this channel, the user
      --  must explicitly reconfigure the channel including the
      --  hardware-modified configuration registers (GPDMA_C9BR1, GPDMA_CxSAR
      --  and GPDMA_CxDAR) before enabling again the channel (see the
      --  programming sequence in less than xe6
      --  [GPDMA_abort_restart/ID00-1465]/>). 0: no channel reset 1: channel
      --  reset
      RESET          : Boolean := False;
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 2. Else:
      --  Software must write 1 in order to suspend an active channel (channel
      --  with an ongoing GPDMA transfer over its master ports). The software
      --  must write 0 in order to resume a suspended channel, following the
      --  programming sequence detailed in less than xe5
      --  [GPDMA_channel_suspend_and_resume/ID00-1456]/>. 0: write: resume
      --  channel, read: channel not suspended 1: write: suspend channel, read:
      --  channel suspended.
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  None 0: interrupt disabled 1: interrupt enabled
      TCIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      HTIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      DTEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      ULEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      USEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      SUSPIE         : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  First the (possible 1D/repeated) block transfer is executed as
      --  defined by the current internal register file until
      --  GPDMA_C9BR1.BNDT[15:0] = 0 and GPDMA_C9BR1.BRC[10:0] = 0. Secondly
      --  the next linked-list data structure is conditionally uploaded from
      --  memory as defined by GPDMA_C9LLR. Then channel execution is
      --  completed. 0: channel executed for the full linked-list and completed
      --  at the end of the last LLI (GPDMA_C9LLR = 0). The 16 low-significant
      --  bits of the link address are null (LA[15:0] = 0) and all the update
      --  bits are null (UT1 = UB1 = UT2 = USA = UDA = ULL = 0 and UT3 = UB2 =
      --  0). Then GPDMA_C9BR1.BNDT[15:0] = 0 and GPDMA_C9BR1.BRC[10:0] = 0. 1:
      --  channel executed once for the current LLI Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      LSM            : Boolean := False;
      --  This bit is used to allocate the master port for the update of the
      --  GPDMA linked-list registers from the memory. 0: port 0 (AHB)
      --  allocated 1: port 1 (AHB) allocated Note: This bit must be written
      --  when EN = 0. This bit is read-only when EN = 1.
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  None 00: low priority, low weight 01: low priority, mid weight 10:
      --  low priority, high weight 11: high priority Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      PRIO           : GPDMA_C9CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C9CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C9TR1_SDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C9TR1_SBL_1_Field is HAL.UInt6;
   subtype GPDMA_C9TR1_PAM_Field is HAL.UInt2;
   subtype GPDMA_C9TR1_DDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C9TR1_DBL_1_Field is HAL.UInt6;

   --  GPDMA channel 9 transfer register 1
   type GPDMA_C9TR1_Register is record
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and no transfer
      --  is issued. +: A source block size must be a multiple of the source
      --  data width (GPDMA_C9BR1.BNDT[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and no transfer is issued. +: A source
      --  burst transfer must have an aligned address with its data width
      --  (start address GPDMA_CxSAR[2:0] versus SDW_LOG2[1:0]). Otherwise, a
      --  user setting error is reported and none transfer is issued.
      SDW_LOG2       : GPDMA_C9TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  The source address, pointed by GPDMA_CxSAR, is kept constant after a
      --  burst beat/single transfer or is incremented by the offset value
      --  corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      SINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  SBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width SDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 9, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      SBL_1          : GPDMA_C9TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  If DDW_LOG2[1:0] = SDW_LOG2[1:0]: if the data width of a burst
      --  destination transfer is equal to the data width of a burst source
      --  transfer, these bits are ignored.
      PAM            : GPDMA_C9TR1_PAM_Field := 16#0#;
      --  If the source data width is shorter than a word, this bit is ignored.
      --  If the source data width is a word: 0: no byte-based exchange within
      --  the unaligned half-word of each source word 1: the two consecutive
      --  bytes within the unaligned half-word of each source word are
      --  exchanged.
      SBx            : Boolean := False;
      --  This bit is used to allocate the master port for the source transfer
      --  0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note: This bit
      --  must be written when EN = 0. This bit is read-only when EN = 1.
      SAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC9 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC9 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC9 = 0. When
      --  GPDMA_SECCFGR.SEC9 is deasserted, this SSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer from the source is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      SSEC           : Boolean := False;
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and none
      --  transfer is issued. +: A destination burst transfer must have an
      --  aligned address with its data width (start address GPDMA_CxDAR[2:0]
      --  and address offset GPDMA_CxTR3.DAO[2:0], versus DDW_LOG2[1:0]).
      --  Otherwise a user setting error is reported and no transfer is issued.
      DDW_LOG2       : GPDMA_C9TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  The destination address, pointed by GPDMA_CxDAR, is kept constant
      --  after a burst beat/single transfer, or is incremented by the offset
      --  value corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      DINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  DBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width DDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 9, the GPDMA modifies and shortens the programmed
      --  burst into singles or bursts of lower length, to be compliant with
      --  the FIFO size. Transfer performance is lower, with GPDMA
      --  re-arbitration between effective and lower singles/bursts, but the
      --  data integrity is guaranteed.
      DBL_1          : GPDMA_C9TR1_DBL_1_Field := 16#0#;
      --  If the destination data size is a byte, this bit is ignored. If the
      --  destination data size is not a byte: 0: no byte-based exchange within
      --  half-word 1: the two consecutive (post PAM) bytes are exchanged in
      --  each destination half-word.
      DBx            : Boolean := False;
      --  If the destination data size is shorter than a word, this bit is
      --  ignored. If the destination data size is a word: 0: no halfword-based
      --  exchanged within word 1: the two consecutive (post PAM) half-words
      --  are exchanged in each destination word.
      DHx            : Boolean := False;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  This bit is used to allocate the master port for the destination
      --  transfer 0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note:
      --  This bit must be written when EN = 0. This bit is read-only when EN =
      --  1.
      DAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC9 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC9 = 1.
      --  A secure write is ignored when GPDMA_SECCFGR.SEC9 = 0. When
      --  GPDMA_SECCFGR.SEC9 is deasserted, this DSEC bit is also deasserted by
      --  hardware (on a secure reconfiguration of the channel as non-secure),
      --  and the GPDMA transfer to the destination is non-secure. 0: GPDMA
      --  transfer non-secure 1: GPDMA transfer secure
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C9TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBx            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBx            at 0 range 26 .. 26;
      DHx            at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C9TR2_REQSEL_Field is HAL.UInt7;
   subtype GPDMA_C9TR2_TRIGM_Field is HAL.UInt2;
   subtype GPDMA_C9TR2_TRIGSEL_Field is HAL.UInt6;
   subtype GPDMA_C9TR2_TRIGPOL_Field is HAL.UInt2;
   subtype GPDMA_C9TR2_TCEM_Field is HAL.UInt2;

   --  GPDMA channel 9 transfer register 2
   type GPDMA_C9TR2_Register is record
      --  These bits are ignored if channel 9 is activated (GPDMA_C9CR.EN
      --  asserted) with SWREQ=1 (software request for a memory-to-memory
      --  transfer). Else, the selected hardware request is internally taken
      --  into account as per less than xe4 [GPDMA_requests]/>. The user must
      --  not assign a same input hardware request (same REQSEL[6:0] value) to
      --  different active GPDMA channels (GPDMA_C9CR.EN = 1 and
      --  GPDMA_C9TR2.SWREQ = 0 for these channels). GPDMA is not intended to
      --  hardware support the case of simultaneous enabled channels
      --  incorrectly configured with a same hardware peripheral request
      --  signal, and there is no user setting error reporting.
      REQSEL         : GPDMA_C9TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  This bit is internally taken into account when GPDMA_C9CR.EN is
      --  asserted. 0: no software request. The selected hardware request
      --  REQSEL[6:0] is taken into account. 1: software request for a
      --  memory-to-memory transfer. The default selected hardware request as
      --  per REQSEL[6:0] is ignored.
      SWREQ          : Boolean := False;
      --  This bit is ignored if channel 9 is activated (GPDMA_C9CR.EN
      --  asserted) with SWREQ = 1 (software request for a memory-to-memory
      --  transfer). Else: 0: selected hardware request driven by a source
      --  peripheral (request signal taken into account by the GPDMA transfer
      --  scheduler over the source/read port) 1: selected hardware request
      --  driven by a destination peripheral (request signal taken into account
      --  by the GPDMA transfer scheduler over the destination/write port)
      --  Note: If the channel 9 is activated (GPDMA_C9CR.EN is asserted) with
      --  SWREQ = 0 and PFREQ = 1 (peripheral hardware request with peripheral
      --  flow-control mode), any software assertion to this DREQ bit is
      --  ignored: in peripheral flow-control mode, only a peripheral-to-memory
      --  transfer is supported.
      DREQ           : Boolean := False;
      --  If the channel 9 is activated (GPDMA_C9CR.EN asserted) with SWREQ = 1
      --  (software request for a memory-to-memory transfer), this bit is
      --  ignored. Else: 0: the selected hardware request is driven by a
      --  peripheral with a hardware request/acknowledge protocol at a burst
      --  level. 1: the selected hardware request is driven by a peripheral
      --  with a hardware request/acknowledge protocol at a block level (see
      --  less than xe4 [GPDMA_requests]/>).
      BREQ           : Boolean := False;
      --  Caution: If a given channel 9 is not implemented with this feature,
      --  this bit is reserved and PFREQ is not present (see less than xe1
      --  [GPDMA_channels]/> for the list of the implemented channels with this
      --  feature).
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  These bits define the transfer granularity for its conditioning by
      --  the trigger. If the channel 9 is enabled (GPDMA_C9CR.EN asserted)
      --  with TRIGPOL[1:0] = 00 or 11, these TRIGM[1:0] bits are ignored.
      --  Else, a GPDMA transfer is conditioned by at least one trigger hit:
      --  00: at block level: the first burst read of each block transfer is
      --  conditioned by one hit trigger (channel 9 = 12 to 15, for each block
      --  if a 2D/repeated block is configured with GPDMA_C9BR1.BRC[10:0] is
      --  not equal to 0). 10: at link level: a LLI link transfer is
      --  conditioned by one hit trigger. The LLI data transfer (if any) is not
      --  conditioned. 11: at programmed burst level: If SWREQ = 1, each
      --  programmed burst read is conditioned by one hit trigger. If SWREQ =
      --  0, each programmed burst that is requested by the selected
      --  peripheral, is conditioned by one hit trigger. - If the peripheral is
      --  programmed as a source (DREQ = 0) of the LLI data transfer, each
      --  programmed burst read is conditioned. - If the peripheral is
      --  programmed as a destination (DREQ = 1) of the LLI data transfer, each
      --  programmed burst write is conditioned. The first memory burst read of
      --  a (possibly 2D/repeated) block, also named as the first ready
      --  FIFO-based source burst, is gated by the occurrence of both the
      --  hardware request and the first trigger hit.01: channel 9 = 0 to ,
      --  same as 00; channel 9 , at 2D/repeated block level. The first burst
      --  read of a 2D/repeated block transfer is conditioned by one hit
      --  trigger. The GPDMA monitoring of a trigger for channel 9 is started
      --  when the channel is enabled/loaded with a new active trigger
      --  configuration: rising or falling edge on a selected trigger
      --  (TRIGPOL[1:0] = 01 or respectively TRIGPOL[1:0]=10). The monitoring
      --  of this trigger is kept active during the triggered and uncompleted
      --  (data or link) transfer; and if a new trigger is detected then, this
      --  hit is internally memorized to grant the next transfer, as long as
      --  the defined rising or falling edge is not modified, and the
      --  TRIGSEL[5:0] is not modified, and the channel is enabled.
      --  Transferring a next LLIn+1 that updates the GPDMA_C9TR2 with a new
      --  value for any of TRIGSEL[5:0] or TRIGPOL[1:0], resets the monitoring,
      --  trashing the memorized hit of the formerly defined LLIn trigger.
      --  After a first new trigger hitn+1 is memorized, if another second
      --  trigger hitn+2 is detected and if the hitn triggered transfer is
      --  still not completed, hitn+2 is lost and not memorized.memorized. A
      --  trigger overrun flag is reported (GPDMA_C9SR.TOF=1), and an interrupt
      --  is generated if enabled (GPDMA_C9CR.TOIE = 1). The channel is not
      --  automatically disabled by hardware due to a trigger overrun. Note:
      --  When the source block size is not a multiple of the source burst size
      --  and is a multiple of the source data width, then the last programmed
      --  source burst is not completed and is internally shorten to match the
      --  block size. In this case, if TRIGM[1:0] = 11 and (SWREQ = 1 or (SWREQ
      --  = 0 and DREQ = 0)), the shortened burst transfer (by singles or/and
      --  by bursts of lower length) is conditioned once by the trigger. +:
      --  When the programmed destination burst is internally shortened by
      --  singles or/and by bursts of lower length (versus FIFO size, versus
      --  block size, 1-Kbyte boundary address crossing): if the trigger is
      --  conditioning the programmed destination burst (if TRIGM[1:0] = 11 and
      --  SWREQ = 0 and DREQ = 1), this shortened destination burst transfer is
      --  conditioned once by the trigger.
      TRIGM          : GPDMA_C9TR2_TRIGM_Field := 16#0#;
      --  These bits select the trigger event input of the GPDMA transfer (as
      --  per less than xe3 [GPDMA_triggers]/>), with anactive trigger event if
      --  TRIGPOL[1:0] is not equal to 00.
      TRIGSEL        : GPDMA_C9TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  These bits define the polarity of the selected trigger event input
      --  defined by TRIGSEL[5:0]. 00: no trigger (masked trigger event) 01:
      --  trigger on the rising edge 10: trigger on the falling edge 11: same
      --  as 00
      TRIGPOL        : GPDMA_C9TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  These bits define the transfer granularity for the transfer complete
      --  and half transfer complete events generation. 00: at block level
      --  (when GPDMA_C9BR1.BNDT[15:0] = 0): the complete (and the half)
      --  transfer event is generated at the (respectively half of the) end of
      --  a block. 01: channel 9 (0 to ), same as 00, channel 9 , at
      --  2D/repeated block level (when GPDMA_C9BR1.BRC[10:0] = 0 and
      --  GPDMA_C9BR1.BNDT[15:0] = 0). The complete (and the half) transfer
      --  event is generated at the end (respectively half of the end) of the
      --  2D/repeated block. 10: at LLI level: the complete transfer event is
      --  generated at the end of the LLI transfer, including the update of the
      --  LLI if any. The half transfer event is generated at the half of the
      --  LLI data transfer. The LLI data transfer is a block transfer or a
      --  2D/repeated block transfer for channel 9 , if any data transfer. 11:
      --  at channel level: the complete transfer event is generated at the end
      --  of the last LLI transfer. The half transfer event is generated at the
      --  half of the data transfer of the last LLI. The last LLI updates the
      --  link address GPDMA_C9LLR.LA[15:2] to zero and clears all the
      --  GPDMA_C9LLR update bits (UT1, UT2, UB1, USA, UDA and ULL, plus UT3
      --  and UB2). If the channel transfer is continuous/infinite, no event is
      --  generated. Note: If the initial LLI0 data transfer is null/void
      --  (directly programmed by the internal register file with
      --  GPDMA_C9BR1.BNDT[15:0] = 0), then neither the complete transfer event
      --  nor the half transfer event is generated. +: If the initial LLI0 data
      --  transfer is null/void (directly programmed by the internal register
      --  file with GPDMA_C9BR1.BNDT[15:0] = 0), then neither the complete
      --  transfer event nor the half transfer event is generated. +: If the
      --  initial LLI0 data transfer is null/void (directly programmed by the
      --  internal register file with GPDMA_C9BR1.BNDT[15:0] = 0), then the
      --  half transfer event is not generated, and the transfer complete event
      --  is generated when is completed the loading of the LLI1.
      TCEM           : GPDMA_C9TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C9TR2_Register use record
      REQSEL         at 0 range 0 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype GPDMA_C9BR1_BNDT_Field is HAL.UInt16;

   --  GPDMA channel 9 block register 1
   type GPDMA_C9BR1_Register is record
      --  Block size transferred from the source. When the channel is enabled,
      --  this field becomes read-only and is decremented, indicating the
      --  remaining number of data items in the current source block to be
      --  transferred. BNDT[15:0] is programmed in number of bytes, maximum
      --  source block size is 64 Kbytes -1. Once the last data transfer is
      --  completed (BNDT[15:0] = 0): - if GPDMA_C9LLR.UB1 = 1, this field is
      --  updated by the LLI in the memory. - if GPDMA_C9LLR.UB1 = 0 and if
      --  there is at least one not null Uxx update bit, this field is
      --  internally restored to the programmed value. - if all GPDMA_C9LLR.Uxx
      --  = 0 and if GPDMA_C9LLR.LA[15:0] is not equal to 0, this field is
      --  internally restored to the programmed value (infinite/continuous last
      --  LLI). - if GPDMA_C9LLR = 0, this field is kept as zero following the
      --  last LLI data transfer. Note: A non-null source block size must be a
      --  multiple of the source data width (BNDT[2:0] versus
      --  GPDMA_C9TR1.SDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued. +: When configured in packing mode
      --  (GPDMA_C9TR1.PAM[1] = 1 and destination data width different from
      --  source data width), a non-null source block size must be a multiple
      --  of the destination data width (BNDT[2:0] versus
      --  GPDMA_C9TR1.DDW_LOG2[1:0]). Else a user setting error is reported and
      --  no transfer is issued.
      BNDT           : GPDMA_C9BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C9BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPDMA_C11BR1_BNDT_Field is HAL.UInt16;
   subtype GPDMA_C11BR1_BRC_Field is HAL.UInt11;

   --  GPDMA channel 11 block register 1
   type GPDMA_C11BR1_Register is record
      --  Block size transferred from the source. When the channel is enabled,
      --  this field becomes read-only and is decremented, indicating the
      --  remaining number of data items in the current source block to be
      --  transferred. BNDT[15:0] is programmed in number of bytes, maximum
      --  source block size is 64 Kbytes -1. Once the last data transfer is
      --  completed (BNDT[15:0] = 0): - if GPDMA_C11LLR.UB1 = 1, this field is
      --  updated by the LLI in the memory. - if GPDMA_C11LLR.UB1 = 0 and if
      --  there is at least one not null Uxx update bit, this field is
      --  internally restored to the programmed value. - if all
      --  GPDMA_C11LLR.Uxx = 0 and if GPDMA_C11LLR.LA[15:0] is not equal to 0,
      --  this field is internally restored to the programmed value
      --  (infinite/continuous last LLI). - if GPDMA_C11LLR = 0, this field is
      --  kept as zero following the last LLI data transfer. Note: A non-null
      --  source block size must be a multiple of the source data width
      --  (BNDT[2:0] versus GPDMA_C11TR1.SDW_LOG2[1:0]). Else a user setting
      --  error is reported and no transfer is issued. +: When configured in
      --  packing mode (GPDMA_C11TR1.PAM[1] = 1 and destination data width
      --  different from source data width), a non-null source block size must
      --  be a multiple of the destination data width (BNDT[2:0] versus
      --  GPDMA_C{x}TR1.DDW_LOG2[1:0]). Else a user setting error is reported
      --  and no transfer is issued.
      BNDT           : GPDMA_C11BR1_BNDT_Field := 16#0#;
      --  This field contains the number of repetitions of the current block (0
      --  to 2047). When the channel is enabled, this field becomes read-only.
      --  After decrements, this field indicates the remaining number of
      --  blocks, excluding the current one. This counter is hardware
      --  decremented for each completed block transfer. Once the last block
      --  transfer is completed (BRC[10:0] = BNDT[15:0] = 0): - If
      --  GPDMA_C11LLR.UB1 = 1, all GPDMA_C11BR1 fields are updated by the next
      --  LLI in the memory. - If GPDMA_C11LLR.UB1 = 0 and if there is at least
      --  one not null Uxx update bit, this field is internally restored to the
      --  programmed value. - if all GPDMA_C11LLR.Uxx = 0 and if
      --  GPDMA_C11LLR.LA[15:0] is not equal to 0, this field is internally
      --  restored to the programmed value (infinite/continuous last LLI). - if
      --  GPDMA_C11LL R = 0, this field is kept as zero following the last LLI
      --  and data transfer.
      BRC            : GPDMA_C11BR1_BRC_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  None 0: At the end of a programmed burst transfer from the source,
      --  the GPDMA_C11SAR register is updated by adding the programmed offset
      --  GPDMA_C11TR3.SAO to the current GPDMA_C11SAR value (current source
      --  address) 1: At the end of a programmed burst transfer from the
      --  source, the GPDMA_C11SAR register is updated by subtracting the
      --  programmed offset GPDMA_C11TR3.SAO to the current GPDMA_C11SAR value
      --  (current source address)
      SDEC           : Boolean := False;
      --  None 0: At the end of a programmed burst transfer to the destination,
      --  the GPDMA_C11DAR register is updated by adding the programmed offset
      --  GPDMA_C11TR3.DAO to the current GPDMA_C11DAR value (current
      --  destination address) 1: At the end of a programmed burst transfer to
      --  the destination, the GPDMA_C11DAR register is updated by subtracting
      --  the programmed offset GPDMA_C11TR3.DAO to the current GPDMA_C11DAR
      --  value (current destination address)
      DDEC           : Boolean := False;
      --  None 0: at the end of a block transfer, the GPDMA_C11SAR register is
      --  updated by adding the programmed offset GPDMA_C11BR2.BRSAO to the
      --  current GPDMA_C11SAR value (current source address) 1: at the end of
      --  a block transfer, the GPDMA_C11SAR register is updated by subtracting
      --  the programmed offset GPDMA_C11BR2.BRSAO from the current
      --  GPDMA_C11SAR value (current source address) Note: On top of this
      --  increment/decrement (depending on BRSDEC), GPDMA_C11SAR is in the
      --  same time also updated by the increment/decrement (depending on SDEC)
      --  of the GPDMA_C11TR3.SAO value, as it is done after any programmed
      --  burst transfer.
      BRSDEC         : Boolean := False;
      --  None 0: at the end of a block transfer, the GPDMA_C11DAR register is
      --  updated by adding the programmed offset GPDMA_C11BR2.BRDAO to the
      --  current GPDMA_C11DAR value (current destination address) 1: at the
      --  end of a block transfer, the GPDMA_C11DAR register is updated by
      --  subtracting the programmed offset GPDMA_C11BR2.BRDAO from the current
      --  GPDMA_C11DAR value (current destination address) Note: On top of this
      --  increment/decrement (depending on BRDDEC), GPDMA_C11DAR is in the
      --  same time also updated by the increment/decrement (depending on DDEC)
      --  of the GPDMA_C11TR3.DAO value, as it is usually done at the end of
      --  each programmed bursttransfer.
      BRDDEC         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C11BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      BRC            at 0 range 16 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SDEC           at 0 range 28 .. 28;
      DDEC           at 0 range 29 .. 29;
      BRSDEC         at 0 range 30 .. 30;
      BRDDEC         at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C11TR3_SAO_Field is HAL.UInt13;
   subtype GPDMA_C11TR3_DAO_Field is HAL.UInt13;

   --  GPDMA channel 11 transfer register 3
   type GPDMA_C11TR3_Register is record
      --  The source address, pointed by GPDMA_CxSAR, is incremented or
      --  decremented (depending on GPDMA_C11BR1.SDEC) by this offset SAO[12:0]
      --  for each programmed source burst. This offset is not including and is
      --  added to the programmed burst size when the completed burst is
      --  addressed in incremented mode (GPDMA_C11TR1.SINC = 1). Note: A source
      --  address offset must be aligned with the programmed data width of a
      --  source burst (SAO[2:0] versus GPDMA_C11TR1.SDW_LOG2[1:0]). Else a
      --  user setting error is reported and none transfer is issued. +: When
      --  the source block size is not a multiple of the destination burst size
      --  and is a multiple of the source data width, then the last programmed
      --  source burst is not completed and is internally shorten to match the
      --  block size. In this case, the additional GPDMA_CxTR3.SAO[12:0] is not
      --  applied.
      SAO            : GPDMA_C11TR3_SAO_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  The destination address, pointed by GPDMA_CxDAR, is incremented or
      --  decremented (depending on GPDMA_C11BR1.DDEC) by this offset DAO[12:0]
      --  for each programmed destination burst. This offset is not including
      --  and is added to the programmed burst size when the completed burst is
      --  addressed in incremented mode (GPDMA_C11TR1.DINC = 1). Note: A
      --  destination address offset must be aligned with the programmed data
      --  width of a destination burst (DAO[2:0] versus
      --  GPDMA_C11TR1.DDW_LOG2[1:0]). Else, a user setting error is reported
      --  and no transfer is issued.
      DAO            : GPDMA_C11TR3_DAO_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C11TR3_Register use record
      SAO            at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DAO            at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype GPDMA_C11BR2_BRSAO_Field is HAL.UInt16;
   subtype GPDMA_C11BR2_BRDAO_Field is HAL.UInt16;

   --  GPDMA channel 11 block register 2
   type GPDMA_C11BR2_Register is record
      --  For a channel with 2D addressing capability, this field is used to
      --  update (by addition or subtraction depending on GPDMA_C11BR1.BRSDEC)
      --  the current source address (GPDMA_CxSAR) at the end of a block
      --  transfer. Note: A block repeated source address offset must be
      --  aligned with the programmed data width of a source burst (BRSAO[2:0]
      --  versus GPDMA_C11TR1.SDW_LOG2[1:0]). Else a user setting error is
      --  reported and no transfer is issued. +: BRSAO[15:0] must be set to 0
      --  in peripheral flow-control mode (ifGPDMA_C11TR2.PFREQ = 1).
      BRSAO : GPDMA_C11BR2_BRSAO_Field := 16#0#;
      --  For a channel with 2D addressing capability, this field is used to
      --  update (by addition or subtraction depending on GPDMA_C11BR1.BRDDEC)
      --  the current destination address (GPDMA_CxDAR) at the end of a block
      --  transfer. Note: A block repeated destination address offset must be
      --  aligned with the programmed data width of a destination burst
      --  (BRDAO[2:0] versus GPDMA_C11TR1.DDW_LOG2[1:0]). Else a user setting
      --  error is reported and no transfer is issued. +: BRDAO[15:0] must be
      --  set to 0 in peripheral flow-control mode (ifGPDMA_C11TR2.PFREQ = 1).
      BRDAO : GPDMA_C11BR2_BRDAO_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C11BR2_Register use record
      BRSAO at 0 range 0 .. 15;
      BRDAO at 0 range 16 .. 31;
   end record;

   subtype GPDMA_C9LLR_LA_Field is HAL.UInt14;

   --  GPDMA channel 9 linked-list address register
   type GPDMA_C9LLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  If UT1 = UT2 = UB1 = USA = UDA = ULL = 0 and if LA[15:20] = 0, the
      --  current LLI is the last one. The channel transfer is completed
      --  without any update of the linked-list GPDMA register file. Else, this
      --  field is the pointer to the memory address offset from which the next
      --  linked-list data structure is automatically fetched from, once the
      --  data transfer is completed, in order to conditionally update the
      --  linked-list GPDMA internal register file (GPDMA_C9TR1, GPDMA_C9TR2,
      --  GPDMA_C9BR1, GPDMA_CxSAR, GPDMA_CxDAR and GPDMA_C9LLR). Note: The
      --  user must program the pointer to be 32-bit aligned. The two
      --  low-significant bits are write ignored.
      LA             : GPDMA_C9LLR_LA_Field := 16#0#;
      --  This bit is used to control the update of GPDMA_C9LLR from the memory
      --  during the link transfer. 0: no GPDMA_C9LLR update 1: GPDMA_C9LLR
      --  update
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : HAL.UInt10 := 16#0#;
      --  This bit is used to control the update of GPDMA_CxDAR from the memory
      --  during the link transfer. 0: no GPDMA_CxDAR update 1: GPDMA_CxDAR
      --  update
      UDA            : Boolean := False;
      --  This bit controls the update of GPDMA_CxSAR from the memory during
      --  the link transfer. 0: no GPDMA_CxSAR update 1: GPDMA_CxSAR update
      USA            : Boolean := False;
      --  This bit controls the update of GPDMA_C9BR1 from the memory during
      --  the link transfer. If UB1 = 0 and if GPDMA_C9LLR is not equal to 0,
      --  the linked-list is not completed. GPDMA_C9BR1.BNDT[15:0] is then
      --  restored to the programmed value after data transfer is completed and
      --  before the link transfer. 0: no GPDMA_C9BR1 update from memory
      --  (GPDMA_C9BR1.BNDT[15:0] restored if any link transfer) 1: GPDMA_C9BR1
      --  update
      UB1            : Boolean := False;
      --  This bit controls the update of GPDMA_C9TR2 from the memory during
      --  the link transfer. 0: no GPDMA_C9TR2 update 1: GPDMA_C9TR2 update
      UT2            : Boolean := False;
      --  This bit controls the update of GPDMA_C9TR1 from the memory during
      --  the link transfer. 0: no GPDMA_C9TR1 update 1: GPDMA_C9TR1 update
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C9LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_26 at 0 range 17 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C11LLR_LA_Field is HAL.UInt14;

   --  GPDMA channel 11 linked-list address register
   type GPDMA_C11LLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  If UT1 = UT2 = UB1 = USA = UDA = ULL = 0 and if LA[15:20] = 0, the
      --  current LLI is the last one. The channel transfer is completed
      --  without any update of the linked-list GPDMA register file. Else, this
      --  field is the pointer to the memory address offset from which the next
      --  linked-list data structure is automatically fetched from, once the
      --  data transfer is completed, in order to conditionally update the
      --  linked-list GPDMA internal register file (GPDMA_C11TR1, GPDMA_C11TR2,
      --  GPDMA_C11BR1, GPDMA_CxSAR, GPDMA_CxDAR and GPDMA_C11LLR). Note: The
      --  user must program the pointer to be 32-bit aligned. The two
      --  low-significant bits are write ignored.
      LA             : GPDMA_C11LLR_LA_Field := 16#0#;
      --  This bit is used to control the update of GPDMA_C11LLR from the
      --  memory during the link transfer. 0: no GPDMA_C11LLR update 1:
      --  GPDMA_C11LLR update
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_24 : HAL.UInt8 := 16#0#;
      --  This bit controls the update of GPDMA_CxBR2 from the memory during
      --  the link transfer. 0: no GPDMA_CxBR2 update 1: GPDMA_CxBR2 update
      UB2            : Boolean := False;
      --  This bit controls the update of GPDMA_CxTR3 from the memory during
      --  the link transfer. 0: no GPDMA_CxTR3 update 1: GPDMA_CxTR3 update
      UT3            : Boolean := False;
      --  This bit is used to control the update of GPDMA_CxDAR from the memory
      --  during the link transfer. 0: no GPDMA_CxDAR update 1: GPDMA_CxDAR
      --  update
      UDA            : Boolean := False;
      --  This bit controls the update of GPDMA_CxSAR from the memory during
      --  the link transfer. 0: no GPDMA_CxSAR update 1: GPDMA_CxSAR update
      USA            : Boolean := False;
      --  This bit controls the update of GPDMA_C11BR1 from the memory during
      --  the link transfer. If UB1 = 0 and if GPDMA_C11LLR is not equal to 0,
      --  the linked-list is not completed. GPDMA_C11BR1.BNDT[15:0] is then
      --  restored to the programmed value after data transfer is completed and
      --  before the link transfer. 0: no GPDMA_C11BR1 update from memory
      --  (GPDMA_C11BR1.BNDT[15:0] restored if any link transfer) 1:
      --  GPDMA_C11BR1 update
      UB1            : Boolean := False;
      --  This bit controls the update of GPDMA_C11TR2 from the memory during
      --  the link transfer. 0: no GPDMA_C11TR2 update 1: GPDMA_C11TR2 update
      UT2            : Boolean := False;
      --  This bit controls the update of GPDMA_C11TR1 from the memory during
      --  the link transfer. 0: no GPDMA_C11TR1 update 1: GPDMA_C11TR1 update
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C11LLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LA             at 0 range 2 .. 15;
      ULL            at 0 range 16 .. 16;
      Reserved_17_24 at 0 range 17 .. 24;
      UB2            at 0 range 25 .. 25;
      UT3            at 0 range 26 .. 26;
      UDA            at 0 range 27 .. 27;
      USA            at 0 range 28 .. 28;
      UB1            at 0 range 29 .. 29;
      UT2            at 0 range 30 .. 30;
      UT1            at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C10LBAR_LBA_Field is HAL.UInt16;

   --  GPDMA channel 10 linked-list base address register
   type GPDMA_C10LBAR_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  None
      LBA           : GPDMA_C10LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C10LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   --  GPDMA channel 10 flag clear register
   type GPDMA_C10FCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. None 0: no effect 1: corresponding TCF flag cleared
      TCF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding HTF flag cleared
      HTF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding DTEF flag cleared
      DTEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding ULEF flag cleared
      ULEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding USEF flag cleared
      USEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding SUSPF flag cleared
      SUSPF          : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding TOF flag cleared
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C10FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype GPDMA_C10SR_FIFOL_Field is HAL.UInt8;

   --  GPDMA channel 10 status register
   type GPDMA_C10SR_Register is record
      --  Read-only. This idle flag is deasserted by hardware when the channel
      --  is enabled (GPDMA_C10CR.EN = 1) with a valid channel configuration
      --  (no USEF to be immediately reported). This idle flag is asserted
      --  after hard reset or by hardware when the channel is back in idle
      --  state (in suspended or disabled state). 0: channel not in idle state
      --  1: channel in idle state
      IDLEF          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. A transfer complete event is either a block transfer
      --  complete, a 2D/repeated block transfer complete, or a LLI transfer
      --  complete including the upload of the next LLI if any, or the full
      --  linked-list completion, depending on the transfer complete event mode
      --  (GPDMA_C10TR2.TCEM[1:0]). 0: no transfer complete event 1: a transfer
      --  complete event occurred
      TCF            : Boolean;
      --  Read-only. A half transfer event is either a half block transfer or a
      --  half 2D/repeated block transfer, depending on the transfer complete
      --  event mode (GPDMA_C10TR2.TCEM[1:0]). A half block transfer occurs
      --  when half of the bytes of the source block size (rounded up integer
      --  of GPDMA_C10BR1.BNDT[15:0]/2) has been transferred to the
      --  destination. A half 2D/repeated block transfer occurs when half of
      --  the repeated blocks (rounded up integer of
      --  (GPDMA_C10BR1.BRC[10:0]+1)/2)) has been transferred to the
      --  destination. 0: no half transfer event 1: a half transfer event
      --  occurred
      HTF            : Boolean;
      --  Read-only. None 0: no data transfer error event 1: a master bus error
      --  event occurred on a data transfer
      DTEF           : Boolean;
      --  Read-only. None 0: no update link transfer error event 1: a master
      --  bus error event occurred while updating a linked-list register from
      --  memory
      ULEF           : Boolean;
      --  Read-only. None 0: no user setting error event 1: a user setting
      --  error event occurred
      USEF           : Boolean;
      --  Read-only. None 0: no completed suspension event 1: a completed
      --  suspension event occurred
      SUSPF          : Boolean;
      --  Read-only. None 0: no trigger overrun event 1: a trigger overrun
      --  event occurred
      TOF            : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Number of available write beats in the FIFO, in units of
      --  the programmed destination data width (see
      --  GPDMA_C10TR1.DDW_LOG2[1:0], in units of bytes, half-words, or words).
      --  Note: After having suspended an active transfer, the user may need to
      --  read FIFOL[7:0], additionally to GPDMA_C10BR1.BDNT[15:0] and
      --  GPDMA_C10BR1.BRC[10:0], to know how many data have been transferred
      --  to the destination. Before reading, the user may wait for the
      --  transfer to be suspended (GPDMA_C10SR.SUSPF = 1).
      FIFOL          : GPDMA_C10SR_FIFOL_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C10SR_Register use record
      IDLEF          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FIFOL          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C10CR_PRIO_Field is HAL.UInt2;

   --  GPDMA channel 10 control register
   type GPDMA_C10CR_Register is record
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 0. Else: this
      --  bit is deasserted by hardware when there is a transfer error (master
      --  bus error or user setting error) or when there is a channel transfer
      --  complete (channel ready to be configured, for example if LSM = 1 at
      --  the end of a single execution of the LLI). Else, this bit can be
      --  asserted by software. Writing 0 into this EN bit is ignored. 0:
      --  write: ignored, read: channel disabled 1: write: enable channel,
      --  read: channel enabled
      EN             : Boolean := False;
      --  Write-only. This bit is write only. Writing 0 has no impact. Writing
      --  1 implies the reset of the following: the FIFO, the channel internal
      --  state, SUSP and EN bits (whatever is written receptively in bit 2 and
      --  bit 0). The reset is effective when the channel is in steady state,
      --  meaning one of the following: - active channel in suspended state
      --  (GPDMA_C10SR.SUSPF = 1 and GPDMA_C10SR.IDLEF=GPDMA_C10CR.EN = 1) -
      --  channel in disabled state (GPDMA_C10SR.IDLEF = 1 and GPDMA_C10CR.EN =
      --  0). After writing a RESET, to continue using this channel, the user
      --  must explicitly reconfigure the channel including the
      --  hardware-modified configuration registers (GPDMA_C10BR1, GPDMA_CxSAR
      --  and GPDMA_CxDAR) before enabling again the channel (see the
      --  programming sequence in less than xe6
      --  [GPDMA_abort_restart/ID00-1465]/>). 0: no channel reset 1: channel
      --  reset
      RESET          : Boolean := False;
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 2. Else:
      --  Software must write 1 in order to suspend an active channel (channel
      --  with an ongoing GPDMA transfer over its master ports). The software
      --  must write 0 in order to resume a suspended channel, following the
      --  programming sequence detailed in less than xe5
      --  [GPDMA_channel_suspend_and_resume/ID00-1456]/>. 0: write: resume
      --  channel, read: channel not suspended 1: write: suspend channel, read:
      --  channel suspended.
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  None 0: interrupt disabled 1: interrupt enabled
      TCIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      HTIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      DTEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      ULEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      USEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      SUSPIE         : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  First the (possible 1D/repeated) block transfer is executed as
      --  defined by the current internal register file until
      --  GPDMA_C10BR1.BNDT[15:0] = 0 and GPDMA_C10BR1.BRC[10:0] = 0. Secondly
      --  the next linked-list data structure is conditionally uploaded from
      --  memory as defined by GPDMA_C10LLR. Then channel execution is
      --  completed. 0: channel executed for the full linked-list and completed
      --  at the end of the last LLI (GPDMA_C10LLR = 0). The 16 low-significant
      --  bits of the link address are null (LA[15:0] = 0) and all the update
      --  bits are null (UT1 = UB1 = UT2 = USA = UDA = ULL = 0 and UT3 = UB2 =
      --  0). Then GPDMA_C10BR1.BNDT[15:0] = 0 and GPDMA_C10BR1.BRC[10:0] = 0.
      --  1: channel executed once for the current LLI Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      LSM            : Boolean := False;
      --  This bit is used to allocate the master port for the update of the
      --  GPDMA linked-list registers from the memory. 0: port 0 (AHB)
      --  allocated 1: port 1 (AHB) allocated Note: This bit must be written
      --  when EN = 0. This bit is read-only when EN = 1.
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  None 00: low priority, low weight 01: low priority, mid weight 10:
      --  low priority, high weight 11: high priority Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      PRIO           : GPDMA_C10CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C10CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C10TR1_SDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C10TR1_SBL_1_Field is HAL.UInt6;
   subtype GPDMA_C10TR1_PAM_Field is HAL.UInt2;
   subtype GPDMA_C10TR1_DDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C10TR1_DBL_1_Field is HAL.UInt6;

   --  GPDMA channel 10 transfer register 1
   type GPDMA_C10TR1_Register is record
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and no transfer
      --  is issued. +: A source block size must be a multiple of the source
      --  data width (GPDMA_C10BR1.BNDT[2:0] versus SDW_LOG2[1:0]). Otherwise,
      --  a user setting error is reported and no transfer is issued. +: A
      --  source burst transfer must have an aligned address with its data
      --  width (start address GPDMA_CxSAR[2:0] versus SDW_LOG2[1:0]).
      --  Otherwise, a user setting error is reported and none transfer is
      --  issued.
      SDW_LOG2       : GPDMA_C10TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  The source address, pointed by GPDMA_CxSAR, is kept constant after a
      --  burst beat/single transfer or is incremented by the offset value
      --  corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      SINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  SBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width SDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 10, the GPDMA modifies and shortens the
      --  programmed burst into singles or bursts of lower length, to be
      --  compliant with the FIFO size. Transfer performance is lower, with
      --  GPDMA re-arbitration between effective and lower singles/bursts, but
      --  the data integrity is guaranteed.
      SBL_1          : GPDMA_C10TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  If DDW_LOG2[1:0] = SDW_LOG2[1:0]: if the data width of a burst
      --  destination transfer is equal to the data width of a burst source
      --  transfer, these bits are ignored.
      PAM            : GPDMA_C10TR1_PAM_Field := 16#0#;
      --  If the source data width is shorter than a word, this bit is ignored.
      --  If the source data width is a word: 0: no byte-based exchange within
      --  the unaligned half-word of each source word 1: the two consecutive
      --  bytes within the unaligned half-word of each source word are
      --  exchanged.
      SBx            : Boolean := False;
      --  This bit is used to allocate the master port for the source transfer
      --  0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note: This bit
      --  must be written when EN = 0. This bit is read-only when EN = 1.
      SAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC10 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC10 =
      --  1. A secure write is ignored when GPDMA_SECCFGR.SEC10 = 0. When
      --  GPDMA_SECCFGR.SEC10 is deasserted, this SSEC bit is also deasserted
      --  by hardware (on a secure reconfiguration of the channel as
      --  non-secure), and the GPDMA transfer from the source is non-secure. 0:
      --  GPDMA transfer non-secure 1: GPDMA transfer secure
      SSEC           : Boolean := False;
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and none
      --  transfer is issued. +: A destination burst transfer must have an
      --  aligned address with its data width (start address GPDMA_CxDAR[2:0]
      --  and address offset GPDMA_CxTR3.DAO[2:0], versus DDW_LOG2[1:0]).
      --  Otherwise a user setting error is reported and no transfer is issued.
      DDW_LOG2       : GPDMA_C10TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  The destination address, pointed by GPDMA_CxDAR, is kept constant
      --  after a burst beat/single transfer, or is incremented by the offset
      --  value corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      DINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  DBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width DDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 10, the GPDMA modifies and shortens the
      --  programmed burst into singles or bursts of lower length, to be
      --  compliant with the FIFO size. Transfer performance is lower, with
      --  GPDMA re-arbitration between effective and lower singles/bursts, but
      --  the data integrity is guaranteed.
      DBL_1          : GPDMA_C10TR1_DBL_1_Field := 16#0#;
      --  If the destination data size is a byte, this bit is ignored. If the
      --  destination data size is not a byte: 0: no byte-based exchange within
      --  half-word 1: the two consecutive (post PAM) bytes are exchanged in
      --  each destination half-word.
      DBx            : Boolean := False;
      --  If the destination data size is shorter than a word, this bit is
      --  ignored. If the destination data size is a word: 0: no halfword-based
      --  exchanged within word 1: the two consecutive (post PAM) half-words
      --  are exchanged in each destination word.
      DHx            : Boolean := False;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  This bit is used to allocate the master port for the destination
      --  transfer 0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note:
      --  This bit must be written when EN = 0. This bit is read-only when EN =
      --  1.
      DAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC10 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC10 =
      --  1. A secure write is ignored when GPDMA_SECCFGR.SEC10 = 0. When
      --  GPDMA_SECCFGR.SEC10 is deasserted, this DSEC bit is also deasserted
      --  by hardware (on a secure reconfiguration of the channel as
      --  non-secure), and the GPDMA transfer to the destination is non-secure.
      --  0: GPDMA transfer non-secure 1: GPDMA transfer secure
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C10TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBx            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBx            at 0 range 26 .. 26;
      DHx            at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C10TR2_REQSEL_Field is HAL.UInt7;
   subtype GPDMA_C10TR2_TRIGM_Field is HAL.UInt2;
   subtype GPDMA_C10TR2_TRIGSEL_Field is HAL.UInt6;
   subtype GPDMA_C10TR2_TRIGPOL_Field is HAL.UInt2;
   subtype GPDMA_C10TR2_TCEM_Field is HAL.UInt2;

   --  GPDMA channel 10 transfer register 2
   type GPDMA_C10TR2_Register is record
      --  These bits are ignored if channel 10 is activated (GPDMA_C10CR.EN
      --  asserted) with SWREQ=1 (software request for a memory-to-memory
      --  transfer). Else, the selected hardware request is internally taken
      --  into account as per less than xe4 [GPDMA_requests]/>. The user must
      --  not assign a same input hardware request (same REQSEL[6:0] value) to
      --  different active GPDMA channels (GPDMA_C10CR.EN = 1 and
      --  GPDMA_C10TR2.SWREQ = 0 for these channels). GPDMA is not intended to
      --  hardware support the case of simultaneous enabled channels
      --  incorrectly configured with a same hardware peripheral request
      --  signal, and there is no user setting error reporting.
      REQSEL         : GPDMA_C10TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  This bit is internally taken into account when GPDMA_C10CR.EN is
      --  asserted. 0: no software request. The selected hardware request
      --  REQSEL[6:0] is taken into account. 1: software request for a
      --  memory-to-memory transfer. The default selected hardware request as
      --  per REQSEL[6:0] is ignored.
      SWREQ          : Boolean := False;
      --  This bit is ignored if channel 10 is activated (GPDMA_C10CR.EN
      --  asserted) with SWREQ = 1 (software request for a memory-to-memory
      --  transfer). Else: 0: selected hardware request driven by a source
      --  peripheral (request signal taken into account by the GPDMA transfer
      --  scheduler over the source/read port) 1: selected hardware request
      --  driven by a destination peripheral (request signal taken into account
      --  by the GPDMA transfer scheduler over the destination/write port)
      --  Note: If the channel 10 is activated (GPDMA_C10CR.EN is asserted)
      --  with SWREQ = 0 and PFREQ = 1 (peripheral hardware request with
      --  peripheral flow-control mode), any software assertion to this DREQ
      --  bit is ignored: in peripheral flow-control mode, only a
      --  peripheral-to-memory transfer is supported.
      DREQ           : Boolean := False;
      --  If the channel 10 is activated (GPDMA_C10CR.EN asserted) with SWREQ =
      --  1 (software request for a memory-to-memory transfer), this bit is
      --  ignored. Else: 0: the selected hardware request is driven by a
      --  peripheral with a hardware request/acknowledge protocol at a burst
      --  level. 1: the selected hardware request is driven by a peripheral
      --  with a hardware request/acknowledge protocol at a block level (see
      --  less than xe4 [GPDMA_requests]/>).
      BREQ           : Boolean := False;
      --  Caution: If a given channel 10 is not implemented with this feature,
      --  this bit is reserved and PFREQ is not present (see less than xe1
      --  [GPDMA_channels]/> for the list of the implemented channels with this
      --  feature).
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  These bits define the transfer granularity for its conditioning by
      --  the trigger. If the channel 10 is enabled (GPDMA_C10CR.EN asserted)
      --  with TRIGPOL[1:0] = 00 or 11, these TRIGM[1:0] bits are ignored.
      --  Else, a GPDMA transfer is conditioned by at least one trigger hit:
      --  00: at block level: the first burst read of each block transfer is
      --  conditioned by one hit trigger (channel 10 = 12 to 15, for each block
      --  if a 2D/repeated block is configured with GPDMA_C10BR1.BRC[10:0] is
      --  not equal to 0). 10: at link level: a LLI link transfer is
      --  conditioned by one hit trigger. The LLI data transfer (if any) is not
      --  conditioned. 11: at programmed burst level: If SWREQ = 1, each
      --  programmed burst read is conditioned by one hit trigger. If SWREQ =
      --  0, each programmed burst that is requested by the selected
      --  peripheral, is conditioned by one hit trigger. - If the peripheral is
      --  programmed as a source (DREQ = 0) of the LLI data transfer, each
      --  programmed burst read is conditioned. - If the peripheral is
      --  programmed as a destination (DREQ = 1) of the LLI data transfer, each
      --  programmed burst write is conditioned. The first memory burst read of
      --  a (possibly 2D/repeated) block, also named as the first ready
      --  FIFO-based source burst, is gated by the occurrence of both the
      --  hardware request and the first trigger hit.01: channel 10 = 0 to ,
      --  same as 00; channel 10 , at 2D/repeated block level. The first burst
      --  read of a 2D/repeated block transfer is conditioned by one hit
      --  trigger. The GPDMA monitoring of a trigger for channel 10 is started
      --  when the channel is enabled/loaded with a new active trigger
      --  configuration: rising or falling edge on a selected trigger
      --  (TRIGPOL[1:0] = 01 or respectively TRIGPOL[1:0]=10). The monitoring
      --  of this trigger is kept active during the triggered and uncompleted
      --  (data or link) transfer; and if a new trigger is detected then, this
      --  hit is internally memorized to grant the next transfer, as long as
      --  the defined rising or falling edge is not modified, and the
      --  TRIGSEL[5:0] is not modified, and the channel is enabled.
      --  Transferring a next LLIn+1 that updates the GPDMA_C10TR2 with a new
      --  value for any of TRIGSEL[5:0] or TRIGPOL[1:0], resets the monitoring,
      --  trashing the memorized hit of the formerly defined LLIn trigger.
      --  After a first new trigger hitn+1 is memorized, if another second
      --  trigger hitn+2 is detected and if the hitn triggered transfer is
      --  still not completed, hitn+2 is lost and not memorized.memorized. A
      --  trigger overrun flag is reported (GPDMA_C10SR.TOF=1), and an
      --  interrupt is generated if enabled (GPDMA_C10CR.TOIE = 1). The channel
      --  is not automatically disabled by hardware due to a trigger overrun.
      --  Note: When the source block size is not a multiple of the source
      --  burst size and is a multiple of the source data width, then the last
      --  programmed source burst is not completed and is internally shorten to
      --  match the block size. In this case, if TRIGM[1:0] = 11 and (SWREQ = 1
      --  or (SWREQ = 0 and DREQ = 0)), the shortened burst transfer (by
      --  singles or/and by bursts of lower length) is conditioned once by the
      --  trigger. +: When the programmed destination burst is internally
      --  shortened by singles or/and by bursts of lower length (versus FIFO
      --  size, versus block size, 1-Kbyte boundary address crossing): if the
      --  trigger is conditioning the programmed destination burst (if
      --  TRIGM[1:0] = 11 and SWREQ = 0 and DREQ = 1), this shortened
      --  destination burst transfer is conditioned once by the trigger.
      TRIGM          : GPDMA_C10TR2_TRIGM_Field := 16#0#;
      --  These bits select the trigger event input of the GPDMA transfer (as
      --  per less than xe3 [GPDMA_triggers]/>), with anactive trigger event if
      --  TRIGPOL[1:0] is not equal to 00.
      TRIGSEL        : GPDMA_C10TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  These bits define the polarity of the selected trigger event input
      --  defined by TRIGSEL[5:0]. 00: no trigger (masked trigger event) 01:
      --  trigger on the rising edge 10: trigger on the falling edge 11: same
      --  as 00
      TRIGPOL        : GPDMA_C10TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  These bits define the transfer granularity for the transfer complete
      --  and half transfer complete events generation. 00: at block level
      --  (when GPDMA_C10BR1.BNDT[15:0] = 0): the complete (and the half)
      --  transfer event is generated at the (respectively half of the) end of
      --  a block. 01: channel 10 (0 to ), same as 00, channel 10 , at
      --  2D/repeated block level (when GPDMA_C10BR1.BRC[10:0] = 0 and
      --  GPDMA_C10BR1.BNDT[15:0] = 0). The complete (and the half) transfer
      --  event is generated at the end (respectively half of the end) of the
      --  2D/repeated block. 10: at LLI level: the complete transfer event is
      --  generated at the end of the LLI transfer, including the update of the
      --  LLI if any. The half transfer event is generated at the half of the
      --  LLI data transfer. The LLI data transfer is a block transfer or a
      --  2D/repeated block transfer for channel 10 , if any data transfer. 11:
      --  at channel level: the complete transfer event is generated at the end
      --  of the last LLI transfer. The half transfer event is generated at the
      --  half of the data transfer of the last LLI. The last LLI updates the
      --  link address GPDMA_C10LLR.LA[15:2] to zero and clears all the
      --  GPDMA_C10LLR update bits (UT1, UT2, UB1, USA, UDA and ULL, plus UT3
      --  and UB2). If the channel transfer is continuous/infinite, no event is
      --  generated. Note: If the initial LLI0 data transfer is null/void
      --  (directly programmed by the internal register file with
      --  GPDMA_C10BR1.BNDT[15:0] = 0), then neither the complete transfer
      --  event nor the half transfer event is generated. +: If the initial
      --  LLI0 data transfer is null/void (directly programmed by the internal
      --  register file with GPDMA_C10BR1.BNDT[15:0] = 0), then neither the
      --  complete transfer event nor the half transfer event is generated. +:
      --  If the initial LLI0 data transfer is null/void (directly programmed
      --  by the internal register file with GPDMA_C10BR1.BNDT[15:0] = 0), then
      --  the half transfer event is not generated, and the transfer complete
      --  event is generated when is completed the loading of the LLI1.
      TCEM           : GPDMA_C10TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C10TR2_Register use record
      REQSEL         at 0 range 0 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype GPDMA_C11LBAR_LBA_Field is HAL.UInt16;

   --  GPDMA channel 11 linked-list base address register
   type GPDMA_C11LBAR_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  None
      LBA           : GPDMA_C11LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C11LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   --  GPDMA channel 11 flag clear register
   type GPDMA_C11FCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. None 0: no effect 1: corresponding TCF flag cleared
      TCF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding HTF flag cleared
      HTF            : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding DTEF flag cleared
      DTEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding ULEF flag cleared
      ULEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding USEF flag cleared
      USEF           : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding SUSPF flag cleared
      SUSPF          : Boolean := False;
      --  Write-only. None 0: no effect 1: corresponding TOF flag cleared
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C11FCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype GPDMA_C11SR_FIFOL_Field is HAL.UInt8;

   --  GPDMA channel 11 status register
   type GPDMA_C11SR_Register is record
      --  Read-only. This idle flag is deasserted by hardware when the channel
      --  is enabled (GPDMA_C11CR.EN = 1) with a valid channel configuration
      --  (no USEF to be immediately reported). This idle flag is asserted
      --  after hard reset or by hardware when the channel is back in idle
      --  state (in suspended or disabled state). 0: channel not in idle state
      --  1: channel in idle state
      IDLEF          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. A transfer complete event is either a block transfer
      --  complete, a 2D/repeated block transfer complete, or a LLI transfer
      --  complete including the upload of the next LLI if any, or the full
      --  linked-list completion, depending on the transfer complete event mode
      --  (GPDMA_C11TR2.TCEM[1:0]). 0: no transfer complete event 1: a transfer
      --  complete event occurred
      TCF            : Boolean;
      --  Read-only. A half transfer event is either a half block transfer or a
      --  half 2D/repeated block transfer, depending on the transfer complete
      --  event mode (GPDMA_C11TR2.TCEM[1:0]). A half block transfer occurs
      --  when half of the bytes of the source block size (rounded up integer
      --  of GPDMA_C11BR1.BNDT[15:0]/2) has been transferred to the
      --  destination. A half 2D/repeated block transfer occurs when half of
      --  the repeated blocks (rounded up integer of
      --  (GPDMA_C11BR1.BRC[10:0]+1)/2)) has been transferred to the
      --  destination. 0: no half transfer event 1: a half transfer event
      --  occurred
      HTF            : Boolean;
      --  Read-only. None 0: no data transfer error event 1: a master bus error
      --  event occurred on a data transfer
      DTEF           : Boolean;
      --  Read-only. None 0: no update link transfer error event 1: a master
      --  bus error event occurred while updating a linked-list register from
      --  memory
      ULEF           : Boolean;
      --  Read-only. None 0: no user setting error event 1: a user setting
      --  error event occurred
      USEF           : Boolean;
      --  Read-only. None 0: no completed suspension event 1: a completed
      --  suspension event occurred
      SUSPF          : Boolean;
      --  Read-only. None 0: no trigger overrun event 1: a trigger overrun
      --  event occurred
      TOF            : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Number of available write beats in the FIFO, in units of
      --  the programmed destination data width (see
      --  GPDMA_C11TR1.DDW_LOG2[1:0], in units of bytes, half-words, or words).
      --  Note: After having suspended an active transfer, the user may need to
      --  read FIFOL[7:0], additionally to GPDMA_C11BR1.BDNT[15:0] and
      --  GPDMA_C11BR1.BRC[10:0], to know how many data have been transferred
      --  to the destination. Before reading, the user may wait for the
      --  transfer to be suspended (GPDMA_C11SR.SUSPF = 1).
      FIFOL          : GPDMA_C11SR_FIFOL_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C11SR_Register use record
      IDLEF          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FIFOL          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C11CR_PRIO_Field is HAL.UInt2;

   --  GPDMA channel 11 control register
   type GPDMA_C11CR_Register is record
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 0. Else: this
      --  bit is deasserted by hardware when there is a transfer error (master
      --  bus error or user setting error) or when there is a channel transfer
      --  complete (channel ready to be configured, for example if LSM = 1 at
      --  the end of a single execution of the LLI). Else, this bit can be
      --  asserted by software. Writing 0 into this EN bit is ignored. 0:
      --  write: ignored, read: channel disabled 1: write: enable channel,
      --  read: channel enabled
      EN             : Boolean := False;
      --  Write-only. This bit is write only. Writing 0 has no impact. Writing
      --  1 implies the reset of the following: the FIFO, the channel internal
      --  state, SUSP and EN bits (whatever is written receptively in bit 2 and
      --  bit 0). The reset is effective when the channel is in steady state,
      --  meaning one of the following: - active channel in suspended state
      --  (GPDMA_C11SR.SUSPF = 1 and GPDMA_C11SR.IDLEF=GPDMA_C11CR.EN = 1) -
      --  channel in disabled state (GPDMA_C11SR.IDLEF = 1 and GPDMA_C11CR.EN =
      --  0). After writing a RESET, to continue using this channel, the user
      --  must explicitly reconfigure the channel including the
      --  hardware-modified configuration registers (GPDMA_C11BR1, GPDMA_CxSAR
      --  and GPDMA_CxDAR) before enabling again the channel (see the
      --  programming sequence in less than xe6
      --  [GPDMA_abort_restart/ID00-1465]/>). 0: no channel reset 1: channel
      --  reset
      RESET          : Boolean := False;
      --  Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 2. Else:
      --  Software must write 1 in order to suspend an active channel (channel
      --  with an ongoing GPDMA transfer over its master ports). The software
      --  must write 0 in order to resume a suspended channel, following the
      --  programming sequence detailed in less than xe5
      --  [GPDMA_channel_suspend_and_resume/ID00-1456]/>. 0: write: resume
      --  channel, read: channel not suspended 1: write: suspend channel, read:
      --  channel suspended.
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  None 0: interrupt disabled 1: interrupt enabled
      TCIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      HTIE           : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      DTEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      ULEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      USEIE          : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      SUSPIE         : Boolean := False;
      --  None 0: interrupt disabled 1: interrupt enabled
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  First the (possible 1D/repeated) block transfer is executed as
      --  defined by the current internal register file until
      --  GPDMA_C11BR1.BNDT[15:0] = 0 and GPDMA_C11BR1.BRC[10:0] = 0. Secondly
      --  the next linked-list data structure is conditionally uploaded from
      --  memory as defined by GPDMA_C11LLR. Then channel execution is
      --  completed. 0: channel executed for the full linked-list and completed
      --  at the end of the last LLI (GPDMA_C11LLR = 0). The 16 low-significant
      --  bits of the link address are null (LA[15:0] = 0) and all the update
      --  bits are null (UT1 = UB1 = UT2 = USA = UDA = ULL = 0 and UT3 = UB2 =
      --  0). Then GPDMA_C11BR1.BNDT[15:0] = 0 and GPDMA_C11BR1.BRC[10:0] = 0.
      --  1: channel executed once for the current LLI Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      LSM            : Boolean := False;
      --  This bit is used to allocate the master port for the update of the
      --  GPDMA linked-list registers from the memory. 0: port 0 (AHB)
      --  allocated 1: port 1 (AHB) allocated Note: This bit must be written
      --  when EN = 0. This bit is read-only when EN = 1.
      LAP            : Boolean := False;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  None 00: low priority, low weight 01: low priority, mid weight 10:
      --  low priority, high weight 11: high priority Note: This bit must be
      --  written when EN = 0. This bit is read-only when EN = 1.
      PRIO           : GPDMA_C11CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C11CR_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      SUSP           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TCIE           at 0 range 8 .. 8;
      HTIE           at 0 range 9 .. 9;
      DTEIE          at 0 range 10 .. 10;
      ULEIE          at 0 range 11 .. 11;
      USEIE          at 0 range 12 .. 12;
      SUSPIE         at 0 range 13 .. 13;
      TOIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LSM            at 0 range 16 .. 16;
      LAP            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPDMA_C11TR1_SDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C11TR1_SBL_1_Field is HAL.UInt6;
   subtype GPDMA_C11TR1_PAM_Field is HAL.UInt2;
   subtype GPDMA_C11TR1_DDW_LOG2_Field is HAL.UInt2;
   subtype GPDMA_C11TR1_DBL_1_Field is HAL.UInt6;

   --  GPDMA channel 11 transfer register 1
   type GPDMA_C11TR1_Register is record
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and no transfer
      --  is issued. +: A source block size must be a multiple of the source
      --  data width (GPDMA_C11BR1.BNDT[2:0] versus SDW_LOG2[1:0]). Otherwise,
      --  a user setting error is reported and no transfer is issued. +: A
      --  source burst transfer must have an aligned address with its data
      --  width (start address GPDMA_CxSAR[2:0] versus SDW_LOG2[1:0]).
      --  Otherwise, a user setting error is reported and none transfer is
      --  issued.
      SDW_LOG2       : GPDMA_C11TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  The source address, pointed by GPDMA_CxSAR, is kept constant after a
      --  burst beat/single transfer or is incremented by the offset value
      --  corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      SINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  SBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width SDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 11, the GPDMA modifies and shortens the
      --  programmed burst into singles or bursts of lower length, to be
      --  compliant with the FIFO size. Transfer performance is lower, with
      --  GPDMA re-arbitration between effective and lower singles/bursts, but
      --  the data integrity is guaranteed.
      SBL_1          : GPDMA_C11TR1_SBL_1_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  If DDW_LOG2[1:0] = SDW_LOG2[1:0]: if the data width of a burst
      --  destination transfer is equal to the data width of a burst source
      --  transfer, these bits are ignored.
      PAM            : GPDMA_C11TR1_PAM_Field := 16#0#;
      --  If the source data width is shorter than a word, this bit is ignored.
      --  If the source data width is a word: 0: no byte-based exchange within
      --  the unaligned half-word of each source word 1: the two consecutive
      --  bytes within the unaligned half-word of each source word are
      --  exchanged.
      SBx            : Boolean := False;
      --  This bit is used to allocate the master port for the source transfer
      --  0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note: This bit
      --  must be written when EN = 0. This bit is read-only when EN = 1.
      SAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC11 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC11 =
      --  1. A secure write is ignored when GPDMA_SECCFGR.SEC11 = 0. When
      --  GPDMA_SECCFGR.SEC11 is deasserted, this SSEC bit is also deasserted
      --  by hardware (on a secure reconfiguration of the channel as
      --  non-secure), and the GPDMA transfer from the source is non-secure. 0:
      --  GPDMA transfer non-secure 1: GPDMA transfer secure
      SSEC           : Boolean := False;
      --  None 00: byte 01: half-word (2 bytes) 10: word (4 bytes) 11: user
      --  setting error reported and no transfer issued Note: Setting a 8-byte
      --  data width causes a user setting error to be reported and none
      --  transfer is issued. +: A destination burst transfer must have an
      --  aligned address with its data width (start address GPDMA_CxDAR[2:0]
      --  and address offset GPDMA_CxTR3.DAO[2:0], versus DDW_LOG2[1:0]).
      --  Otherwise a user setting error is reported and no transfer is issued.
      DDW_LOG2       : GPDMA_C11TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  The destination address, pointed by GPDMA_CxDAR, is kept constant
      --  after a burst beat/single transfer, or is incremented by the offset
      --  value corresponding to a contiguous data after a burst beat/single
      --  transfer. 0: fixed burst 1: contiguously incremented burst
      DINC           : Boolean := False;
      --  The burst length unit is one data named beat within a burst. If
      --  DBL_1[5:0] = 0, the burst can be named as single. Each data/beat has
      --  a width defined by the destination data width DDW_LOG2[1:0]. Note: If
      --  a burst transfer crossed a 1-Kbyte address boundary on a AHB
      --  transfer, the GPDMA modifies and shortens the programmed burst into
      --  singles or bursts of lower length, to be compliant with the AHB
      --  protocol. +: If a burst transfer is of length greater than the FIFO
      --  size of the channel 11, the GPDMA modifies and shortens the
      --  programmed burst into singles or bursts of lower length, to be
      --  compliant with the FIFO size. Transfer performance is lower, with
      --  GPDMA re-arbitration between effective and lower singles/bursts, but
      --  the data integrity is guaranteed.
      DBL_1          : GPDMA_C11TR1_DBL_1_Field := 16#0#;
      --  If the destination data size is a byte, this bit is ignored. If the
      --  destination data size is not a byte: 0: no byte-based exchange within
      --  half-word 1: the two consecutive (post PAM) bytes are exchanged in
      --  each destination half-word.
      DBx            : Boolean := False;
      --  If the destination data size is shorter than a word, this bit is
      --  ignored. If the destination data size is a word: 0: no halfword-based
      --  exchanged within word 1: the two consecutive (post PAM) half-words
      --  are exchanged in each destination word.
      DHx            : Boolean := False;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  This bit is used to allocate the master port for the destination
      --  transfer 0: port 0 (AHB) allocated 1: port 1 (AHB) allocated Note:
      --  This bit must be written when EN = 0. This bit is read-only when EN =
      --  1.
      DAP            : Boolean := False;
      --  If GPDMA_SECCFGR.SEC11 = 1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when GPDMA_SECCFGR.SEC11 =
      --  1. A secure write is ignored when GPDMA_SECCFGR.SEC11 = 0. When
      --  GPDMA_SECCFGR.SEC11 is deasserted, this DSEC bit is also deasserted
      --  by hardware (on a secure reconfiguration of the channel as
      --  non-secure), and the GPDMA transfer to the destination is non-secure.
      --  0: GPDMA transfer non-secure 1: GPDMA transfer secure
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C11TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      SBL_1          at 0 range 4 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PAM            at 0 range 11 .. 12;
      SBx            at 0 range 13 .. 13;
      SAP            at 0 range 14 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      DBL_1          at 0 range 20 .. 25;
      DBx            at 0 range 26 .. 26;
      DHx            at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DAP            at 0 range 30 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype GPDMA_C11TR2_REQSEL_Field is HAL.UInt7;
   subtype GPDMA_C11TR2_TRIGM_Field is HAL.UInt2;
   subtype GPDMA_C11TR2_TRIGSEL_Field is HAL.UInt6;
   subtype GPDMA_C11TR2_TRIGPOL_Field is HAL.UInt2;
   subtype GPDMA_C11TR2_TCEM_Field is HAL.UInt2;

   --  GPDMA channel 11 transfer register 2
   type GPDMA_C11TR2_Register is record
      --  These bits are ignored if channel 11 is activated (GPDMA_C11CR.EN
      --  asserted) with SWREQ=1 (software request for a memory-to-memory
      --  transfer). Else, the selected hardware request is internally taken
      --  into account as per less than xe4 [GPDMA_requests]/>. The user must
      --  not assign a same input hardware request (same REQSEL[6:0] value) to
      --  different active GPDMA channels (GPDMA_C11CR.EN = 1 and
      --  GPDMA_C11TR2.SWREQ = 0 for these channels). GPDMA is not intended to
      --  hardware support the case of simultaneous enabled channels
      --  incorrectly configured with a same hardware peripheral request
      --  signal, and there is no user setting error reporting.
      REQSEL         : GPDMA_C11TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  This bit is internally taken into account when GPDMA_C11CR.EN is
      --  asserted. 0: no software request. The selected hardware request
      --  REQSEL[6:0] is taken into account. 1: software request for a
      --  memory-to-memory transfer. The default selected hardware request as
      --  per REQSEL[6:0] is ignored.
      SWREQ          : Boolean := False;
      --  This bit is ignored if channel 11 is activated (GPDMA_C11CR.EN
      --  asserted) with SWREQ = 1 (software request for a memory-to-memory
      --  transfer). Else: 0: selected hardware request driven by a source
      --  peripheral (request signal taken into account by the GPDMA transfer
      --  scheduler over the source/read port) 1: selected hardware request
      --  driven by a destination peripheral (request signal taken into account
      --  by the GPDMA transfer scheduler over the destination/write port)
      --  Note: If the channel 11 is activated (GPDMA_C11CR.EN is asserted)
      --  with SWREQ = 0 and PFREQ = 1 (peripheral hardware request with
      --  peripheral flow-control mode), any software assertion to this DREQ
      --  bit is ignored: in peripheral flow-control mode, only a
      --  peripheral-to-memory transfer is supported.
      DREQ           : Boolean := False;
      --  If the channel 11 is activated (GPDMA_C11CR.EN asserted) with SWREQ =
      --  1 (software request for a memory-to-memory transfer), this bit is
      --  ignored. Else: 0: the selected hardware request is driven by a
      --  peripheral with a hardware request/acknowledge protocol at a burst
      --  level. 1: the selected hardware request is driven by a peripheral
      --  with a hardware request/acknowledge protocol at a block level (see
      --  less than xe4 [GPDMA_requests]/>).
      BREQ           : Boolean := False;
      --  Caution: If a given channel 11 is not implemented with this feature,
      --  this bit is reserved and PFREQ is not present (see less than xe1
      --  [GPDMA_channels]/> for the list of the implemented channels with this
      --  feature).
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  These bits define the transfer granularity for its conditioning by
      --  the trigger. If the channel 11 is enabled (GPDMA_C11CR.EN asserted)
      --  with TRIGPOL[1:0] = 00 or 11, these TRIGM[1:0] bits are ignored.
      --  Else, a GPDMA transfer is conditioned by at least one trigger hit:
      --  00: at block level: the first burst read of each block transfer is
      --  conditioned by one hit trigger (channel 11 = 12 to 15, for each block
      --  if a 2D/repeated block is configured with GPDMA_C11BR1.BRC[10:0] is
      --  not equal to 0). 10: at link level: a LLI link transfer is
      --  conditioned by one hit trigger. The LLI data transfer (if any) is not
      --  conditioned. 11: at programmed burst level: If SWREQ = 1, each
      --  programmed burst read is conditioned by one hit trigger. If SWREQ =
      --  0, each programmed burst that is requested by the selected
      --  peripheral, is conditioned by one hit trigger. - If the peripheral is
      --  programmed as a source (DREQ = 0) of the LLI data transfer, each
      --  programmed burst read is conditioned. - If the peripheral is
      --  programmed as a destination (DREQ = 1) of the LLI data transfer, each
      --  programmed burst write is conditioned. The first memory burst read of
      --  a (possibly 2D/repeated) block, also named as the first ready
      --  FIFO-based source burst, is gated by the occurrence of both the
      --  hardware request and the first trigger hit.01: channel 11 = 0 to ,
      --  same as 00; channel 11 , at 2D/repeated block level. The first burst
      --  read of a 2D/repeated block transfer is conditioned by one hit
      --  trigger. The GPDMA monitoring of a trigger for channel 11 is started
      --  when the channel is enabled/loaded with a new active trigger
      --  configuration: rising or falling edge on a selected trigger
      --  (TRIGPOL[1:0] = 01 or respectively TRIGPOL[1:0]=10). The monitoring
      --  of this trigger is kept active during the triggered and uncompleted
      --  (data or link) transfer; and if a new trigger is detected then, this
      --  hit is internally memorized to grant the next transfer, as long as
      --  the defined rising or falling edge is not modified, and the
      --  TRIGSEL[5:0] is not modified, and the channel is enabled.
      --  Transferring a next LLIn+1 that updates the GPDMA_C11TR2 with a new
      --  value for any of TRIGSEL[5:0] or TRIGPOL[1:0], resets the monitoring,
      --  trashing the memorized hit of the formerly defined LLIn trigger.
      --  After a first new trigger hitn+1 is memorized, if another second
      --  trigger hitn+2 is detected and if the hitn triggered transfer is
      --  still not completed, hitn+2 is lost and not memorized.memorized. A
      --  trigger overrun flag is reported (GPDMA_C11SR.TOF=1), and an
      --  interrupt is generated if enabled (GPDMA_C11CR.TOIE = 1). The channel
      --  is not automatically disabled by hardware due to a trigger overrun.
      --  Note: When the source block size is not a multiple of the source
      --  burst size and is a multiple of the source data width, then the last
      --  programmed source burst is not completed and is internally shorten to
      --  match the block size. In this case, if TRIGM[1:0] = 11 and (SWREQ = 1
      --  or (SWREQ = 0 and DREQ = 0)), the shortened burst transfer (by
      --  singles or/and by bursts of lower length) is conditioned once by the
      --  trigger. +: When the programmed destination burst is internally
      --  shortened by singles or/and by bursts of lower length (versus FIFO
      --  size, versus block size, 1-Kbyte boundary address crossing): if the
      --  trigger is conditioning the programmed destination burst (if
      --  TRIGM[1:0] = 11 and SWREQ = 0 and DREQ = 1), this shortened
      --  destination burst transfer is conditioned once by the trigger.
      TRIGM          : GPDMA_C11TR2_TRIGM_Field := 16#0#;
      --  These bits select the trigger event input of the GPDMA transfer (as
      --  per less than xe3 [GPDMA_triggers]/>), with anactive trigger event if
      --  TRIGPOL[1:0] is not equal to 00.
      TRIGSEL        : GPDMA_C11TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  These bits define the polarity of the selected trigger event input
      --  defined by TRIGSEL[5:0]. 00: no trigger (masked trigger event) 01:
      --  trigger on the rising edge 10: trigger on the falling edge 11: same
      --  as 00
      TRIGPOL        : GPDMA_C11TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  These bits define the transfer granularity for the transfer complete
      --  and half transfer complete events generation. 00: at block level
      --  (when GPDMA_C11BR1.BNDT[15:0] = 0): the complete (and the half)
      --  transfer event is generated at the (respectively half of the) end of
      --  a block. 01: channel 11 (0 to ), same as 00, channel 11 , at
      --  2D/repeated block level (when GPDMA_C11BR1.BRC[10:0] = 0 and
      --  GPDMA_C11BR1.BNDT[15:0] = 0). The complete (and the half) transfer
      --  event is generated at the end (respectively half of the end) of the
      --  2D/repeated block. 10: at LLI level: the complete transfer event is
      --  generated at the end of the LLI transfer, including the update of the
      --  LLI if any. The half transfer event is generated at the half of the
      --  LLI data transfer. The LLI data transfer is a block transfer or a
      --  2D/repeated block transfer for channel 11 , if any data transfer. 11:
      --  at channel level: the complete transfer event is generated at the end
      --  of the last LLI transfer. The half transfer event is generated at the
      --  half of the data transfer of the last LLI. The last LLI updates the
      --  link address GPDMA_C11LLR.LA[15:2] to zero and clears all the
      --  GPDMA_C11LLR update bits (UT1, UT2, UB1, USA, UDA and ULL, plus UT3
      --  and UB2). If the channel transfer is continuous/infinite, no event is
      --  generated. Note: If the initial LLI0 data transfer is null/void
      --  (directly programmed by the internal register file with
      --  GPDMA_C11BR1.BNDT[15:0] = 0), then neither the complete transfer
      --  event nor the half transfer event is generated. +: If the initial
      --  LLI0 data transfer is null/void (directly programmed by the internal
      --  register file with GPDMA_C11BR1.BNDT[15:0] = 0), then neither the
      --  complete transfer event nor the half transfer event is generated. +:
      --  If the initial LLI0 data transfer is null/void (directly programmed
      --  by the internal register file with GPDMA_C11BR1.BNDT[15:0] = 0), then
      --  the half transfer event is not generated, and the transfer complete
      --  event is generated when is completed the loading of the LLI1.
      TCEM           : GPDMA_C11TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPDMA_C11TR2_Register use record
      REQSEL         at 0 range 0 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      SWREQ          at 0 range 9 .. 9;
      DREQ           at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type GPDMA1_Disc is
     (Val_8Br1,
      Val_10Br1,
      Val_8Llr,
      Val_10Llr,
      Val_9Br1,
      Val_11Br1,
      Val_9Llr,
      Val_11Llr);

   --  GPDMA1
   type GPDMA_Peripheral
     (Discriminent : GPDMA1_Disc := Val_8Br1)
   is record
      --  GPDMA secure configuration register
      GPDMA_SECCFGR   : aliased GPDMA_SECCFGR_Register;
      --  GPDMA privileged configuration register
      GPDMA_PRIVCFGR  : aliased GPDMA_PRIVCFGR_Register;
      --  GPDMA configuration lock register
      GPDMA_RCFGLOCKR : aliased GPDMA_RCFGLOCKR_Register;
      --  GPDMA non-secure masked interrupt status register
      GPDMA_MISR      : aliased GPDMA_MISR_Register;
      --  GPDMA secure masked interrupt status register
      GPDMA_SMISR     : aliased GPDMA_SMISR_Register;
      --  GPDMA channel 0 linked-list base address register
      GPDMA_C0LBAR    : aliased GPDMA_C0LBAR_Register;
      --  GPDMA channel 0 flag clear register
      GPDMA_C0FCR     : aliased GPDMA_C0FCR_Register;
      --  GPDMA channel 0 status register
      GPDMA_C0SR      : aliased GPDMA_C0SR_Register;
      --  GPDMA channel 0 control register
      GPDMA_C0CR      : aliased GPDMA_C0CR_Register;
      --  GPDMA channel 0 transfer register 1
      GPDMA_C0TR1     : aliased GPDMA_C0TR1_Register;
      --  GPDMA channel 0 transfer register 2
      GPDMA_C0TR2     : aliased GPDMA_C0TR2_Register;
      --  GPDMA channel 0 block register 1
      GPDMA_C0BR1     : aliased GPDMA_C0BR1_Register;
      --  GPDMA channel 0 source address register
      GPDMA_C0SAR     : aliased HAL.UInt32;
      --  GPDMA channel 0 destination address register
      GPDMA_C0DAR     : aliased HAL.UInt32;
      --  GPDMA channel 0 linked-list address register
      GPDMA_C0LLR     : aliased GPDMA_C0LLR_Register;
      --  GPDMA channel 1 linked-list base address register
      GPDMA_C1LBAR    : aliased GPDMA_C1LBAR_Register;
      --  GPDMA channel 1 flag clear register
      GPDMA_C1FCR     : aliased GPDMA_C1FCR_Register;
      --  GPDMA channel 1 status register
      GPDMA_C1SR      : aliased GPDMA_C1SR_Register;
      --  GPDMA channel 1 control register
      GPDMA_C1CR      : aliased GPDMA_C1CR_Register;
      --  GPDMA channel 1 transfer register 1
      GPDMA_C1TR1     : aliased GPDMA_C1TR1_Register;
      --  GPDMA channel 1 transfer register 2
      GPDMA_C1TR2     : aliased GPDMA_C1TR2_Register;
      --  GPDMA channel 1 block register 1
      GPDMA_C1BR1     : aliased GPDMA_C1BR1_Register;
      --  GPDMA channel 1 source address register
      GPDMA_C1SAR     : aliased HAL.UInt32;
      --  GPDMA channel 1 destination address register
      GPDMA_C1DAR     : aliased HAL.UInt32;
      --  GPDMA channel 1 linked-list address register
      GPDMA_C1LLR     : aliased GPDMA_C1LLR_Register;
      --  GPDMA channel 2 linked-list base address register
      GPDMA_C2LBAR    : aliased GPDMA_C2LBAR_Register;
      --  GPDMA channel 2 flag clear register
      GPDMA_C2FCR     : aliased GPDMA_C2FCR_Register;
      --  GPDMA channel 2 status register
      GPDMA_C2SR      : aliased GPDMA_C2SR_Register;
      --  GPDMA channel 2 control register
      GPDMA_C2CR      : aliased GPDMA_C2CR_Register;
      --  GPDMA channel 2 transfer register 1
      GPDMA_C2TR1     : aliased GPDMA_C2TR1_Register;
      --  GPDMA channel 2 transfer register 2
      GPDMA_C2TR2     : aliased GPDMA_C2TR2_Register;
      --  GPDMA channel 2 block register 1
      GPDMA_C2BR1     : aliased GPDMA_C2BR1_Register;
      --  GPDMA channel 2 source address register
      GPDMA_C2SAR     : aliased HAL.UInt32;
      --  GPDMA channel 2 destination address register
      GPDMA_C2DAR     : aliased HAL.UInt32;
      --  GPDMA channel 2 linked-list address register
      GPDMA_C2LLR     : aliased GPDMA_C2LLR_Register;
      --  GPDMA channel 3 linked-list base address register
      GPDMA_C3LBAR    : aliased GPDMA_C3LBAR_Register;
      --  GPDMA channel 3 flag clear register
      GPDMA_C3FCR     : aliased GPDMA_C3FCR_Register;
      --  GPDMA channel 3 status register
      GPDMA_C3SR      : aliased GPDMA_C3SR_Register;
      --  GPDMA channel 3 control register
      GPDMA_C3CR      : aliased GPDMA_C3CR_Register;
      --  GPDMA channel 3 transfer register 1
      GPDMA_C3TR1     : aliased GPDMA_C3TR1_Register;
      --  GPDMA channel 3 transfer register 2
      GPDMA_C3TR2     : aliased GPDMA_C3TR2_Register;
      --  GPDMA channel 3 block register 1
      GPDMA_C3BR1     : aliased GPDMA_C3BR1_Register;
      --  GPDMA channel 3 source address register
      GPDMA_C3SAR     : aliased HAL.UInt32;
      --  GPDMA channel 3 destination address register
      GPDMA_C3DAR     : aliased HAL.UInt32;
      --  GPDMA channel 3 linked-list address register
      GPDMA_C3LLR     : aliased GPDMA_C3LLR_Register;
      --  GPDMA channel 4 linked-list base address register
      GPDMA_C4LBAR    : aliased GPDMA_C4LBAR_Register;
      --  GPDMA channel 4 flag clear register
      GPDMA_C4FCR     : aliased GPDMA_C4FCR_Register;
      --  GPDMA channel 4 status register
      GPDMA_C4SR      : aliased GPDMA_C4SR_Register;
      --  GPDMA channel 4 control register
      GPDMA_C4CR      : aliased GPDMA_C4CR_Register;
      --  GPDMA channel 4 transfer register 1
      GPDMA_C4TR1     : aliased GPDMA_C4TR1_Register;
      --  GPDMA channel 4 transfer register 2
      GPDMA_C4TR2     : aliased GPDMA_C4TR2_Register;
      --  GPDMA channel 4 block register 1
      GPDMA_C4BR1     : aliased GPDMA_C4BR1_Register;
      --  GPDMA channel 4 source address register
      GPDMA_C4SAR     : aliased HAL.UInt32;
      --  GPDMA channel 4 destination address register
      GPDMA_C4DAR     : aliased HAL.UInt32;
      --  GPDMA channel 4 linked-list address register
      GPDMA_C4LLR     : aliased GPDMA_C4LLR_Register;
      --  GPDMA channel 5 linked-list base address register
      GPDMA_C5LBAR    : aliased GPDMA_C5LBAR_Register;
      --  GPDMA channel 5 flag clear register
      GPDMA_C5FCR     : aliased GPDMA_C5FCR_Register;
      --  GPDMA channel 5 status register
      GPDMA_C5SR      : aliased GPDMA_C5SR_Register;
      --  GPDMA channel 5 control register
      GPDMA_C5CR      : aliased GPDMA_C5CR_Register;
      --  GPDMA channel 5 transfer register 1
      GPDMA_C5TR1     : aliased GPDMA_C5TR1_Register;
      --  GPDMA channel 5 transfer register 2
      GPDMA_C5TR2     : aliased GPDMA_C5TR2_Register;
      --  GPDMA channel 5 block register 1
      GPDMA_C5BR1     : aliased GPDMA_C5BR1_Register;
      --  GPDMA channel 5 source address register
      GPDMA_C5SAR     : aliased HAL.UInt32;
      --  GPDMA channel 5 destination address register
      GPDMA_C5DAR     : aliased HAL.UInt32;
      --  GPDMA channel 5 linked-list address register
      GPDMA_C5LLR     : aliased GPDMA_C5LLR_Register;
      --  GPDMA channel 6 linked-list base address register
      GPDMA_C6LBAR    : aliased GPDMA_C6LBAR_Register;
      --  GPDMA channel 6 flag clear register
      GPDMA_C6FCR     : aliased GPDMA_C6FCR_Register;
      --  GPDMA channel 6 status register
      GPDMA_C6SR      : aliased GPDMA_C6SR_Register;
      --  GPDMA channel 6 control register
      GPDMA_C6CR      : aliased GPDMA_C6CR_Register;
      --  GPDMA channel 6 transfer register 1
      GPDMA_C6TR1     : aliased GPDMA_C6TR1_Register;
      --  GPDMA channel 6 transfer register 2
      GPDMA_C6TR2     : aliased GPDMA_C6TR2_Register;
      --  GPDMA channel 6 block register 1
      GPDMA_C6BR1     : aliased GPDMA_C6BR1_Register;
      --  GPDMA channel 6 source address register
      GPDMA_C6SAR     : aliased HAL.UInt32;
      --  GPDMA channel 6 destination address register
      GPDMA_C6DAR     : aliased HAL.UInt32;
      --  GPDMA channel 6 linked-list address register
      GPDMA_C6LLR     : aliased GPDMA_C6LLR_Register;
      --  GPDMA channel 7 linked-list base address register
      GPDMA_C7LBAR    : aliased GPDMA_C7LBAR_Register;
      --  GPDMA channel 7 flag clear register
      GPDMA_C7FCR     : aliased GPDMA_C7FCR_Register;
      --  GPDMA channel 7 status register
      GPDMA_C7SR      : aliased GPDMA_C7SR_Register;
      --  GPDMA channel 7 control register
      GPDMA_C7CR      : aliased GPDMA_C7CR_Register;
      --  GPDMA channel 7 transfer register 1
      GPDMA_C7TR1     : aliased GPDMA_C7TR1_Register;
      --  GPDMA channel 7 transfer register 2
      GPDMA_C7TR2     : aliased GPDMA_C7TR2_Register;
      --  GPDMA channel 7 block register 1
      GPDMA_C7BR1     : aliased GPDMA_C7BR1_Register;
      --  GPDMA channel 7 source address register
      GPDMA_C7SAR     : aliased HAL.UInt32;
      --  GPDMA channel 7 destination address register
      GPDMA_C7DAR     : aliased HAL.UInt32;
      --  GPDMA channel 7 linked-list address register
      GPDMA_C7LLR     : aliased GPDMA_C7LLR_Register;
      --  GPDMA channel 8 linked-list base address register
      GPDMA_C8LBAR    : aliased GPDMA_C8LBAR_Register;
      --  GPDMA channel 8 flag clear register
      GPDMA_C8FCR     : aliased GPDMA_C8FCR_Register;
      --  GPDMA channel 8 status register
      GPDMA_C8SR      : aliased GPDMA_C8SR_Register;
      --  GPDMA channel 8 control register
      GPDMA_C8CR      : aliased GPDMA_C8CR_Register;
      --  GPDMA channel 8 transfer register 1
      GPDMA_C8TR1     : aliased GPDMA_C8TR1_Register;
      --  GPDMA channel 8 transfer register 2
      GPDMA_C8TR2     : aliased GPDMA_C8TR2_Register;
      --  GPDMA channel 8 source address register
      GPDMA_C8SAR     : aliased HAL.UInt32;
      --  GPDMA channel 8 destination address register
      GPDMA_C8DAR     : aliased HAL.UInt32;
      --  GPDMA channel 10 transfer register 3
      GPDMA_C10TR3    : aliased GPDMA_C10TR3_Register;
      --  GPDMA channel 10 block register 2
      GPDMA_C10BR2    : aliased GPDMA_C10BR2_Register;
      --  GPDMA channel 9 linked-list base address register
      GPDMA_C9LBAR    : aliased GPDMA_C9LBAR_Register;
      --  GPDMA channel 9 flag clear register
      GPDMA_C9FCR     : aliased GPDMA_C9FCR_Register;
      --  GPDMA channel 9 status register
      GPDMA_C9SR      : aliased GPDMA_C9SR_Register;
      --  GPDMA channel 9 control register
      GPDMA_C9CR      : aliased GPDMA_C9CR_Register;
      --  GPDMA channel 9 transfer register 1
      GPDMA_C9TR1     : aliased GPDMA_C9TR1_Register;
      --  GPDMA channel 9 transfer register 2
      GPDMA_C9TR2     : aliased GPDMA_C9TR2_Register;
      --  GPDMA channel 9 source address register
      GPDMA_C9SAR     : aliased HAL.UInt32;
      --  GPDMA channel 9 destination address register
      GPDMA_C9DAR     : aliased HAL.UInt32;
      --  GPDMA channel 11 transfer register 3
      GPDMA_C11TR3    : aliased GPDMA_C11TR3_Register;
      --  GPDMA channel 11 block register 2
      GPDMA_C11BR2    : aliased GPDMA_C11BR2_Register;
      --  GPDMA channel 10 linked-list base address register
      GPDMA_C10LBAR   : aliased GPDMA_C10LBAR_Register;
      --  GPDMA channel 10 flag clear register
      GPDMA_C10FCR    : aliased GPDMA_C10FCR_Register;
      --  GPDMA channel 10 status register
      GPDMA_C10SR     : aliased GPDMA_C10SR_Register;
      --  GPDMA channel 10 control register
      GPDMA_C10CR     : aliased GPDMA_C10CR_Register;
      --  GPDMA channel 10 transfer register 1
      GPDMA_C10TR1    : aliased GPDMA_C10TR1_Register;
      --  GPDMA channel 10 transfer register 2
      GPDMA_C10TR2    : aliased GPDMA_C10TR2_Register;
      --  GPDMA channel 10 source address register
      GPDMA_C10SAR    : aliased HAL.UInt32;
      --  GPDMA channel 10 destination address register
      GPDMA_C10DAR    : aliased HAL.UInt32;
      --  GPDMA channel 11 linked-list base address register
      GPDMA_C11LBAR   : aliased GPDMA_C11LBAR_Register;
      --  GPDMA channel 11 flag clear register
      GPDMA_C11FCR    : aliased GPDMA_C11FCR_Register;
      --  GPDMA channel 11 status register
      GPDMA_C11SR     : aliased GPDMA_C11SR_Register;
      --  GPDMA channel 11 control register
      GPDMA_C11CR     : aliased GPDMA_C11CR_Register;
      --  GPDMA channel 11 transfer register 1
      GPDMA_C11TR1    : aliased GPDMA_C11TR1_Register;
      --  GPDMA channel 11 transfer register 2
      GPDMA_C11TR2    : aliased GPDMA_C11TR2_Register;
      --  GPDMA channel 11 source address register
      GPDMA_C11SAR    : aliased HAL.UInt32;
      --  GPDMA channel 11 destination address register
      GPDMA_C11DAR    : aliased HAL.UInt32;
      case Discriminent is
         when Val_8Br1 =>
            --  GPDMA channel 8 block register 1
            GPDMA_C8BR1 : aliased GPDMA_C8BR1_Register;
         when Val_10Br1 =>
            --  GPDMA channel 10 block register 1
            GPDMA_C10BR1 : aliased GPDMA_C10BR1_Register;
         when Val_8Llr =>
            --  GPDMA channel 8 linked-list address register
            GPDMA_C8LLR : aliased GPDMA_C8LLR_Register;
         when Val_10Llr =>
            --  GPDMA channel 10 linked-list address register
            GPDMA_C10LLR : aliased GPDMA_C10LLR_Register;
         when Val_9Br1 =>
            --  GPDMA channel 9 block register 1
            GPDMA_C9BR1 : aliased GPDMA_C9BR1_Register;
         when Val_11Br1 =>
            --  GPDMA channel 11 block register 1
            GPDMA_C11BR1 : aliased GPDMA_C11BR1_Register;
         when Val_9Llr =>
            --  GPDMA channel 9 linked-list address register
            GPDMA_C9LLR : aliased GPDMA_C9LLR_Register;
         when Val_11Llr =>
            --  GPDMA channel 11 linked-list address register
            GPDMA_C11LLR : aliased GPDMA_C11LLR_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for GPDMA_Peripheral use record
      GPDMA_SECCFGR   at 16#0# range 0 .. 31;
      GPDMA_PRIVCFGR  at 16#4# range 0 .. 31;
      GPDMA_RCFGLOCKR at 16#8# range 0 .. 31;
      GPDMA_MISR      at 16#C# range 0 .. 31;
      GPDMA_SMISR     at 16#10# range 0 .. 31;
      GPDMA_C0LBAR    at 16#50# range 0 .. 31;
      GPDMA_C0FCR     at 16#5C# range 0 .. 31;
      GPDMA_C0SR      at 16#60# range 0 .. 31;
      GPDMA_C0CR      at 16#64# range 0 .. 31;
      GPDMA_C0TR1     at 16#90# range 0 .. 31;
      GPDMA_C0TR2     at 16#94# range 0 .. 31;
      GPDMA_C0BR1     at 16#98# range 0 .. 31;
      GPDMA_C0SAR     at 16#9C# range 0 .. 31;
      GPDMA_C0DAR     at 16#A0# range 0 .. 31;
      GPDMA_C0LLR     at 16#CC# range 0 .. 31;
      GPDMA_C1LBAR    at 16#D0# range 0 .. 31;
      GPDMA_C1FCR     at 16#DC# range 0 .. 31;
      GPDMA_C1SR      at 16#E0# range 0 .. 31;
      GPDMA_C1CR      at 16#E4# range 0 .. 31;
      GPDMA_C1TR1     at 16#110# range 0 .. 31;
      GPDMA_C1TR2     at 16#114# range 0 .. 31;
      GPDMA_C1BR1     at 16#118# range 0 .. 31;
      GPDMA_C1SAR     at 16#11C# range 0 .. 31;
      GPDMA_C1DAR     at 16#120# range 0 .. 31;
      GPDMA_C1LLR     at 16#14C# range 0 .. 31;
      GPDMA_C2LBAR    at 16#150# range 0 .. 31;
      GPDMA_C2FCR     at 16#15C# range 0 .. 31;
      GPDMA_C2SR      at 16#160# range 0 .. 31;
      GPDMA_C2CR      at 16#164# range 0 .. 31;
      GPDMA_C2TR1     at 16#190# range 0 .. 31;
      GPDMA_C2TR2     at 16#194# range 0 .. 31;
      GPDMA_C2BR1     at 16#198# range 0 .. 31;
      GPDMA_C2SAR     at 16#19C# range 0 .. 31;
      GPDMA_C2DAR     at 16#1A0# range 0 .. 31;
      GPDMA_C2LLR     at 16#1CC# range 0 .. 31;
      GPDMA_C3LBAR    at 16#1D0# range 0 .. 31;
      GPDMA_C3FCR     at 16#1DC# range 0 .. 31;
      GPDMA_C3SR      at 16#1E0# range 0 .. 31;
      GPDMA_C3CR      at 16#1E4# range 0 .. 31;
      GPDMA_C3TR1     at 16#210# range 0 .. 31;
      GPDMA_C3TR2     at 16#214# range 0 .. 31;
      GPDMA_C3BR1     at 16#218# range 0 .. 31;
      GPDMA_C3SAR     at 16#21C# range 0 .. 31;
      GPDMA_C3DAR     at 16#220# range 0 .. 31;
      GPDMA_C3LLR     at 16#24C# range 0 .. 31;
      GPDMA_C4LBAR    at 16#250# range 0 .. 31;
      GPDMA_C4FCR     at 16#25C# range 0 .. 31;
      GPDMA_C4SR      at 16#260# range 0 .. 31;
      GPDMA_C4CR      at 16#264# range 0 .. 31;
      GPDMA_C4TR1     at 16#290# range 0 .. 31;
      GPDMA_C4TR2     at 16#294# range 0 .. 31;
      GPDMA_C4BR1     at 16#298# range 0 .. 31;
      GPDMA_C4SAR     at 16#29C# range 0 .. 31;
      GPDMA_C4DAR     at 16#2A0# range 0 .. 31;
      GPDMA_C4LLR     at 16#2CC# range 0 .. 31;
      GPDMA_C5LBAR    at 16#2D0# range 0 .. 31;
      GPDMA_C5FCR     at 16#2DC# range 0 .. 31;
      GPDMA_C5SR      at 16#2E0# range 0 .. 31;
      GPDMA_C5CR      at 16#2E4# range 0 .. 31;
      GPDMA_C5TR1     at 16#310# range 0 .. 31;
      GPDMA_C5TR2     at 16#314# range 0 .. 31;
      GPDMA_C5BR1     at 16#318# range 0 .. 31;
      GPDMA_C5SAR     at 16#31C# range 0 .. 31;
      GPDMA_C5DAR     at 16#320# range 0 .. 31;
      GPDMA_C5LLR     at 16#34C# range 0 .. 31;
      GPDMA_C6LBAR    at 16#350# range 0 .. 31;
      GPDMA_C6FCR     at 16#35C# range 0 .. 31;
      GPDMA_C6SR      at 16#360# range 0 .. 31;
      GPDMA_C6CR      at 16#364# range 0 .. 31;
      GPDMA_C6TR1     at 16#390# range 0 .. 31;
      GPDMA_C6TR2     at 16#394# range 0 .. 31;
      GPDMA_C6BR1     at 16#398# range 0 .. 31;
      GPDMA_C6SAR     at 16#39C# range 0 .. 31;
      GPDMA_C6DAR     at 16#3A0# range 0 .. 31;
      GPDMA_C6LLR     at 16#3CC# range 0 .. 31;
      GPDMA_C7LBAR    at 16#3D0# range 0 .. 31;
      GPDMA_C7FCR     at 16#3DC# range 0 .. 31;
      GPDMA_C7SR      at 16#3E0# range 0 .. 31;
      GPDMA_C7CR      at 16#3E4# range 0 .. 31;
      GPDMA_C7TR1     at 16#410# range 0 .. 31;
      GPDMA_C7TR2     at 16#414# range 0 .. 31;
      GPDMA_C7BR1     at 16#418# range 0 .. 31;
      GPDMA_C7SAR     at 16#41C# range 0 .. 31;
      GPDMA_C7DAR     at 16#420# range 0 .. 31;
      GPDMA_C7LLR     at 16#44C# range 0 .. 31;
      GPDMA_C8LBAR    at 16#450# range 0 .. 31;
      GPDMA_C8FCR     at 16#45C# range 0 .. 31;
      GPDMA_C8SR      at 16#460# range 0 .. 31;
      GPDMA_C8CR      at 16#464# range 0 .. 31;
      GPDMA_C8TR1     at 16#490# range 0 .. 31;
      GPDMA_C8TR2     at 16#494# range 0 .. 31;
      GPDMA_C8SAR     at 16#49C# range 0 .. 31;
      GPDMA_C8DAR     at 16#4A0# range 0 .. 31;
      GPDMA_C10TR3    at 16#4A4# range 0 .. 31;
      GPDMA_C10BR2    at 16#4A8# range 0 .. 31;
      GPDMA_C9LBAR    at 16#4D0# range 0 .. 31;
      GPDMA_C9FCR     at 16#4DC# range 0 .. 31;
      GPDMA_C9SR      at 16#4E0# range 0 .. 31;
      GPDMA_C9CR      at 16#4E4# range 0 .. 31;
      GPDMA_C9TR1     at 16#510# range 0 .. 31;
      GPDMA_C9TR2     at 16#514# range 0 .. 31;
      GPDMA_C9SAR     at 16#51C# range 0 .. 31;
      GPDMA_C9DAR     at 16#520# range 0 .. 31;
      GPDMA_C11TR3    at 16#524# range 0 .. 31;
      GPDMA_C11BR2    at 16#528# range 0 .. 31;
      GPDMA_C10LBAR   at 16#550# range 0 .. 31;
      GPDMA_C10FCR    at 16#55C# range 0 .. 31;
      GPDMA_C10SR     at 16#560# range 0 .. 31;
      GPDMA_C10CR     at 16#564# range 0 .. 31;
      GPDMA_C10TR1    at 16#590# range 0 .. 31;
      GPDMA_C10TR2    at 16#594# range 0 .. 31;
      GPDMA_C10SAR    at 16#59C# range 0 .. 31;
      GPDMA_C10DAR    at 16#5A0# range 0 .. 31;
      GPDMA_C11LBAR   at 16#5D0# range 0 .. 31;
      GPDMA_C11FCR    at 16#5DC# range 0 .. 31;
      GPDMA_C11SR     at 16#5E0# range 0 .. 31;
      GPDMA_C11CR     at 16#5E4# range 0 .. 31;
      GPDMA_C11TR1    at 16#610# range 0 .. 31;
      GPDMA_C11TR2    at 16#614# range 0 .. 31;
      GPDMA_C11SAR    at 16#61C# range 0 .. 31;
      GPDMA_C11DAR    at 16#620# range 0 .. 31;
      GPDMA_C8BR1     at 16#498# range 0 .. 31;
      GPDMA_C10BR1    at 16#498# range 0 .. 31;
      GPDMA_C8LLR     at 16#4CC# range 0 .. 31;
      GPDMA_C10LLR    at 16#4CC# range 0 .. 31;
      GPDMA_C9BR1     at 16#518# range 0 .. 31;
      GPDMA_C11BR1    at 16#518# range 0 .. 31;
      GPDMA_C9LLR     at 16#54C# range 0 .. 31;
      GPDMA_C11LLR    at 16#54C# range 0 .. 31;
   end record;

   --  GPDMA1
   GPDMA1_Periph : aliased GPDMA_Peripheral
     with Import, Address => GPDMA1_Base;

   --  GPDMA1
   SEC_GPDMA1_Periph : aliased GPDMA_Peripheral
     with Import, Address => SEC_GPDMA1_Base;

end STM32_SVD.GPDMA;
