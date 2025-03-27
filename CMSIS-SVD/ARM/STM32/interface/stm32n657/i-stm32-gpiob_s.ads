--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

--  General-purpose I/Os
package Interfaces.STM32.GPIOB_S is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  GPIOB_MODER_MODE array element
   subtype GPIOB_MODER_MODE_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOB_MODER_MODE array
   type GPIOB_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOB_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port B mode register
   type GPIOB_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOB_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOB_OTYPER_OT array
   type GPIOB_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOB_OTYPER_OT
   type GPIOB_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOB_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOB_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port B output type register
   type GPIOB_OTYPER_Register is record
      --  Port x configuration I/O pin y
      OT             : GPIOB_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOB_OSPEEDR_OSPEED array element
   subtype GPIOB_OSPEEDR_OSPEED_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOB_OSPEEDR_OSPEED array
   type GPIOB_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOB_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port B output speed register
   type GPIOB_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOB_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOB_PUPDR_PUPD array element
   subtype GPIOB_PUPDR_PUPD_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOB_PUPDR_PUPD array
   type GPIOB_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOB_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port B pull-up/pull-down register
   type GPIOB_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOB_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOB_IDR_ID array
   type GPIOB_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOB_IDR_ID
   type GPIOB_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOB_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOB_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port B input data register
   type GPIOB_IDR_Register is record
      --  Read-only. Port x input data I/O pin y
      ID             : GPIOB_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOB_ODR_OD array
   type GPIOB_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOB_ODR_OD
   type GPIOB_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOB_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOB_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port B output data register
   type GPIOB_ODR_Register is record
      --  Port x output data I/O pin y
      OD             : GPIOB_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOB_BSRR_BS array
   type GPIOB_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOB_BSRR_BS
   type GPIOB_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOB_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOB_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOB_BSRR_BR array
   type GPIOB_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOB_BSRR_BR
   type GPIOB_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOB_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOB_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port B bit set/reset register
   type GPIOB_BSRR_Register is record
      --  Write-only. Port x set I/O pin y
      BS : GPIOB_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y
      BR : GPIOB_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOB_LCKR_LCK array
   type GPIOB_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOB_LCKR_LCK
   type GPIOB_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOB_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOB_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port B configuration lock register
   type GPIOB_LCKR_Register is record
      --  Port x lock I/O pin y
      LCK            : GPIOB_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOB_AFRL_AFSEL array element
   subtype GPIOB_AFRL_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOB_AFRL_AFSEL array
   type GPIOB_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOB_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port B alternate function low register
   type GPIOB_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOB_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOB_AFRH_AFSEL array element
   subtype GPIOB_AFRH_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOB_AFRH_AFSEL array
   type GPIOB_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOB_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port B alternate function high register
   type GPIOB_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOB_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOB_BRR_BR array
   type GPIOB_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOB_BRR_BR
   type GPIOB_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOB_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOB_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port B bit reset register
   type GPIOB_BRR_Register is record
      --  Write-only. Port x reset IO pin y
      BR             : GPIOB_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOB_SECCFGR_SEC array
   type GPIOB_SECCFGR_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOB_SECCFGR_SEC
   type GPIOB_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  SEC as an array
            Arr : GPIOB_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOB_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port B secure configuration register
   type GPIOB_SECCFGR_Register is record
      --  I/O pin y of Port x security configuration
      SEC            : GPIOB_SECCFGR_SEC_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOB_PRIVCFGR_PRIV array
   type GPIOB_PRIVCFGR_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOB_PRIVCFGR_PRIV
   type GPIOB_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PRIV as an array
            Arr : GPIOB_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOB_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port B privileged configuration register
   type GPIOB_PRIVCFGR_Register is record
      --  I/O pin y of Port x privilege configuration
      PRIV           : GPIOB_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOB_RCFGLOCKR_RLOCK array
   type GPIOB_RCFGLOCKR_RLOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOB_RCFGLOCKR_RLOCK
   type GPIOB_RCFGLOCKR_RLOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  RLOCK as an array
            Arr : GPIOB_RCFGLOCKR_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOB_RCFGLOCKR_RLOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port B resource configuration lock register
   type GPIOB_RCFGLOCKR_Register is record
      --  I/O pin y of port x resource lock
      RLOCK          : GPIOB_RCFGLOCKR_RLOCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_RCFGLOCKR_Register use record
      RLOCK          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOB_DELAYRL_DELAY array element
   subtype GPIOB_DELAYRL_DELAY_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOB_DELAYRL_DELAY array
   type GPIOB_DELAYRL_DELAY_Field_Array is array (0 .. 7)
     of GPIOB_DELAYRL_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port B delay low register
   type GPIOB_DELAYRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOB_DELAYRL_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_DELAYRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOB_DELAYRH_DELAY array element
   subtype GPIOB_DELAYRH_DELAY_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOB_DELAYRH_DELAY array
   type GPIOB_DELAYRH_DELAY_Field_Array is array (8 .. 15)
     of GPIOB_DELAYRH_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port B delay high register
   type GPIOB_DELAYRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOB_DELAYRH_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_DELAYRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOB_PIOCFGRL_PIOCFG array element
   subtype GPIOB_PIOCFGRL_PIOCFG_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOB_PIOCFGRL_PIOCFG array
   type GPIOB_PIOCFGRL_PIOCFG_Field_Array is array (0 .. 7)
     of GPIOB_PIOCFGRL_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port B PIO control low register
   type GPIOB_PIOCFGRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOB_PIOCFGRL_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_PIOCFGRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOB_PIOCFGRH_PIOCFG array element
   subtype GPIOB_PIOCFGRH_PIOCFG_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOB_PIOCFGRH_PIOCFG array
   type GPIOB_PIOCFGRH_PIOCFG_Field_Array is array (8 .. 15)
     of GPIOB_PIOCFGRH_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port B PIO control high register
   type GPIOB_PIOCFGRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOB_PIOCFGRH_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_PIOCFGRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOB_HWCFGR10_AHB_IOP_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOB_HWCFGR10_AFSIZE_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOB_HWCFGR10_SPEED_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOB_HWCFGR10_LOCK_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOB_HWCFGR10_SEC_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOB_HWCFGR10_OR_CFG_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port B hardware configuration register 10
   type GPIOB_HWCFGR10_Register is record
      --  Read-only. Bus interface selection
      AHB_IOP        : GPIOB_HWCFGR10_AHB_IOP_Field;
      --  Read-only. Number of AF available for each I/O (accepted value: 1 to
      --  4)
      AFSIZE_CFG     : GPIOB_HWCFGR10_AFSIZE_CFG_Field;
      --  Read-only. Number of speed lines for each I/O
      SPEED_CFG      : GPIOB_HWCFGR10_SPEED_CFG_Field;
      --  Read-only. Lock mechanism activation
      LOCK_CFG       : GPIOB_HWCFGR10_LOCK_CFG_Field;
      --  Read-only. Security activation
      SEC_CFG        : GPIOB_HWCFGR10_SEC_CFG_Field;
      --  Read-only. Option register configuration
      OR_CFG         : GPIOB_HWCFGR10_OR_CFG_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_HWCFGR10_Register use record
      AHB_IOP        at 0 range 0 .. 3;
      AFSIZE_CFG     at 0 range 4 .. 7;
      SPEED_CFG      at 0 range 8 .. 11;
      LOCK_CFG       at 0 range 12 .. 15;
      SEC_CFG        at 0 range 16 .. 19;
      OR_CFG         at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPIOB_HWCFGR9_EN_IO_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port B hardware configuration register 9
   type GPIOB_HWCFGR9_Register is record
      --  Read-only. Presence granularity, each bit indicate the I/O presence
      EN_IO          : GPIOB_HWCFGR9_EN_IO_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_HWCFGR9_Register use record
      EN_IO          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOB_HWCFGR8_FAST_AF_IO array element
   subtype GPIOB_HWCFGR8_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOB_HWCFGR8_FAST_AF_IO array
   type GPIOB_HWCFGR8_FAST_AF_IO_Field_Array is array (8 .. 15)
     of GPIOB_HWCFGR8_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port B hardware configuration register 8
   type GPIOB_HWCFGR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOB_HWCFGR8_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_HWCFGR8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOB_HWCFGR7_FAST_AF_IO array element
   subtype GPIOB_HWCFGR7_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOB_HWCFGR7_FAST_AF_IO array
   type GPIOB_HWCFGR7_FAST_AF_IO_Field_Array is array (0 .. 7)
     of GPIOB_HWCFGR7_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port B hardware configuration register 7
   type GPIOB_HWCFGR7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOB_HWCFGR7_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_HWCFGR7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOB_HWCFGR3_ODR_RES_Field is Interfaces.Bit_Types.UInt16;
   subtype GPIOB_HWCFGR3_OTYPER_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port B hardware configuration register 3
   type GPIOB_HWCFGR3_Register is record
      --  Read-only. Output data register reset value
      ODR_RES    : GPIOB_HWCFGR3_ODR_RES_Field;
      --  Read-only. Output type register reset value
      OTYPER_RES : GPIOB_HWCFGR3_OTYPER_RES_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_HWCFGR3_Register use record
      ODR_RES    at 0 range 0 .. 15;
      OTYPER_RES at 0 range 16 .. 31;
   end record;

   subtype GPIOB_HWCFGR0_OR_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port B hardware configuration register 0
   type GPIOB_HWCFGR0_Register is record
      --  Read-only. Option register reset value
      OR_RES         : GPIOB_HWCFGR0_OR_RES_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_HWCFGR0_Register use record
      OR_RES         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPIOB_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOB_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port B version register
   type GPIOB_VERR_Register is record
      --  Read-only. GPIO minor revision
      MINREV        : GPIOB_VERR_MINREV_Field;
      --  Read-only. GPIO major revision
      MAJREV        : GPIOB_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-purpose I/Os
   type GPIOB_S_Peripheral is record
      --  GPIO port B mode register
      GPIOB_MODER     : aliased GPIOB_MODER_Register;
      --  GPIO port B output type register
      GPIOB_OTYPER    : aliased GPIOB_OTYPER_Register;
      --  GPIO port B output speed register
      GPIOB_OSPEEDR   : aliased GPIOB_OSPEEDR_Register;
      --  GPIO port B pull-up/pull-down register
      GPIOB_PUPDR     : aliased GPIOB_PUPDR_Register;
      --  GPIO port B input data register
      GPIOB_IDR       : aliased GPIOB_IDR_Register;
      --  GPIO port B output data register
      GPIOB_ODR       : aliased GPIOB_ODR_Register;
      --  GPIO port B bit set/reset register
      GPIOB_BSRR      : aliased GPIOB_BSRR_Register;
      --  GPIO port B configuration lock register
      GPIOB_LCKR      : aliased GPIOB_LCKR_Register;
      --  GPIO port B alternate function low register
      GPIOB_AFRL      : aliased GPIOB_AFRL_Register;
      --  GPIO port B alternate function high register
      GPIOB_AFRH      : aliased GPIOB_AFRH_Register;
      --  GPIO port B bit reset register
      GPIOB_BRR       : aliased GPIOB_BRR_Register;
      --  GPIO port B secure configuration register
      GPIOB_SECCFGR   : aliased GPIOB_SECCFGR_Register;
      --  GPIO port B privileged configuration register
      GPIOB_PRIVCFGR  : aliased GPIOB_PRIVCFGR_Register;
      --  GPIO port B resource configuration lock register
      GPIOB_RCFGLOCKR : aliased GPIOB_RCFGLOCKR_Register;
      --  GPIO port B delay low register
      GPIOB_DELAYRL   : aliased GPIOB_DELAYRL_Register;
      --  GPIO port B delay high register
      GPIOB_DELAYRH   : aliased GPIOB_DELAYRH_Register;
      --  GPIO port B PIO control low register
      GPIOB_PIOCFGRL  : aliased GPIOB_PIOCFGRL_Register;
      --  GPIO port B PIO control high register
      GPIOB_PIOCFGRH  : aliased GPIOB_PIOCFGRH_Register;
      --  GPIO port B hardware configuration register 10
      GPIOB_HWCFGR10  : aliased GPIOB_HWCFGR10_Register;
      --  GPIO port B hardware configuration register 9
      GPIOB_HWCFGR9   : aliased GPIOB_HWCFGR9_Register;
      --  GPIO port B hardware configuration register 8
      GPIOB_HWCFGR8   : aliased GPIOB_HWCFGR8_Register;
      --  GPIO port B hardware configuration register 7
      GPIOB_HWCFGR7   : aliased GPIOB_HWCFGR7_Register;
      --  GPIO port B hardware configuration register 6
      GPIOB_HWCFGR6   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port B hardware configuration register 5
      GPIOB_HWCFGR5   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port B hardware configuration register 4
      GPIOB_HWCFGR4   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port B hardware configuration register 3
      GPIOB_HWCFGR3   : aliased GPIOB_HWCFGR3_Register;
      --  GPIO port B hardware configuration register 2
      GPIOB_HWCFGR2   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port B hardware configuration register 1
      GPIOB_HWCFGR1   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port B hardware configuration register 0
      GPIOB_HWCFGR0   : aliased GPIOB_HWCFGR0_Register;
      --  GPIO port B version register
      GPIOB_VERR      : aliased GPIOB_VERR_Register;
      --  GPIO port B identification register
      GPIOB_IPIDR     : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port B size identification register
      GPIOB_SIDR      : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for GPIOB_S_Peripheral use record
      GPIOB_MODER     at 16#0# range 0 .. 31;
      GPIOB_OTYPER    at 16#4# range 0 .. 31;
      GPIOB_OSPEEDR   at 16#8# range 0 .. 31;
      GPIOB_PUPDR     at 16#C# range 0 .. 31;
      GPIOB_IDR       at 16#10# range 0 .. 31;
      GPIOB_ODR       at 16#14# range 0 .. 31;
      GPIOB_BSRR      at 16#18# range 0 .. 31;
      GPIOB_LCKR      at 16#1C# range 0 .. 31;
      GPIOB_AFRL      at 16#20# range 0 .. 31;
      GPIOB_AFRH      at 16#24# range 0 .. 31;
      GPIOB_BRR       at 16#28# range 0 .. 31;
      GPIOB_SECCFGR   at 16#30# range 0 .. 31;
      GPIOB_PRIVCFGR  at 16#34# range 0 .. 31;
      GPIOB_RCFGLOCKR at 16#38# range 0 .. 31;
      GPIOB_DELAYRL   at 16#40# range 0 .. 31;
      GPIOB_DELAYRH   at 16#44# range 0 .. 31;
      GPIOB_PIOCFGRL  at 16#48# range 0 .. 31;
      GPIOB_PIOCFGRH  at 16#4C# range 0 .. 31;
      GPIOB_HWCFGR10  at 16#3C8# range 0 .. 31;
      GPIOB_HWCFGR9   at 16#3CC# range 0 .. 31;
      GPIOB_HWCFGR8   at 16#3D0# range 0 .. 31;
      GPIOB_HWCFGR7   at 16#3D4# range 0 .. 31;
      GPIOB_HWCFGR6   at 16#3D8# range 0 .. 31;
      GPIOB_HWCFGR5   at 16#3DC# range 0 .. 31;
      GPIOB_HWCFGR4   at 16#3E0# range 0 .. 31;
      GPIOB_HWCFGR3   at 16#3E4# range 0 .. 31;
      GPIOB_HWCFGR2   at 16#3E8# range 0 .. 31;
      GPIOB_HWCFGR1   at 16#3EC# range 0 .. 31;
      GPIOB_HWCFGR0   at 16#3F0# range 0 .. 31;
      GPIOB_VERR      at 16#3F4# range 0 .. 31;
      GPIOB_IPIDR     at 16#3F8# range 0 .. 31;
      GPIOB_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  General-purpose I/Os
   GPIOB_S_Periph : aliased GPIOB_S_Peripheral
     with Import, Address => GPIOB_S_Base;

end Interfaces.STM32.GPIOB_S;
