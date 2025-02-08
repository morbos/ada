--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  General-purpose I/Os
package STM32_SVD.GPIOD is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  GPIOD_MODER_MODE array element
   subtype GPIOD_MODER_MODE_Element is HAL.UInt2;

   --  GPIOD_MODER_MODE array
   type GPIOD_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOD_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port D mode register
   type GPIOD_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : HAL.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOD_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOD_OTYPER_OT array
   type GPIOD_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOD_OTYPER_OT
   type GPIOD_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : HAL.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOD_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOD_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port D output type register
   type GPIOD_OTYPER_Register is record
      --  Port x configuration I/O pin y
      OT             : GPIOD_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOD_OSPEEDR_OSPEED array element
   subtype GPIOD_OSPEEDR_OSPEED_Element is HAL.UInt2;

   --  GPIOD_OSPEEDR_OSPEED array
   type GPIOD_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOD_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port D output speed register
   type GPIOD_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : HAL.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOD_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOD_PUPDR_PUPD array element
   subtype GPIOD_PUPDR_PUPD_Element is HAL.UInt2;

   --  GPIOD_PUPDR_PUPD array
   type GPIOD_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOD_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port D pull-up/pull-down register
   type GPIOD_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : HAL.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOD_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOD_IDR_ID array
   type GPIOD_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOD_IDR_ID
   type GPIOD_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : HAL.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOD_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOD_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port D input data register
   type GPIOD_IDR_Register is record
      --  Read-only. Port x input data I/O pin y
      ID             : GPIOD_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOD_ODR_OD array
   type GPIOD_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOD_ODR_OD
   type GPIOD_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : HAL.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOD_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOD_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port D output data register
   type GPIOD_ODR_Register is record
      --  Port x output data I/O pin y
      OD             : GPIOD_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOD_BSRR_BS array
   type GPIOD_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOD_BSRR_BS
   type GPIOD_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : HAL.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOD_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOD_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOD_BSRR_BR array
   type GPIOD_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOD_BSRR_BR
   type GPIOD_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : HAL.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOD_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOD_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port D bit set/reset register
   type GPIOD_BSRR_Register is record
      --  Write-only. Port x set I/O pin y
      BS : GPIOD_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y
      BR : GPIOD_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOD_LCKR_LCK array
   type GPIOD_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOD_LCKR_LCK
   type GPIOD_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : HAL.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOD_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOD_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port D configuration lock register
   type GPIOD_LCKR_Register is record
      --  Port x lock I/O pin y
      LCK            : GPIOD_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOD_AFRL_AFSEL array element
   subtype GPIOD_AFRL_AFSEL_Element is HAL.UInt4;

   --  GPIOD_AFRL_AFSEL array
   type GPIOD_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOD_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port D alternate function low register
   type GPIOD_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : HAL.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOD_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOD_AFRH_AFSEL array element
   subtype GPIOD_AFRH_AFSEL_Element is HAL.UInt4;

   --  GPIOD_AFRH_AFSEL array
   type GPIOD_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOD_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port D alternate function high register
   type GPIOD_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : HAL.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOD_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOD_BRR_BR array
   type GPIOD_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOD_BRR_BR
   type GPIOD_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : HAL.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOD_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOD_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port D bit reset register
   type GPIOD_BRR_Register is record
      --  Write-only. Port x reset IO pin y
      BR             : GPIOD_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOD_SECCFGR_SEC array
   type GPIOD_SECCFGR_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOD_SECCFGR_SEC
   type GPIOD_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt16;
         when True =>
            --  SEC as an array
            Arr : GPIOD_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOD_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port D secure configuration register
   type GPIOD_SECCFGR_Register is record
      --  I/O pin y of Port x security configuration
      SEC            : GPIOD_SECCFGR_SEC_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOD_PRIVCFGR_PRIV array
   type GPIOD_PRIVCFGR_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOD_PRIVCFGR_PRIV
   type GPIOD_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt16;
         when True =>
            --  PRIV as an array
            Arr : GPIOD_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOD_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port D privileged configuration register
   type GPIOD_PRIVCFGR_Register is record
      --  I/O pin y of Port x privilege configuration
      PRIV           : GPIOD_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOD_RCFGLOCKR_RLOCK array
   type GPIOD_RCFGLOCKR_RLOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOD_RCFGLOCKR_RLOCK
   type GPIOD_RCFGLOCKR_RLOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : HAL.UInt16;
         when True =>
            --  RLOCK as an array
            Arr : GPIOD_RCFGLOCKR_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOD_RCFGLOCKR_RLOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port D resource configuration lock register
   type GPIOD_RCFGLOCKR_Register is record
      --  I/O pin y of port x resource lock
      RLOCK          : GPIOD_RCFGLOCKR_RLOCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_RCFGLOCKR_Register use record
      RLOCK          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOD_DELAYRL_DELAY array element
   subtype GPIOD_DELAYRL_DELAY_Element is HAL.UInt4;

   --  GPIOD_DELAYRL_DELAY array
   type GPIOD_DELAYRL_DELAY_Field_Array is array (0 .. 7)
     of GPIOD_DELAYRL_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port D delay low register
   type GPIOD_DELAYRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : HAL.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOD_DELAYRL_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_DELAYRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOD_DELAYRH_DELAY array element
   subtype GPIOD_DELAYRH_DELAY_Element is HAL.UInt4;

   --  GPIOD_DELAYRH_DELAY array
   type GPIOD_DELAYRH_DELAY_Field_Array is array (8 .. 15)
     of GPIOD_DELAYRH_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port D delay high register
   type GPIOD_DELAYRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : HAL.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOD_DELAYRH_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_DELAYRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOD_PIOCFGRL_PIOCFG array element
   subtype GPIOD_PIOCFGRL_PIOCFG_Element is HAL.UInt4;

   --  GPIOD_PIOCFGRL_PIOCFG array
   type GPIOD_PIOCFGRL_PIOCFG_Field_Array is array (0 .. 7)
     of GPIOD_PIOCFGRL_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port D PIO control low register
   type GPIOD_PIOCFGRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : HAL.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOD_PIOCFGRL_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_PIOCFGRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOD_PIOCFGRH_PIOCFG array element
   subtype GPIOD_PIOCFGRH_PIOCFG_Element is HAL.UInt4;

   --  GPIOD_PIOCFGRH_PIOCFG array
   type GPIOD_PIOCFGRH_PIOCFG_Field_Array is array (8 .. 15)
     of GPIOD_PIOCFGRH_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port D PIO control high register
   type GPIOD_PIOCFGRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : HAL.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOD_PIOCFGRH_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_PIOCFGRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOD_HWCFGR10_AHB_IOP_Field is HAL.UInt4;
   subtype GPIOD_HWCFGR10_AFSIZE_CFG_Field is HAL.UInt4;
   subtype GPIOD_HWCFGR10_SPEED_CFG_Field is HAL.UInt4;
   subtype GPIOD_HWCFGR10_LOCK_CFG_Field is HAL.UInt4;
   subtype GPIOD_HWCFGR10_SEC_CFG_Field is HAL.UInt4;
   subtype GPIOD_HWCFGR10_OR_CFG_Field is HAL.UInt4;

   --  GPIO port D hardware configuration register 10
   type GPIOD_HWCFGR10_Register is record
      --  Read-only. Bus interface selection
      AHB_IOP        : GPIOD_HWCFGR10_AHB_IOP_Field;
      --  Read-only. Number of AF available for each I/O (accepted value: 1 to
      --  4)
      AFSIZE_CFG     : GPIOD_HWCFGR10_AFSIZE_CFG_Field;
      --  Read-only. Number of speed lines for each I/O
      SPEED_CFG      : GPIOD_HWCFGR10_SPEED_CFG_Field;
      --  Read-only. Lock mechanism activation
      LOCK_CFG       : GPIOD_HWCFGR10_LOCK_CFG_Field;
      --  Read-only. Security activation
      SEC_CFG        : GPIOD_HWCFGR10_SEC_CFG_Field;
      --  Read-only. Option register configuration
      OR_CFG         : GPIOD_HWCFGR10_OR_CFG_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_HWCFGR10_Register use record
      AHB_IOP        at 0 range 0 .. 3;
      AFSIZE_CFG     at 0 range 4 .. 7;
      SPEED_CFG      at 0 range 8 .. 11;
      LOCK_CFG       at 0 range 12 .. 15;
      SEC_CFG        at 0 range 16 .. 19;
      OR_CFG         at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPIOD_HWCFGR9_EN_IO_Field is HAL.UInt16;

   --  GPIO port D hardware configuration register 9
   type GPIOD_HWCFGR9_Register is record
      --  Read-only. Presence granularity, each bit indicate the I/O presence
      EN_IO          : GPIOD_HWCFGR9_EN_IO_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_HWCFGR9_Register use record
      EN_IO          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOD_HWCFGR8_FAST_AF_IO array element
   subtype GPIOD_HWCFGR8_FAST_AF_IO_Element is HAL.UInt4;

   --  GPIOD_HWCFGR8_FAST_AF_IO array
   type GPIOD_HWCFGR8_FAST_AF_IO_Field_Array is array (8 .. 15)
     of GPIOD_HWCFGR8_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port D hardware configuration register 8
   type GPIOD_HWCFGR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : HAL.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOD_HWCFGR8_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_HWCFGR8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOD_HWCFGR7_FAST_AF_IO array element
   subtype GPIOD_HWCFGR7_FAST_AF_IO_Element is HAL.UInt4;

   --  GPIOD_HWCFGR7_FAST_AF_IO array
   type GPIOD_HWCFGR7_FAST_AF_IO_Field_Array is array (0 .. 7)
     of GPIOD_HWCFGR7_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port D hardware configuration register 7
   type GPIOD_HWCFGR7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : HAL.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOD_HWCFGR7_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_HWCFGR7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOD_HWCFGR3_ODR_RES_Field is HAL.UInt16;
   subtype GPIOD_HWCFGR3_OTYPER_RES_Field is HAL.UInt16;

   --  GPIO port D hardware configuration register 3
   type GPIOD_HWCFGR3_Register is record
      --  Read-only. Output data register reset value
      ODR_RES    : GPIOD_HWCFGR3_ODR_RES_Field;
      --  Read-only. Output type register reset value
      OTYPER_RES : GPIOD_HWCFGR3_OTYPER_RES_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_HWCFGR3_Register use record
      ODR_RES    at 0 range 0 .. 15;
      OTYPER_RES at 0 range 16 .. 31;
   end record;

   subtype GPIOD_HWCFGR0_OR_RES_Field is HAL.UInt16;

   --  GPIO port D hardware configuration register 0
   type GPIOD_HWCFGR0_Register is record
      --  Read-only. Option register reset value
      OR_RES         : GPIOD_HWCFGR0_OR_RES_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_HWCFGR0_Register use record
      OR_RES         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPIOD_VERR_MINREV_Field is HAL.UInt4;
   subtype GPIOD_VERR_MAJREV_Field is HAL.UInt4;

   --  GPIO port D version register
   type GPIOD_VERR_Register is record
      --  Read-only. GPIO minor revision
      MINREV        : GPIOD_VERR_MINREV_Field;
      --  Read-only. GPIO major revision
      MAJREV        : GPIOD_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-purpose I/Os
   type GPIOD_Peripheral is record
      --  GPIO port D mode register
      GPIOD_MODER     : aliased GPIOD_MODER_Register;
      --  GPIO port D output type register
      GPIOD_OTYPER    : aliased GPIOD_OTYPER_Register;
      --  GPIO port D output speed register
      GPIOD_OSPEEDR   : aliased GPIOD_OSPEEDR_Register;
      --  GPIO port D pull-up/pull-down register
      GPIOD_PUPDR     : aliased GPIOD_PUPDR_Register;
      --  GPIO port D input data register
      GPIOD_IDR       : aliased GPIOD_IDR_Register;
      --  GPIO port D output data register
      GPIOD_ODR       : aliased GPIOD_ODR_Register;
      --  GPIO port D bit set/reset register
      GPIOD_BSRR      : aliased GPIOD_BSRR_Register;
      --  GPIO port D configuration lock register
      GPIOD_LCKR      : aliased GPIOD_LCKR_Register;
      --  GPIO port D alternate function low register
      GPIOD_AFRL      : aliased GPIOD_AFRL_Register;
      --  GPIO port D alternate function high register
      GPIOD_AFRH      : aliased GPIOD_AFRH_Register;
      --  GPIO port D bit reset register
      GPIOD_BRR       : aliased GPIOD_BRR_Register;
      --  GPIO port D secure configuration register
      GPIOD_SECCFGR   : aliased GPIOD_SECCFGR_Register;
      --  GPIO port D privileged configuration register
      GPIOD_PRIVCFGR  : aliased GPIOD_PRIVCFGR_Register;
      --  GPIO port D resource configuration lock register
      GPIOD_RCFGLOCKR : aliased GPIOD_RCFGLOCKR_Register;
      --  GPIO port D delay low register
      GPIOD_DELAYRL   : aliased GPIOD_DELAYRL_Register;
      --  GPIO port D delay high register
      GPIOD_DELAYRH   : aliased GPIOD_DELAYRH_Register;
      --  GPIO port D PIO control low register
      GPIOD_PIOCFGRL  : aliased GPIOD_PIOCFGRL_Register;
      --  GPIO port D PIO control high register
      GPIOD_PIOCFGRH  : aliased GPIOD_PIOCFGRH_Register;
      --  GPIO port D hardware configuration register 10
      GPIOD_HWCFGR10  : aliased GPIOD_HWCFGR10_Register;
      --  GPIO port D hardware configuration register 9
      GPIOD_HWCFGR9   : aliased GPIOD_HWCFGR9_Register;
      --  GPIO port D hardware configuration register 8
      GPIOD_HWCFGR8   : aliased GPIOD_HWCFGR8_Register;
      --  GPIO port D hardware configuration register 7
      GPIOD_HWCFGR7   : aliased GPIOD_HWCFGR7_Register;
      --  GPIO port D hardware configuration register 6
      GPIOD_HWCFGR6   : aliased HAL.UInt32;
      --  GPIO port D hardware configuration register 5
      GPIOD_HWCFGR5   : aliased HAL.UInt32;
      --  GPIO port D hardware configuration register 4
      GPIOD_HWCFGR4   : aliased HAL.UInt32;
      --  GPIO port D hardware configuration register 3
      GPIOD_HWCFGR3   : aliased GPIOD_HWCFGR3_Register;
      --  GPIO port D hardware configuration register 2
      GPIOD_HWCFGR2   : aliased HAL.UInt32;
      --  GPIO port D hardware configuration register 1
      GPIOD_HWCFGR1   : aliased HAL.UInt32;
      --  GPIO port D hardware configuration register 0
      GPIOD_HWCFGR0   : aliased GPIOD_HWCFGR0_Register;
      --  GPIO port D version register
      GPIOD_VERR      : aliased GPIOD_VERR_Register;
      --  GPIO port D identification register
      GPIOD_IPIDR     : aliased HAL.UInt32;
      --  GPIO port D size identification register
      GPIOD_SIDR      : aliased HAL.UInt32;
   end record
     with Volatile;

   for GPIOD_Peripheral use record
      GPIOD_MODER     at 16#0# range 0 .. 31;
      GPIOD_OTYPER    at 16#4# range 0 .. 31;
      GPIOD_OSPEEDR   at 16#8# range 0 .. 31;
      GPIOD_PUPDR     at 16#C# range 0 .. 31;
      GPIOD_IDR       at 16#10# range 0 .. 31;
      GPIOD_ODR       at 16#14# range 0 .. 31;
      GPIOD_BSRR      at 16#18# range 0 .. 31;
      GPIOD_LCKR      at 16#1C# range 0 .. 31;
      GPIOD_AFRL      at 16#20# range 0 .. 31;
      GPIOD_AFRH      at 16#24# range 0 .. 31;
      GPIOD_BRR       at 16#28# range 0 .. 31;
      GPIOD_SECCFGR   at 16#30# range 0 .. 31;
      GPIOD_PRIVCFGR  at 16#34# range 0 .. 31;
      GPIOD_RCFGLOCKR at 16#38# range 0 .. 31;
      GPIOD_DELAYRL   at 16#40# range 0 .. 31;
      GPIOD_DELAYRH   at 16#44# range 0 .. 31;
      GPIOD_PIOCFGRL  at 16#48# range 0 .. 31;
      GPIOD_PIOCFGRH  at 16#4C# range 0 .. 31;
      GPIOD_HWCFGR10  at 16#3C8# range 0 .. 31;
      GPIOD_HWCFGR9   at 16#3CC# range 0 .. 31;
      GPIOD_HWCFGR8   at 16#3D0# range 0 .. 31;
      GPIOD_HWCFGR7   at 16#3D4# range 0 .. 31;
      GPIOD_HWCFGR6   at 16#3D8# range 0 .. 31;
      GPIOD_HWCFGR5   at 16#3DC# range 0 .. 31;
      GPIOD_HWCFGR4   at 16#3E0# range 0 .. 31;
      GPIOD_HWCFGR3   at 16#3E4# range 0 .. 31;
      GPIOD_HWCFGR2   at 16#3E8# range 0 .. 31;
      GPIOD_HWCFGR1   at 16#3EC# range 0 .. 31;
      GPIOD_HWCFGR0   at 16#3F0# range 0 .. 31;
      GPIOD_VERR      at 16#3F4# range 0 .. 31;
      GPIOD_IPIDR     at 16#3F8# range 0 .. 31;
      GPIOD_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  General-purpose I/Os
   GPIOD_Periph : aliased GPIOD_Peripheral
     with Import, Address => GPIOD_Base;

end STM32_SVD.GPIOD;
