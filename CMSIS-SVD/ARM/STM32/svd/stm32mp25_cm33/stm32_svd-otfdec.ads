--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.OTFDEC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  OTFDEC control register
   type OTFDEC_CR_Register is record
      --  Encryption mode bit When this bit is set, OTFDEC is used in
      --  encryption mode, during which application can write clear text data
      --  then read back encrypted data. When this bit is cleared (default),
      --  OTFDEC is used in decryption mode, during which application only read
      --  back decrypted data. For both modes, cryptographic context (keys,
      --  nonces, firmware versions) must be properly initialized. When this
      --  bit is set, only data accesses are allowed (zeros are returned
      --  otherwise, and XONEIF is set). When MODE=11, enhanced encryption mode
      --  is automatically selected. Note: When ENC bit is set, no access to
      --  OCTOSPI must be done (registers and Memory-mapped region).
      ENC           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTFDEC_CR_Register use record
      ENC           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype OTFDEC_R1CFGR_MODE_Field is HAL.UInt2;
   subtype OTFDEC_R1CFGR_KEYCRC_Field is HAL.UInt8;
   subtype OTFDEC_R1CFGR_REG_VERSION_Field is HAL.UInt16;

   --  OTFDEC region 1 configuration register
   type OTFDEC_R1CFGR_Register is record
      --  region on-the-fly decryption enable Note: Garbage is decrypted if
      --  region context (version, key, nonce) is not valid when this bitisset.
      REG_EN       : Boolean := False;
      --  region config lock Note: This bit is set once. If this bit is set, it
      --  can only be reset to 0 if OTFDEC is reset. Setting this bit forces
      --  KEYLOCK bit to 1.
      CONFIGLOCK   : Boolean := False;
      --  region key lock Note: This bit is set once: if this bit is set, it
      --  can only be reset to 0 if the OTFDEC is reset.
      KEYLOCK      : Boolean := False;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  operating mode This bit field selects the OTFDEC operating mode for
      --  this region: Others: Reserved When MODE different 11, the standard
      --  AES encryption mode is activated. When either of the MODE bits are
      --  changed, the region key and associated CRC are zeroed.
      MODE         : OTFDEC_R1CFGR_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
      --  Read-only. region key 8-bit CRC When KEYLOCK=0, KEYCRC bit field is
      --  automatically computed by hardware while loading the key of this
      --  region in this exact sequence: KEYR0 then KEYR1 then KEYR2 then
      --  finally KEYR3 (all written once). A new computation starts as soon as
      --  a new valid sequence is initiated, and KEYCRC is read as zero until a
      --  valid sequence is completed. When KEYLOCK=1, KEYCRC remains unchanged
      --  until the next reset. CRC computation is an 8-bit checksum using the
      --  standard CRC-8-CCITT algorithm Xsup8/sup + Xsup2/sup + X + 1
      --  (according the convention). Source code is available in
      --  Section61.5.4. This field is read only. Note: CRC information is
      --  updated only after the last bit of the key has been written.
      KEYCRC       : OTFDEC_R1CFGR_KEYCRC_Field := 16#0#;
      --  region firmware version This 16-bit bit field must be correctly
      --  initialized before the region corresponding REG_EN bit is set in
      --  OTFDEC_RxCFGR.
      REG_VERSION  : OTFDEC_R1CFGR_REG_VERSION_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTFDEC_R1CFGR_Register use record
      REG_EN       at 0 range 0 .. 0;
      CONFIGLOCK   at 0 range 1 .. 1;
      KEYLOCK      at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      MODE         at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      KEYCRC       at 0 range 8 .. 15;
      REG_VERSION  at 0 range 16 .. 31;
   end record;

   subtype OTFDEC_R2CFGR_MODE_Field is HAL.UInt2;
   subtype OTFDEC_R2CFGR_KEYCRC_Field is HAL.UInt8;
   subtype OTFDEC_R2CFGR_REG_VERSION_Field is HAL.UInt16;

   --  OTFDEC region 2 configuration register
   type OTFDEC_R2CFGR_Register is record
      --  region on-the-fly decryption enable Note: Garbage is decrypted if
      --  region context (version, key, nonce) is not valid when this bitisset.
      REG_EN       : Boolean := False;
      --  region config lock Note: This bit is set once. If this bit is set, it
      --  can only be reset to 0 if OTFDEC is reset. Setting this bit forces
      --  KEYLOCK bit to 1.
      CONFIGLOCK   : Boolean := False;
      --  region key lock Note: This bit is set once: if this bit is set, it
      --  can only be reset to 0 if the OTFDEC is reset.
      KEYLOCK      : Boolean := False;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  operating mode This bit field selects the OTFDEC operating mode for
      --  this region: Others: Reserved When MODE different 11, the standard
      --  AES encryption mode is activated. When either of the MODE bits are
      --  changed, the region key and associated CRC are zeroed.
      MODE         : OTFDEC_R2CFGR_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
      --  Read-only. region key 8-bit CRC When KEYLOCK=0, KEYCRC bit field is
      --  automatically computed by hardware while loading the key of this
      --  region in this exact sequence: KEYR0 then KEYR1 then KEYR2 then
      --  finally KEYR3 (all written once). A new computation starts as soon as
      --  a new valid sequence is initiated, and KEYCRC is read as zero until a
      --  valid sequence is completed. When KEYLOCK=1, KEYCRC remains unchanged
      --  until the next reset. CRC computation is an 8-bit checksum using the
      --  standard CRC-8-CCITT algorithm Xsup8/sup + Xsup2/sup + X + 1
      --  (according the convention). Source code is available in
      --  Section61.5.4. This field is read only. Note: CRC information is
      --  updated only after the last bit of the key has been written.
      KEYCRC       : OTFDEC_R2CFGR_KEYCRC_Field := 16#0#;
      --  region firmware version This 16-bit bit field must be correctly
      --  initialized before the region corresponding REG_EN bit is set in
      --  OTFDEC_RxCFGR.
      REG_VERSION  : OTFDEC_R2CFGR_REG_VERSION_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTFDEC_R2CFGR_Register use record
      REG_EN       at 0 range 0 .. 0;
      CONFIGLOCK   at 0 range 1 .. 1;
      KEYLOCK      at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      MODE         at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      KEYCRC       at 0 range 8 .. 15;
      REG_VERSION  at 0 range 16 .. 31;
   end record;

   subtype OTFDEC_R3CFGR_MODE_Field is HAL.UInt2;
   subtype OTFDEC_R3CFGR_KEYCRC_Field is HAL.UInt8;
   subtype OTFDEC_R3CFGR_REG_VERSION_Field is HAL.UInt16;

   --  OTFDEC region 3 configuration register
   type OTFDEC_R3CFGR_Register is record
      --  region on-the-fly decryption enable Note: Garbage is decrypted if
      --  region context (version, key, nonce) is not valid when this bitisset.
      REG_EN       : Boolean := False;
      --  region config lock Note: This bit is set once. If this bit is set, it
      --  can only be reset to 0 if OTFDEC is reset. Setting this bit forces
      --  KEYLOCK bit to 1.
      CONFIGLOCK   : Boolean := False;
      --  region key lock Note: This bit is set once: if this bit is set, it
      --  can only be reset to 0 if the OTFDEC is reset.
      KEYLOCK      : Boolean := False;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  operating mode This bit field selects the OTFDEC operating mode for
      --  this region: Others: Reserved When MODE different 11, the standard
      --  AES encryption mode is activated. When either of the MODE bits are
      --  changed, the region key and associated CRC are zeroed.
      MODE         : OTFDEC_R3CFGR_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
      --  Read-only. region key 8-bit CRC When KEYLOCK=0, KEYCRC bit field is
      --  automatically computed by hardware while loading the key of this
      --  region in this exact sequence: KEYR0 then KEYR1 then KEYR2 then
      --  finally KEYR3 (all written once). A new computation starts as soon as
      --  a new valid sequence is initiated, and KEYCRC is read as zero until a
      --  valid sequence is completed. When KEYLOCK=1, KEYCRC remains unchanged
      --  until the next reset. CRC computation is an 8-bit checksum using the
      --  standard CRC-8-CCITT algorithm Xsup8/sup + Xsup2/sup + X + 1
      --  (according the convention). Source code is available in
      --  Section61.5.4. This field is read only. Note: CRC information is
      --  updated only after the last bit of the key has been written.
      KEYCRC       : OTFDEC_R3CFGR_KEYCRC_Field := 16#0#;
      --  region firmware version This 16-bit bit field must be correctly
      --  initialized before the region corresponding REG_EN bit is set in
      --  OTFDEC_RxCFGR.
      REG_VERSION  : OTFDEC_R3CFGR_REG_VERSION_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTFDEC_R3CFGR_Register use record
      REG_EN       at 0 range 0 .. 0;
      CONFIGLOCK   at 0 range 1 .. 1;
      KEYLOCK      at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      MODE         at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      KEYCRC       at 0 range 8 .. 15;
      REG_VERSION  at 0 range 16 .. 31;
   end record;

   subtype OTFDEC_R4CFGR_MODE_Field is HAL.UInt2;
   subtype OTFDEC_R4CFGR_KEYCRC_Field is HAL.UInt8;
   subtype OTFDEC_R4CFGR_REG_VERSION_Field is HAL.UInt16;

   --  OTFDEC region 4 configuration register
   type OTFDEC_R4CFGR_Register is record
      --  region on-the-fly decryption enable Note: Garbage is decrypted if
      --  region context (version, key, nonce) is not valid when this bitisset.
      REG_EN       : Boolean := False;
      --  region config lock Note: This bit is set once. If this bit is set, it
      --  can only be reset to 0 if OTFDEC is reset. Setting this bit forces
      --  KEYLOCK bit to 1.
      CONFIGLOCK   : Boolean := False;
      --  region key lock Note: This bit is set once: if this bit is set, it
      --  can only be reset to 0 if the OTFDEC is reset.
      KEYLOCK      : Boolean := False;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  operating mode This bit field selects the OTFDEC operating mode for
      --  this region: Others: Reserved When MODE different 11, the standard
      --  AES encryption mode is activated. When either of the MODE bits are
      --  changed, the region key and associated CRC are zeroed.
      MODE         : OTFDEC_R4CFGR_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
      --  Read-only. region key 8-bit CRC When KEYLOCK=0, KEYCRC bit field is
      --  automatically computed by hardware while loading the key of this
      --  region in this exact sequence: KEYR0 then KEYR1 then KEYR2 then
      --  finally KEYR3 (all written once). A new computation starts as soon as
      --  a new valid sequence is initiated, and KEYCRC is read as zero until a
      --  valid sequence is completed. When KEYLOCK=1, KEYCRC remains unchanged
      --  until the next reset. CRC computation is an 8-bit checksum using the
      --  standard CRC-8-CCITT algorithm Xsup8/sup + Xsup2/sup + X + 1
      --  (according the convention). Source code is available in
      --  Section61.5.4. This field is read only. Note: CRC information is
      --  updated only after the last bit of the key has been written.
      KEYCRC       : OTFDEC_R4CFGR_KEYCRC_Field := 16#0#;
      --  region firmware version This 16-bit bit field must be correctly
      --  initialized before the region corresponding REG_EN bit is set in
      --  OTFDEC_RxCFGR.
      REG_VERSION  : OTFDEC_R4CFGR_REG_VERSION_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTFDEC_R4CFGR_Register use record
      REG_EN       at 0 range 0 .. 0;
      CONFIGLOCK   at 0 range 1 .. 1;
      KEYLOCK      at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      MODE         at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      KEYCRC       at 0 range 8 .. 15;
      REG_VERSION  at 0 range 16 .. 31;
   end record;

   --  OTFDEC interrupt status register
   type OTFDEC_ISR_Register is record
      --  Read-only. Security error interrupt flag status This bit is set by
      --  hardware and read only by application. This bit is set when at least
      --  one security error has been detected. This bit is cleared when
      --  application sets in OTFDEC_ICR the corresponding bit to 1.
      SEIF          : Boolean;
      --  Read-only. Execute-only execute-never error interrupt flag status
      --  This bit is set by hardware and read only by application. This bit is
      --  set when a read access and not an instruction fetch is detected on
      --  any encrypted region with MODE bits set to 11. Lastly, XONEIF is also
      --  set when an execute access is detected while encryption mode is
      --  enabled. This bit is cleared when application sets in OTFDEC_ICR the
      --  corresponding bit to 1.
      XONEIF        : Boolean;
      --  Read-only. Key error interrupt flag status This bit is set by
      --  hardware and read only by application. The bit is set when a read
      --  access occurs on an encrypted region, while its key registers is null
      --  or not properly initialized (KEYCRC=0x0). This bit is cleared when
      --  the application sets in OTFDEC_ICR the corresponding bit to 1. After
      --  KEIF is set any subsequent read to the region with bad key registers
      --  returns a zeroed value. This state remains until those key registers
      --  are properly initialized (KEYCRC not zero).
      KEIF          : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTFDEC_ISR_Register use record
      SEIF          at 0 range 0 .. 0;
      XONEIF        at 0 range 1 .. 1;
      KEIF          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  OTFDEC interrupt clear register
   type OTFDEC_ICR_Register is record
      --  Write-only. Security error interrupt flag clear This bit is written
      --  by application, and always read as 0.
      SEIF          : Boolean := False;
      --  Write-only. Execute-only execute-never error interrupt flag clear
      --  This bit is written by application, and always read as 0.
      XONEIF        : Boolean := False;
      --  Write-only. Key error interrupt flag clear This bit is written by
      --  application, and always read as 0. Note: Clearing KEIF does not solve
      --  the source of the problem (bad key registers). To be able to access
      --  again any encrypted region, OTFDEC key registers must be properly
      --  initialized again.
      KEIF          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTFDEC_ICR_Register use record
      SEIF          at 0 range 0 .. 0;
      XONEIF        at 0 range 1 .. 1;
      KEIF          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  OTFDEC interrupt enable register
   type OTFDEC_IER_Register is record
      --  Security error interrupt enable This bit is read and written by
      --  application. It controls the OTFDEC interrupt generation when SEIF
      --  flag status is set.
      SEIE          : Boolean := False;
      --  Execute-only execute-never error interrupt enable This bit is read
      --  and written by application. It controls the OTFDEC interrupt
      --  generation when XONEIF flag status is set.
      XONEIE        : Boolean := False;
      --  Key error interrupt enable This bit is read and written by
      --  application. It controls the OTFDEC interrupt generation when KEIF
      --  flag status is set.
      KEIE          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTFDEC_IER_Register use record
      SEIE          at 0 range 0 .. 0;
      XONEIE        at 0 range 1 .. 1;
      KEIE          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  OTFDEC_HWCFGR_CFG array element
   subtype OTFDEC_HWCFGR_CFG_Element is HAL.UInt8;

   --  OTFDEC_HWCFGR_CFG array
   type OTFDEC_HWCFGR_CFG_Field_Array is array (1 .. 3)
     of OTFDEC_HWCFGR_CFG_Element
     with Component_Size => 8, Size => 24;

   --  Type definition for OTFDEC_HWCFGR_CFG
   type OTFDEC_HWCFGR_CFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFG as a value
            Val : HAL.UInt24;
         when True =>
            --  CFG as an array
            Arr : OTFDEC_HWCFGR_CFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for OTFDEC_HWCFGR_CFG_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   subtype OTFDEC_HWCFGR_CFG4_Field is HAL.UInt4;

   --  OTFDEC hardware configuration register
   type OTFDEC_HWCFGR_Register is record
      --  Read-only. Hardware Generic 1 This field returns the
      --  address_region_lsb generic value (0x0C).
      CFG            : OTFDEC_HWCFGR_CFG_Field;
      --  Read-only. Hardware Generic 4 This field returns the low_clk_freq
      --  generic value (0x00).
      CFG4           : OTFDEC_HWCFGR_CFG4_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTFDEC_HWCFGR_Register use record
      CFG            at 0 range 0 .. 23;
      CFG4           at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype OTFDEC_VERR_MINREV_Field is HAL.UInt4;
   subtype OTFDEC_VERR_MAJREV_Field is HAL.UInt4;

   --  OTFDEC version register
   type OTFDEC_VERR_Register is record
      --  Read-only. Minor revision This field returns the OTFDEC peripheral
      --  minor version.
      MINREV        : OTFDEC_VERR_MINREV_Field;
      --  Read-only. Major revision This field returns the OTFDEC peripheral
      --  major version.
      MAJREV        : OTFDEC_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTFDEC_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  OTFDEC register bank
   type OTFDEC_Peripheral is record
      --  OTFDEC control register
      OTFDEC_CR          : aliased OTFDEC_CR_Register;
      --  OTFDEC region 1 configuration register
      OTFDEC_R1CFGR      : aliased OTFDEC_R1CFGR_Register;
      --  OTFDEC region 1 start address register
      OTFDEC_R1STARTADDR : aliased HAL.UInt32;
      --  OTFDEC region 1 end address register
      OTFDEC_R1ENDADDR   : aliased HAL.UInt32;
      --  OTFDEC region 1 nonce register 0
      OTFDEC_R1NONCER0   : aliased HAL.UInt32;
      --  OTFDEC region 1 nonce register 1
      OTFDEC_R1NONCER1   : aliased HAL.UInt32;
      --  OTFDEC region 1 key register 0
      OTFDEC_R1KEYR0     : aliased HAL.UInt32;
      --  OTFDEC region 1 key register 1
      OTFDEC_R1KEYR1     : aliased HAL.UInt32;
      --  OTFDEC region 1 key register 2
      OTFDEC_R1KEYR2     : aliased HAL.UInt32;
      --  OTFDEC region 1 key register 3
      OTFDEC_R1KEYR3     : aliased HAL.UInt32;
      --  OTFDEC region 2 configuration register
      OTFDEC_R2CFGR      : aliased OTFDEC_R2CFGR_Register;
      --  OTFDEC region 2 start address register
      OTFDEC_R2STARTADDR : aliased HAL.UInt32;
      --  OTFDEC region 2 end address register
      OTFDEC_R2ENDADDR   : aliased HAL.UInt32;
      --  OTFDEC region 2 nonce register 0
      OTFDEC_R2NONCER0   : aliased HAL.UInt32;
      --  OTFDEC region 2 nonce register 1
      OTFDEC_R2NONCER1   : aliased HAL.UInt32;
      --  OTFDEC region 2 key register 0
      OTFDEC_R2KEYR0     : aliased HAL.UInt32;
      --  OTFDEC region 2 key register 1
      OTFDEC_R2KEYR1     : aliased HAL.UInt32;
      --  OTFDEC region 2 key register 2
      OTFDEC_R2KEYR2     : aliased HAL.UInt32;
      --  OTFDEC region 2 key register 3
      OTFDEC_R2KEYR3     : aliased HAL.UInt32;
      --  OTFDEC region 3 configuration register
      OTFDEC_R3CFGR      : aliased OTFDEC_R3CFGR_Register;
      --  OTFDEC region 3 start address register
      OTFDEC_R3STARTADDR : aliased HAL.UInt32;
      --  OTFDEC region 3 end address register
      OTFDEC_R3ENDADDR   : aliased HAL.UInt32;
      --  OTFDEC region 3 nonce register 0
      OTFDEC_R3NONCER0   : aliased HAL.UInt32;
      --  OTFDEC region 3 nonce register 1
      OTFDEC_R3NONCER1   : aliased HAL.UInt32;
      --  OTFDEC region 3 key register 0
      OTFDEC_R3KEYR0     : aliased HAL.UInt32;
      --  OTFDEC region 3 key register 1
      OTFDEC_R3KEYR1     : aliased HAL.UInt32;
      --  OTFDEC region 3 key register 2
      OTFDEC_R3KEYR2     : aliased HAL.UInt32;
      --  OTFDEC region 3 key register 3
      OTFDEC_R3KEYR3     : aliased HAL.UInt32;
      --  OTFDEC region 4 configuration register
      OTFDEC_R4CFGR      : aliased OTFDEC_R4CFGR_Register;
      --  OTFDEC region 4 start address register
      OTFDEC_R4STARTADDR : aliased HAL.UInt32;
      --  OTFDEC region 4 end address register
      OTFDEC_R4ENDADDR   : aliased HAL.UInt32;
      --  OTFDEC region 4 nonce register 0
      OTFDEC_R4NONCER0   : aliased HAL.UInt32;
      --  OTFDEC region 4 nonce register 1
      OTFDEC_R4NONCER1   : aliased HAL.UInt32;
      --  OTFDEC region 4 key register 0
      OTFDEC_R4KEYR0     : aliased HAL.UInt32;
      --  OTFDEC region 4 key register 1
      OTFDEC_R4KEYR1     : aliased HAL.UInt32;
      --  OTFDEC region 4 key register 2
      OTFDEC_R4KEYR2     : aliased HAL.UInt32;
      --  OTFDEC region 4 key register 3
      OTFDEC_R4KEYR3     : aliased HAL.UInt32;
      --  OTFDEC interrupt status register
      OTFDEC_ISR         : aliased OTFDEC_ISR_Register;
      --  OTFDEC interrupt clear register
      OTFDEC_ICR         : aliased OTFDEC_ICR_Register;
      --  OTFDEC interrupt enable register
      OTFDEC_IER         : aliased OTFDEC_IER_Register;
      --  OTFDEC hardware configuration register
      OTFDEC_HWCFGR      : aliased OTFDEC_HWCFGR_Register;
      --  OTFDEC version register
      OTFDEC_VERR        : aliased OTFDEC_VERR_Register;
      --  OTFDEC identification register
      OTFDEC_IPIDR       : aliased HAL.UInt32;
      --  OTFDEC size identification register
      OTFDEC_SIDR        : aliased HAL.UInt32;
   end record
     with Volatile;

   for OTFDEC_Peripheral use record
      OTFDEC_CR          at 16#0# range 0 .. 31;
      OTFDEC_R1CFGR      at 16#20# range 0 .. 31;
      OTFDEC_R1STARTADDR at 16#24# range 0 .. 31;
      OTFDEC_R1ENDADDR   at 16#28# range 0 .. 31;
      OTFDEC_R1NONCER0   at 16#2C# range 0 .. 31;
      OTFDEC_R1NONCER1   at 16#30# range 0 .. 31;
      OTFDEC_R1KEYR0     at 16#34# range 0 .. 31;
      OTFDEC_R1KEYR1     at 16#38# range 0 .. 31;
      OTFDEC_R1KEYR2     at 16#3C# range 0 .. 31;
      OTFDEC_R1KEYR3     at 16#40# range 0 .. 31;
      OTFDEC_R2CFGR      at 16#50# range 0 .. 31;
      OTFDEC_R2STARTADDR at 16#54# range 0 .. 31;
      OTFDEC_R2ENDADDR   at 16#58# range 0 .. 31;
      OTFDEC_R2NONCER0   at 16#5C# range 0 .. 31;
      OTFDEC_R2NONCER1   at 16#60# range 0 .. 31;
      OTFDEC_R2KEYR0     at 16#64# range 0 .. 31;
      OTFDEC_R2KEYR1     at 16#68# range 0 .. 31;
      OTFDEC_R2KEYR2     at 16#6C# range 0 .. 31;
      OTFDEC_R2KEYR3     at 16#70# range 0 .. 31;
      OTFDEC_R3CFGR      at 16#80# range 0 .. 31;
      OTFDEC_R3STARTADDR at 16#84# range 0 .. 31;
      OTFDEC_R3ENDADDR   at 16#88# range 0 .. 31;
      OTFDEC_R3NONCER0   at 16#8C# range 0 .. 31;
      OTFDEC_R3NONCER1   at 16#90# range 0 .. 31;
      OTFDEC_R3KEYR0     at 16#94# range 0 .. 31;
      OTFDEC_R3KEYR1     at 16#98# range 0 .. 31;
      OTFDEC_R3KEYR2     at 16#9C# range 0 .. 31;
      OTFDEC_R3KEYR3     at 16#A0# range 0 .. 31;
      OTFDEC_R4CFGR      at 16#B0# range 0 .. 31;
      OTFDEC_R4STARTADDR at 16#B4# range 0 .. 31;
      OTFDEC_R4ENDADDR   at 16#B8# range 0 .. 31;
      OTFDEC_R4NONCER0   at 16#BC# range 0 .. 31;
      OTFDEC_R4NONCER1   at 16#C0# range 0 .. 31;
      OTFDEC_R4KEYR0     at 16#C4# range 0 .. 31;
      OTFDEC_R4KEYR1     at 16#C8# range 0 .. 31;
      OTFDEC_R4KEYR2     at 16#CC# range 0 .. 31;
      OTFDEC_R4KEYR3     at 16#D0# range 0 .. 31;
      OTFDEC_ISR         at 16#300# range 0 .. 31;
      OTFDEC_ICR         at 16#304# range 0 .. 31;
      OTFDEC_IER         at 16#308# range 0 .. 31;
      OTFDEC_HWCFGR      at 16#3F0# range 0 .. 31;
      OTFDEC_VERR        at 16#3F4# range 0 .. 31;
      OTFDEC_IPIDR       at 16#3F8# range 0 .. 31;
      OTFDEC_SIDR        at 16#3FC# range 0 .. 31;
   end record;

   --  OTFDEC register bank
   OTFDEC_Periph : aliased OTFDEC_Peripheral
     with Import, Address => OTFDEC_Base;

   --  OTFDEC register bank
   OTFDEC1_S_Periph : aliased OTFDEC_Peripheral
     with Import, Address => OTFDEC1_S_Base;

   --  OTFDEC register bank
   OTFDEC2_Periph : aliased OTFDEC_Peripheral
     with Import, Address => OTFDEC2_Base;

   --  OTFDEC register bank
   OTFDEC2_S_Periph : aliased OTFDEC_Peripheral
     with Import, Address => OTFDEC2_S_Base;

end STM32_SVD.OTFDEC;
