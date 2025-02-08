--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.MCE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MCE_CR_CIPHERSEL_Field is HAL.UInt2;

   --  MCE configuration register
   type MCE_CR_Register is record
      --  Global lock
      GLOCK         : Boolean := False;
      --  Master keys lock
      MKLOCK        : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Cipher selection
      CIPHERSEL     : MCE_CR_CIPHERSEL_Field := 16#1#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_CR_Register use record
      GLOCK         at 0 range 0 .. 0;
      MKLOCK        at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      CIPHERSEL     at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  MCE status register
   type MCE_SR_Register is record
      --  Read-only. Master key valid
      MKVALID       : Boolean;
      --  unspecified
      Reserved_1_1  : HAL.Bit;
      --  Read-only. Fast master key valid
      FMKVALID      : Boolean;
      --  unspecified
      Reserved_3_3  : HAL.Bit;
      --  Read-only. encryption disabled
      ENCDIS        : Boolean;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_SR_Register use record
      MKVALID       at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      FMKVALID      at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      ENCDIS        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  MCE illegal access status register
   type MCE_IASR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit;
      --  Read-only. Illegal access error flag
      IAEF          : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_IASR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      IAEF          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  MCE illegal access clear register
   type MCE_IACR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Write-only. Illegal access error flag clear
      IAEF          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_IACR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      IAEF          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  MCE illegal access interrupt enable register
   type MCE_IAIER_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit;
      --  Read-only. Illegal access error interrupt enable
      IAEIE         : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_IAIER_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      IAEIE         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype MCE_REGCR_CTXID_Field is HAL.UInt2;
   subtype MCE_REGCR_ENC_Field is HAL.UInt2;

   --  MCE region 1 configuration register
   type MCE_REGCR_Register is record
      --  Base region enable
      BREN           : Boolean := False;
      --  unspecified
      Reserved_1_8   : HAL.UInt8 := 16#0#;
      --  Context ID
      CTXID          : MCE_REGCR_CTXID_Field := 16#0#;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  Encrypted region
      ENC            : MCE_REGCR_ENC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_REGCR_Register use record
      BREN           at 0 range 0 .. 0;
      Reserved_1_8   at 0 range 1 .. 8;
      CTXID          at 0 range 9 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      ENC            at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MCE_SADDR_BADDSTART_Field is HAL.UInt20;

   --  MCE start address for region 1 register
   type MCE_SADDR_Register is record
      --  unspecified
      Reserved_0_11 : HAL.UInt12 := 16#0#;
      --  Region address start
      BADDSTART     : MCE_SADDR_BADDSTART_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_SADDR_Register use record
      Reserved_0_11 at 0 range 0 .. 11;
      BADDSTART     at 0 range 12 .. 31;
   end record;

   subtype MCE_EADDR_BADDEND_Field is HAL.UInt20;

   --  MCE end address for region 1 register
   type MCE_EADDR_Register is record
      --  unspecified
      Reserved_0_11 : HAL.UInt12 := 16#FFF#;
      --  Region address end
      BADDEND       : MCE_EADDR_BADDEND_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_EADDR_Register use record
      Reserved_0_11 at 0 range 0 .. 11;
      BADDEND       at 0 range 12 .. 31;
   end record;

   --  MCE_MKEYR0_MKEY array
   type MCE_MKEYR0_MKEY_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  .MCE master key 0
   type MCE_MKEYR0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MKEY as a value
            Val : HAL.UInt32;
         when True =>
            --  MKEY as an array
            Arr : MCE_MKEYR0_MKEY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_MKEYR0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCE_MKEYR1_MKEY array
   type MCE_MKEYR1_MKEY_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  .MCE master key 1
   type MCE_MKEYR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MKEY as a value
            Val : HAL.UInt32;
         when True =>
            --  MKEY as an array
            Arr : MCE_MKEYR1_MKEY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_MKEYR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCE_MKEYR2_MKEY array
   type MCE_MKEYR2_MKEY_Field_Array is array (64 .. 95) of Boolean
     with Component_Size => 1, Size => 32;

   --  .MCE master key 2
   type MCE_MKEYR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MKEY as a value
            Val : HAL.UInt32;
         when True =>
            --  MKEY as an array
            Arr : MCE_MKEYR2_MKEY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_MKEYR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCE_MKEYR3_MKEY array
   type MCE_MKEYR3_MKEY_Field_Array is array (96 .. 127) of Boolean
     with Component_Size => 1, Size => 32;

   --  .MCE master key 3
   type MCE_MKEYR3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MKEY as a value
            Val : HAL.UInt32;
         when True =>
            --  MKEY as an array
            Arr : MCE_MKEYR3_MKEY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_MKEYR3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCE_MKEYR4_MKEY array
   type MCE_MKEYR4_MKEY_Field_Array is array (128 .. 159) of Boolean
     with Component_Size => 1, Size => 32;

   --  .MCE master key 4
   type MCE_MKEYR4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MKEY as a value
            Val : HAL.UInt32;
         when True =>
            --  MKEY as an array
            Arr : MCE_MKEYR4_MKEY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_MKEYR4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCE_MKEYR5_MKEY array
   type MCE_MKEYR5_MKEY_Field_Array is array (160 .. 191) of Boolean
     with Component_Size => 1, Size => 32;

   --  .MCE master key 5
   type MCE_MKEYR5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MKEY as a value
            Val : HAL.UInt32;
         when True =>
            --  MKEY as an array
            Arr : MCE_MKEYR5_MKEY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_MKEYR5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCE_MKEYR6_MKEY array
   type MCE_MKEYR6_MKEY_Field_Array is array (192 .. 223) of Boolean
     with Component_Size => 1, Size => 32;

   --  .MCE master key 6
   type MCE_MKEYR6_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MKEY as a value
            Val : HAL.UInt32;
         when True =>
            --  MKEY as an array
            Arr : MCE_MKEYR6_MKEY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_MKEYR6_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCE_MKEYR7_MKEY array
   type MCE_MKEYR7_MKEY_Field_Array is array (224 .. 255) of Boolean
     with Component_Size => 1, Size => 32;

   --  .MCE master key 7
   type MCE_MKEYR7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MKEY as a value
            Val : HAL.UInt32;
         when True =>
            --  MKEY as an array
            Arr : MCE_MKEYR7_MKEY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_MKEYR7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCE_FMKEYR0_FMKEY array
   type MCE_FMKEYR0_FMKEY_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  MCE fast master key 0
   type MCE_FMKEYR0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FMKEY as a value
            Val : HAL.UInt32;
         when True =>
            --  FMKEY as an array
            Arr : MCE_FMKEYR0_FMKEY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_FMKEYR0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCE_FMKEYR1_FMKEY array
   type MCE_FMKEYR1_FMKEY_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  MCE fast master key 1
   type MCE_FMKEYR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FMKEY as a value
            Val : HAL.UInt32;
         when True =>
            --  FMKEY as an array
            Arr : MCE_FMKEYR1_FMKEY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_FMKEYR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCE_FMKEYR2_FMKEY array
   type MCE_FMKEYR2_FMKEY_Field_Array is array (64 .. 95) of Boolean
     with Component_Size => 1, Size => 32;

   --  MCE fast master key 2
   type MCE_FMKEYR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FMKEY as a value
            Val : HAL.UInt32;
         when True =>
            --  FMKEY as an array
            Arr : MCE_FMKEYR2_FMKEY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_FMKEYR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCE_FMKEYR3_FMKEY array
   type MCE_FMKEYR3_FMKEY_Field_Array is array (96 .. 127) of Boolean
     with Component_Size => 1, Size => 32;

   --  MCE fast master key 3
   type MCE_FMKEYR3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FMKEY as a value
            Val : HAL.UInt32;
         when True =>
            --  FMKEY as an array
            Arr : MCE_FMKEYR3_FMKEY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_FMKEYR3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCE_FMKEYR4_FMKEY array
   type MCE_FMKEYR4_FMKEY_Field_Array is array (128 .. 159) of Boolean
     with Component_Size => 1, Size => 32;

   --  MCE fast master key 4
   type MCE_FMKEYR4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FMKEY as a value
            Val : HAL.UInt32;
         when True =>
            --  FMKEY as an array
            Arr : MCE_FMKEYR4_FMKEY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_FMKEYR4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCE_FMKEYR5_FMKEY array
   type MCE_FMKEYR5_FMKEY_Field_Array is array (160 .. 191) of Boolean
     with Component_Size => 1, Size => 32;

   --  MCE fast master key 5
   type MCE_FMKEYR5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FMKEY as a value
            Val : HAL.UInt32;
         when True =>
            --  FMKEY as an array
            Arr : MCE_FMKEYR5_FMKEY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_FMKEYR5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCE_FMKEYR6_FMKEY array
   type MCE_FMKEYR6_FMKEY_Field_Array is array (192 .. 223) of Boolean
     with Component_Size => 1, Size => 32;

   --  MCE fast master key 6
   type MCE_FMKEYR6_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FMKEY as a value
            Val : HAL.UInt32;
         when True =>
            --  FMKEY as an array
            Arr : MCE_FMKEYR6_FMKEY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_FMKEYR6_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCE_FMKEYR7_FMKEY array
   type MCE_FMKEYR7_FMKEY_Field_Array is array (224 .. 255) of Boolean
     with Component_Size => 1, Size => 32;

   --  MCE fast master key 7
   type MCE_FMKEYR7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FMKEY as a value
            Val : HAL.UInt32;
         when True =>
            --  FMKEY as an array
            Arr : MCE_FMKEYR7_FMKEY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_FMKEYR7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype MCE_CC1CFGR_MODE_Field is HAL.UInt2;
   subtype MCE_CC1CFGR_KEYCRC_Field is HAL.UInt8;
   subtype MCE_CC1CFGR_VERSION_Field is HAL.UInt16;

   --  MCE cipher context 1 configuration register
   type MCE_CC1CFGR_Register is record
      --  Cipher context enable
      CCEN         : Boolean := False;
      --  Cipher context lock
      CCLOCK       : Boolean := False;
      --  Key lock
      KEYLOCK      : Boolean := False;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  Authorized cipher mode
      MODE         : MCE_CC1CFGR_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
      --  Read-only. Key CRC
      KEYCRC       : MCE_CC1CFGR_KEYCRC_Field := 16#0#;
      --  Version
      VERSION      : MCE_CC1CFGR_VERSION_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_CC1CFGR_Register use record
      CCEN         at 0 range 0 .. 0;
      CCLOCK       at 0 range 1 .. 1;
      KEYLOCK      at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      MODE         at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      KEYCRC       at 0 range 8 .. 15;
      VERSION      at 0 range 16 .. 31;
   end record;

   subtype MCE_CC2CFGR_MODE_Field is HAL.UInt2;
   subtype MCE_CC2CFGR_KEYCRC_Field is HAL.UInt8;
   subtype MCE_CC2CFGR_VERSION_Field is HAL.UInt16;

   --  MCE cipher context 2 configuration register
   type MCE_CC2CFGR_Register is record
      --  Cipher context enable
      CCEN         : Boolean := False;
      --  Cipher context lock
      CCLOCK       : Boolean := False;
      --  Key lock
      KEYLOCK      : Boolean := False;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  Authorized cipher mode
      MODE         : MCE_CC2CFGR_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
      --  Read-only. Key CRC
      KEYCRC       : MCE_CC2CFGR_KEYCRC_Field := 16#0#;
      --  Version
      VERSION      : MCE_CC2CFGR_VERSION_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCE_CC2CFGR_Register use record
      CCEN         at 0 range 0 .. 0;
      CCLOCK       at 0 range 1 .. 1;
      KEYLOCK      at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      MODE         at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      KEYCRC       at 0 range 8 .. 15;
      VERSION      at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Memory cipher engine
   type MCE_Peripheral is record
      --  MCE configuration register
      MCE_CR       : aliased MCE_CR_Register;
      --  MCE status register
      MCE_SR       : aliased MCE_SR_Register;
      --  MCE illegal access status register
      MCE_IASR     : aliased MCE_IASR_Register;
      --  MCE illegal access clear register
      MCE_IACR     : aliased MCE_IACR_Register;
      --  MCE illegal access interrupt enable register
      MCE_IAIER    : aliased MCE_IAIER_Register;
      --  MCE illegal address register
      MCE_IADDR    : aliased HAL.UInt32;
      --  MCE region 1 configuration register
      MCE_REGCR1   : aliased MCE_REGCR_Register;
      --  MCE start address for region 1 register
      MCE_SADDR1   : aliased MCE_SADDR_Register;
      --  MCE end address for region 1 register
      MCE_EADDR1   : aliased MCE_EADDR_Register;
      --  MCE region 2 configuration register
      MCE_REGCR2   : aliased MCE_REGCR_Register;
      --  MCE start address for region 2 register
      MCE_SADDR2   : aliased MCE_SADDR_Register;
      --  MCE end address for region 2 register
      MCE_EADDR2   : aliased MCE_EADDR_Register;
      --  MCE region 3 configuration register
      MCE_REGCR3   : aliased MCE_REGCR_Register;
      --  MCE start address for region 3 register
      MCE_SADDR3   : aliased MCE_SADDR_Register;
      --  MCE end address for region 3 register
      MCE_EADDR3   : aliased MCE_EADDR_Register;
      --  MCE region 4 configuration register
      MCE_REGCR4   : aliased MCE_REGCR_Register;
      --  MCE start address for region 4 register
      MCE_SADDR4   : aliased MCE_SADDR_Register;
      --  MCE end address for region 4 register
      MCE_EADDR4   : aliased MCE_EADDR_Register;
      --  .MCE master key 0
      MCE_MKEYR0   : aliased MCE_MKEYR0_Register;
      --  .MCE master key 1
      MCE_MKEYR1   : aliased MCE_MKEYR1_Register;
      --  .MCE master key 2
      MCE_MKEYR2   : aliased MCE_MKEYR2_Register;
      --  .MCE master key 3
      MCE_MKEYR3   : aliased MCE_MKEYR3_Register;
      --  .MCE master key 4
      MCE_MKEYR4   : aliased MCE_MKEYR4_Register;
      --  .MCE master key 5
      MCE_MKEYR5   : aliased MCE_MKEYR5_Register;
      --  .MCE master key 6
      MCE_MKEYR6   : aliased MCE_MKEYR6_Register;
      --  .MCE master key 7
      MCE_MKEYR7   : aliased MCE_MKEYR7_Register;
      --  MCE fast master key 0
      MCE_FMKEYR0  : aliased MCE_FMKEYR0_Register;
      --  MCE fast master key 1
      MCE_FMKEYR1  : aliased MCE_FMKEYR1_Register;
      --  MCE fast master key 2
      MCE_FMKEYR2  : aliased MCE_FMKEYR2_Register;
      --  MCE fast master key 3
      MCE_FMKEYR3  : aliased MCE_FMKEYR3_Register;
      --  MCE fast master key 4
      MCE_FMKEYR4  : aliased MCE_FMKEYR4_Register;
      --  MCE fast master key 5
      MCE_FMKEYR5  : aliased MCE_FMKEYR5_Register;
      --  MCE fast master key 6
      MCE_FMKEYR6  : aliased MCE_FMKEYR6_Register;
      --  MCE fast master key 7
      MCE_FMKEYR7  : aliased MCE_FMKEYR7_Register;
      --  MCE cipher context 1 configuration register
      MCE_CC1CFGR  : aliased MCE_CC1CFGR_Register;
      --  MCE cipher context 1 nonce register 0
      MCE_CC1NR0   : aliased HAL.UInt32;
      --  MCE cipher context 1 nonce register 1
      MCE_CC1NR1   : aliased HAL.UInt32;
      --  MCE cipher context 1 key register 0
      MCE_CC1KEYR0 : aliased HAL.UInt32;
      --  MCE cipher context 1 key register 1
      MCE_CC1KEYR1 : aliased HAL.UInt32;
      --  MCE cipher context 1 key register 2
      MCE_CC1KEYR2 : aliased HAL.UInt32;
      --  MCE cipher context 1 key register 3
      MCE_CC1KEYR3 : aliased HAL.UInt32;
      --  MCE cipher context 2 configuration register
      MCE_CC2CFGR  : aliased MCE_CC2CFGR_Register;
      --  MCE cipher context 2 nonce register 0
      MCE_CC2NR0   : aliased HAL.UInt32;
      --  MCE cipher context 2 nonce register 1
      MCE_CC2NR1   : aliased HAL.UInt32;
      --  MCE cipher context 2 key register 0
      MCE_CC2KEYR0 : aliased HAL.UInt32;
      --  MCE cipher context 2 key register 1
      MCE_CC2KEYR1 : aliased HAL.UInt32;
      --  MCE cipher context 2 key register 2
      MCE_CC2KEYR2 : aliased HAL.UInt32;
      --  MCE cipher context 2 key register 3
      MCE_CC2KEYR3 : aliased HAL.UInt32;
   end record
     with Volatile;

   for MCE_Peripheral use record
      MCE_CR       at 16#0# range 0 .. 31;
      MCE_SR       at 16#4# range 0 .. 31;
      MCE_IASR     at 16#8# range 0 .. 31;
      MCE_IACR     at 16#C# range 0 .. 31;
      MCE_IAIER    at 16#10# range 0 .. 31;
      MCE_IADDR    at 16#24# range 0 .. 31;
      MCE_REGCR1   at 16#40# range 0 .. 31;
      MCE_SADDR1   at 16#44# range 0 .. 31;
      MCE_EADDR1   at 16#48# range 0 .. 31;
      MCE_REGCR2   at 16#50# range 0 .. 31;
      MCE_SADDR2   at 16#54# range 0 .. 31;
      MCE_EADDR2   at 16#58# range 0 .. 31;
      MCE_REGCR3   at 16#60# range 0 .. 31;
      MCE_SADDR3   at 16#64# range 0 .. 31;
      MCE_EADDR3   at 16#68# range 0 .. 31;
      MCE_REGCR4   at 16#70# range 0 .. 31;
      MCE_SADDR4   at 16#74# range 0 .. 31;
      MCE_EADDR4   at 16#78# range 0 .. 31;
      MCE_MKEYR0   at 16#200# range 0 .. 31;
      MCE_MKEYR1   at 16#204# range 0 .. 31;
      MCE_MKEYR2   at 16#208# range 0 .. 31;
      MCE_MKEYR3   at 16#20C# range 0 .. 31;
      MCE_MKEYR4   at 16#210# range 0 .. 31;
      MCE_MKEYR5   at 16#214# range 0 .. 31;
      MCE_MKEYR6   at 16#218# range 0 .. 31;
      MCE_MKEYR7   at 16#21C# range 0 .. 31;
      MCE_FMKEYR0  at 16#220# range 0 .. 31;
      MCE_FMKEYR1  at 16#224# range 0 .. 31;
      MCE_FMKEYR2  at 16#228# range 0 .. 31;
      MCE_FMKEYR3  at 16#22C# range 0 .. 31;
      MCE_FMKEYR4  at 16#230# range 0 .. 31;
      MCE_FMKEYR5  at 16#234# range 0 .. 31;
      MCE_FMKEYR6  at 16#238# range 0 .. 31;
      MCE_FMKEYR7  at 16#23C# range 0 .. 31;
      MCE_CC1CFGR  at 16#240# range 0 .. 31;
      MCE_CC1NR0   at 16#244# range 0 .. 31;
      MCE_CC1NR1   at 16#248# range 0 .. 31;
      MCE_CC1KEYR0 at 16#24C# range 0 .. 31;
      MCE_CC1KEYR1 at 16#250# range 0 .. 31;
      MCE_CC1KEYR2 at 16#254# range 0 .. 31;
      MCE_CC1KEYR3 at 16#258# range 0 .. 31;
      MCE_CC2CFGR  at 16#270# range 0 .. 31;
      MCE_CC2NR0   at 16#274# range 0 .. 31;
      MCE_CC2NR1   at 16#278# range 0 .. 31;
      MCE_CC2KEYR0 at 16#27C# range 0 .. 31;
      MCE_CC2KEYR1 at 16#280# range 0 .. 31;
      MCE_CC2KEYR2 at 16#284# range 0 .. 31;
      MCE_CC2KEYR3 at 16#288# range 0 .. 31;
   end record;

   --  Memory cipher engine
   MCE1_Periph : aliased MCE_Peripheral
     with Import, Address => MCE1_Base;

   --  Memory cipher engine
   MCE1_S_Periph : aliased MCE_Peripheral
     with Import, Address => MCE1_S_Base;

   --  Memory cipher engine
   MCE2_Periph : aliased MCE_Peripheral
     with Import, Address => MCE2_Base;

   --  Memory cipher engine
   MCE2_S_Periph : aliased MCE_Peripheral
     with Import, Address => MCE2_S_Base;

   --  Memory cipher engine
   MCE3_Periph : aliased MCE_Peripheral
     with Import, Address => MCE3_Base;

   --  Memory cipher engine
   MCE3_S_Periph : aliased MCE_Peripheral
     with Import, Address => MCE3_S_Base;

   --  Memory cipher engine
   MCE4_Periph : aliased MCE_Peripheral
     with Import, Address => MCE4_Base;

   --  Memory cipher engine
   MCE4_S_Periph : aliased MCE_Peripheral
     with Import, Address => MCE4_S_Base;

end STM32_SVD.MCE;
