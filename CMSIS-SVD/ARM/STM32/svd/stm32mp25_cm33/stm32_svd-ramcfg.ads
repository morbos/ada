--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.RAMCFG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  RAMCFG SYSRAM control register
   type RAMCFG_SYSRAMCR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8 := 16#0#;
      --  SRAM erase This bit can be set by software only after writing the
      --  unlock sequence in ERASEKEY of RAMCFG_SYSRAMERASEKEY. Setting this
      --  bit starts the SRAM erase. This bit is automatically cleared by
      --  hardware at the end of the erase operation.
      SRAMER        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_SYSRAMCR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMER        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RAMCFG SYSRAM interrupt status register
   type RAMCFG_SYSRAMISR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8;
      --  Read-only. SRAM busy with erase operation Note: Depending on the
      --  SRAM, the erase operation can be performed due to software request,
      --  system reset if the option is not disabled by software and tamper
      --  detection. Refer to Table73: Internal SRAM features.
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_SYSRAMISR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_SYSRAMERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG SYSRAM erase key register
   type RAMCFG_SYSRAMERKEYR_Register is record
      --  Write-only. Erase write protection key The following steps are
      --  required to unlock the write protection of SRAMER in RAMCFG_SYSRAMCR.
      --  a) Write 0xCA into ERASEKEY[7:0]. b) Write 0x53 into ERASEKEY[7:0].
      --  Note: Writing a wrong key reactivates the write protection.
      ERASEKEY      : RAMCFG_SYSRAMERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_SYSRAMERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RAMCFG SRAM1 control register
   type RAMCFG_SRAM1CR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8 := 16#0#;
      --  SRAM erase. This bit can be set by software only after writing the
      --  unlock sequence in ERASEKEY of RAMCFG_MCURAM1ERASEKEY. Setting this
      --  bit starts the SRAM erase. This bit is automatically cleared by
      --  hardware at the end of the erase operation.
      SRAMER        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_SRAM1CR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMER        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RAMCFG SRAM1 interrupt status register
   type RAMCFG_SRAM1ISR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8;
      --  Read-only. SRAM busy with erase operation Note: Depending on the
      --  SRAM, the erase operation can be performed due to software request,
      --  system reset if the option is not disabled by software and tamper
      --  detection. Refer to Table73: Internal SRAM features.
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_SRAM1ISR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_SRAM1ERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG SRAM1 erase key register
   type RAMCFG_SRAM1ERKEYR_Register is record
      --  Write-only. Erase write protection key The following steps are
      --  required to unlock the write protection of SRAMER in
      --  RAMCFG_MCURAM1CR. a) Write 0xCA into ERASEKEY[7:0]. b) Write 0x53
      --  into ERASEKEY[7:0]. Note: Writing a wrong key reactivates the write
      --  protection.
      ERASEKEY      : RAMCFG_SRAM1ERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_SRAM1ERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RAMCFG SRAM2 control register
   type RAMCFG_SRAM2CR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8 := 16#0#;
      --  SRAM erase. This bit can be set by software only after writing the
      --  unlock sequence in ERASEKEY of RAMCFG_MCURAM2ERASEKEY. Setting this
      --  bit starts the SRAM erase. This bit is automatically cleared by
      --  hardware at the end of the erase operation.
      SRAMER        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_SRAM2CR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMER        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RAMCFG SRAM2 interrupt status register
   type RAMCFG_SRAM2ISR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8;
      --  Read-only. SRAM busy with erase operation Note: Depending on the
      --  SRAM, the erase operation can be performed due to software request,
      --  system reset if the option is not disabled by software and tamper
      --  detection. Refer to Table73: Internal SRAM features.
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_SRAM2ISR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_SRAM2ERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG SRAM2 erase key register
   type RAMCFG_SRAM2ERKEYR_Register is record
      --  Write-only. Erase write protection key The following steps are
      --  required to unlock the write protection of SRAMER in
      --  RAMCFG_MCURAM2CR. a) Write 0xCA into ERASEKEY[7:0]. b) Write 0x53
      --  into ERASEKEY[7:0]. Note: Writing a wrong key reactivates the write
      --  protection.
      ERASEKEY      : RAMCFG_SRAM2ERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_SRAM2ERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RAMCFG RETRAM control register
   type RAMCFG_RETRAMCR_Register is record
      --  ECC enable When set, this bit can be cleared by software only after
      --  writing the unlock sequence inRAMCFG_RETRAMECCKEYR. Note: This bit is
      --  reset on an application reset.
      ECCE           : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Address latch enable Note: This bit is reset on any system reset.
      ALE            : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  SRAM erase. This bit can be set by software only after writing the
      --  unlock sequence in ERASEKEY of RAMCFG_RETRAMERASEKEY. Setting this
      --  bit starts the SRAM erase. This bit is automatically cleared by
      --  hardware at the end of the erase operation. Note: This bit is reset
      --  on any system reset.
      SRAMER         : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  SRAM hardware erase disable Note: This bit is reset on a reset only
      --  by VSW POR and VSWRST.
      SRAMHWERDIS    : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_RETRAMCR_Register use record
      ECCE           at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      ALE            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SRAMER         at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      SRAMHWERDIS    at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RAMCFG RETRAM interrupt enable register
   type RAMCFG_RETRAMIER_Register is record
      --  ECC single error interrupt enable
      SEIE          : Boolean := False;
      --  ECC double error interrupt enable
      DEIE          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_RETRAMIER_Register use record
      SEIE          at 0 range 0 .. 0;
      DEIE          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RAMCFG RETRAM interrupt status register
   type RAMCFG_RETRAMISR_Register is record
      --  Read-only. ECC single error corrected
      SEC           : Boolean;
      --  Read-only. ECC double error detected
      DED           : Boolean;
      --  unspecified
      Reserved_2_7  : HAL.UInt6;
      --  Read-only. SRAM busy with erase operation Note: Depending on the
      --  SRAM, the erase operation can be performed due to software request,
      --  system reset if the option is not disabled by software and tamper
      --  detection. Refer to Table73: Internal SRAM features.
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_RETRAMISR_Register use record
      SEC           at 0 range 0 .. 0;
      DED           at 0 range 1 .. 1;
      Reserved_2_7  at 0 range 2 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_RETRAMSEAR_ESEA_Field is HAL.UInt15;

   --  RAMCFG RETRAM ECC single error address register
   type RAMCFG_RETRAMSEAR_Register is record
      --  Read-only. ECC single error address When ALE is set in
      --  RAMCFG_RETRAMCR, this bit field is updated with the word-address
      --  corresponding to the ECC single error.
      ESEA           : RAMCFG_RETRAMSEAR_ESEA_Field;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_RETRAMSEAR_Register use record
      ESEA           at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype RAMCFG_RETRAMDEAR_EDEA_Field is HAL.UInt15;

   --  RAMCFG RETRAM ECC double error address register
   type RAMCFG_RETRAMDEAR_Register is record
      --  Read-only. ECC double error address When ALE is set in
      --  RAMCFG_RETRAMCR, this bit field is updated with the word-address
      --  corresponding to the ECC double error.
      EDEA           : RAMCFG_RETRAMDEAR_EDEA_Field;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_RETRAMDEAR_Register use record
      EDEA           at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  RAMCFG RETRAM interrupt clear flag register
   type RAMCFG_RETRAMICR_Register is record
      --  Write-only. Clear of ECC single corrected Writing 1 to this flag
      --  clears SEC in RAMCFG_RETRAMISR.
      CSEC          : Boolean := False;
      --  Write-only. Clear of ECC double error detected Writing 1 to this flag
      --  clears DED in RAMCFG_RETRAMISR.
      CDED          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_RETRAMICR_Register use record
      CSEC          at 0 range 0 .. 0;
      CDED          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype RAMCFG_RETRAMECCKEYR_ECCKEY_Field is HAL.UInt8;

   --  RAMCFG RETRAM ECC key register
   type RAMCFG_RETRAMECCKEYR_Register is record
      --  Write-only. ECC write protection key The following steps are required
      --  to unlock the write protection of ECCE in RAMCFG_RETRAMCR. a) Write
      --  0xAE into ECCKEY[7:0]. b) Write 0x75 into ECCKEY[7:0]. Note: Writing
      --  a wrong key reactivates the write protection.
      ECCKEY        : RAMCFG_RETRAMECCKEYR_ECCKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_RETRAMECCKEYR_Register use record
      ECCKEY        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RAMCFG_RETRAMERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG RETRAM erase key register
   type RAMCFG_RETRAMERKEYR_Register is record
      --  Write-only. Erase write protection key The following steps are
      --  required to unlock the write protection of SRAMER in RAMCFG_RETRAMCR.
      --  a) Write 0xCA into ERASEKEY[7:0]. b) Write 0x53 into ERASEKEY[7:0].
      --  Note: Writing a wrong key reactivates the write protection.
      ERASEKEY      : RAMCFG_RETRAMERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_RETRAMERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RAMCFG_RETRAMCCR1_CRCC_Field is HAL.UInt2;
   subtype RAMCFG_RETRAMCCR1_CRCBS_Field is HAL.UInt3;

   --  RAMCFG RETRAM CRC control register 1
   type RAMCFG_RETRAMCCR1_Register is record
      --  CRC configuration. in RAMCFG_RETRAMCCSR when the CRCEOC flag is set.
      CRCC          : RAMCFG_RETRAMCCR1_CRCC_Field := 16#0#;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  CRC buffer size This bit field is used to program the buffer size to
      --  take into account during CRC computation. Starting from RETRAM start
      --  address. .....
      CRCBS         : RAMCFG_RETRAMCCR1_CRCBS_Field := 16#7#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_RETRAMCCR1_Register use record
      CRCC          at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      CRCBS         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RAMCFG RETRAM CRC control register 2
   type RAMCFG_RETRAMCCR2_Register is record
      --  CRC computation start Setting this bit starts the CRC computation.
      --  This bit is automatically cleared by hardware at the end of the CRC
      --  computation phase.
      CRCCS         : Boolean := False;
      --  unspecified
      Reserved_1_30 : HAL.UInt30 := 16#0#;
      --  CRC flags clear. Setting this bit clears the CRC status flags in
      --  RAMCFG_RETRAMCSR. Note: This bit is automatically cleared by
      --  hardware.
      CRCFC         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_RETRAMCCR2_Register use record
      CRCCS         at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      CRCFC         at 0 range 31 .. 31;
   end record;

   --  RAMCFG RETRAM CRC status register
   type RAMCFG_RETRAMCSR_Register is record
      --  Read-only. CRC end-of-computation flag
      CRCEOC        : Boolean;
      --  Read-only. CRC signature check status flag This bit is set when the
      --  computed signature matches the reference signature stored in
      --  RAMCFG_RETRAMCRSR. This bit is valid only when the CRCEOC flag is
      --  set.
      CRCSCS        : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_RETRAMCSR_Register use record
      CRCEOC        at 0 range 0 .. 0;
      CRCSCS        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RAMCFG LPSRAM1 control register
   type RAMCFG_LPSRAM1CR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  SRAM erase. This bit can be set by software only after writing the
      --  unlock sequence in ERASEKEY of RAMCFG_LPSRAM1ERASEKEY. Setting this
      --  bit starts the SRAM erase. This bit is automatically cleared by
      --  hardware at the end of the erase operation. Note: This bit is reset
      --  on any system reset.
      SRAMER         : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  SRAM hardware erase disable Note: This bit is reset on a reset only
      --  by VSW POR and VSWRST.
      SRAMHWERDIS    : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_LPSRAM1CR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SRAMER         at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      SRAMHWERDIS    at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RAMCFG LPSRAM1 interrupt status register
   type RAMCFG_LPSRAM1ISR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8;
      --  Read-only. SRAM busy with erase operation Note: Depending on the
      --  SRAM, the erase operation can be performed due to software request,
      --  system reset if the option is not disabled by software and tamper
      --  detection. Refer to Table73: Internal SRAM features.
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_LPSRAM1ISR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_LPSRAM1ERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG LPSRAM1 erase key register
   type RAMCFG_LPSRAM1ERKEYR_Register is record
      --  Write-only. Erase write protection key The following steps are
      --  required to unlock the write protection of SRAMER in
      --  RAMCFG_LPSRAM1CR. a) Write 0xCA into ERASEKEY[7:0]. b) Write 0x53
      --  into ERASEKEY[7:0]. Note: Writing a wrong key reactivates the write
      --  protection.
      ERASEKEY      : RAMCFG_LPSRAM1ERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_LPSRAM1ERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RAMCFG_LPSRAM1CCR1_CRCC_Field is HAL.UInt2;
   subtype RAMCFG_LPSRAM1CCR1_CRCBS_Field is HAL.UInt3;

   --  RAMCFG LPSRAM1 CRC control register 1
   type RAMCFG_LPSRAM1CCR1_Register is record
      --  CRC configuration. in RAMCFG_LPSRAM1CCSR when the CRCEOC flag is set.
      CRCC          : RAMCFG_LPSRAM1CCR1_CRCC_Field := 16#0#;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  CRC buffer size This bit field is used to program the buffer size to
      --  take into account during CRC computation. Starting from LPSRAM1 start
      --  address. .....
      CRCBS         : RAMCFG_LPSRAM1CCR1_CRCBS_Field := 16#7#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_LPSRAM1CCR1_Register use record
      CRCC          at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      CRCBS         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RAMCFG LPSRAM1 CRC control register 2
   type RAMCFG_LPSRAM1CCR2_Register is record
      --  CRC computation start Setting this bit starts the CRC computation.
      --  This bit is automatically cleared by hardware at the end of the CRC
      --  computation phase.
      CRCCS         : Boolean := False;
      --  unspecified
      Reserved_1_30 : HAL.UInt30 := 16#0#;
      --  CRC flags clear. Setting this bit clears the CRC status flags C in
      --  RAMCFG_LPSRAM1CSR. Note: This bit is automatically cleared by
      --  hardware.
      CRCFC         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_LPSRAM1CCR2_Register use record
      CRCCS         at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      CRCFC         at 0 range 31 .. 31;
   end record;

   --  RAMCFG LPSRAM1 CRC status register
   type RAMCFG_LPSRAM1CSR_Register is record
      --  Read-only. CRC end of computation flag
      CRCEOC        : Boolean;
      --  Read-only. CRC signature check status flag This bit is set when the
      --  computed signature matches the reference signature stored in
      --  RAMCFG_LPSRAM1CRSR. This field is valid only when the CRCEOC flag is
      --  set.
      CRCSCS        : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_LPSRAM1CSR_Register use record
      CRCEOC        at 0 range 0 .. 0;
      CRCSCS        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RAMCFG LPSRAM2 control register
   type RAMCFG_LPSRAM2CR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8 := 16#0#;
      --  SRAM erase. This bit can be set by software only after writing the
      --  unlock sequence in the ERASEKEY field of RAMCFG_LPSRAM2ERASEKEY.
      --  Setting this bit starts the SRAM erase. This bit is automatically
      --  cleared by hardware at the end of the erase operation.
      SRAMER        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_LPSRAM2CR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMER        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RAMCFG LPSRAM2 interrupt status register
   type RAMCFG_LPSRAM2ISR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8;
      --  Read-only. SRAM busy with erase operation Note: Depending on the
      --  SRAM, the erase operation can be performed due to software request,
      --  system reset if the option is not disabled by software and tamper
      --  detection. Refer to Table73: Internal SRAM features.
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_LPSRAM2ISR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_LPSRAM2ERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG LPSRAM2 erase key register
   type RAMCFG_LPSRAM2ERKEYR_Register is record
      --  Write-only. Erase write protection key The following steps are
      --  required to unlock the write protection of SRAMER in
      --  RAMCFG_LPSRAM2CR. a) Write 0xCA into ERASEKEY[7:0]. b) Write 0x53
      --  into ERASEKEY[7:0]. Note: Writing a wrong key reactivates the write
      --  protection.
      ERASEKEY      : RAMCFG_LPSRAM2ERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_LPSRAM2ERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RAMCFG LPSRAM3 control register
   type RAMCFG_LPSRAM3CR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8 := 16#0#;
      --  SRAM erase. This bit can be set by software only after writing the
      --  unlock sequence in ERASEKEY of RAMCFG_LPSRAM3ERASEKEY. Setting this
      --  bit starts the SRAM erase. This bit is automatically cleared by
      --  hardware at the end of the erase operation.
      SRAMER        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_LPSRAM3CR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMER        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RAMCFG LPSRAM3 interrupt status register
   type RAMCFG_LPSRAM3ISR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8;
      --  Read-only. SRAM busy with erase operation Note: Depending on the
      --  SRAM, the erase operation can be performed due to software request,
      --  system reset if the option is not disabled by software and tamper
      --  detection. Refer to Table73: Internal SRAM features.
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_LPSRAM3ISR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_LPSRAM3ERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG LPSRAM3 erase key register
   type RAMCFG_LPSRAM3ERKEYR_Register is record
      --  Write-only. Erase write protection key The following steps are
      --  required to unlock the write protection of SRAMER in
      --  RAMCFG_LPSRAM3CR. a) Write 0xCA into ERASEKEY[7:0]. b) Write 0x53
      --  into ERASEKEY[7:0]. Note: Writing a wrong key reactivates the write
      --  protection.
      ERASEKEY      : RAMCFG_LPSRAM3ERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_LPSRAM3ERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RAMCFG BKPSRAM control register
   type RAMCFG_BKPSRAMCR_Register is record
      --  ECC enable When set, this bit can be cleared by software only after
      --  writing the unlock sequence in RAMCFG_BKPSRAMECCKEYR.
      ECCE          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Address latch enable
      ALE           : Boolean := False;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  SRAM erase. This bit can be set by software only after writing the
      --  unlock sequence in ERASEKEY of RAMCFG_BKPSRAMERASEKEY. Setting this
      --  bit starts the SRAM erase. This bit is automatically cleared by
      --  hardware at the end of the erase operation.
      SRAMER        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_BKPSRAMCR_Register use record
      ECCE          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      ALE           at 0 range 4 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      SRAMER        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RAMCFG BKPSRAM interrupt enable register
   type RAMCFG_BKPSRAMIER_Register is record
      --  ECC single-error interrupt enable
      SEIE          : Boolean := False;
      --  ECC double-error interrupt enable
      DEIE          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_BKPSRAMIER_Register use record
      SEIE          at 0 range 0 .. 0;
      DEIE          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RAMCFG BKPSRAM interrupt status register
   type RAMCFG_BKPSRAMISR_Register is record
      --  Read-only. ECC single error corrected
      SEC           : Boolean;
      --  Read-only. ECC double error detected
      DED           : Boolean;
      --  unspecified
      Reserved_2_7  : HAL.UInt6;
      --  Read-only. SRAM busy with erase operation Note: Depending on the
      --  SRAM, the erase operation can be performed due to software request,
      --  system reset if the option is not disabled by software and tamper
      --  detection. Refer to Table73: Internal SRAM features.
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_BKPSRAMISR_Register use record
      SEC           at 0 range 0 .. 0;
      DED           at 0 range 1 .. 1;
      Reserved_2_7  at 0 range 2 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_BKPSRAMEEAR_ESEA_Field is HAL.UInt11;

   --  RAMCFG BKPSRAM ECC single error address register
   type RAMCFG_BKPSRAMEEAR_Register is record
      --  Read-only. ECC single error address When ALE is set in
      --  RAMCFG_BKPSRAMCR, this field is updated with the word-address
      --  corresponding to the ECC single error.
      ESEA           : RAMCFG_BKPSRAMEEAR_ESEA_Field;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_BKPSRAMEEAR_Register use record
      ESEA           at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype RAMCFG_BKPSRAMDEAR_EDEA_Field is HAL.UInt11;

   --  RAMCFG BKPSRAM ECC double error address register
   type RAMCFG_BKPSRAMDEAR_Register is record
      --  Read-only. ECC double error address When ALE is set in
      --  RAMCFG_BKPSRAMCR, this bit field is updated with the word-address
      --  corresponding to the ECC double error.
      EDEA           : RAMCFG_BKPSRAMDEAR_EDEA_Field;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_BKPSRAMDEAR_Register use record
      EDEA           at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  RAMCFG BKPSRAM interrupt clear flag register
   type RAMCFG_BKPSRAMICR_Register is record
      --  Write-only. Clear of ECC single corrected Writing 1 to this flag
      --  clears SEC in RAMCFG_BKPSRAMISR.
      CSEC          : Boolean := False;
      --  Write-only. Clear of ECC double error detected Writing 1 to this flag
      --  clears DED in RAMCFG_BKPSRAMISR.
      CDED          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_BKPSRAMICR_Register use record
      CSEC          at 0 range 0 .. 0;
      CDED          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype RAMCFG_BKPSRAMECCKEYR_ECCKEY_Field is HAL.UInt8;

   --  RAMCFG BKPSRAM ECC key register
   type RAMCFG_BKPSRAMECCKEYR_Register is record
      --  Write-only. ECC write protection key The following steps are required
      --  to unlock the write protection of ECCE in RAMCFG_BKPSRAMCR. a) Write
      --  0xAE into ECCKEY[7:0]. b) Write 0x75 into ECCKEY[7:0]. Note: Writing
      --  a wrong key reactivates the write protection.
      ECCKEY        : RAMCFG_BKPSRAMECCKEYR_ECCKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_BKPSRAMECCKEYR_Register use record
      ECCKEY        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RAMCFG_BKPSRAMERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG BKPSRAM erase key register
   type RAMCFG_BKPSRAMERKEYR_Register is record
      --  Write-only. Erase write protection key The following steps are
      --  required to unlock the write protection of SRAMER in
      --  RAMCFG_BKPSRAMCR. a) Write 0xCA into ERASEKEY[7:0]. b) Write 0x53
      --  into ERASEKEY[7:0]. Note: Writing a wrong key reactivates the write
      --  protection.
      ERASEKEY      : RAMCFG_BKPSRAMERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_BKPSRAMERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RAMCFG VDERAM control register
   type RAMCFG_VDERAMCR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8 := 16#0#;
      --  SRAM erase This bit can be set by software only after writing the
      --  unlock sequence in ERASEKEY of RAMCFG_VDERAMERASEKEY. Setting this
      --  bit starts the SRAM erase. This bit is automatically cleared by
      --  hardware at the end of the erase operation. Note: This bit is reset
      --  on any system reset.
      SRAMER        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_VDERAMCR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMER        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RAMCFG VDERAM interrupt status register
   type RAMCFG_VDERAMISR_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8;
      --  Read-only. SRAM busy with erase operation Note: Depending on the
      --  SRAM, the erase operation can be performed due to software request,
      --  system reset if the option is not disabled by software and tamper
      --  detection. Refer to Table73: Internal SRAM features.
      SRAMBUSY      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_VDERAMISR_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      SRAMBUSY      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RAMCFG_VDERAMERKEYR_ERASEKEY_Field is HAL.UInt8;

   --  RAMCFG VDERAM erase key register
   type RAMCFG_VDERAMERKEYR_Register is record
      --  Write-only. Erase write protection key The following steps are
      --  required to unlock the write protection of SRAMER in RAMCFG_VDERAMCR.
      --  a) Write 0xCA into ERASEKEY[7:0]. b) Write 0x53 into ERASEKEY[7:0].
      --  Note: Writing a wrong key reactivates the write protection.
      ERASEKEY      : RAMCFG_VDERAMERKEYR_ERASEKEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCFG_VDERAMERKEYR_Register use record
      ERASEKEY      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RAMCFG register bank
   type RAMCFG_Peripheral is record
      --  RAMCFG SYSRAM control register
      RAMCFG_SYSRAMCR       : aliased RAMCFG_SYSRAMCR_Register;
      --  RAMCFG SYSRAM interrupt status register
      RAMCFG_SYSRAMISR      : aliased RAMCFG_SYSRAMISR_Register;
      --  RAMCFG SYSRAM erase key register
      RAMCFG_SYSRAMERKEYR   : aliased RAMCFG_SYSRAMERKEYR_Register;
      --  RAMCFG SRAM1 control register
      RAMCFG_SRAM1CR        : aliased RAMCFG_SRAM1CR_Register;
      --  RAMCFG SRAM1 interrupt status register
      RAMCFG_SRAM1ISR       : aliased RAMCFG_SRAM1ISR_Register;
      --  RAMCFG SRAM1 erase key register
      RAMCFG_SRAM1ERKEYR    : aliased RAMCFG_SRAM1ERKEYR_Register;
      --  RAMCFG SRAM2 control register
      RAMCFG_SRAM2CR        : aliased RAMCFG_SRAM2CR_Register;
      --  RAMCFG SRAM2 interrupt status register
      RAMCFG_SRAM2ISR       : aliased RAMCFG_SRAM2ISR_Register;
      --  RAMCFG SRAM2 erase key register
      RAMCFG_SRAM2ERKEYR    : aliased RAMCFG_SRAM2ERKEYR_Register;
      --  RAMCFG RETRAM control register
      RAMCFG_RETRAMCR       : aliased RAMCFG_RETRAMCR_Register;
      --  RAMCFG RETRAM interrupt enable register
      RAMCFG_RETRAMIER      : aliased RAMCFG_RETRAMIER_Register;
      --  RAMCFG RETRAM interrupt status register
      RAMCFG_RETRAMISR      : aliased RAMCFG_RETRAMISR_Register;
      --  RAMCFG RETRAM ECC single error address register
      RAMCFG_RETRAMSEAR     : aliased RAMCFG_RETRAMSEAR_Register;
      --  RAMCFG RETRAM ECC double error address register
      RAMCFG_RETRAMDEAR     : aliased RAMCFG_RETRAMDEAR_Register;
      --  RAMCFG RETRAM interrupt clear flag register
      RAMCFG_RETRAMICR      : aliased RAMCFG_RETRAMICR_Register;
      --  RAMCFG RETRAM ECC key register
      RAMCFG_RETRAMECCKEYR  : aliased RAMCFG_RETRAMECCKEYR_Register;
      --  RAMCFG RETRAM erase key register
      RAMCFG_RETRAMERKEYR   : aliased RAMCFG_RETRAMERKEYR_Register;
      --  RAMCFG RETRAM CRC control register 1
      RAMCFG_RETRAMCCR1     : aliased RAMCFG_RETRAMCCR1_Register;
      --  RAMCFG RETRAM CRC control register 2
      RAMCFG_RETRAMCCR2     : aliased RAMCFG_RETRAMCCR2_Register;
      --  RAMCFG RETRAM CRC reference signature register
      RAMCFG_RETRAMCRSR     : aliased HAL.UInt32;
      --  RAMCFG RETRAM CRC status register
      RAMCFG_RETRAMCSR      : aliased RAMCFG_RETRAMCSR_Register;
      --  RAMCFG RETRAM CRC calculated signature register
      RAMCFG_RETRAMCCSR     : aliased HAL.UInt32;
      --  RAMCFG LPSRAM1 control register
      RAMCFG_LPSRAM1CR      : aliased RAMCFG_LPSRAM1CR_Register;
      --  RAMCFG LPSRAM1 interrupt status register
      RAMCFG_LPSRAM1ISR     : aliased RAMCFG_LPSRAM1ISR_Register;
      --  RAMCFG LPSRAM1 erase key register
      RAMCFG_LPSRAM1ERKEYR  : aliased RAMCFG_LPSRAM1ERKEYR_Register;
      --  RAMCFG LPSRAM1 CRC control register 1
      RAMCFG_LPSRAM1CCR1    : aliased RAMCFG_LPSRAM1CCR1_Register;
      --  RAMCFG LPSRAM1 CRC control register 2
      RAMCFG_LPSRAM1CCR2    : aliased RAMCFG_LPSRAM1CCR2_Register;
      --  RAMCFG LPSRAM1 CRC reference signature register
      RAMCFG_LPSRAM1CRSR    : aliased HAL.UInt32;
      --  RAMCFG LPSRAM1 CRC status register
      RAMCFG_LPSRAM1CSR     : aliased RAMCFG_LPSRAM1CSR_Register;
      --  RAMCFG LPSRAM1 CRC calculated signature register
      RAMCFG_LPSRAM1CCSR    : aliased HAL.UInt32;
      --  RAMCFG LPSRAM2 control register
      RAMCFG_LPSRAM2CR      : aliased RAMCFG_LPSRAM2CR_Register;
      --  RAMCFG LPSRAM2 interrupt status register
      RAMCFG_LPSRAM2ISR     : aliased RAMCFG_LPSRAM2ISR_Register;
      --  RAMCFG LPSRAM2 erase key register
      RAMCFG_LPSRAM2ERKEYR  : aliased RAMCFG_LPSRAM2ERKEYR_Register;
      --  RAMCFG LPSRAM3 control register
      RAMCFG_LPSRAM3CR      : aliased RAMCFG_LPSRAM3CR_Register;
      --  RAMCFG LPSRAM3 interrupt status register
      RAMCFG_LPSRAM3ISR     : aliased RAMCFG_LPSRAM3ISR_Register;
      --  RAMCFG LPSRAM3 erase key register
      RAMCFG_LPSRAM3ERKEYR  : aliased RAMCFG_LPSRAM3ERKEYR_Register;
      --  RAMCFG BKPSRAM control register
      RAMCFG_BKPSRAMCR      : aliased RAMCFG_BKPSRAMCR_Register;
      --  RAMCFG BKPSRAM interrupt enable register
      RAMCFG_BKPSRAMIER     : aliased RAMCFG_BKPSRAMIER_Register;
      --  RAMCFG BKPSRAM interrupt status register
      RAMCFG_BKPSRAMISR     : aliased RAMCFG_BKPSRAMISR_Register;
      --  RAMCFG BKPSRAM ECC single error address register
      RAMCFG_BKPSRAMEEAR    : aliased RAMCFG_BKPSRAMEEAR_Register;
      --  RAMCFG BKPSRAM ECC double error address register
      RAMCFG_BKPSRAMDEAR    : aliased RAMCFG_BKPSRAMDEAR_Register;
      --  RAMCFG BKPSRAM interrupt clear flag register
      RAMCFG_BKPSRAMICR     : aliased RAMCFG_BKPSRAMICR_Register;
      --  RAMCFG BKPSRAM ECC key register
      RAMCFG_BKPSRAMECCKEYR : aliased RAMCFG_BKPSRAMECCKEYR_Register;
      --  RAMCFG BKPSRAM erase key register
      RAMCFG_BKPSRAMERKEYR  : aliased RAMCFG_BKPSRAMERKEYR_Register;
      --  RAMCFG VDERAM control register
      RAMCFG_VDERAMCR       : aliased RAMCFG_VDERAMCR_Register;
      --  RAMCFG VDERAM interrupt status register
      RAMCFG_VDERAMISR      : aliased RAMCFG_VDERAMISR_Register;
      --  RAMCFG VDERAM erase key register
      RAMCFG_VDERAMERKEYR   : aliased RAMCFG_VDERAMERKEYR_Register;
   end record
     with Volatile;

   for RAMCFG_Peripheral use record
      RAMCFG_SYSRAMCR       at 16#0# range 0 .. 31;
      RAMCFG_SYSRAMISR      at 16#8# range 0 .. 31;
      RAMCFG_SYSRAMERKEYR   at 16#28# range 0 .. 31;
      RAMCFG_SRAM1CR        at 16#80# range 0 .. 31;
      RAMCFG_SRAM1ISR       at 16#88# range 0 .. 31;
      RAMCFG_SRAM1ERKEYR    at 16#A8# range 0 .. 31;
      RAMCFG_SRAM2CR        at 16#100# range 0 .. 31;
      RAMCFG_SRAM2ISR       at 16#108# range 0 .. 31;
      RAMCFG_SRAM2ERKEYR    at 16#128# range 0 .. 31;
      RAMCFG_RETRAMCR       at 16#180# range 0 .. 31;
      RAMCFG_RETRAMIER      at 16#184# range 0 .. 31;
      RAMCFG_RETRAMISR      at 16#188# range 0 .. 31;
      RAMCFG_RETRAMSEAR     at 16#18C# range 0 .. 31;
      RAMCFG_RETRAMDEAR     at 16#190# range 0 .. 31;
      RAMCFG_RETRAMICR      at 16#194# range 0 .. 31;
      RAMCFG_RETRAMECCKEYR  at 16#1A4# range 0 .. 31;
      RAMCFG_RETRAMERKEYR   at 16#1A8# range 0 .. 31;
      RAMCFG_RETRAMCCR1     at 16#1B0# range 0 .. 31;
      RAMCFG_RETRAMCCR2     at 16#1B4# range 0 .. 31;
      RAMCFG_RETRAMCRSR     at 16#1B8# range 0 .. 31;
      RAMCFG_RETRAMCSR      at 16#1BC# range 0 .. 31;
      RAMCFG_RETRAMCCSR     at 16#1C0# range 0 .. 31;
      RAMCFG_LPSRAM1CR      at 16#200# range 0 .. 31;
      RAMCFG_LPSRAM1ISR     at 16#208# range 0 .. 31;
      RAMCFG_LPSRAM1ERKEYR  at 16#228# range 0 .. 31;
      RAMCFG_LPSRAM1CCR1    at 16#230# range 0 .. 31;
      RAMCFG_LPSRAM1CCR2    at 16#234# range 0 .. 31;
      RAMCFG_LPSRAM1CRSR    at 16#238# range 0 .. 31;
      RAMCFG_LPSRAM1CSR     at 16#23C# range 0 .. 31;
      RAMCFG_LPSRAM1CCSR    at 16#240# range 0 .. 31;
      RAMCFG_LPSRAM2CR      at 16#280# range 0 .. 31;
      RAMCFG_LPSRAM2ISR     at 16#288# range 0 .. 31;
      RAMCFG_LPSRAM2ERKEYR  at 16#2A8# range 0 .. 31;
      RAMCFG_LPSRAM3CR      at 16#300# range 0 .. 31;
      RAMCFG_LPSRAM3ISR     at 16#308# range 0 .. 31;
      RAMCFG_LPSRAM3ERKEYR  at 16#328# range 0 .. 31;
      RAMCFG_BKPSRAMCR      at 16#380# range 0 .. 31;
      RAMCFG_BKPSRAMIER     at 16#384# range 0 .. 31;
      RAMCFG_BKPSRAMISR     at 16#388# range 0 .. 31;
      RAMCFG_BKPSRAMEEAR    at 16#38C# range 0 .. 31;
      RAMCFG_BKPSRAMDEAR    at 16#390# range 0 .. 31;
      RAMCFG_BKPSRAMICR     at 16#394# range 0 .. 31;
      RAMCFG_BKPSRAMECCKEYR at 16#3A4# range 0 .. 31;
      RAMCFG_BKPSRAMERKEYR  at 16#3A8# range 0 .. 31;
      RAMCFG_VDERAMCR       at 16#400# range 0 .. 31;
      RAMCFG_VDERAMISR      at 16#408# range 0 .. 31;
      RAMCFG_VDERAMERKEYR   at 16#428# range 0 .. 31;
   end record;

   --  RAMCFG register bank
   RAMCFG_Periph : aliased RAMCFG_Peripheral
     with Import, Address => RAMCFG_Base;

   --  RAMCFG register bank
   RAMCFG_S_Periph : aliased RAMCFG_Peripheral
     with Import, Address => RAMCFG_S_Base;

end STM32_SVD.RAMCFG;
