--  This spec has been automatically generated from STM32C011.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.FLASH is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype FLASH_ACR_LATENCY_Field is HAL.UInt3;

   --  FLASH access control register
   type FLASH_ACR_Register is record
      --  Flash memory access latency The value in this bitfield represents the
      --  number of CPU wait states when accessing the flash memory. Other:
      --  Reserved A new write into the bitfield becomes effective when it
      --  returns the same value upon read.
      LATENCY        : FLASH_ACR_LATENCY_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  CPU Prefetch enable
      PRFTEN         : Boolean := False;
      --  CPU Instruction cache enable
      ICEN           : Boolean := True;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#1#;
      --  CPU Instruction cache reset This bit can be written only when the
      --  instruction cache is disabled.
      ICRST          : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Main flash memory area empty This bit indicates whether the first
      --  location of the Main flash memory area was read as erased or as
      --  programmed during OBL. It is not affected by the system reset.
      --  Software may need to change this bit value after a flash memory
      --  program or erase operation. The bit can be set and reset by software.
      EMPTY          : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Debug access software enable Software may use this bit to
      --  enable/disable the debugger read access.
      DBG_SWEN       : Boolean := True;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_ACR_Register use record
      LATENCY        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      PRFTEN         at 0 range 8 .. 8;
      ICEN           at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      ICRST          at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      EMPTY          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      DBG_SWEN       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  FLASH status register
   type FLASH_SR_Register is record
      --  End of operation Set by hardware when one or more flash memory
      --  operation (programming / erase) has been completed successfully. This
      --  bit is set only if the end of operation interrupts are enabled
      --  (EOPIE=1). Cleared by writing 1.
      EOP            : Boolean := False;
      --  Operation error Set by hardware when a flash memory operation
      --  (program / erase) completes unsuccessfully. This bit is set only if
      --  error interrupts are enabled (ERRIE=1). Cleared by writing 1 .
      OPERR          : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Programming error Set by hardware when a double-word address to be
      --  programmed contains a value different from '0xFFFF FFFF' before
      --  programming, except if the data to write is '0x0000 0000'. Cleared by
      --  writing 1.
      PROGERR        : Boolean := False;
      --  Write protection error Set by hardware when an address to be
      --  erased/programmed belongs to a write-protected part (by WRP, PCROP or
      --  RDP Level 1) of the flash memory. Cleared by writing 1.
      WRPERR         : Boolean := False;
      --  Programming alignment error Set by hardware when the data to program
      --  cannot be contained in the same double word (64-bit) flash memory in
      --  case of standard programming, or if there is a change of page during
      --  fast programming. Cleared by writing 1.
      PGAERR         : Boolean := False;
      --  Size error Set by hardware when the size of the access is a byte or
      --  half-word during a program or a fast program sequence. Only double
      --  word programming is allowed (consequently: word access). Cleared by
      --  writing 1.
      SIZERR         : Boolean := False;
      --  Programming sequence error Set by hardware when a write access to the
      --  flash memory is performed by the code while PG or FSTPG have not been
      --  set previously. Set also by hardware when PROGERR, SIZERR, PGAERR,
      --  WRPERR, MISSERR or FASTERR is set due to a previous programming
      --  error. Cleared by writing 1.
      PGSERR         : Boolean := False;
      --  Fast programming data miss error In Fast programming mode, 16 double
      --  words (128 bytes) must be sent to flash memory successively, and the
      --  new data must be sent to the logic control before the current data is
      --  fully programmed. MISSERR is set by hardware when the new data is not
      --  present in time. Cleared by writing 1.
      MISSERR        : Boolean := False;
      --  Fast programming error Set by hardware when a fast programming
      --  sequence (activated by FSTPG) is interrupted due to an error
      --  (alignment, size, write protection or data miss). The corresponding
      --  status bit (PGAERR, SIZERR, WRPERR or MISSERR) is set at the same
      --  time. Cleared by writing 1.
      FASTERR        : Boolean := False;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  PCROP read error Set by hardware when an address to be read belongs
      --  to a read protected area of the flash memory (PCROP protection). An
      --  interrupt is generated if RDERRIE is set in FLASH_CR. Cleared by
      --  writing 1.
      RDERR          : Boolean := False;
      --  Option and Engineering bits loading validity error
      OPTVERR        : Boolean := False;
      --  Read-only. Busy This flag indicates that a flash memory operation
      --  requested by FLASH control register (FLASH_CR) is in progress. This
      --  bit is set at the beginning of the flash memory operation, and
      --  cleared when the operation finishes or when an error occurs.
      BSY1           : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Read-only. Programming or erase configuration busy. This flag is set
      --  and reset by hardware. For flash program operation, it is set when
      --  the first word is sent, and cleared after the second word is sent
      --  when the operation completes or ends with an error. For flash erase
      --  operation, it is set when setting the STRT bit of the FLASH_CR
      --  register and cleared when the operation completes or ends with an
      --  error. When set, a programming or erase operation is ongoing and the
      --  corresponding settings in the FLASH control register (FLASH_CR) are
      --  used (busy) and cannot be changed. Any other flash operation launch
      --  must be postponed. When cleared, the programming and erase settings
      --  in the FLASH control register (FLASH_CR) can be modified. Note: The
      --  CFGBSY bit is also set when attempting to write locked flash memory
      --  (with the first byte sent). When the CFGBSY bit is set, writing into
      --  the FLASH_CR register causes HardFault.To clear the CFGBSY bit, send
      --  a double word to the flash memory and wait until the access is
      --  finished (otherwise the CFGBSY bit remains set).
      CFGBSY         : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SR_Register use record
      EOP            at 0 range 0 .. 0;
      OPERR          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      PROGERR        at 0 range 3 .. 3;
      WRPERR         at 0 range 4 .. 4;
      PGAERR         at 0 range 5 .. 5;
      SIZERR         at 0 range 6 .. 6;
      PGSERR         at 0 range 7 .. 7;
      MISSERR        at 0 range 8 .. 8;
      FASTERR        at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      RDERR          at 0 range 14 .. 14;
      OPTVERR        at 0 range 15 .. 15;
      BSY1           at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      CFGBSY         at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype FLASH_CR_PNB_Field is HAL.UInt4;

   --  FLASH control register
   type FLASH_CR_Register is record
      --  Flash memory programming enable
      PG             : Boolean := False;
      --  Page erase enable
      PER            : Boolean := False;
      --  Mass erase When set, this bit triggers the mass erase, that is, all
      --  user pages.
      MER1           : Boolean := False;
      --  Page number selection These bits select the page to erase: ... Note:
      --  Values corresponding to addresses outside the Main memory are not
      --  allowed. See Table 6 and Table 7.
      PNB            : FLASH_CR_PNB_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Start erase operation This bit triggers an erase operation when set.
      --  This bit is possible to set only by software and to clear only by
      --  hardware. The hardware clears it when one of BSY1 and BSY2 flags in
      --  the FLASH_SR register transits to zero.
      STRT           : Boolean := False;
      --  Start of modification of option bytes This bit triggers an options
      --  operation when set. This bit is set only by software, and is cleared
      --  when the BSY1 bit is cleared in FLASH_SR.
      OPTSTRT        : Boolean := False;
      --  Fast programming enable
      FSTPG          : Boolean := False;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
      --  End-of-operation interrupt enable This bit enables the interrupt
      --  generation upon setting the EOP flag in the FLASH_SR register.
      EOPIE          : Boolean := False;
      --  Error interrupt enable This bit enables the interrupt generation upon
      --  setting the OPERR flag in the FLASH_SR register.
      ERRIE          : Boolean := False;
      --  PCROP read error interrupt enable This bit enables the interrupt
      --  generation upon setting the RDERR flag in the FLASH_SR register.
      RDERRIE        : Boolean := False;
      --  Option byte load launch When set, this bit triggers the load of
      --  option bytes into option registers. It is automatically cleared upon
      --  the completion of the load. The high state of the bit indicates
      --  pending option byte load. The bit cannot be cleared by software. It
      --  cannot be written as long as OPTLOCK is set.
      OBL_LAUNCH     : Boolean := False;
      --  Securable memory area protection enable This bit enables the
      --  protection on securable area, provided that a non-null securable
      --  memory area size (SEC_SIZE[4:0]) is defined in option bytes. This bit
      --  is possible to set only by software and to clear only through a
      --  system reset.
      SEC_PROT       : Boolean := False;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  Options Lock This bit is set only. When set, all bits concerning user
      --  option in FLASH_CR register and so option page are locked. This bit
      --  is cleared by hardware after detecting the unlock sequence. The LOCK
      --  bit must be cleared before doing the unlock sequence for OPTLOCK bit.
      --  In case of an unsuccessful unlock operation, this bit remains set
      --  until the next reset.
      OPTLOCK        : Boolean := True;
      --  FLASH_CR Lock This bit is set only. When set, the FLASH_CR register
      --  is locked. It is cleared by hardware after detecting the unlock
      --  sequence. In case of an unsuccessful unlock operation, this bit
      --  remains set until the next system reset.
      LOCK           : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_CR_Register use record
      PG             at 0 range 0 .. 0;
      PER            at 0 range 1 .. 1;
      MER1           at 0 range 2 .. 2;
      PNB            at 0 range 3 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      STRT           at 0 range 16 .. 16;
      OPTSTRT        at 0 range 17 .. 17;
      FSTPG          at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      EOPIE          at 0 range 24 .. 24;
      ERRIE          at 0 range 25 .. 25;
      RDERRIE        at 0 range 26 .. 26;
      OBL_LAUNCH     at 0 range 27 .. 27;
      SEC_PROT       at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      OPTLOCK        at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype FLASH_OPTR_RDP_Field is HAL.UInt8;
   subtype FLASH_OPTR_BORR_LEV_Field is HAL.UInt2;
   subtype FLASH_OPTR_BORF_LEV_Field is HAL.UInt2;
   subtype FLASH_OPTR_NRST_MODE_Field is HAL.UInt2;

   --  FLASH option register
   type FLASH_OPTR_Register is record
      --  Read protection level Other: Level 1, memories read protection active
      RDP              : FLASH_OPTR_RDP_Field := 16#0#;
      --  Brown out reset enable
      BOR_EN           : Boolean := False;
      --  BOR threshold at falling VDD supply Falling VDD crossings this
      --  threshold activates the reset signal.
      BORR_LEV         : FLASH_OPTR_BORR_LEV_Field := 16#0#;
      --  BOR threshold at falling VDD supply Falling VDD crossings this
      --  threshold activates the reset signal.
      BORF_LEV         : FLASH_OPTR_BORF_LEV_Field := 16#0#;
      --  None
      NRST_STOP        : Boolean := False;
      --  None
      NRST_STDBY       : Boolean := False;
      --  None
      NRST_SHDW        : Boolean := False;
      --  None
      IWDG_SW          : Boolean := False;
      --  Independent watchdog counter freeze in Stop mode
      IWDG_STOP        : Boolean := False;
      --  None
      IWGD_STDBY       : Boolean := False;
      --  Window watchdog selection
      WWDG_SW          : Boolean := False;
      --  unspecified
      Reserved_20_20   : HAL.Bit := 16#0#;
      --  HSE remapping enable/disable When cleared, the bit remaps the HSE
      --  clock source from PF0-OSC_IN/PF1-OSC_OUT pins to
      --  PC14-OSCX_IN/PC15-OSCX_OUT. Thus PC14-OSCX_IN/PC15-OSCX_OUT are
      --  shared by both LSE and HSE and the two clock sources cannot be use
      --  simultaneously. On packages with less than 48 pins, the remapping is
      --  always enabled (PF0-OSC_IN/PF1-OSC_OUT are not available), regardless
      --  of this bit. As all STM32C011xx packages have less than 48 pins, this
      --  bit is only applicable to STM32C031xx. Note: On 48 pins packages,
      --  when HSE_NOT_REMAPPED is reset, HSE cannot be used in bypass mode.
      --  Refer to product errata sheet for more details.
      HSE_NOT_REMAPPED : Boolean := False;
      --  SRAM parity check control enable/disable
      RAM_PARITY_CHECK : Boolean := False;
      --  Multiple-bonding security The bit allows enabling automatic I/O
      --  configuration to prevent conflicts on I/Os connected (bonded) onto
      --  the same pin. If the software sets one of the I/Os connected to the
      --  same pin as active by configuring the SYSCFG_CFGR3 register, enabling
      --  this bit automatically forces the other I/Os in digital input mode,
      --  regardless of their software configuration. When the bit is disabled,
      --  the SYSCFG_CFGR3 register setting is ignored, all GPIOs linked to a
      --  given pin are active and can be set in the mode specified by the
      --  corresponding GPIOx_MODER register. The user software must ensure
      --  that there is no conflict between GPIOs.
      SECURE_MUXING_EN : Boolean := False;
      --  BOOT0 signal source selection This option bit defines the source of
      --  the BOOT0 signal.
      NBOOT_SEL        : Boolean := False;
      --  Boot configuration Together with the BOOT0 pin or option bit nBOOT0
      --  (depending on nBOOT_SEL option bit configuration), this bit selects
      --  boot mode from the Main flash memory, SRAM or the System memory.
      --  Refer to Section 3: Boot configuration.
      NBOOT1           : Boolean := False;
      --  nBOOT0 option bit
      NBOOT0           : Boolean := False;
      --  NRST pin configuration
      NRST_MODE        : FLASH_OPTR_NRST_MODE_Field := 16#0#;
      --  Internal reset holder enable bit
      IRHEN            : Boolean := False;
      --  unspecified
      Reserved_30_31   : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_OPTR_Register use record
      RDP              at 0 range 0 .. 7;
      BOR_EN           at 0 range 8 .. 8;
      BORR_LEV         at 0 range 9 .. 10;
      BORF_LEV         at 0 range 11 .. 12;
      NRST_STOP        at 0 range 13 .. 13;
      NRST_STDBY       at 0 range 14 .. 14;
      NRST_SHDW        at 0 range 15 .. 15;
      IWDG_SW          at 0 range 16 .. 16;
      IWDG_STOP        at 0 range 17 .. 17;
      IWGD_STDBY       at 0 range 18 .. 18;
      WWDG_SW          at 0 range 19 .. 19;
      Reserved_20_20   at 0 range 20 .. 20;
      HSE_NOT_REMAPPED at 0 range 21 .. 21;
      RAM_PARITY_CHECK at 0 range 22 .. 22;
      SECURE_MUXING_EN at 0 range 23 .. 23;
      NBOOT_SEL        at 0 range 24 .. 24;
      NBOOT1           at 0 range 25 .. 25;
      NBOOT0           at 0 range 26 .. 26;
      NRST_MODE        at 0 range 27 .. 28;
      IRHEN            at 0 range 29 .. 29;
      Reserved_30_31   at 0 range 30 .. 31;
   end record;

   subtype FLASH_PCROP1ASR_PCROP1A_STRT_Field is HAL.UInt6;

   --  FLASH PCROP area A start address register
   type FLASH_PCROP1ASR_Register is record
      --  PCROP1A area start offset Contains the offset of the first subpage of
      --  the PCROP1A area. Note: The number of effective bits depends on the
      --  size of the flash memory in the device.
      PCROP1A_STRT  : FLASH_PCROP1ASR_PCROP1A_STRT_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_PCROP1ASR_Register use record
      PCROP1A_STRT  at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype FLASH_PCROP1AER_PCROP1A_END_Field is HAL.UInt6;

   --  FLASH PCROP area A end address register
   type FLASH_PCROP1AER_Register is record
      --  PCROP1A area end offset Contains the offset of the last subpage of
      --  the PCROP1A area. Note: The number of effective bits depends on the
      --  size of the flash memory in the device.
      PCROP1A_END   : FLASH_PCROP1AER_PCROP1A_END_Field := 16#0#;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#0#;
      --  PCROP area erase upon RDP level regression This bit determines
      --  whether the PCROP area (and the totality of the PCROP area boundary
      --  pages) is erased by the mass erase triggered by the RDP level
      --  regression from Level 1 to Level 0: The software can only set this
      --  bit. It is automatically reset upon mass erase following the RDP
      --  regression from Level 1 to Level 0.
      PCROP_RDP     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_PCROP1AER_Register use record
      PCROP1A_END   at 0 range 0 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      PCROP_RDP     at 0 range 31 .. 31;
   end record;

   subtype FLASH_WRP1AR_WRP1A_STRT_Field is HAL.UInt4;
   subtype FLASH_WRP1AR_WRP1A_END_Field is HAL.UInt4;

   --  FLASH WRP area A address register
   type FLASH_WRP1AR_Register is record
      --  WRP area A start offset This bitfield contains the offset of the
      --  first page of the WRP area A. Note: The number of effective bits
      --  depends on the size of the flash memory in the device.
      WRP1A_STRT     : FLASH_WRP1AR_WRP1A_STRT_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  WRP area A end offset This bitfield contains the offset of the last
      --  page of the WRP area A. Note: The number of effective bits depends on
      --  the size of the flash memory in the device.
      WRP1A_END      : FLASH_WRP1AR_WRP1A_END_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_WRP1AR_Register use record
      WRP1A_STRT     at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      WRP1A_END      at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype FLASH_WRP1BR_WRP1B_STRT_Field is HAL.UInt4;
   subtype FLASH_WRP1BR_WRP1B_END_Field is HAL.UInt4;

   --  FLASH WRP area B address register
   type FLASH_WRP1BR_Register is record
      --  WRP area B start offset This bitfield contains the offset of the
      --  first page of the WRP area B. Note: The number of effective bits
      --  depends on the size of the flash memory in the device.
      WRP1B_STRT     : FLASH_WRP1BR_WRP1B_STRT_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  WRP area B end offset This bitfield contains the offset of the last
      --  page of the WRP area B. Note: The number of effective bits depends on
      --  the size of the flash memory in the device.
      WRP1B_END      : FLASH_WRP1BR_WRP1B_END_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_WRP1BR_Register use record
      WRP1B_STRT     at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      WRP1B_END      at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype FLASH_PCROP1BSR_PCROP1B_STRT_Field is HAL.UInt6;

   --  FLASH PCROP area B start address register
   type FLASH_PCROP1BSR_Register is record
      --  PCROP1B area start offset Contains the offset of the first subpage of
      --  the PCROP1B area. Note: The number of effective bits depends on the
      --  size of the flash memory in the device.
      PCROP1B_STRT  : FLASH_PCROP1BSR_PCROP1B_STRT_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_PCROP1BSR_Register use record
      PCROP1B_STRT  at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype FLASH_PCROP1BER_PCROP1B_END_Field is HAL.UInt6;

   --  FLASH PCROP area B end address register
   type FLASH_PCROP1BER_Register is record
      --  PCROP1B area end offset Contains the offset of the last subpage of
      --  the PCROP1B area. Note: The number of effective bits depends on the
      --  size of the flash memory in the device.
      PCROP1B_END   : FLASH_PCROP1BER_PCROP1B_END_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_PCROP1BER_Register use record
      PCROP1B_END   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype FLASH_SECR_SEC_SIZE_Field is HAL.UInt5;

   --  FLASH security register
   type FLASH_SECR_Register is record
      --  Securable memory area size Contains the number of securable flash
      --  memory pages. Note: The number of effective bits depends on the size
      --  of the flash memory in the device.
      SEC_SIZE       : FLASH_SECR_SEC_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#0#;
      --  used to force boot from user area If the bit is set in association
      --  with RDP level 1, the debug capabilities are disabled, except in the
      --  case of a bad OBL (mismatch).
      BOOT_LOCK      : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECR_Register use record
      SEC_SIZE       at 0 range 0 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      BOOT_LOCK      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  FLASH register block
   type FLASH_Peripheral is record
      --  FLASH access control register
      FLASH_ACR       : aliased FLASH_ACR_Register;
      --  FLASH key register
      FLASH_KEYR      : aliased HAL.UInt32;
      --  FLASH option key register
      FLASH_OPTKEYR   : aliased HAL.UInt32;
      --  FLASH status register
      FLASH_SR        : aliased FLASH_SR_Register;
      --  FLASH control register
      FLASH_CR        : aliased FLASH_CR_Register;
      --  FLASH option register
      FLASH_OPTR      : aliased FLASH_OPTR_Register;
      --  FLASH PCROP area A start address register
      FLASH_PCROP1ASR : aliased FLASH_PCROP1ASR_Register;
      --  FLASH PCROP area A end address register
      FLASH_PCROP1AER : aliased FLASH_PCROP1AER_Register;
      --  FLASH WRP area A address register
      FLASH_WRP1AR    : aliased FLASH_WRP1AR_Register;
      --  FLASH WRP area B address register
      FLASH_WRP1BR    : aliased FLASH_WRP1BR_Register;
      --  FLASH PCROP area B start address register
      FLASH_PCROP1BSR : aliased FLASH_PCROP1BSR_Register;
      --  FLASH PCROP area B end address register
      FLASH_PCROP1BER : aliased FLASH_PCROP1BER_Register;
      --  FLASH security register
      FLASH_SECR      : aliased FLASH_SECR_Register;
   end record
     with Volatile;

   for FLASH_Peripheral use record
      FLASH_ACR       at 16#0# range 0 .. 31;
      FLASH_KEYR      at 16#8# range 0 .. 31;
      FLASH_OPTKEYR   at 16#C# range 0 .. 31;
      FLASH_SR        at 16#10# range 0 .. 31;
      FLASH_CR        at 16#14# range 0 .. 31;
      FLASH_OPTR      at 16#20# range 0 .. 31;
      FLASH_PCROP1ASR at 16#24# range 0 .. 31;
      FLASH_PCROP1AER at 16#28# range 0 .. 31;
      FLASH_WRP1AR    at 16#2C# range 0 .. 31;
      FLASH_WRP1BR    at 16#30# range 0 .. 31;
      FLASH_PCROP1BSR at 16#34# range 0 .. 31;
      FLASH_PCROP1BER at 16#38# range 0 .. 31;
      FLASH_SECR      at 16#80# range 0 .. 31;
   end record;

   --  FLASH register block
   FLASH_Periph : aliased FLASH_Peripheral
     with Import, Address => FLASH_Base;

end STM32_SVD.FLASH;
