--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.SAI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SAI_GCR_SYNCIN_Field is HAL.UInt2;
   subtype SAI_GCR_SYNCOUT_Field is HAL.UInt2;

   --  SAI global configuration register
   type SAI_GCR_Register is record
      --  Synchronization outputs
      SYNCIN        : SAI_GCR_SYNCIN_Field := 16#0#;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Synchronization outputs
      SYNCOUT       : SAI_GCR_SYNCOUT_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_GCR_Register use record
      SYNCIN        at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      SYNCOUT       at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype SAI_ACR1_MODE_Field is HAL.UInt2;
   subtype SAI_ACR1_PRTCFG_Field is HAL.UInt2;
   subtype SAI_ACR1_DS_Field is HAL.UInt3;
   subtype SAI_ACR1_SYNCEN_Field is HAL.UInt2;
   subtype SAI_ACR1_MCKDIV_Field is HAL.UInt6;

   --  SAI configuration register 1
   type SAI_ACR1_Register is record
      --  SAIx audio block mode
      MODE           : SAI_ACR1_MODE_Field := 16#0#;
      --  Protocol configuration
      PRTCFG         : SAI_ACR1_PRTCFG_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Data size
      DS             : SAI_ACR1_DS_Field := 16#2#;
      --  Least significant bit first
      LSBFIRST       : Boolean := False;
      --  Clock strobing edge
      CKSTR          : Boolean := False;
      --  Synchronization enable
      SYNCEN         : SAI_ACR1_SYNCEN_Field := 16#0#;
      --  Mono mode
      MONO           : Boolean := False;
      --  Output drive
      OUTDRIV        : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Audio block enable
      SAIEN          : Boolean := False;
      --  DMA enable
      DMAEN          : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  No divider
      NODIV          : Boolean := False;
      --  Master clock divider
      MCKDIV         : SAI_ACR1_MCKDIV_Field := 16#0#;
      --  Oversampling ratio for master clock
      OSR            : Boolean := False;
      --  Master clock generation enable
      MCKEN          : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_ACR1_Register use record
      MODE           at 0 range 0 .. 1;
      PRTCFG         at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      DS             at 0 range 5 .. 7;
      LSBFIRST       at 0 range 8 .. 8;
      CKSTR          at 0 range 9 .. 9;
      SYNCEN         at 0 range 10 .. 11;
      MONO           at 0 range 12 .. 12;
      OUTDRIV        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SAIEN          at 0 range 16 .. 16;
      DMAEN          at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      NODIV          at 0 range 19 .. 19;
      MCKDIV         at 0 range 20 .. 25;
      OSR            at 0 range 26 .. 26;
      MCKEN          at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype SAI_ACR2_FTH_Field is HAL.UInt3;
   subtype SAI_ACR2_MUTECNT_Field is HAL.UInt6;
   subtype SAI_ACR2_COMP_Field is HAL.UInt2;

   --  SAI configuration register 2
   type SAI_ACR2_Register is record
      --  FIFO threshold.
      FTH            : SAI_ACR2_FTH_Field := 16#0#;
      --  Write-only. FIFO flush.
      FFLUSH         : Boolean := False;
      --  Tristate management on data line.
      TRIS           : Boolean := False;
      --  Mute.
      MUTE           : Boolean := False;
      --  Mute value.
      MUTEVAL        : Boolean := False;
      --  Mute counter.
      MUTECNT        : SAI_ACR2_MUTECNT_Field := 16#0#;
      --  Complement bit.
      CPL            : Boolean := False;
      --  Companding mode.
      COMP           : SAI_ACR2_COMP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_ACR2_Register use record
      FTH            at 0 range 0 .. 2;
      FFLUSH         at 0 range 3 .. 3;
      TRIS           at 0 range 4 .. 4;
      MUTE           at 0 range 5 .. 5;
      MUTEVAL        at 0 range 6 .. 6;
      MUTECNT        at 0 range 7 .. 12;
      CPL            at 0 range 13 .. 13;
      COMP           at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SAI_AFRCR_FRL_Field is HAL.UInt8;
   subtype SAI_AFRCR_FSALL_Field is HAL.UInt7;

   --  SAI frame configuration register
   type SAI_AFRCR_Register is record
      --  Frame length.
      FRL            : SAI_AFRCR_FRL_Field := 16#7#;
      --  Frame synchronization active level length.
      FSALL          : SAI_AFRCR_FSALL_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Read-only. Frame synchronization definition.
      FSDEF          : Boolean := False;
      --  Frame synchronization polarity.
      FSPOL          : Boolean := False;
      --  Frame synchronization offset.
      FSOFF          : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_AFRCR_Register use record
      FRL            at 0 range 0 .. 7;
      FSALL          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FSDEF          at 0 range 16 .. 16;
      FSPOL          at 0 range 17 .. 17;
      FSOFF          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype SAI_ASLOTR_FBOFF_Field is HAL.UInt5;
   subtype SAI_ASLOTR_SLOTSZ_Field is HAL.UInt2;
   subtype SAI_ASLOTR_NBSLOT_Field is HAL.UInt4;
   subtype SAI_ASLOTR_SLOTEN_Field is HAL.UInt16;

   --  SAI slot register
   type SAI_ASLOTR_Register is record
      --  First bit offset
      FBOFF          : SAI_ASLOTR_FBOFF_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Slot size
      SLOTSZ         : SAI_ASLOTR_SLOTSZ_Field := 16#0#;
      --  Number of slots in an audio frame.
      NBSLOT         : SAI_ASLOTR_NBSLOT_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Slot enable.
      SLOTEN         : SAI_ASLOTR_SLOTEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_ASLOTR_Register use record
      FBOFF          at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SLOTSZ         at 0 range 6 .. 7;
      NBSLOT         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SLOTEN         at 0 range 16 .. 31;
   end record;

   --  SAI interrupt mask register
   type SAI_AIM_Register is record
      --  Overrun/underrun interrupt enable.
      OVRUDRIE      : Boolean := False;
      --  Mute detection interrupt enable.
      MUTEDETIE     : Boolean := False;
      --  Wrong clock configuration interrupt enable.
      WCKCFGIE      : Boolean := False;
      --  FIFO request interrupt enable.
      FREQIE        : Boolean := False;
      --  Codec not ready interrupt enable (AC'97).
      CNRDYIE       : Boolean := False;
      --  Anticipated frame synchronization detection interrupt enable.
      AFSDETIE      : Boolean := False;
      --  Late frame synchronization detection interrupt enable.
      LFSDETIE      : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_AIM_Register use record
      OVRUDRIE      at 0 range 0 .. 0;
      MUTEDETIE     at 0 range 1 .. 1;
      WCKCFGIE      at 0 range 2 .. 2;
      FREQIE        at 0 range 3 .. 3;
      CNRDYIE       at 0 range 4 .. 4;
      AFSDETIE      at 0 range 5 .. 5;
      LFSDETIE      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype SAI_ASR_FLVL_Field is HAL.UInt3;

   --  SAI status register
   type SAI_ASR_Register is record
      --  Read-only. Overrun / underrun.
      OVRUDR         : Boolean;
      --  Read-only. Mute detection.
      MUTEDET        : Boolean;
      --  Read-only. Wrong clock configuration flag.
      WCKCFG         : Boolean;
      --  Read-only. FIFO request.
      FREQ           : Boolean;
      --  Read-only. Codec not ready.
      CNRDY          : Boolean;
      --  Read-only. Anticipated frame synchronization detection.
      AFSDET         : Boolean;
      --  Read-only. Late frame synchronization detection.
      LFSDET         : Boolean;
      --  unspecified
      Reserved_7_15  : HAL.UInt9;
      --  Read-only. FIFO level threshold.
      FLVL           : SAI_ASR_FLVL_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_ASR_Register use record
      OVRUDR         at 0 range 0 .. 0;
      MUTEDET        at 0 range 1 .. 1;
      WCKCFG         at 0 range 2 .. 2;
      FREQ           at 0 range 3 .. 3;
      CNRDY          at 0 range 4 .. 4;
      AFSDET         at 0 range 5 .. 5;
      LFSDET         at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      FLVL           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  SAI clear flag register
   type SAI_ACLRFR_Register is record
      --  Write-only. Clear overrun / underrun.
      COVRUDR       : Boolean := False;
      --  Write-only. Mute detection flag.
      CMUTEDET      : Boolean := False;
      --  Write-only. Clear wrong clock configuration flag.
      CWCKCFG       : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Write-only. Clear Codec not ready flag.
      CCNRDY        : Boolean := False;
      --  Write-only. Clear anticipated frame synchronization detection flag.
      CAFSDET       : Boolean := False;
      --  Write-only. Clear late frame synchronization detection flag.
      CLFSDET       : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_ACLRFR_Register use record
      COVRUDR       at 0 range 0 .. 0;
      CMUTEDET      at 0 range 1 .. 1;
      CWCKCFG       at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CCNRDY        at 0 range 4 .. 4;
      CAFSDET       at 0 range 5 .. 5;
      CLFSDET       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype SAI_BCR1_MODE_Field is HAL.UInt2;
   subtype SAI_BCR1_PRTCFG_Field is HAL.UInt2;
   subtype SAI_BCR1_DS_Field is HAL.UInt3;
   subtype SAI_BCR1_SYNCEN_Field is HAL.UInt2;
   subtype SAI_BCR1_MCKDIV_Field is HAL.UInt6;

   --  SAI configuration register 1
   type SAI_BCR1_Register is record
      --  SAIx audio block mode
      MODE           : SAI_BCR1_MODE_Field := 16#0#;
      --  Protocol configuration
      PRTCFG         : SAI_BCR1_PRTCFG_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Data size
      DS             : SAI_BCR1_DS_Field := 16#2#;
      --  Least significant bit first
      LSBFIRST       : Boolean := False;
      --  Clock strobing edge
      CKSTR          : Boolean := False;
      --  Synchronization enable
      SYNCEN         : SAI_BCR1_SYNCEN_Field := 16#0#;
      --  Mono mode
      MONO           : Boolean := False;
      --  Output drive
      OUTDRIV        : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Audio block enable
      SAIEN          : Boolean := False;
      --  DMA enable
      DMAEN          : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  No divider
      NODIV          : Boolean := False;
      --  Master clock divider
      MCKDIV         : SAI_BCR1_MCKDIV_Field := 16#0#;
      --  Oversampling ratio for master clock
      OSR            : Boolean := False;
      --  Master clock generation enable
      MCKEN          : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BCR1_Register use record
      MODE           at 0 range 0 .. 1;
      PRTCFG         at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      DS             at 0 range 5 .. 7;
      LSBFIRST       at 0 range 8 .. 8;
      CKSTR          at 0 range 9 .. 9;
      SYNCEN         at 0 range 10 .. 11;
      MONO           at 0 range 12 .. 12;
      OUTDRIV        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SAIEN          at 0 range 16 .. 16;
      DMAEN          at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      NODIV          at 0 range 19 .. 19;
      MCKDIV         at 0 range 20 .. 25;
      OSR            at 0 range 26 .. 26;
      MCKEN          at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype SAI_BCR2_FTH_Field is HAL.UInt3;
   subtype SAI_BCR2_MUTECNT_Field is HAL.UInt6;
   subtype SAI_BCR2_COMP_Field is HAL.UInt2;

   --  SAI configuration register 2
   type SAI_BCR2_Register is record
      --  FIFO threshold.
      FTH            : SAI_BCR2_FTH_Field := 16#0#;
      --  Write-only. FIFO flush.
      FFLUSH         : Boolean := False;
      --  Tristate management on data line.
      TRIS           : Boolean := False;
      --  Mute.
      MUTE           : Boolean := False;
      --  Mute value.
      MUTEVAL        : Boolean := False;
      --  Mute counter.
      MUTECNT        : SAI_BCR2_MUTECNT_Field := 16#0#;
      --  Complement bit.
      CPL            : Boolean := False;
      --  Companding mode.
      COMP           : SAI_BCR2_COMP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BCR2_Register use record
      FTH            at 0 range 0 .. 2;
      FFLUSH         at 0 range 3 .. 3;
      TRIS           at 0 range 4 .. 4;
      MUTE           at 0 range 5 .. 5;
      MUTEVAL        at 0 range 6 .. 6;
      MUTECNT        at 0 range 7 .. 12;
      CPL            at 0 range 13 .. 13;
      COMP           at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SAI_BFRCR_FRL_Field is HAL.UInt8;
   subtype SAI_BFRCR_FSALL_Field is HAL.UInt7;

   --  SAI frame configuration register
   type SAI_BFRCR_Register is record
      --  Frame length.
      FRL            : SAI_BFRCR_FRL_Field := 16#7#;
      --  Frame synchronization active level length.
      FSALL          : SAI_BFRCR_FSALL_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Read-only. Frame synchronization definition.
      FSDEF          : Boolean := False;
      --  Frame synchronization polarity.
      FSPOL          : Boolean := False;
      --  Frame synchronization offset.
      FSOFF          : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BFRCR_Register use record
      FRL            at 0 range 0 .. 7;
      FSALL          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FSDEF          at 0 range 16 .. 16;
      FSPOL          at 0 range 17 .. 17;
      FSOFF          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype SAI_BSLOTR_FBOFF_Field is HAL.UInt5;
   subtype SAI_BSLOTR_SLOTSZ_Field is HAL.UInt2;
   subtype SAI_BSLOTR_NBSLOT_Field is HAL.UInt4;
   subtype SAI_BSLOTR_SLOTEN_Field is HAL.UInt16;

   --  SAI slot register
   type SAI_BSLOTR_Register is record
      --  First bit offset
      FBOFF          : SAI_BSLOTR_FBOFF_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Slot size
      SLOTSZ         : SAI_BSLOTR_SLOTSZ_Field := 16#0#;
      --  Number of slots in an audio frame.
      NBSLOT         : SAI_BSLOTR_NBSLOT_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Slot enable.
      SLOTEN         : SAI_BSLOTR_SLOTEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BSLOTR_Register use record
      FBOFF          at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SLOTSZ         at 0 range 6 .. 7;
      NBSLOT         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SLOTEN         at 0 range 16 .. 31;
   end record;

   --  SAI interrupt mask register
   type SAI_BIM_Register is record
      --  Overrun/underrun interrupt enable.
      OVRUDRIE      : Boolean := False;
      --  Mute detection interrupt enable.
      MUTEDETIE     : Boolean := False;
      --  Wrong clock configuration interrupt enable.
      WCKCFGIE      : Boolean := False;
      --  FIFO request interrupt enable.
      FREQIE        : Boolean := False;
      --  Codec not ready interrupt enable (AC'97).
      CNRDYIE       : Boolean := False;
      --  Anticipated frame synchronization detection interrupt enable.
      AFSDETIE      : Boolean := False;
      --  Late frame synchronization detection interrupt enable.
      LFSDETIE      : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BIM_Register use record
      OVRUDRIE      at 0 range 0 .. 0;
      MUTEDETIE     at 0 range 1 .. 1;
      WCKCFGIE      at 0 range 2 .. 2;
      FREQIE        at 0 range 3 .. 3;
      CNRDYIE       at 0 range 4 .. 4;
      AFSDETIE      at 0 range 5 .. 5;
      LFSDETIE      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype SAI_BSR_FLVL_Field is HAL.UInt3;

   --  SAI status register
   type SAI_BSR_Register is record
      --  Read-only. Overrun / underrun.
      OVRUDR         : Boolean;
      --  Read-only. Mute detection.
      MUTEDET        : Boolean;
      --  Read-only. Wrong clock configuration flag.
      WCKCFG         : Boolean;
      --  Read-only. FIFO request.
      FREQ           : Boolean;
      --  Read-only. Codec not ready.
      CNRDY          : Boolean;
      --  Read-only. Anticipated frame synchronization detection.
      AFSDET         : Boolean;
      --  Read-only. Late frame synchronization detection.
      LFSDET         : Boolean;
      --  unspecified
      Reserved_7_15  : HAL.UInt9;
      --  Read-only. FIFO level threshold.
      FLVL           : SAI_BSR_FLVL_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BSR_Register use record
      OVRUDR         at 0 range 0 .. 0;
      MUTEDET        at 0 range 1 .. 1;
      WCKCFG         at 0 range 2 .. 2;
      FREQ           at 0 range 3 .. 3;
      CNRDY          at 0 range 4 .. 4;
      AFSDET         at 0 range 5 .. 5;
      LFSDET         at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      FLVL           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  SAI clear flag register
   type SAI_BCLRFR_Register is record
      --  Write-only. Clear overrun / underrun.
      COVRUDR       : Boolean := False;
      --  Write-only. Mute detection flag.
      CMUTEDET      : Boolean := False;
      --  Write-only. Clear wrong clock configuration flag.
      CWCKCFG       : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Write-only. Clear Codec not ready flag.
      CCNRDY        : Boolean := False;
      --  Write-only. Clear anticipated frame synchronization detection flag.
      CAFSDET       : Boolean := False;
      --  Write-only. Clear late frame synchronization detection flag.
      CLFSDET       : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BCLRFR_Register use record
      COVRUDR       at 0 range 0 .. 0;
      CMUTEDET      at 0 range 1 .. 1;
      CWCKCFG       at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CCNRDY        at 0 range 4 .. 4;
      CAFSDET       at 0 range 5 .. 5;
      CLFSDET       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype SAI_PDMCR_MICNBR_Field is HAL.UInt2;

   --  SAI_PDMCR_CKEN array
   type SAI_PDMCR_CKEN_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SAI_PDMCR_CKEN
   type SAI_PDMCR_CKEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CKEN as a value
            Val : HAL.UInt2;
         when True =>
            --  CKEN as an array
            Arr : SAI_PDMCR_CKEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SAI_PDMCR_CKEN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SAI PDM control register
   type SAI_PDMCR_Register is record
      --  PDM enable
      PDMEN          : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Number of microphones
      MICNBR         : SAI_PDMCR_MICNBR_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Clock enable of bitstream clock number 1
      CKEN           : SAI_PDMCR_CKEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_PDMCR_Register use record
      PDMEN          at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      MICNBR         at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CKEN           at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SAI_PDMDLY_DLYM1L_Field is HAL.UInt3;
   subtype SAI_PDMDLY_DLYM1R_Field is HAL.UInt3;
   subtype SAI_PDMDLY_DLYM2L_Field is HAL.UInt3;
   subtype SAI_PDMDLY_DLYM2R_Field is HAL.UInt3;
   subtype SAI_PDMDLY_DLYM3L_Field is HAL.UInt3;
   subtype SAI_PDMDLY_DLYM3R_Field is HAL.UInt3;
   subtype SAI_PDMDLY_DLYM4L_Field is HAL.UInt3;
   subtype SAI_PDMDLY_DLYM4R_Field is HAL.UInt3;

   --  SAI PDM delay register
   type SAI_PDMDLY_Register is record
      --  Delay line adjust for first microphone of pair 1
      DLYM1L         : SAI_PDMDLY_DLYM1L_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Delay line adjust for second microphone of pair 1
      DLYM1R         : SAI_PDMDLY_DLYM1R_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Delay line for first microphone of pair 2
      DLYM2L         : SAI_PDMDLY_DLYM2L_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Delay line for second microphone of pair 2
      DLYM2R         : SAI_PDMDLY_DLYM2R_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Delay line for first microphone of pair 3
      DLYM3L         : SAI_PDMDLY_DLYM3L_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Delay line for second microphone of pair 3
      DLYM3R         : SAI_PDMDLY_DLYM3R_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Delay line for first microphone of pair 4
      DLYM4L         : SAI_PDMDLY_DLYM4L_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Delay line for second microphone of pair 4
      DLYM4R         : SAI_PDMDLY_DLYM4R_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_PDMDLY_Register use record
      DLYM1L         at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DLYM1R         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DLYM2L         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      DLYM2R         at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      DLYM3L         at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      DLYM3R         at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      DLYM4L         at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      DLYM4R         at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial audio interface
   type SAI_Peripheral is record
      --  SAI global configuration register
      SAI_GCR    : aliased SAI_GCR_Register;
      --  SAI configuration register 1
      SAI_ACR1   : aliased SAI_ACR1_Register;
      --  SAI configuration register 2
      SAI_ACR2   : aliased SAI_ACR2_Register;
      --  SAI frame configuration register
      SAI_AFRCR  : aliased SAI_AFRCR_Register;
      --  SAI slot register
      SAI_ASLOTR : aliased SAI_ASLOTR_Register;
      --  SAI interrupt mask register
      SAI_AIM    : aliased SAI_AIM_Register;
      --  SAI status register
      SAI_ASR    : aliased SAI_ASR_Register;
      --  SAI clear flag register
      SAI_ACLRFR : aliased SAI_ACLRFR_Register;
      --  SAI data register
      SAI_ADR    : aliased HAL.UInt32;
      --  SAI configuration register 1
      SAI_BCR1   : aliased SAI_BCR1_Register;
      --  SAI configuration register 2
      SAI_BCR2   : aliased SAI_BCR2_Register;
      --  SAI frame configuration register
      SAI_BFRCR  : aliased SAI_BFRCR_Register;
      --  SAI slot register
      SAI_BSLOTR : aliased SAI_BSLOTR_Register;
      --  SAI interrupt mask register
      SAI_BIM    : aliased SAI_BIM_Register;
      --  SAI status register
      SAI_BSR    : aliased SAI_BSR_Register;
      --  SAI clear flag register
      SAI_BCLRFR : aliased SAI_BCLRFR_Register;
      --  SAI data register
      SAI_BDR    : aliased HAL.UInt32;
      --  SAI PDM control register
      SAI_PDMCR  : aliased SAI_PDMCR_Register;
      --  SAI PDM delay register
      SAI_PDMDLY : aliased SAI_PDMDLY_Register;
   end record
     with Volatile;

   for SAI_Peripheral use record
      SAI_GCR    at 16#0# range 0 .. 31;
      SAI_ACR1   at 16#4# range 0 .. 31;
      SAI_ACR2   at 16#8# range 0 .. 31;
      SAI_AFRCR  at 16#C# range 0 .. 31;
      SAI_ASLOTR at 16#10# range 0 .. 31;
      SAI_AIM    at 16#14# range 0 .. 31;
      SAI_ASR    at 16#18# range 0 .. 31;
      SAI_ACLRFR at 16#1C# range 0 .. 31;
      SAI_ADR    at 16#20# range 0 .. 31;
      SAI_BCR1   at 16#24# range 0 .. 31;
      SAI_BCR2   at 16#28# range 0 .. 31;
      SAI_BFRCR  at 16#2C# range 0 .. 31;
      SAI_BSLOTR at 16#30# range 0 .. 31;
      SAI_BIM    at 16#34# range 0 .. 31;
      SAI_BSR    at 16#38# range 0 .. 31;
      SAI_BCLRFR at 16#3C# range 0 .. 31;
      SAI_BDR    at 16#40# range 0 .. 31;
      SAI_PDMCR  at 16#44# range 0 .. 31;
      SAI_PDMDLY at 16#48# range 0 .. 31;
   end record;

   --  Serial audio interface
   SAI1_Periph : aliased SAI_Peripheral
     with Import, Address => SAI1_Base;

   --  Serial audio interface
   SAI1_S_Periph : aliased SAI_Peripheral
     with Import, Address => SAI1_S_Base;

   --  Serial audio interface
   SAI2_Periph : aliased SAI_Peripheral
     with Import, Address => SAI2_Base;

   --  Serial audio interface
   SAI2_S_Periph : aliased SAI_Peripheral
     with Import, Address => SAI2_S_Base;

end STM32_SVD.SAI;
