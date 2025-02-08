--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.HASH is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype HASH_CR_DATATYPE_Field is HAL.UInt2;
   subtype HASH_CR_NBW_Field is HAL.UInt4;
   subtype HASH_CR_ALGO_Field is HAL.UInt4;

   --  HASH control register
   type HASH_CR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Initialize message digest calculation Setting this bit resets the
      --  hash processor core, so that the HASH is ready to compute the message
      --  digest of a new message. Clearing this bit has no effect. Reading
      --  this bit always returns 0.
      INIT           : Boolean := False;
      --  DMA enable After this bit is set, it is cleared by hardware while the
      --  last data of the message is written into the hash processor. Clearing
      --  this bit while a DMA transfer is ongoing does not abort the current
      --  transfer. Instead, the DMA interface of the HASH remains internally
      --  enabled until the transfer is complete or INIT is set. Setting INIT
      --  bit does not clear DMAE bit.
      DMAE           : Boolean := False;
      --  Data type selection This bit field defines the format of the data
      --  entered into the HASH_DIN register:
      DATATYPE       : HASH_CR_DATATYPE_Field := 16#0#;
      --  Mode selection This bit selects the normal or the keyed HMAC mode for
      --  the selected algorithm: This selection is only taken into account
      --  when the INIT bit is set. Changing this bit during a computation has
      --  no effect.
      MODE           : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Read-only. Number of words already pushed Refer to NBWP[3:0] bit
      --  field of HASH_SR for a description of NBW[3:0] bit field. This bit is
      --  read-only.
      NBW            : HASH_CR_NBW_Field := 16#0#;
      --  Read-only. DIN not empty Refer to DINNE bit of HASH_SR for a
      --  description of DINNE bit. This bit is read-only.
      DINNE          : Boolean := False;
      --  Multiple DMA transfers This bit is set when hashing large files when
      --  multiple DMA transfers are needed.
      MDMAT          : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Long key selection The application must set this bit if the HMAC key
      --  is greater than the block size corresponding to the hash algorithm
      --  (see Table558: Information on supported hash algorithms for details).
      --  For example the block size is 64 bytes for SHA2-256. This selection
      --  is only taken into account when the INIT and MODE bits are set (HMAC
      --  mode selected). Changing this bit during a computation has no effect.
      LKEY           : Boolean := False;
      --  Algorithm selection These bits select the hash algorithm: Others:
      --  reserved, must not be used This selection is only taken into account
      --  when the INIT bit is set. Changing this bit field during a
      --  computation has no effect. When the ALGO bit field is equal to 10XX,
      --  an advanced application can use HASH_SHA3CFGR to tune the behavior of
      --  the hash processor. When the ALGO bit field is updated and INIT bit
      --  is set, NBWE in HASH_SR is automatically updated to 0x11 when
      --  ALGO=0x00XX.
      ALGO           : HASH_CR_ALGO_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HASH_CR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      INIT           at 0 range 2 .. 2;
      DMAE           at 0 range 3 .. 3;
      DATATYPE       at 0 range 4 .. 5;
      MODE           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NBW            at 0 range 8 .. 11;
      DINNE          at 0 range 12 .. 12;
      MDMAT          at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      LKEY           at 0 range 16 .. 16;
      ALGO           at 0 range 17 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype HASH_STR_NBLW_Field is HAL.UInt5;

   --  HASH start register
   type HASH_STR_Register is record
      --  Number of valid bits in the last word When the last word of the
      --  message bit string is written to HASH_DIN register, the hash
      --  processor takes only the valid bits, specified as below, after
      --  internal data swapping: ... Note: When SHA-3 is selected, bits 0 to 2
      --  are kept at zero (byte oriented input). The above mechanism is valid
      --  only if DCAL=0. If NBLW bits are written while DCAL is set , the NBLW
      --  bit field remains unchanged. In other words it is not possible to
      --  configure NBLW and set DCAL at the same time. Reading NBLW bits
      --  returns the last value written to NBLW.
      NBLW          : HASH_STR_NBLW_Field := 16#0#;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  Digest calculation Setting this bit starts the message padding using
      --  the previously written value of NBLW, and starts the calculation of
      --  the final message digest with all the data words written to the input
      --  FIFO since the INIT bit was last set. Reading this bit returns 0.
      DCAL          : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HASH_STR_Register use record
      NBLW          at 0 range 0 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      DCAL          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  HASH interrupt enable register
   type HASH_IMR_Register is record
      --  Data input interrupt enable
      DINIE         : Boolean := False;
      --  Digest calculation completion interrupt enable
      DCIE          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HASH_IMR_Register use record
      DINIE         at 0 range 0 .. 0;
      DCIE          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype HASH_SR_NBWP_Field is HAL.UInt6;
   subtype HASH_SR_NBWE_Field is HAL.UInt6;

   --  HASH status register
   type HASH_SR_Register is record
      --  Data input interrupt status This bit is set by hardware when the FIFO
      --  is ready to get a new block (16 locations are free). It is cleared by
      --  writing it to 0 or by writing the HASH_DIN register. When DINIS=0,
      --  HASH_CSRx registers reads as zero.
      DINIS          : Boolean := True;
      --  Digest calculation completion interrupt status This bit is set by
      --  hardware when a digest becomes ready (the whole message has been
      --  processed). It is cleared by writing it to 0 or by setting the INIT
      --  bit in the HASH_CR register.
      DCIS           : Boolean := False;
      --  Read-only. DMA Status This bit provides information on the DMA
      --  interface activity. It is set with DMAE and cleared when DMAE=0 and
      --  no DMA transfer is ongoing. No interrupt is associated with this bit.
      DMAS           : Boolean := False;
      --  Read-only. Busy bit
      BUSY           : Boolean := False;
      --  unspecified
      Reserved_4_8   : HAL.UInt5 := 16#0#;
      --  Read-only. Number of words already pushed This bit field is the exact
      --  number of words in the message that have already been pushed into the
      --  FIFO. NBWP is incremented by 1 when a write access is performed to
      --  the HASH_DIN register. When a digest calculation starts, NBWP is
      --  updated to NBWP- block size (in words), and NBWP goes to zero when
      --  the INIT bit is set.
      NBWP           : HASH_SR_NBWP_Field := 16#0#;
      --  Read-only. DIN not empty This bit is set when the HASH_DIN register
      --  holds valid data (that is after being written at least once). It is
      --  cleared when either the INIT bit (initialization) or the DCAL bit
      --  (completion of the previous message processing) is set.
      DINNE          : Boolean := False;
      --  Read-only. Number of words expected This bit field reflects the
      --  number of words in the message that must be pushed into the FIFO to
      --  trigger a partial computation. NBWE is decremented by 1 when a write
      --  access is performed to the HASH_DIN register. NBWE is set to the
      --  expected block size +1 in words when INIT bit is set in HASH_CR. It
      --  is set to the expected block size when the partial digest calculation
      --  ends.
      NBWE           : HASH_SR_NBWE_Field := 16#11#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HASH_SR_Register use record
      DINIS          at 0 range 0 .. 0;
      DCIS           at 0 range 1 .. 1;
      DMAS           at 0 range 2 .. 2;
      BUSY           at 0 range 3 .. 3;
      Reserved_4_8   at 0 range 4 .. 8;
      NBWP           at 0 range 9 .. 14;
      DINNE          at 0 range 15 .. 15;
      NBWE           at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype HASH_SHA3CFGR_PADBYTE_Field is HAL.UInt8;
   subtype HASH_SHA3CFGR_START_RND_Field is HAL.UInt5;
   subtype HASH_SHA3CFGR_END_RND_Field is HAL.UInt5;
   subtype HASH_SHA3CFGR_IN_RATE_Field is HAL.UInt6;

   --  HASH SHA-3 configuration register
   type HASH_SHA3CFGR_Register is record
      --  Padding byte value This bit field defines the padding byte value to
      --  apply.
      PADBYTE        : HASH_SHA3CFGR_PADBYTE_Field := 16#0#;
      --  Padding bit configuration
      PADCONFIG      : Boolean := False;
      --  Starting round number This bit field defines the first round of basic
      --  block function permutation. The last round ends at END_RND[4:0]. If
      --  START_RND[4:0] is programmed to a value greater than END_RND[4:0],
      --  the HASH processor keeps the previous value.
      START_RND      : HASH_SHA3CFGR_START_RND_Field := 16#0#;
      --  Last round number This bit field defines the last round of basic
      --  block function permutation. The first round starts at START_RND[4:0].
      --  If END_RND[4:0] is programmed to a value greater than 24 or lower
      --  than START_RND[4:0], the HASH processor keeps the previous value.
      END_RND        : HASH_SHA3CFGR_END_RND_Field := 16#0#;
      --  Input rate This bit field defines the number of 32-bit words
      --  corresponding to the input block size. It is also known as input
      --  rate. IN_RATE[5:0] must be greater than 0 and lower or equal to 50,
      --  else the written value is ignored. Defining the security target of a
      --  given sponge function involves defining: the security target against
      --  collisions=min (capacity size/2, output_size/2) the security target
      --  against preimage attacks=min (capacity size/2, output_size) where
      --  capacity size=1600-block_size, in bits. The HASH processor uses the
      --  following default input rate values for the algorithm selected
      --  through ALGO[3:0] bits: More generally, IN_RATE (in
      --  bits)=(1600-capacity) / 32. IN_RATE[5:0] represents the maximum
      --  digest output that can be read after each computation, started by
      --  setting DCAL bit. Successive settings of DCAL bit are required until
      --  the expected digest length is reached (unbounded output used for
      --  SHAKE). The number of computations equals the expected output length
      --  divided by the block size (IN_RATE[5:0]).
      IN_RATE        : HASH_SHA3CFGR_IN_RATE_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HASH_SHA3CFGR_Register use record
      PADBYTE        at 0 range 0 .. 7;
      PADCONFIG      at 0 range 8 .. 8;
      START_RND      at 0 range 9 .. 13;
      END_RND        at 0 range 14 .. 18;
      IN_RATE        at 0 range 19 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  HASH_HWCFGR_CFG array element
   subtype HASH_HWCFGR_CFG_Element is HAL.UInt4;

   --  HASH_HWCFGR_CFG array
   type HASH_HWCFGR_CFG_Field_Array is array (1 .. 5)
     of HASH_HWCFGR_CFG_Element
     with Component_Size => 4, Size => 20;

   --  Type definition for HASH_HWCFGR_CFG
   type HASH_HWCFGR_CFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFG as a value
            Val : HAL.UInt20;
         when True =>
            --  CFG as an array
            Arr : HASH_HWCFGR_CFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for HASH_HWCFGR_CFG_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   --  HASH hardware configuration register
   type HASH_HWCFGR_Register is record
      --  Read-only. HW generic 1 this bit field reflects the DMA type
      --  connected to this HASH peripheral.
      CFG            : HASH_HWCFGR_CFG_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HASH_HWCFGR_Register use record
      CFG            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype HASH_VERR_MINREV_Field is HAL.UInt4;
   subtype HASH_VERR_MAJREV_Field is HAL.UInt4;

   --  HASH version register
   type HASH_VERR_Register is record
      --  Read-only. Minor revision These bits return the HASH minor revision
      MINREV        : HASH_VERR_MINREV_Field;
      --  Read-only. Major revision These bits return the HASH major revision
      MAJREV        : HASH_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HASH_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  HASH register bank
   type HASH_Peripheral is record
      --  HASH control register
      HASH_CR       : aliased HASH_CR_Register;
      --  HASH data input register
      HASH_DIN      : aliased HAL.UInt32;
      --  HASH start register
      HASH_STR      : aliased HASH_STR_Register;
      --  HASH aliased digest register 0
      HASH_HRA0     : aliased HAL.UInt32;
      --  HASH aliased digest register 1
      HASH_HRA1     : aliased HAL.UInt32;
      --  HASH aliased digest register 2
      HASH_HRA2     : aliased HAL.UInt32;
      --  HASH aliased digest register 3
      HASH_HRA3     : aliased HAL.UInt32;
      --  HASH aliased digest register 4
      HASH_HRA4     : aliased HAL.UInt32;
      --  HASH interrupt enable register
      HASH_IMR      : aliased HASH_IMR_Register;
      --  HASH status register
      HASH_SR       : aliased HASH_SR_Register;
      --  HASH SHA-3 configuration register
      HASH_SHA3CFGR : aliased HASH_SHA3CFGR_Register;
      --  HASH context swap register 0
      HASH_CSR0     : aliased HAL.UInt32;
      --  HASH context swap register 1
      HASH_CSR1     : aliased HAL.UInt32;
      --  HASH context swap register 2
      HASH_CSR2     : aliased HAL.UInt32;
      --  HASH context swap register 3
      HASH_CSR3     : aliased HAL.UInt32;
      --  HASH context swap register 4
      HASH_CSR4     : aliased HAL.UInt32;
      --  HASH context swap register 5
      HASH_CSR5     : aliased HAL.UInt32;
      --  HASH context swap register 6
      HASH_CSR6     : aliased HAL.UInt32;
      --  HASH context swap register 7
      HASH_CSR7     : aliased HAL.UInt32;
      --  HASH context swap register 8
      HASH_CSR8     : aliased HAL.UInt32;
      --  HASH context swap register 9
      HASH_CSR9     : aliased HAL.UInt32;
      --  HASH context swap register 10
      HASH_CSR10    : aliased HAL.UInt32;
      --  HASH context swap register 11
      HASH_CSR11    : aliased HAL.UInt32;
      --  HASH context swap register 12
      HASH_CSR12    : aliased HAL.UInt32;
      --  HASH context swap register 13
      HASH_CSR13    : aliased HAL.UInt32;
      --  HASH context swap register 14
      HASH_CSR14    : aliased HAL.UInt32;
      --  HASH context swap register 15
      HASH_CSR15    : aliased HAL.UInt32;
      --  HASH context swap register 16
      HASH_CSR16    : aliased HAL.UInt32;
      --  HASH context swap register 17
      HASH_CSR17    : aliased HAL.UInt32;
      --  HASH context swap register 18
      HASH_CSR18    : aliased HAL.UInt32;
      --  HASH context swap register 19
      HASH_CSR19    : aliased HAL.UInt32;
      --  HASH context swap register 20
      HASH_CSR20    : aliased HAL.UInt32;
      --  HASH context swap register 21
      HASH_CSR21    : aliased HAL.UInt32;
      --  HASH context swap register 22
      HASH_CSR22    : aliased HAL.UInt32;
      --  HASH context swap register 23
      HASH_CSR23    : aliased HAL.UInt32;
      --  HASH context swap register 24
      HASH_CSR24    : aliased HAL.UInt32;
      --  HASH context swap register 25
      HASH_CSR25    : aliased HAL.UInt32;
      --  HASH context swap register 26
      HASH_CSR26    : aliased HAL.UInt32;
      --  HASH context swap register 27
      HASH_CSR27    : aliased HAL.UInt32;
      --  HASH context swap register 28
      HASH_CSR28    : aliased HAL.UInt32;
      --  HASH context swap register 29
      HASH_CSR29    : aliased HAL.UInt32;
      --  HASH context swap register 30
      HASH_CSR30    : aliased HAL.UInt32;
      --  HASH context swap register 31
      HASH_CSR31    : aliased HAL.UInt32;
      --  HASH context swap register 32
      HASH_CSR32    : aliased HAL.UInt32;
      --  HASH context swap register 33
      HASH_CSR33    : aliased HAL.UInt32;
      --  HASH context swap register 34
      HASH_CSR34    : aliased HAL.UInt32;
      --  HASH context swap register 35
      HASH_CSR35    : aliased HAL.UInt32;
      --  HASH context swap register 36
      HASH_CSR36    : aliased HAL.UInt32;
      --  HASH context swap register 37
      HASH_CSR37    : aliased HAL.UInt32;
      --  HASH context swap register 38
      HASH_CSR38    : aliased HAL.UInt32;
      --  HASH context swap register 39
      HASH_CSR39    : aliased HAL.UInt32;
      --  HASH context swap register 40
      HASH_CSR40    : aliased HAL.UInt32;
      --  HASH context swap register 41
      HASH_CSR41    : aliased HAL.UInt32;
      --  HASH context swap register 42
      HASH_CSR42    : aliased HAL.UInt32;
      --  HASH context swap register 43
      HASH_CSR43    : aliased HAL.UInt32;
      --  HASH context swap register 44
      HASH_CSR44    : aliased HAL.UInt32;
      --  HASH context swap register 45
      HASH_CSR45    : aliased HAL.UInt32;
      --  HASH context swap register 46
      HASH_CSR46    : aliased HAL.UInt32;
      --  HASH context swap register 47
      HASH_CSR47    : aliased HAL.UInt32;
      --  HASH context swap register 48
      HASH_CSR48    : aliased HAL.UInt32;
      --  HASH context swap register 49
      HASH_CSR49    : aliased HAL.UInt32;
      --  HASH context swap register 50
      HASH_CSR50    : aliased HAL.UInt32;
      --  HASH context swap register 51
      HASH_CSR51    : aliased HAL.UInt32;
      --  HASH context swap register 52
      HASH_CSR52    : aliased HAL.UInt32;
      --  HASH context swap register 53
      HASH_CSR53    : aliased HAL.UInt32;
      --  HASH context swap register 54
      HASH_CSR54    : aliased HAL.UInt32;
      --  HASH context swap register 55
      HASH_CSR55    : aliased HAL.UInt32;
      --  HASH context swap register 56
      HASH_CSR56    : aliased HAL.UInt32;
      --  HASH context swap register 57
      HASH_CSR57    : aliased HAL.UInt32;
      --  HASH context swap register 58
      HASH_CSR58    : aliased HAL.UInt32;
      --  HASH context swap register 59
      HASH_CSR59    : aliased HAL.UInt32;
      --  HASH context swap register 60
      HASH_CSR60    : aliased HAL.UInt32;
      --  HASH context swap register 61
      HASH_CSR61    : aliased HAL.UInt32;
      --  HASH context swap register 62
      HASH_CSR62    : aliased HAL.UInt32;
      --  HASH context swap register 63
      HASH_CSR63    : aliased HAL.UInt32;
      --  HASH context swap register 64
      HASH_CSR64    : aliased HAL.UInt32;
      --  HASH context swap register 65
      HASH_CSR65    : aliased HAL.UInt32;
      --  HASH context swap register 66
      HASH_CSR66    : aliased HAL.UInt32;
      --  HASH context swap register 67
      HASH_CSR67    : aliased HAL.UInt32;
      --  HASH context swap register 68
      HASH_CSR68    : aliased HAL.UInt32;
      --  HASH context swap register 69
      HASH_CSR69    : aliased HAL.UInt32;
      --  HASH context swap register 70
      HASH_CSR70    : aliased HAL.UInt32;
      --  HASH context swap register 71
      HASH_CSR71    : aliased HAL.UInt32;
      --  HASH context swap register 72
      HASH_CSR72    : aliased HAL.UInt32;
      --  HASH context swap register 73
      HASH_CSR73    : aliased HAL.UInt32;
      --  HASH context swap register 74
      HASH_CSR74    : aliased HAL.UInt32;
      --  HASH context swap register 75
      HASH_CSR75    : aliased HAL.UInt32;
      --  HASH context swap register 76
      HASH_CSR76    : aliased HAL.UInt32;
      --  HASH context swap register 77
      HASH_CSR77    : aliased HAL.UInt32;
      --  HASH context swap register 78
      HASH_CSR78    : aliased HAL.UInt32;
      --  HASH context swap register 79
      HASH_CSR79    : aliased HAL.UInt32;
      --  HASH context swap register 80
      HASH_CSR80    : aliased HAL.UInt32;
      --  HASH context swap register 81
      HASH_CSR81    : aliased HAL.UInt32;
      --  HASH context swap register 82
      HASH_CSR82    : aliased HAL.UInt32;
      --  HASH context swap register 83
      HASH_CSR83    : aliased HAL.UInt32;
      --  HASH context swap register 84
      HASH_CSR84    : aliased HAL.UInt32;
      --  HASH context swap register 85
      HASH_CSR85    : aliased HAL.UInt32;
      --  HASH context swap register 86
      HASH_CSR86    : aliased HAL.UInt32;
      --  HASH context swap register 87
      HASH_CSR87    : aliased HAL.UInt32;
      --  HASH context swap register 88
      HASH_CSR88    : aliased HAL.UInt32;
      --  HASH context swap register 89
      HASH_CSR89    : aliased HAL.UInt32;
      --  HASH context swap register 90
      HASH_CSR90    : aliased HAL.UInt32;
      --  HASH context swap register 91
      HASH_CSR91    : aliased HAL.UInt32;
      --  HASH context swap register 92
      HASH_CSR92    : aliased HAL.UInt32;
      --  HASH context swap register 93
      HASH_CSR93    : aliased HAL.UInt32;
      --  HASH context swap register 94
      HASH_CSR94    : aliased HAL.UInt32;
      --  HASH context swap register 95
      HASH_CSR95    : aliased HAL.UInt32;
      --  HASH context swap register 96
      HASH_CSR96    : aliased HAL.UInt32;
      --  HASH context swap register 97
      HASH_CSR97    : aliased HAL.UInt32;
      --  HASH context swap register 98
      HASH_CSR98    : aliased HAL.UInt32;
      --  HASH context swap register 99
      HASH_CSR99    : aliased HAL.UInt32;
      --  HASH context swap register 100
      HASH_CSR100   : aliased HAL.UInt32;
      --  HASH context swap register 101
      HASH_CSR101   : aliased HAL.UInt32;
      --  HASH context swap register 102
      HASH_CSR102   : aliased HAL.UInt32;
      --  HASH digest register 0
      HASH_HR0      : aliased HAL.UInt32;
      --  HASH digest register 1
      HASH_HR1      : aliased HAL.UInt32;
      --  HASH digest register 2
      HASH_HR2      : aliased HAL.UInt32;
      --  HASH digest register 3
      HASH_HR3      : aliased HAL.UInt32;
      --  HASH digest register 4
      HASH_HR4      : aliased HAL.UInt32;
      --  HASH supplementary digest register 5
      HASH_HR5      : aliased HAL.UInt32;
      --  HASH supplementary digest register 6
      HASH_HR6      : aliased HAL.UInt32;
      --  HASH supplementary digest register 7
      HASH_HR7      : aliased HAL.UInt32;
      --  HASH supplementary digest register 8
      HASH_HR8      : aliased HAL.UInt32;
      --  HASH supplementary digest register 9
      HASH_HR9      : aliased HAL.UInt32;
      --  HASH supplementary digest register 10
      HASH_HR10     : aliased HAL.UInt32;
      --  HASH supplementary digest register 11
      HASH_HR11     : aliased HAL.UInt32;
      --  HASH supplementary digest register 12
      HASH_HR12     : aliased HAL.UInt32;
      --  HASH supplementary digest register 13
      HASH_HR13     : aliased HAL.UInt32;
      --  HASH supplementary digest register 14
      HASH_HR14     : aliased HAL.UInt32;
      --  HASH supplementary digest register 15
      HASH_HR15     : aliased HAL.UInt32;
      --  HASH supplementary digest register 16
      HASH_HR16     : aliased HAL.UInt32;
      --  HASH supplementary digest register 17
      HASH_HR17     : aliased HAL.UInt32;
      --  HASH supplementary digest register 18
      HASH_HR18     : aliased HAL.UInt32;
      --  HASH supplementary digest register 19
      HASH_HR19     : aliased HAL.UInt32;
      --  HASH supplementary digest register 20
      HASH_HR20     : aliased HAL.UInt32;
      --  HASH supplementary digest register 21
      HASH_HR21     : aliased HAL.UInt32;
      --  HASH supplementary digest register 22
      HASH_HR22     : aliased HAL.UInt32;
      --  HASH supplementary digest register 23
      HASH_HR23     : aliased HAL.UInt32;
      --  HASH supplementary digest register 24
      HASH_HR24     : aliased HAL.UInt32;
      --  HASH supplementary digest register 25
      HASH_HR25     : aliased HAL.UInt32;
      --  HASH supplementary digest register 26
      HASH_HR26     : aliased HAL.UInt32;
      --  HASH supplementary digest register 27
      HASH_HR27     : aliased HAL.UInt32;
      --  HASH supplementary digest register 28
      HASH_HR28     : aliased HAL.UInt32;
      --  HASH supplementary digest register 29
      HASH_HR29     : aliased HAL.UInt32;
      --  HASH supplementary digest register 30
      HASH_HR30     : aliased HAL.UInt32;
      --  HASH supplementary digest register 31
      HASH_HR31     : aliased HAL.UInt32;
      --  HASH supplementary digest register 32
      HASH_HR32     : aliased HAL.UInt32;
      --  HASH supplementary digest register 33
      HASH_HR33     : aliased HAL.UInt32;
      --  HASH supplementary digest register 34
      HASH_HR34     : aliased HAL.UInt32;
      --  HASH supplementary digest register 35
      HASH_HR35     : aliased HAL.UInt32;
      --  HASH supplementary digest register 36
      HASH_HR36     : aliased HAL.UInt32;
      --  HASH supplementary digest register 37
      HASH_HR37     : aliased HAL.UInt32;
      --  HASH supplementary digest register 38
      HASH_HR38     : aliased HAL.UInt32;
      --  HASH supplementary digest register 39
      HASH_HR39     : aliased HAL.UInt32;
      --  HASH supplementary digest register 40
      HASH_HR40     : aliased HAL.UInt32;
      --  HASH supplementary digest register 41
      HASH_HR41     : aliased HAL.UInt32;
      --  HASH supplementary digest register 42
      HASH_HR42     : aliased HAL.UInt32;
      --  HASH supplementary digest register 43
      HASH_HR43     : aliased HAL.UInt32;
      --  HASH supplementary digest register 44
      HASH_HR44     : aliased HAL.UInt32;
      --  HASH supplementary digest register 45
      HASH_HR45     : aliased HAL.UInt32;
      --  HASH supplementary digest register 46
      HASH_HR46     : aliased HAL.UInt32;
      --  HASH supplementary digest register 47
      HASH_HR47     : aliased HAL.UInt32;
      --  HASH supplementary digest register 48
      HASH_HR48     : aliased HAL.UInt32;
      --  HASH supplementary digest register 49
      HASH_HR49     : aliased HAL.UInt32;
      --  HASH hardware configuration register
      HASH_HWCFGR   : aliased HASH_HWCFGR_Register;
      --  HASH version register
      HASH_VERR     : aliased HASH_VERR_Register;
      --  HASH identification register
      HASH_IPIDR    : aliased HAL.UInt32;
      --  HASH size identification register
      HASH_SIDR     : aliased HAL.UInt32;
   end record
     with Volatile;

   for HASH_Peripheral use record
      HASH_CR       at 16#0# range 0 .. 31;
      HASH_DIN      at 16#4# range 0 .. 31;
      HASH_STR      at 16#8# range 0 .. 31;
      HASH_HRA0     at 16#C# range 0 .. 31;
      HASH_HRA1     at 16#10# range 0 .. 31;
      HASH_HRA2     at 16#14# range 0 .. 31;
      HASH_HRA3     at 16#18# range 0 .. 31;
      HASH_HRA4     at 16#1C# range 0 .. 31;
      HASH_IMR      at 16#20# range 0 .. 31;
      HASH_SR       at 16#24# range 0 .. 31;
      HASH_SHA3CFGR at 16#28# range 0 .. 31;
      HASH_CSR0     at 16#F8# range 0 .. 31;
      HASH_CSR1     at 16#FC# range 0 .. 31;
      HASH_CSR2     at 16#100# range 0 .. 31;
      HASH_CSR3     at 16#104# range 0 .. 31;
      HASH_CSR4     at 16#108# range 0 .. 31;
      HASH_CSR5     at 16#10C# range 0 .. 31;
      HASH_CSR6     at 16#110# range 0 .. 31;
      HASH_CSR7     at 16#114# range 0 .. 31;
      HASH_CSR8     at 16#118# range 0 .. 31;
      HASH_CSR9     at 16#11C# range 0 .. 31;
      HASH_CSR10    at 16#120# range 0 .. 31;
      HASH_CSR11    at 16#124# range 0 .. 31;
      HASH_CSR12    at 16#128# range 0 .. 31;
      HASH_CSR13    at 16#12C# range 0 .. 31;
      HASH_CSR14    at 16#130# range 0 .. 31;
      HASH_CSR15    at 16#134# range 0 .. 31;
      HASH_CSR16    at 16#138# range 0 .. 31;
      HASH_CSR17    at 16#13C# range 0 .. 31;
      HASH_CSR18    at 16#140# range 0 .. 31;
      HASH_CSR19    at 16#144# range 0 .. 31;
      HASH_CSR20    at 16#148# range 0 .. 31;
      HASH_CSR21    at 16#14C# range 0 .. 31;
      HASH_CSR22    at 16#150# range 0 .. 31;
      HASH_CSR23    at 16#154# range 0 .. 31;
      HASH_CSR24    at 16#158# range 0 .. 31;
      HASH_CSR25    at 16#15C# range 0 .. 31;
      HASH_CSR26    at 16#160# range 0 .. 31;
      HASH_CSR27    at 16#164# range 0 .. 31;
      HASH_CSR28    at 16#168# range 0 .. 31;
      HASH_CSR29    at 16#16C# range 0 .. 31;
      HASH_CSR30    at 16#170# range 0 .. 31;
      HASH_CSR31    at 16#174# range 0 .. 31;
      HASH_CSR32    at 16#178# range 0 .. 31;
      HASH_CSR33    at 16#17C# range 0 .. 31;
      HASH_CSR34    at 16#180# range 0 .. 31;
      HASH_CSR35    at 16#184# range 0 .. 31;
      HASH_CSR36    at 16#188# range 0 .. 31;
      HASH_CSR37    at 16#18C# range 0 .. 31;
      HASH_CSR38    at 16#190# range 0 .. 31;
      HASH_CSR39    at 16#194# range 0 .. 31;
      HASH_CSR40    at 16#198# range 0 .. 31;
      HASH_CSR41    at 16#19C# range 0 .. 31;
      HASH_CSR42    at 16#1A0# range 0 .. 31;
      HASH_CSR43    at 16#1A4# range 0 .. 31;
      HASH_CSR44    at 16#1A8# range 0 .. 31;
      HASH_CSR45    at 16#1AC# range 0 .. 31;
      HASH_CSR46    at 16#1B0# range 0 .. 31;
      HASH_CSR47    at 16#1B4# range 0 .. 31;
      HASH_CSR48    at 16#1B8# range 0 .. 31;
      HASH_CSR49    at 16#1BC# range 0 .. 31;
      HASH_CSR50    at 16#1C0# range 0 .. 31;
      HASH_CSR51    at 16#1C4# range 0 .. 31;
      HASH_CSR52    at 16#1C8# range 0 .. 31;
      HASH_CSR53    at 16#1CC# range 0 .. 31;
      HASH_CSR54    at 16#1D0# range 0 .. 31;
      HASH_CSR55    at 16#1D4# range 0 .. 31;
      HASH_CSR56    at 16#1D8# range 0 .. 31;
      HASH_CSR57    at 16#1DC# range 0 .. 31;
      HASH_CSR58    at 16#1E0# range 0 .. 31;
      HASH_CSR59    at 16#1E4# range 0 .. 31;
      HASH_CSR60    at 16#1E8# range 0 .. 31;
      HASH_CSR61    at 16#1EC# range 0 .. 31;
      HASH_CSR62    at 16#1F0# range 0 .. 31;
      HASH_CSR63    at 16#1F4# range 0 .. 31;
      HASH_CSR64    at 16#1F8# range 0 .. 31;
      HASH_CSR65    at 16#1FC# range 0 .. 31;
      HASH_CSR66    at 16#200# range 0 .. 31;
      HASH_CSR67    at 16#204# range 0 .. 31;
      HASH_CSR68    at 16#208# range 0 .. 31;
      HASH_CSR69    at 16#20C# range 0 .. 31;
      HASH_CSR70    at 16#210# range 0 .. 31;
      HASH_CSR71    at 16#214# range 0 .. 31;
      HASH_CSR72    at 16#218# range 0 .. 31;
      HASH_CSR73    at 16#21C# range 0 .. 31;
      HASH_CSR74    at 16#220# range 0 .. 31;
      HASH_CSR75    at 16#224# range 0 .. 31;
      HASH_CSR76    at 16#228# range 0 .. 31;
      HASH_CSR77    at 16#22C# range 0 .. 31;
      HASH_CSR78    at 16#230# range 0 .. 31;
      HASH_CSR79    at 16#234# range 0 .. 31;
      HASH_CSR80    at 16#238# range 0 .. 31;
      HASH_CSR81    at 16#23C# range 0 .. 31;
      HASH_CSR82    at 16#240# range 0 .. 31;
      HASH_CSR83    at 16#244# range 0 .. 31;
      HASH_CSR84    at 16#248# range 0 .. 31;
      HASH_CSR85    at 16#24C# range 0 .. 31;
      HASH_CSR86    at 16#250# range 0 .. 31;
      HASH_CSR87    at 16#254# range 0 .. 31;
      HASH_CSR88    at 16#258# range 0 .. 31;
      HASH_CSR89    at 16#25C# range 0 .. 31;
      HASH_CSR90    at 16#260# range 0 .. 31;
      HASH_CSR91    at 16#264# range 0 .. 31;
      HASH_CSR92    at 16#268# range 0 .. 31;
      HASH_CSR93    at 16#26C# range 0 .. 31;
      HASH_CSR94    at 16#270# range 0 .. 31;
      HASH_CSR95    at 16#274# range 0 .. 31;
      HASH_CSR96    at 16#278# range 0 .. 31;
      HASH_CSR97    at 16#27C# range 0 .. 31;
      HASH_CSR98    at 16#280# range 0 .. 31;
      HASH_CSR99    at 16#284# range 0 .. 31;
      HASH_CSR100   at 16#288# range 0 .. 31;
      HASH_CSR101   at 16#28C# range 0 .. 31;
      HASH_CSR102   at 16#290# range 0 .. 31;
      HASH_HR0      at 16#310# range 0 .. 31;
      HASH_HR1      at 16#314# range 0 .. 31;
      HASH_HR2      at 16#318# range 0 .. 31;
      HASH_HR3      at 16#31C# range 0 .. 31;
      HASH_HR4      at 16#320# range 0 .. 31;
      HASH_HR5      at 16#324# range 0 .. 31;
      HASH_HR6      at 16#328# range 0 .. 31;
      HASH_HR7      at 16#32C# range 0 .. 31;
      HASH_HR8      at 16#330# range 0 .. 31;
      HASH_HR9      at 16#334# range 0 .. 31;
      HASH_HR10     at 16#338# range 0 .. 31;
      HASH_HR11     at 16#33C# range 0 .. 31;
      HASH_HR12     at 16#340# range 0 .. 31;
      HASH_HR13     at 16#344# range 0 .. 31;
      HASH_HR14     at 16#348# range 0 .. 31;
      HASH_HR15     at 16#34C# range 0 .. 31;
      HASH_HR16     at 16#350# range 0 .. 31;
      HASH_HR17     at 16#354# range 0 .. 31;
      HASH_HR18     at 16#358# range 0 .. 31;
      HASH_HR19     at 16#35C# range 0 .. 31;
      HASH_HR20     at 16#360# range 0 .. 31;
      HASH_HR21     at 16#364# range 0 .. 31;
      HASH_HR22     at 16#368# range 0 .. 31;
      HASH_HR23     at 16#36C# range 0 .. 31;
      HASH_HR24     at 16#370# range 0 .. 31;
      HASH_HR25     at 16#374# range 0 .. 31;
      HASH_HR26     at 16#378# range 0 .. 31;
      HASH_HR27     at 16#37C# range 0 .. 31;
      HASH_HR28     at 16#380# range 0 .. 31;
      HASH_HR29     at 16#384# range 0 .. 31;
      HASH_HR30     at 16#388# range 0 .. 31;
      HASH_HR31     at 16#38C# range 0 .. 31;
      HASH_HR32     at 16#390# range 0 .. 31;
      HASH_HR33     at 16#394# range 0 .. 31;
      HASH_HR34     at 16#398# range 0 .. 31;
      HASH_HR35     at 16#39C# range 0 .. 31;
      HASH_HR36     at 16#3A0# range 0 .. 31;
      HASH_HR37     at 16#3A4# range 0 .. 31;
      HASH_HR38     at 16#3A8# range 0 .. 31;
      HASH_HR39     at 16#3AC# range 0 .. 31;
      HASH_HR40     at 16#3B0# range 0 .. 31;
      HASH_HR41     at 16#3B4# range 0 .. 31;
      HASH_HR42     at 16#3B8# range 0 .. 31;
      HASH_HR43     at 16#3BC# range 0 .. 31;
      HASH_HR44     at 16#3C0# range 0 .. 31;
      HASH_HR45     at 16#3C4# range 0 .. 31;
      HASH_HR46     at 16#3C8# range 0 .. 31;
      HASH_HR47     at 16#3CC# range 0 .. 31;
      HASH_HR48     at 16#3D0# range 0 .. 31;
      HASH_HR49     at 16#3D4# range 0 .. 31;
      HASH_HWCFGR   at 16#3F0# range 0 .. 31;
      HASH_VERR     at 16#3F4# range 0 .. 31;
      HASH_IPIDR    at 16#3F8# range 0 .. 31;
      HASH_SIDR     at 16#3FC# range 0 .. 31;
   end record;

   --  HASH register bank
   HASH_Periph : aliased HASH_Peripheral
     with Import, Address => HASH_Base;

   --  HASH register bank
   HASH_S_Periph : aliased HASH_Peripheral
     with Import, Address => HASH_S_Base;

end STM32_SVD.HASH;
