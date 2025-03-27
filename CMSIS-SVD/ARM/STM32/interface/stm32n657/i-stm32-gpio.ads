--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.GPIO is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  MODER_MODE array element
   subtype MODER_MODE_Element is Interfaces.Bit_Types.UInt2;

   --  MODER_MODE array
   type MODER_MODE_Field_Array is array (0 .. 15) of MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port A mode register
   type MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MODE as an array
            Arr : MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  OTYPER_OT array
   type OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for OTYPER_OT
   type OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OT as an array
            Arr : OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A output type register
   type OTYPER_Register is record
      --  Port x configuration I/O pin y
      OT             : OTYPER_OT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  OSPEEDR_OSPEED array element
   subtype OSPEEDR_OSPEED_Element is Interfaces.Bit_Types.UInt2;

   --  OSPEEDR_OSPEED array
   type OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port A output speed register
   type OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PUPDR_PUPD array element
   subtype PUPDR_PUPD_Element is Interfaces.Bit_Types.UInt2;

   --  PUPDR_PUPD array
   type PUPDR_PUPD_Field_Array is array (0 .. 15) of PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port A pull-up/pull-down register
   type PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PUPD as an array
            Arr : PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IDR_ID array
   type IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for IDR_ID
   type IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  ID as an array
            Arr : IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A input data register
   type IDR_Register is record
      --  Read-only. Port x input data I/O pin y
      ID             : IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  ODR_OD array
   type ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for ODR_OD
   type ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OD as an array
            Arr : ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A output data register
   type ODR_Register is record
      --  Port x output data I/O pin y
      OD             : ODR_OD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  BSRR_BS array
   type BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for BSRR_BS
   type BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BS as an array
            Arr : BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  BSRR_BR array
   type BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for BSRR_BR
   type BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A bit set/reset register
   type BSRR_Register is record
      --  Write-only. Port x set I/O pin y
      BS : BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y
      BR : BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  LCKR_LCK array
   type LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for LCKR_LCK
   type LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  LCK as an array
            Arr : LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A configuration lock register
   type LCKR_Register is record
      --  Port x lock I/O pin y
      LCK            : LCKR_LCK_Field := (As_Array => False, Val => 16#0#);
      --  Lock key
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  AFRL_AFSEL array element
   subtype AFRL_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  AFRL_AFSEL array
   type AFRL_AFSEL_Field_Array is array (0 .. 7) of AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port A alternate function low register
   type AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  AFRH_AFSEL array element
   subtype AFRH_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  AFRH_AFSEL array
   type AFRH_AFSEL_Field_Array is array (8 .. 15) of AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port A alternate function high register
   type AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BRR_BR array
   type BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for BRR_BR
   type BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A bit reset register
   type BRR_Register is record
      --  Write-only. Port x reset IO pin y
      BR             : BRR_BR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SECCFGR_SEC array
   type SECCFGR_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for SECCFGR_SEC
   type SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  SEC as an array
            Arr : SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A secure configuration register
   type SECCFGR_Register is record
      --  I/O pin y of Port x security configuration
      SEC            : SECCFGR_SEC_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PRIVCFGR_PRIV array
   type PRIVCFGR_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PRIVCFGR_PRIV
   type PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PRIV as an array
            Arr : PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A privileged configuration register
   type PRIVCFGR_Register is record
      --  I/O pin y of Port x privilege configuration
      PRIV           : PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RCFGLOCKR_RLOCK array
   type RCFGLOCKR_RLOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for RCFGLOCKR_RLOCK
   type RCFGLOCKR_RLOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  RLOCK as an array
            Arr : RCFGLOCKR_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for RCFGLOCKR_RLOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A resource configuration lock register
   type RCFGLOCKR_Register is record
      --  I/O pin y of port x resource lock
      RLOCK          : RCFGLOCKR_RLOCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCFGLOCKR_Register use record
      RLOCK          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DELAYRL_DELAY array element
   subtype DELAYRL_DELAY_Element is Interfaces.Bit_Types.UInt4;

   --  DELAYRL_DELAY array
   type DELAYRL_DELAY_Field_Array is array (0 .. 7) of DELAYRL_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port A delay low register
   type DELAYRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DELAY as an array
            Arr : DELAYRL_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DELAYRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  DELAYRH_DELAY array element
   subtype DELAYRH_DELAY_Element is Interfaces.Bit_Types.UInt4;

   --  DELAYRH_DELAY array
   type DELAYRH_DELAY_Field_Array is array (8 .. 15) of DELAYRH_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port A delay high register
   type DELAYRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DELAY as an array
            Arr : DELAYRH_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DELAYRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOCFGRL_PIOCFG array element
   subtype PIOCFGRL_PIOCFG_Element is Interfaces.Bit_Types.UInt4;

   --  PIOCFGRL_PIOCFG array
   type PIOCFGRL_PIOCFG_Field_Array is array (0 .. 7)
     of PIOCFGRL_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port A PIO control low register
   type PIOCFGRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : PIOCFGRL_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOCFGRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOCFGRH_PIOCFG array element
   subtype PIOCFGRH_PIOCFG_Element is Interfaces.Bit_Types.UInt4;

   --  PIOCFGRH_PIOCFG array
   type PIOCFGRH_PIOCFG_Field_Array is array (8 .. 15)
     of PIOCFGRH_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port A PIO control high register
   type PIOCFGRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : PIOCFGRH_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOCFGRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype HWCFGR10_AHB_IOP_Field is Interfaces.Bit_Types.UInt4;
   subtype HWCFGR10_AFSIZE_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype HWCFGR10_SPEED_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype HWCFGR10_LOCK_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype HWCFGR10_SEC_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype HWCFGR10_OR_CFG_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port A hardware configuration register 10
   type HWCFGR10_Register is record
      --  Read-only. Bus interface selection
      AHB_IOP        : HWCFGR10_AHB_IOP_Field;
      --  Read-only. Number of AF available for each I/O (accepted value: 1 to
      --  4)
      AFSIZE_CFG     : HWCFGR10_AFSIZE_CFG_Field;
      --  Read-only. Number of speed lines for each I/O
      SPEED_CFG      : HWCFGR10_SPEED_CFG_Field;
      --  Read-only. Lock mechanism activation
      LOCK_CFG       : HWCFGR10_LOCK_CFG_Field;
      --  Read-only. Security activation
      SEC_CFG        : HWCFGR10_SEC_CFG_Field;
      --  Read-only. Option register configuration
      OR_CFG         : HWCFGR10_OR_CFG_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWCFGR10_Register use record
      AHB_IOP        at 0 range 0 .. 3;
      AFSIZE_CFG     at 0 range 4 .. 7;
      SPEED_CFG      at 0 range 8 .. 11;
      LOCK_CFG       at 0 range 12 .. 15;
      SEC_CFG        at 0 range 16 .. 19;
      OR_CFG         at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HWCFGR9_EN_IO_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port A hardware configuration register 9
   type HWCFGR9_Register is record
      --  Read-only. Presence granularity, each bit indicate the I/O presence
      EN_IO          : HWCFGR9_EN_IO_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWCFGR9_Register use record
      EN_IO          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  HWCFGR8_FAST_AF_IO array element
   subtype HWCFGR8_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  HWCFGR8_FAST_AF_IO array
   type HWCFGR8_FAST_AF_IO_Field_Array is array (8 .. 15)
     of HWCFGR8_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port A hardware configuration register 8
   type HWCFGR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : HWCFGR8_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWCFGR8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  HWCFGR7_FAST_AF_IO array element
   subtype HWCFGR7_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  HWCFGR7_FAST_AF_IO array
   type HWCFGR7_FAST_AF_IO_Field_Array is array (0 .. 7)
     of HWCFGR7_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port A hardware configuration register 7
   type HWCFGR7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : HWCFGR7_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWCFGR7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype HWCFGR3_ODR_RES_Field is Interfaces.Bit_Types.UInt16;
   subtype HWCFGR3_OTYPER_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port A hardware configuration register 3
   type HWCFGR3_Register is record
      --  Read-only. Output data register reset value
      ODR_RES    : HWCFGR3_ODR_RES_Field;
      --  Read-only. Output type register reset value
      OTYPER_RES : HWCFGR3_OTYPER_RES_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWCFGR3_Register use record
      ODR_RES    at 0 range 0 .. 15;
      OTYPER_RES at 0 range 16 .. 31;
   end record;

   subtype HWCFGR0_OR_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port A hardware configuration register 0
   type HWCFGR0_Register is record
      --  Read-only. Option register reset value
      OR_RES         : HWCFGR0_OR_RES_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWCFGR0_Register use record
      OR_RES         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port A version register
   type VERR_Register is record
      --  Read-only. GPIO minor revision
      MINREV        : VERR_MINREV_Field;
      --  Read-only. GPIO major revision
      MAJREV        : VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-purpose I/Os
   type GPIO_Peripheral is record
      --  GPIO port A mode register
      MODER     : aliased MODER_Register;
      --  GPIO port A output type register
      OTYPER    : aliased OTYPER_Register;
      --  GPIO port A output speed register
      OSPEEDR   : aliased OSPEEDR_Register;
      --  GPIO port A pull-up/pull-down register
      PUPDR     : aliased PUPDR_Register;
      --  GPIO port A input data register
      IDR       : aliased IDR_Register;
      --  GPIO port A output data register
      ODR       : aliased ODR_Register;
      --  GPIO port A bit set/reset register
      BSRR      : aliased BSRR_Register;
      --  GPIO port A configuration lock register
      LCKR      : aliased LCKR_Register;
      --  GPIO port A alternate function low register
      AFRL      : aliased AFRL_Register;
      --  GPIO port A alternate function high register
      AFRH      : aliased AFRH_Register;
      --  GPIO port A bit reset register
      BRR       : aliased BRR_Register;
      --  GPIO port A secure configuration register
      SECCFGR   : aliased SECCFGR_Register;
      --  GPIO port A privileged configuration register
      PRIVCFGR  : aliased PRIVCFGR_Register;
      --  GPIO port A resource configuration lock register
      RCFGLOCKR : aliased RCFGLOCKR_Register;
      --  GPIO port A delay low register
      DELAYRL   : aliased DELAYRL_Register;
      --  GPIO port A delay high register
      DELAYRH   : aliased DELAYRH_Register;
      --  GPIO port A PIO control low register
      PIOCFGRL  : aliased PIOCFGRL_Register;
      --  GPIO port A PIO control high register
      PIOCFGRH  : aliased PIOCFGRH_Register;
      --  GPIO port A hardware configuration register 10
      HWCFGR10  : aliased HWCFGR10_Register;
      --  GPIO port A hardware configuration register 9
      HWCFGR9   : aliased HWCFGR9_Register;
      --  GPIO port A hardware configuration register 8
      HWCFGR8   : aliased HWCFGR8_Register;
      --  GPIO port A hardware configuration register 7
      HWCFGR7   : aliased HWCFGR7_Register;
      --  GPIO port A hardware configuration register 6
      HWCFGR6   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port A hardware configuration register 5
      HWCFGR5   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port A hardware configuration register 4
      HWCFGR4   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port A hardware configuration register 3
      HWCFGR3   : aliased HWCFGR3_Register;
      --  GPIO port A hardware configuration register 2
      HWCFGR2   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port A hardware configuration register 1
      HWCFGR1   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port A hardware configuration register 0
      HWCFGR0   : aliased HWCFGR0_Register;
      --  GPIO port A version register
      VERR      : aliased VERR_Register;
      --  GPIO port A identification register
      IPIDR     : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port A size identification register
      SIDR      : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for GPIO_Peripheral use record
      MODER     at 16#0# range 0 .. 31;
      OTYPER    at 16#4# range 0 .. 31;
      OSPEEDR   at 16#8# range 0 .. 31;
      PUPDR     at 16#C# range 0 .. 31;
      IDR       at 16#10# range 0 .. 31;
      ODR       at 16#14# range 0 .. 31;
      BSRR      at 16#18# range 0 .. 31;
      LCKR      at 16#1C# range 0 .. 31;
      AFRL      at 16#20# range 0 .. 31;
      AFRH      at 16#24# range 0 .. 31;
      BRR       at 16#28# range 0 .. 31;
      SECCFGR   at 16#30# range 0 .. 31;
      PRIVCFGR  at 16#34# range 0 .. 31;
      RCFGLOCKR at 16#38# range 0 .. 31;
      DELAYRL   at 16#40# range 0 .. 31;
      DELAYRH   at 16#44# range 0 .. 31;
      PIOCFGRL  at 16#48# range 0 .. 31;
      PIOCFGRH  at 16#4C# range 0 .. 31;
      HWCFGR10  at 16#3C8# range 0 .. 31;
      HWCFGR9   at 16#3CC# range 0 .. 31;
      HWCFGR8   at 16#3D0# range 0 .. 31;
      HWCFGR7   at 16#3D4# range 0 .. 31;
      HWCFGR6   at 16#3D8# range 0 .. 31;
      HWCFGR5   at 16#3DC# range 0 .. 31;
      HWCFGR4   at 16#3E0# range 0 .. 31;
      HWCFGR3   at 16#3E4# range 0 .. 31;
      HWCFGR2   at 16#3E8# range 0 .. 31;
      HWCFGR1   at 16#3EC# range 0 .. 31;
      HWCFGR0   at 16#3F0# range 0 .. 31;
      VERR      at 16#3F4# range 0 .. 31;
      IPIDR     at 16#3F8# range 0 .. 31;
      SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  General-purpose I/Os
   GPIOA_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOA_Base;

   --  General-purpose I/Os
   GPIOA_S_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOA_S_Base;

   --  General-purpose I/Os
   GPIOB_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOB_Base;

   --  General-purpose I/Os
   GPIOB_S_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOB_S_Base;

   --  General-purpose I/Os
   GPIOC_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOC_Base;

   --  General-purpose I/Os
   GPIOC_S_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOC_S_Base;

   --  General-purpose I/Os
   GPIOD_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOD_Base;

   --  General-purpose I/Os
   GPIOD_S_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOD_S_Base;

   --  General-purpose I/Os
   GPIOE_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOE_Base;

   --  General-purpose I/Os
   GPIOE_S_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOE_S_Base;

   --  General-purpose I/Os
   GPIOF_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOF_Base;

   --  General-purpose I/Os
   GPIOF_S_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOF_S_Base;

   --  General-purpose I/Os
   GPIOG_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOG_Base;

   --  General-purpose I/Os
   GPIOG_S_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOG_S_Base;

   --  General-purpose I/Os
   GPIOH_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOH_Base;

   --  General-purpose I/Os
   GPIOH_S_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOH_S_Base;

   --  General-purpose I/Os
   GPION_Periph : aliased GPIO_Peripheral
     with Import, Address => GPION_Base;

   --  General-purpose I/Os
   GPION_S_Periph : aliased GPIO_Peripheral
     with Import, Address => GPION_S_Base;

   --  General-purpose I/Os
   GPIOO_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOO_Base;

   --  General-purpose I/Os
   GPIOO_S_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOO_S_Base;

   --  General-purpose I/Os
   GPIOP_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOP_Base;

   --  General-purpose I/Os
   GPIOP_S_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOP_S_Base;

   --  General-purpose I/Os
   GPIOQ_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOQ_Base;

   --  General-purpose I/Os
   GPIOQ_S_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOQ_S_Base;

end Interfaces.STM32.GPIO;
