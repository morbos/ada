--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

--  General-purpose I/Os
package Interfaces.STM32.GPIOH_S is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  GPIOH_MODER_MODE array element
   subtype GPIOH_MODER_MODE_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOH_MODER_MODE array
   type GPIOH_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOH_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port H mode register
   type GPIOH_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOH_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOH_OTYPER_OT array
   type GPIOH_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOH_OTYPER_OT
   type GPIOH_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOH_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOH_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port H output type register
   type GPIOH_OTYPER_Register is record
      --  Port x configuration I/O pin y
      OT             : GPIOH_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOH_OSPEEDR_OSPEED array element
   subtype GPIOH_OSPEEDR_OSPEED_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOH_OSPEEDR_OSPEED array
   type GPIOH_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOH_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port H output speed register
   type GPIOH_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOH_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOH_PUPDR_PUPD array element
   subtype GPIOH_PUPDR_PUPD_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOH_PUPDR_PUPD array
   type GPIOH_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOH_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port H pull-up/pull-down register
   type GPIOH_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOH_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOH_IDR_ID array
   type GPIOH_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOH_IDR_ID
   type GPIOH_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOH_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOH_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port H input data register
   type GPIOH_IDR_Register is record
      --  Read-only. Port x input data I/O pin y
      ID             : GPIOH_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOH_ODR_OD array
   type GPIOH_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOH_ODR_OD
   type GPIOH_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOH_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOH_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port H output data register
   type GPIOH_ODR_Register is record
      --  Port x output data I/O pin y
      OD             : GPIOH_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOH_BSRR_BS array
   type GPIOH_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOH_BSRR_BS
   type GPIOH_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOH_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOH_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOH_BSRR_BR array
   type GPIOH_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOH_BSRR_BR
   type GPIOH_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOH_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOH_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port H bit set/reset register
   type GPIOH_BSRR_Register is record
      --  Write-only. Port x set I/O pin y
      BS : GPIOH_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y
      BR : GPIOH_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOH_LCKR_LCK array
   type GPIOH_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOH_LCKR_LCK
   type GPIOH_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOH_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOH_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port H configuration lock register
   type GPIOH_LCKR_Register is record
      --  Port x lock I/O pin y
      LCK            : GPIOH_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOH_AFRL_AFSEL array element
   subtype GPIOH_AFRL_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOH_AFRL_AFSEL array
   type GPIOH_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOH_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port H alternate function low register
   type GPIOH_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOH_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOH_AFRH_AFSEL array element
   subtype GPIOH_AFRH_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOH_AFRH_AFSEL array
   type GPIOH_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOH_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port H alternate function high register
   type GPIOH_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOH_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOH_BRR_BR array
   type GPIOH_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOH_BRR_BR
   type GPIOH_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOH_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOH_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port H bit reset register
   type GPIOH_BRR_Register is record
      --  Write-only. Port x reset IO pin y
      BR             : GPIOH_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOH_SECCFGR_SEC array
   type GPIOH_SECCFGR_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOH_SECCFGR_SEC
   type GPIOH_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  SEC as an array
            Arr : GPIOH_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOH_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port H secure configuration register
   type GPIOH_SECCFGR_Register is record
      --  I/O pin y of Port x security configuration
      SEC            : GPIOH_SECCFGR_SEC_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOH_PRIVCFGR_PRIV array
   type GPIOH_PRIVCFGR_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOH_PRIVCFGR_PRIV
   type GPIOH_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PRIV as an array
            Arr : GPIOH_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOH_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port H privileged configuration register
   type GPIOH_PRIVCFGR_Register is record
      --  I/O pin y of Port x privilege configuration
      PRIV           : GPIOH_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOH_RCFGLOCKR_RLOCK array
   type GPIOH_RCFGLOCKR_RLOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOH_RCFGLOCKR_RLOCK
   type GPIOH_RCFGLOCKR_RLOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  RLOCK as an array
            Arr : GPIOH_RCFGLOCKR_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOH_RCFGLOCKR_RLOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port H resource configuration lock register
   type GPIOH_RCFGLOCKR_Register is record
      --  I/O pin y of port x resource lock
      RLOCK          : GPIOH_RCFGLOCKR_RLOCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_RCFGLOCKR_Register use record
      RLOCK          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOH_DELAYRL_DELAY array element
   subtype GPIOH_DELAYRL_DELAY_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOH_DELAYRL_DELAY array
   type GPIOH_DELAYRL_DELAY_Field_Array is array (0 .. 7)
     of GPIOH_DELAYRL_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port H delay low register
   type GPIOH_DELAYRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOH_DELAYRL_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_DELAYRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOH_DELAYRH_DELAY array element
   subtype GPIOH_DELAYRH_DELAY_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOH_DELAYRH_DELAY array
   type GPIOH_DELAYRH_DELAY_Field_Array is array (8 .. 15)
     of GPIOH_DELAYRH_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port H delay high register
   type GPIOH_DELAYRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOH_DELAYRH_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_DELAYRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOH_PIOCFGRL_PIOCFG array element
   subtype GPIOH_PIOCFGRL_PIOCFG_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOH_PIOCFGRL_PIOCFG array
   type GPIOH_PIOCFGRL_PIOCFG_Field_Array is array (0 .. 7)
     of GPIOH_PIOCFGRL_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port H PIO control low register
   type GPIOH_PIOCFGRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOH_PIOCFGRL_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_PIOCFGRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOH_PIOCFGRH_PIOCFG array element
   subtype GPIOH_PIOCFGRH_PIOCFG_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOH_PIOCFGRH_PIOCFG array
   type GPIOH_PIOCFGRH_PIOCFG_Field_Array is array (8 .. 15)
     of GPIOH_PIOCFGRH_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port H PIO control high register
   type GPIOH_PIOCFGRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOH_PIOCFGRH_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_PIOCFGRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOH_HWCFGR10_AHB_IOP_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOH_HWCFGR10_AFSIZE_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOH_HWCFGR10_SPEED_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOH_HWCFGR10_LOCK_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOH_HWCFGR10_SEC_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOH_HWCFGR10_OR_CFG_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port H hardware configuration register 10
   type GPIOH_HWCFGR10_Register is record
      --  Read-only. Bus interface selection
      AHB_IOP        : GPIOH_HWCFGR10_AHB_IOP_Field;
      --  Read-only. Number of AF available for each I/O (accepted value: 1 to
      --  4)
      AFSIZE_CFG     : GPIOH_HWCFGR10_AFSIZE_CFG_Field;
      --  Read-only. Number of speed lines for each I/O
      SPEED_CFG      : GPIOH_HWCFGR10_SPEED_CFG_Field;
      --  Read-only. Lock mechanism activation
      LOCK_CFG       : GPIOH_HWCFGR10_LOCK_CFG_Field;
      --  Read-only. Security activation
      SEC_CFG        : GPIOH_HWCFGR10_SEC_CFG_Field;
      --  Read-only. Option register configuration
      OR_CFG         : GPIOH_HWCFGR10_OR_CFG_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_HWCFGR10_Register use record
      AHB_IOP        at 0 range 0 .. 3;
      AFSIZE_CFG     at 0 range 4 .. 7;
      SPEED_CFG      at 0 range 8 .. 11;
      LOCK_CFG       at 0 range 12 .. 15;
      SEC_CFG        at 0 range 16 .. 19;
      OR_CFG         at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPIOH_HWCFGR9_EN_IO_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port H hardware configuration register 9
   type GPIOH_HWCFGR9_Register is record
      --  Read-only. Presence granularity, each bit indicate the I/O presence
      EN_IO          : GPIOH_HWCFGR9_EN_IO_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_HWCFGR9_Register use record
      EN_IO          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOH_HWCFGR8_FAST_AF_IO array element
   subtype GPIOH_HWCFGR8_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOH_HWCFGR8_FAST_AF_IO array
   type GPIOH_HWCFGR8_FAST_AF_IO_Field_Array is array (8 .. 15)
     of GPIOH_HWCFGR8_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port H hardware configuration register 8
   type GPIOH_HWCFGR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOH_HWCFGR8_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_HWCFGR8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOH_HWCFGR7_FAST_AF_IO array element
   subtype GPIOH_HWCFGR7_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOH_HWCFGR7_FAST_AF_IO array
   type GPIOH_HWCFGR7_FAST_AF_IO_Field_Array is array (0 .. 7)
     of GPIOH_HWCFGR7_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port H hardware configuration register 7
   type GPIOH_HWCFGR7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOH_HWCFGR7_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_HWCFGR7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOH_HWCFGR3_ODR_RES_Field is Interfaces.Bit_Types.UInt16;
   subtype GPIOH_HWCFGR3_OTYPER_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port H hardware configuration register 3
   type GPIOH_HWCFGR3_Register is record
      --  Read-only. Output data register reset value
      ODR_RES    : GPIOH_HWCFGR3_ODR_RES_Field;
      --  Read-only. Output type register reset value
      OTYPER_RES : GPIOH_HWCFGR3_OTYPER_RES_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_HWCFGR3_Register use record
      ODR_RES    at 0 range 0 .. 15;
      OTYPER_RES at 0 range 16 .. 31;
   end record;

   subtype GPIOH_HWCFGR0_OR_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port H hardware configuration register 0
   type GPIOH_HWCFGR0_Register is record
      --  Read-only. Option register reset value
      OR_RES         : GPIOH_HWCFGR0_OR_RES_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_HWCFGR0_Register use record
      OR_RES         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPIOH_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOH_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port H version register
   type GPIOH_VERR_Register is record
      --  Read-only. GPIO minor revision
      MINREV        : GPIOH_VERR_MINREV_Field;
      --  Read-only. GPIO major revision
      MAJREV        : GPIOH_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOH_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-purpose I/Os
   type GPIOH_S_Peripheral is record
      --  GPIO port H mode register
      GPIOH_MODER     : aliased GPIOH_MODER_Register;
      --  GPIO port H output type register
      GPIOH_OTYPER    : aliased GPIOH_OTYPER_Register;
      --  GPIO port H output speed register
      GPIOH_OSPEEDR   : aliased GPIOH_OSPEEDR_Register;
      --  GPIO port H pull-up/pull-down register
      GPIOH_PUPDR     : aliased GPIOH_PUPDR_Register;
      --  GPIO port H input data register
      GPIOH_IDR       : aliased GPIOH_IDR_Register;
      --  GPIO port H output data register
      GPIOH_ODR       : aliased GPIOH_ODR_Register;
      --  GPIO port H bit set/reset register
      GPIOH_BSRR      : aliased GPIOH_BSRR_Register;
      --  GPIO port H configuration lock register
      GPIOH_LCKR      : aliased GPIOH_LCKR_Register;
      --  GPIO port H alternate function low register
      GPIOH_AFRL      : aliased GPIOH_AFRL_Register;
      --  GPIO port H alternate function high register
      GPIOH_AFRH      : aliased GPIOH_AFRH_Register;
      --  GPIO port H bit reset register
      GPIOH_BRR       : aliased GPIOH_BRR_Register;
      --  GPIO port H secure configuration register
      GPIOH_SECCFGR   : aliased GPIOH_SECCFGR_Register;
      --  GPIO port H privileged configuration register
      GPIOH_PRIVCFGR  : aliased GPIOH_PRIVCFGR_Register;
      --  GPIO port H resource configuration lock register
      GPIOH_RCFGLOCKR : aliased GPIOH_RCFGLOCKR_Register;
      --  GPIO port H delay low register
      GPIOH_DELAYRL   : aliased GPIOH_DELAYRL_Register;
      --  GPIO port H delay high register
      GPIOH_DELAYRH   : aliased GPIOH_DELAYRH_Register;
      --  GPIO port H PIO control low register
      GPIOH_PIOCFGRL  : aliased GPIOH_PIOCFGRL_Register;
      --  GPIO port H PIO control high register
      GPIOH_PIOCFGRH  : aliased GPIOH_PIOCFGRH_Register;
      --  GPIO port H hardware configuration register 10
      GPIOH_HWCFGR10  : aliased GPIOH_HWCFGR10_Register;
      --  GPIO port H hardware configuration register 9
      GPIOH_HWCFGR9   : aliased GPIOH_HWCFGR9_Register;
      --  GPIO port H hardware configuration register 8
      GPIOH_HWCFGR8   : aliased GPIOH_HWCFGR8_Register;
      --  GPIO port H hardware configuration register 7
      GPIOH_HWCFGR7   : aliased GPIOH_HWCFGR7_Register;
      --  GPIO port H hardware configuration register 6
      GPIOH_HWCFGR6   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port H hardware configuration register 5
      GPIOH_HWCFGR5   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port H hardware configuration register 4
      GPIOH_HWCFGR4   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port H hardware configuration register 3
      GPIOH_HWCFGR3   : aliased GPIOH_HWCFGR3_Register;
      --  GPIO port H hardware configuration register 2
      GPIOH_HWCFGR2   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port H hardware configuration register 1
      GPIOH_HWCFGR1   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port H hardware configuration register 0
      GPIOH_HWCFGR0   : aliased GPIOH_HWCFGR0_Register;
      --  GPIO port H version register
      GPIOH_VERR      : aliased GPIOH_VERR_Register;
      --  GPIO port H identification register
      GPIOH_IPIDR     : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port H size identification register
      GPIOH_SIDR      : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for GPIOH_S_Peripheral use record
      GPIOH_MODER     at 16#0# range 0 .. 31;
      GPIOH_OTYPER    at 16#4# range 0 .. 31;
      GPIOH_OSPEEDR   at 16#8# range 0 .. 31;
      GPIOH_PUPDR     at 16#C# range 0 .. 31;
      GPIOH_IDR       at 16#10# range 0 .. 31;
      GPIOH_ODR       at 16#14# range 0 .. 31;
      GPIOH_BSRR      at 16#18# range 0 .. 31;
      GPIOH_LCKR      at 16#1C# range 0 .. 31;
      GPIOH_AFRL      at 16#20# range 0 .. 31;
      GPIOH_AFRH      at 16#24# range 0 .. 31;
      GPIOH_BRR       at 16#28# range 0 .. 31;
      GPIOH_SECCFGR   at 16#30# range 0 .. 31;
      GPIOH_PRIVCFGR  at 16#34# range 0 .. 31;
      GPIOH_RCFGLOCKR at 16#38# range 0 .. 31;
      GPIOH_DELAYRL   at 16#40# range 0 .. 31;
      GPIOH_DELAYRH   at 16#44# range 0 .. 31;
      GPIOH_PIOCFGRL  at 16#48# range 0 .. 31;
      GPIOH_PIOCFGRH  at 16#4C# range 0 .. 31;
      GPIOH_HWCFGR10  at 16#3C8# range 0 .. 31;
      GPIOH_HWCFGR9   at 16#3CC# range 0 .. 31;
      GPIOH_HWCFGR8   at 16#3D0# range 0 .. 31;
      GPIOH_HWCFGR7   at 16#3D4# range 0 .. 31;
      GPIOH_HWCFGR6   at 16#3D8# range 0 .. 31;
      GPIOH_HWCFGR5   at 16#3DC# range 0 .. 31;
      GPIOH_HWCFGR4   at 16#3E0# range 0 .. 31;
      GPIOH_HWCFGR3   at 16#3E4# range 0 .. 31;
      GPIOH_HWCFGR2   at 16#3E8# range 0 .. 31;
      GPIOH_HWCFGR1   at 16#3EC# range 0 .. 31;
      GPIOH_HWCFGR0   at 16#3F0# range 0 .. 31;
      GPIOH_VERR      at 16#3F4# range 0 .. 31;
      GPIOH_IPIDR     at 16#3F8# range 0 .. 31;
      GPIOH_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  General-purpose I/Os
   GPIOH_S_Periph : aliased GPIOH_S_Peripheral
     with Import, Address => GPIOH_S_Base;

end Interfaces.STM32.GPIOH_S;
