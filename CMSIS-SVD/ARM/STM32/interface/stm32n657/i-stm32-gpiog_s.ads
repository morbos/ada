--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

--  General-purpose I/Os
package Interfaces.STM32.GPIOG_S is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  GPIOG_MODER_MODE array element
   subtype GPIOG_MODER_MODE_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOG_MODER_MODE array
   type GPIOG_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOG_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port G mode register
   type GPIOG_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOG_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOG_OTYPER_OT array
   type GPIOG_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOG_OTYPER_OT
   type GPIOG_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOG_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOG_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port G output type register
   type GPIOG_OTYPER_Register is record
      --  Port x configuration I/O pin y
      OT             : GPIOG_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOG_OSPEEDR_OSPEED array element
   subtype GPIOG_OSPEEDR_OSPEED_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOG_OSPEEDR_OSPEED array
   type GPIOG_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOG_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port G output speed register
   type GPIOG_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOG_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOG_PUPDR_PUPD array element
   subtype GPIOG_PUPDR_PUPD_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOG_PUPDR_PUPD array
   type GPIOG_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOG_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port G pull-up/pull-down register
   type GPIOG_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOG_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOG_IDR_ID array
   type GPIOG_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOG_IDR_ID
   type GPIOG_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOG_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOG_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port G input data register
   type GPIOG_IDR_Register is record
      --  Read-only. Port x input data I/O pin y
      ID             : GPIOG_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOG_ODR_OD array
   type GPIOG_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOG_ODR_OD
   type GPIOG_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOG_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOG_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port G output data register
   type GPIOG_ODR_Register is record
      --  Port x output data I/O pin y
      OD             : GPIOG_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOG_BSRR_BS array
   type GPIOG_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOG_BSRR_BS
   type GPIOG_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOG_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOG_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOG_BSRR_BR array
   type GPIOG_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOG_BSRR_BR
   type GPIOG_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOG_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOG_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port G bit set/reset register
   type GPIOG_BSRR_Register is record
      --  Write-only. Port x set I/O pin y
      BS : GPIOG_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y
      BR : GPIOG_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOG_LCKR_LCK array
   type GPIOG_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOG_LCKR_LCK
   type GPIOG_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOG_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOG_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port G configuration lock register
   type GPIOG_LCKR_Register is record
      --  Port x lock I/O pin y
      LCK            : GPIOG_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOG_AFRL_AFSEL array element
   subtype GPIOG_AFRL_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOG_AFRL_AFSEL array
   type GPIOG_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOG_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port G alternate function low register
   type GPIOG_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOG_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOG_AFRH_AFSEL array element
   subtype GPIOG_AFRH_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOG_AFRH_AFSEL array
   type GPIOG_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOG_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port G alternate function high register
   type GPIOG_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOG_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOG_BRR_BR array
   type GPIOG_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOG_BRR_BR
   type GPIOG_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOG_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOG_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port G bit reset register
   type GPIOG_BRR_Register is record
      --  Write-only. Port x reset IO pin y
      BR             : GPIOG_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOG_SECCFGR_SEC array
   type GPIOG_SECCFGR_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOG_SECCFGR_SEC
   type GPIOG_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  SEC as an array
            Arr : GPIOG_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOG_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port G secure configuration register
   type GPIOG_SECCFGR_Register is record
      --  I/O pin y of Port x security configuration
      SEC            : GPIOG_SECCFGR_SEC_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOG_PRIVCFGR_PRIV array
   type GPIOG_PRIVCFGR_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOG_PRIVCFGR_PRIV
   type GPIOG_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PRIV as an array
            Arr : GPIOG_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOG_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port G privileged configuration register
   type GPIOG_PRIVCFGR_Register is record
      --  I/O pin y of Port x privilege configuration
      PRIV           : GPIOG_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOG_RCFGLOCKR_RLOCK array
   type GPIOG_RCFGLOCKR_RLOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOG_RCFGLOCKR_RLOCK
   type GPIOG_RCFGLOCKR_RLOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  RLOCK as an array
            Arr : GPIOG_RCFGLOCKR_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOG_RCFGLOCKR_RLOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port G resource configuration lock register
   type GPIOG_RCFGLOCKR_Register is record
      --  I/O pin y of port x resource lock
      RLOCK          : GPIOG_RCFGLOCKR_RLOCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_RCFGLOCKR_Register use record
      RLOCK          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOG_DELAYRL_DELAY array element
   subtype GPIOG_DELAYRL_DELAY_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOG_DELAYRL_DELAY array
   type GPIOG_DELAYRL_DELAY_Field_Array is array (0 .. 7)
     of GPIOG_DELAYRL_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port G delay low register
   type GPIOG_DELAYRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOG_DELAYRL_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_DELAYRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOG_DELAYRH_DELAY array element
   subtype GPIOG_DELAYRH_DELAY_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOG_DELAYRH_DELAY array
   type GPIOG_DELAYRH_DELAY_Field_Array is array (8 .. 15)
     of GPIOG_DELAYRH_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port G delay high register
   type GPIOG_DELAYRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOG_DELAYRH_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_DELAYRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOG_PIOCFGRL_PIOCFG array element
   subtype GPIOG_PIOCFGRL_PIOCFG_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOG_PIOCFGRL_PIOCFG array
   type GPIOG_PIOCFGRL_PIOCFG_Field_Array is array (0 .. 7)
     of GPIOG_PIOCFGRL_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port G PIO control low register
   type GPIOG_PIOCFGRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOG_PIOCFGRL_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_PIOCFGRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOG_PIOCFGRH_PIOCFG array element
   subtype GPIOG_PIOCFGRH_PIOCFG_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOG_PIOCFGRH_PIOCFG array
   type GPIOG_PIOCFGRH_PIOCFG_Field_Array is array (8 .. 15)
     of GPIOG_PIOCFGRH_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port G PIO control high register
   type GPIOG_PIOCFGRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOG_PIOCFGRH_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_PIOCFGRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOG_HWCFGR10_AHB_IOP_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOG_HWCFGR10_AFSIZE_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOG_HWCFGR10_SPEED_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOG_HWCFGR10_LOCK_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOG_HWCFGR10_SEC_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOG_HWCFGR10_OR_CFG_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port G hardware configuration register 10
   type GPIOG_HWCFGR10_Register is record
      --  Read-only. Bus interface selection
      AHB_IOP        : GPIOG_HWCFGR10_AHB_IOP_Field;
      --  Read-only. Number of AF available for each I/O (accepted value: 1 to
      --  4)
      AFSIZE_CFG     : GPIOG_HWCFGR10_AFSIZE_CFG_Field;
      --  Read-only. Number of speed lines for each I/O
      SPEED_CFG      : GPIOG_HWCFGR10_SPEED_CFG_Field;
      --  Read-only. Lock mechanism activation
      LOCK_CFG       : GPIOG_HWCFGR10_LOCK_CFG_Field;
      --  Read-only. Security activation
      SEC_CFG        : GPIOG_HWCFGR10_SEC_CFG_Field;
      --  Read-only. Option register configuration
      OR_CFG         : GPIOG_HWCFGR10_OR_CFG_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_HWCFGR10_Register use record
      AHB_IOP        at 0 range 0 .. 3;
      AFSIZE_CFG     at 0 range 4 .. 7;
      SPEED_CFG      at 0 range 8 .. 11;
      LOCK_CFG       at 0 range 12 .. 15;
      SEC_CFG        at 0 range 16 .. 19;
      OR_CFG         at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPIOG_HWCFGR9_EN_IO_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port G hardware configuration register 9
   type GPIOG_HWCFGR9_Register is record
      --  Read-only. Presence granularity, each bit indicate the I/O presence
      EN_IO          : GPIOG_HWCFGR9_EN_IO_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_HWCFGR9_Register use record
      EN_IO          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOG_HWCFGR8_FAST_AF_IO array element
   subtype GPIOG_HWCFGR8_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOG_HWCFGR8_FAST_AF_IO array
   type GPIOG_HWCFGR8_FAST_AF_IO_Field_Array is array (8 .. 15)
     of GPIOG_HWCFGR8_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port G hardware configuration register 8
   type GPIOG_HWCFGR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOG_HWCFGR8_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_HWCFGR8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOG_HWCFGR7_FAST_AF_IO array element
   subtype GPIOG_HWCFGR7_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOG_HWCFGR7_FAST_AF_IO array
   type GPIOG_HWCFGR7_FAST_AF_IO_Field_Array is array (0 .. 7)
     of GPIOG_HWCFGR7_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port G hardware configuration register 7
   type GPIOG_HWCFGR7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOG_HWCFGR7_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_HWCFGR7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOG_HWCFGR3_ODR_RES_Field is Interfaces.Bit_Types.UInt16;
   subtype GPIOG_HWCFGR3_OTYPER_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port G hardware configuration register 3
   type GPIOG_HWCFGR3_Register is record
      --  Read-only. Output data register reset value
      ODR_RES    : GPIOG_HWCFGR3_ODR_RES_Field;
      --  Read-only. Output type register reset value
      OTYPER_RES : GPIOG_HWCFGR3_OTYPER_RES_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_HWCFGR3_Register use record
      ODR_RES    at 0 range 0 .. 15;
      OTYPER_RES at 0 range 16 .. 31;
   end record;

   subtype GPIOG_HWCFGR0_OR_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port G hardware configuration register 0
   type GPIOG_HWCFGR0_Register is record
      --  Read-only. Option register reset value
      OR_RES         : GPIOG_HWCFGR0_OR_RES_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_HWCFGR0_Register use record
      OR_RES         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPIOG_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOG_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port G version register
   type GPIOG_VERR_Register is record
      --  Read-only. GPIO minor revision
      MINREV        : GPIOG_VERR_MINREV_Field;
      --  Read-only. GPIO major revision
      MAJREV        : GPIOG_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOG_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-purpose I/Os
   type GPIOG_S_Peripheral is record
      --  GPIO port G mode register
      GPIOG_MODER     : aliased GPIOG_MODER_Register;
      --  GPIO port G output type register
      GPIOG_OTYPER    : aliased GPIOG_OTYPER_Register;
      --  GPIO port G output speed register
      GPIOG_OSPEEDR   : aliased GPIOG_OSPEEDR_Register;
      --  GPIO port G pull-up/pull-down register
      GPIOG_PUPDR     : aliased GPIOG_PUPDR_Register;
      --  GPIO port G input data register
      GPIOG_IDR       : aliased GPIOG_IDR_Register;
      --  GPIO port G output data register
      GPIOG_ODR       : aliased GPIOG_ODR_Register;
      --  GPIO port G bit set/reset register
      GPIOG_BSRR      : aliased GPIOG_BSRR_Register;
      --  GPIO port G configuration lock register
      GPIOG_LCKR      : aliased GPIOG_LCKR_Register;
      --  GPIO port G alternate function low register
      GPIOG_AFRL      : aliased GPIOG_AFRL_Register;
      --  GPIO port G alternate function high register
      GPIOG_AFRH      : aliased GPIOG_AFRH_Register;
      --  GPIO port G bit reset register
      GPIOG_BRR       : aliased GPIOG_BRR_Register;
      --  GPIO port G secure configuration register
      GPIOG_SECCFGR   : aliased GPIOG_SECCFGR_Register;
      --  GPIO port G privileged configuration register
      GPIOG_PRIVCFGR  : aliased GPIOG_PRIVCFGR_Register;
      --  GPIO port G resource configuration lock register
      GPIOG_RCFGLOCKR : aliased GPIOG_RCFGLOCKR_Register;
      --  GPIO port G delay low register
      GPIOG_DELAYRL   : aliased GPIOG_DELAYRL_Register;
      --  GPIO port G delay high register
      GPIOG_DELAYRH   : aliased GPIOG_DELAYRH_Register;
      --  GPIO port G PIO control low register
      GPIOG_PIOCFGRL  : aliased GPIOG_PIOCFGRL_Register;
      --  GPIO port G PIO control high register
      GPIOG_PIOCFGRH  : aliased GPIOG_PIOCFGRH_Register;
      --  GPIO port G hardware configuration register 10
      GPIOG_HWCFGR10  : aliased GPIOG_HWCFGR10_Register;
      --  GPIO port G hardware configuration register 9
      GPIOG_HWCFGR9   : aliased GPIOG_HWCFGR9_Register;
      --  GPIO port G hardware configuration register 8
      GPIOG_HWCFGR8   : aliased GPIOG_HWCFGR8_Register;
      --  GPIO port G hardware configuration register 7
      GPIOG_HWCFGR7   : aliased GPIOG_HWCFGR7_Register;
      --  GPIO port G hardware configuration register 6
      GPIOG_HWCFGR6   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port G hardware configuration register 5
      GPIOG_HWCFGR5   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port G hardware configuration register 4
      GPIOG_HWCFGR4   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port G hardware configuration register 3
      GPIOG_HWCFGR3   : aliased GPIOG_HWCFGR3_Register;
      --  GPIO port G hardware configuration register 2
      GPIOG_HWCFGR2   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port G hardware configuration register 1
      GPIOG_HWCFGR1   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port G hardware configuration register 0
      GPIOG_HWCFGR0   : aliased GPIOG_HWCFGR0_Register;
      --  GPIO port G version register
      GPIOG_VERR      : aliased GPIOG_VERR_Register;
      --  GPIO port G identification register
      GPIOG_IPIDR     : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port G size identification register
      GPIOG_SIDR      : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for GPIOG_S_Peripheral use record
      GPIOG_MODER     at 16#0# range 0 .. 31;
      GPIOG_OTYPER    at 16#4# range 0 .. 31;
      GPIOG_OSPEEDR   at 16#8# range 0 .. 31;
      GPIOG_PUPDR     at 16#C# range 0 .. 31;
      GPIOG_IDR       at 16#10# range 0 .. 31;
      GPIOG_ODR       at 16#14# range 0 .. 31;
      GPIOG_BSRR      at 16#18# range 0 .. 31;
      GPIOG_LCKR      at 16#1C# range 0 .. 31;
      GPIOG_AFRL      at 16#20# range 0 .. 31;
      GPIOG_AFRH      at 16#24# range 0 .. 31;
      GPIOG_BRR       at 16#28# range 0 .. 31;
      GPIOG_SECCFGR   at 16#30# range 0 .. 31;
      GPIOG_PRIVCFGR  at 16#34# range 0 .. 31;
      GPIOG_RCFGLOCKR at 16#38# range 0 .. 31;
      GPIOG_DELAYRL   at 16#40# range 0 .. 31;
      GPIOG_DELAYRH   at 16#44# range 0 .. 31;
      GPIOG_PIOCFGRL  at 16#48# range 0 .. 31;
      GPIOG_PIOCFGRH  at 16#4C# range 0 .. 31;
      GPIOG_HWCFGR10  at 16#3C8# range 0 .. 31;
      GPIOG_HWCFGR9   at 16#3CC# range 0 .. 31;
      GPIOG_HWCFGR8   at 16#3D0# range 0 .. 31;
      GPIOG_HWCFGR7   at 16#3D4# range 0 .. 31;
      GPIOG_HWCFGR6   at 16#3D8# range 0 .. 31;
      GPIOG_HWCFGR5   at 16#3DC# range 0 .. 31;
      GPIOG_HWCFGR4   at 16#3E0# range 0 .. 31;
      GPIOG_HWCFGR3   at 16#3E4# range 0 .. 31;
      GPIOG_HWCFGR2   at 16#3E8# range 0 .. 31;
      GPIOG_HWCFGR1   at 16#3EC# range 0 .. 31;
      GPIOG_HWCFGR0   at 16#3F0# range 0 .. 31;
      GPIOG_VERR      at 16#3F4# range 0 .. 31;
      GPIOG_IPIDR     at 16#3F8# range 0 .. 31;
      GPIOG_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  General-purpose I/Os
   GPIOG_S_Periph : aliased GPIOG_S_Peripheral
     with Import, Address => GPIOG_S_Base;

end Interfaces.STM32.GPIOG_S;
