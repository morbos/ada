--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.CRYP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CRYP_CR_ALGOMODE_Field is HAL.UInt3;
   subtype CRYP_CR_DATATYPE_Field is HAL.UInt2;
   subtype CRYP_CR_KEYSIZE_Field is HAL.UInt2;
   subtype CRYP_CR_GCM_CCMPH_Field is HAL.UInt2;
   subtype CRYP_CR_NPBLB_Field is HAL.UInt4;
   subtype CRYP_CR_KMOD_Field is HAL.UInt2;

   --  CRYP control register
   type CRYP_CR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Algorithm direction This bit selects the algorithm direction.
      --  Attempts to write the bit field are ignored when BUSY is set.
      ALGODIR        : Boolean := False;
      --  ALGOMODE[2:0]: Algorithm mode This bit field selects the
      --  algorithm/chaining mode. Others: Reserved Changing ALGOMODE[3:0] from
      --  AES algorithm to DES or TDES (or the reverse) clears KEYVALID.
      --  KEYVALID is not cleared when the algorithm type is kept between two
      --  ALGOMODE[3:0], that is between TDES-ECB and TDES-CBC or between
      --  AES-ECB and AES_CTR. Attempts to write the bit field are ignored when
      --  BUSY is set.
      ALGOMODE       : CRYP_CR_ALGOMODE_Field := 16#0#;
      --  Data type This bit field defines the format of data written in the
      --  CRYP_DINR register or read from the CRYP_DOUTR register, through
      --  selecting the mode of data swapping. This swapping is defined in
      --  Section59.4.16: CRYP data registers and data swapping. Attempts to
      --  write the bit field are ignored when BUSY is set.
      DATATYPE       : CRYP_CR_DATATYPE_Field := 16#0#;
      --  Key size selection This bit field defines the key length in bits of
      --  the key used by CRYP in AES mode (that is, it has no effect in the
      --  DES or TDES modes). When KEYSIZE is changed, KEYVALID bit is cleared.
      --  Attempts to write the bit field are ignored when BUSY is set.
      KEYSIZE        : CRYP_CR_KEYSIZE_Field := 16#0#;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  FIFO flush This bit enables/disables the flushing of CRYP input and
      --  output FIFOs. Reading this bit always returns 0. When CRYPEN is
      --  cleared, writing this bit to 1 flushes both input and output FIFOs
      --  (that is read and write pointers of the FIFOs are reset). FFLUSH bit
      --  must be set when BUSY is cleared, otherwise the FIFO is flushed, but
      --  the block being processed may be pushed into the output FIFO just
      --  after the flush operation, resulting in a non-empty FIFO condition.
      --  Attempts to write FFLUSH are ignored when CRYPEN is set.
      FFLUSH         : Boolean := False;
      --  CRYP enable This bit enables/disables the CRYP peripheral. This bit
      --  is automatically cleared by hardware upon the completion of the key
      --  preparation (ALGOMODE[3:0] at 0x7) and upon the completion of
      --  GCM/GMAC/CCM initialization phase. The bit cannot be set as long as
      --  KEYVALID is cleared.
      CRYPEN         : Boolean := False;
      --  GCM or CCM phase selection This bit field selects the phase,
      --  applicable only with GCM, GMAC or CCM chaining modes. Attempts to
      --  write the bit field are ignored when BUSY is set.
      GCM_CCMPH      : CRYP_CR_GCM_CCMPH_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  ALGOMODE[3]
      ALGOMODE_1     : Boolean := False;
      --  Number of padding bytes in last block This padding information must
      --  be filled by software before processing the last block of GCM payload
      --  encryption or CCM payload decryption, otherwise authentication tag
      --  computation is incorrect. ... Attempts to write the bit field are
      --  ignored when BUSY is set.
      NPBLB          : CRYP_CR_NPBLB_Field := 16#0#;
      --  Key mode selection This bit field defines how the CRYP key can be
      --  used by the application. KEYSIZE must be correctly initialized when
      --  setting KMOD[1:0] different from zero. Others: Reserved Shared-key
      --  mode can only be used in AES mode. Attempts to write the bit field
      --  are ignored when BUSY is set.
      KMOD           : CRYP_CR_KMOD_Field := 16#0#;
      --  unspecified
      Reserved_26_30 : HAL.UInt5 := 16#0#;
      --  CRYP peripheral software reset Setting the bit resets the CRYP
      --  peripheral, putting all registers to their default values, except the
      --  IPRST bit itself. This bit must be kept cleared while writing any
      --  configuration registers.
      IPRST          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRYP_CR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      ALGODIR        at 0 range 2 .. 2;
      ALGOMODE       at 0 range 3 .. 5;
      DATATYPE       at 0 range 6 .. 7;
      KEYSIZE        at 0 range 8 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      FFLUSH         at 0 range 14 .. 14;
      CRYPEN         at 0 range 15 .. 15;
      GCM_CCMPH      at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      ALGOMODE_1     at 0 range 19 .. 19;
      NPBLB          at 0 range 20 .. 23;
      KMOD           at 0 range 24 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      IPRST          at 0 range 31 .. 31;
   end record;

   --  CRYP status register
   type CRYP_SR_Register is record
      --  Read-only. Input FIFO empty flag
      IFEM          : Boolean;
      --  Read-only. Input FIFO not full flag
      IFNF          : Boolean;
      --  Read-only. Output FIFO not empty flag
      OFNE          : Boolean;
      --  Read-only. Output FIFO full flag
      OFFU          : Boolean;
      --  Read-only. Busy bit This flag indicates whether CRYP is idle or busy.
      --  CRYP is flagged as idle when disabled (CRYPEN=0) or when the AES or
      --  DES core is not processing any data. It happens when the last
      --  processing has completed, or CRYP is waiting for enough data in the
      --  input FIFO or enough free space in the output FIFO (that is in each
      --  case at least 2 words in the DES, 4 words in the AES). CRYP is
      --  flagged as busy when processing a block data, preparing a key (AES
      --  ECB or CBC decryption only), or transferring a shared key from SAES
      --  peripheral.
      BUSY          : Boolean;
      --  unspecified
      Reserved_5_5  : HAL.Bit;
      --  Read-only. Key error flag This read-only bit is set by hardware when
      --  key information failed to load into key registers. KERF is triggered
      --  upon any of the following errors: CRYP_KxR/LR register write does not
      --  respect the correct order (refer to Section59.4.17: CRYP key
      --  registers for details). CRYP fails to load the AES key shared by SAES
      --  peripheral (KMOD=0x2). Application wrote KMOD=0x2 with ALGOMODE[3:0]
      --  selecting either DES or TDES algorithm. KERF must be cleared by the
      --  application software, otherwise KEYVALID cannot be set. It can be
      --  done through IPRST bit of CRYP_CR, or when a correct key writing
      --  sequence starts.
      KERF          : Boolean;
      --  Read-only. Key valid flag This read-only bit is set by hardware when
      --  the key of size defined by KEYSIZE is loaded in CRYP_KxR/LR key
      --  registers. It is valid for both AES and DES/TDES algorithms. The
      --  CRYPEN bit can only be set when KEYVALID is set. In normal mode when
      --  KMOD[1:0] is at zero, the key must be written in the key registers in
      --  the correct sequence, otherwise the KERF flag is set and KEYVALID
      --  remains cleared. When KMOD[1:0] is different from zero, the BUSY flag
      --  is automatically set by CRYP. When the key is loaded successfully,
      --  BUSY is cleared and KEYVALID set. Upon an error, KERF is set, BUSY
      --  cleared and KEYVALID remains cleared. If set, KERF must be cleared,
      --  otherwise KEYVALID cannot be set. For further information on key
      --  loading, refer to Section59.4.17: CRYP key registers.
      KEYVALID      : Boolean;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRYP_SR_Register use record
      IFEM          at 0 range 0 .. 0;
      IFNF          at 0 range 1 .. 1;
      OFNE          at 0 range 2 .. 2;
      OFFU          at 0 range 3 .. 3;
      BUSY          at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      KERF          at 0 range 6 .. 6;
      KEYVALID      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  CRYP DMA control register
   type CRYP_DMACR_Register is record
      --  DMA input enable When this bit is set, DMA requests are automatically
      --  generated by the peripheral during the input data phase.
      DIEN          : Boolean := False;
      --  DMA output enable When this bit is set, DMA requests are
      --  automatically generated by the peripheral during the output data
      --  phase.
      DOEN          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRYP_DMACR_Register use record
      DIEN          at 0 range 0 .. 0;
      DOEN          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  CRYP interrupt mask set/clear register
   type CRYP_IMSCR_Register is record
      --  Input FIFO service interrupt mask This bit enables or disables
      --  (masks) the CRYP input FIFO service interrupt generation when INRIS
      --  is set.
      INIM          : Boolean := False;
      --  Output FIFO service interrupt mask This bit enables or disables
      --  (masks) the CRYP output FIFO service interrupt generation when OUTRIS
      --  is set.
      OUTIM         : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRYP_IMSCR_Register use record
      INIM          at 0 range 0 .. 0;
      OUTIM         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  CRYP raw interrupt status register
   type CRYP_RISR_Register is record
      --  Read-only. Input FIFO service raw interrupt status This read-only bit
      --  is set by hardware when an input FIFO flag (IFNF or IFEM) is set in
      --  CRYP_SR register, regardless of the INIM mask bit value in CRYP_IMSCR
      --  register.
      INRIS         : Boolean;
      --  Read-only. Output FIFO service raw interrupt status This read-only
      --  bit is set by hardware when an output FIFO flag (OFFU or OFNE) is set
      --  in CRYP_SR register, regardless of the OUTIM mask bit value in
      --  CRYP_IMSCR register.
      OUTRIS        : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRYP_RISR_Register use record
      INRIS         at 0 range 0 .. 0;
      OUTRIS        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  CRYP masked interrupt status register
   type CRYP_MISR_Register is record
      --  Read-only. Input FIFO service masked interrupt status This read-only
      --  bit is set by hardware when an input FIFO flag (IFNF or IFEM) is set
      --  in CRYP_SR register. If the INIM mask bit is cleared in CRYP_IMSCR
      --  register, the INMIS bit stays cleared (masked). The INMIS bit is
      --  cleared by writing data to the input FIFO until IFEM flag is cleared
      --  (there is at least one word in input FIFO), or by clearing CRYPEN,
      --  When CRYP is disabled, INMIS bit stays low even if the input FIFO is
      --  empty.
      INMIS         : Boolean;
      --  Read-only. Output FIFO service masked interrupt status This read-only
      --  bit is set by hardware when an output FIFO flag (OFFU or OFNE) is set
      --  in CRYP_SR register. If the OUTIM mask bit is cleared in CRYP_IMSCR
      --  register, the OUTMIS bit stays cleared (masked). The OUTMIS bit is
      --  cleared by reading data from the output FIFO until OFNE flag is
      --  cleared (output FIFO empty). It is not cleared by disabling CRYP with
      --  CRYPEN bit.
      OUTMIS        : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRYP_MISR_Register use record
      INMIS         at 0 range 0 .. 0;
      OUTMIS        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  CRYP_HWCFGR_CFG array element
   subtype CRYP_HWCFGR_CFG_Element is HAL.UInt4;

   --  CRYP_HWCFGR_CFG array
   type CRYP_HWCFGR_CFG_Field_Array is array (1 .. 4)
     of CRYP_HWCFGR_CFG_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for CRYP_HWCFGR_CFG
   type CRYP_HWCFGR_CFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFG as a value
            Val : HAL.UInt16;
         when True =>
            --  CFG as an array
            Arr : CRYP_HWCFGR_CFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for CRYP_HWCFGR_CFG_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  CRYP hardware configuration register
   type CRYP_HWCFGR_Register is record
      --  Read-only. Hardware Generic 1 This field returns the tdes_impl
      --  generic value (0x1).
      CFG            : CRYP_HWCFGR_CFG_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRYP_HWCFGR_Register use record
      CFG            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CRYP_VERR_MINVER_Field is HAL.UInt4;
   subtype CRYP_VERR_MAJVER_Field is HAL.UInt4;

   --  CRYP version register
   type CRYP_VERR_Register is record
      --  Read-only. CRYP processor minor version This field returns the CRYP
      --  processor minor version.
      MINVER        : CRYP_VERR_MINVER_Field;
      --  Read-only. CRYP processor major version This field returns the CRYP
      --  processor major version.
      MAJVER        : CRYP_VERR_MAJVER_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRYP_VERR_Register use record
      MINVER        at 0 range 0 .. 3;
      MAJVER        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CRYP address block description
   type CRYP_Peripheral is record
      --  CRYP control register
      CRYP_CR         : aliased CRYP_CR_Register;
      --  CRYP status register
      CRYP_SR         : aliased CRYP_SR_Register;
      --  CRYP data input register
      CRYP_DINR       : aliased HAL.UInt32;
      --  CRYP data output register
      CRYP_DOUTR      : aliased HAL.UInt32;
      --  CRYP DMA control register
      CRYP_DMACR      : aliased CRYP_DMACR_Register;
      --  CRYP interrupt mask set/clear register
      CRYP_IMSCR      : aliased CRYP_IMSCR_Register;
      --  CRYP raw interrupt status register
      CRYP_RISR       : aliased CRYP_RISR_Register;
      --  CRYP masked interrupt status register
      CRYP_MISR       : aliased CRYP_MISR_Register;
      --  CRYP key register 0L
      CRYP_K0LR       : aliased HAL.UInt32;
      --  CRYP key register 0R
      CRYP_K0RR       : aliased HAL.UInt32;
      --  CRYP key register 1L
      CRYP_K1LR       : aliased HAL.UInt32;
      --  CRYP key register 1R
      CRYP_K1RR       : aliased HAL.UInt32;
      --  CRYP key register 2L
      CRYP_K2LR       : aliased HAL.UInt32;
      --  CRYP key register 2R
      CRYP_K2RR       : aliased HAL.UInt32;
      --  CRYP key register 3L
      CRYP_K3LR       : aliased HAL.UInt32;
      --  CRYP key register 3R
      CRYP_K3RR       : aliased HAL.UInt32;
      --  CRYP initialization vector register 0L
      CRYP_IV0LR      : aliased HAL.UInt32;
      --  CRYP initialization vector register 0R
      CRYP_IV0RR      : aliased HAL.UInt32;
      --  CRYP initialization vector register 1L
      CRYP_IV1LR      : aliased HAL.UInt32;
      --  CRYP initialization vector register 1R
      CRYP_IV1RR      : aliased HAL.UInt32;
      --  CRYP context swap GCM-CCM registers
      CRYP_CSGCMCCM0R : aliased HAL.UInt32;
      --  CRYP context swap GCM-CCM registers
      CRYP_CSGCMCCM1R : aliased HAL.UInt32;
      --  CRYP context swap GCM-CCM registers
      CRYP_CSGCMCCM2R : aliased HAL.UInt32;
      --  CRYP context swap GCM-CCM registers
      CRYP_CSGCMCCM3R : aliased HAL.UInt32;
      --  CRYP context swap GCM-CCM registers
      CRYP_CSGCMCCM4R : aliased HAL.UInt32;
      --  CRYP context swap GCM-CCM registers
      CRYP_CSGCMCCM5R : aliased HAL.UInt32;
      --  CRYP context swap GCM-CCM registers
      CRYP_CSGCMCCM6R : aliased HAL.UInt32;
      --  CRYP context swap GCM-CCM registers
      CRYP_CSGCMCCM7R : aliased HAL.UInt32;
      --  CRYP context swap GCM registers
      CRYP_CSGCM0R    : aliased HAL.UInt32;
      --  CRYP context swap GCM registers
      CRYP_CSGCM1R    : aliased HAL.UInt32;
      --  CRYP context swap GCM registers
      CRYP_CSGCM2R    : aliased HAL.UInt32;
      --  CRYP context swap GCM registers
      CRYP_CSGCM3R    : aliased HAL.UInt32;
      --  CRYP context swap GCM registers
      CRYP_CSGCM4R    : aliased HAL.UInt32;
      --  CRYP context swap GCM registers
      CRYP_CSGCM5R    : aliased HAL.UInt32;
      --  CRYP context swap GCM registers
      CRYP_CSGCM6R    : aliased HAL.UInt32;
      --  CRYP context swap GCM registers
      CRYP_CSGCM7R    : aliased HAL.UInt32;
      --  CRYP hardware configuration register
      CRYP_HWCFGR     : aliased CRYP_HWCFGR_Register;
      --  CRYP version register
      CRYP_VERR       : aliased CRYP_VERR_Register;
      --  CRYP identification
      CRYP_IPIDR      : aliased HAL.UInt32;
      --  CRYP size identification register
      CRYP_SIDR       : aliased HAL.UInt32;
   end record
     with Volatile;

   for CRYP_Peripheral use record
      CRYP_CR         at 16#0# range 0 .. 31;
      CRYP_SR         at 16#4# range 0 .. 31;
      CRYP_DINR       at 16#8# range 0 .. 31;
      CRYP_DOUTR      at 16#C# range 0 .. 31;
      CRYP_DMACR      at 16#10# range 0 .. 31;
      CRYP_IMSCR      at 16#14# range 0 .. 31;
      CRYP_RISR       at 16#18# range 0 .. 31;
      CRYP_MISR       at 16#1C# range 0 .. 31;
      CRYP_K0LR       at 16#20# range 0 .. 31;
      CRYP_K0RR       at 16#24# range 0 .. 31;
      CRYP_K1LR       at 16#28# range 0 .. 31;
      CRYP_K1RR       at 16#2C# range 0 .. 31;
      CRYP_K2LR       at 16#30# range 0 .. 31;
      CRYP_K2RR       at 16#34# range 0 .. 31;
      CRYP_K3LR       at 16#38# range 0 .. 31;
      CRYP_K3RR       at 16#3C# range 0 .. 31;
      CRYP_IV0LR      at 16#40# range 0 .. 31;
      CRYP_IV0RR      at 16#44# range 0 .. 31;
      CRYP_IV1LR      at 16#48# range 0 .. 31;
      CRYP_IV1RR      at 16#4C# range 0 .. 31;
      CRYP_CSGCMCCM0R at 16#50# range 0 .. 31;
      CRYP_CSGCMCCM1R at 16#54# range 0 .. 31;
      CRYP_CSGCMCCM2R at 16#58# range 0 .. 31;
      CRYP_CSGCMCCM3R at 16#5C# range 0 .. 31;
      CRYP_CSGCMCCM4R at 16#60# range 0 .. 31;
      CRYP_CSGCMCCM5R at 16#64# range 0 .. 31;
      CRYP_CSGCMCCM6R at 16#68# range 0 .. 31;
      CRYP_CSGCMCCM7R at 16#6C# range 0 .. 31;
      CRYP_CSGCM0R    at 16#70# range 0 .. 31;
      CRYP_CSGCM1R    at 16#74# range 0 .. 31;
      CRYP_CSGCM2R    at 16#78# range 0 .. 31;
      CRYP_CSGCM3R    at 16#7C# range 0 .. 31;
      CRYP_CSGCM4R    at 16#80# range 0 .. 31;
      CRYP_CSGCM5R    at 16#84# range 0 .. 31;
      CRYP_CSGCM6R    at 16#88# range 0 .. 31;
      CRYP_CSGCM7R    at 16#8C# range 0 .. 31;
      CRYP_HWCFGR     at 16#3F0# range 0 .. 31;
      CRYP_VERR       at 16#3F4# range 0 .. 31;
      CRYP_IPIDR      at 16#3F8# range 0 .. 31;
      CRYP_SIDR       at 16#3FC# range 0 .. 31;
   end record;

   --  CRYP address block description
   CRYP_Periph : aliased CRYP_Peripheral
     with Import, Address => CRYP_Base;

   --  CRYP address block description
   CRYP1_S_Periph : aliased CRYP_Peripheral
     with Import, Address => CRYP1_S_Base;

   --  CRYP address block description
   CRYP2_Periph : aliased CRYP_Peripheral
     with Import, Address => CRYP2_Base;

   --  CRYP address block description
   CRYP2_S_Periph : aliased CRYP_Peripheral
     with Import, Address => CRYP2_S_Base;

end STM32_SVD.CRYP;
