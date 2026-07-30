--  This spec has been automatically generated from STM32U3C5.svd

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

   subtype FLASH_ACR_LATENCY_Field is HAL.UInt4;

   --  FLASH_ACR_PDREQ array
   type FLASH_ACR_PDREQ_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FLASH_ACR_PDREQ
   type FLASH_ACR_PDREQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PDREQ as a value
            Val : HAL.UInt2;
         when True =>
            --  PDREQ as an array
            Arr : FLASH_ACR_PDREQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FLASH_ACR_PDREQ_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  FLASH access control register
   type FLASH_ACR_Register is record
      --  Latency
      LATENCY        : FLASH_ACR_LATENCY_Field := 16#1#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Prefetch enable
      PRFTEN         : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Low-power read mode
      LPM            : Boolean := False;
      --  Bank 1 power-down mode request
      PDREQ          : FLASH_ACR_PDREQ_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Flash memory power-down mode during Sleep mode
      SLEEP_PD       : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_ACR_Register use record
      LATENCY        at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      PRFTEN         at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      LPM            at 0 range 11 .. 11;
      PDREQ          at 0 range 12 .. 13;
      SLEEP_PD       at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  FLASH_SR_PD array
   type FLASH_SR_PD_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FLASH_SR_PD
   type FLASH_SR_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : HAL.UInt2;
         when True =>
            --  PD as an array
            Arr : FLASH_SR_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FLASH_SR_PD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  FLASH nonsecure status register
   type FLASH_SR_Register is record
      --  Nonsecure end of operation
      EOP            : Boolean := False;
      --  Nonsecure operation error
      OPERR          : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Nonsecure programming error
      PROGERR        : Boolean := False;
      --  Nonsecure write protection error
      WRPERR         : Boolean := False;
      --  Nonsecure programming alignment error
      PGAERR         : Boolean := False;
      --  Nonsecure size error
      SIZERR         : Boolean := False;
      --  Nonsecure programming sequence error
      PGSERR         : Boolean := False;
      --  unspecified
      Reserved_8_12  : HAL.UInt5 := 16#0#;
      --  Option write error
      OPTWERR        : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Read-only. Nonsecure busy
      BSY            : Boolean := False;
      --  Read-only. Nonsecure wait data to write
      WDW            : Boolean := False;
      --  Read-only. OEM1 lock
      OEM1LOCK       : Boolean := False;
      --  Read-only. OEM2 lock
      OEM2LOCK       : Boolean := False;
      --  Read-only. Bank 1 in power-down mode
      PD             : FLASH_SR_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
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
      Reserved_8_12  at 0 range 8 .. 12;
      OPTWERR        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      BSY            at 0 range 16 .. 16;
      WDW            at 0 range 17 .. 17;
      OEM1LOCK       at 0 range 18 .. 18;
      OEM2LOCK       at 0 range 19 .. 19;
      PD             at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  FLASH secure status register
   type FLASH_SSR_Register is record
      --  Secure end of operation
      EOP            : Boolean := False;
      --  Secure operation error
      OPERR          : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Secure programming error
      PROGERR        : Boolean := False;
      --  Secure write protection error
      WRPERR         : Boolean := False;
      --  Secure programming alignment error
      PGAERR         : Boolean := False;
      --  Secure size error
      SIZERR         : Boolean := False;
      --  Secure programming sequence error
      PGSERR         : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Read-only. Secure busy
      BSY            : Boolean := False;
      --  Read-only. Secure wait data to write
      WDW            : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SSR_Register use record
      EOP            at 0 range 0 .. 0;
      OPERR          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      PROGERR        at 0 range 3 .. 3;
      WRPERR         at 0 range 4 .. 4;
      PGAERR         at 0 range 5 .. 5;
      SIZERR         at 0 range 6 .. 6;
      PGSERR         at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      BSY            at 0 range 16 .. 16;
      WDW            at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype FLASH_CR_PNB_Field is HAL.UInt8;

   --  FLASH nonsecure control register
   type FLASH_CR_Register is record
      --  Nonsecure programming
      PG             : Boolean := False;
      --  Nonsecure page erase
      PER            : Boolean := False;
      --  Nonsecure bank 1 mass erase
      MER1           : Boolean := False;
      --  Nonsecure page number selection
      PNB            : FLASH_CR_PNB_Field := 16#0#;
      --  Nonsecure bank selection for page erase
      BKER           : Boolean := False;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Nonsecure burst write programming mode
      BWR            : Boolean := False;
      --  Nonsecure bank 2 mass erase
      MER2           : Boolean := False;
      --  Nonsecure start
      STRT           : Boolean := False;
      --  Option modification start
      OPTSTRT        : Boolean := False;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Nonsecure end of operation interrupt enable
      EOPIE          : Boolean := False;
      --  Nonsecure error interrupt enable
      ERRIE          : Boolean := False;
      --  unspecified
      Reserved_26_26 : HAL.Bit := 16#0#;
      --  Option-byte loading forced
      OBL_LAUNCH     : Boolean := False;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  Option lock
      OPTLOCK        : Boolean := True;
      --  Nonsecure lock
      LOCK           : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_CR_Register use record
      PG             at 0 range 0 .. 0;
      PER            at 0 range 1 .. 1;
      MER1           at 0 range 2 .. 2;
      PNB            at 0 range 3 .. 10;
      BKER           at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      BWR            at 0 range 14 .. 14;
      MER2           at 0 range 15 .. 15;
      STRT           at 0 range 16 .. 16;
      OPTSTRT        at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      EOPIE          at 0 range 24 .. 24;
      ERRIE          at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      OBL_LAUNCH     at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      OPTLOCK        at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype FLASH_SCR_PNB_Field is HAL.UInt8;

   --  FLASH secure control register
   type FLASH_SCR_Register is record
      --  Secure programming
      PG             : Boolean := False;
      --  Secure page erase
      PER            : Boolean := False;
      --  Secure bank 1 mass erase
      MER1           : Boolean := False;
      --  Secure page number selection
      PNB            : FLASH_SCR_PNB_Field := 16#0#;
      --  Secure bank selection for page erase
      BKER           : Boolean := False;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Secure burst write programming mode
      BWR            : Boolean := False;
      --  Secure bank 2 mass erase
      MER2           : Boolean := False;
      --  Secure start
      STRT           : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Secure end of operation interrupt enable
      EOPIE          : Boolean := False;
      --  Secure error interrupt enable
      ERRIE          : Boolean := False;
      --  unspecified
      Reserved_26_28 : HAL.UInt3 := 16#0#;
      --  Flash memory security state invert
      INV            : Boolean := False;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Secure lock
      LOCK           : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SCR_Register use record
      PG             at 0 range 0 .. 0;
      PER            at 0 range 1 .. 1;
      MER1           at 0 range 2 .. 2;
      PNB            at 0 range 3 .. 10;
      BKER           at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      BWR            at 0 range 14 .. 14;
      MER2           at 0 range 15 .. 15;
      STRT           at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      EOPIE          at 0 range 24 .. 24;
      ERRIE          at 0 range 25 .. 25;
      Reserved_26_28 at 0 range 26 .. 28;
      INV            at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype FLASH_ECCCORR_ADDR_ECC_Field is HAL.UInt20;

   --  FLASH ECC register
   type FLASH_ECCCORR_Register is record
      --  Read-only. ECC fail address
      ADDR_ECC       : FLASH_ECCCORR_ADDR_ECC_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  Read-only. ECC fail bank
      BK_ECC         : Boolean := False;
      --  Read-only. System flash memory ECC fail
      SYSF_ECC       : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  ECC correction interrupt enable
      ECCIE          : Boolean := False;
      --  unspecified
      Reserved_25_29 : HAL.UInt5 := 16#0#;
      --  ECC correction
      ECCC           : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_ECCCORR_Register use record
      ADDR_ECC       at 0 range 0 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      BK_ECC         at 0 range 21 .. 21;
      SYSF_ECC       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      ECCIE          at 0 range 24 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      ECCC           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype FLASH_ECCDETR_ADDR_ECC_Field is HAL.UInt20;

   --  FLASH ECC detection register
   type FLASH_ECCDETR_Register is record
      --  Read-only. ECC fail address
      ADDR_ECC       : FLASH_ECCDETR_ADDR_ECC_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  Read-only. ECC fail bank
      BK_ECC         : Boolean := False;
      --  Read-only. System flash memory ECC fail
      SYSF_ECC       : Boolean := False;
      --  unspecified
      Reserved_23_30 : HAL.UInt8 := 16#0#;
      --  ECC detection
      ECCD           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_ECCDETR_Register use record
      ADDR_ECC       at 0 range 0 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      BK_ECC         at 0 range 21 .. 21;
      SYSF_ECC       at 0 range 22 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      ECCD           at 0 range 31 .. 31;
   end record;

   subtype FLASH_OPSR_ADDR_OP_Field is HAL.UInt20;
   subtype FLASH_OPSR_CODE_OP_Field is HAL.UInt3;

   --  FLASH operation status register
   type FLASH_OPSR_Register is record
      --  Read-only. Interrupted operation address
      ADDR_OP        : FLASH_OPSR_ADDR_OP_Field;
      --  unspecified
      Reserved_20_20 : HAL.Bit;
      --  Read-only. Interrupted operation bank
      BK_OP          : Boolean;
      --  Read-only. Operation in system flash memory interrupted
      SYSF_OP        : Boolean;
      --  unspecified
      Reserved_23_28 : HAL.UInt6;
      --  Read-only. Flash memory operation code
      CODE_OP        : FLASH_OPSR_CODE_OP_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_OPSR_Register use record
      ADDR_OP        at 0 range 0 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      BK_OP          at 0 range 21 .. 21;
      SYSF_OP        at 0 range 22 .. 22;
      Reserved_23_28 at 0 range 23 .. 28;
      CODE_OP        at 0 range 29 .. 31;
   end record;

   subtype FLASH_OPTR_RDP_Field is HAL.UInt8;
   subtype FLASH_OPTR_BOR_LEV_Field is HAL.UInt3;

   --  FLASH option register
   type FLASH_OPTR_Register is record
      --  Readout protection level
      RDP            : FLASH_OPTR_RDP_Field := 16#0#;
      --  BOR reset level
      BOR_LEV        : FLASH_OPTR_BOR_LEV_Field := 16#0#;
      --  Backup domain reset with power-on reset
      BDRST_POR      : Boolean := False;
      --  Reset generation in Stop mode
      NRST_STOP      : Boolean := False;
      --  Reset generation in Standby mode
      NRST_STDBY     : Boolean := False;
      --  Reset generation in Shutdown mode
      NRST_SHDW      : Boolean := False;
      --  All SRAMs (except SRAM2 and SRAM4) erase upon system reset
      SRAM_RST       : Boolean := False;
      --  Independent watchdog selection
      IWDG_SW        : Boolean := False;
      --  Independent watchdog counter freeze in Stop mode
      IWDG_STOP      : Boolean := False;
      --  Independent watchdog counter freeze in Standby mode
      IWDG_STDBY     : Boolean := False;
      --  Window watchdog selection
      WWDG_SW        : Boolean := False;
      --  Swap banks
      SWAP_BANK      : Boolean := False;
      --  Dual-bank on 512-Kbyte flash memory devices
      DUALBANK       : Boolean := False;
      --  unspecified
      Reserved_22_22 : HAL.Bit := 16#0#;
      --  SRAM3 parity check enable
      SRAM3_PE       : Boolean := False;
      --  SRAM2 parity check enable
      SRAM2_PE       : Boolean := False;
      --  SRAM2 erase when system reset
      SRAM2_RST      : Boolean := False;
      --  Software BOOT0
      NSWBOOT0       : Boolean := False;
      --  NBOOT0 option bit
      NBOOT0         : Boolean := False;
      --  unspecified
      Reserved_28_28 : HAL.Bit := 16#0#;
      --  High-speed I/O at low Vless thansub>DD less than/sub>voltage
      --  configuration bit
      IO_VDD_HSLV    : Boolean := False;
      --  High-speed I/O at low Vless thansub>DDIO2less than/sub> voltage
      --  configuration bit
      IO_VDDIO2_HSLV : Boolean := False;
      --  Global TrustZone security enable
      TZEN           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_OPTR_Register use record
      RDP            at 0 range 0 .. 7;
      BOR_LEV        at 0 range 8 .. 10;
      BDRST_POR      at 0 range 11 .. 11;
      NRST_STOP      at 0 range 12 .. 12;
      NRST_STDBY     at 0 range 13 .. 13;
      NRST_SHDW      at 0 range 14 .. 14;
      SRAM_RST       at 0 range 15 .. 15;
      IWDG_SW        at 0 range 16 .. 16;
      IWDG_STOP      at 0 range 17 .. 17;
      IWDG_STDBY     at 0 range 18 .. 18;
      WWDG_SW        at 0 range 19 .. 19;
      SWAP_BANK      at 0 range 20 .. 20;
      DUALBANK       at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      SRAM3_PE       at 0 range 23 .. 23;
      SRAM2_PE       at 0 range 24 .. 24;
      SRAM2_RST      at 0 range 25 .. 25;
      NSWBOOT0       at 0 range 26 .. 26;
      NBOOT0         at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      IO_VDD_HSLV    at 0 range 29 .. 29;
      IO_VDDIO2_HSLV at 0 range 30 .. 30;
      TZEN           at 0 range 31 .. 31;
   end record;

   subtype FLASH_BOOT0R_ADD_Field is HAL.UInt25;

   --  FLASH nonsecure boot address 0 register
   type FLASH_BOOT0R_Register is record
      --  unspecified
      Reserved_0_6 : HAL.UInt7 := 16#F#;
      --  Nonsecure boot base address 0
      ADD          : FLASH_BOOT0R_ADD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_BOOT0R_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      ADD          at 0 range 7 .. 31;
   end record;

   subtype FLASH_BOOT1R_ADD_Field is HAL.UInt25;

   --  FLASH nonsecure boot address 1 register
   type FLASH_BOOT1R_Register is record
      --  unspecified
      Reserved_0_6 : HAL.UInt7 := 16#F#;
      --  nonsecure boot address 1
      ADD          : FLASH_BOOT1R_ADD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_BOOT1R_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      ADD          at 0 range 7 .. 31;
   end record;

   subtype FLASH_SBOOT0R_ADD_Field is HAL.UInt25;

   --  FLASH secure boot address 0 register
   type FLASH_SBOOT0R_Register is record
      --  Boot lock
      BOOT_LOCK    : Boolean := False;
      --  unspecified
      Reserved_1_6 : HAL.UInt6 := 16#0#;
      --  Secure boot base address 0
      ADD          : FLASH_SBOOT0R_ADD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SBOOT0R_Register use record
      BOOT_LOCK    at 0 range 0 .. 0;
      Reserved_1_6 at 0 range 1 .. 6;
      ADD          at 0 range 7 .. 31;
   end record;

   subtype FLASH_SECWM1R1_SECWM1_STRT_Field is HAL.UInt8;
   subtype FLASH_SECWM1R1_SECWM1_END_Field is HAL.UInt8;

   --  FLASH secure watermark1 register 1
   type FLASH_SECWM1R1_Register is record
      --  Start page of first secure area
      SECWM1_STRT    : FLASH_SECWM1R1_SECWM1_STRT_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#FF#;
      --  End page of first secure area
      SECWM1_END     : FLASH_SECWM1R1_SECWM1_END_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#FF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECWM1R1_Register use record
      SECWM1_STRT    at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      SECWM1_END     at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLASH_SECWM1R2_HDP1_END_Field is HAL.UInt8;
   subtype FLASH_SECWM1R2_HDP1EN_Field is HAL.UInt8;

   --  FLASH secure watermark1 register 2
   type FLASH_SECWM1R2_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#FFFF#;
      --  End page of first hide protection area
      HDP1_END      : FLASH_SECWM1R2_HDP1_END_Field := 16#0#;
      --  Hide protection first area enable
      HDP1EN        : FLASH_SECWM1R2_HDP1EN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECWM1R2_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      HDP1_END      at 0 range 16 .. 23;
      HDP1EN        at 0 range 24 .. 31;
   end record;

   subtype FLASH_WRP1AR_STRT_Field is HAL.UInt8;
   subtype FLASH_WRP1AR_END_Field is HAL.UInt8;

   --  FLASH WRP1 area A address register
   type FLASH_WRP1AR_Register is record
      --  Bank 1 WPR first area A start page
      STRT           : FLASH_WRP1AR_STRT_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#FF#;
      --  Bank 1 WPR first area A end page
      END_k          : FLASH_WRP1AR_END_Field := 16#0#;
      --  unspecified
      Reserved_24_30 : HAL.UInt7 := 16#F#;
      --  Bank 1 WPR first area A unlock
      UNLOCK         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_WRP1AR_Register use record
      STRT           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      END_k          at 0 range 16 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      UNLOCK         at 0 range 31 .. 31;
   end record;

   subtype FLASH_WRP1BR_STRT_Field is HAL.UInt8;
   subtype FLASH_WRP1BR_END_Field is HAL.UInt8;

   --  FLASH WRP1 area B address register
   type FLASH_WRP1BR_Register is record
      --  Bank 1 WRP second area B start page
      STRT           : FLASH_WRP1BR_STRT_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#FF#;
      --  Bank 1 WRP second area B end page
      END_k          : FLASH_WRP1BR_END_Field := 16#0#;
      --  unspecified
      Reserved_24_30 : HAL.UInt7 := 16#F#;
      --  Bank 1 WPR second area B unlock
      UNLOCK         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_WRP1BR_Register use record
      STRT           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      END_k          at 0 range 16 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      UNLOCK         at 0 range 31 .. 31;
   end record;

   subtype FLASH_SECWM2R1_SECWM2_STRT_Field is HAL.UInt8;
   subtype FLASH_SECWM2R1_SECWM2_END_Field is HAL.UInt8;

   --  FLASH secure watermark2 register 1
   type FLASH_SECWM2R1_Register is record
      --  Start page of second secure area
      SECWM2_STRT    : FLASH_SECWM2R1_SECWM2_STRT_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#FF#;
      --  End page of second secure area
      SECWM2_END     : FLASH_SECWM2R1_SECWM2_END_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#FF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECWM2R1_Register use record
      SECWM2_STRT    at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      SECWM2_END     at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLASH_SECWM2R2_HDP2_END_Field is HAL.UInt8;
   subtype FLASH_SECWM2R2_HDP2EN_Field is HAL.UInt8;

   --  FLASH secure watermark2 register 2
   type FLASH_SECWM2R2_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#FFFF#;
      --  End page of hide protection second area
      HDP2_END      : FLASH_SECWM2R2_HDP2_END_Field := 16#0#;
      --  Hide protection second area enable
      HDP2EN        : FLASH_SECWM2R2_HDP2EN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECWM2R2_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      HDP2_END      at 0 range 16 .. 23;
      HDP2EN        at 0 range 24 .. 31;
   end record;

   subtype FLASH_WRP2AR_STRT_Field is HAL.UInt8;
   subtype FLASH_WRP2AR_END_Field is HAL.UInt8;

   --  FLASH WPR2 area A address register
   type FLASH_WRP2AR_Register is record
      --  Bank 2 WPR first area A start page
      STRT           : FLASH_WRP2AR_STRT_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#FF#;
      --  Bank 2 WPR first area A end page
      END_k          : FLASH_WRP2AR_END_Field := 16#0#;
      --  unspecified
      Reserved_24_30 : HAL.UInt7 := 16#F#;
      --  Bank 2 WPR first area A unlock
      UNLOCK         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_WRP2AR_Register use record
      STRT           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      END_k          at 0 range 16 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      UNLOCK         at 0 range 31 .. 31;
   end record;

   subtype FLASH_WRP2BR_STRT_Field is HAL.UInt8;
   subtype FLASH_WRP2BR_END_Field is HAL.UInt8;

   --  FLASH WPR2 area B address register
   type FLASH_WRP2BR_Register is record
      --  Bank 2 WPR second area B start page
      STRT           : FLASH_WRP2BR_STRT_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#FF#;
      --  Bank 2 WPR second area B end page
      END_k          : FLASH_WRP2BR_END_Field := 16#0#;
      --  unspecified
      Reserved_24_30 : HAL.UInt7 := 16#F#;
      --  Bank 2 WPR second area B unlock
      UNLOCK         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_WRP2BR_Register use record
      STRT           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      END_k          at 0 range 16 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      UNLOCK         at 0 range 31 .. 31;
   end record;

   --  FLASH_SECBB1R_SEC array
   type FLASH_SECBB1R_SEC_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  FLASH secure block based bank 1 register 1
   type FLASH_SECBB1R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt32;
         when True =>
            --  SEC as an array
            Arr : FLASH_SECBB1R_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECBB1R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  FLASH_SECBB2R_SEC array
   type FLASH_SECBB2R_SEC_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  FLASH secure block based bank 2 register 1
   type FLASH_SECBB2R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt32;
         when True =>
            --  SEC as an array
            Arr : FLASH_SECBB2R_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECBB2R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype FLASH_SECHDPCR_HDP1_ACCDIS_Field is HAL.UInt8;
   subtype FLASH_SECHDPCR_HDP2_ACCDIS_Field is HAL.UInt8;
   subtype FLASH_SECHDPCR_HDP1EXT_ACCDIS_Field is HAL.UInt8;
   subtype FLASH_SECHDPCR_HDP2EXT_ACCDIS_Field is HAL.UInt8;

   --  FLASH secure HDP control register
   type FLASH_SECHDPCR_Register is record
      --  HDP1 area access disable
      HDP1_ACCDIS    : FLASH_SECHDPCR_HDP1_ACCDIS_Field := 16#A3#;
      --  HDP2 area access disable
      HDP2_ACCDIS    : FLASH_SECHDPCR_HDP2_ACCDIS_Field := 16#A3#;
      --  HDP1 extension area access disable
      HDP1EXT_ACCDIS : FLASH_SECHDPCR_HDP1EXT_ACCDIS_Field := 16#A3#;
      --  HDP2 extension area access disable
      HDP2EXT_ACCDIS : FLASH_SECHDPCR_HDP2EXT_ACCDIS_Field := 16#A3#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECHDPCR_Register use record
      HDP1_ACCDIS    at 0 range 0 .. 7;
      HDP2_ACCDIS    at 0 range 8 .. 15;
      HDP1EXT_ACCDIS at 0 range 16 .. 23;
      HDP2EXT_ACCDIS at 0 range 24 .. 31;
   end record;

   --  FLASH privilege configuration register
   type FLASH_PRIVCFGR_Register is record
      --  Privileged protection for secure registers
      SPRIV         : Boolean := False;
      --  Privileged protection for nonsecure registers
      PRIV          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_PRIVCFGR_Register use record
      SPRIV         at 0 range 0 .. 0;
      PRIV          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FLASH_SECHDPEXTR_HDP1_EXT_Field is HAL.UInt9;
   subtype FLASH_SECHDPEXTR_HDP2_EXT_Field is HAL.UInt9;

   --  FLASH HDP extension register
   type FLASH_SECHDPEXTR_Register is record
      --  HDP area extension in 4-Kbyte pages in bank 1
      HDP1_EXT       : FLASH_SECHDPEXTR_HDP1_EXT_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  HDP area extension in 4-Kbyte pages in bank 2
      HDP2_EXT       : FLASH_SECHDPEXTR_HDP2_EXT_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECHDPEXTR_Register use record
      HDP1_EXT       at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      HDP2_EXT       at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  FLASH_PRIVBB1R_PRIV array
   type FLASH_PRIVBB1R_PRIV_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  FLASH privilege block-based bank 1 register 1
   type FLASH_PRIVBB1R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PRIV as an array
            Arr : FLASH_PRIVBB1R_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_PRIVBB1R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  FLASH_PRIVBB2R_PRIV array
   type FLASH_PRIVBB2R_PRIV_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  FLASH privilege block based bank 2 register 1
   type FLASH_PRIVBB2R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PRIV as an array
            Arr : FLASH_PRIVBB2R_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_PRIVBB2R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype FLASH_OEMKEYSR_OEM1KEYCRC_Field is HAL.UInt8;
   subtype FLASH_OEMKEYSR_OEM2KEYCRC_Field is HAL.UInt8;

   --  FLASH OEM key status register
   type FLASH_OEMKEYSR_Register is record
      --  Read-only. 8-bit OEMKEY1 CRC
      OEM1KEYCRC     : FLASH_OEMKEYSR_OEM1KEYCRC_Field;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. 8-bit OEM2KEY CRC
      OEM2KEYCRC     : FLASH_OEMKEYSR_OEM2KEYCRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_OEMKEYSR_Register use record
      OEM1KEYCRC     at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      OEM2KEYCRC     at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  FLASH register block
   type FLASH_Peripheral is record
      --  FLASH access control register
      FLASH_ACR        : aliased FLASH_ACR_Register;
      --  FLASH nonsecure key register
      FLASH_KEYR       : aliased HAL.UInt32;
      --  FLASH secure key register
      FLASH_SKEYR      : aliased HAL.UInt32;
      --  FLASH option key register
      FLASH_OPTKEYR    : aliased HAL.UInt32;
      --  FLASH bank 1 power-down key register
      FLASH_PDKEY1R    : aliased HAL.UInt32;
      --  FLASH bank 2 power-down key register
      FLASH_PDKEY2R    : aliased HAL.UInt32;
      --  FLASH nonsecure status register
      FLASH_SR         : aliased FLASH_SR_Register;
      --  FLASH secure status register
      FLASH_SSR        : aliased FLASH_SSR_Register;
      --  FLASH nonsecure control register
      FLASH_CR         : aliased FLASH_CR_Register;
      --  FLASH secure control register
      FLASH_SCR        : aliased FLASH_SCR_Register;
      --  FLASH ECC register
      FLASH_ECCCORR    : aliased FLASH_ECCCORR_Register;
      --  FLASH ECC detection register
      FLASH_ECCDETR    : aliased FLASH_ECCDETR_Register;
      --  FLASH operation status register
      FLASH_OPSR       : aliased FLASH_OPSR_Register;
      --  FLASH option register
      FLASH_OPTR       : aliased FLASH_OPTR_Register;
      --  FLASH nonsecure boot address 0 register
      FLASH_BOOT0R     : aliased FLASH_BOOT0R_Register;
      --  FLASH nonsecure boot address 1 register
      FLASH_BOOT1R     : aliased FLASH_BOOT1R_Register;
      --  FLASH secure boot address 0 register
      FLASH_SBOOT0R    : aliased FLASH_SBOOT0R_Register;
      --  FLASH secure watermark1 register 1
      FLASH_SECWM1R1   : aliased FLASH_SECWM1R1_Register;
      --  FLASH secure watermark1 register 2
      FLASH_SECWM1R2   : aliased FLASH_SECWM1R2_Register;
      --  FLASH WRP1 area A address register
      FLASH_WRP1AR     : aliased FLASH_WRP1AR_Register;
      --  FLASH WRP1 area B address register
      FLASH_WRP1BR     : aliased FLASH_WRP1BR_Register;
      --  FLASH secure watermark2 register 1
      FLASH_SECWM2R1   : aliased FLASH_SECWM2R1_Register;
      --  FLASH secure watermark2 register 2
      FLASH_SECWM2R2   : aliased FLASH_SECWM2R2_Register;
      --  FLASH WPR2 area A address register
      FLASH_WRP2AR     : aliased FLASH_WRP2AR_Register;
      --  FLASH WPR2 area B address register
      FLASH_WRP2BR     : aliased FLASH_WRP2BR_Register;
      --  FLASH secure block based bank 1 register 1
      FLASH_SECBB1R1   : aliased FLASH_SECBB1R_Register;
      --  FLASH secure block based bank 1 register 2
      FLASH_SECBB1R2   : aliased FLASH_SECBB1R_Register;
      --  FLASH secure block based bank 1 register 3
      FLASH_SECBB1R3   : aliased FLASH_SECBB1R_Register;
      --  FLASH secure block based bank 1 register 4
      FLASH_SECBB1R4   : aliased FLASH_SECBB1R_Register;
      --  FLASH secure block based bank 2 register 1
      FLASH_SECBB2R1   : aliased FLASH_SECBB2R_Register;
      --  FLASH secure block based bank 2 register 2
      FLASH_SECBB2R2   : aliased FLASH_SECBB2R_Register;
      --  FLASH secure block based bank 2 register 3
      FLASH_SECBB2R3   : aliased FLASH_SECBB2R_Register;
      --  FLASH secure block based bank 2 register 4
      FLASH_SECBB2R4   : aliased FLASH_SECBB2R_Register;
      --  FLASH secure block based bank 2 register 5
      FLASH_SECBB2R5   : aliased FLASH_SECBB2R_Register;
      --  FLASH secure block based bank 2 register 6
      FLASH_SECBB2R6   : aliased FLASH_SECBB2R_Register;
      --  FLASH secure block based bank 2 register 7
      FLASH_SECBB2R7   : aliased FLASH_SECBB2R_Register;
      --  FLASH secure block based bank 2 register 8
      FLASH_SECBB2R8   : aliased FLASH_SECBB2R_Register;
      --  FLASH secure HDP control register
      FLASH_SECHDPCR   : aliased FLASH_SECHDPCR_Register;
      --  FLASH privilege configuration register
      FLASH_PRIVCFGR   : aliased FLASH_PRIVCFGR_Register;
      --  FLASH HDP extension register
      FLASH_SECHDPEXTR : aliased FLASH_SECHDPEXTR_Register;
      --  FLASH privilege block-based bank 1 register 1
      FLASH_PRIVBB1R1  : aliased FLASH_PRIVBB1R_Register;
      --  FLASH privilege block-based bank 1 register 2
      FLASH_PRIVBB1R2  : aliased FLASH_PRIVBB1R_Register;
      --  FLASH privilege block-based bank 1 register 3
      FLASH_PRIVBB1R3  : aliased FLASH_PRIVBB1R_Register;
      --  FLASH privilege block-based bank 1 register 4
      FLASH_PRIVBB1R4  : aliased FLASH_PRIVBB1R_Register;
      --  FLASH privilege block based bank 2 register 1
      FLASH_PRIVBB2R1  : aliased FLASH_PRIVBB2R_Register;
      --  FLASH privilege block based bank 2 register 2
      FLASH_PRIVBB2R2  : aliased FLASH_PRIVBB2R_Register;
      --  FLASH privilege block based bank 2 register 3
      FLASH_PRIVBB2R3  : aliased FLASH_PRIVBB2R_Register;
      --  FLASH privilege block based bank 2 register 4
      FLASH_PRIVBB2R4  : aliased FLASH_PRIVBB2R_Register;
      --  FLASH privilege block based bank 2 register 5
      FLASH_PRIVBB2R5  : aliased FLASH_PRIVBB2R_Register;
      --  FLASH privilege block based bank 2 register 6
      FLASH_PRIVBB2R6  : aliased FLASH_PRIVBB2R_Register;
      --  FLASH privilege block based bank 2 register 7
      FLASH_PRIVBB2R7  : aliased FLASH_PRIVBB2R_Register;
      --  FLASH privilege block based bank 2 register 8
      FLASH_PRIVBB2R8  : aliased FLASH_PRIVBB2R_Register;
      --  FLASH OEM1 key register 1
      FLASH_OEM1KEYR1  : aliased HAL.UInt32;
      --  FLASH OEM1 key register 2
      FLASH_OEM1KEYR2  : aliased HAL.UInt32;
      --  FLASH OEM1 key register 3
      FLASH_OEM1KEYR3  : aliased HAL.UInt32;
      --  FLASH OEM1 key register 4
      FLASH_OEM1KEYR4  : aliased HAL.UInt32;
      --  FLASH OEM2 key register 1
      FLASH_OEM2KEYR1  : aliased HAL.UInt32;
      --  FLASH OEM2 key register 2
      FLASH_OEM2KEYR2  : aliased HAL.UInt32;
      --  FLASH OEM2 key register 3
      FLASH_OEM2KEYR3  : aliased HAL.UInt32;
      --  FLASH OEM2 key register 4
      FLASH_OEM2KEYR4  : aliased HAL.UInt32;
      --  FLASH OEM key status register
      FLASH_OEMKEYSR   : aliased FLASH_OEMKEYSR_Register;
   end record
     with Volatile;

   for FLASH_Peripheral use record
      FLASH_ACR        at 16#0# range 0 .. 31;
      FLASH_KEYR       at 16#8# range 0 .. 31;
      FLASH_SKEYR      at 16#C# range 0 .. 31;
      FLASH_OPTKEYR    at 16#10# range 0 .. 31;
      FLASH_PDKEY1R    at 16#18# range 0 .. 31;
      FLASH_PDKEY2R    at 16#1C# range 0 .. 31;
      FLASH_SR         at 16#20# range 0 .. 31;
      FLASH_SSR        at 16#24# range 0 .. 31;
      FLASH_CR         at 16#28# range 0 .. 31;
      FLASH_SCR        at 16#2C# range 0 .. 31;
      FLASH_ECCCORR    at 16#30# range 0 .. 31;
      FLASH_ECCDETR    at 16#34# range 0 .. 31;
      FLASH_OPSR       at 16#38# range 0 .. 31;
      FLASH_OPTR       at 16#40# range 0 .. 31;
      FLASH_BOOT0R     at 16#44# range 0 .. 31;
      FLASH_BOOT1R     at 16#48# range 0 .. 31;
      FLASH_SBOOT0R    at 16#4C# range 0 .. 31;
      FLASH_SECWM1R1   at 16#50# range 0 .. 31;
      FLASH_SECWM1R2   at 16#54# range 0 .. 31;
      FLASH_WRP1AR     at 16#58# range 0 .. 31;
      FLASH_WRP1BR     at 16#5C# range 0 .. 31;
      FLASH_SECWM2R1   at 16#60# range 0 .. 31;
      FLASH_SECWM2R2   at 16#64# range 0 .. 31;
      FLASH_WRP2AR     at 16#68# range 0 .. 31;
      FLASH_WRP2BR     at 16#6C# range 0 .. 31;
      FLASH_SECBB1R1   at 16#80# range 0 .. 31;
      FLASH_SECBB1R2   at 16#84# range 0 .. 31;
      FLASH_SECBB1R3   at 16#88# range 0 .. 31;
      FLASH_SECBB1R4   at 16#8C# range 0 .. 31;
      FLASH_SECBB2R1   at 16#A0# range 0 .. 31;
      FLASH_SECBB2R2   at 16#A4# range 0 .. 31;
      FLASH_SECBB2R3   at 16#A8# range 0 .. 31;
      FLASH_SECBB2R4   at 16#AC# range 0 .. 31;
      FLASH_SECBB2R5   at 16#B0# range 0 .. 31;
      FLASH_SECBB2R6   at 16#B4# range 0 .. 31;
      FLASH_SECBB2R7   at 16#B8# range 0 .. 31;
      FLASH_SECBB2R8   at 16#BC# range 0 .. 31;
      FLASH_SECHDPCR   at 16#C0# range 0 .. 31;
      FLASH_PRIVCFGR   at 16#C4# range 0 .. 31;
      FLASH_SECHDPEXTR at 16#C8# range 0 .. 31;
      FLASH_PRIVBB1R1  at 16#D0# range 0 .. 31;
      FLASH_PRIVBB1R2  at 16#D4# range 0 .. 31;
      FLASH_PRIVBB1R3  at 16#D8# range 0 .. 31;
      FLASH_PRIVBB1R4  at 16#DC# range 0 .. 31;
      FLASH_PRIVBB2R1  at 16#F0# range 0 .. 31;
      FLASH_PRIVBB2R2  at 16#F4# range 0 .. 31;
      FLASH_PRIVBB2R3  at 16#F8# range 0 .. 31;
      FLASH_PRIVBB2R4  at 16#FC# range 0 .. 31;
      FLASH_PRIVBB2R5  at 16#100# range 0 .. 31;
      FLASH_PRIVBB2R6  at 16#104# range 0 .. 31;
      FLASH_PRIVBB2R7  at 16#108# range 0 .. 31;
      FLASH_PRIVBB2R8  at 16#10C# range 0 .. 31;
      FLASH_OEM1KEYR1  at 16#110# range 0 .. 31;
      FLASH_OEM1KEYR2  at 16#114# range 0 .. 31;
      FLASH_OEM1KEYR3  at 16#118# range 0 .. 31;
      FLASH_OEM1KEYR4  at 16#11C# range 0 .. 31;
      FLASH_OEM2KEYR1  at 16#120# range 0 .. 31;
      FLASH_OEM2KEYR2  at 16#124# range 0 .. 31;
      FLASH_OEM2KEYR3  at 16#128# range 0 .. 31;
      FLASH_OEM2KEYR4  at 16#12C# range 0 .. 31;
      FLASH_OEMKEYSR   at 16#130# range 0 .. 31;
   end record;

   --  FLASH register block
   FLASH_Periph : aliased FLASH_Peripheral
     with Import, Address => FLASH_Base;

   --  FLASH register block
   SEC_FLASH_Periph : aliased FLASH_Peripheral
     with Import, Address => SEC_FLASH_Base;

end STM32_SVD.FLASH;
