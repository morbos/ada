--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  General-purpose I/Os
package STM32_SVD.GPIOO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  GPIOO_MODER_MODE array element
   subtype GPIOO_MODER_MODE_Element is HAL.UInt2;

   --  GPIOO_MODER_MODE array
   type GPIOO_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOO_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port O mode register
   type GPIOO_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : HAL.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOO_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOO_OTYPER_OT array
   type GPIOO_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOO_OTYPER_OT
   type GPIOO_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : HAL.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOO_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOO_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port O output type register
   type GPIOO_OTYPER_Register is record
      --  Port x configuration I/O pin y
      OT             : GPIOO_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOO_OSPEEDR_OSPEED array element
   subtype GPIOO_OSPEEDR_OSPEED_Element is HAL.UInt2;

   --  GPIOO_OSPEEDR_OSPEED array
   type GPIOO_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOO_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port O output speed register
   type GPIOO_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : HAL.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOO_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOO_PUPDR_PUPD array element
   subtype GPIOO_PUPDR_PUPD_Element is HAL.UInt2;

   --  GPIOO_PUPDR_PUPD array
   type GPIOO_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOO_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port O pull-up/pull-down register
   type GPIOO_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : HAL.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOO_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOO_IDR_ID array
   type GPIOO_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOO_IDR_ID
   type GPIOO_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : HAL.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOO_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOO_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port O input data register
   type GPIOO_IDR_Register is record
      --  Read-only. Port x input data I/O pin y
      ID             : GPIOO_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOO_ODR_OD array
   type GPIOO_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOO_ODR_OD
   type GPIOO_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : HAL.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOO_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOO_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port O output data register
   type GPIOO_ODR_Register is record
      --  Port x output data I/O pin y
      OD             : GPIOO_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOO_BSRR_BS array
   type GPIOO_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOO_BSRR_BS
   type GPIOO_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : HAL.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOO_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOO_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOO_BSRR_BR array
   type GPIOO_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOO_BSRR_BR
   type GPIOO_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : HAL.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOO_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOO_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port O bit set/reset register
   type GPIOO_BSRR_Register is record
      --  Write-only. Port x set I/O pin y
      BS : GPIOO_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y
      BR : GPIOO_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOO_LCKR_LCK array
   type GPIOO_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOO_LCKR_LCK
   type GPIOO_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : HAL.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOO_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOO_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port O configuration lock register
   type GPIOO_LCKR_Register is record
      --  Port x lock I/O pin y
      LCK            : GPIOO_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOO_AFRL_AFSEL array element
   subtype GPIOO_AFRL_AFSEL_Element is HAL.UInt4;

   --  GPIOO_AFRL_AFSEL array
   type GPIOO_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOO_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port O alternate function low register
   type GPIOO_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : HAL.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOO_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOO_AFRH_AFSEL array element
   subtype GPIOO_AFRH_AFSEL_Element is HAL.UInt4;

   --  GPIOO_AFRH_AFSEL array
   type GPIOO_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOO_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port O alternate function high register
   type GPIOO_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : HAL.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOO_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOO_BRR_BR array
   type GPIOO_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOO_BRR_BR
   type GPIOO_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : HAL.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOO_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOO_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port O bit reset register
   type GPIOO_BRR_Register is record
      --  Write-only. Port x reset IO pin y
      BR             : GPIOO_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOO_SECCFGR_SEC array
   type GPIOO_SECCFGR_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOO_SECCFGR_SEC
   type GPIOO_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt16;
         when True =>
            --  SEC as an array
            Arr : GPIOO_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOO_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port O secure configuration register
   type GPIOO_SECCFGR_Register is record
      --  I/O pin y of Port x security configuration
      SEC            : GPIOO_SECCFGR_SEC_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOO_PRIVCFGR_PRIV array
   type GPIOO_PRIVCFGR_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOO_PRIVCFGR_PRIV
   type GPIOO_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt16;
         when True =>
            --  PRIV as an array
            Arr : GPIOO_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOO_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port O privileged configuration register
   type GPIOO_PRIVCFGR_Register is record
      --  I/O pin y of Port x privilege configuration
      PRIV           : GPIOO_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOO_RCFGLOCKR_RLOCK array
   type GPIOO_RCFGLOCKR_RLOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOO_RCFGLOCKR_RLOCK
   type GPIOO_RCFGLOCKR_RLOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : HAL.UInt16;
         when True =>
            --  RLOCK as an array
            Arr : GPIOO_RCFGLOCKR_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOO_RCFGLOCKR_RLOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port O resource configuration lock register
   type GPIOO_RCFGLOCKR_Register is record
      --  I/O pin y of port x resource lock
      RLOCK          : GPIOO_RCFGLOCKR_RLOCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_RCFGLOCKR_Register use record
      RLOCK          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOO_DELAYRL_DELAY array element
   subtype GPIOO_DELAYRL_DELAY_Element is HAL.UInt4;

   --  GPIOO_DELAYRL_DELAY array
   type GPIOO_DELAYRL_DELAY_Field_Array is array (0 .. 7)
     of GPIOO_DELAYRL_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port O delay low register
   type GPIOO_DELAYRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : HAL.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOO_DELAYRL_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_DELAYRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOO_DELAYRH_DELAY array element
   subtype GPIOO_DELAYRH_DELAY_Element is HAL.UInt4;

   --  GPIOO_DELAYRH_DELAY array
   type GPIOO_DELAYRH_DELAY_Field_Array is array (8 .. 15)
     of GPIOO_DELAYRH_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port O delay high register
   type GPIOO_DELAYRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : HAL.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOO_DELAYRH_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_DELAYRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOO_PIOCFGRL_PIOCFG array element
   subtype GPIOO_PIOCFGRL_PIOCFG_Element is HAL.UInt4;

   --  GPIOO_PIOCFGRL_PIOCFG array
   type GPIOO_PIOCFGRL_PIOCFG_Field_Array is array (0 .. 7)
     of GPIOO_PIOCFGRL_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port O PIO control low register
   type GPIOO_PIOCFGRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : HAL.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOO_PIOCFGRL_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_PIOCFGRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOO_PIOCFGRH_PIOCFG array element
   subtype GPIOO_PIOCFGRH_PIOCFG_Element is HAL.UInt4;

   --  GPIOO_PIOCFGRH_PIOCFG array
   type GPIOO_PIOCFGRH_PIOCFG_Field_Array is array (8 .. 15)
     of GPIOO_PIOCFGRH_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port O PIO control high register
   type GPIOO_PIOCFGRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : HAL.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOO_PIOCFGRH_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_PIOCFGRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOO_HWCFGR10_AHB_IOP_Field is HAL.UInt4;
   subtype GPIOO_HWCFGR10_AFSIZE_CFG_Field is HAL.UInt4;
   subtype GPIOO_HWCFGR10_SPEED_CFG_Field is HAL.UInt4;
   subtype GPIOO_HWCFGR10_LOCK_CFG_Field is HAL.UInt4;
   subtype GPIOO_HWCFGR10_SEC_CFG_Field is HAL.UInt4;
   subtype GPIOO_HWCFGR10_OR_CFG_Field is HAL.UInt4;

   --  GPIO port O hardware configuration register 10
   type GPIOO_HWCFGR10_Register is record
      --  Read-only. Bus interface selection
      AHB_IOP        : GPIOO_HWCFGR10_AHB_IOP_Field;
      --  Read-only. Number of AF available for each I/O (accepted value: 1 to
      --  4)
      AFSIZE_CFG     : GPIOO_HWCFGR10_AFSIZE_CFG_Field;
      --  Read-only. Number of speed lines for each I/O
      SPEED_CFG      : GPIOO_HWCFGR10_SPEED_CFG_Field;
      --  Read-only. Lock mechanism activation
      LOCK_CFG       : GPIOO_HWCFGR10_LOCK_CFG_Field;
      --  Read-only. Security activation
      SEC_CFG        : GPIOO_HWCFGR10_SEC_CFG_Field;
      --  Read-only. Option register configuration
      OR_CFG         : GPIOO_HWCFGR10_OR_CFG_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_HWCFGR10_Register use record
      AHB_IOP        at 0 range 0 .. 3;
      AFSIZE_CFG     at 0 range 4 .. 7;
      SPEED_CFG      at 0 range 8 .. 11;
      LOCK_CFG       at 0 range 12 .. 15;
      SEC_CFG        at 0 range 16 .. 19;
      OR_CFG         at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPIOO_HWCFGR9_EN_IO_Field is HAL.UInt16;

   --  GPIO port O hardware configuration register 9
   type GPIOO_HWCFGR9_Register is record
      --  Read-only. Presence granularity, each bit indicate the I/O presence
      EN_IO          : GPIOO_HWCFGR9_EN_IO_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_HWCFGR9_Register use record
      EN_IO          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOO_HWCFGR8_FAST_AF_IO array element
   subtype GPIOO_HWCFGR8_FAST_AF_IO_Element is HAL.UInt4;

   --  GPIOO_HWCFGR8_FAST_AF_IO array
   type GPIOO_HWCFGR8_FAST_AF_IO_Field_Array is array (8 .. 15)
     of GPIOO_HWCFGR8_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port O hardware configuration register 8
   type GPIOO_HWCFGR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : HAL.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOO_HWCFGR8_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_HWCFGR8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOO_HWCFGR7_FAST_AF_IO array element
   subtype GPIOO_HWCFGR7_FAST_AF_IO_Element is HAL.UInt4;

   --  GPIOO_HWCFGR7_FAST_AF_IO array
   type GPIOO_HWCFGR7_FAST_AF_IO_Field_Array is array (0 .. 7)
     of GPIOO_HWCFGR7_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port O hardware configuration register 7
   type GPIOO_HWCFGR7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : HAL.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOO_HWCFGR7_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_HWCFGR7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOO_HWCFGR3_ODR_RES_Field is HAL.UInt16;
   subtype GPIOO_HWCFGR3_OTYPER_RES_Field is HAL.UInt16;

   --  GPIO port O hardware configuration register 3
   type GPIOO_HWCFGR3_Register is record
      --  Read-only. Output data register reset value
      ODR_RES    : GPIOO_HWCFGR3_ODR_RES_Field;
      --  Read-only. Output type register reset value
      OTYPER_RES : GPIOO_HWCFGR3_OTYPER_RES_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_HWCFGR3_Register use record
      ODR_RES    at 0 range 0 .. 15;
      OTYPER_RES at 0 range 16 .. 31;
   end record;

   subtype GPIOO_HWCFGR0_OR_RES_Field is HAL.UInt16;

   --  GPIO port O hardware configuration register 0
   type GPIOO_HWCFGR0_Register is record
      --  Read-only. Option register reset value
      OR_RES         : GPIOO_HWCFGR0_OR_RES_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_HWCFGR0_Register use record
      OR_RES         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPIOO_VERR_MINREV_Field is HAL.UInt4;
   subtype GPIOO_VERR_MAJREV_Field is HAL.UInt4;

   --  GPIO port O version register
   type GPIOO_VERR_Register is record
      --  Read-only. GPIO minor revision
      MINREV        : GPIOO_VERR_MINREV_Field;
      --  Read-only. GPIO major revision
      MAJREV        : GPIOO_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOO_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-purpose I/Os
   type GPIOO_Peripheral is record
      --  GPIO port O mode register
      GPIOO_MODER     : aliased GPIOO_MODER_Register;
      --  GPIO port O output type register
      GPIOO_OTYPER    : aliased GPIOO_OTYPER_Register;
      --  GPIO port O output speed register
      GPIOO_OSPEEDR   : aliased GPIOO_OSPEEDR_Register;
      --  GPIO port O pull-up/pull-down register
      GPIOO_PUPDR     : aliased GPIOO_PUPDR_Register;
      --  GPIO port O input data register
      GPIOO_IDR       : aliased GPIOO_IDR_Register;
      --  GPIO port O output data register
      GPIOO_ODR       : aliased GPIOO_ODR_Register;
      --  GPIO port O bit set/reset register
      GPIOO_BSRR      : aliased GPIOO_BSRR_Register;
      --  GPIO port O configuration lock register
      GPIOO_LCKR      : aliased GPIOO_LCKR_Register;
      --  GPIO port O alternate function low register
      GPIOO_AFRL      : aliased GPIOO_AFRL_Register;
      --  GPIO port O alternate function high register
      GPIOO_AFRH      : aliased GPIOO_AFRH_Register;
      --  GPIO port O bit reset register
      GPIOO_BRR       : aliased GPIOO_BRR_Register;
      --  GPIO port O secure configuration register
      GPIOO_SECCFGR   : aliased GPIOO_SECCFGR_Register;
      --  GPIO port O privileged configuration register
      GPIOO_PRIVCFGR  : aliased GPIOO_PRIVCFGR_Register;
      --  GPIO port O resource configuration lock register
      GPIOO_RCFGLOCKR : aliased GPIOO_RCFGLOCKR_Register;
      --  GPIO port O delay low register
      GPIOO_DELAYRL   : aliased GPIOO_DELAYRL_Register;
      --  GPIO port O delay high register
      GPIOO_DELAYRH   : aliased GPIOO_DELAYRH_Register;
      --  GPIO port O PIO control low register
      GPIOO_PIOCFGRL  : aliased GPIOO_PIOCFGRL_Register;
      --  GPIO port O PIO control high register
      GPIOO_PIOCFGRH  : aliased GPIOO_PIOCFGRH_Register;
      --  GPIO port O hardware configuration register 10
      GPIOO_HWCFGR10  : aliased GPIOO_HWCFGR10_Register;
      --  GPIO port O hardware configuration register 9
      GPIOO_HWCFGR9   : aliased GPIOO_HWCFGR9_Register;
      --  GPIO port O hardware configuration register 8
      GPIOO_HWCFGR8   : aliased GPIOO_HWCFGR8_Register;
      --  GPIO port O hardware configuration register 7
      GPIOO_HWCFGR7   : aliased GPIOO_HWCFGR7_Register;
      --  GPIO port O hardware configuration register 6
      GPIOO_HWCFGR6   : aliased HAL.UInt32;
      --  GPIO port O hardware configuration register 5
      GPIOO_HWCFGR5   : aliased HAL.UInt32;
      --  GPIO port O hardware configuration register 4
      GPIOO_HWCFGR4   : aliased HAL.UInt32;
      --  GPIO port O hardware configuration register 3
      GPIOO_HWCFGR3   : aliased GPIOO_HWCFGR3_Register;
      --  GPIO port O hardware configuration register 2
      GPIOO_HWCFGR2   : aliased HAL.UInt32;
      --  GPIO port O hardware configuration register 1
      GPIOO_HWCFGR1   : aliased HAL.UInt32;
      --  GPIO port O hardware configuration register 0
      GPIOO_HWCFGR0   : aliased GPIOO_HWCFGR0_Register;
      --  GPIO port O version register
      GPIOO_VERR      : aliased GPIOO_VERR_Register;
      --  GPIO port O identification register
      GPIOO_IPIDR     : aliased HAL.UInt32;
      --  GPIO port O size identification register
      GPIOO_SIDR      : aliased HAL.UInt32;
   end record
     with Volatile;

   for GPIOO_Peripheral use record
      GPIOO_MODER     at 16#0# range 0 .. 31;
      GPIOO_OTYPER    at 16#4# range 0 .. 31;
      GPIOO_OSPEEDR   at 16#8# range 0 .. 31;
      GPIOO_PUPDR     at 16#C# range 0 .. 31;
      GPIOO_IDR       at 16#10# range 0 .. 31;
      GPIOO_ODR       at 16#14# range 0 .. 31;
      GPIOO_BSRR      at 16#18# range 0 .. 31;
      GPIOO_LCKR      at 16#1C# range 0 .. 31;
      GPIOO_AFRL      at 16#20# range 0 .. 31;
      GPIOO_AFRH      at 16#24# range 0 .. 31;
      GPIOO_BRR       at 16#28# range 0 .. 31;
      GPIOO_SECCFGR   at 16#30# range 0 .. 31;
      GPIOO_PRIVCFGR  at 16#34# range 0 .. 31;
      GPIOO_RCFGLOCKR at 16#38# range 0 .. 31;
      GPIOO_DELAYRL   at 16#40# range 0 .. 31;
      GPIOO_DELAYRH   at 16#44# range 0 .. 31;
      GPIOO_PIOCFGRL  at 16#48# range 0 .. 31;
      GPIOO_PIOCFGRH  at 16#4C# range 0 .. 31;
      GPIOO_HWCFGR10  at 16#3C8# range 0 .. 31;
      GPIOO_HWCFGR9   at 16#3CC# range 0 .. 31;
      GPIOO_HWCFGR8   at 16#3D0# range 0 .. 31;
      GPIOO_HWCFGR7   at 16#3D4# range 0 .. 31;
      GPIOO_HWCFGR6   at 16#3D8# range 0 .. 31;
      GPIOO_HWCFGR5   at 16#3DC# range 0 .. 31;
      GPIOO_HWCFGR4   at 16#3E0# range 0 .. 31;
      GPIOO_HWCFGR3   at 16#3E4# range 0 .. 31;
      GPIOO_HWCFGR2   at 16#3E8# range 0 .. 31;
      GPIOO_HWCFGR1   at 16#3EC# range 0 .. 31;
      GPIOO_HWCFGR0   at 16#3F0# range 0 .. 31;
      GPIOO_VERR      at 16#3F4# range 0 .. 31;
      GPIOO_IPIDR     at 16#3F8# range 0 .. 31;
      GPIOO_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  General-purpose I/Os
   GPIOO_Periph : aliased GPIOO_Peripheral
     with Import, Address => GPIOO_Base;

end STM32_SVD.GPIOO;
