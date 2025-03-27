--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

--  General-purpose I/Os
package Interfaces.STM32.GPION_S is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  GPION_MODER_MODE array element
   subtype GPION_MODER_MODE_Element is Interfaces.Bit_Types.UInt2;

   --  GPION_MODER_MODE array
   type GPION_MODER_MODE_Field_Array is array (0 .. 15)
     of GPION_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port N mode register
   type GPION_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPION_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPION_OTYPER_OT array
   type GPION_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPION_OTYPER_OT
   type GPION_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OT as an array
            Arr : GPION_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPION_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port N output type register
   type GPION_OTYPER_Register is record
      --  Port x configuration I/O pin y
      OT             : GPION_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPION_OSPEEDR_OSPEED array element
   subtype GPION_OSPEEDR_OSPEED_Element is Interfaces.Bit_Types.UInt2;

   --  GPION_OSPEEDR_OSPEED array
   type GPION_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPION_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port N output speed register
   type GPION_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPION_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPION_PUPDR_PUPD array element
   subtype GPION_PUPDR_PUPD_Element is Interfaces.Bit_Types.UInt2;

   --  GPION_PUPDR_PUPD array
   type GPION_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPION_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port N pull-up/pull-down register
   type GPION_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPION_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPION_IDR_ID array
   type GPION_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPION_IDR_ID
   type GPION_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  ID as an array
            Arr : GPION_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPION_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port N input data register
   type GPION_IDR_Register is record
      --  Read-only. Port x input data I/O pin y
      ID             : GPION_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPION_ODR_OD array
   type GPION_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPION_ODR_OD
   type GPION_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OD as an array
            Arr : GPION_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPION_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port N output data register
   type GPION_ODR_Register is record
      --  Port x output data I/O pin y
      OD             : GPION_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPION_BSRR_BS array
   type GPION_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPION_BSRR_BS
   type GPION_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BS as an array
            Arr : GPION_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPION_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPION_BSRR_BR array
   type GPION_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPION_BSRR_BR
   type GPION_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPION_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPION_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port N bit set/reset register
   type GPION_BSRR_Register is record
      --  Write-only. Port x set I/O pin y
      BS : GPION_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y
      BR : GPION_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPION_LCKR_LCK array
   type GPION_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPION_LCKR_LCK
   type GPION_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPION_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPION_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port N configuration lock register
   type GPION_LCKR_Register is record
      --  Port x lock I/O pin y
      LCK            : GPION_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPION_AFRL_AFSEL array element
   subtype GPION_AFRL_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPION_AFRL_AFSEL array
   type GPION_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPION_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port N alternate function low register
   type GPION_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPION_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPION_AFRH_AFSEL array element
   subtype GPION_AFRH_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPION_AFRH_AFSEL array
   type GPION_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPION_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port N alternate function high register
   type GPION_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPION_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPION_BRR_BR array
   type GPION_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPION_BRR_BR
   type GPION_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPION_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPION_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port N bit reset register
   type GPION_BRR_Register is record
      --  Write-only. Port x reset IO pin y
      BR             : GPION_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPION_SECCFGR_SEC array
   type GPION_SECCFGR_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPION_SECCFGR_SEC
   type GPION_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  SEC as an array
            Arr : GPION_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPION_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port N secure configuration register
   type GPION_SECCFGR_Register is record
      --  I/O pin y of Port x security configuration
      SEC            : GPION_SECCFGR_SEC_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPION_PRIVCFGR_PRIV array
   type GPION_PRIVCFGR_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPION_PRIVCFGR_PRIV
   type GPION_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PRIV as an array
            Arr : GPION_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPION_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port N privileged configuration register
   type GPION_PRIVCFGR_Register is record
      --  I/O pin y of Port x privilege configuration
      PRIV           : GPION_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPION_RCFGLOCKR_RLOCK array
   type GPION_RCFGLOCKR_RLOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPION_RCFGLOCKR_RLOCK
   type GPION_RCFGLOCKR_RLOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  RLOCK as an array
            Arr : GPION_RCFGLOCKR_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPION_RCFGLOCKR_RLOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port N resource configuration lock register
   type GPION_RCFGLOCKR_Register is record
      --  I/O pin y of port x resource lock
      RLOCK          : GPION_RCFGLOCKR_RLOCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_RCFGLOCKR_Register use record
      RLOCK          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPION_DELAYRL_DELAY array element
   subtype GPION_DELAYRL_DELAY_Element is Interfaces.Bit_Types.UInt4;

   --  GPION_DELAYRL_DELAY array
   type GPION_DELAYRL_DELAY_Field_Array is array (0 .. 7)
     of GPION_DELAYRL_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port N delay low register
   type GPION_DELAYRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPION_DELAYRL_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_DELAYRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPION_DELAYRH_DELAY array element
   subtype GPION_DELAYRH_DELAY_Element is Interfaces.Bit_Types.UInt4;

   --  GPION_DELAYRH_DELAY array
   type GPION_DELAYRH_DELAY_Field_Array is array (8 .. 15)
     of GPION_DELAYRH_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port N delay high register
   type GPION_DELAYRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPION_DELAYRH_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_DELAYRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPION_PIOCFGRL_PIOCFG array element
   subtype GPION_PIOCFGRL_PIOCFG_Element is Interfaces.Bit_Types.UInt4;

   --  GPION_PIOCFGRL_PIOCFG array
   type GPION_PIOCFGRL_PIOCFG_Field_Array is array (0 .. 7)
     of GPION_PIOCFGRL_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port N PIO control low register
   type GPION_PIOCFGRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPION_PIOCFGRL_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_PIOCFGRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPION_PIOCFGRH_PIOCFG array element
   subtype GPION_PIOCFGRH_PIOCFG_Element is Interfaces.Bit_Types.UInt4;

   --  GPION_PIOCFGRH_PIOCFG array
   type GPION_PIOCFGRH_PIOCFG_Field_Array is array (8 .. 15)
     of GPION_PIOCFGRH_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port N PIO control high register
   type GPION_PIOCFGRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPION_PIOCFGRH_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_PIOCFGRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPION_HWCFGR10_AHB_IOP_Field is Interfaces.Bit_Types.UInt4;
   subtype GPION_HWCFGR10_AFSIZE_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPION_HWCFGR10_SPEED_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPION_HWCFGR10_LOCK_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPION_HWCFGR10_SEC_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPION_HWCFGR10_OR_CFG_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port N hardware configuration register 10
   type GPION_HWCFGR10_Register is record
      --  Read-only. Bus interface selection
      AHB_IOP        : GPION_HWCFGR10_AHB_IOP_Field;
      --  Read-only. Number of AF available for each I/O (accepted value: 1 to
      --  4)
      AFSIZE_CFG     : GPION_HWCFGR10_AFSIZE_CFG_Field;
      --  Read-only. Number of speed lines for each I/O
      SPEED_CFG      : GPION_HWCFGR10_SPEED_CFG_Field;
      --  Read-only. Lock mechanism activation
      LOCK_CFG       : GPION_HWCFGR10_LOCK_CFG_Field;
      --  Read-only. Security activation
      SEC_CFG        : GPION_HWCFGR10_SEC_CFG_Field;
      --  Read-only. Option register configuration
      OR_CFG         : GPION_HWCFGR10_OR_CFG_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_HWCFGR10_Register use record
      AHB_IOP        at 0 range 0 .. 3;
      AFSIZE_CFG     at 0 range 4 .. 7;
      SPEED_CFG      at 0 range 8 .. 11;
      LOCK_CFG       at 0 range 12 .. 15;
      SEC_CFG        at 0 range 16 .. 19;
      OR_CFG         at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPION_HWCFGR9_EN_IO_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port N hardware configuration register 9
   type GPION_HWCFGR9_Register is record
      --  Read-only. Presence granularity, each bit indicate the I/O presence
      EN_IO          : GPION_HWCFGR9_EN_IO_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_HWCFGR9_Register use record
      EN_IO          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPION_HWCFGR8_FAST_AF_IO array element
   subtype GPION_HWCFGR8_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  GPION_HWCFGR8_FAST_AF_IO array
   type GPION_HWCFGR8_FAST_AF_IO_Field_Array is array (8 .. 15)
     of GPION_HWCFGR8_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port N hardware configuration register 8
   type GPION_HWCFGR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPION_HWCFGR8_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_HWCFGR8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPION_HWCFGR7_FAST_AF_IO array element
   subtype GPION_HWCFGR7_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  GPION_HWCFGR7_FAST_AF_IO array
   type GPION_HWCFGR7_FAST_AF_IO_Field_Array is array (0 .. 7)
     of GPION_HWCFGR7_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port N hardware configuration register 7
   type GPION_HWCFGR7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPION_HWCFGR7_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_HWCFGR7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPION_HWCFGR3_ODR_RES_Field is Interfaces.Bit_Types.UInt16;
   subtype GPION_HWCFGR3_OTYPER_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port N hardware configuration register 3
   type GPION_HWCFGR3_Register is record
      --  Read-only. Output data register reset value
      ODR_RES    : GPION_HWCFGR3_ODR_RES_Field;
      --  Read-only. Output type register reset value
      OTYPER_RES : GPION_HWCFGR3_OTYPER_RES_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_HWCFGR3_Register use record
      ODR_RES    at 0 range 0 .. 15;
      OTYPER_RES at 0 range 16 .. 31;
   end record;

   subtype GPION_HWCFGR0_OR_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port N hardware configuration register 0
   type GPION_HWCFGR0_Register is record
      --  Read-only. Option register reset value
      OR_RES         : GPION_HWCFGR0_OR_RES_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_HWCFGR0_Register use record
      OR_RES         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPION_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype GPION_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port N version register
   type GPION_VERR_Register is record
      --  Read-only. GPIO minor revision
      MINREV        : GPION_VERR_MINREV_Field;
      --  Read-only. GPIO major revision
      MAJREV        : GPION_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPION_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-purpose I/Os
   type GPION_S_Peripheral is record
      --  GPIO port N mode register
      GPION_MODER     : aliased GPION_MODER_Register;
      --  GPIO port N output type register
      GPION_OTYPER    : aliased GPION_OTYPER_Register;
      --  GPIO port N output speed register
      GPION_OSPEEDR   : aliased GPION_OSPEEDR_Register;
      --  GPIO port N pull-up/pull-down register
      GPION_PUPDR     : aliased GPION_PUPDR_Register;
      --  GPIO port N input data register
      GPION_IDR       : aliased GPION_IDR_Register;
      --  GPIO port N output data register
      GPION_ODR       : aliased GPION_ODR_Register;
      --  GPIO port N bit set/reset register
      GPION_BSRR      : aliased GPION_BSRR_Register;
      --  GPIO port N configuration lock register
      GPION_LCKR      : aliased GPION_LCKR_Register;
      --  GPIO port N alternate function low register
      GPION_AFRL      : aliased GPION_AFRL_Register;
      --  GPIO port N alternate function high register
      GPION_AFRH      : aliased GPION_AFRH_Register;
      --  GPIO port N bit reset register
      GPION_BRR       : aliased GPION_BRR_Register;
      --  GPIO port N secure configuration register
      GPION_SECCFGR   : aliased GPION_SECCFGR_Register;
      --  GPIO port N privileged configuration register
      GPION_PRIVCFGR  : aliased GPION_PRIVCFGR_Register;
      --  GPIO port N resource configuration lock register
      GPION_RCFGLOCKR : aliased GPION_RCFGLOCKR_Register;
      --  GPIO port N delay low register
      GPION_DELAYRL   : aliased GPION_DELAYRL_Register;
      --  GPIO port N delay high register
      GPION_DELAYRH   : aliased GPION_DELAYRH_Register;
      --  GPIO port N PIO control low register
      GPION_PIOCFGRL  : aliased GPION_PIOCFGRL_Register;
      --  GPIO port N PIO control high register
      GPION_PIOCFGRH  : aliased GPION_PIOCFGRH_Register;
      --  GPIO port N hardware configuration register 10
      GPION_HWCFGR10  : aliased GPION_HWCFGR10_Register;
      --  GPIO port N hardware configuration register 9
      GPION_HWCFGR9   : aliased GPION_HWCFGR9_Register;
      --  GPIO port N hardware configuration register 8
      GPION_HWCFGR8   : aliased GPION_HWCFGR8_Register;
      --  GPIO port N hardware configuration register 7
      GPION_HWCFGR7   : aliased GPION_HWCFGR7_Register;
      --  GPIO port N hardware configuration register 6
      GPION_HWCFGR6   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port N hardware configuration register 5
      GPION_HWCFGR5   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port N hardware configuration register 4
      GPION_HWCFGR4   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port N hardware configuration register 3
      GPION_HWCFGR3   : aliased GPION_HWCFGR3_Register;
      --  GPIO port N hardware configuration register 2
      GPION_HWCFGR2   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port N hardware configuration register 1
      GPION_HWCFGR1   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port N hardware configuration register 0
      GPION_HWCFGR0   : aliased GPION_HWCFGR0_Register;
      --  GPIO port N version register
      GPION_VERR      : aliased GPION_VERR_Register;
      --  GPIO port N identification register
      GPION_IPIDR     : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port N size identification register
      GPION_SIDR      : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for GPION_S_Peripheral use record
      GPION_MODER     at 16#0# range 0 .. 31;
      GPION_OTYPER    at 16#4# range 0 .. 31;
      GPION_OSPEEDR   at 16#8# range 0 .. 31;
      GPION_PUPDR     at 16#C# range 0 .. 31;
      GPION_IDR       at 16#10# range 0 .. 31;
      GPION_ODR       at 16#14# range 0 .. 31;
      GPION_BSRR      at 16#18# range 0 .. 31;
      GPION_LCKR      at 16#1C# range 0 .. 31;
      GPION_AFRL      at 16#20# range 0 .. 31;
      GPION_AFRH      at 16#24# range 0 .. 31;
      GPION_BRR       at 16#28# range 0 .. 31;
      GPION_SECCFGR   at 16#30# range 0 .. 31;
      GPION_PRIVCFGR  at 16#34# range 0 .. 31;
      GPION_RCFGLOCKR at 16#38# range 0 .. 31;
      GPION_DELAYRL   at 16#40# range 0 .. 31;
      GPION_DELAYRH   at 16#44# range 0 .. 31;
      GPION_PIOCFGRL  at 16#48# range 0 .. 31;
      GPION_PIOCFGRH  at 16#4C# range 0 .. 31;
      GPION_HWCFGR10  at 16#3C8# range 0 .. 31;
      GPION_HWCFGR9   at 16#3CC# range 0 .. 31;
      GPION_HWCFGR8   at 16#3D0# range 0 .. 31;
      GPION_HWCFGR7   at 16#3D4# range 0 .. 31;
      GPION_HWCFGR6   at 16#3D8# range 0 .. 31;
      GPION_HWCFGR5   at 16#3DC# range 0 .. 31;
      GPION_HWCFGR4   at 16#3E0# range 0 .. 31;
      GPION_HWCFGR3   at 16#3E4# range 0 .. 31;
      GPION_HWCFGR2   at 16#3E8# range 0 .. 31;
      GPION_HWCFGR1   at 16#3EC# range 0 .. 31;
      GPION_HWCFGR0   at 16#3F0# range 0 .. 31;
      GPION_VERR      at 16#3F4# range 0 .. 31;
      GPION_IPIDR     at 16#3F8# range 0 .. 31;
      GPION_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  General-purpose I/Os
   GPION_S_Periph : aliased GPION_S_Peripheral
     with Import, Address => GPION_S_Base;

end Interfaces.STM32.GPION_S;
