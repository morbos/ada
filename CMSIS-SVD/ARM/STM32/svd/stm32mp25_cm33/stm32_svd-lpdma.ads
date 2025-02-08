--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.LPDMA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  LPDMA_SECCFGR_SEC array
   type LPDMA_SECCFGR_SEC_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for LPDMA_SECCFGR_SEC
   type LPDMA_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt4;
         when True =>
            --  SEC as an array
            Arr : LPDMA_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for LPDMA_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  LPDMA secure configuration register
   type LPDMA_SECCFGR_Register is record
      --  secure state of channel x
      SEC           : LPDMA_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_SECCFGR_Register use record
      SEC           at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  LPDMA_PRIVCFGR_PRIV array
   type LPDMA_PRIVCFGR_PRIV_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for LPDMA_PRIVCFGR_PRIV
   type LPDMA_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt4;
         when True =>
            --  PRIV as an array
            Arr : LPDMA_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for LPDMA_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  LPDMA privileged configuration register
   type LPDMA_PRIVCFGR_Register is record
      --  privileged state of channel x
      PRIV          : LPDMA_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  LPDMA_RCFGLOCKR_LOCK array
   type LPDMA_RCFGLOCKR_LOCK_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for LPDMA_RCFGLOCKR_LOCK
   type LPDMA_RCFGLOCKR_LOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LOCK as a value
            Val : HAL.UInt4;
         when True =>
            --  LOCK as an array
            Arr : LPDMA_RCFGLOCKR_LOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for LPDMA_RCFGLOCKR_LOCK_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  LPDMA configuration lock register
   type LPDMA_RCFGLOCKR_Register is record
      --  lock the configuration of LPDMA_SECCFGR.SECx, LPDMA_PRIVCFGR.PRIVx,
      --  and LPDMA_CxCIDCFGR until a global DMA reset This bit is cleared
      --  after reset and, once set, it cannot be reset until a global DMA
      --  reset.
      LOCK          : LPDMA_RCFGLOCKR_LOCK_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_RCFGLOCKR_Register use record
      LOCK          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  LPDMA_MISR_MIS array
   type LPDMA_MISR_MIS_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for LPDMA_MISR_MIS
   type LPDMA_MISR_MIS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MIS as a value
            Val : HAL.UInt4;
         when True =>
            --  MIS as an array
            Arr : LPDMA_MISR_MIS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for LPDMA_MISR_MIS_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  LPDMA nonsecure masked interrupt status register
   type LPDMA_MISR_Register is record
      --  Read-only. masked interrupt status of channel x
      MIS           : LPDMA_MISR_MIS_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_MISR_Register use record
      MIS           at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  LPDMA_SMISR_MIS array
   type LPDMA_SMISR_MIS_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for LPDMA_SMISR_MIS
   type LPDMA_SMISR_MIS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MIS as a value
            Val : HAL.UInt4;
         when True =>
            --  MIS as an array
            Arr : LPDMA_SMISR_MIS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for LPDMA_SMISR_MIS_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  LPDMA secure masked interrupt status register
   type LPDMA_SMISR_Register is record
      --  Read-only. masked interrupt status of the secure channel x
      MIS           : LPDMA_SMISR_MIS_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_SMISR_Register use record
      MIS           at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype LPDMA_C0LBAR_LBA_Field is HAL.UInt16;

   --  LPDMA channel 0 linked-list base address register
   type LPDMA_C0LBAR_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  linked-list base address of LPDMA channel x
      LBA           : LPDMA_C0LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C0LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype LPDMA_C0CIDCFGR_SCID_Field is HAL.UInt2;

   --  LPDMA_C0CIDCFGR_SEM_WLIST_CID array
   type LPDMA_C0CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 3)
     of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for LPDMA_C0CIDCFGR_SEM_WLIST_CID
   type LPDMA_C0CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : HAL.UInt4;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : LPDMA_C0CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for LPDMA_C0CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  LPDMA channel 0 CID register
   type LPDMA_C0CIDCFGR_Register is record
      --  CID filtering enable of the channel x Note: If SCFEN=1 and if a
      --  trusted domain or debug domain CID agent clears this bit, then the
      --  LPDMA hardware automatically clears the LPDMA_CxSEMCR.SEM_MUTEX.
      CFEN           : Boolean := False;
      --  semaphore mode enable (for the CID allocation policy to the channel
      --  x) Note: If SEM_EN=1 and if a trusted domain or debug domain CID
      --  agent clears this bit, then the LPDMA hardware automatically clears
      --  the LPDMA_CxSEMCR.SEM_MUTEX.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  static CID selection to channel x
      SCID           : LPDMA_C0CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  white-listed CID0 in the CID allocation pool (of channel x in
      --  semaphoremode)
      SEM_WLIST_CID  : LPDMA_C0CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C0CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype LPDMA_C0SEMCR_SEM_CCID_Field is HAL.UInt2;

   --  LPDMA channel 0 semaphore control register
   type LPDMA_C0SEMCR_Register is record
      --  mutex exclusion semaphore for the CID allocation of channel x
      --  (insemaphoremode) If the channel x is in secure state
      --  (LPDMA_SECCFGR.SECx=1), this bit can only be written by a secure
      --  agent. If the channel x is in privileged state
      --  (LPDMA_PRIVCFGR.PRIVx=1), this bit can only be written by a
      --  privileged agent. If the channel x is CID-filtered
      --  (LPDMA_CxCIDCFGR.CFEN=1) and in semaphore mode
      --  (LPDMA_CIDCFGR.SEM_EN=1), this bit can only be written either by an
      --  authorized (white-listed) CID agent to take the control, or by the
      --  same (white-listed) CID agent to release the control. Condition ‘On
      --  write’: Condition ‘On read’: Note: This bit must be written
      --  when LPDMA_CxCR.EN=0. This bit is read-only when LPDMA_CxCR.EN=1.
      --  Note: When EN of CFEN bit is cleared in LPDMA_CxSEMCR, the LPDMA
      --  hardware automatically clears this SEM_MUTEX bit.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. current CID allocated to channel x in semaphore mode This
      --  read-only field is internally updated when a white-listed CID takes
      --  the control of channel x, in semaphore mode. If SEM_MUTEX=0, this
      --  same CID also released it.
      SEM_CCID      : LPDMA_C0SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C0SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  LPDMA channel 0 flag clear register
   type LPDMA_C0FCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. user setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C0FCR_Register use record
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

   --  LPDMA channel 0 status register
   type LPDMA_C0SR_Register is record
      --  Read-only. idle flag This idle flag is de-asserted by hardware when
      --  the channel is enabled (LPDMA_CxCR.EN=1) with a valid channel
      --  configuration (no USEF to be immediately reported). This idle flag is
      --  asserted after hard reset or by hardware when the channel is back in
      --  idle state (in suspended or disabled state).
      IDLEF          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. transfer complete flag A transfer complete event is a
      --  block transfer complete or a LLI transfer complete including the
      --  upload of the next LLI if any, or the full linked-list completion,
      --  depending on the transfer complete event mode LPDMA_CxTR2.TCEM[1:0].
      TCF            : Boolean;
      --  Read-only. half transfer flag A half transfer event is a half block
      --  transfer that occurs when half of the bytes of the source block size
      --  (rounded-up integer of LPDMA_CxBR1.BNDT[15:0]/2) has been transferred
      --  to the destination.
      HTF            : Boolean;
      --  Read-only. data transfer error flag
      DTEF           : Boolean;
      --  Read-only. update link transfer error flag
      ULEF           : Boolean;
      --  Read-only. user setting error flag
      USEF           : Boolean;
      --  Read-only. completed suspension flag
      SUSPF          : Boolean;
      --  Read-only. trigger overrun flag clear
      TOF            : Boolean;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C0SR_Register use record
      IDLEF          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype LPDMA_C0CR_PRIO_Field is HAL.UInt2;

   --  LPDMA channel 0 control register
   type LPDMA_C0CR_Register is record
      --  enable Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 0. Else: this
      --  bit is de-asserted by hardware when there is a transfer error (master
      --  bus error or user setting error) or when there is a channel transfer
      --  complete (channel ready to be configured, for example: if LSM = 1 at
      --  the end of a single execution of the LLI). Else, this bit can be
      --  asserted by software. Writing 0 into this EN bit is ignored.
      EN             : Boolean := False;
      --  Write-only. reset This bit is write only. Writing 0 has no impact.
      --  Writing 1 implies the reset of the following: the channel internal
      --  state, SUSP and EN bits (whatever is written receptively in bit 2 and
      --  bit 0). The reset is effective when the channel is in steady state,
      --  meaning one of the following: - active channel in suspended state
      --  (LPDMA_CxSR.SUSPF=1 and LPDMA_CxSR.IDLEF=LPDMA_CxCR.EN=1) - channel
      --  in disabled state (LPDMA_CxSR.IDLEF=1 and LPDMA_CxCR.EN=0). After
      --  writing a RESET, to continue using this channel, the user must
      --  explicitly reconfigure the channel including the hardware-modified
      --  configuration registers (LPDMA_CxBR1, LPDMA_CxSAR and LPDMA_CxDAR)
      --  before enabling again the channel (see the programming sequence in
      --  Figure179).
      RESET          : Boolean := False;
      --  suspend Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 2. Else:
      --  Software must write 1 in order to suspend an active channel (with an
      --  ongoing DMA transfer over its master ports). The software must write
      --  0 in order to resume a suspended channel, following the programming
      --  sequence detailed in Figure178.
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  user setting error interrupt enable
      USEIE          : Boolean := False;
      --  completed suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Link step mode First the block transfer is executed as defined by the
      --  current internal register file until LPDMA_CxBR1.BNDT[15:0]=0).
      --  Secondly the next linked-list data structure is conditionally
      --  uploaded from memory as defined by LPDMA_CxLLR. Then channel
      --  execution is completed. Note: This bit must be written when EN=0.
      --  This bit is read-only when EN=1.
      LSM            : Boolean := False;
      --  unspecified
      Reserved_17_21 : HAL.UInt5 := 16#0#;
      --  priority level of the channel x LPDMA transfer versus others Note:
      --  This bit must be written when EN=0. This bit is read-only when EN=1.
      PRIO           : LPDMA_C0CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C0CR_Register use record
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
      Reserved_17_21 at 0 range 17 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype LPDMA_C0TR1_SDW_LOG2_Field is HAL.UInt2;
   subtype LPDMA_C0TR1_DDW_LOG2_Field is HAL.UInt2;

   --  LPDMA channel 0 transfer register 1
   type LPDMA_C0TR1_Register is record
      --  binary logarithm of the source data width of a single in bytes
      --  Setting a 8-byte data width causes a user setting error to be
      --  reported and none transfer is issued. a source block size must be a
      --  multiple of the source data width (LPDMA_CxBR1.BNDT[2:0] versus
      --  SDW_LOG2[1:0]). Otherwise, a user setting error is reported and no
      --  transfer is issued. Note: A source single transfer must have an
      --  aligned address with its data width (start address LPDMA_CxSAR[2:0]
      --  versus SDW_LOG2[1:0]). Otherwise, a user setting error is reported
      --  and none transfer is issued.
      SDW_LOG2       : LPDMA_C0TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  source incrementing single The source address, pointed by
      --  LPDMA_CxSAR, is kept constant after a single transfer or is
      --  incremented by the offset value corresponding to a contiguous data
      --  after a single transfer.
      SINC           : Boolean := False;
      --  unspecified
      Reserved_4_10  : HAL.UInt7 := 16#0#;
      --  padding/alignment mode If DDW_LOG2[1:0] = SDW_LOG2[1:0]: if the data
      --  width of a single destination transfer is equal to the data width of
      --  a single source transfer, this bit is ignored. Else, in the following
      --  enumerated values, the condition PAM_1 is when destination data width
      --  is higher that source data width, and the condition PAM_2 is when
      --  destination data width is higher than source data width.
      PAM            : Boolean := False;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  security attribute of the LPDMA transfer from the source If
      --  LPDMA_SECCFGR.SECx=1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when LPDMA_SECCFGR.SECx=1. A
      --  secure write is ignored when LPDMA_SECCFGR.SECx=0. When
      --  LPDMA_SECCFGR.SECx is de-asserted, this SSEC bit is also de-asserted
      --  by hardware (on a secure reconfiguration of the channel as
      --  nonsecure), and the LPDMA transfer from the source is nonsecure.
      SSEC           : Boolean := False;
      --  binary logarithm of the destination data width of a single in bytes
      --  Setting a 8-byte data width causes a user setting error to be
      --  reported and none transfer is issued. Note: A destination single
      --  transfer must have an aligned address with its data width (start
      --  address LPDMA_CxDAR[2:0] versus DDW_LOG2[1:0]). Otherwise a user
      --  setting error is reported and none transfer is issued.
      DDW_LOG2       : LPDMA_C0TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  destination incrementing single The destination address, pointed by
      --  LPDMA_CxDAR, is kept constant after a single transfer, or is
      --  incremented by the offset value corresponding to a contiguous data
      --  after a single transfer.
      DINC           : Boolean := False;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  security attribute of the LPDMA transfer to the destination If
      --  LPDMA_SECCFGR.SECx=1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when LPDMA_SECCFGR.SECx=1. A
      --  secure write is ignored when LPDMA_SECCFGR.SECx=0. When
      --  LPDMA_SECCFGR.SECx is de-asserted, this DSEC bit is also de-asserted
      --  by hardware (on a secure reconfiguration of the channel as
      --  nonsecure), and the LPDMA transfer to the destination is nonsecure.
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C0TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      Reserved_4_10  at 0 range 4 .. 10;
      PAM            at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype LPDMA_C0TR2_REQSEL_Field is HAL.UInt5;
   subtype LPDMA_C0TR2_TRIGM_Field is HAL.UInt2;
   subtype LPDMA_C0TR2_TRIGSEL_Field is HAL.UInt5;
   subtype LPDMA_C0TR2_TRIGPOL_Field is HAL.UInt2;
   subtype LPDMA_C0TR2_TCEM_Field is HAL.UInt2;

   --  LPDMA channel 0 transfer register 2
   type LPDMA_C0TR2_Register is record
      --  DMA hardware request selection These bits are ignored if channel x is
      --  activated (LPDMA_CxCR.EN asserted) with SWREQ=1 (software request for
      --  a memory-to-memory transfer). Else, the selected hardware request is
      --  internally taken into account as per Section27.3.3. The user must not
      --  assign a same input hardware request (same REQSEL[4:0] value) to
      --  different active DMA channels (LPDMA_CxCR.EN=1 and
      --  LPDMA_CxTR2.SWREQ=0 for these channels). DMA is not intended to
      --  hardware support the case of simultaneous enabled channels
      --  incorrectly configured with a same hardware peripheral request
      --  signal, and there is no user setting error reporting.
      REQSEL         : LPDMA_C0TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_8   : HAL.UInt4 := 16#0#;
      --  software request This bit is internally taken into account when
      --  LPDMA_CxCR.EN is asserted.
      SWREQ          : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  block hardware request If the channel x is activated (LPDMA_CxCR.EN
      --  asserted) with SWREQ = 1 (software request for a memory-to-memory
      --  transfer), this bit is ignored. Else:
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode Important: If a
      --  given channel x is not implemented with this feature, this bit is
      --  reserved and PFREQ is not present (see Section27.3.5 for the list of
      --  the implemented channels with this feature. If the channel x is
      --  activated (LPDMA_CxCR.EN asserted) with SWREQ=1 (software request for
      --  a memory-to-memory transfer), this bit is ignored. Else:
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  trigger mode These bits define the transfer granularity for its
      --  conditioning by the trigger. If the channel x is enabled
      --  (LPDMA_CxCR.EN asserted) with TRIGPOL[1:0]=0b00 or 0b11, these
      --  TRIGM[1:0] bits are ignored. Else, a DMA transfer is conditioned by
      --  at least one trigger hit: The LPDMA monitoring of a trigger for
      --  channel x is started when the channel is enabled/loaded with a new
      --  active trigger configuration: rising or falling edge on a selected
      --  trigger (TRIGPOL[1:0]=0b01 or respectively TRIGPOL[1:0]=0b10). The
      --  monitoring of this trigger is kept active during the triggered and
      --  uncompleted (data or link) transfer; and if a new trigger is detected
      --  then, this hit is internally memorized to grant the next transfer, as
      --  long as the defined rising or falling edge is not modified, and the
      --  TRIGSEL[4:0] is not modified, and the channel is enabled.
      --  Transferring a next LLIsubn+1/sub that updates the LPDMA_CxTR2 with a
      --  new value for any of TRIGSEL[4:0] or TRIGPOL[1:0], resets the
      --  monitoring, trashing the memorized hit of the formerly defined
      --  LLIsubn /subtrigger. After a first new trigger hitsubn+1/sub is
      --  memorized, if another second trigger hitsubn+2/sub is detected and if
      --  the hitsubn/sub triggered transfer is still not completed, hitsubn+2
      --  /subis lost and not memorized, and a trigger overrun flag is reported
      --  (LPDMA_CxSR.TOF=1), an interrupt is generated if enabled
      --  (LPDMA_CxCR.TOIE=1). The channel is not automatically disabled by
      --  hardware due to a trigger overrun.
      TRIGM          : LPDMA_C0TR2_TRIGM_Field := 16#0#;
      --  trigger event input selection These bits select the trigger event
      --  input of the LPDMA transfer (as perSection27.3.6), with an active
      --  trigger event if TRIGPOL[1:0]=00.
      TRIGSEL        : LPDMA_C0TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  trigger event polarity These bits define the polarity of the selected
      --  trigger event input defined by TRIGSEL[4:0].
      TRIGPOL        : LPDMA_C0TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  transfer complete event mode These bits define the transfer
      --  granularity for the transfer complete and half transfer complete
      --  events generation. Note: If the initial LLIsub0 /subdata transfer is
      --  null/void (directly programmed by the internal register file with
      --  LPDMA_CxBR1.BNDT[15:0]=0), then neither the complete transfer event
      --  nor the half transfer event is generated. Note: If the initial
      --  LLIsub0 /subdata transfer is null/void (i.e. directly programmed by
      --  the internal register file with LPDMA_CxBR1.BNDT[15:0]= 0), then the
      --  half transfer event is not generated, and the transfer complete event
      --  is generated when is completed the loading of the LLIsub1/sub.
      TCEM           : LPDMA_C0TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C0TR2_Register use record
      REQSEL         at 0 range 0 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      SWREQ          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype LPDMA_C0BR1_BNDT_Field is HAL.UInt16;

   --  LPDMA channel 0 block register 1
   type LPDMA_C0BR1_Register is record
      --  block number of data bytes to transfer from the source Block size
      --  transferred from the source. When the channel is enabled, this field
      --  becomes read-only and is decremented, indicating the remaining number
      --  of data items in the current source block to be transferred.
      --  BNDT[15:0] is programmed in number of bytes, maximum source block
      --  size is 64Kbytes -1. Once the last data transfer is completed
      --  (BNDT[15:0]=0): - if LPDMA_CxLLR.UB1=1, this field is updated by the
      --  LLI in the memory. - if LPDMA_CxLLR.UB1=0 and if there is at least
      --  one non null Uxx update bit, this field is internally restored to the
      --  programmed value. - if all LPDMA_CxLLR.Uxx=0 and if
      --  LPDMA_CxLLR.LA[15:0]=0, this field is internally restored to the
      --  programmed value (infinite/continuous last LLI). - if LPDMA_CxLLR=0,
      --  this field is kept as zero following the last LLI data transfer.
      --  Note: A non-null source block size must be a multiple of the source
      --  data width (BNDT[2:0] versus LPDMA_CxTR1.SDW_LOG2[1:0]). Else a user
      --  setting error is reported and none transfer is issued.
      BNDT           : LPDMA_C0BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C0BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPDMA_C0LLR_LA_Field is HAL.UInt14;

   --  LPDMA channel 0 linked-list address register
   type LPDMA_C0LLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  pointer (16-bit low-significant address) to the next linked-list data
      --  structure If UT1=UT2=UB1=USA=UDA=ULL=0 and if LA[15:2]=0, the current
      --  LLI is the last one. The channel transfer is completed without any
      --  update of the linked-list DMA register file. Else, this field is the
      --  pointer to the memory address offset from which the next linked-list
      --  data structure is automatically fetched from, once the data transfer
      --  is completed, in order to conditionally update the linked-list DMA
      --  internal register file (LPDMA_CxTR1, LPDMA_CxTR2, LPDMA_CxBR1,
      --  LPDMA_CxSAR, LPDMA_CxDAR and LPDMA_CxLLR). Note: The user must
      --  program the pointer to be 32-bit aligned. The two low-significant
      --  bits are write ignored.
      LA             : LPDMA_C0LLR_LA_Field := 16#0#;
      --  Update LPDMA_CxLLR register from memory This bit is used to control
      --  the update of the LPDMA_CxLLR register from the memory during the
      --  link transfer.
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : HAL.UInt10 := 16#0#;
      --  Update LPDMA_CxDAR register from memory This bit is used to control
      --  the update of the LPDMA_CxDAR register from the memory during the
      --  link transfer.
      UDA            : Boolean := False;
      --  update LPDMA_CxSAR from memory This bit controls the update of the
      --  LPDMA_CxSAR register from the memory during the link transfer.
      USA            : Boolean := False;
      --  Update LPDMA_CxBR1 from memory This bit controls the update of the
      --  LPDMA_CxBR1 register from the memory during the link transfer.
      UB1            : Boolean := False;
      --  Update LPDMA_CxTR2 from memory This bit controls the update of the
      --  LPDMA_CxTR2 register from the memory during the link transfer.
      UT2            : Boolean := False;
      --  Update LPDMA_CxTR1 from memory This bit controls the update of the
      --  LPDMA_CxTR1 register from the memory during the link transfer.
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C0LLR_Register use record
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

   subtype LPDMA_C1LBAR_LBA_Field is HAL.UInt16;

   --  LPDMA channel 1 linked-list base address register
   type LPDMA_C1LBAR_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  linked-list base address of LPDMA channel x
      LBA           : LPDMA_C1LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C1LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype LPDMA_C1CIDCFGR_SCID_Field is HAL.UInt2;

   --  LPDMA_C1CIDCFGR_SEM_WLIST_CID array
   type LPDMA_C1CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 3)
     of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for LPDMA_C1CIDCFGR_SEM_WLIST_CID
   type LPDMA_C1CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : HAL.UInt4;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : LPDMA_C1CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for LPDMA_C1CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  LPDMA channel 1 CID register
   type LPDMA_C1CIDCFGR_Register is record
      --  CID filtering enable of the channel x Note: If SCFEN=1 and if a
      --  trusted domain or debug domain CID agent clears this bit, then the
      --  LPDMA hardware automatically clears the LPDMA_CxSEMCR.SEM_MUTEX.
      CFEN           : Boolean := False;
      --  semaphore mode enable (for the CID allocation policy to the channel
      --  x) Note: If SEM_EN=1 and if a trusted domain or debug domain CID
      --  agent clears this bit, then the LPDMA hardware automatically clears
      --  the LPDMA_CxSEMCR.SEM_MUTEX.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  static CID selection to channel x
      SCID           : LPDMA_C1CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  white-listed CID0 in the CID allocation pool (of channel x in
      --  semaphoremode)
      SEM_WLIST_CID  : LPDMA_C1CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C1CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype LPDMA_C1SEMCR_SEM_CCID_Field is HAL.UInt2;

   --  LPDMA channel 1 semaphore control register
   type LPDMA_C1SEMCR_Register is record
      --  mutex exclusion semaphore for the CID allocation of channel x
      --  (insemaphoremode) If the channel x is in secure state
      --  (LPDMA_SECCFGR.SECx=1), this bit can only be written by a secure
      --  agent. If the channel x is in privileged state
      --  (LPDMA_PRIVCFGR.PRIVx=1), this bit can only be written by a
      --  privileged agent. If the channel x is CID-filtered
      --  (LPDMA_CxCIDCFGR.CFEN=1) and in semaphore mode
      --  (LPDMA_CIDCFGR.SEM_EN=1), this bit can only be written either by an
      --  authorized (white-listed) CID agent to take the control, or by the
      --  same (white-listed) CID agent to release the control. Condition ‘On
      --  write’: Condition ‘On read’: Note: This bit must be written
      --  when LPDMA_CxCR.EN=0. This bit is read-only when LPDMA_CxCR.EN=1.
      --  Note: When EN of CFEN bit is cleared in LPDMA_CxSEMCR, the LPDMA
      --  hardware automatically clears this SEM_MUTEX bit.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. current CID allocated to channel x in semaphore mode This
      --  read-only field is internally updated when a white-listed CID takes
      --  the control of channel x, in semaphore mode. If SEM_MUTEX=0, this
      --  same CID also released it.
      SEM_CCID      : LPDMA_C1SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C1SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  LPDMA channel 1 flag clear register
   type LPDMA_C1FCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. user setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C1FCR_Register use record
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

   --  LPDMA channel 1 status register
   type LPDMA_C1SR_Register is record
      --  Read-only. idle flag This idle flag is de-asserted by hardware when
      --  the channel is enabled (LPDMA_CxCR.EN=1) with a valid channel
      --  configuration (no USEF to be immediately reported). This idle flag is
      --  asserted after hard reset or by hardware when the channel is back in
      --  idle state (in suspended or disabled state).
      IDLEF          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. transfer complete flag A transfer complete event is a
      --  block transfer complete or a LLI transfer complete including the
      --  upload of the next LLI if any, or the full linked-list completion,
      --  depending on the transfer complete event mode LPDMA_CxTR2.TCEM[1:0].
      TCF            : Boolean;
      --  Read-only. half transfer flag A half transfer event is a half block
      --  transfer that occurs when half of the bytes of the source block size
      --  (rounded-up integer of LPDMA_CxBR1.BNDT[15:0]/2) has been transferred
      --  to the destination.
      HTF            : Boolean;
      --  Read-only. data transfer error flag
      DTEF           : Boolean;
      --  Read-only. update link transfer error flag
      ULEF           : Boolean;
      --  Read-only. user setting error flag
      USEF           : Boolean;
      --  Read-only. completed suspension flag
      SUSPF          : Boolean;
      --  Read-only. trigger overrun flag clear
      TOF            : Boolean;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C1SR_Register use record
      IDLEF          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype LPDMA_C1CR_PRIO_Field is HAL.UInt2;

   --  LPDMA channel 1 control register
   type LPDMA_C1CR_Register is record
      --  enable Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 0. Else: this
      --  bit is de-asserted by hardware when there is a transfer error (master
      --  bus error or user setting error) or when there is a channel transfer
      --  complete (channel ready to be configured, for example: if LSM = 1 at
      --  the end of a single execution of the LLI). Else, this bit can be
      --  asserted by software. Writing 0 into this EN bit is ignored.
      EN             : Boolean := False;
      --  Write-only. reset This bit is write only. Writing 0 has no impact.
      --  Writing 1 implies the reset of the following: the channel internal
      --  state, SUSP and EN bits (whatever is written receptively in bit 2 and
      --  bit 0). The reset is effective when the channel is in steady state,
      --  meaning one of the following: - active channel in suspended state
      --  (LPDMA_CxSR.SUSPF=1 and LPDMA_CxSR.IDLEF=LPDMA_CxCR.EN=1) - channel
      --  in disabled state (LPDMA_CxSR.IDLEF=1 and LPDMA_CxCR.EN=0). After
      --  writing a RESET, to continue using this channel, the user must
      --  explicitly reconfigure the channel including the hardware-modified
      --  configuration registers (LPDMA_CxBR1, LPDMA_CxSAR and LPDMA_CxDAR)
      --  before enabling again the channel (see the programming sequence in
      --  Figure179).
      RESET          : Boolean := False;
      --  suspend Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 2. Else:
      --  Software must write 1 in order to suspend an active channel (with an
      --  ongoing DMA transfer over its master ports). The software must write
      --  0 in order to resume a suspended channel, following the programming
      --  sequence detailed in Figure178.
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  user setting error interrupt enable
      USEIE          : Boolean := False;
      --  completed suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Link step mode First the block transfer is executed as defined by the
      --  current internal register file until LPDMA_CxBR1.BNDT[15:0]=0).
      --  Secondly the next linked-list data structure is conditionally
      --  uploaded from memory as defined by LPDMA_CxLLR. Then channel
      --  execution is completed. Note: This bit must be written when EN=0.
      --  This bit is read-only when EN=1.
      LSM            : Boolean := False;
      --  unspecified
      Reserved_17_21 : HAL.UInt5 := 16#0#;
      --  priority level of the channel x LPDMA transfer versus others Note:
      --  This bit must be written when EN=0. This bit is read-only when EN=1.
      PRIO           : LPDMA_C1CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C1CR_Register use record
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
      Reserved_17_21 at 0 range 17 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype LPDMA_C1TR1_SDW_LOG2_Field is HAL.UInt2;
   subtype LPDMA_C1TR1_DDW_LOG2_Field is HAL.UInt2;

   --  LPDMA channel 1 transfer register 1
   type LPDMA_C1TR1_Register is record
      --  binary logarithm of the source data width of a single in bytes
      --  Setting a 8-byte data width causes a user setting error to be
      --  reported and none transfer is issued. a source block size must be a
      --  multiple of the source data width (LPDMA_CxBR1.BNDT[2:0] versus
      --  SDW_LOG2[1:0]). Otherwise, a user setting error is reported and no
      --  transfer is issued. Note: A source single transfer must have an
      --  aligned address with its data width (start address LPDMA_CxSAR[2:0]
      --  versus SDW_LOG2[1:0]). Otherwise, a user setting error is reported
      --  and none transfer is issued.
      SDW_LOG2       : LPDMA_C1TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  source incrementing single The source address, pointed by
      --  LPDMA_CxSAR, is kept constant after a single transfer or is
      --  incremented by the offset value corresponding to a contiguous data
      --  after a single transfer.
      SINC           : Boolean := False;
      --  unspecified
      Reserved_4_10  : HAL.UInt7 := 16#0#;
      --  padding/alignment mode If DDW_LOG2[1:0] = SDW_LOG2[1:0]: if the data
      --  width of a single destination transfer is equal to the data width of
      --  a single source transfer, this bit is ignored. Else, in the following
      --  enumerated values, the condition PAM_1 is when destination data width
      --  is higher that source data width, and the condition PAM_2 is when
      --  destination data width is higher than source data width.
      PAM            : Boolean := False;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  security attribute of the LPDMA transfer from the source If
      --  LPDMA_SECCFGR.SECx=1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when LPDMA_SECCFGR.SECx=1. A
      --  secure write is ignored when LPDMA_SECCFGR.SECx=0. When
      --  LPDMA_SECCFGR.SECx is de-asserted, this SSEC bit is also de-asserted
      --  by hardware (on a secure reconfiguration of the channel as
      --  nonsecure), and the LPDMA transfer from the source is nonsecure.
      SSEC           : Boolean := False;
      --  binary logarithm of the destination data width of a single in bytes
      --  Setting a 8-byte data width causes a user setting error to be
      --  reported and none transfer is issued. Note: A destination single
      --  transfer must have an aligned address with its data width (start
      --  address LPDMA_CxDAR[2:0] versus DDW_LOG2[1:0]). Otherwise a user
      --  setting error is reported and none transfer is issued.
      DDW_LOG2       : LPDMA_C1TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  destination incrementing single The destination address, pointed by
      --  LPDMA_CxDAR, is kept constant after a single transfer, or is
      --  incremented by the offset value corresponding to a contiguous data
      --  after a single transfer.
      DINC           : Boolean := False;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  security attribute of the LPDMA transfer to the destination If
      --  LPDMA_SECCFGR.SECx=1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when LPDMA_SECCFGR.SECx=1. A
      --  secure write is ignored when LPDMA_SECCFGR.SECx=0. When
      --  LPDMA_SECCFGR.SECx is de-asserted, this DSEC bit is also de-asserted
      --  by hardware (on a secure reconfiguration of the channel as
      --  nonsecure), and the LPDMA transfer to the destination is nonsecure.
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C1TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      Reserved_4_10  at 0 range 4 .. 10;
      PAM            at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype LPDMA_C1TR2_REQSEL_Field is HAL.UInt5;
   subtype LPDMA_C1TR2_TRIGM_Field is HAL.UInt2;
   subtype LPDMA_C1TR2_TRIGSEL_Field is HAL.UInt5;
   subtype LPDMA_C1TR2_TRIGPOL_Field is HAL.UInt2;
   subtype LPDMA_C1TR2_TCEM_Field is HAL.UInt2;

   --  LPDMA channel 1 transfer register 2
   type LPDMA_C1TR2_Register is record
      --  DMA hardware request selection These bits are ignored if channel x is
      --  activated (LPDMA_CxCR.EN asserted) with SWREQ=1 (software request for
      --  a memory-to-memory transfer). Else, the selected hardware request is
      --  internally taken into account as per Section27.3.3. The user must not
      --  assign a same input hardware request (same REQSEL[4:0] value) to
      --  different active DMA channels (LPDMA_CxCR.EN=1 and
      --  LPDMA_CxTR2.SWREQ=0 for these channels). DMA is not intended to
      --  hardware support the case of simultaneous enabled channels
      --  incorrectly configured with a same hardware peripheral request
      --  signal, and there is no user setting error reporting.
      REQSEL         : LPDMA_C1TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_8   : HAL.UInt4 := 16#0#;
      --  software request This bit is internally taken into account when
      --  LPDMA_CxCR.EN is asserted.
      SWREQ          : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  block hardware request If the channel x is activated (LPDMA_CxCR.EN
      --  asserted) with SWREQ = 1 (software request for a memory-to-memory
      --  transfer), this bit is ignored. Else:
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode Important: If a
      --  given channel x is not implemented with this feature, this bit is
      --  reserved and PFREQ is not present (see Section27.3.5 for the list of
      --  the implemented channels with this feature. If the channel x is
      --  activated (LPDMA_CxCR.EN asserted) with SWREQ=1 (software request for
      --  a memory-to-memory transfer), this bit is ignored. Else:
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  trigger mode These bits define the transfer granularity for its
      --  conditioning by the trigger. If the channel x is enabled
      --  (LPDMA_CxCR.EN asserted) with TRIGPOL[1:0]=0b00 or 0b11, these
      --  TRIGM[1:0] bits are ignored. Else, a DMA transfer is conditioned by
      --  at least one trigger hit: The LPDMA monitoring of a trigger for
      --  channel x is started when the channel is enabled/loaded with a new
      --  active trigger configuration: rising or falling edge on a selected
      --  trigger (TRIGPOL[1:0]=0b01 or respectively TRIGPOL[1:0]=0b10). The
      --  monitoring of this trigger is kept active during the triggered and
      --  uncompleted (data or link) transfer; and if a new trigger is detected
      --  then, this hit is internally memorized to grant the next transfer, as
      --  long as the defined rising or falling edge is not modified, and the
      --  TRIGSEL[4:0] is not modified, and the channel is enabled.
      --  Transferring a next LLIsubn+1/sub that updates the LPDMA_CxTR2 with a
      --  new value for any of TRIGSEL[4:0] or TRIGPOL[1:0], resets the
      --  monitoring, trashing the memorized hit of the formerly defined
      --  LLIsubn /subtrigger. After a first new trigger hitsubn+1/sub is
      --  memorized, if another second trigger hitsubn+2/sub is detected and if
      --  the hitsubn/sub triggered transfer is still not completed, hitsubn+2
      --  /subis lost and not memorized, and a trigger overrun flag is reported
      --  (LPDMA_CxSR.TOF=1), an interrupt is generated if enabled
      --  (LPDMA_CxCR.TOIE=1). The channel is not automatically disabled by
      --  hardware due to a trigger overrun.
      TRIGM          : LPDMA_C1TR2_TRIGM_Field := 16#0#;
      --  trigger event input selection These bits select the trigger event
      --  input of the LPDMA transfer (as perSection27.3.6), with an active
      --  trigger event if TRIGPOL[1:0]=00.
      TRIGSEL        : LPDMA_C1TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  trigger event polarity These bits define the polarity of the selected
      --  trigger event input defined by TRIGSEL[4:0].
      TRIGPOL        : LPDMA_C1TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  transfer complete event mode These bits define the transfer
      --  granularity for the transfer complete and half transfer complete
      --  events generation. Note: If the initial LLIsub0 /subdata transfer is
      --  null/void (directly programmed by the internal register file with
      --  LPDMA_CxBR1.BNDT[15:0]=0), then neither the complete transfer event
      --  nor the half transfer event is generated. Note: If the initial
      --  LLIsub0 /subdata transfer is null/void (i.e. directly programmed by
      --  the internal register file with LPDMA_CxBR1.BNDT[15:0]= 0), then the
      --  half transfer event is not generated, and the transfer complete event
      --  is generated when is completed the loading of the LLIsub1/sub.
      TCEM           : LPDMA_C1TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C1TR2_Register use record
      REQSEL         at 0 range 0 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      SWREQ          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype LPDMA_C1BR1_BNDT_Field is HAL.UInt16;

   --  LPDMA channel 1 block register 1
   type LPDMA_C1BR1_Register is record
      --  block number of data bytes to transfer from the source Block size
      --  transferred from the source. When the channel is enabled, this field
      --  becomes read-only and is decremented, indicating the remaining number
      --  of data items in the current source block to be transferred.
      --  BNDT[15:0] is programmed in number of bytes, maximum source block
      --  size is 64Kbytes -1. Once the last data transfer is completed
      --  (BNDT[15:0]=0): - if LPDMA_CxLLR.UB1=1, this field is updated by the
      --  LLI in the memory. - if LPDMA_CxLLR.UB1=0 and if there is at least
      --  one non null Uxx update bit, this field is internally restored to the
      --  programmed value. - if all LPDMA_CxLLR.Uxx=0 and if
      --  LPDMA_CxLLR.LA[15:0]=0, this field is internally restored to the
      --  programmed value (infinite/continuous last LLI). - if LPDMA_CxLLR=0,
      --  this field is kept as zero following the last LLI data transfer.
      --  Note: A non-null source block size must be a multiple of the source
      --  data width (BNDT[2:0] versus LPDMA_CxTR1.SDW_LOG2[1:0]). Else a user
      --  setting error is reported and none transfer is issued.
      BNDT           : LPDMA_C1BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C1BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPDMA_C1LLR_LA_Field is HAL.UInt14;

   --  LPDMA channel 1 linked-list address register
   type LPDMA_C1LLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  pointer (16-bit low-significant address) to the next linked-list data
      --  structure If UT1=UT2=UB1=USA=UDA=ULL=0 and if LA[15:2]=0, the current
      --  LLI is the last one. The channel transfer is completed without any
      --  update of the linked-list DMA register file. Else, this field is the
      --  pointer to the memory address offset from which the next linked-list
      --  data structure is automatically fetched from, once the data transfer
      --  is completed, in order to conditionally update the linked-list DMA
      --  internal register file (LPDMA_CxTR1, LPDMA_CxTR2, LPDMA_CxBR1,
      --  LPDMA_CxSAR, LPDMA_CxDAR and LPDMA_CxLLR). Note: The user must
      --  program the pointer to be 32-bit aligned. The two low-significant
      --  bits are write ignored.
      LA             : LPDMA_C1LLR_LA_Field := 16#0#;
      --  Update LPDMA_CxLLR register from memory This bit is used to control
      --  the update of the LPDMA_CxLLR register from the memory during the
      --  link transfer.
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : HAL.UInt10 := 16#0#;
      --  Update LPDMA_CxDAR register from memory This bit is used to control
      --  the update of the LPDMA_CxDAR register from the memory during the
      --  link transfer.
      UDA            : Boolean := False;
      --  update LPDMA_CxSAR from memory This bit controls the update of the
      --  LPDMA_CxSAR register from the memory during the link transfer.
      USA            : Boolean := False;
      --  Update LPDMA_CxBR1 from memory This bit controls the update of the
      --  LPDMA_CxBR1 register from the memory during the link transfer.
      UB1            : Boolean := False;
      --  Update LPDMA_CxTR2 from memory This bit controls the update of the
      --  LPDMA_CxTR2 register from the memory during the link transfer.
      UT2            : Boolean := False;
      --  Update LPDMA_CxTR1 from memory This bit controls the update of the
      --  LPDMA_CxTR1 register from the memory during the link transfer.
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C1LLR_Register use record
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

   subtype LPDMA_C2LBAR_LBA_Field is HAL.UInt16;

   --  LPDMA channel 2 linked-list base address register
   type LPDMA_C2LBAR_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  linked-list base address of LPDMA channel x
      LBA           : LPDMA_C2LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C2LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype LPDMA_C2CIDCFGR_SCID_Field is HAL.UInt2;

   --  LPDMA_C2CIDCFGR_SEM_WLIST_CID array
   type LPDMA_C2CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 3)
     of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for LPDMA_C2CIDCFGR_SEM_WLIST_CID
   type LPDMA_C2CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : HAL.UInt4;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : LPDMA_C2CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for LPDMA_C2CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  LPDMA channel 2 CID register
   type LPDMA_C2CIDCFGR_Register is record
      --  CID filtering enable of the channel x Note: If SCFEN=1 and if a
      --  trusted domain or debug domain CID agent clears this bit, then the
      --  LPDMA hardware automatically clears the LPDMA_CxSEMCR.SEM_MUTEX.
      CFEN           : Boolean := False;
      --  semaphore mode enable (for the CID allocation policy to the channel
      --  x) Note: If SEM_EN=1 and if a trusted domain or debug domain CID
      --  agent clears this bit, then the LPDMA hardware automatically clears
      --  the LPDMA_CxSEMCR.SEM_MUTEX.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  static CID selection to channel x
      SCID           : LPDMA_C2CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  white-listed CID0 in the CID allocation pool (of channel x in
      --  semaphoremode)
      SEM_WLIST_CID  : LPDMA_C2CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C2CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype LPDMA_C2SEMCR_SEM_CCID_Field is HAL.UInt2;

   --  LPDMA channel 2 semaphore control register
   type LPDMA_C2SEMCR_Register is record
      --  mutex exclusion semaphore for the CID allocation of channel x
      --  (insemaphoremode) If the channel x is in secure state
      --  (LPDMA_SECCFGR.SECx=1), this bit can only be written by a secure
      --  agent. If the channel x is in privileged state
      --  (LPDMA_PRIVCFGR.PRIVx=1), this bit can only be written by a
      --  privileged agent. If the channel x is CID-filtered
      --  (LPDMA_CxCIDCFGR.CFEN=1) and in semaphore mode
      --  (LPDMA_CIDCFGR.SEM_EN=1), this bit can only be written either by an
      --  authorized (white-listed) CID agent to take the control, or by the
      --  same (white-listed) CID agent to release the control. Condition ‘On
      --  write’: Condition ‘On read’: Note: This bit must be written
      --  when LPDMA_CxCR.EN=0. This bit is read-only when LPDMA_CxCR.EN=1.
      --  Note: When EN of CFEN bit is cleared in LPDMA_CxSEMCR, the LPDMA
      --  hardware automatically clears this SEM_MUTEX bit.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. current CID allocated to channel x in semaphore mode This
      --  read-only field is internally updated when a white-listed CID takes
      --  the control of channel x, in semaphore mode. If SEM_MUTEX=0, this
      --  same CID also released it.
      SEM_CCID      : LPDMA_C2SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C2SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  LPDMA channel 2 flag clear register
   type LPDMA_C2FCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. user setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C2FCR_Register use record
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

   --  LPDMA channel 2 status register
   type LPDMA_C2SR_Register is record
      --  Read-only. idle flag This idle flag is de-asserted by hardware when
      --  the channel is enabled (LPDMA_CxCR.EN=1) with a valid channel
      --  configuration (no USEF to be immediately reported). This idle flag is
      --  asserted after hard reset or by hardware when the channel is back in
      --  idle state (in suspended or disabled state).
      IDLEF          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. transfer complete flag A transfer complete event is a
      --  block transfer complete or a LLI transfer complete including the
      --  upload of the next LLI if any, or the full linked-list completion,
      --  depending on the transfer complete event mode LPDMA_CxTR2.TCEM[1:0].
      TCF            : Boolean;
      --  Read-only. half transfer flag A half transfer event is a half block
      --  transfer that occurs when half of the bytes of the source block size
      --  (rounded-up integer of LPDMA_CxBR1.BNDT[15:0]/2) has been transferred
      --  to the destination.
      HTF            : Boolean;
      --  Read-only. data transfer error flag
      DTEF           : Boolean;
      --  Read-only. update link transfer error flag
      ULEF           : Boolean;
      --  Read-only. user setting error flag
      USEF           : Boolean;
      --  Read-only. completed suspension flag
      SUSPF          : Boolean;
      --  Read-only. trigger overrun flag clear
      TOF            : Boolean;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C2SR_Register use record
      IDLEF          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype LPDMA_C2CR_PRIO_Field is HAL.UInt2;

   --  LPDMA channel 2 control register
   type LPDMA_C2CR_Register is record
      --  enable Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 0. Else: this
      --  bit is de-asserted by hardware when there is a transfer error (master
      --  bus error or user setting error) or when there is a channel transfer
      --  complete (channel ready to be configured, for example: if LSM = 1 at
      --  the end of a single execution of the LLI). Else, this bit can be
      --  asserted by software. Writing 0 into this EN bit is ignored.
      EN             : Boolean := False;
      --  Write-only. reset This bit is write only. Writing 0 has no impact.
      --  Writing 1 implies the reset of the following: the channel internal
      --  state, SUSP and EN bits (whatever is written receptively in bit 2 and
      --  bit 0). The reset is effective when the channel is in steady state,
      --  meaning one of the following: - active channel in suspended state
      --  (LPDMA_CxSR.SUSPF=1 and LPDMA_CxSR.IDLEF=LPDMA_CxCR.EN=1) - channel
      --  in disabled state (LPDMA_CxSR.IDLEF=1 and LPDMA_CxCR.EN=0). After
      --  writing a RESET, to continue using this channel, the user must
      --  explicitly reconfigure the channel including the hardware-modified
      --  configuration registers (LPDMA_CxBR1, LPDMA_CxSAR and LPDMA_CxDAR)
      --  before enabling again the channel (see the programming sequence in
      --  Figure179).
      RESET          : Boolean := False;
      --  suspend Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 2. Else:
      --  Software must write 1 in order to suspend an active channel (with an
      --  ongoing DMA transfer over its master ports). The software must write
      --  0 in order to resume a suspended channel, following the programming
      --  sequence detailed in Figure178.
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  user setting error interrupt enable
      USEIE          : Boolean := False;
      --  completed suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Link step mode First the block transfer is executed as defined by the
      --  current internal register file until LPDMA_CxBR1.BNDT[15:0]=0).
      --  Secondly the next linked-list data structure is conditionally
      --  uploaded from memory as defined by LPDMA_CxLLR. Then channel
      --  execution is completed. Note: This bit must be written when EN=0.
      --  This bit is read-only when EN=1.
      LSM            : Boolean := False;
      --  unspecified
      Reserved_17_21 : HAL.UInt5 := 16#0#;
      --  priority level of the channel x LPDMA transfer versus others Note:
      --  This bit must be written when EN=0. This bit is read-only when EN=1.
      PRIO           : LPDMA_C2CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C2CR_Register use record
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
      Reserved_17_21 at 0 range 17 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype LPDMA_C2TR1_SDW_LOG2_Field is HAL.UInt2;
   subtype LPDMA_C2TR1_DDW_LOG2_Field is HAL.UInt2;

   --  LPDMA channel 2 transfer register 1
   type LPDMA_C2TR1_Register is record
      --  binary logarithm of the source data width of a single in bytes
      --  Setting a 8-byte data width causes a user setting error to be
      --  reported and none transfer is issued. a source block size must be a
      --  multiple of the source data width (LPDMA_CxBR1.BNDT[2:0] versus
      --  SDW_LOG2[1:0]). Otherwise, a user setting error is reported and no
      --  transfer is issued. Note: A source single transfer must have an
      --  aligned address with its data width (start address LPDMA_CxSAR[2:0]
      --  versus SDW_LOG2[1:0]). Otherwise, a user setting error is reported
      --  and none transfer is issued.
      SDW_LOG2       : LPDMA_C2TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  source incrementing single The source address, pointed by
      --  LPDMA_CxSAR, is kept constant after a single transfer or is
      --  incremented by the offset value corresponding to a contiguous data
      --  after a single transfer.
      SINC           : Boolean := False;
      --  unspecified
      Reserved_4_10  : HAL.UInt7 := 16#0#;
      --  padding/alignment mode If DDW_LOG2[1:0] = SDW_LOG2[1:0]: if the data
      --  width of a single destination transfer is equal to the data width of
      --  a single source transfer, this bit is ignored. Else, in the following
      --  enumerated values, the condition PAM_1 is when destination data width
      --  is higher that source data width, and the condition PAM_2 is when
      --  destination data width is higher than source data width.
      PAM            : Boolean := False;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  security attribute of the LPDMA transfer from the source If
      --  LPDMA_SECCFGR.SECx=1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when LPDMA_SECCFGR.SECx=1. A
      --  secure write is ignored when LPDMA_SECCFGR.SECx=0. When
      --  LPDMA_SECCFGR.SECx is de-asserted, this SSEC bit is also de-asserted
      --  by hardware (on a secure reconfiguration of the channel as
      --  nonsecure), and the LPDMA transfer from the source is nonsecure.
      SSEC           : Boolean := False;
      --  binary logarithm of the destination data width of a single in bytes
      --  Setting a 8-byte data width causes a user setting error to be
      --  reported and none transfer is issued. Note: A destination single
      --  transfer must have an aligned address with its data width (start
      --  address LPDMA_CxDAR[2:0] versus DDW_LOG2[1:0]). Otherwise a user
      --  setting error is reported and none transfer is issued.
      DDW_LOG2       : LPDMA_C2TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  destination incrementing single The destination address, pointed by
      --  LPDMA_CxDAR, is kept constant after a single transfer, or is
      --  incremented by the offset value corresponding to a contiguous data
      --  after a single transfer.
      DINC           : Boolean := False;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  security attribute of the LPDMA transfer to the destination If
      --  LPDMA_SECCFGR.SECx=1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when LPDMA_SECCFGR.SECx=1. A
      --  secure write is ignored when LPDMA_SECCFGR.SECx=0. When
      --  LPDMA_SECCFGR.SECx is de-asserted, this DSEC bit is also de-asserted
      --  by hardware (on a secure reconfiguration of the channel as
      --  nonsecure), and the LPDMA transfer to the destination is nonsecure.
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C2TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      Reserved_4_10  at 0 range 4 .. 10;
      PAM            at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype LPDMA_C2TR2_REQSEL_Field is HAL.UInt5;
   subtype LPDMA_C2TR2_TRIGM_Field is HAL.UInt2;
   subtype LPDMA_C2TR2_TRIGSEL_Field is HAL.UInt5;
   subtype LPDMA_C2TR2_TRIGPOL_Field is HAL.UInt2;
   subtype LPDMA_C2TR2_TCEM_Field is HAL.UInt2;

   --  LPDMA channel 2 transfer register 2
   type LPDMA_C2TR2_Register is record
      --  DMA hardware request selection These bits are ignored if channel x is
      --  activated (LPDMA_CxCR.EN asserted) with SWREQ=1 (software request for
      --  a memory-to-memory transfer). Else, the selected hardware request is
      --  internally taken into account as per Section27.3.3. The user must not
      --  assign a same input hardware request (same REQSEL[4:0] value) to
      --  different active DMA channels (LPDMA_CxCR.EN=1 and
      --  LPDMA_CxTR2.SWREQ=0 for these channels). DMA is not intended to
      --  hardware support the case of simultaneous enabled channels
      --  incorrectly configured with a same hardware peripheral request
      --  signal, and there is no user setting error reporting.
      REQSEL         : LPDMA_C2TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_8   : HAL.UInt4 := 16#0#;
      --  software request This bit is internally taken into account when
      --  LPDMA_CxCR.EN is asserted.
      SWREQ          : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  block hardware request If the channel x is activated (LPDMA_CxCR.EN
      --  asserted) with SWREQ = 1 (software request for a memory-to-memory
      --  transfer), this bit is ignored. Else:
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode Important: If a
      --  given channel x is not implemented with this feature, this bit is
      --  reserved and PFREQ is not present (see Section27.3.5 for the list of
      --  the implemented channels with this feature. If the channel x is
      --  activated (LPDMA_CxCR.EN asserted) with SWREQ=1 (software request for
      --  a memory-to-memory transfer), this bit is ignored. Else:
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  trigger mode These bits define the transfer granularity for its
      --  conditioning by the trigger. If the channel x is enabled
      --  (LPDMA_CxCR.EN asserted) with TRIGPOL[1:0]=0b00 or 0b11, these
      --  TRIGM[1:0] bits are ignored. Else, a DMA transfer is conditioned by
      --  at least one trigger hit: The LPDMA monitoring of a trigger for
      --  channel x is started when the channel is enabled/loaded with a new
      --  active trigger configuration: rising or falling edge on a selected
      --  trigger (TRIGPOL[1:0]=0b01 or respectively TRIGPOL[1:0]=0b10). The
      --  monitoring of this trigger is kept active during the triggered and
      --  uncompleted (data or link) transfer; and if a new trigger is detected
      --  then, this hit is internally memorized to grant the next transfer, as
      --  long as the defined rising or falling edge is not modified, and the
      --  TRIGSEL[4:0] is not modified, and the channel is enabled.
      --  Transferring a next LLIsubn+1/sub that updates the LPDMA_CxTR2 with a
      --  new value for any of TRIGSEL[4:0] or TRIGPOL[1:0], resets the
      --  monitoring, trashing the memorized hit of the formerly defined
      --  LLIsubn /subtrigger. After a first new trigger hitsubn+1/sub is
      --  memorized, if another second trigger hitsubn+2/sub is detected and if
      --  the hitsubn/sub triggered transfer is still not completed, hitsubn+2
      --  /subis lost and not memorized, and a trigger overrun flag is reported
      --  (LPDMA_CxSR.TOF=1), an interrupt is generated if enabled
      --  (LPDMA_CxCR.TOIE=1). The channel is not automatically disabled by
      --  hardware due to a trigger overrun.
      TRIGM          : LPDMA_C2TR2_TRIGM_Field := 16#0#;
      --  trigger event input selection These bits select the trigger event
      --  input of the LPDMA transfer (as perSection27.3.6), with an active
      --  trigger event if TRIGPOL[1:0]=00.
      TRIGSEL        : LPDMA_C2TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  trigger event polarity These bits define the polarity of the selected
      --  trigger event input defined by TRIGSEL[4:0].
      TRIGPOL        : LPDMA_C2TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  transfer complete event mode These bits define the transfer
      --  granularity for the transfer complete and half transfer complete
      --  events generation. Note: If the initial LLIsub0 /subdata transfer is
      --  null/void (directly programmed by the internal register file with
      --  LPDMA_CxBR1.BNDT[15:0]=0), then neither the complete transfer event
      --  nor the half transfer event is generated. Note: If the initial
      --  LLIsub0 /subdata transfer is null/void (i.e. directly programmed by
      --  the internal register file with LPDMA_CxBR1.BNDT[15:0]= 0), then the
      --  half transfer event is not generated, and the transfer complete event
      --  is generated when is completed the loading of the LLIsub1/sub.
      TCEM           : LPDMA_C2TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C2TR2_Register use record
      REQSEL         at 0 range 0 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      SWREQ          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype LPDMA_C2BR1_BNDT_Field is HAL.UInt16;

   --  LPDMA channel 2 block register 1
   type LPDMA_C2BR1_Register is record
      --  block number of data bytes to transfer from the source Block size
      --  transferred from the source. When the channel is enabled, this field
      --  becomes read-only and is decremented, indicating the remaining number
      --  of data items in the current source block to be transferred.
      --  BNDT[15:0] is programmed in number of bytes, maximum source block
      --  size is 64Kbytes -1. Once the last data transfer is completed
      --  (BNDT[15:0]=0): - if LPDMA_CxLLR.UB1=1, this field is updated by the
      --  LLI in the memory. - if LPDMA_CxLLR.UB1=0 and if there is at least
      --  one non null Uxx update bit, this field is internally restored to the
      --  programmed value. - if all LPDMA_CxLLR.Uxx=0 and if
      --  LPDMA_CxLLR.LA[15:0]=0, this field is internally restored to the
      --  programmed value (infinite/continuous last LLI). - if LPDMA_CxLLR=0,
      --  this field is kept as zero following the last LLI data transfer.
      --  Note: A non-null source block size must be a multiple of the source
      --  data width (BNDT[2:0] versus LPDMA_CxTR1.SDW_LOG2[1:0]). Else a user
      --  setting error is reported and none transfer is issued.
      BNDT           : LPDMA_C2BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C2BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPDMA_C2LLR_LA_Field is HAL.UInt14;

   --  LPDMA channel 2 linked-list address register
   type LPDMA_C2LLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  pointer (16-bit low-significant address) to the next linked-list data
      --  structure If UT1=UT2=UB1=USA=UDA=ULL=0 and if LA[15:2]=0, the current
      --  LLI is the last one. The channel transfer is completed without any
      --  update of the linked-list DMA register file. Else, this field is the
      --  pointer to the memory address offset from which the next linked-list
      --  data structure is automatically fetched from, once the data transfer
      --  is completed, in order to conditionally update the linked-list DMA
      --  internal register file (LPDMA_CxTR1, LPDMA_CxTR2, LPDMA_CxBR1,
      --  LPDMA_CxSAR, LPDMA_CxDAR and LPDMA_CxLLR). Note: The user must
      --  program the pointer to be 32-bit aligned. The two low-significant
      --  bits are write ignored.
      LA             : LPDMA_C2LLR_LA_Field := 16#0#;
      --  Update LPDMA_CxLLR register from memory This bit is used to control
      --  the update of the LPDMA_CxLLR register from the memory during the
      --  link transfer.
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : HAL.UInt10 := 16#0#;
      --  Update LPDMA_CxDAR register from memory This bit is used to control
      --  the update of the LPDMA_CxDAR register from the memory during the
      --  link transfer.
      UDA            : Boolean := False;
      --  update LPDMA_CxSAR from memory This bit controls the update of the
      --  LPDMA_CxSAR register from the memory during the link transfer.
      USA            : Boolean := False;
      --  Update LPDMA_CxBR1 from memory This bit controls the update of the
      --  LPDMA_CxBR1 register from the memory during the link transfer.
      UB1            : Boolean := False;
      --  Update LPDMA_CxTR2 from memory This bit controls the update of the
      --  LPDMA_CxTR2 register from the memory during the link transfer.
      UT2            : Boolean := False;
      --  Update LPDMA_CxTR1 from memory This bit controls the update of the
      --  LPDMA_CxTR1 register from the memory during the link transfer.
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C2LLR_Register use record
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

   subtype LPDMA_C3LBAR_LBA_Field is HAL.UInt16;

   --  LPDMA channel 3 linked-list base address register
   type LPDMA_C3LBAR_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  linked-list base address of LPDMA channel x
      LBA           : LPDMA_C3LBAR_LBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C3LBAR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      LBA           at 0 range 16 .. 31;
   end record;

   subtype LPDMA_C3CIDCFGR_SCID_Field is HAL.UInt2;

   --  LPDMA_C3CIDCFGR_SEM_WLIST_CID array
   type LPDMA_C3CIDCFGR_SEM_WLIST_CID_Field_Array is array (0 .. 3)
     of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for LPDMA_C3CIDCFGR_SEM_WLIST_CID
   type LPDMA_C3CIDCFGR_SEM_WLIST_CID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEM_WLIST_CID as a value
            Val : HAL.UInt4;
         when True =>
            --  SEM_WLIST_CID as an array
            Arr : LPDMA_C3CIDCFGR_SEM_WLIST_CID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for LPDMA_C3CIDCFGR_SEM_WLIST_CID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  LPDMA channel 3 CID register
   type LPDMA_C3CIDCFGR_Register is record
      --  CID filtering enable of the channel x Note: If SCFEN=1 and if a
      --  trusted domain or debug domain CID agent clears this bit, then the
      --  LPDMA hardware automatically clears the LPDMA_CxSEMCR.SEM_MUTEX.
      CFEN           : Boolean := False;
      --  semaphore mode enable (for the CID allocation policy to the channel
      --  x) Note: If SEM_EN=1 and if a trusted domain or debug domain CID
      --  agent clears this bit, then the LPDMA hardware automatically clears
      --  the LPDMA_CxSEMCR.SEM_MUTEX.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  static CID selection to channel x
      SCID           : LPDMA_C3CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  white-listed CID0 in the CID allocation pool (of channel x in
      --  semaphoremode)
      SEM_WLIST_CID  : LPDMA_C3CIDCFGR_SEM_WLIST_CID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C3CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEM_WLIST_CID  at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype LPDMA_C3SEMCR_SEM_CCID_Field is HAL.UInt2;

   --  LPDMA channel 3 semaphore control register
   type LPDMA_C3SEMCR_Register is record
      --  mutex exclusion semaphore for the CID allocation of channel x
      --  (insemaphoremode) If the channel x is in secure state
      --  (LPDMA_SECCFGR.SECx=1), this bit can only be written by a secure
      --  agent. If the channel x is in privileged state
      --  (LPDMA_PRIVCFGR.PRIVx=1), this bit can only be written by a
      --  privileged agent. If the channel x is CID-filtered
      --  (LPDMA_CxCIDCFGR.CFEN=1) and in semaphore mode
      --  (LPDMA_CIDCFGR.SEM_EN=1), this bit can only be written either by an
      --  authorized (white-listed) CID agent to take the control, or by the
      --  same (white-listed) CID agent to release the control. Condition ‘On
      --  write’: Condition ‘On read’: Note: This bit must be written
      --  when LPDMA_CxCR.EN=0. This bit is read-only when LPDMA_CxCR.EN=1.
      --  Note: When EN of CFEN bit is cleared in LPDMA_CxSEMCR, the LPDMA
      --  hardware automatically clears this SEM_MUTEX bit.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. current CID allocated to channel x in semaphore mode This
      --  read-only field is internally updated when a white-listed CID takes
      --  the control of channel x, in semaphore mode. If SEM_MUTEX=0, this
      --  same CID also released it.
      SEM_CCID      : LPDMA_C3SEMCR_SEM_CCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C3SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEM_CCID      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  LPDMA channel 3 flag clear register
   type LPDMA_C3FCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. transfer complete flag clear
      TCF            : Boolean := False;
      --  Write-only. half transfer flag clear
      HTF            : Boolean := False;
      --  Write-only. data transfer error flag clear
      DTEF           : Boolean := False;
      --  Write-only. update link transfer error flag clear
      ULEF           : Boolean := False;
      --  Write-only. user setting error flag clear
      USEF           : Boolean := False;
      --  Write-only. completed suspension flag clear
      SUSPF          : Boolean := False;
      --  Write-only. trigger overrun flag clear
      TOF            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C3FCR_Register use record
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

   --  LPDMA channel 3 status register
   type LPDMA_C3SR_Register is record
      --  Read-only. idle flag This idle flag is de-asserted by hardware when
      --  the channel is enabled (LPDMA_CxCR.EN=1) with a valid channel
      --  configuration (no USEF to be immediately reported). This idle flag is
      --  asserted after hard reset or by hardware when the channel is back in
      --  idle state (in suspended or disabled state).
      IDLEF          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. transfer complete flag A transfer complete event is a
      --  block transfer complete or a LLI transfer complete including the
      --  upload of the next LLI if any, or the full linked-list completion,
      --  depending on the transfer complete event mode LPDMA_CxTR2.TCEM[1:0].
      TCF            : Boolean;
      --  Read-only. half transfer flag A half transfer event is a half block
      --  transfer that occurs when half of the bytes of the source block size
      --  (rounded-up integer of LPDMA_CxBR1.BNDT[15:0]/2) has been transferred
      --  to the destination.
      HTF            : Boolean;
      --  Read-only. data transfer error flag
      DTEF           : Boolean;
      --  Read-only. update link transfer error flag
      ULEF           : Boolean;
      --  Read-only. user setting error flag
      USEF           : Boolean;
      --  Read-only. completed suspension flag
      SUSPF          : Boolean;
      --  Read-only. trigger overrun flag clear
      TOF            : Boolean;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C3SR_Register use record
      IDLEF          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TCF            at 0 range 8 .. 8;
      HTF            at 0 range 9 .. 9;
      DTEF           at 0 range 10 .. 10;
      ULEF           at 0 range 11 .. 11;
      USEF           at 0 range 12 .. 12;
      SUSPF          at 0 range 13 .. 13;
      TOF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype LPDMA_C3CR_PRIO_Field is HAL.UInt2;

   --  LPDMA channel 3 control register
   type LPDMA_C3CR_Register is record
      --  enable Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 0. Else: this
      --  bit is de-asserted by hardware when there is a transfer error (master
      --  bus error or user setting error) or when there is a channel transfer
      --  complete (channel ready to be configured, for example: if LSM = 1 at
      --  the end of a single execution of the LLI). Else, this bit can be
      --  asserted by software. Writing 0 into this EN bit is ignored.
      EN             : Boolean := False;
      --  Write-only. reset This bit is write only. Writing 0 has no impact.
      --  Writing 1 implies the reset of the following: the channel internal
      --  state, SUSP and EN bits (whatever is written receptively in bit 2 and
      --  bit 0). The reset is effective when the channel is in steady state,
      --  meaning one of the following: - active channel in suspended state
      --  (LPDMA_CxSR.SUSPF=1 and LPDMA_CxSR.IDLEF=LPDMA_CxCR.EN=1) - channel
      --  in disabled state (LPDMA_CxSR.IDLEF=1 and LPDMA_CxCR.EN=0). After
      --  writing a RESET, to continue using this channel, the user must
      --  explicitly reconfigure the channel including the hardware-modified
      --  configuration registers (LPDMA_CxBR1, LPDMA_CxSAR and LPDMA_CxDAR)
      --  before enabling again the channel (see the programming sequence in
      --  Figure179).
      RESET          : Boolean := False;
      --  suspend Writing 1 into the field RESET (bit 1) causes the hardware to
      --  de-assert this bit, whatever is written into this bit 2. Else:
      --  Software must write 1 in order to suspend an active channel (with an
      --  ongoing DMA transfer over its master ports). The software must write
      --  0 in order to resume a suspended channel, following the programming
      --  sequence detailed in Figure178.
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  transfer complete interrupt enable
      TCIE           : Boolean := False;
      --  half transfer complete interrupt enable
      HTIE           : Boolean := False;
      --  data transfer error interrupt enable
      DTEIE          : Boolean := False;
      --  update link transfer error interrupt enable
      ULEIE          : Boolean := False;
      --  user setting error interrupt enable
      USEIE          : Boolean := False;
      --  completed suspension interrupt enable
      SUSPIE         : Boolean := False;
      --  trigger overrun interrupt enable
      TOIE           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Link step mode First the block transfer is executed as defined by the
      --  current internal register file until LPDMA_CxBR1.BNDT[15:0]=0).
      --  Secondly the next linked-list data structure is conditionally
      --  uploaded from memory as defined by LPDMA_CxLLR. Then channel
      --  execution is completed. Note: This bit must be written when EN=0.
      --  This bit is read-only when EN=1.
      LSM            : Boolean := False;
      --  unspecified
      Reserved_17_21 : HAL.UInt5 := 16#0#;
      --  priority level of the channel x LPDMA transfer versus others Note:
      --  This bit must be written when EN=0. This bit is read-only when EN=1.
      PRIO           : LPDMA_C3CR_PRIO_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C3CR_Register use record
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
      Reserved_17_21 at 0 range 17 .. 21;
      PRIO           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype LPDMA_C3TR1_SDW_LOG2_Field is HAL.UInt2;
   subtype LPDMA_C3TR1_DDW_LOG2_Field is HAL.UInt2;

   --  LPDMA channel 3 transfer register 1
   type LPDMA_C3TR1_Register is record
      --  binary logarithm of the source data width of a single in bytes
      --  Setting a 8-byte data width causes a user setting error to be
      --  reported and none transfer is issued. a source block size must be a
      --  multiple of the source data width (LPDMA_CxBR1.BNDT[2:0] versus
      --  SDW_LOG2[1:0]). Otherwise, a user setting error is reported and no
      --  transfer is issued. Note: A source single transfer must have an
      --  aligned address with its data width (start address LPDMA_CxSAR[2:0]
      --  versus SDW_LOG2[1:0]). Otherwise, a user setting error is reported
      --  and none transfer is issued.
      SDW_LOG2       : LPDMA_C3TR1_SDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  source incrementing single The source address, pointed by
      --  LPDMA_CxSAR, is kept constant after a single transfer or is
      --  incremented by the offset value corresponding to a contiguous data
      --  after a single transfer.
      SINC           : Boolean := False;
      --  unspecified
      Reserved_4_10  : HAL.UInt7 := 16#0#;
      --  padding/alignment mode If DDW_LOG2[1:0] = SDW_LOG2[1:0]: if the data
      --  width of a single destination transfer is equal to the data width of
      --  a single source transfer, this bit is ignored. Else, in the following
      --  enumerated values, the condition PAM_1 is when destination data width
      --  is higher that source data width, and the condition PAM_2 is when
      --  destination data width is higher than source data width.
      PAM            : Boolean := False;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  security attribute of the LPDMA transfer from the source If
      --  LPDMA_SECCFGR.SECx=1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when LPDMA_SECCFGR.SECx=1. A
      --  secure write is ignored when LPDMA_SECCFGR.SECx=0. When
      --  LPDMA_SECCFGR.SECx is de-asserted, this SSEC bit is also de-asserted
      --  by hardware (on a secure reconfiguration of the channel as
      --  nonsecure), and the LPDMA transfer from the source is nonsecure.
      SSEC           : Boolean := False;
      --  binary logarithm of the destination data width of a single in bytes
      --  Setting a 8-byte data width causes a user setting error to be
      --  reported and none transfer is issued. Note: A destination single
      --  transfer must have an aligned address with its data width (start
      --  address LPDMA_CxDAR[2:0] versus DDW_LOG2[1:0]). Otherwise a user
      --  setting error is reported and none transfer is issued.
      DDW_LOG2       : LPDMA_C3TR1_DDW_LOG2_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  destination incrementing single The destination address, pointed by
      --  LPDMA_CxDAR, is kept constant after a single transfer, or is
      --  incremented by the offset value corresponding to a contiguous data
      --  after a single transfer.
      DINC           : Boolean := False;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  security attribute of the LPDMA transfer to the destination If
      --  LPDMA_SECCFGR.SECx=1 and the access is secure: This is a secure
      --  register bit. This bit can only be read by a secure software. This
      --  bit must be written by a secure software when LPDMA_SECCFGR.SECx=1. A
      --  secure write is ignored when LPDMA_SECCFGR.SECx=0. When
      --  LPDMA_SECCFGR.SECx is de-asserted, this DSEC bit is also de-asserted
      --  by hardware (on a secure reconfiguration of the channel as
      --  nonsecure), and the LPDMA transfer to the destination is nonsecure.
      DSEC           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C3TR1_Register use record
      SDW_LOG2       at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SINC           at 0 range 3 .. 3;
      Reserved_4_10  at 0 range 4 .. 10;
      PAM            at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      SSEC           at 0 range 15 .. 15;
      DDW_LOG2       at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DINC           at 0 range 19 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      DSEC           at 0 range 31 .. 31;
   end record;

   subtype LPDMA_C3TR2_REQSEL_Field is HAL.UInt5;
   subtype LPDMA_C3TR2_TRIGM_Field is HAL.UInt2;
   subtype LPDMA_C3TR2_TRIGSEL_Field is HAL.UInt5;
   subtype LPDMA_C3TR2_TRIGPOL_Field is HAL.UInt2;
   subtype LPDMA_C3TR2_TCEM_Field is HAL.UInt2;

   --  LPDMA channel 3 transfer register 2
   type LPDMA_C3TR2_Register is record
      --  DMA hardware request selection These bits are ignored if channel x is
      --  activated (LPDMA_CxCR.EN asserted) with SWREQ=1 (software request for
      --  a memory-to-memory transfer). Else, the selected hardware request is
      --  internally taken into account as per Section27.3.3. The user must not
      --  assign a same input hardware request (same REQSEL[4:0] value) to
      --  different active DMA channels (LPDMA_CxCR.EN=1 and
      --  LPDMA_CxTR2.SWREQ=0 for these channels). DMA is not intended to
      --  hardware support the case of simultaneous enabled channels
      --  incorrectly configured with a same hardware peripheral request
      --  signal, and there is no user setting error reporting.
      REQSEL         : LPDMA_C3TR2_REQSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_8   : HAL.UInt4 := 16#0#;
      --  software request This bit is internally taken into account when
      --  LPDMA_CxCR.EN is asserted.
      SWREQ          : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  block hardware request If the channel x is activated (LPDMA_CxCR.EN
      --  asserted) with SWREQ = 1 (software request for a memory-to-memory
      --  transfer), this bit is ignored. Else:
      BREQ           : Boolean := False;
      --  Hardware request in peripheral flow control mode Important: If a
      --  given channel x is not implemented with this feature, this bit is
      --  reserved and PFREQ is not present (see Section27.3.5 for the list of
      --  the implemented channels with this feature. If the channel x is
      --  activated (LPDMA_CxCR.EN asserted) with SWREQ=1 (software request for
      --  a memory-to-memory transfer), this bit is ignored. Else:
      PFREQ          : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  trigger mode These bits define the transfer granularity for its
      --  conditioning by the trigger. If the channel x is enabled
      --  (LPDMA_CxCR.EN asserted) with TRIGPOL[1:0]=0b00 or 0b11, these
      --  TRIGM[1:0] bits are ignored. Else, a DMA transfer is conditioned by
      --  at least one trigger hit: The LPDMA monitoring of a trigger for
      --  channel x is started when the channel is enabled/loaded with a new
      --  active trigger configuration: rising or falling edge on a selected
      --  trigger (TRIGPOL[1:0]=0b01 or respectively TRIGPOL[1:0]=0b10). The
      --  monitoring of this trigger is kept active during the triggered and
      --  uncompleted (data or link) transfer; and if a new trigger is detected
      --  then, this hit is internally memorized to grant the next transfer, as
      --  long as the defined rising or falling edge is not modified, and the
      --  TRIGSEL[4:0] is not modified, and the channel is enabled.
      --  Transferring a next LLIsubn+1/sub that updates the LPDMA_CxTR2 with a
      --  new value for any of TRIGSEL[4:0] or TRIGPOL[1:0], resets the
      --  monitoring, trashing the memorized hit of the formerly defined
      --  LLIsubn /subtrigger. After a first new trigger hitsubn+1/sub is
      --  memorized, if another second trigger hitsubn+2/sub is detected and if
      --  the hitsubn/sub triggered transfer is still not completed, hitsubn+2
      --  /subis lost and not memorized, and a trigger overrun flag is reported
      --  (LPDMA_CxSR.TOF=1), an interrupt is generated if enabled
      --  (LPDMA_CxCR.TOIE=1). The channel is not automatically disabled by
      --  hardware due to a trigger overrun.
      TRIGM          : LPDMA_C3TR2_TRIGM_Field := 16#0#;
      --  trigger event input selection These bits select the trigger event
      --  input of the LPDMA transfer (as perSection27.3.6), with an active
      --  trigger event if TRIGPOL[1:0]=00.
      TRIGSEL        : LPDMA_C3TR2_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  trigger event polarity These bits define the polarity of the selected
      --  trigger event input defined by TRIGSEL[4:0].
      TRIGPOL        : LPDMA_C3TR2_TRIGPOL_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  transfer complete event mode These bits define the transfer
      --  granularity for the transfer complete and half transfer complete
      --  events generation. Note: If the initial LLIsub0 /subdata transfer is
      --  null/void (directly programmed by the internal register file with
      --  LPDMA_CxBR1.BNDT[15:0]=0), then neither the complete transfer event
      --  nor the half transfer event is generated. Note: If the initial
      --  LLIsub0 /subdata transfer is null/void (i.e. directly programmed by
      --  the internal register file with LPDMA_CxBR1.BNDT[15:0]= 0), then the
      --  half transfer event is not generated, and the transfer complete event
      --  is generated when is completed the loading of the LLIsub1/sub.
      TCEM           : LPDMA_C3TR2_TCEM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C3TR2_Register use record
      REQSEL         at 0 range 0 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      SWREQ          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      BREQ           at 0 range 11 .. 11;
      PFREQ          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRIGM          at 0 range 14 .. 15;
      TRIGSEL        at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      TRIGPOL        at 0 range 24 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      TCEM           at 0 range 30 .. 31;
   end record;

   subtype LPDMA_C3BR1_BNDT_Field is HAL.UInt16;

   --  LPDMA channel 3 block register 1
   type LPDMA_C3BR1_Register is record
      --  block number of data bytes to transfer from the source Block size
      --  transferred from the source. When the channel is enabled, this field
      --  becomes read-only and is decremented, indicating the remaining number
      --  of data items in the current source block to be transferred.
      --  BNDT[15:0] is programmed in number of bytes, maximum source block
      --  size is 64Kbytes -1. Once the last data transfer is completed
      --  (BNDT[15:0]=0): - if LPDMA_CxLLR.UB1=1, this field is updated by the
      --  LLI in the memory. - if LPDMA_CxLLR.UB1=0 and if there is at least
      --  one non null Uxx update bit, this field is internally restored to the
      --  programmed value. - if all LPDMA_CxLLR.Uxx=0 and if
      --  LPDMA_CxLLR.LA[15:0]=0, this field is internally restored to the
      --  programmed value (infinite/continuous last LLI). - if LPDMA_CxLLR=0,
      --  this field is kept as zero following the last LLI data transfer.
      --  Note: A non-null source block size must be a multiple of the source
      --  data width (BNDT[2:0] versus LPDMA_CxTR1.SDW_LOG2[1:0]). Else a user
      --  setting error is reported and none transfer is issued.
      BNDT           : LPDMA_C3BR1_BNDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C3BR1_Register use record
      BNDT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPDMA_C3LLR_LA_Field is HAL.UInt14;

   --  LPDMA channel 3 linked-list address register
   type LPDMA_C3LLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  pointer (16-bit low-significant address) to the next linked-list data
      --  structure If UT1=UT2=UB1=USA=UDA=ULL=0 and if LA[15:2]=0, the current
      --  LLI is the last one. The channel transfer is completed without any
      --  update of the linked-list DMA register file. Else, this field is the
      --  pointer to the memory address offset from which the next linked-list
      --  data structure is automatically fetched from, once the data transfer
      --  is completed, in order to conditionally update the linked-list DMA
      --  internal register file (LPDMA_CxTR1, LPDMA_CxTR2, LPDMA_CxBR1,
      --  LPDMA_CxSAR, LPDMA_CxDAR and LPDMA_CxLLR). Note: The user must
      --  program the pointer to be 32-bit aligned. The two low-significant
      --  bits are write ignored.
      LA             : LPDMA_C3LLR_LA_Field := 16#0#;
      --  Update LPDMA_CxLLR register from memory This bit is used to control
      --  the update of the LPDMA_CxLLR register from the memory during the
      --  link transfer.
      ULL            : Boolean := False;
      --  unspecified
      Reserved_17_26 : HAL.UInt10 := 16#0#;
      --  Update LPDMA_CxDAR register from memory This bit is used to control
      --  the update of the LPDMA_CxDAR register from the memory during the
      --  link transfer.
      UDA            : Boolean := False;
      --  update LPDMA_CxSAR from memory This bit controls the update of the
      --  LPDMA_CxSAR register from the memory during the link transfer.
      USA            : Boolean := False;
      --  Update LPDMA_CxBR1 from memory This bit controls the update of the
      --  LPDMA_CxBR1 register from the memory during the link transfer.
      UB1            : Boolean := False;
      --  Update LPDMA_CxTR2 from memory This bit controls the update of the
      --  LPDMA_CxTR2 register from the memory during the link transfer.
      UT2            : Boolean := False;
      --  Update LPDMA_CxTR1 from memory This bit controls the update of the
      --  LPDMA_CxTR1 register from the memory during the link transfer.
      UT1            : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_C3LLR_Register use record
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

   --  LPDMA hardware configuration 13 register
   type LPDMA_HWCFGR13_Register is record
      --  Read-only. DMA transfer type for channel 8
      G_PER_CTRL8    : Boolean;
      --  unspecified
      Reserved_1_3   : HAL.UInt3;
      --  Read-only. DMA transfer type for channel 9
      G_PER_CTRL9    : Boolean;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. DMA transfer type for channel 10
      G_PER_CTRL10   : Boolean;
      --  unspecified
      Reserved_9_11  : HAL.UInt3;
      --  Read-only. DMA transfer type for channel 11
      G_PER_CTRL11   : Boolean;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. DMA transfer type for channel 12
      G_PER_CTRL12   : Boolean;
      --  unspecified
      Reserved_17_19 : HAL.UInt3;
      --  Read-only. DMA transfer type for channel 13
      G_PER_CTRL13   : Boolean;
      --  unspecified
      Reserved_21_23 : HAL.UInt3;
      --  Read-only. DMA transfer type for channel 14
      G_PER_CTRL14   : Boolean;
      --  unspecified
      Reserved_25_27 : HAL.UInt3;
      --  Read-only. DMA transfer type for channel 15
      G_PER_CTRL15   : Boolean;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_HWCFGR13_Register use record
      G_PER_CTRL8    at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      G_PER_CTRL9    at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      G_PER_CTRL10   at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      G_PER_CTRL11   at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      G_PER_CTRL12   at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      G_PER_CTRL13   at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      G_PER_CTRL14   at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      G_PER_CTRL15   at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  LPDMA hardware configuration 12 register
   type LPDMA_HWCFGR12_Register is record
      --  Read-only. DMA transfer type for channel 0
      G_PER_CTRL0    : Boolean;
      --  unspecified
      Reserved_1_3   : HAL.UInt3;
      --  Read-only. DMA transfer type for channel 1
      G_PER_CTRL1    : Boolean;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. DMA transfer type for channel 2
      G_PER_CTRL2    : Boolean;
      --  unspecified
      Reserved_9_11  : HAL.UInt3;
      --  Read-only. DMA transfer type for channel 3
      G_PER_CTRL3    : Boolean;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. DMA transfer type for channel 4
      G_PER_CTRL4    : Boolean;
      --  unspecified
      Reserved_17_19 : HAL.UInt3;
      --  Read-only. DMA transfer type for channel 5
      G_PER_CTRL5    : Boolean;
      --  unspecified
      Reserved_21_23 : HAL.UInt3;
      --  Read-only. DMA transfer type for channel 6
      G_PER_CTRL6    : Boolean;
      --  unspecified
      Reserved_25_27 : HAL.UInt3;
      --  Read-only. DMA transfer type for channel 7
      G_PER_CTRL7    : Boolean;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_HWCFGR12_Register use record
      G_PER_CTRL0    at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      G_PER_CTRL1    at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      G_PER_CTRL2    at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      G_PER_CTRL3    at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      G_PER_CTRL4    at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      G_PER_CTRL5    at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      G_PER_CTRL6    at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      G_PER_CTRL7    at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype LPDMA_HWCFGR11_G_NONSEC_OPTIONREG_Field is HAL.UInt6;
   subtype LPDMA_HWCFGR11_G_SEC_OPTIONREG_Field is HAL.UInt6;
   subtype LPDMA_HWCFGR11_G_CID_WIDTH_Field is HAL.UInt3;
   subtype LPDMA_HWCFGR11_G_NUM_RESYNC_FFS_Field is HAL.UInt3;

   --  LPDMA hardware configuration 11 register
   type LPDMA_HWCFGR11_Register is record
      --  Read-only. nonsecure optional register width, in the range of 0 to 32
      --  1 to 32: n-bit width nonsecure optional register
      G_NONSEC_OPTIONREG : LPDMA_HWCFGR11_G_NONSEC_OPTIONREG_Field;
      --  unspecified
      Reserved_6_7       : HAL.UInt2;
      --  Read-only. secure optional register width, in the range of 0 to 32 1
      --  to 32: n-bit width secure optional register
      G_SEC_OPTIONREG    : LPDMA_HWCFGR11_G_SEC_OPTIONREG_Field;
      --  unspecified
      Reserved_14_15     : HAL.UInt2;
      --  Read-only. CID bus width, in the range of 1 to 4
      G_CID_WIDTH        : LPDMA_HWCFGR11_G_CID_WIDTH_Field;
      --  unspecified
      Reserved_19_19     : HAL.Bit;
      --  Read-only. number of resynchronization flip-flops, in the range 2 to
      --  6
      G_NUM_RESYNC_FFS   : LPDMA_HWCFGR11_G_NUM_RESYNC_FFS_Field;
      --  unspecified
      Reserved_23_23     : HAL.Bit;
      --  Read-only. master port for the link transfer (DFT purpose only)
      G_TST_LL_IMPORT    : Boolean;
      --  unspecified
      Reserved_25_31     : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_HWCFGR11_Register use record
      G_NONSEC_OPTIONREG at 0 range 0 .. 5;
      Reserved_6_7       at 0 range 6 .. 7;
      G_SEC_OPTIONREG    at 0 range 8 .. 13;
      Reserved_14_15     at 0 range 14 .. 15;
      G_CID_WIDTH        at 0 range 16 .. 18;
      Reserved_19_19     at 0 range 19 .. 19;
      G_NUM_RESYNC_FFS   at 0 range 20 .. 22;
      Reserved_23_23     at 0 range 23 .. 23;
      G_TST_LL_IMPORT    at 0 range 24 .. 24;
      Reserved_25_31     at 0 range 25 .. 31;
   end record;

   subtype LPDMA_HWCFGR10_G_ADDRESSING8_Field is HAL.UInt2;
   subtype LPDMA_HWCFGR10_G_ADDRESSING9_Field is HAL.UInt2;
   subtype LPDMA_HWCFGR10_G_ADDRESSING10_Field is HAL.UInt2;
   subtype LPDMA_HWCFGR10_G_ADDRESSING11_Field is HAL.UInt2;
   subtype LPDMA_HWCFGR10_G_ADDRESSING12_Field is HAL.UInt2;
   subtype LPDMA_HWCFGR10_G_ADDRESSING13_Field is HAL.UInt2;
   subtype LPDMA_HWCFGR10_G_ADDRESSING14_Field is HAL.UInt2;
   subtype LPDMA_HWCFGR10_G_ADDRESSING15_Field is HAL.UInt2;

   --  LPDMA hardware configuration 10 register
   type LPDMA_HWCFGR10_Register is record
      --  Read-only. DMA transfers type for the channel 8
      G_ADDRESSING8  : LPDMA_HWCFGR10_G_ADDRESSING8_Field;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. DMA transfers type for the channel 9
      G_ADDRESSING9  : LPDMA_HWCFGR10_G_ADDRESSING9_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. DMA transfers type for the channel 10
      G_ADDRESSING10 : LPDMA_HWCFGR10_G_ADDRESSING10_Field;
      --  unspecified
      Reserved_10_11 : HAL.UInt2;
      --  Read-only. DMA transfers type for the channel 11
      G_ADDRESSING11 : LPDMA_HWCFGR10_G_ADDRESSING11_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. DMA transfers type for the channel 12
      G_ADDRESSING12 : LPDMA_HWCFGR10_G_ADDRESSING12_Field;
      --  unspecified
      Reserved_18_19 : HAL.UInt2;
      --  Read-only. DMA transfers type for the channel 13
      G_ADDRESSING13 : LPDMA_HWCFGR10_G_ADDRESSING13_Field;
      --  unspecified
      Reserved_22_23 : HAL.UInt2;
      --  Read-only. DMA transfers type for the channel 14
      G_ADDRESSING14 : LPDMA_HWCFGR10_G_ADDRESSING14_Field;
      --  unspecified
      Reserved_26_27 : HAL.UInt2;
      --  Read-only. DMA transfers type for the channel 15
      G_ADDRESSING15 : LPDMA_HWCFGR10_G_ADDRESSING15_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_HWCFGR10_Register use record
      G_ADDRESSING8  at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      G_ADDRESSING9  at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      G_ADDRESSING10 at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      G_ADDRESSING11 at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      G_ADDRESSING12 at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      G_ADDRESSING13 at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      G_ADDRESSING14 at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      G_ADDRESSING15 at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype LPDMA_HWCFGR9_G_ADDRESSING0_Field is HAL.UInt2;
   subtype LPDMA_HWCFGR9_G_ADDRESSING1_Field is HAL.UInt2;
   subtype LPDMA_HWCFGR9_G_ADDRESSING2_Field is HAL.UInt2;
   subtype LPDMA_HWCFGR9_G_ADDRESSING3_Field is HAL.UInt2;
   subtype LPDMA_HWCFGR9_G_ADDRESSING4_Field is HAL.UInt2;
   subtype LPDMA_HWCFGR9_G_ADDRESSING5_Field is HAL.UInt2;
   subtype LPDMA_HWCFGR9_G_ADDRESSING6_Field is HAL.UInt2;
   subtype LPDMA_HWCFGR9_G_ADDRESSING7_Field is HAL.UInt2;

   --  LPDMA hardware configuration 9 register
   type LPDMA_HWCFGR9_Register is record
      --  Read-only. DMA transfers type for the channel 0
      G_ADDRESSING0  : LPDMA_HWCFGR9_G_ADDRESSING0_Field;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. DMA transfers type for the channel 1
      G_ADDRESSING1  : LPDMA_HWCFGR9_G_ADDRESSING1_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. DMA transfers type for the channel 2
      G_ADDRESSING2  : LPDMA_HWCFGR9_G_ADDRESSING2_Field;
      --  unspecified
      Reserved_10_11 : HAL.UInt2;
      --  Read-only. DMA transfers type for the channel 3
      G_ADDRESSING3  : LPDMA_HWCFGR9_G_ADDRESSING3_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. DMA transfers type for the channel 4
      G_ADDRESSING4  : LPDMA_HWCFGR9_G_ADDRESSING4_Field;
      --  unspecified
      Reserved_18_19 : HAL.UInt2;
      --  Read-only. DMA transfers type for the channel 5
      G_ADDRESSING5  : LPDMA_HWCFGR9_G_ADDRESSING5_Field;
      --  unspecified
      Reserved_22_23 : HAL.UInt2;
      --  Read-only. DMA transfers type for the channel 6
      G_ADDRESSING6  : LPDMA_HWCFGR9_G_ADDRESSING6_Field;
      --  unspecified
      Reserved_26_27 : HAL.UInt2;
      --  Read-only. DMA transfers type for the channel 7
      G_ADDRESSING7  : LPDMA_HWCFGR9_G_ADDRESSING7_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_HWCFGR9_Register use record
      G_ADDRESSING0  at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      G_ADDRESSING1  at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      G_ADDRESSING2  at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      G_ADDRESSING3  at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      G_ADDRESSING4  at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      G_ADDRESSING5  at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      G_ADDRESSING6  at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      G_ADDRESSING7  at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  LPDMA hardware configuration 8 register
   type LPDMA_HWCFGR8_Register is record
      --  Read-only. DMA transfers type for the channel 8
      G_LINKED_LIST8  : Boolean;
      --  unspecified
      Reserved_1_3    : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 9
      G_LINKED_LIST9  : Boolean;
      --  unspecified
      Reserved_5_7    : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 10
      G_LINKED_LIST10 : Boolean;
      --  unspecified
      Reserved_9_11   : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 11
      G_LINKED_LIST11 : Boolean;
      --  unspecified
      Reserved_13_15  : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 12
      G_LINKED_LIST12 : Boolean;
      --  unspecified
      Reserved_17_19  : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 13
      G_LINKED_LIST13 : Boolean;
      --  unspecified
      Reserved_21_23  : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 14
      G_LINKED_LIST14 : Boolean;
      --  unspecified
      Reserved_25_27  : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 15
      G_LINKED_LIST15 : Boolean;
      --  unspecified
      Reserved_29_31  : HAL.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_HWCFGR8_Register use record
      G_LINKED_LIST8  at 0 range 0 .. 0;
      Reserved_1_3    at 0 range 1 .. 3;
      G_LINKED_LIST9  at 0 range 4 .. 4;
      Reserved_5_7    at 0 range 5 .. 7;
      G_LINKED_LIST10 at 0 range 8 .. 8;
      Reserved_9_11   at 0 range 9 .. 11;
      G_LINKED_LIST11 at 0 range 12 .. 12;
      Reserved_13_15  at 0 range 13 .. 15;
      G_LINKED_LIST12 at 0 range 16 .. 16;
      Reserved_17_19  at 0 range 17 .. 19;
      G_LINKED_LIST13 at 0 range 20 .. 20;
      Reserved_21_23  at 0 range 21 .. 23;
      G_LINKED_LIST14 at 0 range 24 .. 24;
      Reserved_25_27  at 0 range 25 .. 27;
      G_LINKED_LIST15 at 0 range 28 .. 28;
      Reserved_29_31  at 0 range 29 .. 31;
   end record;

   --  LPDMA hardware configuration 7 register
   type LPDMA_HWCFGR7_Register is record
      --  Read-only. DMA transfers type for the channel 0
      G_LINKED_LIST0 : Boolean;
      --  unspecified
      Reserved_1_3   : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 1
      G_LINKED_LIST1 : Boolean;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 2
      G_LINKED_LIST2 : Boolean;
      --  unspecified
      Reserved_9_11  : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 3
      G_LINKED_LIST3 : Boolean;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 4
      G_LINKED_LIST4 : Boolean;
      --  unspecified
      Reserved_17_19 : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 5
      G_LINKED_LIST5 : Boolean;
      --  unspecified
      Reserved_21_23 : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 6
      G_LINKED_LIST6 : Boolean;
      --  unspecified
      Reserved_25_27 : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 7
      G_LINKED_LIST7 : Boolean;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_HWCFGR7_Register use record
      G_LINKED_LIST0 at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      G_LINKED_LIST1 at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      G_LINKED_LIST2 at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      G_LINKED_LIST3 at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      G_LINKED_LIST4 at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      G_LINKED_LIST5 at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      G_LINKED_LIST6 at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      G_LINKED_LIST7 at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  LPDMA hardware configuration 6 register
   type LPDMA_HWCFGR6_Register is record
      --  Read-only. DMA transfers type for the channel 8
      G_TRANSFERS8   : Boolean;
      --  unspecified
      Reserved_1_3   : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 9
      G_TRANSFERS9   : Boolean;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 10
      G_TRANSFERS10  : Boolean;
      --  unspecified
      Reserved_9_11  : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 11
      G_TRANSFERS11  : Boolean;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 12
      G_TRANSFERS12  : Boolean;
      --  unspecified
      Reserved_17_19 : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 13
      G_TRANSFERS13  : Boolean;
      --  unspecified
      Reserved_21_23 : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 14
      G_TRANSFERS14  : Boolean;
      --  unspecified
      Reserved_25_27 : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 15
      G_TRANSFERS15  : Boolean;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_HWCFGR6_Register use record
      G_TRANSFERS8   at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      G_TRANSFERS9   at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      G_TRANSFERS10  at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      G_TRANSFERS11  at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      G_TRANSFERS12  at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      G_TRANSFERS13  at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      G_TRANSFERS14  at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      G_TRANSFERS15  at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  LPDMA hardware configuration 5 register
   type LPDMA_HWCFGR5_Register is record
      --  Read-only. DMA transfers type for the channel 0
      G_TRANSFERS0   : Boolean;
      --  unspecified
      Reserved_1_3   : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 1
      G_TRANSFERS1   : Boolean;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 2
      G_TRANSFERS2   : Boolean;
      --  unspecified
      Reserved_9_11  : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 3
      G_TRANSFERS3   : Boolean;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 4
      G_TRANSFERS4   : Boolean;
      --  unspecified
      Reserved_17_19 : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 6
      G_TRANSFERS5   : Boolean;
      --  unspecified
      Reserved_21_23 : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 6
      G_TRANSFERS6   : Boolean;
      --  unspecified
      Reserved_25_27 : HAL.UInt3;
      --  Read-only. DMA transfers type for the channel 7
      G_TRANSFERS7   : Boolean;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_HWCFGR5_Register use record
      G_TRANSFERS0   at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      G_TRANSFERS1   at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      G_TRANSFERS2   at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      G_TRANSFERS3   at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      G_TRANSFERS4   at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      G_TRANSFERS5   at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      G_TRANSFERS6   at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      G_TRANSFERS7   at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype LPDMA_HWCFGR4_G_FIFO_SIZE8_Field is HAL.UInt3;
   subtype LPDMA_HWCFGR4_G_FIFO_SIZE9_Field is HAL.UInt3;
   subtype LPDMA_HWCFGR4_G_FIFO_SIZE10_Field is HAL.UInt3;
   subtype LPDMA_HWCFGR4_G_FIFO_SIZE11_Field is HAL.UInt3;
   subtype LPDMA_HWCFGR4_G_FIFO_SIZE12_Field is HAL.UInt3;
   subtype LPDMA_HWCFGR4_G_FIFO_SIZE13_Field is HAL.UInt3;
   subtype LPDMA_HWCFGR4_G_FIFO_SIZE14_Field is HAL.UInt3;
   subtype LPDMA_HWCFGR4_G_FIFO_SIZE15_Field is HAL.UInt3;

   --  LPDMA hardware configuration 4 register
   type LPDMA_HWCFGR4_Register is record
      --  Read-only. FIFO size for the channel 8 (0 to 7) 1 to 7: FIFO of
      --  2supN+1/sup bytes.
      G_FIFO_SIZE8   : LPDMA_HWCFGR4_G_FIFO_SIZE8_Field;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. FIFO size for the channel 9 (0 to 7) 1 to 7: FIFO of
      --  2supN+1/sup bytes.
      G_FIFO_SIZE9   : LPDMA_HWCFGR4_G_FIFO_SIZE9_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. FIFO size for the channel 10 (0 to 7) 1 to 7: FIFO of
      --  2supN+1/sup bytes.
      G_FIFO_SIZE10  : LPDMA_HWCFGR4_G_FIFO_SIZE10_Field;
      --  unspecified
      Reserved_11_11 : HAL.Bit;
      --  Read-only. FIFO size for the channel 11 (0 to 7) 1 to 7: FIFO of
      --  2supN+1/sup bytes.
      G_FIFO_SIZE11  : LPDMA_HWCFGR4_G_FIFO_SIZE11_Field;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. FIFO size for the channel 12 (0 to 7): 1 to 7: FIFO of
      --  2supN+1/sup bytes.
      G_FIFO_SIZE12  : LPDMA_HWCFGR4_G_FIFO_SIZE12_Field;
      --  unspecified
      Reserved_19_19 : HAL.Bit;
      --  Read-only. FIFO size for the channel 13 (0 to 7) 1 to 7: FIFO of
      --  2supN+1/sup bytes.
      G_FIFO_SIZE13  : LPDMA_HWCFGR4_G_FIFO_SIZE13_Field;
      --  unspecified
      Reserved_23_23 : HAL.Bit;
      --  Read-only. FIFO size for the channel 14 (0 to 7) 1 to 7: FIFO of
      --  2supN+1/sup bytes.
      G_FIFO_SIZE14  : LPDMA_HWCFGR4_G_FIFO_SIZE14_Field;
      --  unspecified
      Reserved_27_27 : HAL.Bit;
      --  Read-only. FIFO size for the channel 15 (0 to 7) 1 to 7: FIFO of
      --  2supN+1/sup bytes.
      G_FIFO_SIZE15  : LPDMA_HWCFGR4_G_FIFO_SIZE15_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_HWCFGR4_Register use record
      G_FIFO_SIZE8   at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      G_FIFO_SIZE9   at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      G_FIFO_SIZE10  at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      G_FIFO_SIZE11  at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      G_FIFO_SIZE12  at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      G_FIFO_SIZE13  at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      G_FIFO_SIZE14  at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      G_FIFO_SIZE15  at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype LPDMA_HWCFGR3_G_FIFO_SIZE0_Field is HAL.UInt3;
   subtype LPDMA_HWCFGR3_G_FIFO_SIZE1_Field is HAL.UInt3;
   subtype LPDMA_HWCFGR3_G_FIFO_SIZE2_Field is HAL.UInt3;
   subtype LPDMA_HWCFGR3_G_FIFO_SIZE3_Field is HAL.UInt3;
   subtype LPDMA_HWCFGR3_G_FIFO_SIZE4_Field is HAL.UInt3;
   subtype LPDMA_HWCFGR3_G_FIFO_SIZE5_Field is HAL.UInt3;
   subtype LPDMA_HWCFGR3_G_FIFO_SIZE6_Field is HAL.UInt3;
   subtype LPDMA_HWCFGR3_G_FIFO_SIZE7_Field is HAL.UInt3;

   --  LPDMA hardware configuration 3 register
   type LPDMA_HWCFGR3_Register is record
      --  Read-only. FIFO size for the channel 0 (0 to 7) 1 to 7: FIFO of
      --  2supN+1/sup bytes.
      G_FIFO_SIZE0   : LPDMA_HWCFGR3_G_FIFO_SIZE0_Field;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. FIFO size for the channel 1 (0 to 7) 1 to 7: FIFO of
      --  2supN+1/sup bytes.
      G_FIFO_SIZE1   : LPDMA_HWCFGR3_G_FIFO_SIZE1_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. FIFO size for the channel 2 (0 to 7): 1 to 7: FIFO of
      --  2supN+1/sup bytes.
      G_FIFO_SIZE2   : LPDMA_HWCFGR3_G_FIFO_SIZE2_Field;
      --  unspecified
      Reserved_11_11 : HAL.Bit;
      --  Read-only. FIFO size for the channel 3 (0 to 7) 1 to 7: FIFO of
      --  2supN+1/sup bytes.
      G_FIFO_SIZE3   : LPDMA_HWCFGR3_G_FIFO_SIZE3_Field;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. FIFO size for the channel 4 (0 to 7) 1 to 7: FIFO of
      --  2supN+1/sup bytes.
      G_FIFO_SIZE4   : LPDMA_HWCFGR3_G_FIFO_SIZE4_Field;
      --  unspecified
      Reserved_19_19 : HAL.Bit;
      --  Read-only. FIFO size for the channel 5 (0 to 7) 1 to 7: FIFO of
      --  2supN+1/sup bytes.
      G_FIFO_SIZE5   : LPDMA_HWCFGR3_G_FIFO_SIZE5_Field;
      --  unspecified
      Reserved_23_23 : HAL.Bit;
      --  Read-only. FIFO size for the channel 6 (0 to 7) 1 to 7: FIFO of
      --  2supN+1/sup bytes.
      G_FIFO_SIZE6   : LPDMA_HWCFGR3_G_FIFO_SIZE6_Field;
      --  unspecified
      Reserved_27_27 : HAL.Bit;
      --  Read-only. FIFO size for the channel 7 (0 to 7) 1 to 7: FIFO of
      --  2supN+1/sup bytes
      G_FIFO_SIZE7   : LPDMA_HWCFGR3_G_FIFO_SIZE7_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_HWCFGR3_Register use record
      G_FIFO_SIZE0   at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      G_FIFO_SIZE1   at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      G_FIFO_SIZE2   at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      G_FIFO_SIZE3   at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      G_FIFO_SIZE4   at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      G_FIFO_SIZE5   at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      G_FIFO_SIZE6   at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      G_FIFO_SIZE7   at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype LPDMA_HWCFGR2_G_MAX_REQ_ID_Field is HAL.UInt8;
   subtype LPDMA_HWCFGR2_G_MAX_TRIG_ID_Field is HAL.UInt7;

   --  LPDMA hardware configuration 2 register
   type LPDMA_HWCFGR2_Register is record
      --  Read-only. maximum peripheral request ID (0 to 255)
      G_MAX_REQ_ID   : LPDMA_HWCFGR2_G_MAX_REQ_ID_Field;
      --  Read-only. maximum trigger event ID (0 to 127)
      G_MAX_TRIG_ID  : LPDMA_HWCFGR2_G_MAX_TRIG_ID_Field;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_HWCFGR2_Register use record
      G_MAX_REQ_ID   at 0 range 0 .. 7;
      G_MAX_TRIG_ID  at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype LPDMA_HWCFGR1_G_MASTER_PORTS_Field is HAL.UInt3;
   subtype LPDMA_HWCFGR1_G_NUM_CHANNELS_Field is HAL.UInt5;
   subtype LPDMA_HWCFGR1_G_MAX_CID_Field is HAL.UInt4;
   subtype LPDMA_HWCFGR1_G_M0_DATA_WIDTH_ENC_Field is HAL.UInt2;
   subtype LPDMA_HWCFGR1_G_M1_DATA_WIDTH_ENC_Field is HAL.UInt2;

   --  LPDMA hardware configuration 1 register
   type LPDMA_HWCFGR1_Register is record
      --  Read-only. master ports type
      G_MASTER_PORTS      : LPDMA_HWCFGR1_G_MASTER_PORTS_Field;
      --  unspecified
      Reserved_3_3        : HAL.Bit;
      --  Read-only. None
      G_PRIVILEGE         : Boolean;
      --  unspecified
      Reserved_5_7        : HAL.UInt3;
      --  Read-only. Number of DMA channels
      G_NUM_CHANNELS      : LPDMA_HWCFGR1_G_NUM_CHANNELS_Field;
      --  unspecified
      Reserved_13_15      : HAL.UInt3;
      --  Read-only. TrustZone
      G_TRUSTZONE         : Boolean;
      --  unspecified
      Reserved_17_19      : HAL.UInt3;
      --  Read-only. maximum compartment ID (CID) 1 to 15: DMA CID-aware. Any
      --  channel is a separate CID-aware resource. Support of n+1 CIDs (from
      --  CID0 up to CIDn).
      G_MAX_CID           : LPDMA_HWCFGR1_G_MAX_CID_Field;
      --  Read-only. master port 0 data bus width
      G_M0_DATA_WIDTH_ENC : LPDMA_HWCFGR1_G_M0_DATA_WIDTH_ENC_Field;
      --  unspecified
      Reserved_26_27      : HAL.UInt2;
      --  Read-only. master port 1 data bus width
      G_M1_DATA_WIDTH_ENC : LPDMA_HWCFGR1_G_M1_DATA_WIDTH_ENC_Field;
      --  unspecified
      Reserved_30_31      : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_HWCFGR1_Register use record
      G_MASTER_PORTS      at 0 range 0 .. 2;
      Reserved_3_3        at 0 range 3 .. 3;
      G_PRIVILEGE         at 0 range 4 .. 4;
      Reserved_5_7        at 0 range 5 .. 7;
      G_NUM_CHANNELS      at 0 range 8 .. 12;
      Reserved_13_15      at 0 range 13 .. 15;
      G_TRUSTZONE         at 0 range 16 .. 16;
      Reserved_17_19      at 0 range 17 .. 19;
      G_MAX_CID           at 0 range 20 .. 23;
      G_M0_DATA_WIDTH_ENC at 0 range 24 .. 25;
      Reserved_26_27      at 0 range 26 .. 27;
      G_M1_DATA_WIDTH_ENC at 0 range 28 .. 29;
      Reserved_30_31      at 0 range 30 .. 31;
   end record;

   subtype LPDMA_VERR_MINREV_Field is HAL.UInt4;
   subtype LPDMA_VERR_MAJREV_Field is HAL.UInt4;

   --  LPDMA version register
   type LPDMA_VERR_Register is record
      --  Read-only. LPDMA minor revision
      MINREV        : LPDMA_VERR_MINREV_Field;
      --  Read-only. LPDMA major revision
      MAJREV        : LPDMA_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPDMA_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPDMA register block
   type LPDMA_Peripheral is record
      --  LPDMA secure configuration register
      LPDMA_SECCFGR   : aliased LPDMA_SECCFGR_Register;
      --  LPDMA privileged configuration register
      LPDMA_PRIVCFGR  : aliased LPDMA_PRIVCFGR_Register;
      --  LPDMA configuration lock register
      LPDMA_RCFGLOCKR : aliased LPDMA_RCFGLOCKR_Register;
      --  LPDMA nonsecure masked interrupt status register
      LPDMA_MISR      : aliased LPDMA_MISR_Register;
      --  LPDMA secure masked interrupt status register
      LPDMA_SMISR     : aliased LPDMA_SMISR_Register;
      --  LPDMA channel 0 linked-list base address register
      LPDMA_C0LBAR    : aliased LPDMA_C0LBAR_Register;
      --  LPDMA channel 0 CID register
      LPDMA_C0CIDCFGR : aliased LPDMA_C0CIDCFGR_Register;
      --  LPDMA channel 0 semaphore control register
      LPDMA_C0SEMCR   : aliased LPDMA_C0SEMCR_Register;
      --  LPDMA channel 0 flag clear register
      LPDMA_C0FCR     : aliased LPDMA_C0FCR_Register;
      --  LPDMA channel 0 status register
      LPDMA_C0SR      : aliased LPDMA_C0SR_Register;
      --  LPDMA channel 0 control register
      LPDMA_C0CR      : aliased LPDMA_C0CR_Register;
      --  LPDMA channel 0 transfer register 1
      LPDMA_C0TR1     : aliased LPDMA_C0TR1_Register;
      --  LPDMA channel 0 transfer register 2
      LPDMA_C0TR2     : aliased LPDMA_C0TR2_Register;
      --  LPDMA channel 0 block register 1
      LPDMA_C0BR1     : aliased LPDMA_C0BR1_Register;
      --  LPDMA channel 0 source address register
      LPDMA_C0SAR     : aliased HAL.UInt32;
      --  LPDMA channel 0 destination address register
      LPDMA_C0DAR     : aliased HAL.UInt32;
      --  LPDMA channel 0 linked-list address register
      LPDMA_C0LLR     : aliased LPDMA_C0LLR_Register;
      --  LPDMA channel 1 linked-list base address register
      LPDMA_C1LBAR    : aliased LPDMA_C1LBAR_Register;
      --  LPDMA channel 1 CID register
      LPDMA_C1CIDCFGR : aliased LPDMA_C1CIDCFGR_Register;
      --  LPDMA channel 1 semaphore control register
      LPDMA_C1SEMCR   : aliased LPDMA_C1SEMCR_Register;
      --  LPDMA channel 1 flag clear register
      LPDMA_C1FCR     : aliased LPDMA_C1FCR_Register;
      --  LPDMA channel 1 status register
      LPDMA_C1SR      : aliased LPDMA_C1SR_Register;
      --  LPDMA channel 1 control register
      LPDMA_C1CR      : aliased LPDMA_C1CR_Register;
      --  LPDMA channel 1 transfer register 1
      LPDMA_C1TR1     : aliased LPDMA_C1TR1_Register;
      --  LPDMA channel 1 transfer register 2
      LPDMA_C1TR2     : aliased LPDMA_C1TR2_Register;
      --  LPDMA channel 1 block register 1
      LPDMA_C1BR1     : aliased LPDMA_C1BR1_Register;
      --  LPDMA channel 1 source address register
      LPDMA_C1SAR     : aliased HAL.UInt32;
      --  LPDMA channel 1 destination address register
      LPDMA_C1DAR     : aliased HAL.UInt32;
      --  LPDMA channel 1 linked-list address register
      LPDMA_C1LLR     : aliased LPDMA_C1LLR_Register;
      --  LPDMA channel 2 linked-list base address register
      LPDMA_C2LBAR    : aliased LPDMA_C2LBAR_Register;
      --  LPDMA channel 2 CID register
      LPDMA_C2CIDCFGR : aliased LPDMA_C2CIDCFGR_Register;
      --  LPDMA channel 2 semaphore control register
      LPDMA_C2SEMCR   : aliased LPDMA_C2SEMCR_Register;
      --  LPDMA channel 2 flag clear register
      LPDMA_C2FCR     : aliased LPDMA_C2FCR_Register;
      --  LPDMA channel 2 status register
      LPDMA_C2SR      : aliased LPDMA_C2SR_Register;
      --  LPDMA channel 2 control register
      LPDMA_C2CR      : aliased LPDMA_C2CR_Register;
      --  LPDMA channel 2 transfer register 1
      LPDMA_C2TR1     : aliased LPDMA_C2TR1_Register;
      --  LPDMA channel 2 transfer register 2
      LPDMA_C2TR2     : aliased LPDMA_C2TR2_Register;
      --  LPDMA channel 2 block register 1
      LPDMA_C2BR1     : aliased LPDMA_C2BR1_Register;
      --  LPDMA channel 2 source address register
      LPDMA_C2SAR     : aliased HAL.UInt32;
      --  LPDMA channel 2 destination address register
      LPDMA_C2DAR     : aliased HAL.UInt32;
      --  LPDMA channel 2 linked-list address register
      LPDMA_C2LLR     : aliased LPDMA_C2LLR_Register;
      --  LPDMA channel 3 linked-list base address register
      LPDMA_C3LBAR    : aliased LPDMA_C3LBAR_Register;
      --  LPDMA channel 3 CID register
      LPDMA_C3CIDCFGR : aliased LPDMA_C3CIDCFGR_Register;
      --  LPDMA channel 3 semaphore control register
      LPDMA_C3SEMCR   : aliased LPDMA_C3SEMCR_Register;
      --  LPDMA channel 3 flag clear register
      LPDMA_C3FCR     : aliased LPDMA_C3FCR_Register;
      --  LPDMA channel 3 status register
      LPDMA_C3SR      : aliased LPDMA_C3SR_Register;
      --  LPDMA channel 3 control register
      LPDMA_C3CR      : aliased LPDMA_C3CR_Register;
      --  LPDMA channel 3 transfer register 1
      LPDMA_C3TR1     : aliased LPDMA_C3TR1_Register;
      --  LPDMA channel 3 transfer register 2
      LPDMA_C3TR2     : aliased LPDMA_C3TR2_Register;
      --  LPDMA channel 3 block register 1
      LPDMA_C3BR1     : aliased LPDMA_C3BR1_Register;
      --  LPDMA channel 3 source address register
      LPDMA_C3SAR     : aliased HAL.UInt32;
      --  LPDMA channel 3 destination address register
      LPDMA_C3DAR     : aliased HAL.UInt32;
      --  LPDMA channel 3 linked-list address register
      LPDMA_C3LLR     : aliased LPDMA_C3LLR_Register;
      --  LPDMA hardware configuration 13 register
      LPDMA_HWCFGR13  : aliased LPDMA_HWCFGR13_Register;
      --  LPDMA hardware configuration 12 register
      LPDMA_HWCFGR12  : aliased LPDMA_HWCFGR12_Register;
      --  LPDMA hardware configuration 11 register
      LPDMA_HWCFGR11  : aliased LPDMA_HWCFGR11_Register;
      --  LPDMA hardware configuration 10 register
      LPDMA_HWCFGR10  : aliased LPDMA_HWCFGR10_Register;
      --  LPDMA hardware configuration 9 register
      LPDMA_HWCFGR9   : aliased LPDMA_HWCFGR9_Register;
      --  LPDMA hardware configuration 8 register
      LPDMA_HWCFGR8   : aliased LPDMA_HWCFGR8_Register;
      --  LPDMA hardware configuration 7 register
      LPDMA_HWCFGR7   : aliased LPDMA_HWCFGR7_Register;
      --  LPDMA hardware configuration 6 register
      LPDMA_HWCFGR6   : aliased LPDMA_HWCFGR6_Register;
      --  LPDMA hardware configuration 5 register
      LPDMA_HWCFGR5   : aliased LPDMA_HWCFGR5_Register;
      --  LPDMA hardware configuration 4 register
      LPDMA_HWCFGR4   : aliased LPDMA_HWCFGR4_Register;
      --  LPDMA hardware configuration 3 register
      LPDMA_HWCFGR3   : aliased LPDMA_HWCFGR3_Register;
      --  LPDMA hardware configuration 2 register
      LPDMA_HWCFGR2   : aliased LPDMA_HWCFGR2_Register;
      --  LPDMA hardware configuration 1 register
      LPDMA_HWCFGR1   : aliased LPDMA_HWCFGR1_Register;
      --  LPDMA version register
      LPDMA_VERR      : aliased LPDMA_VERR_Register;
      --  LPDMA identification register
      LPDMA_IPIDR     : aliased HAL.UInt32;
      --  LPDMA size identification register
      LPDMA_SIDR      : aliased HAL.UInt32;
   end record
     with Volatile;

   for LPDMA_Peripheral use record
      LPDMA_SECCFGR   at 16#0# range 0 .. 31;
      LPDMA_PRIVCFGR  at 16#4# range 0 .. 31;
      LPDMA_RCFGLOCKR at 16#8# range 0 .. 31;
      LPDMA_MISR      at 16#C# range 0 .. 31;
      LPDMA_SMISR     at 16#10# range 0 .. 31;
      LPDMA_C0LBAR    at 16#50# range 0 .. 31;
      LPDMA_C0CIDCFGR at 16#54# range 0 .. 31;
      LPDMA_C0SEMCR   at 16#58# range 0 .. 31;
      LPDMA_C0FCR     at 16#5C# range 0 .. 31;
      LPDMA_C0SR      at 16#60# range 0 .. 31;
      LPDMA_C0CR      at 16#64# range 0 .. 31;
      LPDMA_C0TR1     at 16#90# range 0 .. 31;
      LPDMA_C0TR2     at 16#94# range 0 .. 31;
      LPDMA_C0BR1     at 16#98# range 0 .. 31;
      LPDMA_C0SAR     at 16#9C# range 0 .. 31;
      LPDMA_C0DAR     at 16#A0# range 0 .. 31;
      LPDMA_C0LLR     at 16#CC# range 0 .. 31;
      LPDMA_C1LBAR    at 16#D0# range 0 .. 31;
      LPDMA_C1CIDCFGR at 16#D4# range 0 .. 31;
      LPDMA_C1SEMCR   at 16#D8# range 0 .. 31;
      LPDMA_C1FCR     at 16#DC# range 0 .. 31;
      LPDMA_C1SR      at 16#E0# range 0 .. 31;
      LPDMA_C1CR      at 16#E4# range 0 .. 31;
      LPDMA_C1TR1     at 16#110# range 0 .. 31;
      LPDMA_C1TR2     at 16#114# range 0 .. 31;
      LPDMA_C1BR1     at 16#118# range 0 .. 31;
      LPDMA_C1SAR     at 16#11C# range 0 .. 31;
      LPDMA_C1DAR     at 16#120# range 0 .. 31;
      LPDMA_C1LLR     at 16#14C# range 0 .. 31;
      LPDMA_C2LBAR    at 16#150# range 0 .. 31;
      LPDMA_C2CIDCFGR at 16#154# range 0 .. 31;
      LPDMA_C2SEMCR   at 16#158# range 0 .. 31;
      LPDMA_C2FCR     at 16#15C# range 0 .. 31;
      LPDMA_C2SR      at 16#160# range 0 .. 31;
      LPDMA_C2CR      at 16#164# range 0 .. 31;
      LPDMA_C2TR1     at 16#190# range 0 .. 31;
      LPDMA_C2TR2     at 16#194# range 0 .. 31;
      LPDMA_C2BR1     at 16#198# range 0 .. 31;
      LPDMA_C2SAR     at 16#19C# range 0 .. 31;
      LPDMA_C2DAR     at 16#1A0# range 0 .. 31;
      LPDMA_C2LLR     at 16#1CC# range 0 .. 31;
      LPDMA_C3LBAR    at 16#1D0# range 0 .. 31;
      LPDMA_C3CIDCFGR at 16#1D4# range 0 .. 31;
      LPDMA_C3SEMCR   at 16#1D8# range 0 .. 31;
      LPDMA_C3FCR     at 16#1DC# range 0 .. 31;
      LPDMA_C3SR      at 16#1E0# range 0 .. 31;
      LPDMA_C3CR      at 16#1E4# range 0 .. 31;
      LPDMA_C3TR1     at 16#210# range 0 .. 31;
      LPDMA_C3TR2     at 16#214# range 0 .. 31;
      LPDMA_C3BR1     at 16#218# range 0 .. 31;
      LPDMA_C3SAR     at 16#21C# range 0 .. 31;
      LPDMA_C3DAR     at 16#220# range 0 .. 31;
      LPDMA_C3LLR     at 16#24C# range 0 .. 31;
      LPDMA_HWCFGR13  at 16#FC0# range 0 .. 31;
      LPDMA_HWCFGR12  at 16#FC4# range 0 .. 31;
      LPDMA_HWCFGR11  at 16#FC8# range 0 .. 31;
      LPDMA_HWCFGR10  at 16#FCC# range 0 .. 31;
      LPDMA_HWCFGR9   at 16#FD0# range 0 .. 31;
      LPDMA_HWCFGR8   at 16#FD4# range 0 .. 31;
      LPDMA_HWCFGR7   at 16#FD8# range 0 .. 31;
      LPDMA_HWCFGR6   at 16#FDC# range 0 .. 31;
      LPDMA_HWCFGR5   at 16#FE0# range 0 .. 31;
      LPDMA_HWCFGR4   at 16#FE4# range 0 .. 31;
      LPDMA_HWCFGR3   at 16#FE8# range 0 .. 31;
      LPDMA_HWCFGR2   at 16#FEC# range 0 .. 31;
      LPDMA_HWCFGR1   at 16#FF0# range 0 .. 31;
      LPDMA_VERR      at 16#FF4# range 0 .. 31;
      LPDMA_IPIDR     at 16#FF8# range 0 .. 31;
      LPDMA_SIDR      at 16#FFC# range 0 .. 31;
   end record;

   --  LPDMA register block
   LPDMA_Periph : aliased LPDMA_Peripheral
     with Import, Address => LPDMA_Base;

   --  LPDMA register block
   LPDMA_S_Periph : aliased LPDMA_Peripheral
     with Import, Address => LPDMA_S_Base;

end STM32_SVD.LPDMA;
