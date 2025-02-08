--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  General-purpose I/Os
package STM32_SVD.GPIOF is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  GPIOF_MODER_MODE array element
   subtype GPIOF_MODER_MODE_Element is HAL.UInt2;

   --  GPIOF_MODER_MODE array
   type GPIOF_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOF_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port F mode register
   type GPIOF_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : HAL.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOF_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOF_OTYPER_OT array
   type GPIOF_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOF_OTYPER_OT
   type GPIOF_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : HAL.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOF_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOF_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port F output type register
   type GPIOF_OTYPER_Register is record
      --  Port x configuration I/O pin y
      OT             : GPIOF_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOF_OSPEEDR_OSPEED array element
   subtype GPIOF_OSPEEDR_OSPEED_Element is HAL.UInt2;

   --  GPIOF_OSPEEDR_OSPEED array
   type GPIOF_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOF_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port F output speed register
   type GPIOF_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : HAL.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOF_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOF_PUPDR_PUPD array element
   subtype GPIOF_PUPDR_PUPD_Element is HAL.UInt2;

   --  GPIOF_PUPDR_PUPD array
   type GPIOF_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOF_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port F pull-up/pull-down register
   type GPIOF_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : HAL.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOF_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOF_IDR_ID array
   type GPIOF_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOF_IDR_ID
   type GPIOF_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : HAL.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOF_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOF_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port F input data register
   type GPIOF_IDR_Register is record
      --  Read-only. Port x input data I/O pin y
      ID             : GPIOF_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOF_ODR_OD array
   type GPIOF_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOF_ODR_OD
   type GPIOF_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : HAL.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOF_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOF_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port F output data register
   type GPIOF_ODR_Register is record
      --  Port x output data I/O pin y
      OD             : GPIOF_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOF_BSRR_BS array
   type GPIOF_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOF_BSRR_BS
   type GPIOF_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : HAL.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOF_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOF_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOF_BSRR_BR array
   type GPIOF_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOF_BSRR_BR
   type GPIOF_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : HAL.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOF_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOF_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port F bit set/reset register
   type GPIOF_BSRR_Register is record
      --  Write-only. Port x set I/O pin y
      BS : GPIOF_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y
      BR : GPIOF_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOF_LCKR_LCK array
   type GPIOF_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOF_LCKR_LCK
   type GPIOF_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : HAL.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOF_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOF_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port F configuration lock register
   type GPIOF_LCKR_Register is record
      --  Port x lock I/O pin y
      LCK            : GPIOF_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOF_AFRL_AFSEL array element
   subtype GPIOF_AFRL_AFSEL_Element is HAL.UInt4;

   --  GPIOF_AFRL_AFSEL array
   type GPIOF_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOF_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port F alternate function low register
   type GPIOF_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : HAL.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOF_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOF_AFRH_AFSEL array element
   subtype GPIOF_AFRH_AFSEL_Element is HAL.UInt4;

   --  GPIOF_AFRH_AFSEL array
   type GPIOF_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOF_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port F alternate function high register
   type GPIOF_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : HAL.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOF_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOF_BRR_BR array
   type GPIOF_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOF_BRR_BR
   type GPIOF_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : HAL.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOF_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOF_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port F bit reset register
   type GPIOF_BRR_Register is record
      --  Write-only. Port x reset IO pin y
      BR             : GPIOF_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOF_SECCFGR_SEC array
   type GPIOF_SECCFGR_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOF_SECCFGR_SEC
   type GPIOF_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt16;
         when True =>
            --  SEC as an array
            Arr : GPIOF_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOF_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port F secure configuration register
   type GPIOF_SECCFGR_Register is record
      --  I/O pin y of Port x security configuration
      SEC            : GPIOF_SECCFGR_SEC_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOF_PRIVCFGR_PRIV array
   type GPIOF_PRIVCFGR_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOF_PRIVCFGR_PRIV
   type GPIOF_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt16;
         when True =>
            --  PRIV as an array
            Arr : GPIOF_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOF_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port F privileged configuration register
   type GPIOF_PRIVCFGR_Register is record
      --  I/O pin y of Port x privilege configuration
      PRIV           : GPIOF_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOF_RCFGLOCKR_RLOCK array
   type GPIOF_RCFGLOCKR_RLOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOF_RCFGLOCKR_RLOCK
   type GPIOF_RCFGLOCKR_RLOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : HAL.UInt16;
         when True =>
            --  RLOCK as an array
            Arr : GPIOF_RCFGLOCKR_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOF_RCFGLOCKR_RLOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port F resource configuration lock register
   type GPIOF_RCFGLOCKR_Register is record
      --  I/O pin y of port x resource lock
      RLOCK          : GPIOF_RCFGLOCKR_RLOCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_RCFGLOCKR_Register use record
      RLOCK          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOF_DELAYRL_DELAY array element
   subtype GPIOF_DELAYRL_DELAY_Element is HAL.UInt4;

   --  GPIOF_DELAYRL_DELAY array
   type GPIOF_DELAYRL_DELAY_Field_Array is array (0 .. 7)
     of GPIOF_DELAYRL_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port F delay low register
   type GPIOF_DELAYRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : HAL.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOF_DELAYRL_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_DELAYRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOF_DELAYRH_DELAY array element
   subtype GPIOF_DELAYRH_DELAY_Element is HAL.UInt4;

   --  GPIOF_DELAYRH_DELAY array
   type GPIOF_DELAYRH_DELAY_Field_Array is array (8 .. 15)
     of GPIOF_DELAYRH_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port F delay high register
   type GPIOF_DELAYRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : HAL.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOF_DELAYRH_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_DELAYRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOF_PIOCFGRL_PIOCFG array element
   subtype GPIOF_PIOCFGRL_PIOCFG_Element is HAL.UInt4;

   --  GPIOF_PIOCFGRL_PIOCFG array
   type GPIOF_PIOCFGRL_PIOCFG_Field_Array is array (0 .. 7)
     of GPIOF_PIOCFGRL_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port F PIO control low register
   type GPIOF_PIOCFGRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : HAL.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOF_PIOCFGRL_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_PIOCFGRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOF_PIOCFGRH_PIOCFG array element
   subtype GPIOF_PIOCFGRH_PIOCFG_Element is HAL.UInt4;

   --  GPIOF_PIOCFGRH_PIOCFG array
   type GPIOF_PIOCFGRH_PIOCFG_Field_Array is array (8 .. 15)
     of GPIOF_PIOCFGRH_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port F PIO control high register
   type GPIOF_PIOCFGRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : HAL.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOF_PIOCFGRH_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_PIOCFGRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOF_HWCFGR10_AHB_IOP_Field is HAL.UInt4;
   subtype GPIOF_HWCFGR10_AFSIZE_CFG_Field is HAL.UInt4;
   subtype GPIOF_HWCFGR10_SPEED_CFG_Field is HAL.UInt4;
   subtype GPIOF_HWCFGR10_LOCK_CFG_Field is HAL.UInt4;
   subtype GPIOF_HWCFGR10_SEC_CFG_Field is HAL.UInt4;
   subtype GPIOF_HWCFGR10_OR_CFG_Field is HAL.UInt4;

   --  GPIO port F hardware configuration register 10
   type GPIOF_HWCFGR10_Register is record
      --  Read-only. Bus interface selection
      AHB_IOP        : GPIOF_HWCFGR10_AHB_IOP_Field;
      --  Read-only. Number of AF available for each I/O (accepted value: 1 to
      --  4)
      AFSIZE_CFG     : GPIOF_HWCFGR10_AFSIZE_CFG_Field;
      --  Read-only. Number of speed lines for each I/O
      SPEED_CFG      : GPIOF_HWCFGR10_SPEED_CFG_Field;
      --  Read-only. Lock mechanism activation
      LOCK_CFG       : GPIOF_HWCFGR10_LOCK_CFG_Field;
      --  Read-only. Security activation
      SEC_CFG        : GPIOF_HWCFGR10_SEC_CFG_Field;
      --  Read-only. Option register configuration
      OR_CFG         : GPIOF_HWCFGR10_OR_CFG_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_HWCFGR10_Register use record
      AHB_IOP        at 0 range 0 .. 3;
      AFSIZE_CFG     at 0 range 4 .. 7;
      SPEED_CFG      at 0 range 8 .. 11;
      LOCK_CFG       at 0 range 12 .. 15;
      SEC_CFG        at 0 range 16 .. 19;
      OR_CFG         at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPIOF_HWCFGR9_EN_IO_Field is HAL.UInt16;

   --  GPIO port F hardware configuration register 9
   type GPIOF_HWCFGR9_Register is record
      --  Read-only. Presence granularity, each bit indicate the I/O presence
      EN_IO          : GPIOF_HWCFGR9_EN_IO_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_HWCFGR9_Register use record
      EN_IO          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOF_HWCFGR8_FAST_AF_IO array element
   subtype GPIOF_HWCFGR8_FAST_AF_IO_Element is HAL.UInt4;

   --  GPIOF_HWCFGR8_FAST_AF_IO array
   type GPIOF_HWCFGR8_FAST_AF_IO_Field_Array is array (8 .. 15)
     of GPIOF_HWCFGR8_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port F hardware configuration register 8
   type GPIOF_HWCFGR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : HAL.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOF_HWCFGR8_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_HWCFGR8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOF_HWCFGR7_FAST_AF_IO array element
   subtype GPIOF_HWCFGR7_FAST_AF_IO_Element is HAL.UInt4;

   --  GPIOF_HWCFGR7_FAST_AF_IO array
   type GPIOF_HWCFGR7_FAST_AF_IO_Field_Array is array (0 .. 7)
     of GPIOF_HWCFGR7_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port F hardware configuration register 7
   type GPIOF_HWCFGR7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : HAL.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOF_HWCFGR7_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_HWCFGR7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOF_HWCFGR3_ODR_RES_Field is HAL.UInt16;
   subtype GPIOF_HWCFGR3_OTYPER_RES_Field is HAL.UInt16;

   --  GPIO port F hardware configuration register 3
   type GPIOF_HWCFGR3_Register is record
      --  Read-only. Output data register reset value
      ODR_RES    : GPIOF_HWCFGR3_ODR_RES_Field;
      --  Read-only. Output type register reset value
      OTYPER_RES : GPIOF_HWCFGR3_OTYPER_RES_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_HWCFGR3_Register use record
      ODR_RES    at 0 range 0 .. 15;
      OTYPER_RES at 0 range 16 .. 31;
   end record;

   subtype GPIOF_HWCFGR0_OR_RES_Field is HAL.UInt16;

   --  GPIO port F hardware configuration register 0
   type GPIOF_HWCFGR0_Register is record
      --  Read-only. Option register reset value
      OR_RES         : GPIOF_HWCFGR0_OR_RES_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_HWCFGR0_Register use record
      OR_RES         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPIOF_VERR_MINREV_Field is HAL.UInt4;
   subtype GPIOF_VERR_MAJREV_Field is HAL.UInt4;

   --  GPIO port F version register
   type GPIOF_VERR_Register is record
      --  Read-only. GPIO minor revision
      MINREV        : GPIOF_VERR_MINREV_Field;
      --  Read-only. GPIO major revision
      MAJREV        : GPIOF_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-purpose I/Os
   type GPIOF_Peripheral is record
      --  GPIO port F mode register
      GPIOF_MODER     : aliased GPIOF_MODER_Register;
      --  GPIO port F output type register
      GPIOF_OTYPER    : aliased GPIOF_OTYPER_Register;
      --  GPIO port F output speed register
      GPIOF_OSPEEDR   : aliased GPIOF_OSPEEDR_Register;
      --  GPIO port F pull-up/pull-down register
      GPIOF_PUPDR     : aliased GPIOF_PUPDR_Register;
      --  GPIO port F input data register
      GPIOF_IDR       : aliased GPIOF_IDR_Register;
      --  GPIO port F output data register
      GPIOF_ODR       : aliased GPIOF_ODR_Register;
      --  GPIO port F bit set/reset register
      GPIOF_BSRR      : aliased GPIOF_BSRR_Register;
      --  GPIO port F configuration lock register
      GPIOF_LCKR      : aliased GPIOF_LCKR_Register;
      --  GPIO port F alternate function low register
      GPIOF_AFRL      : aliased GPIOF_AFRL_Register;
      --  GPIO port F alternate function high register
      GPIOF_AFRH      : aliased GPIOF_AFRH_Register;
      --  GPIO port F bit reset register
      GPIOF_BRR       : aliased GPIOF_BRR_Register;
      --  GPIO port F secure configuration register
      GPIOF_SECCFGR   : aliased GPIOF_SECCFGR_Register;
      --  GPIO port F privileged configuration register
      GPIOF_PRIVCFGR  : aliased GPIOF_PRIVCFGR_Register;
      --  GPIO port F resource configuration lock register
      GPIOF_RCFGLOCKR : aliased GPIOF_RCFGLOCKR_Register;
      --  GPIO port F delay low register
      GPIOF_DELAYRL   : aliased GPIOF_DELAYRL_Register;
      --  GPIO port F delay high register
      GPIOF_DELAYRH   : aliased GPIOF_DELAYRH_Register;
      --  GPIO port F PIO control low register
      GPIOF_PIOCFGRL  : aliased GPIOF_PIOCFGRL_Register;
      --  GPIO port F PIO control high register
      GPIOF_PIOCFGRH  : aliased GPIOF_PIOCFGRH_Register;
      --  GPIO port F hardware configuration register 10
      GPIOF_HWCFGR10  : aliased GPIOF_HWCFGR10_Register;
      --  GPIO port F hardware configuration register 9
      GPIOF_HWCFGR9   : aliased GPIOF_HWCFGR9_Register;
      --  GPIO port F hardware configuration register 8
      GPIOF_HWCFGR8   : aliased GPIOF_HWCFGR8_Register;
      --  GPIO port F hardware configuration register 7
      GPIOF_HWCFGR7   : aliased GPIOF_HWCFGR7_Register;
      --  GPIO port F hardware configuration register 6
      GPIOF_HWCFGR6   : aliased HAL.UInt32;
      --  GPIO port F hardware configuration register 5
      GPIOF_HWCFGR5   : aliased HAL.UInt32;
      --  GPIO port F hardware configuration register 4
      GPIOF_HWCFGR4   : aliased HAL.UInt32;
      --  GPIO port F hardware configuration register 3
      GPIOF_HWCFGR3   : aliased GPIOF_HWCFGR3_Register;
      --  GPIO port F hardware configuration register 2
      GPIOF_HWCFGR2   : aliased HAL.UInt32;
      --  GPIO port F hardware configuration register 1
      GPIOF_HWCFGR1   : aliased HAL.UInt32;
      --  GPIO port F hardware configuration register 0
      GPIOF_HWCFGR0   : aliased GPIOF_HWCFGR0_Register;
      --  GPIO port F version register
      GPIOF_VERR      : aliased GPIOF_VERR_Register;
      --  GPIO port F identification register
      GPIOF_IPIDR     : aliased HAL.UInt32;
      --  GPIO port F size identification register
      GPIOF_SIDR      : aliased HAL.UInt32;
   end record
     with Volatile;

   for GPIOF_Peripheral use record
      GPIOF_MODER     at 16#0# range 0 .. 31;
      GPIOF_OTYPER    at 16#4# range 0 .. 31;
      GPIOF_OSPEEDR   at 16#8# range 0 .. 31;
      GPIOF_PUPDR     at 16#C# range 0 .. 31;
      GPIOF_IDR       at 16#10# range 0 .. 31;
      GPIOF_ODR       at 16#14# range 0 .. 31;
      GPIOF_BSRR      at 16#18# range 0 .. 31;
      GPIOF_LCKR      at 16#1C# range 0 .. 31;
      GPIOF_AFRL      at 16#20# range 0 .. 31;
      GPIOF_AFRH      at 16#24# range 0 .. 31;
      GPIOF_BRR       at 16#28# range 0 .. 31;
      GPIOF_SECCFGR   at 16#30# range 0 .. 31;
      GPIOF_PRIVCFGR  at 16#34# range 0 .. 31;
      GPIOF_RCFGLOCKR at 16#38# range 0 .. 31;
      GPIOF_DELAYRL   at 16#40# range 0 .. 31;
      GPIOF_DELAYRH   at 16#44# range 0 .. 31;
      GPIOF_PIOCFGRL  at 16#48# range 0 .. 31;
      GPIOF_PIOCFGRH  at 16#4C# range 0 .. 31;
      GPIOF_HWCFGR10  at 16#3C8# range 0 .. 31;
      GPIOF_HWCFGR9   at 16#3CC# range 0 .. 31;
      GPIOF_HWCFGR8   at 16#3D0# range 0 .. 31;
      GPIOF_HWCFGR7   at 16#3D4# range 0 .. 31;
      GPIOF_HWCFGR6   at 16#3D8# range 0 .. 31;
      GPIOF_HWCFGR5   at 16#3DC# range 0 .. 31;
      GPIOF_HWCFGR4   at 16#3E0# range 0 .. 31;
      GPIOF_HWCFGR3   at 16#3E4# range 0 .. 31;
      GPIOF_HWCFGR2   at 16#3E8# range 0 .. 31;
      GPIOF_HWCFGR1   at 16#3EC# range 0 .. 31;
      GPIOF_HWCFGR0   at 16#3F0# range 0 .. 31;
      GPIOF_VERR      at 16#3F4# range 0 .. 31;
      GPIOF_IPIDR     at 16#3F8# range 0 .. 31;
      GPIOF_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  General-purpose I/Os
   GPIOF_Periph : aliased GPIOF_Peripheral
     with Import, Address => GPIOF_Base;

end STM32_SVD.GPIOF;
