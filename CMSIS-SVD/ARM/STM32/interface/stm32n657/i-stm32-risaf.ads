--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.RISAF is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  RISAF configuration register
   type RISAF_CR_Register is record
      --  global lock
      GLOCK         : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_CR_Register use record
      GLOCK         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  RISAF illegal access status register
   type RISAF_IASR_Register is record
      --  Read-only. configuration access error flag
      CAEF          : Boolean;
      --  Read-only. illegal access error flag
      IAEF          : Boolean;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_IASR_Register use record
      CAEF          at 0 range 0 .. 0;
      IAEF          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RISAF illegal access clear register
   type RISAF_IACR_Register is record
      --  Write-only. configuration access error flag
      CAEF          : Boolean := False;
      --  Write-only. illegal access error flag
      IAEF          : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_IACR_Register use record
      CAEF          at 0 range 0 .. 0;
      IAEF          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype RISAF_IAESR_IACID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF illegal access error status register
   type RISAF_IAESR_Register is record
      --  Read-only. illegal access compartment ID
      IACID         : RISAF_IAESR_IACID_Field;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit;
      --  Read-only. illegal access privileged
      IAPRIV        : Boolean;
      --  Read-only. illegal access security
      IASEC         : Boolean;
      --  unspecified
      Reserved_6_6  : Interfaces.Bit_Types.Bit;
      --  Read-only. illegal access read/write
      IANRW         : Boolean;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_IAESR_Register use record
      IACID         at 0 range 0 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      IAPRIV        at 0 range 4 .. 4;
      IASEC         at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      IANRW         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAF_REG1_CFGR_PRIVC array
   type RISAF_REG1_CFGR_PRIVC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG1_CFGR_PRIVC
   type RISAF_REG1_CFGR_PRIVC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIVC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PRIVC as an array
            Arr : RISAF_REG1_CFGR_PRIVC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG1_CFGR_PRIVC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 1 configuration register
   type RISAF_REG1_CFGR_Register is record
      --  base region enable
      BREN           : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  secure region
      SEC            : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  privileged access for compartment y
      PRIVC          : RISAF_REG1_CFGR_PRIVC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG1_CFGR_Register use record
      BREN           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SEC            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PRIVC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RISAF_REG1_CIDCFGR_RDENC array
   type RISAF_REG1_CIDCFGR_RDENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG1_CIDCFGR_RDENC
   type RISAF_REG1_CIDCFGR_RDENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RDENC as an array
            Arr : RISAF_REG1_CIDCFGR_RDENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG1_CIDCFGR_RDENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF_REG1_CIDCFGR_WRENC array
   type RISAF_REG1_CIDCFGR_WRENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG1_CIDCFGR_WRENC
   type RISAF_REG1_CIDCFGR_WRENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WRENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WRENC as an array
            Arr : RISAF_REG1_CIDCFGR_WRENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG1_CIDCFGR_WRENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 1 CID configuration register
   type RISAF_REG1_CIDCFGR_Register is record
      --  read enable for compartment y
      RDENC          : RISAF_REG1_CIDCFGR_RDENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  write enable for compartment y
      WRENC          : RISAF_REG1_CIDCFGR_WRENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG1_CIDCFGR_Register use record
      RDENC          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRENC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RISAF_REG1_ACFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 1 subregion A configuration register
   type RISAF_REG1_ACFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG1_ACFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG1_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 1 subregion A nested mode register
   type RISAF_REG1_ANESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG1_ANESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RISAF_REG1_BCFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 1 subregion B configuration register
   type RISAF_REG1_BCFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG1_BCFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG1_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 1 subregion B nested mode register
   type RISAF_REG1_BNESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG1_BNESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RISAF_REG2_CFGR_PRIVC array
   type RISAF_REG2_CFGR_PRIVC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG2_CFGR_PRIVC
   type RISAF_REG2_CFGR_PRIVC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIVC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PRIVC as an array
            Arr : RISAF_REG2_CFGR_PRIVC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG2_CFGR_PRIVC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 2 configuration register
   type RISAF_REG2_CFGR_Register is record
      --  base region enable
      BREN           : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  secure region
      SEC            : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  privileged access for compartment y
      PRIVC          : RISAF_REG2_CFGR_PRIVC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG2_CFGR_Register use record
      BREN           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SEC            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PRIVC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RISAF_REG2_CIDCFGR_RDENC array
   type RISAF_REG2_CIDCFGR_RDENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG2_CIDCFGR_RDENC
   type RISAF_REG2_CIDCFGR_RDENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RDENC as an array
            Arr : RISAF_REG2_CIDCFGR_RDENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG2_CIDCFGR_RDENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF_REG2_CIDCFGR_WRENC array
   type RISAF_REG2_CIDCFGR_WRENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG2_CIDCFGR_WRENC
   type RISAF_REG2_CIDCFGR_WRENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WRENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WRENC as an array
            Arr : RISAF_REG2_CIDCFGR_WRENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG2_CIDCFGR_WRENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 2 CID configuration register
   type RISAF_REG2_CIDCFGR_Register is record
      --  read enable for compartment y
      RDENC          : RISAF_REG2_CIDCFGR_RDENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  write enable for compartment y
      WRENC          : RISAF_REG2_CIDCFGR_WRENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG2_CIDCFGR_Register use record
      RDENC          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRENC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RISAF_REG2_ACFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 2 subregion A configuration register
   type RISAF_REG2_ACFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG2_ACFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG2_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 2 subregion A nested mode register
   type RISAF_REG2_ANESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG2_ANESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RISAF_REG2_BCFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 2 subregion B configuration register
   type RISAF_REG2_BCFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG2_BCFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG2_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 2 subregion B nested mode register
   type RISAF_REG2_BNESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG2_BNESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RISAF_REG3_CFGR_PRIVC array
   type RISAF_REG3_CFGR_PRIVC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG3_CFGR_PRIVC
   type RISAF_REG3_CFGR_PRIVC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIVC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PRIVC as an array
            Arr : RISAF_REG3_CFGR_PRIVC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG3_CFGR_PRIVC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 3 configuration register
   type RISAF_REG3_CFGR_Register is record
      --  base region enable
      BREN           : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  secure region
      SEC            : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  privileged access for compartment y
      PRIVC          : RISAF_REG3_CFGR_PRIVC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG3_CFGR_Register use record
      BREN           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SEC            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PRIVC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RISAF_REG3_CIDCFGR_RDENC array
   type RISAF_REG3_CIDCFGR_RDENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG3_CIDCFGR_RDENC
   type RISAF_REG3_CIDCFGR_RDENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RDENC as an array
            Arr : RISAF_REG3_CIDCFGR_RDENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG3_CIDCFGR_RDENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF_REG3_CIDCFGR_WRENC array
   type RISAF_REG3_CIDCFGR_WRENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG3_CIDCFGR_WRENC
   type RISAF_REG3_CIDCFGR_WRENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WRENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WRENC as an array
            Arr : RISAF_REG3_CIDCFGR_WRENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG3_CIDCFGR_WRENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 3 CID configuration register
   type RISAF_REG3_CIDCFGR_Register is record
      --  read enable for compartment y
      RDENC          : RISAF_REG3_CIDCFGR_RDENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  write enable for compartment y
      WRENC          : RISAF_REG3_CIDCFGR_WRENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG3_CIDCFGR_Register use record
      RDENC          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRENC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RISAF_REG3_ACFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 3 subregion A configuration register
   type RISAF_REG3_ACFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG3_ACFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG3_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 3 subregion A nested mode register
   type RISAF_REG3_ANESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG3_ANESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RISAF_REG3_BCFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 3 subregion B configuration register
   type RISAF_REG3_BCFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG3_BCFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG3_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 3 subregion B nested mode register
   type RISAF_REG3_BNESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG3_BNESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RISAF_REG4_CFGR_PRIVC array
   type RISAF_REG4_CFGR_PRIVC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG4_CFGR_PRIVC
   type RISAF_REG4_CFGR_PRIVC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIVC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PRIVC as an array
            Arr : RISAF_REG4_CFGR_PRIVC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG4_CFGR_PRIVC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 4 configuration register
   type RISAF_REG4_CFGR_Register is record
      --  base region enable
      BREN           : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  secure region
      SEC            : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  privileged access for compartment y
      PRIVC          : RISAF_REG4_CFGR_PRIVC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG4_CFGR_Register use record
      BREN           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SEC            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PRIVC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RISAF_REG4_CIDCFGR_RDENC array
   type RISAF_REG4_CIDCFGR_RDENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG4_CIDCFGR_RDENC
   type RISAF_REG4_CIDCFGR_RDENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RDENC as an array
            Arr : RISAF_REG4_CIDCFGR_RDENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG4_CIDCFGR_RDENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF_REG4_CIDCFGR_WRENC array
   type RISAF_REG4_CIDCFGR_WRENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG4_CIDCFGR_WRENC
   type RISAF_REG4_CIDCFGR_WRENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WRENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WRENC as an array
            Arr : RISAF_REG4_CIDCFGR_WRENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG4_CIDCFGR_WRENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 4 CID configuration register
   type RISAF_REG4_CIDCFGR_Register is record
      --  read enable for compartment y
      RDENC          : RISAF_REG4_CIDCFGR_RDENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  write enable for compartment y
      WRENC          : RISAF_REG4_CIDCFGR_WRENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG4_CIDCFGR_Register use record
      RDENC          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRENC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RISAF_REG4_ACFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 4 subregion A configuration register
   type RISAF_REG4_ACFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG4_ACFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG4_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 4 subregion A nested mode register
   type RISAF_REG4_ANESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG4_ANESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RISAF_REG4_BCFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 4 subregion B configuration register
   type RISAF_REG4_BCFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG4_BCFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG4_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 4 subregion B nested mode register
   type RISAF_REG4_BNESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG4_BNESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RISAF_REG5_CFGR_PRIVC array
   type RISAF_REG5_CFGR_PRIVC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG5_CFGR_PRIVC
   type RISAF_REG5_CFGR_PRIVC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIVC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PRIVC as an array
            Arr : RISAF_REG5_CFGR_PRIVC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG5_CFGR_PRIVC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 5 configuration register
   type RISAF_REG5_CFGR_Register is record
      --  base region enable
      BREN           : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  secure region
      SEC            : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  privileged access for compartment y
      PRIVC          : RISAF_REG5_CFGR_PRIVC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG5_CFGR_Register use record
      BREN           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SEC            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PRIVC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RISAF_REG5_CIDCFGR_RDENC array
   type RISAF_REG5_CIDCFGR_RDENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG5_CIDCFGR_RDENC
   type RISAF_REG5_CIDCFGR_RDENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RDENC as an array
            Arr : RISAF_REG5_CIDCFGR_RDENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG5_CIDCFGR_RDENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF_REG5_CIDCFGR_WRENC array
   type RISAF_REG5_CIDCFGR_WRENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG5_CIDCFGR_WRENC
   type RISAF_REG5_CIDCFGR_WRENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WRENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WRENC as an array
            Arr : RISAF_REG5_CIDCFGR_WRENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG5_CIDCFGR_WRENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 5 CID configuration register
   type RISAF_REG5_CIDCFGR_Register is record
      --  read enable for compartment y
      RDENC          : RISAF_REG5_CIDCFGR_RDENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  write enable for compartment y
      WRENC          : RISAF_REG5_CIDCFGR_WRENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG5_CIDCFGR_Register use record
      RDENC          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRENC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RISAF_REG5_ACFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 5 subregion A configuration register
   type RISAF_REG5_ACFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG5_ACFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG5_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 5 subregion A nested mode register
   type RISAF_REG5_ANESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG5_ANESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RISAF_REG5_BCFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 5 subregion B configuration register
   type RISAF_REG5_BCFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG5_BCFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG5_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 5 subregion B nested mode register
   type RISAF_REG5_BNESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG5_BNESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RISAF_REG6_CFGR_PRIVC array
   type RISAF_REG6_CFGR_PRIVC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG6_CFGR_PRIVC
   type RISAF_REG6_CFGR_PRIVC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIVC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PRIVC as an array
            Arr : RISAF_REG6_CFGR_PRIVC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG6_CFGR_PRIVC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 6 configuration register
   type RISAF_REG6_CFGR_Register is record
      --  base region enable
      BREN           : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  secure region
      SEC            : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  privileged access for compartment y
      PRIVC          : RISAF_REG6_CFGR_PRIVC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG6_CFGR_Register use record
      BREN           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SEC            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PRIVC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RISAF_REG6_CIDCFGR_RDENC array
   type RISAF_REG6_CIDCFGR_RDENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG6_CIDCFGR_RDENC
   type RISAF_REG6_CIDCFGR_RDENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RDENC as an array
            Arr : RISAF_REG6_CIDCFGR_RDENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG6_CIDCFGR_RDENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF_REG6_CIDCFGR_WRENC array
   type RISAF_REG6_CIDCFGR_WRENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG6_CIDCFGR_WRENC
   type RISAF_REG6_CIDCFGR_WRENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WRENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WRENC as an array
            Arr : RISAF_REG6_CIDCFGR_WRENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG6_CIDCFGR_WRENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 6 CID configuration register
   type RISAF_REG6_CIDCFGR_Register is record
      --  read enable for compartment y
      RDENC          : RISAF_REG6_CIDCFGR_RDENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  write enable for compartment y
      WRENC          : RISAF_REG6_CIDCFGR_WRENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG6_CIDCFGR_Register use record
      RDENC          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRENC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RISAF_REG6_ACFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 6 subregion A configuration register
   type RISAF_REG6_ACFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG6_ACFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG6_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 6 subregion A nested mode register
   type RISAF_REG6_ANESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG6_ANESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RISAF_REG6_BCFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 6 subregion B configuration register
   type RISAF_REG6_BCFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG6_BCFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG6_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 6 subregion B nested mode register
   type RISAF_REG6_BNESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG6_BNESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RISAF_REG7_CFGR_PRIVC array
   type RISAF_REG7_CFGR_PRIVC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG7_CFGR_PRIVC
   type RISAF_REG7_CFGR_PRIVC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIVC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PRIVC as an array
            Arr : RISAF_REG7_CFGR_PRIVC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG7_CFGR_PRIVC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 7 configuration register
   type RISAF_REG7_CFGR_Register is record
      --  base region enable
      BREN           : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  secure region
      SEC            : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  privileged access for compartment y
      PRIVC          : RISAF_REG7_CFGR_PRIVC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG7_CFGR_Register use record
      BREN           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SEC            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PRIVC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RISAF_REG7_CIDCFGR_RDENC array
   type RISAF_REG7_CIDCFGR_RDENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG7_CIDCFGR_RDENC
   type RISAF_REG7_CIDCFGR_RDENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RDENC as an array
            Arr : RISAF_REG7_CIDCFGR_RDENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG7_CIDCFGR_RDENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF_REG7_CIDCFGR_WRENC array
   type RISAF_REG7_CIDCFGR_WRENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG7_CIDCFGR_WRENC
   type RISAF_REG7_CIDCFGR_WRENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WRENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WRENC as an array
            Arr : RISAF_REG7_CIDCFGR_WRENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG7_CIDCFGR_WRENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 7 CID configuration register
   type RISAF_REG7_CIDCFGR_Register is record
      --  read enable for compartment y
      RDENC          : RISAF_REG7_CIDCFGR_RDENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  write enable for compartment y
      WRENC          : RISAF_REG7_CIDCFGR_WRENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG7_CIDCFGR_Register use record
      RDENC          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRENC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RISAF_REG7_ACFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 7 subregion A configuration register
   type RISAF_REG7_ACFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG7_ACFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG7_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 7 subregion A nested mode register
   type RISAF_REG7_ANESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG7_ANESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RISAF_REG7_BCFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 7 subregion B configuration register
   type RISAF_REG7_BCFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG7_BCFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG7_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 7 subregion B nested mode register
   type RISAF_REG7_BNESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG7_BNESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RISAF_REG8_CFGR_PRIVC array
   type RISAF_REG8_CFGR_PRIVC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG8_CFGR_PRIVC
   type RISAF_REG8_CFGR_PRIVC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIVC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PRIVC as an array
            Arr : RISAF_REG8_CFGR_PRIVC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG8_CFGR_PRIVC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 8 configuration register
   type RISAF_REG8_CFGR_Register is record
      --  base region enable
      BREN           : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  secure region
      SEC            : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  privileged access for compartment y
      PRIVC          : RISAF_REG8_CFGR_PRIVC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG8_CFGR_Register use record
      BREN           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SEC            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PRIVC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RISAF_REG8_CIDCFGR_RDENC array
   type RISAF_REG8_CIDCFGR_RDENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG8_CIDCFGR_RDENC
   type RISAF_REG8_CIDCFGR_RDENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RDENC as an array
            Arr : RISAF_REG8_CIDCFGR_RDENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG8_CIDCFGR_RDENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF_REG8_CIDCFGR_WRENC array
   type RISAF_REG8_CIDCFGR_WRENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG8_CIDCFGR_WRENC
   type RISAF_REG8_CIDCFGR_WRENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WRENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WRENC as an array
            Arr : RISAF_REG8_CIDCFGR_WRENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG8_CIDCFGR_WRENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 8 CID configuration register
   type RISAF_REG8_CIDCFGR_Register is record
      --  read enable for compartment y
      RDENC          : RISAF_REG8_CIDCFGR_RDENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  write enable for compartment y
      WRENC          : RISAF_REG8_CIDCFGR_WRENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG8_CIDCFGR_Register use record
      RDENC          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRENC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RISAF_REG8_ACFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 8 subregion A configuration register
   type RISAF_REG8_ACFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG8_ACFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG8_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 8 subregion A nested mode register
   type RISAF_REG8_ANESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG8_ANESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RISAF_REG8_BCFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 8 subregion B configuration register
   type RISAF_REG8_BCFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG8_BCFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG8_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 8 subregion B nested mode register
   type RISAF_REG8_BNESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG8_BNESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RISAF_REG9_CFGR_PRIVC array
   type RISAF_REG9_CFGR_PRIVC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG9_CFGR_PRIVC
   type RISAF_REG9_CFGR_PRIVC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIVC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PRIVC as an array
            Arr : RISAF_REG9_CFGR_PRIVC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG9_CFGR_PRIVC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 9 configuration register
   type RISAF_REG9_CFGR_Register is record
      --  base region enable
      BREN           : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  secure region
      SEC            : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  privileged access for compartment y
      PRIVC          : RISAF_REG9_CFGR_PRIVC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG9_CFGR_Register use record
      BREN           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SEC            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PRIVC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RISAF_REG9_CIDCFGR_RDENC array
   type RISAF_REG9_CIDCFGR_RDENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG9_CIDCFGR_RDENC
   type RISAF_REG9_CIDCFGR_RDENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RDENC as an array
            Arr : RISAF_REG9_CIDCFGR_RDENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG9_CIDCFGR_RDENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF_REG9_CIDCFGR_WRENC array
   type RISAF_REG9_CIDCFGR_WRENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG9_CIDCFGR_WRENC
   type RISAF_REG9_CIDCFGR_WRENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WRENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WRENC as an array
            Arr : RISAF_REG9_CIDCFGR_WRENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG9_CIDCFGR_WRENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 9 CID configuration register
   type RISAF_REG9_CIDCFGR_Register is record
      --  read enable for compartment y
      RDENC          : RISAF_REG9_CIDCFGR_RDENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  write enable for compartment y
      WRENC          : RISAF_REG9_CIDCFGR_WRENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG9_CIDCFGR_Register use record
      RDENC          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRENC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RISAF_REG9_ACFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 9 subregion A configuration register
   type RISAF_REG9_ACFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG9_ACFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG9_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 9 subregion A nested mode register
   type RISAF_REG9_ANESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG9_ANESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RISAF_REG9_BCFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 9 subregion B configuration register
   type RISAF_REG9_BCFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG9_BCFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG9_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 9 subregion B nested mode register
   type RISAF_REG9_BNESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG9_BNESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RISAF_REG10_CFGR_PRIVC array
   type RISAF_REG10_CFGR_PRIVC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG10_CFGR_PRIVC
   type RISAF_REG10_CFGR_PRIVC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIVC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PRIVC as an array
            Arr : RISAF_REG10_CFGR_PRIVC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG10_CFGR_PRIVC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 10 configuration register
   type RISAF_REG10_CFGR_Register is record
      --  base region enable
      BREN           : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  secure region
      SEC            : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  privileged access for compartment y
      PRIVC          : RISAF_REG10_CFGR_PRIVC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG10_CFGR_Register use record
      BREN           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SEC            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PRIVC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RISAF_REG10_CIDCFGR_RDENC array
   type RISAF_REG10_CIDCFGR_RDENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG10_CIDCFGR_RDENC
   type RISAF_REG10_CIDCFGR_RDENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RDENC as an array
            Arr : RISAF_REG10_CIDCFGR_RDENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG10_CIDCFGR_RDENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF_REG10_CIDCFGR_WRENC array
   type RISAF_REG10_CIDCFGR_WRENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG10_CIDCFGR_WRENC
   type RISAF_REG10_CIDCFGR_WRENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WRENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WRENC as an array
            Arr : RISAF_REG10_CIDCFGR_WRENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG10_CIDCFGR_WRENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 10 CID configuration register
   type RISAF_REG10_CIDCFGR_Register is record
      --  read enable for compartment y
      RDENC          : RISAF_REG10_CIDCFGR_RDENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  write enable for compartment y
      WRENC          : RISAF_REG10_CIDCFGR_WRENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG10_CIDCFGR_Register use record
      RDENC          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRENC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RISAF_REG10_ACFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 10 subregion A configuration register
   type RISAF_REG10_ACFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG10_ACFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG10_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 10 subregion A nested mode register
   type RISAF_REG10_ANESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG10_ANESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RISAF_REG10_BCFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 10 subregion B configuration register
   type RISAF_REG10_BCFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG10_BCFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG10_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 10 subregion B nested mode register
   type RISAF_REG10_BNESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG10_BNESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RISAF_REG11_CFGR_PRIVC array
   type RISAF_REG11_CFGR_PRIVC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG11_CFGR_PRIVC
   type RISAF_REG11_CFGR_PRIVC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIVC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PRIVC as an array
            Arr : RISAF_REG11_CFGR_PRIVC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG11_CFGR_PRIVC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 11 configuration register
   type RISAF_REG11_CFGR_Register is record
      --  base region enable
      BREN           : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  secure region
      SEC            : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  privileged access for compartment y
      PRIVC          : RISAF_REG11_CFGR_PRIVC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG11_CFGR_Register use record
      BREN           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SEC            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PRIVC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RISAF_REG11_CIDCFGR_RDENC array
   type RISAF_REG11_CIDCFGR_RDENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG11_CIDCFGR_RDENC
   type RISAF_REG11_CIDCFGR_RDENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RDENC as an array
            Arr : RISAF_REG11_CIDCFGR_RDENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG11_CIDCFGR_RDENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF_REG11_CIDCFGR_WRENC array
   type RISAF_REG11_CIDCFGR_WRENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG11_CIDCFGR_WRENC
   type RISAF_REG11_CIDCFGR_WRENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WRENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WRENC as an array
            Arr : RISAF_REG11_CIDCFGR_WRENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG11_CIDCFGR_WRENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 11 CID configuration register
   type RISAF_REG11_CIDCFGR_Register is record
      --  read enable for compartment y
      RDENC          : RISAF_REG11_CIDCFGR_RDENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  write enable for compartment y
      WRENC          : RISAF_REG11_CIDCFGR_WRENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG11_CIDCFGR_Register use record
      RDENC          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRENC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RISAF_REG11_ACFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 11 subregion A configuration register
   type RISAF_REG11_ACFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG11_ACFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG11_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 11 subregion A nested mode register
   type RISAF_REG11_ANESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG11_ANESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RISAF_REG11_BCFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 11 subregion B configuration register
   type RISAF_REG11_BCFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG11_BCFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG11_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 11 subregion B nested mode register
   type RISAF_REG11_BNESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG11_BNESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RISAF_REG12_CFGR_PRIVC array
   type RISAF_REG12_CFGR_PRIVC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG12_CFGR_PRIVC
   type RISAF_REG12_CFGR_PRIVC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIVC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PRIVC as an array
            Arr : RISAF_REG12_CFGR_PRIVC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG12_CFGR_PRIVC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 12 configuration register
   type RISAF_REG12_CFGR_Register is record
      --  base region enable
      BREN           : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  secure region
      SEC            : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  privileged access for compartment y
      PRIVC          : RISAF_REG12_CFGR_PRIVC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG12_CFGR_Register use record
      BREN           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SEC            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PRIVC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RISAF_REG12_CIDCFGR_RDENC array
   type RISAF_REG12_CIDCFGR_RDENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG12_CIDCFGR_RDENC
   type RISAF_REG12_CIDCFGR_RDENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RDENC as an array
            Arr : RISAF_REG12_CIDCFGR_RDENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG12_CIDCFGR_RDENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF_REG12_CIDCFGR_WRENC array
   type RISAF_REG12_CIDCFGR_WRENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG12_CIDCFGR_WRENC
   type RISAF_REG12_CIDCFGR_WRENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WRENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WRENC as an array
            Arr : RISAF_REG12_CIDCFGR_WRENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG12_CIDCFGR_WRENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 12 CID configuration register
   type RISAF_REG12_CIDCFGR_Register is record
      --  read enable for compartment y
      RDENC          : RISAF_REG12_CIDCFGR_RDENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  write enable for compartment y
      WRENC          : RISAF_REG12_CIDCFGR_WRENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG12_CIDCFGR_Register use record
      RDENC          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRENC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RISAF_REG12_ACFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 12 subregion A configuration register
   type RISAF_REG12_ACFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG12_ACFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG12_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 12 subregion A nested mode register
   type RISAF_REG12_ANESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG12_ANESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RISAF_REG12_BCFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 12 subregion B configuration register
   type RISAF_REG12_BCFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG12_BCFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG12_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 12 subregion B nested mode register
   type RISAF_REG12_BNESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG12_BNESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RISAF_REG13_CFGR_PRIVC array
   type RISAF_REG13_CFGR_PRIVC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG13_CFGR_PRIVC
   type RISAF_REG13_CFGR_PRIVC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIVC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PRIVC as an array
            Arr : RISAF_REG13_CFGR_PRIVC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG13_CFGR_PRIVC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 13 configuration register
   type RISAF_REG13_CFGR_Register is record
      --  base region enable
      BREN           : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  secure region
      SEC            : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  privileged access for compartment y
      PRIVC          : RISAF_REG13_CFGR_PRIVC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG13_CFGR_Register use record
      BREN           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SEC            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PRIVC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RISAF_REG13_CIDCFGR_RDENC array
   type RISAF_REG13_CIDCFGR_RDENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG13_CIDCFGR_RDENC
   type RISAF_REG13_CIDCFGR_RDENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RDENC as an array
            Arr : RISAF_REG13_CIDCFGR_RDENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG13_CIDCFGR_RDENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF_REG13_CIDCFGR_WRENC array
   type RISAF_REG13_CIDCFGR_WRENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG13_CIDCFGR_WRENC
   type RISAF_REG13_CIDCFGR_WRENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WRENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WRENC as an array
            Arr : RISAF_REG13_CIDCFGR_WRENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG13_CIDCFGR_WRENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 13 CID configuration register
   type RISAF_REG13_CIDCFGR_Register is record
      --  read enable for compartment y
      RDENC          : RISAF_REG13_CIDCFGR_RDENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  write enable for compartment y
      WRENC          : RISAF_REG13_CIDCFGR_WRENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG13_CIDCFGR_Register use record
      RDENC          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRENC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RISAF_REG13_ACFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 13 subregion A configuration register
   type RISAF_REG13_ACFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG13_ACFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG13_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 13 subregion A nested mode register
   type RISAF_REG13_ANESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG13_ANESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RISAF_REG13_BCFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 13 subregion B configuration register
   type RISAF_REG13_BCFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG13_BCFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG13_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 13 subregion B nested mode register
   type RISAF_REG13_BNESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG13_BNESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RISAF_REG14_CFGR_PRIVC array
   type RISAF_REG14_CFGR_PRIVC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG14_CFGR_PRIVC
   type RISAF_REG14_CFGR_PRIVC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIVC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PRIVC as an array
            Arr : RISAF_REG14_CFGR_PRIVC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG14_CFGR_PRIVC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 14 configuration register
   type RISAF_REG14_CFGR_Register is record
      --  base region enable
      BREN           : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  secure region
      SEC            : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  privileged access for compartment y
      PRIVC          : RISAF_REG14_CFGR_PRIVC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG14_CFGR_Register use record
      BREN           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SEC            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PRIVC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RISAF_REG14_CIDCFGR_RDENC array
   type RISAF_REG14_CIDCFGR_RDENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG14_CIDCFGR_RDENC
   type RISAF_REG14_CIDCFGR_RDENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RDENC as an array
            Arr : RISAF_REG14_CIDCFGR_RDENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG14_CIDCFGR_RDENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF_REG14_CIDCFGR_WRENC array
   type RISAF_REG14_CIDCFGR_WRENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG14_CIDCFGR_WRENC
   type RISAF_REG14_CIDCFGR_WRENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WRENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WRENC as an array
            Arr : RISAF_REG14_CIDCFGR_WRENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG14_CIDCFGR_WRENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 14 CID configuration register
   type RISAF_REG14_CIDCFGR_Register is record
      --  read enable for compartment y
      RDENC          : RISAF_REG14_CIDCFGR_RDENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  write enable for compartment y
      WRENC          : RISAF_REG14_CIDCFGR_WRENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG14_CIDCFGR_Register use record
      RDENC          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRENC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RISAF_REG14_ACFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 14 subregion A configuration register
   type RISAF_REG14_ACFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG14_ACFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG14_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 14 subregion A nested mode register
   type RISAF_REG14_ANESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG14_ANESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RISAF_REG14_BCFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 14 subregion B configuration register
   type RISAF_REG14_BCFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG14_BCFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG14_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 14 subregion B nested mode register
   type RISAF_REG14_BNESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG14_BNESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RISAF_REG15_CFGR_PRIVC array
   type RISAF_REG15_CFGR_PRIVC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG15_CFGR_PRIVC
   type RISAF_REG15_CFGR_PRIVC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIVC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PRIVC as an array
            Arr : RISAF_REG15_CFGR_PRIVC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG15_CFGR_PRIVC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 15 configuration register
   type RISAF_REG15_CFGR_Register is record
      --  base region enable
      BREN           : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  secure region
      SEC            : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  privileged access for compartment y
      PRIVC          : RISAF_REG15_CFGR_PRIVC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG15_CFGR_Register use record
      BREN           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SEC            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PRIVC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RISAF_REG15_CIDCFGR_RDENC array
   type RISAF_REG15_CIDCFGR_RDENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG15_CIDCFGR_RDENC
   type RISAF_REG15_CIDCFGR_RDENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RDENC as an array
            Arr : RISAF_REG15_CIDCFGR_RDENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG15_CIDCFGR_RDENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF_REG15_CIDCFGR_WRENC array
   type RISAF_REG15_CIDCFGR_WRENC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAF_REG15_CIDCFGR_WRENC
   type RISAF_REG15_CIDCFGR_WRENC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WRENC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WRENC as an array
            Arr : RISAF_REG15_CIDCFGR_WRENC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAF_REG15_CIDCFGR_WRENC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAF region 15 CID configuration register
   type RISAF_REG15_CIDCFGR_Register is record
      --  read enable for compartment y
      RDENC          : RISAF_REG15_CIDCFGR_RDENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  write enable for compartment y
      WRENC          : RISAF_REG15_CIDCFGR_WRENC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG15_CIDCFGR_Register use record
      RDENC          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRENC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RISAF_REG15_ACFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 15 subregion A configuration register
   type RISAF_REG15_ACFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG15_ACFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG15_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 15 subregion A nested mode register
   type RISAF_REG15_ANESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG15_ANESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RISAF_REG15_BCFGR_SRCID_Field is Interfaces.Bit_Types.UInt3;

   --  RISAF region 15 subregion B configuration register
   type RISAF_REG15_BCFGR_Register is record
      --  subregion enable
      SREN           : Boolean := False;
      --  resource lock
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  subregion CID
      SRCID          : RISAF_REG15_BCFGR_SRCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  secure subregion
      SEC            : Boolean := False;
      --  privileged subregion
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  read enable
      RDEN           : Boolean := False;
      --  write enable
      WREN           : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG15_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDEN           at 0 range 12 .. 12;
      WREN           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RISAF region 15 subregion B nested mode register
   type RISAF_REG15_BNESTR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  delegated configuration enable
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAF_REG15_BNESTR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Resource isolation slave unit for address space protection
   type RISAF_Peripheral is record
      --  RISAF configuration register
      RISAF_CR            : aliased RISAF_CR_Register;
      --  RISAF illegal access status register
      RISAF_IASR          : aliased RISAF_IASR_Register;
      --  RISAF illegal access clear register
      RISAF_IACR          : aliased RISAF_IACR_Register;
      --  RISAF illegal access error status register
      RISAF_IAESR         : aliased RISAF_IAESR_Register;
      --  RISAF illegal address register
      RISAF_IADDR         : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 1 configuration register
      RISAF_REG1_CFGR     : aliased RISAF_REG1_CFGR_Register;
      --  RISAF region 1 start-address register
      RISAF_REG1_STARTR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 1 end-address register
      RISAF_REG1_ENDR     : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 1 CID configuration register
      RISAF_REG1_CIDCFGR  : aliased RISAF_REG1_CIDCFGR_Register;
      --  RISAF region 1 subregion A configuration register
      RISAF_REG1_ACFGR    : aliased RISAF_REG1_ACFGR_Register;
      --  RISAF region 1 subregion A start-address register
      RISAF_REG1_ASTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 1 subregion A end-address register
      RISAF_REG1_AENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 1 subregion A nested mode register
      RISAF_REG1_ANESTR   : aliased RISAF_REG1_ANESTR_Register;
      --  RISAF region 1 subregion B configuration register
      RISAF_REG1_BCFGR    : aliased RISAF_REG1_BCFGR_Register;
      --  RISAF region 1 subregion B start-address register
      RISAF_REG1_BSTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 1 subregion B end-address register
      RISAF_REG1_BENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 1 subregion B nested mode register
      RISAF_REG1_BNESTR   : aliased RISAF_REG1_BNESTR_Register;
      --  RISAF region 2 configuration register
      RISAF_REG2_CFGR     : aliased RISAF_REG2_CFGR_Register;
      --  RISAF region 2 start-address register
      RISAF_REG2_STARTR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 2 end-address register
      RISAF_REG2_ENDR     : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 2 CID configuration register
      RISAF_REG2_CIDCFGR  : aliased RISAF_REG2_CIDCFGR_Register;
      --  RISAF region 2 subregion A configuration register
      RISAF_REG2_ACFGR    : aliased RISAF_REG2_ACFGR_Register;
      --  RISAF region 2 subregion A start-address register
      RISAF_REG2_ASTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 2 subregion A end-address register
      RISAF_REG2_AENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 2 subregion A nested mode register
      RISAF_REG2_ANESTR   : aliased RISAF_REG2_ANESTR_Register;
      --  RISAF region 2 subregion B configuration register
      RISAF_REG2_BCFGR    : aliased RISAF_REG2_BCFGR_Register;
      --  RISAF region 2 subregion B start-address register
      RISAF_REG2_BSTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 2 subregion B end-address register
      RISAF_REG2_BENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 2 subregion B nested mode register
      RISAF_REG2_BNESTR   : aliased RISAF_REG2_BNESTR_Register;
      --  RISAF region 3 configuration register
      RISAF_REG3_CFGR     : aliased RISAF_REG3_CFGR_Register;
      --  RISAF region 3 start-address register
      RISAF_REG3_STARTR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 3 end-address register
      RISAF_REG3_ENDR     : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 3 CID configuration register
      RISAF_REG3_CIDCFGR  : aliased RISAF_REG3_CIDCFGR_Register;
      --  RISAF region 3 subregion A configuration register
      RISAF_REG3_ACFGR    : aliased RISAF_REG3_ACFGR_Register;
      --  RISAF region 3 subregion A start-address register
      RISAF_REG3_ASTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 3 subregion A end-address register
      RISAF_REG3_AENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 3 subregion A nested mode register
      RISAF_REG3_ANESTR   : aliased RISAF_REG3_ANESTR_Register;
      --  RISAF region 3 subregion B configuration register
      RISAF_REG3_BCFGR    : aliased RISAF_REG3_BCFGR_Register;
      --  RISAF region 3 subregion B start-address register
      RISAF_REG3_BSTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 3 subregion B end-address register
      RISAF_REG3_BENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 3 subregion B nested mode register
      RISAF_REG3_BNESTR   : aliased RISAF_REG3_BNESTR_Register;
      --  RISAF region 4 configuration register
      RISAF_REG4_CFGR     : aliased RISAF_REG4_CFGR_Register;
      --  RISAF region 4 start-address register
      RISAF_REG4_STARTR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 4 end-address register
      RISAF_REG4_ENDR     : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 4 CID configuration register
      RISAF_REG4_CIDCFGR  : aliased RISAF_REG4_CIDCFGR_Register;
      --  RISAF region 4 subregion A configuration register
      RISAF_REG4_ACFGR    : aliased RISAF_REG4_ACFGR_Register;
      --  RISAF region 4 subregion A start-address register
      RISAF_REG4_ASTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 4 subregion A end-address register
      RISAF_REG4_AENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 4 subregion A nested mode register
      RISAF_REG4_ANESTR   : aliased RISAF_REG4_ANESTR_Register;
      --  RISAF region 4 subregion B configuration register
      RISAF_REG4_BCFGR    : aliased RISAF_REG4_BCFGR_Register;
      --  RISAF region 4 subregion B start-address register
      RISAF_REG4_BSTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 4 subregion B end-address register
      RISAF_REG4_BENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 4 subregion B nested mode register
      RISAF_REG4_BNESTR   : aliased RISAF_REG4_BNESTR_Register;
      --  RISAF region 5 configuration register
      RISAF_REG5_CFGR     : aliased RISAF_REG5_CFGR_Register;
      --  RISAF region 5 start-address register
      RISAF_REG5_STARTR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 5 end-address register
      RISAF_REG5_ENDR     : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 5 CID configuration register
      RISAF_REG5_CIDCFGR  : aliased RISAF_REG5_CIDCFGR_Register;
      --  RISAF region 5 subregion A configuration register
      RISAF_REG5_ACFGR    : aliased RISAF_REG5_ACFGR_Register;
      --  RISAF region 5 subregion A start-address register
      RISAF_REG5_ASTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 5 subregion A end-address register
      RISAF_REG5_AENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 5 subregion A nested mode register
      RISAF_REG5_ANESTR   : aliased RISAF_REG5_ANESTR_Register;
      --  RISAF region 5 subregion B configuration register
      RISAF_REG5_BCFGR    : aliased RISAF_REG5_BCFGR_Register;
      --  RISAF region 5 subregion B start-address register
      RISAF_REG5_BSTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 5 subregion B end-address register
      RISAF_REG5_BENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 5 subregion B nested mode register
      RISAF_REG5_BNESTR   : aliased RISAF_REG5_BNESTR_Register;
      --  RISAF region 6 configuration register
      RISAF_REG6_CFGR     : aliased RISAF_REG6_CFGR_Register;
      --  RISAF region 6 start-address register
      RISAF_REG6_STARTR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 6 end-address register
      RISAF_REG6_ENDR     : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 6 CID configuration register
      RISAF_REG6_CIDCFGR  : aliased RISAF_REG6_CIDCFGR_Register;
      --  RISAF region 6 subregion A configuration register
      RISAF_REG6_ACFGR    : aliased RISAF_REG6_ACFGR_Register;
      --  RISAF region 6 subregion A start-address register
      RISAF_REG6_ASTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 6 subregion A end-address register
      RISAF_REG6_AENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 6 subregion A nested mode register
      RISAF_REG6_ANESTR   : aliased RISAF_REG6_ANESTR_Register;
      --  RISAF region 6 subregion B configuration register
      RISAF_REG6_BCFGR    : aliased RISAF_REG6_BCFGR_Register;
      --  RISAF region 6 subregion B start-address register
      RISAF_REG6_BSTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 6 subregion B end-address register
      RISAF_REG6_BENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 6 subregion B nested mode register
      RISAF_REG6_BNESTR   : aliased RISAF_REG6_BNESTR_Register;
      --  RISAF region 7 configuration register
      RISAF_REG7_CFGR     : aliased RISAF_REG7_CFGR_Register;
      --  RISAF region 7 start-address register
      RISAF_REG7_STARTR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 7 end-address register
      RISAF_REG7_ENDR     : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 7 CID configuration register
      RISAF_REG7_CIDCFGR  : aliased RISAF_REG7_CIDCFGR_Register;
      --  RISAF region 7 subregion A configuration register
      RISAF_REG7_ACFGR    : aliased RISAF_REG7_ACFGR_Register;
      --  RISAF region 7 subregion A start-address register
      RISAF_REG7_ASTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 7 subregion A end-address register
      RISAF_REG7_AENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 7 subregion A nested mode register
      RISAF_REG7_ANESTR   : aliased RISAF_REG7_ANESTR_Register;
      --  RISAF region 7 subregion B configuration register
      RISAF_REG7_BCFGR    : aliased RISAF_REG7_BCFGR_Register;
      --  RISAF region 7 subregion B start-address register
      RISAF_REG7_BSTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 7 subregion B end-address register
      RISAF_REG7_BENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 7 subregion B nested mode register
      RISAF_REG7_BNESTR   : aliased RISAF_REG7_BNESTR_Register;
      --  RISAF region 8 configuration register
      RISAF_REG8_CFGR     : aliased RISAF_REG8_CFGR_Register;
      --  RISAF region 8 start-address register
      RISAF_REG8_STARTR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 8 end-address register
      RISAF_REG8_ENDR     : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 8 CID configuration register
      RISAF_REG8_CIDCFGR  : aliased RISAF_REG8_CIDCFGR_Register;
      --  RISAF region 8 subregion A configuration register
      RISAF_REG8_ACFGR    : aliased RISAF_REG8_ACFGR_Register;
      --  RISAF region 8 subregion A start-address register
      RISAF_REG8_ASTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 8 subregion A end-address register
      RISAF_REG8_AENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 8 subregion A nested mode register
      RISAF_REG8_ANESTR   : aliased RISAF_REG8_ANESTR_Register;
      --  RISAF region 8 subregion B configuration register
      RISAF_REG8_BCFGR    : aliased RISAF_REG8_BCFGR_Register;
      --  RISAF region 8 subregion B start-address register
      RISAF_REG8_BSTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 8 subregion B end-address register
      RISAF_REG8_BENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 8 subregion B nested mode register
      RISAF_REG8_BNESTR   : aliased RISAF_REG8_BNESTR_Register;
      --  RISAF region 9 configuration register
      RISAF_REG9_CFGR     : aliased RISAF_REG9_CFGR_Register;
      --  RISAF region 9 start-address register
      RISAF_REG9_STARTR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 9 end-address register
      RISAF_REG9_ENDR     : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 9 CID configuration register
      RISAF_REG9_CIDCFGR  : aliased RISAF_REG9_CIDCFGR_Register;
      --  RISAF region 9 subregion A configuration register
      RISAF_REG9_ACFGR    : aliased RISAF_REG9_ACFGR_Register;
      --  RISAF region 9 subregion A start-address register
      RISAF_REG9_ASTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 9 subregion A end-address register
      RISAF_REG9_AENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 9 subregion A nested mode register
      RISAF_REG9_ANESTR   : aliased RISAF_REG9_ANESTR_Register;
      --  RISAF region 9 subregion B configuration register
      RISAF_REG9_BCFGR    : aliased RISAF_REG9_BCFGR_Register;
      --  RISAF region 9 subregion B start-address register
      RISAF_REG9_BSTARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 9 subregion B end-address register
      RISAF_REG9_BENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 9 subregion B nested mode register
      RISAF_REG9_BNESTR   : aliased RISAF_REG9_BNESTR_Register;
      --  RISAF region 10 configuration register
      RISAF_REG10_CFGR    : aliased RISAF_REG10_CFGR_Register;
      --  RISAF region 10 start-address register
      RISAF_REG10_STARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 10 end-address register
      RISAF_REG10_ENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 10 CID configuration register
      RISAF_REG10_CIDCFGR : aliased RISAF_REG10_CIDCFGR_Register;
      --  RISAF region 10 subregion A configuration register
      RISAF_REG10_ACFGR   : aliased RISAF_REG10_ACFGR_Register;
      --  RISAF region 10 subregion A start-address register
      RISAF_REG10_ASTARTR : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 10 subregion A end-address register
      RISAF_REG10_AENDR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 10 subregion A nested mode register
      RISAF_REG10_ANESTR  : aliased RISAF_REG10_ANESTR_Register;
      --  RISAF region 10 subregion B configuration register
      RISAF_REG10_BCFGR   : aliased RISAF_REG10_BCFGR_Register;
      --  RISAF region 10 subregion B start-address register
      RISAF_REG10_BSTARTR : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 10 subregion B end-address register
      RISAF_REG10_BENDR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 10 subregion B nested mode register
      RISAF_REG10_BNESTR  : aliased RISAF_REG10_BNESTR_Register;
      --  RISAF region 11 configuration register
      RISAF_REG11_CFGR    : aliased RISAF_REG11_CFGR_Register;
      --  RISAF region 11 start-address register
      RISAF_REG11_STARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 11 end-address register
      RISAF_REG11_ENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 11 CID configuration register
      RISAF_REG11_CIDCFGR : aliased RISAF_REG11_CIDCFGR_Register;
      --  RISAF region 11 subregion A configuration register
      RISAF_REG11_ACFGR   : aliased RISAF_REG11_ACFGR_Register;
      --  RISAF region 11 subregion A start-address register
      RISAF_REG11_ASTARTR : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 11 subregion A end-address register
      RISAF_REG11_AENDR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 11 subregion A nested mode register
      RISAF_REG11_ANESTR  : aliased RISAF_REG11_ANESTR_Register;
      --  RISAF region 11 subregion B configuration register
      RISAF_REG11_BCFGR   : aliased RISAF_REG11_BCFGR_Register;
      --  RISAF region 11 subregion B start-address register
      RISAF_REG11_BSTARTR : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 11 subregion B end-address register
      RISAF_REG11_BENDR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 11 subregion B nested mode register
      RISAF_REG11_BNESTR  : aliased RISAF_REG11_BNESTR_Register;
      --  RISAF region 12 configuration register
      RISAF_REG12_CFGR    : aliased RISAF_REG12_CFGR_Register;
      --  RISAF region 12 start-address register
      RISAF_REG12_STARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 12 end-address register
      RISAF_REG12_ENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 12 CID configuration register
      RISAF_REG12_CIDCFGR : aliased RISAF_REG12_CIDCFGR_Register;
      --  RISAF region 12 subregion A configuration register
      RISAF_REG12_ACFGR   : aliased RISAF_REG12_ACFGR_Register;
      --  RISAF region 12 subregion A start-address register
      RISAF_REG12_ASTARTR : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 12 subregion A end-address register
      RISAF_REG12_AENDR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 12 subregion A nested mode register
      RISAF_REG12_ANESTR  : aliased RISAF_REG12_ANESTR_Register;
      --  RISAF region 12 subregion B configuration register
      RISAF_REG12_BCFGR   : aliased RISAF_REG12_BCFGR_Register;
      --  RISAF region 12 subregion B start-address register
      RISAF_REG12_BSTARTR : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 12 subregion B end-address register
      RISAF_REG12_BENDR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 12 subregion B nested mode register
      RISAF_REG12_BNESTR  : aliased RISAF_REG12_BNESTR_Register;
      --  RISAF region 13 configuration register
      RISAF_REG13_CFGR    : aliased RISAF_REG13_CFGR_Register;
      --  RISAF region 13 start-address register
      RISAF_REG13_STARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 13 end-address register
      RISAF_REG13_ENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 13 CID configuration register
      RISAF_REG13_CIDCFGR : aliased RISAF_REG13_CIDCFGR_Register;
      --  RISAF region 13 subregion A configuration register
      RISAF_REG13_ACFGR   : aliased RISAF_REG13_ACFGR_Register;
      --  RISAF region 13 subregion A start-address register
      RISAF_REG13_ASTARTR : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 13 subregion A end-address register
      RISAF_REG13_AENDR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 13 subregion A nested mode register
      RISAF_REG13_ANESTR  : aliased RISAF_REG13_ANESTR_Register;
      --  RISAF region 13 subregion B configuration register
      RISAF_REG13_BCFGR   : aliased RISAF_REG13_BCFGR_Register;
      --  RISAF region 13 subregion B start-address register
      RISAF_REG13_BSTARTR : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 13 subregion B end-address register
      RISAF_REG13_BENDR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 13 subregion B nested mode register
      RISAF_REG13_BNESTR  : aliased RISAF_REG13_BNESTR_Register;
      --  RISAF region 14 configuration register
      RISAF_REG14_CFGR    : aliased RISAF_REG14_CFGR_Register;
      --  RISAF region 14 start-address register
      RISAF_REG14_STARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 14 end-address register
      RISAF_REG14_ENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 14 CID configuration register
      RISAF_REG14_CIDCFGR : aliased RISAF_REG14_CIDCFGR_Register;
      --  RISAF region 14 subregion A configuration register
      RISAF_REG14_ACFGR   : aliased RISAF_REG14_ACFGR_Register;
      --  RISAF region 14 subregion A start-address register
      RISAF_REG14_ASTARTR : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 14 subregion A end-address register
      RISAF_REG14_AENDR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 14 subregion A nested mode register
      RISAF_REG14_ANESTR  : aliased RISAF_REG14_ANESTR_Register;
      --  RISAF region 14 subregion B configuration register
      RISAF_REG14_BCFGR   : aliased RISAF_REG14_BCFGR_Register;
      --  RISAF region 14 subregion B start-address register
      RISAF_REG14_BSTARTR : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 14 subregion B end-address register
      RISAF_REG14_BENDR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 14 subregion B nested mode register
      RISAF_REG14_BNESTR  : aliased RISAF_REG14_BNESTR_Register;
      --  RISAF region 15 configuration register
      RISAF_REG15_CFGR    : aliased RISAF_REG15_CFGR_Register;
      --  RISAF region 15 start-address register
      RISAF_REG15_STARTR  : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 15 end-address register
      RISAF_REG15_ENDR    : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 15 CID configuration register
      RISAF_REG15_CIDCFGR : aliased RISAF_REG15_CIDCFGR_Register;
      --  RISAF region 15 subregion A configuration register
      RISAF_REG15_ACFGR   : aliased RISAF_REG15_ACFGR_Register;
      --  RISAF region 15 subregion A start-address register
      RISAF_REG15_ASTARTR : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 15 subregion A end-address register
      RISAF_REG15_AENDR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 15 subregion A nested mode register
      RISAF_REG15_ANESTR  : aliased RISAF_REG15_ANESTR_Register;
      --  RISAF region 15 subregion B configuration register
      RISAF_REG15_BCFGR   : aliased RISAF_REG15_BCFGR_Register;
      --  RISAF region 15 subregion B start-address register
      RISAF_REG15_BSTARTR : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 15 subregion B end-address register
      RISAF_REG15_BENDR   : aliased Interfaces.Bit_Types.UInt32;
      --  RISAF region 15 subregion B nested mode register
      RISAF_REG15_BNESTR  : aliased RISAF_REG15_BNESTR_Register;
   end record
     with Volatile;

   for RISAF_Peripheral use record
      RISAF_CR            at 16#0# range 0 .. 31;
      RISAF_IASR          at 16#8# range 0 .. 31;
      RISAF_IACR          at 16#C# range 0 .. 31;
      RISAF_IAESR         at 16#20# range 0 .. 31;
      RISAF_IADDR         at 16#24# range 0 .. 31;
      RISAF_REG1_CFGR     at 16#40# range 0 .. 31;
      RISAF_REG1_STARTR   at 16#44# range 0 .. 31;
      RISAF_REG1_ENDR     at 16#48# range 0 .. 31;
      RISAF_REG1_CIDCFGR  at 16#4C# range 0 .. 31;
      RISAF_REG1_ACFGR    at 16#50# range 0 .. 31;
      RISAF_REG1_ASTARTR  at 16#54# range 0 .. 31;
      RISAF_REG1_AENDR    at 16#58# range 0 .. 31;
      RISAF_REG1_ANESTR   at 16#5C# range 0 .. 31;
      RISAF_REG1_BCFGR    at 16#60# range 0 .. 31;
      RISAF_REG1_BSTARTR  at 16#64# range 0 .. 31;
      RISAF_REG1_BENDR    at 16#68# range 0 .. 31;
      RISAF_REG1_BNESTR   at 16#6C# range 0 .. 31;
      RISAF_REG2_CFGR     at 16#80# range 0 .. 31;
      RISAF_REG2_STARTR   at 16#84# range 0 .. 31;
      RISAF_REG2_ENDR     at 16#88# range 0 .. 31;
      RISAF_REG2_CIDCFGR  at 16#8C# range 0 .. 31;
      RISAF_REG2_ACFGR    at 16#90# range 0 .. 31;
      RISAF_REG2_ASTARTR  at 16#94# range 0 .. 31;
      RISAF_REG2_AENDR    at 16#98# range 0 .. 31;
      RISAF_REG2_ANESTR   at 16#9C# range 0 .. 31;
      RISAF_REG2_BCFGR    at 16#A0# range 0 .. 31;
      RISAF_REG2_BSTARTR  at 16#A4# range 0 .. 31;
      RISAF_REG2_BENDR    at 16#A8# range 0 .. 31;
      RISAF_REG2_BNESTR   at 16#AC# range 0 .. 31;
      RISAF_REG3_CFGR     at 16#C0# range 0 .. 31;
      RISAF_REG3_STARTR   at 16#C4# range 0 .. 31;
      RISAF_REG3_ENDR     at 16#C8# range 0 .. 31;
      RISAF_REG3_CIDCFGR  at 16#CC# range 0 .. 31;
      RISAF_REG3_ACFGR    at 16#D0# range 0 .. 31;
      RISAF_REG3_ASTARTR  at 16#D4# range 0 .. 31;
      RISAF_REG3_AENDR    at 16#D8# range 0 .. 31;
      RISAF_REG3_ANESTR   at 16#DC# range 0 .. 31;
      RISAF_REG3_BCFGR    at 16#E0# range 0 .. 31;
      RISAF_REG3_BSTARTR  at 16#E4# range 0 .. 31;
      RISAF_REG3_BENDR    at 16#E8# range 0 .. 31;
      RISAF_REG3_BNESTR   at 16#EC# range 0 .. 31;
      RISAF_REG4_CFGR     at 16#100# range 0 .. 31;
      RISAF_REG4_STARTR   at 16#104# range 0 .. 31;
      RISAF_REG4_ENDR     at 16#108# range 0 .. 31;
      RISAF_REG4_CIDCFGR  at 16#10C# range 0 .. 31;
      RISAF_REG4_ACFGR    at 16#110# range 0 .. 31;
      RISAF_REG4_ASTARTR  at 16#114# range 0 .. 31;
      RISAF_REG4_AENDR    at 16#118# range 0 .. 31;
      RISAF_REG4_ANESTR   at 16#11C# range 0 .. 31;
      RISAF_REG4_BCFGR    at 16#120# range 0 .. 31;
      RISAF_REG4_BSTARTR  at 16#124# range 0 .. 31;
      RISAF_REG4_BENDR    at 16#128# range 0 .. 31;
      RISAF_REG4_BNESTR   at 16#12C# range 0 .. 31;
      RISAF_REG5_CFGR     at 16#140# range 0 .. 31;
      RISAF_REG5_STARTR   at 16#144# range 0 .. 31;
      RISAF_REG5_ENDR     at 16#148# range 0 .. 31;
      RISAF_REG5_CIDCFGR  at 16#14C# range 0 .. 31;
      RISAF_REG5_ACFGR    at 16#150# range 0 .. 31;
      RISAF_REG5_ASTARTR  at 16#154# range 0 .. 31;
      RISAF_REG5_AENDR    at 16#158# range 0 .. 31;
      RISAF_REG5_ANESTR   at 16#15C# range 0 .. 31;
      RISAF_REG5_BCFGR    at 16#160# range 0 .. 31;
      RISAF_REG5_BSTARTR  at 16#164# range 0 .. 31;
      RISAF_REG5_BENDR    at 16#168# range 0 .. 31;
      RISAF_REG5_BNESTR   at 16#16C# range 0 .. 31;
      RISAF_REG6_CFGR     at 16#180# range 0 .. 31;
      RISAF_REG6_STARTR   at 16#184# range 0 .. 31;
      RISAF_REG6_ENDR     at 16#188# range 0 .. 31;
      RISAF_REG6_CIDCFGR  at 16#18C# range 0 .. 31;
      RISAF_REG6_ACFGR    at 16#190# range 0 .. 31;
      RISAF_REG6_ASTARTR  at 16#194# range 0 .. 31;
      RISAF_REG6_AENDR    at 16#198# range 0 .. 31;
      RISAF_REG6_ANESTR   at 16#19C# range 0 .. 31;
      RISAF_REG6_BCFGR    at 16#1A0# range 0 .. 31;
      RISAF_REG6_BSTARTR  at 16#1A4# range 0 .. 31;
      RISAF_REG6_BENDR    at 16#1A8# range 0 .. 31;
      RISAF_REG6_BNESTR   at 16#1AC# range 0 .. 31;
      RISAF_REG7_CFGR     at 16#1C0# range 0 .. 31;
      RISAF_REG7_STARTR   at 16#1C4# range 0 .. 31;
      RISAF_REG7_ENDR     at 16#1C8# range 0 .. 31;
      RISAF_REG7_CIDCFGR  at 16#1CC# range 0 .. 31;
      RISAF_REG7_ACFGR    at 16#1D0# range 0 .. 31;
      RISAF_REG7_ASTARTR  at 16#1D4# range 0 .. 31;
      RISAF_REG7_AENDR    at 16#1D8# range 0 .. 31;
      RISAF_REG7_ANESTR   at 16#1DC# range 0 .. 31;
      RISAF_REG7_BCFGR    at 16#1E0# range 0 .. 31;
      RISAF_REG7_BSTARTR  at 16#1E4# range 0 .. 31;
      RISAF_REG7_BENDR    at 16#1E8# range 0 .. 31;
      RISAF_REG7_BNESTR   at 16#1EC# range 0 .. 31;
      RISAF_REG8_CFGR     at 16#200# range 0 .. 31;
      RISAF_REG8_STARTR   at 16#204# range 0 .. 31;
      RISAF_REG8_ENDR     at 16#208# range 0 .. 31;
      RISAF_REG8_CIDCFGR  at 16#20C# range 0 .. 31;
      RISAF_REG8_ACFGR    at 16#210# range 0 .. 31;
      RISAF_REG8_ASTARTR  at 16#214# range 0 .. 31;
      RISAF_REG8_AENDR    at 16#218# range 0 .. 31;
      RISAF_REG8_ANESTR   at 16#21C# range 0 .. 31;
      RISAF_REG8_BCFGR    at 16#220# range 0 .. 31;
      RISAF_REG8_BSTARTR  at 16#224# range 0 .. 31;
      RISAF_REG8_BENDR    at 16#228# range 0 .. 31;
      RISAF_REG8_BNESTR   at 16#22C# range 0 .. 31;
      RISAF_REG9_CFGR     at 16#240# range 0 .. 31;
      RISAF_REG9_STARTR   at 16#244# range 0 .. 31;
      RISAF_REG9_ENDR     at 16#248# range 0 .. 31;
      RISAF_REG9_CIDCFGR  at 16#24C# range 0 .. 31;
      RISAF_REG9_ACFGR    at 16#250# range 0 .. 31;
      RISAF_REG9_ASTARTR  at 16#254# range 0 .. 31;
      RISAF_REG9_AENDR    at 16#258# range 0 .. 31;
      RISAF_REG9_ANESTR   at 16#25C# range 0 .. 31;
      RISAF_REG9_BCFGR    at 16#260# range 0 .. 31;
      RISAF_REG9_BSTARTR  at 16#264# range 0 .. 31;
      RISAF_REG9_BENDR    at 16#268# range 0 .. 31;
      RISAF_REG9_BNESTR   at 16#26C# range 0 .. 31;
      RISAF_REG10_CFGR    at 16#280# range 0 .. 31;
      RISAF_REG10_STARTR  at 16#284# range 0 .. 31;
      RISAF_REG10_ENDR    at 16#288# range 0 .. 31;
      RISAF_REG10_CIDCFGR at 16#28C# range 0 .. 31;
      RISAF_REG10_ACFGR   at 16#290# range 0 .. 31;
      RISAF_REG10_ASTARTR at 16#294# range 0 .. 31;
      RISAF_REG10_AENDR   at 16#298# range 0 .. 31;
      RISAF_REG10_ANESTR  at 16#29C# range 0 .. 31;
      RISAF_REG10_BCFGR   at 16#2A0# range 0 .. 31;
      RISAF_REG10_BSTARTR at 16#2A4# range 0 .. 31;
      RISAF_REG10_BENDR   at 16#2A8# range 0 .. 31;
      RISAF_REG10_BNESTR  at 16#2AC# range 0 .. 31;
      RISAF_REG11_CFGR    at 16#2C0# range 0 .. 31;
      RISAF_REG11_STARTR  at 16#2C4# range 0 .. 31;
      RISAF_REG11_ENDR    at 16#2C8# range 0 .. 31;
      RISAF_REG11_CIDCFGR at 16#2CC# range 0 .. 31;
      RISAF_REG11_ACFGR   at 16#2D0# range 0 .. 31;
      RISAF_REG11_ASTARTR at 16#2D4# range 0 .. 31;
      RISAF_REG11_AENDR   at 16#2D8# range 0 .. 31;
      RISAF_REG11_ANESTR  at 16#2DC# range 0 .. 31;
      RISAF_REG11_BCFGR   at 16#2E0# range 0 .. 31;
      RISAF_REG11_BSTARTR at 16#2E4# range 0 .. 31;
      RISAF_REG11_BENDR   at 16#2E8# range 0 .. 31;
      RISAF_REG11_BNESTR  at 16#2EC# range 0 .. 31;
      RISAF_REG12_CFGR    at 16#300# range 0 .. 31;
      RISAF_REG12_STARTR  at 16#304# range 0 .. 31;
      RISAF_REG12_ENDR    at 16#308# range 0 .. 31;
      RISAF_REG12_CIDCFGR at 16#30C# range 0 .. 31;
      RISAF_REG12_ACFGR   at 16#310# range 0 .. 31;
      RISAF_REG12_ASTARTR at 16#314# range 0 .. 31;
      RISAF_REG12_AENDR   at 16#318# range 0 .. 31;
      RISAF_REG12_ANESTR  at 16#31C# range 0 .. 31;
      RISAF_REG12_BCFGR   at 16#320# range 0 .. 31;
      RISAF_REG12_BSTARTR at 16#324# range 0 .. 31;
      RISAF_REG12_BENDR   at 16#328# range 0 .. 31;
      RISAF_REG12_BNESTR  at 16#32C# range 0 .. 31;
      RISAF_REG13_CFGR    at 16#340# range 0 .. 31;
      RISAF_REG13_STARTR  at 16#344# range 0 .. 31;
      RISAF_REG13_ENDR    at 16#348# range 0 .. 31;
      RISAF_REG13_CIDCFGR at 16#34C# range 0 .. 31;
      RISAF_REG13_ACFGR   at 16#350# range 0 .. 31;
      RISAF_REG13_ASTARTR at 16#354# range 0 .. 31;
      RISAF_REG13_AENDR   at 16#358# range 0 .. 31;
      RISAF_REG13_ANESTR  at 16#35C# range 0 .. 31;
      RISAF_REG13_BCFGR   at 16#360# range 0 .. 31;
      RISAF_REG13_BSTARTR at 16#364# range 0 .. 31;
      RISAF_REG13_BENDR   at 16#368# range 0 .. 31;
      RISAF_REG13_BNESTR  at 16#36C# range 0 .. 31;
      RISAF_REG14_CFGR    at 16#380# range 0 .. 31;
      RISAF_REG14_STARTR  at 16#384# range 0 .. 31;
      RISAF_REG14_ENDR    at 16#388# range 0 .. 31;
      RISAF_REG14_CIDCFGR at 16#38C# range 0 .. 31;
      RISAF_REG14_ACFGR   at 16#390# range 0 .. 31;
      RISAF_REG14_ASTARTR at 16#394# range 0 .. 31;
      RISAF_REG14_AENDR   at 16#398# range 0 .. 31;
      RISAF_REG14_ANESTR  at 16#39C# range 0 .. 31;
      RISAF_REG14_BCFGR   at 16#3A0# range 0 .. 31;
      RISAF_REG14_BSTARTR at 16#3A4# range 0 .. 31;
      RISAF_REG14_BENDR   at 16#3A8# range 0 .. 31;
      RISAF_REG14_BNESTR  at 16#3AC# range 0 .. 31;
      RISAF_REG15_CFGR    at 16#3C0# range 0 .. 31;
      RISAF_REG15_STARTR  at 16#3C4# range 0 .. 31;
      RISAF_REG15_ENDR    at 16#3C8# range 0 .. 31;
      RISAF_REG15_CIDCFGR at 16#3CC# range 0 .. 31;
      RISAF_REG15_ACFGR   at 16#3D0# range 0 .. 31;
      RISAF_REG15_ASTARTR at 16#3D4# range 0 .. 31;
      RISAF_REG15_AENDR   at 16#3D8# range 0 .. 31;
      RISAF_REG15_ANESTR  at 16#3DC# range 0 .. 31;
      RISAF_REG15_BCFGR   at 16#3E0# range 0 .. 31;
      RISAF_REG15_BSTARTR at 16#3E4# range 0 .. 31;
      RISAF_REG15_BENDR   at 16#3E8# range 0 .. 31;
      RISAF_REG15_BNESTR  at 16#3EC# range 0 .. 31;
   end record;

   --  Resource isolation slave unit for address space protection
   RISAF_Periph : aliased RISAF_Peripheral
     with Import, Address => RISAF_Base;

   --  Resource isolation slave unit for address space protection
   RISAF_S_Periph : aliased RISAF_Peripheral
     with Import, Address => RISAF_S_Base;

end Interfaces.STM32.RISAF;
