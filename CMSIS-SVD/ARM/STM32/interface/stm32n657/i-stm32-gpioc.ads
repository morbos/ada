--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

--  General-purpose I/Os
package Interfaces.STM32.GPIOC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  GPIOC_MODER_MODE array element
   subtype GPIOC_MODER_MODE_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOC_MODER_MODE array
   type GPIOC_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOC_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port C mode register
   type GPIOC_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOC_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOC_OTYPER_OT array
   type GPIOC_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOC_OTYPER_OT
   type GPIOC_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOC_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOC_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port C output type register
   type GPIOC_OTYPER_Register is record
      --  Port x configuration I/O pin y
      OT             : GPIOC_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOC_OSPEEDR_OSPEED array element
   subtype GPIOC_OSPEEDR_OSPEED_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOC_OSPEEDR_OSPEED array
   type GPIOC_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOC_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port C output speed register
   type GPIOC_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOC_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOC_PUPDR_PUPD array element
   subtype GPIOC_PUPDR_PUPD_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOC_PUPDR_PUPD array
   type GPIOC_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOC_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port C pull-up/pull-down register
   type GPIOC_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOC_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOC_IDR_ID array
   type GPIOC_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOC_IDR_ID
   type GPIOC_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOC_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOC_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port C input data register
   type GPIOC_IDR_Register is record
      --  Read-only. Port x input data I/O pin y
      ID             : GPIOC_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOC_ODR_OD array
   type GPIOC_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOC_ODR_OD
   type GPIOC_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOC_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOC_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port C output data register
   type GPIOC_ODR_Register is record
      --  Port x output data I/O pin y
      OD             : GPIOC_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOC_BSRR_BS array
   type GPIOC_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOC_BSRR_BS
   type GPIOC_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOC_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOC_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOC_BSRR_BR array
   type GPIOC_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOC_BSRR_BR
   type GPIOC_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOC_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOC_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port C bit set/reset register
   type GPIOC_BSRR_Register is record
      --  Write-only. Port x set I/O pin y
      BS : GPIOC_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y
      BR : GPIOC_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOC_LCKR_LCK array
   type GPIOC_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOC_LCKR_LCK
   type GPIOC_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOC_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOC_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port C configuration lock register
   type GPIOC_LCKR_Register is record
      --  Port x lock I/O pin y
      LCK            : GPIOC_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOC_AFRL_AFSEL array element
   subtype GPIOC_AFRL_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOC_AFRL_AFSEL array
   type GPIOC_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOC_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port C alternate function low register
   type GPIOC_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOC_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOC_AFRH_AFSEL array element
   subtype GPIOC_AFRH_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOC_AFRH_AFSEL array
   type GPIOC_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOC_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port C alternate function high register
   type GPIOC_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOC_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOC_BRR_BR array
   type GPIOC_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOC_BRR_BR
   type GPIOC_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOC_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOC_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port C bit reset register
   type GPIOC_BRR_Register is record
      --  Write-only. Port x reset IO pin y
      BR             : GPIOC_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOC_SECCFGR_SEC array
   type GPIOC_SECCFGR_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOC_SECCFGR_SEC
   type GPIOC_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  SEC as an array
            Arr : GPIOC_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOC_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port C secure configuration register
   type GPIOC_SECCFGR_Register is record
      --  I/O pin y of Port x security configuration
      SEC            : GPIOC_SECCFGR_SEC_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOC_PRIVCFGR_PRIV array
   type GPIOC_PRIVCFGR_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOC_PRIVCFGR_PRIV
   type GPIOC_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PRIV as an array
            Arr : GPIOC_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOC_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port C privileged configuration register
   type GPIOC_PRIVCFGR_Register is record
      --  I/O pin y of Port x privilege configuration
      PRIV           : GPIOC_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOC_RCFGLOCKR_RLOCK array
   type GPIOC_RCFGLOCKR_RLOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOC_RCFGLOCKR_RLOCK
   type GPIOC_RCFGLOCKR_RLOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  RLOCK as an array
            Arr : GPIOC_RCFGLOCKR_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOC_RCFGLOCKR_RLOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port C resource configuration lock register
   type GPIOC_RCFGLOCKR_Register is record
      --  I/O pin y of port x resource lock
      RLOCK          : GPIOC_RCFGLOCKR_RLOCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_RCFGLOCKR_Register use record
      RLOCK          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOC_DELAYRL_DELAY array element
   subtype GPIOC_DELAYRL_DELAY_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOC_DELAYRL_DELAY array
   type GPIOC_DELAYRL_DELAY_Field_Array is array (0 .. 7)
     of GPIOC_DELAYRL_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port C delay low register
   type GPIOC_DELAYRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOC_DELAYRL_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_DELAYRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOC_DELAYRH_DELAY array element
   subtype GPIOC_DELAYRH_DELAY_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOC_DELAYRH_DELAY array
   type GPIOC_DELAYRH_DELAY_Field_Array is array (8 .. 15)
     of GPIOC_DELAYRH_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port C delay high register
   type GPIOC_DELAYRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOC_DELAYRH_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_DELAYRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOC_PIOCFGRL_PIOCFG array element
   subtype GPIOC_PIOCFGRL_PIOCFG_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOC_PIOCFGRL_PIOCFG array
   type GPIOC_PIOCFGRL_PIOCFG_Field_Array is array (0 .. 7)
     of GPIOC_PIOCFGRL_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port C PIO control low register
   type GPIOC_PIOCFGRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOC_PIOCFGRL_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_PIOCFGRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOC_PIOCFGRH_PIOCFG array element
   subtype GPIOC_PIOCFGRH_PIOCFG_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOC_PIOCFGRH_PIOCFG array
   type GPIOC_PIOCFGRH_PIOCFG_Field_Array is array (8 .. 15)
     of GPIOC_PIOCFGRH_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port C PIO control high register
   type GPIOC_PIOCFGRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOC_PIOCFGRH_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_PIOCFGRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOC_HWCFGR10_AHB_IOP_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOC_HWCFGR10_AFSIZE_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOC_HWCFGR10_SPEED_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOC_HWCFGR10_LOCK_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOC_HWCFGR10_SEC_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOC_HWCFGR10_OR_CFG_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port C hardware configuration register 10
   type GPIOC_HWCFGR10_Register is record
      --  Read-only. Bus interface selection
      AHB_IOP        : GPIOC_HWCFGR10_AHB_IOP_Field;
      --  Read-only. Number of AF available for each I/O (accepted value: 1 to
      --  4)
      AFSIZE_CFG     : GPIOC_HWCFGR10_AFSIZE_CFG_Field;
      --  Read-only. Number of speed lines for each I/O
      SPEED_CFG      : GPIOC_HWCFGR10_SPEED_CFG_Field;
      --  Read-only. Lock mechanism activation
      LOCK_CFG       : GPIOC_HWCFGR10_LOCK_CFG_Field;
      --  Read-only. Security activation
      SEC_CFG        : GPIOC_HWCFGR10_SEC_CFG_Field;
      --  Read-only. Option register configuration
      OR_CFG         : GPIOC_HWCFGR10_OR_CFG_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_HWCFGR10_Register use record
      AHB_IOP        at 0 range 0 .. 3;
      AFSIZE_CFG     at 0 range 4 .. 7;
      SPEED_CFG      at 0 range 8 .. 11;
      LOCK_CFG       at 0 range 12 .. 15;
      SEC_CFG        at 0 range 16 .. 19;
      OR_CFG         at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPIOC_HWCFGR9_EN_IO_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port C hardware configuration register 9
   type GPIOC_HWCFGR9_Register is record
      --  Read-only. Presence granularity, each bit indicate the I/O presence
      EN_IO          : GPIOC_HWCFGR9_EN_IO_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_HWCFGR9_Register use record
      EN_IO          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOC_HWCFGR8_FAST_AF_IO array element
   subtype GPIOC_HWCFGR8_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOC_HWCFGR8_FAST_AF_IO array
   type GPIOC_HWCFGR8_FAST_AF_IO_Field_Array is array (8 .. 15)
     of GPIOC_HWCFGR8_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port C hardware configuration register 8
   type GPIOC_HWCFGR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOC_HWCFGR8_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_HWCFGR8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOC_HWCFGR7_FAST_AF_IO array element
   subtype GPIOC_HWCFGR7_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOC_HWCFGR7_FAST_AF_IO array
   type GPIOC_HWCFGR7_FAST_AF_IO_Field_Array is array (0 .. 7)
     of GPIOC_HWCFGR7_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port C hardware configuration register 7
   type GPIOC_HWCFGR7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOC_HWCFGR7_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_HWCFGR7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOC_HWCFGR3_ODR_RES_Field is Interfaces.Bit_Types.UInt16;
   subtype GPIOC_HWCFGR3_OTYPER_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port C hardware configuration register 3
   type GPIOC_HWCFGR3_Register is record
      --  Read-only. Output data register reset value
      ODR_RES    : GPIOC_HWCFGR3_ODR_RES_Field;
      --  Read-only. Output type register reset value
      OTYPER_RES : GPIOC_HWCFGR3_OTYPER_RES_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_HWCFGR3_Register use record
      ODR_RES    at 0 range 0 .. 15;
      OTYPER_RES at 0 range 16 .. 31;
   end record;

   subtype GPIOC_HWCFGR0_OR_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port C hardware configuration register 0
   type GPIOC_HWCFGR0_Register is record
      --  Read-only. Option register reset value
      OR_RES         : GPIOC_HWCFGR0_OR_RES_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_HWCFGR0_Register use record
      OR_RES         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPIOC_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOC_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port C version register
   type GPIOC_VERR_Register is record
      --  Read-only. GPIO minor revision
      MINREV        : GPIOC_VERR_MINREV_Field;
      --  Read-only. GPIO major revision
      MAJREV        : GPIOC_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-purpose I/Os
   type GPIOC_Peripheral is record
      --  GPIO port C mode register
      GPIOC_MODER     : aliased GPIOC_MODER_Register;
      --  GPIO port C output type register
      GPIOC_OTYPER    : aliased GPIOC_OTYPER_Register;
      --  GPIO port C output speed register
      GPIOC_OSPEEDR   : aliased GPIOC_OSPEEDR_Register;
      --  GPIO port C pull-up/pull-down register
      GPIOC_PUPDR     : aliased GPIOC_PUPDR_Register;
      --  GPIO port C input data register
      GPIOC_IDR       : aliased GPIOC_IDR_Register;
      --  GPIO port C output data register
      GPIOC_ODR       : aliased GPIOC_ODR_Register;
      --  GPIO port C bit set/reset register
      GPIOC_BSRR      : aliased GPIOC_BSRR_Register;
      --  GPIO port C configuration lock register
      GPIOC_LCKR      : aliased GPIOC_LCKR_Register;
      --  GPIO port C alternate function low register
      GPIOC_AFRL      : aliased GPIOC_AFRL_Register;
      --  GPIO port C alternate function high register
      GPIOC_AFRH      : aliased GPIOC_AFRH_Register;
      --  GPIO port C bit reset register
      GPIOC_BRR       : aliased GPIOC_BRR_Register;
      --  GPIO port C secure configuration register
      GPIOC_SECCFGR   : aliased GPIOC_SECCFGR_Register;
      --  GPIO port C privileged configuration register
      GPIOC_PRIVCFGR  : aliased GPIOC_PRIVCFGR_Register;
      --  GPIO port C resource configuration lock register
      GPIOC_RCFGLOCKR : aliased GPIOC_RCFGLOCKR_Register;
      --  GPIO port C delay low register
      GPIOC_DELAYRL   : aliased GPIOC_DELAYRL_Register;
      --  GPIO port C delay high register
      GPIOC_DELAYRH   : aliased GPIOC_DELAYRH_Register;
      --  GPIO port C PIO control low register
      GPIOC_PIOCFGRL  : aliased GPIOC_PIOCFGRL_Register;
      --  GPIO port C PIO control high register
      GPIOC_PIOCFGRH  : aliased GPIOC_PIOCFGRH_Register;
      --  GPIO port C hardware configuration register 10
      GPIOC_HWCFGR10  : aliased GPIOC_HWCFGR10_Register;
      --  GPIO port C hardware configuration register 9
      GPIOC_HWCFGR9   : aliased GPIOC_HWCFGR9_Register;
      --  GPIO port C hardware configuration register 8
      GPIOC_HWCFGR8   : aliased GPIOC_HWCFGR8_Register;
      --  GPIO port C hardware configuration register 7
      GPIOC_HWCFGR7   : aliased GPIOC_HWCFGR7_Register;
      --  GPIO port C hardware configuration register 6
      GPIOC_HWCFGR6   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port C hardware configuration register 5
      GPIOC_HWCFGR5   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port C hardware configuration register 4
      GPIOC_HWCFGR4   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port C hardware configuration register 3
      GPIOC_HWCFGR3   : aliased GPIOC_HWCFGR3_Register;
      --  GPIO port C hardware configuration register 2
      GPIOC_HWCFGR2   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port C hardware configuration register 1
      GPIOC_HWCFGR1   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port C hardware configuration register 0
      GPIOC_HWCFGR0   : aliased GPIOC_HWCFGR0_Register;
      --  GPIO port C version register
      GPIOC_VERR      : aliased GPIOC_VERR_Register;
      --  GPIO port C identification register
      GPIOC_IPIDR     : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port C size identification register
      GPIOC_SIDR      : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for GPIOC_Peripheral use record
      GPIOC_MODER     at 16#0# range 0 .. 31;
      GPIOC_OTYPER    at 16#4# range 0 .. 31;
      GPIOC_OSPEEDR   at 16#8# range 0 .. 31;
      GPIOC_PUPDR     at 16#C# range 0 .. 31;
      GPIOC_IDR       at 16#10# range 0 .. 31;
      GPIOC_ODR       at 16#14# range 0 .. 31;
      GPIOC_BSRR      at 16#18# range 0 .. 31;
      GPIOC_LCKR      at 16#1C# range 0 .. 31;
      GPIOC_AFRL      at 16#20# range 0 .. 31;
      GPIOC_AFRH      at 16#24# range 0 .. 31;
      GPIOC_BRR       at 16#28# range 0 .. 31;
      GPIOC_SECCFGR   at 16#30# range 0 .. 31;
      GPIOC_PRIVCFGR  at 16#34# range 0 .. 31;
      GPIOC_RCFGLOCKR at 16#38# range 0 .. 31;
      GPIOC_DELAYRL   at 16#40# range 0 .. 31;
      GPIOC_DELAYRH   at 16#44# range 0 .. 31;
      GPIOC_PIOCFGRL  at 16#48# range 0 .. 31;
      GPIOC_PIOCFGRH  at 16#4C# range 0 .. 31;
      GPIOC_HWCFGR10  at 16#3C8# range 0 .. 31;
      GPIOC_HWCFGR9   at 16#3CC# range 0 .. 31;
      GPIOC_HWCFGR8   at 16#3D0# range 0 .. 31;
      GPIOC_HWCFGR7   at 16#3D4# range 0 .. 31;
      GPIOC_HWCFGR6   at 16#3D8# range 0 .. 31;
      GPIOC_HWCFGR5   at 16#3DC# range 0 .. 31;
      GPIOC_HWCFGR4   at 16#3E0# range 0 .. 31;
      GPIOC_HWCFGR3   at 16#3E4# range 0 .. 31;
      GPIOC_HWCFGR2   at 16#3E8# range 0 .. 31;
      GPIOC_HWCFGR1   at 16#3EC# range 0 .. 31;
      GPIOC_HWCFGR0   at 16#3F0# range 0 .. 31;
      GPIOC_VERR      at 16#3F4# range 0 .. 31;
      GPIOC_IPIDR     at 16#3F8# range 0 .. 31;
      GPIOC_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  General-purpose I/Os
   GPIOC_Periph : aliased GPIOC_Peripheral
     with Import, Address => GPIOC_Base;

end Interfaces.STM32.GPIOC;
