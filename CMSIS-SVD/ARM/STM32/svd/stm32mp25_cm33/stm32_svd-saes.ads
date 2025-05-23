--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.SAES is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SAES_CR_DATATYPE_Field is HAL.UInt2;
   subtype SAES_CR_MODE_Field is HAL.UInt2;
   subtype SAES_CR_CHMOD_Field is HAL.UInt2;
   subtype SAES_CR_GCMPH_Field is HAL.UInt2;
   subtype SAES_CR_NPBLB_Field is HAL.UInt4;
   subtype SAES_CR_KMOD_Field is HAL.UInt2;
   subtype SAES_CR_KSHAREID_Field is HAL.UInt2;
   subtype SAES_CR_KEYSEL_Field is HAL.UInt3;

   --  SAES control register
   type SAES_CR_Register is record
      --  SAES enable This bit enables/disables the SAES peripheral: At any
      --  moment, clearing then setting the bit re-initializes the SAES
      --  peripheral. This bit is automatically cleared by hardware upon the
      --  completion of the key preparation (Mode 2) and upon the completion of
      --  GCM/GMAC/CCM initial phase. The bit cannot be set as long as
      --  KEYVALID=0 nor along with the following settings: KMOD[1:0]=01 +
      --  CHMOD[2:0]=011 and KMOD[1:0]=01 + CHMOD[2:0]=010 + MODE[1:0]=00.
      --  Note: With KMOD[1:0] other than 00, use the IPRST bit rather than the
      --  bit EN.
      EN             : Boolean := False;
      --  Data type selection This bit field defines the format of data written
      --  in the SAES_DINR register or read from the SAES_DOUTR register,
      --  through selecting the mode of data swapping: For more details, refer
      --  to Section58.4.15: SAES data registers and data swapping. Attempts to
      --  write the bit field are ignored when the BUSY flag of SAES_SR
      --  register is set, as well as when the EN bit of the SAES_CR register
      --  is set before the write access and it is not cleared by that write
      --  access.
      DATATYPE       : SAES_CR_DATATYPE_Field := 16#0#;
      --  SAES operating mode This bit field selects the SAES operating mode:
      --  Attempts to write the bit field are ignored when the BUSY flag of
      --  SAES_SR register is set, as well as when the EN bit of the SAES_CR
      --  register is set before the write access and it is not cleared by that
      --  write access.
      MODE           : SAES_CR_MODE_Field := 16#0#;
      --  CHMOD[1:0]: Chaining mode selection This bit field selects the AES
      --  chaining mode: others: Reserved Attempts to write the bit field are
      --  ignored when the BUSY flag of SAES_SR register is set, as well as
      --  when the EN bit of the SAES_CR register is set before the write
      --  access and it is not cleared by that write access.
      CHMOD          : SAES_CR_CHMOD_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  DMA input enable This bit enables/disables data transferring with
      --  DMA, in the input phase: When the bit is set, DMA requests are
      --  automatically generated by SAES during the input data phase. This
      --  feature is only effective when Mode 1 or Mode 3 is selected through
      --  the MODE[1:0] bit field. It is not effective for Mode 2 (key
      --  derivation).
      DMAINEN        : Boolean := False;
      --  DMA output enable This bit enables/disables data transferring with
      --  DMA, in the output phase: When the bit is set, DMA requests are
      --  automatically generated by SAES during the output data phase. This
      --  feature is only effective when Mode 1 or Mode 3 is selected through
      --  the MODE[1:0] bit field. It is not effective for Mode 2 (key
      --  derivation).
      DMAOUTEN       : Boolean := False;
      --  GCM or CCM phase selection This bit field selects the phase of GCM,
      --  GMAC or CCM algorithm: The bit field has no effect if other than GCM,
      --  GMAC or CCM algorithms are selected (through the ALGOMODE bit field).
      GCMPH          : SAES_CR_GCMPH_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHMOD[2]
      CHMOD_1        : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Key size selection This bit field defines the length of the key used
      --  in the SAES cryptographic core, in bits: When KMOD[1:0]=01 or 10
      --  KEYSIZE also defines the length of the key to encrypt or decrypt.
      --  Attempts to write the bit are ignored when the BUSY flag of SAES_SR
      --  register is set, as well as when the EN bit of the SAES_CR register
      --  is set before the write access and it is not cleared by that write
      --  access.
      KEYSIZE        : Boolean := False;
      --  Key protection When set, hardware-based key protection is enabled.
      --  Attempts to write the bit are ignored when the BUSY flag of SAES_SR
      --  register is set, as well as when the EN bit of the SAES_CR register
      --  is set before the write access and it is not cleared by that write
      --  access.
      KEYPROT        : Boolean := False;
      --  Number of padding bytes in last block The bit field sets the number
      --  of padding bytes in last block of payload: ...
      NPBLB          : SAES_CR_NPBLB_Field := 16#0#;
      --  Key mode selection The bit field defines how the SAES key can be used
      --  by the application: Others: Reserved With normal key selection, the
      --  key registers are freely usable, no specific usage or protection
      --  applies to SAES_DIN and SAES_DOUT registers. With wrapped key
      --  selection, the key loaded in key registers can only be used to
      --  encrypt or decrypt AES keys. Hence, when a decryption is selected in
      --  Wrapped-key mode read-as-zero SAES_DOUT register is automatically
      --  loaded into SAES key registers after a successful decryption process.
      --  With shared key selection, after a successful decryption process,
      --  SAES key registers are shared with the peripheral described in
      --  KSHAREID[1:0] bit field. This sharing is valid only while
      --  KMOD[1:0]=10 and KEYVALID=1. When a decryption is selected,
      --  read-as-zero SAES_DOUT register is automatically loaded into SAES key
      --  registers after a successful decryption process. With KMOD[1:0] other
      --  than zero, any attempt to configure the SAES peripheral for use by an
      --  application belonging to a different security domain (secure,
      --  nonsecure, or another CPU) results in automatic key erasure and
      --  setting of the KEIF flag.rAttempts to write the bit field are ignored
      --  when the BUSY flag of SAES_SR register is set, as well as when the EN
      --  bit of the SAES_CR register is set before the write access and it is
      --  not cleared by that write access.
      KMOD           : SAES_CR_KMOD_Field := 16#0#;
      --  Key share identification This bit field defines, at the end of a
      --  decryption process with KMOD[1:0]=10 (shared key), which target can
      --  read the SAES key registers using a dedicated hardware bus. Others:
      --  Reserved Attempts to write the bit field are ignored when the BUSY
      --  flag of SAES_SR register is set, as well as when the EN bit of the
      --  SAES_CR register is set before the write access and it is not cleared
      --  by that write access.
      KSHAREID       : SAES_CR_KSHAREID_Field := 16#0#;
      --  Key selection The bit field defines the source of the key information
      --  to use in the AES cryptographic core. Others: Reserved (if used,
      --  unfreeze SAES with IPRST) When KEYSEL is different from zero,
      --  selected key value is available in key registers when BUSY bit is
      --  cleared and KEYVALID is set in the SAES_SR register. Otherwise, the
      --  key error flag KEIF is set. Repeated writing of KEYSEL[2:0] with the
      --  same non-zero value only triggers the loading of DHUK or BHK if
      --  KEYVALID=0. When the application software changes the key selection
      --  by writing the KEYSEL[2:0] bit field, the key registers are
      --  immediately erased and the KEYVALID flag cleared. At the end of the
      --  decryption process, if KMOD[1:0] is other than zero, KEYSEL[2:0] is
      --  cleared. With the bit field value other than zero and KEYVALID set,
      --  the application cannot transfer the ownership of SAES with a loaded
      --  key to an application running in another security context (such as
      --  secure, nonsecure, specific CPU). More specifically, when security or
      --  Compartment ID of an access to any register does not match the
      --  information recorded by SAES, the KEIF flag is set. Attempts to write
      --  the bit field are ignored when the BUSY flag of SAES_SR register is
      --  set, as well as when the EN bit of the SAES_CR register is set before
      --  the write access and it is not cleared by that write access.
      KEYSEL         : SAES_CR_KEYSEL_Field := 16#0#;
      --  SAES peripheral software reset Setting the bit resets the SAES
      --  peripheral, putting all registers to their default values, except the
      --  IPRST bit itself and the SAES_DPACFG register. Hence, any
      --  key-relative data is lost. For this reason, it is recommended to set
      --  the bit before handing over the SAES to a less secure application.
      --  The bit must be low while writing any configuration registers.
      IPRST          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAES_CR_Register use record
      EN             at 0 range 0 .. 0;
      DATATYPE       at 0 range 1 .. 2;
      MODE           at 0 range 3 .. 4;
      CHMOD          at 0 range 5 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      DMAINEN        at 0 range 11 .. 11;
      DMAOUTEN       at 0 range 12 .. 12;
      GCMPH          at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CHMOD_1        at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      KEYSIZE        at 0 range 18 .. 18;
      KEYPROT        at 0 range 19 .. 19;
      NPBLB          at 0 range 20 .. 23;
      KMOD           at 0 range 24 .. 25;
      KSHAREID       at 0 range 26 .. 27;
      KEYSEL         at 0 range 28 .. 30;
      IPRST          at 0 range 31 .. 31;
   end record;

   --  SAES status register
   type SAES_SR_Register is record
      --  Read-only. Computation completed flag This bit mirrors the CCF bit of
      --  the SAES_ISR register.
      CCF           : Boolean;
      --  Read-only. Read error flag This flag indicates the detection of an
      --  unexpected read operation from the SAES_DOUTR register (during
      --  computation or data input phase): The flag is set by hardware. It is
      --  cleared by software upon setting the RWEIF bit of the SAES_ICR
      --  register. Upon the flag setting, an interrupt is generated if enabled
      --  through the RWEIE bit of the SAES_ICR register. The flag setting has
      --  no impact on the SAES operation. Unexpected read returns zero.
      RDERR         : Boolean;
      --  Read-only. Write error This flag indicates the detection of an
      --  unexpected write operation to the SAES_DINR register (during
      --  computation or data output phase): The flag is set by hardware. It is
      --  cleared by software upon setting the RWEIF bit of the SAES_ICR
      --  register. Upon the flag setting, an interrupt is generated if enabled
      --  through the RWEIE bit of the SAES_ICR register. The flag setting has
      --  no impact on the SAES operation. Unexpected write is ignored.
      WRERR         : Boolean;
      --  Read-only. Busy This flag indicates whether SAES is idle or busy
      --  during GCM payload encryption phase: The flag is also set upon SAES
      --  initialization, upon fetching random number from the RNG, or upon
      --  transferring a shared key to a target peripheral. When GCM encryption
      --  is selected, the flag must be at zero before selecting the GCM final
      --  phase.
      BUSY          : Boolean;
      --  unspecified
      Reserved_4_6  : HAL.UInt3;
      --  Read-only. Key Valid flag This bit is set by hardware when the amount
      --  of key information defined by KEYSIZE in SAES_CR has been loaded in
      --  SAES_KEYx key registers. In normal mode when KEYSEL equals to zero,
      --  the application must write the key registers in the correct sequence,
      --  otherwise the KEIF flag of the SAES_ISR register is set and KEYVALID
      --  stays at zero. When KEYSEL is different from zero the BUSY flag is
      --  automatically set by SAES. When key is loaded successfully, the BUSY
      --  flag is cleared and KEYVALID set. Upon an error, the KEIF flag of the
      --  SAES_ISR register is set, the BUSY flag cleared and KEYVALID kept at
      --  zero. When the KEIF flag is set, the application must clear it
      --  through the SAES_ICR register, otherwise KEYVALID cannot be set. See
      --  the KEIF bit description for more details. For more information on
      --  key loading, refer to Section58.4.16: SAES key registers.
      KEYVALID      : Boolean;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAES_SR_Register use record
      CCF           at 0 range 0 .. 0;
      RDERR         at 0 range 1 .. 1;
      WRERR         at 0 range 2 .. 2;
      BUSY          at 0 range 3 .. 3;
      Reserved_4_6  at 0 range 4 .. 6;
      KEYVALID      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  SAES interrupt enable register
   type SAES_IER_Register is record
      --  Computation complete flag interrupt enable This bit enables or
      --  disables (masks) the SAES interrupt generation when CCF (computation
      --  complete flag) is set.
      CCFIE         : Boolean := False;
      --  Read or write error interrupt enable This bit enables or disables
      --  (masks) the SAES interrupt generation when RWEIF (read and/or write
      --  error flag) is set.
      RWEIE         : Boolean := False;
      --  Key error interrupt enable This bit enables or disables (masks) the
      --  SAES interrupt generation when KEIF (key error flag) is set.
      KEIE          : Boolean := False;
      --  RNG error interrupt enable This bit enables or disables (masks) the
      --  SAES interrupt generation when RNGEIF (RNG error flag) is set.
      RNGEIE        : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAES_IER_Register use record
      CCFIE         at 0 range 0 .. 0;
      RWEIE         at 0 range 1 .. 1;
      KEIE          at 0 range 2 .. 2;
      RNGEIE        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  SAES interrupt status register
   type SAES_ISR_Register is record
      --  Read-only. Computation complete flag This flag indicates whether the
      --  computation is completed: The flag is set by hardware upon the
      --  completion of the computation. It is cleared by software, upon
      --  setting the CCF bit of the SAES_ICR register. Upon the flag setting,
      --  an interrupt is generated if enabled through the CCFIE bit of the
      --  SAES_IER register. The flag is significant only when the DMAOUTEN bit
      --  is 0. It may stay high when DMA_EN is 1.
      CCF           : Boolean;
      --  Read-only. Read or write error interrupt flag This read-only bit is
      --  set by hardware when a RDERR or a WRERR error flag is set in the
      --  SAES_SR register. RWEIF bit is cleared when application sets the
      --  corresponding bit of SAES_ICR register. An interrupt is generated if
      --  the RWEIE bit has been previously set in the SAES_IER register. This
      --  flags has no meaning when key derivation mode is selected.
      RWEIF         : Boolean;
      --  Read-only. Key error interrupt flag This read-only bit is set by
      --  hardware when key information failed to load into key registers or
      --  key register usage is forbidden. Setting the corresponding bit of the
      --  SAES_ICR register clears the KEIF and generates interrupt if the KEIE
      --  bit of the SAES_IER register is set. KEIF is triggered upon any of
      --  the following errors: SAES fails to load the DHUK (KEYSEL=001 or
      --  100). SAES fails to load the BHK (KEYSEL=010 or 100) respecting the
      --  correct order. CRYP1 or CRYP2 fails to load the key shared by SAES
      --  peripheral (KMOD=10). When KEYVALID = 1 and (KEYPROT = 1 or KEYSEL is
      --  not 0x0), the security context of the application that loads the key
      --  (secure, nonsecure, or CPU) does not match the security or
      --  Compartment ID attribute of the access to SAES_CR or SAES_DOUT. In
      --  this case, KEYVALID and EN bits are cleared. SAES_KEYRx register
      --  write does not respect the correct order. (For KEYSIZE=0, SAES_KEYR0
      --  then SAES_KEYR1 then SAES_KEYR2 then SAES_KEYR3 register, or reverse.
      --  For KEYSIZE=1, SAES_KEYR0 then SAES_KEYR1 then SAES_KEYR2 then
      --  SAES_KEYR3 then SAES_KEYR4 then SAES_KEYR5 then SAES_KEYR6 then
      --  SAES_KEYR7, or reverse). KEIF must be cleared by the application
      --  software, otherwise KEYVALID cannot be set.
      KEIF          : Boolean;
      --  Read-only. RNG error interrupt flag This read-only bit is set by
      --  hardware when an error is detected on RNG bus interface (e.g. bad
      --  entropy). RNGEIE bit is cleared when application sets the
      --  corresponding bit of SAES_ICR register. An interrupt is generated if
      --  the RNGEIE bit has been previously set in the SAES_IER register.
      --  Clearing this bit triggers the reload of a new random number from RNG
      --  peripheral.
      RNGEIF        : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAES_ISR_Register use record
      CCF           at 0 range 0 .. 0;
      RWEIF         at 0 range 1 .. 1;
      KEIF          at 0 range 2 .. 2;
      RNGEIF        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  SAES interrupt clear register
   type SAES_ICR_Register is record
      --  Write-only. Computation complete flag clear Setting this bit clears
      --  the CCF status bit of the SAES_SR and SAES_ISR registers.
      CCF           : Boolean := False;
      --  Write-only. Read or write error interrupt flag clear Setting this bit
      --  clears the RWEIF status bit of the SAES_ISR register, and both RDERR
      --  and WRERR flags in the SAES_SR register.
      RWEIF         : Boolean := False;
      --  Write-only. Key error interrupt flag clear Setting this bit clears
      --  the KEIF status bit of the SAES_ISR register.
      KEIF          : Boolean := False;
      --  Write-only. RNG error interrupt flag clear Application must set this
      --  bit to clear the RNGEIF status bit in SAES_ISR register.
      RNGEIF        : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAES_ICR_Register use record
      CCF           at 0 range 0 .. 0;
      RWEIF         at 0 range 1 .. 1;
      KEIF          at 0 range 2 .. 2;
      RNGEIF        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SAES_VERR_MINREV_Field is HAL.UInt4;
   subtype SAES_VERR_MAJREV_Field is HAL.UInt4;

   --  SAES version register
   type SAES_VERR_Register is record
      --  Read-only. Minor revision This bit field returns the SAES peripheral
      --  minor version (0x2).
      MINREV        : SAES_VERR_MINREV_Field;
      --  Read-only. Major revision This bit field returns the SAES peripheral
      --  major version (0x3).
      MAJREV        : SAES_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAES_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SAES register block
   type SAES_Peripheral is record
      --  SAES control register
      SAES_CR     : aliased SAES_CR_Register;
      --  SAES status register
      SAES_SR     : aliased SAES_SR_Register;
      --  SAES data input register
      SAES_DINR   : aliased HAL.UInt32;
      --  SAES data output register
      SAES_DOUTR  : aliased HAL.UInt32;
      --  SAES key register 0
      SAES_KEYR0  : aliased HAL.UInt32;
      --  SAES key register 1
      SAES_KEYR1  : aliased HAL.UInt32;
      --  SAES key register 2
      SAES_KEYR2  : aliased HAL.UInt32;
      --  SAES key register 3
      SAES_KEYR3  : aliased HAL.UInt32;
      --  SAES initialization vector register 0
      SAES_IVR0   : aliased HAL.UInt32;
      --  SAES initialization vector register 1
      SAES_IVR1   : aliased HAL.UInt32;
      --  SAES initialization vector register 2
      SAES_IVR2   : aliased HAL.UInt32;
      --  SAES initialization vector register 3
      SAES_IVR3   : aliased HAL.UInt32;
      --  SAES key register 4
      SAES_KEYR4  : aliased HAL.UInt32;
      --  SAES key register 5
      SAES_KEYR5  : aliased HAL.UInt32;
      --  SAES key register 6
      SAES_KEYR6  : aliased HAL.UInt32;
      --  SAES key register 7
      SAES_KEYR7  : aliased HAL.UInt32;
      --  SAES suspend registers
      SAES_SUSP0R : aliased HAL.UInt32;
      --  SAES suspend registers
      SAES_SUSP1R : aliased HAL.UInt32;
      --  SAES suspend registers
      SAES_SUSP2R : aliased HAL.UInt32;
      --  SAES suspend registers
      SAES_SUSP3R : aliased HAL.UInt32;
      --  SAES suspend registers
      SAES_SUSP4R : aliased HAL.UInt32;
      --  SAES suspend registers
      SAES_SUSP5R : aliased HAL.UInt32;
      --  SAES suspend registers
      SAES_SUSP6R : aliased HAL.UInt32;
      --  SAES suspend registers
      SAES_SUSP7R : aliased HAL.UInt32;
      --  SAES interrupt enable register
      SAES_IER    : aliased SAES_IER_Register;
      --  SAES interrupt status register
      SAES_ISR    : aliased SAES_ISR_Register;
      --  SAES interrupt clear register
      SAES_ICR    : aliased SAES_ICR_Register;
      --  SAES version register
      SAES_VERR   : aliased SAES_VERR_Register;
      --  SAES identification register
      SAES_IPIDR  : aliased HAL.UInt32;
      --  SAES size ID register
      SAES_SIDR   : aliased HAL.UInt32;
   end record
     with Volatile;

   for SAES_Peripheral use record
      SAES_CR     at 16#0# range 0 .. 31;
      SAES_SR     at 16#4# range 0 .. 31;
      SAES_DINR   at 16#8# range 0 .. 31;
      SAES_DOUTR  at 16#C# range 0 .. 31;
      SAES_KEYR0  at 16#10# range 0 .. 31;
      SAES_KEYR1  at 16#14# range 0 .. 31;
      SAES_KEYR2  at 16#18# range 0 .. 31;
      SAES_KEYR3  at 16#1C# range 0 .. 31;
      SAES_IVR0   at 16#20# range 0 .. 31;
      SAES_IVR1   at 16#24# range 0 .. 31;
      SAES_IVR2   at 16#28# range 0 .. 31;
      SAES_IVR3   at 16#2C# range 0 .. 31;
      SAES_KEYR4  at 16#30# range 0 .. 31;
      SAES_KEYR5  at 16#34# range 0 .. 31;
      SAES_KEYR6  at 16#38# range 0 .. 31;
      SAES_KEYR7  at 16#3C# range 0 .. 31;
      SAES_SUSP0R at 16#40# range 0 .. 31;
      SAES_SUSP1R at 16#44# range 0 .. 31;
      SAES_SUSP2R at 16#48# range 0 .. 31;
      SAES_SUSP3R at 16#4C# range 0 .. 31;
      SAES_SUSP4R at 16#50# range 0 .. 31;
      SAES_SUSP5R at 16#54# range 0 .. 31;
      SAES_SUSP6R at 16#58# range 0 .. 31;
      SAES_SUSP7R at 16#5C# range 0 .. 31;
      SAES_IER    at 16#300# range 0 .. 31;
      SAES_ISR    at 16#304# range 0 .. 31;
      SAES_ICR    at 16#308# range 0 .. 31;
      SAES_VERR   at 16#3F4# range 0 .. 31;
      SAES_IPIDR  at 16#3F8# range 0 .. 31;
      SAES_SIDR   at 16#3FC# range 0 .. 31;
   end record;

   --  SAES register block
   SAES_Periph : aliased SAES_Peripheral
     with Import, Address => SAES_Base;

   --  SAES register block
   SAES_S_Periph : aliased SAES_Peripheral
     with Import, Address => SAES_S_Base;

end STM32_SVD.SAES;
