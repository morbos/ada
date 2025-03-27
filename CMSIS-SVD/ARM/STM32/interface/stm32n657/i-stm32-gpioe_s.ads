--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

--  General-purpose I/Os
package Interfaces.STM32.GPIOE_S is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  GPIOE_MODER_MODE array element
   subtype GPIOE_MODER_MODE_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOE_MODER_MODE array
   type GPIOE_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOE_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port E mode register
   type GPIOE_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOE_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOE_OTYPER_OT array
   type GPIOE_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOE_OTYPER_OT
   type GPIOE_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOE_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOE_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port E output type register
   type GPIOE_OTYPER_Register is record
      --  Port x configuration I/O pin y
      OT             : GPIOE_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOE_OSPEEDR_OSPEED array element
   subtype GPIOE_OSPEEDR_OSPEED_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOE_OSPEEDR_OSPEED array
   type GPIOE_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOE_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port E output speed register
   type GPIOE_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOE_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOE_PUPDR_PUPD array element
   subtype GPIOE_PUPDR_PUPD_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOE_PUPDR_PUPD array
   type GPIOE_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOE_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port E pull-up/pull-down register
   type GPIOE_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOE_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOE_IDR_ID array
   type GPIOE_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOE_IDR_ID
   type GPIOE_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOE_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOE_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port E input data register
   type GPIOE_IDR_Register is record
      --  Read-only. Port x input data I/O pin y
      ID             : GPIOE_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOE_ODR_OD array
   type GPIOE_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOE_ODR_OD
   type GPIOE_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOE_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOE_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port E output data register
   type GPIOE_ODR_Register is record
      --  Port x output data I/O pin y
      OD             : GPIOE_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOE_BSRR_BS array
   type GPIOE_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOE_BSRR_BS
   type GPIOE_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOE_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOE_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOE_BSRR_BR array
   type GPIOE_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOE_BSRR_BR
   type GPIOE_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOE_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOE_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port E bit set/reset register
   type GPIOE_BSRR_Register is record
      --  Write-only. Port x set I/O pin y
      BS : GPIOE_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y
      BR : GPIOE_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOE_LCKR_LCK array
   type GPIOE_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOE_LCKR_LCK
   type GPIOE_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOE_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOE_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port E configuration lock register
   type GPIOE_LCKR_Register is record
      --  Port x lock I/O pin y
      LCK            : GPIOE_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOE_AFRL_AFSEL array element
   subtype GPIOE_AFRL_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOE_AFRL_AFSEL array
   type GPIOE_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOE_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port E alternate function low register
   type GPIOE_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOE_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOE_AFRH_AFSEL array element
   subtype GPIOE_AFRH_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOE_AFRH_AFSEL array
   type GPIOE_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOE_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port E alternate function high register
   type GPIOE_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOE_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOE_BRR_BR array
   type GPIOE_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOE_BRR_BR
   type GPIOE_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOE_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOE_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port E bit reset register
   type GPIOE_BRR_Register is record
      --  Write-only. Port x reset IO pin y
      BR             : GPIOE_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOE_SECCFGR_SEC array
   type GPIOE_SECCFGR_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOE_SECCFGR_SEC
   type GPIOE_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  SEC as an array
            Arr : GPIOE_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOE_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port E secure configuration register
   type GPIOE_SECCFGR_Register is record
      --  I/O pin y of Port x security configuration
      SEC            : GPIOE_SECCFGR_SEC_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOE_PRIVCFGR_PRIV array
   type GPIOE_PRIVCFGR_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOE_PRIVCFGR_PRIV
   type GPIOE_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PRIV as an array
            Arr : GPIOE_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOE_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port E privileged configuration register
   type GPIOE_PRIVCFGR_Register is record
      --  I/O pin y of Port x privilege configuration
      PRIV           : GPIOE_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOE_RCFGLOCKR_RLOCK array
   type GPIOE_RCFGLOCKR_RLOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOE_RCFGLOCKR_RLOCK
   type GPIOE_RCFGLOCKR_RLOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  RLOCK as an array
            Arr : GPIOE_RCFGLOCKR_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOE_RCFGLOCKR_RLOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port E resource configuration lock register
   type GPIOE_RCFGLOCKR_Register is record
      --  I/O pin y of port x resource lock
      RLOCK          : GPIOE_RCFGLOCKR_RLOCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_RCFGLOCKR_Register use record
      RLOCK          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOE_DELAYRL_DELAY array element
   subtype GPIOE_DELAYRL_DELAY_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOE_DELAYRL_DELAY array
   type GPIOE_DELAYRL_DELAY_Field_Array is array (0 .. 7)
     of GPIOE_DELAYRL_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port E delay low register
   type GPIOE_DELAYRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOE_DELAYRL_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_DELAYRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOE_DELAYRH_DELAY array element
   subtype GPIOE_DELAYRH_DELAY_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOE_DELAYRH_DELAY array
   type GPIOE_DELAYRH_DELAY_Field_Array is array (8 .. 15)
     of GPIOE_DELAYRH_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port E delay high register
   type GPIOE_DELAYRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOE_DELAYRH_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_DELAYRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOE_PIOCFGRL_PIOCFG array element
   subtype GPIOE_PIOCFGRL_PIOCFG_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOE_PIOCFGRL_PIOCFG array
   type GPIOE_PIOCFGRL_PIOCFG_Field_Array is array (0 .. 7)
     of GPIOE_PIOCFGRL_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port E PIO control low register
   type GPIOE_PIOCFGRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOE_PIOCFGRL_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_PIOCFGRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOE_PIOCFGRH_PIOCFG array element
   subtype GPIOE_PIOCFGRH_PIOCFG_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOE_PIOCFGRH_PIOCFG array
   type GPIOE_PIOCFGRH_PIOCFG_Field_Array is array (8 .. 15)
     of GPIOE_PIOCFGRH_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port E PIO control high register
   type GPIOE_PIOCFGRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOE_PIOCFGRH_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_PIOCFGRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOE_HWCFGR10_AHB_IOP_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOE_HWCFGR10_AFSIZE_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOE_HWCFGR10_SPEED_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOE_HWCFGR10_LOCK_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOE_HWCFGR10_SEC_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOE_HWCFGR10_OR_CFG_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port E hardware configuration register 10
   type GPIOE_HWCFGR10_Register is record
      --  Read-only. Bus interface selection
      AHB_IOP        : GPIOE_HWCFGR10_AHB_IOP_Field;
      --  Read-only. Number of AF available for each I/O (accepted value: 1 to
      --  4)
      AFSIZE_CFG     : GPIOE_HWCFGR10_AFSIZE_CFG_Field;
      --  Read-only. Number of speed lines for each I/O
      SPEED_CFG      : GPIOE_HWCFGR10_SPEED_CFG_Field;
      --  Read-only. Lock mechanism activation
      LOCK_CFG       : GPIOE_HWCFGR10_LOCK_CFG_Field;
      --  Read-only. Security activation
      SEC_CFG        : GPIOE_HWCFGR10_SEC_CFG_Field;
      --  Read-only. Option register configuration
      OR_CFG         : GPIOE_HWCFGR10_OR_CFG_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_HWCFGR10_Register use record
      AHB_IOP        at 0 range 0 .. 3;
      AFSIZE_CFG     at 0 range 4 .. 7;
      SPEED_CFG      at 0 range 8 .. 11;
      LOCK_CFG       at 0 range 12 .. 15;
      SEC_CFG        at 0 range 16 .. 19;
      OR_CFG         at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPIOE_HWCFGR9_EN_IO_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port E hardware configuration register 9
   type GPIOE_HWCFGR9_Register is record
      --  Read-only. Presence granularity, each bit indicate the I/O presence
      EN_IO          : GPIOE_HWCFGR9_EN_IO_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_HWCFGR9_Register use record
      EN_IO          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOE_HWCFGR8_FAST_AF_IO array element
   subtype GPIOE_HWCFGR8_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOE_HWCFGR8_FAST_AF_IO array
   type GPIOE_HWCFGR8_FAST_AF_IO_Field_Array is array (8 .. 15)
     of GPIOE_HWCFGR8_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port E hardware configuration register 8
   type GPIOE_HWCFGR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOE_HWCFGR8_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_HWCFGR8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOE_HWCFGR7_FAST_AF_IO array element
   subtype GPIOE_HWCFGR7_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOE_HWCFGR7_FAST_AF_IO array
   type GPIOE_HWCFGR7_FAST_AF_IO_Field_Array is array (0 .. 7)
     of GPIOE_HWCFGR7_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port E hardware configuration register 7
   type GPIOE_HWCFGR7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOE_HWCFGR7_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_HWCFGR7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOE_HWCFGR3_ODR_RES_Field is Interfaces.Bit_Types.UInt16;
   subtype GPIOE_HWCFGR3_OTYPER_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port E hardware configuration register 3
   type GPIOE_HWCFGR3_Register is record
      --  Read-only. Output data register reset value
      ODR_RES    : GPIOE_HWCFGR3_ODR_RES_Field;
      --  Read-only. Output type register reset value
      OTYPER_RES : GPIOE_HWCFGR3_OTYPER_RES_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_HWCFGR3_Register use record
      ODR_RES    at 0 range 0 .. 15;
      OTYPER_RES at 0 range 16 .. 31;
   end record;

   subtype GPIOE_HWCFGR0_OR_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port E hardware configuration register 0
   type GPIOE_HWCFGR0_Register is record
      --  Read-only. Option register reset value
      OR_RES         : GPIOE_HWCFGR0_OR_RES_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_HWCFGR0_Register use record
      OR_RES         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPIOE_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOE_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port E version register
   type GPIOE_VERR_Register is record
      --  Read-only. GPIO minor revision
      MINREV        : GPIOE_VERR_MINREV_Field;
      --  Read-only. GPIO major revision
      MAJREV        : GPIOE_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-purpose I/Os
   type GPIOE_S_Peripheral is record
      --  GPIO port E mode register
      GPIOE_MODER     : aliased GPIOE_MODER_Register;
      --  GPIO port E output type register
      GPIOE_OTYPER    : aliased GPIOE_OTYPER_Register;
      --  GPIO port E output speed register
      GPIOE_OSPEEDR   : aliased GPIOE_OSPEEDR_Register;
      --  GPIO port E pull-up/pull-down register
      GPIOE_PUPDR     : aliased GPIOE_PUPDR_Register;
      --  GPIO port E input data register
      GPIOE_IDR       : aliased GPIOE_IDR_Register;
      --  GPIO port E output data register
      GPIOE_ODR       : aliased GPIOE_ODR_Register;
      --  GPIO port E bit set/reset register
      GPIOE_BSRR      : aliased GPIOE_BSRR_Register;
      --  GPIO port E configuration lock register
      GPIOE_LCKR      : aliased GPIOE_LCKR_Register;
      --  GPIO port E alternate function low register
      GPIOE_AFRL      : aliased GPIOE_AFRL_Register;
      --  GPIO port E alternate function high register
      GPIOE_AFRH      : aliased GPIOE_AFRH_Register;
      --  GPIO port E bit reset register
      GPIOE_BRR       : aliased GPIOE_BRR_Register;
      --  GPIO port E secure configuration register
      GPIOE_SECCFGR   : aliased GPIOE_SECCFGR_Register;
      --  GPIO port E privileged configuration register
      GPIOE_PRIVCFGR  : aliased GPIOE_PRIVCFGR_Register;
      --  GPIO port E resource configuration lock register
      GPIOE_RCFGLOCKR : aliased GPIOE_RCFGLOCKR_Register;
      --  GPIO port E delay low register
      GPIOE_DELAYRL   : aliased GPIOE_DELAYRL_Register;
      --  GPIO port E delay high register
      GPIOE_DELAYRH   : aliased GPIOE_DELAYRH_Register;
      --  GPIO port E PIO control low register
      GPIOE_PIOCFGRL  : aliased GPIOE_PIOCFGRL_Register;
      --  GPIO port E PIO control high register
      GPIOE_PIOCFGRH  : aliased GPIOE_PIOCFGRH_Register;
      --  GPIO port E hardware configuration register 10
      GPIOE_HWCFGR10  : aliased GPIOE_HWCFGR10_Register;
      --  GPIO port E hardware configuration register 9
      GPIOE_HWCFGR9   : aliased GPIOE_HWCFGR9_Register;
      --  GPIO port E hardware configuration register 8
      GPIOE_HWCFGR8   : aliased GPIOE_HWCFGR8_Register;
      --  GPIO port E hardware configuration register 7
      GPIOE_HWCFGR7   : aliased GPIOE_HWCFGR7_Register;
      --  GPIO port E hardware configuration register 6
      GPIOE_HWCFGR6   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port E hardware configuration register 5
      GPIOE_HWCFGR5   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port E hardware configuration register 4
      GPIOE_HWCFGR4   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port E hardware configuration register 3
      GPIOE_HWCFGR3   : aliased GPIOE_HWCFGR3_Register;
      --  GPIO port E hardware configuration register 2
      GPIOE_HWCFGR2   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port E hardware configuration register 1
      GPIOE_HWCFGR1   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port E hardware configuration register 0
      GPIOE_HWCFGR0   : aliased GPIOE_HWCFGR0_Register;
      --  GPIO port E version register
      GPIOE_VERR      : aliased GPIOE_VERR_Register;
      --  GPIO port E identification register
      GPIOE_IPIDR     : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port E size identification register
      GPIOE_SIDR      : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for GPIOE_S_Peripheral use record
      GPIOE_MODER     at 16#0# range 0 .. 31;
      GPIOE_OTYPER    at 16#4# range 0 .. 31;
      GPIOE_OSPEEDR   at 16#8# range 0 .. 31;
      GPIOE_PUPDR     at 16#C# range 0 .. 31;
      GPIOE_IDR       at 16#10# range 0 .. 31;
      GPIOE_ODR       at 16#14# range 0 .. 31;
      GPIOE_BSRR      at 16#18# range 0 .. 31;
      GPIOE_LCKR      at 16#1C# range 0 .. 31;
      GPIOE_AFRL      at 16#20# range 0 .. 31;
      GPIOE_AFRH      at 16#24# range 0 .. 31;
      GPIOE_BRR       at 16#28# range 0 .. 31;
      GPIOE_SECCFGR   at 16#30# range 0 .. 31;
      GPIOE_PRIVCFGR  at 16#34# range 0 .. 31;
      GPIOE_RCFGLOCKR at 16#38# range 0 .. 31;
      GPIOE_DELAYRL   at 16#40# range 0 .. 31;
      GPIOE_DELAYRH   at 16#44# range 0 .. 31;
      GPIOE_PIOCFGRL  at 16#48# range 0 .. 31;
      GPIOE_PIOCFGRH  at 16#4C# range 0 .. 31;
      GPIOE_HWCFGR10  at 16#3C8# range 0 .. 31;
      GPIOE_HWCFGR9   at 16#3CC# range 0 .. 31;
      GPIOE_HWCFGR8   at 16#3D0# range 0 .. 31;
      GPIOE_HWCFGR7   at 16#3D4# range 0 .. 31;
      GPIOE_HWCFGR6   at 16#3D8# range 0 .. 31;
      GPIOE_HWCFGR5   at 16#3DC# range 0 .. 31;
      GPIOE_HWCFGR4   at 16#3E0# range 0 .. 31;
      GPIOE_HWCFGR3   at 16#3E4# range 0 .. 31;
      GPIOE_HWCFGR2   at 16#3E8# range 0 .. 31;
      GPIOE_HWCFGR1   at 16#3EC# range 0 .. 31;
      GPIOE_HWCFGR0   at 16#3F0# range 0 .. 31;
      GPIOE_VERR      at 16#3F4# range 0 .. 31;
      GPIOE_IPIDR     at 16#3F8# range 0 .. 31;
      GPIOE_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  General-purpose I/Os
   GPIOE_S_Periph : aliased GPIOE_S_Peripheral
     with Import, Address => GPIOE_S_Base;

end Interfaces.STM32.GPIOE_S;
