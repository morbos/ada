--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  General-purpose I/Os
package STM32_SVD.GPIOP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  GPIOP_MODER_MODE array element
   subtype GPIOP_MODER_MODE_Element is HAL.UInt2;

   --  GPIOP_MODER_MODE array
   type GPIOP_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOP_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port P mode register
   type GPIOP_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : HAL.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOP_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOP_OTYPER_OT array
   type GPIOP_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOP_OTYPER_OT
   type GPIOP_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : HAL.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOP_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOP_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port P output type register
   type GPIOP_OTYPER_Register is record
      --  Port x configuration I/O pin y
      OT             : GPIOP_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOP_OSPEEDR_OSPEED array element
   subtype GPIOP_OSPEEDR_OSPEED_Element is HAL.UInt2;

   --  GPIOP_OSPEEDR_OSPEED array
   type GPIOP_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOP_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port P output speed register
   type GPIOP_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : HAL.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOP_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOP_PUPDR_PUPD array element
   subtype GPIOP_PUPDR_PUPD_Element is HAL.UInt2;

   --  GPIOP_PUPDR_PUPD array
   type GPIOP_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOP_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port P pull-up/pull-down register
   type GPIOP_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : HAL.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOP_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOP_IDR_ID array
   type GPIOP_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOP_IDR_ID
   type GPIOP_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : HAL.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOP_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOP_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port P input data register
   type GPIOP_IDR_Register is record
      --  Read-only. Port x input data I/O pin y
      ID             : GPIOP_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOP_ODR_OD array
   type GPIOP_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOP_ODR_OD
   type GPIOP_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : HAL.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOP_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOP_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port P output data register
   type GPIOP_ODR_Register is record
      --  Port x output data I/O pin y
      OD             : GPIOP_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOP_BSRR_BS array
   type GPIOP_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOP_BSRR_BS
   type GPIOP_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : HAL.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOP_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOP_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOP_BSRR_BR array
   type GPIOP_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOP_BSRR_BR
   type GPIOP_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : HAL.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOP_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOP_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port P bit set/reset register
   type GPIOP_BSRR_Register is record
      --  Write-only. Port x set I/O pin y
      BS : GPIOP_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y
      BR : GPIOP_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOP_LCKR_LCK array
   type GPIOP_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOP_LCKR_LCK
   type GPIOP_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : HAL.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOP_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOP_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port P configuration lock register
   type GPIOP_LCKR_Register is record
      --  Port x lock I/O pin y
      LCK            : GPIOP_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOP_AFRL_AFSEL array element
   subtype GPIOP_AFRL_AFSEL_Element is HAL.UInt4;

   --  GPIOP_AFRL_AFSEL array
   type GPIOP_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOP_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port P alternate function low register
   type GPIOP_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : HAL.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOP_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOP_AFRH_AFSEL array element
   subtype GPIOP_AFRH_AFSEL_Element is HAL.UInt4;

   --  GPIOP_AFRH_AFSEL array
   type GPIOP_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOP_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port P alternate function high register
   type GPIOP_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : HAL.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOP_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOP_BRR_BR array
   type GPIOP_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOP_BRR_BR
   type GPIOP_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : HAL.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOP_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOP_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port P bit reset register
   type GPIOP_BRR_Register is record
      --  Write-only. Port x reset IO pin y
      BR             : GPIOP_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOP_SECCFGR_SEC array
   type GPIOP_SECCFGR_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOP_SECCFGR_SEC
   type GPIOP_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt16;
         when True =>
            --  SEC as an array
            Arr : GPIOP_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOP_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port P secure configuration register
   type GPIOP_SECCFGR_Register is record
      --  I/O pin y of Port x security configuration
      SEC            : GPIOP_SECCFGR_SEC_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOP_PRIVCFGR_PRIV array
   type GPIOP_PRIVCFGR_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOP_PRIVCFGR_PRIV
   type GPIOP_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt16;
         when True =>
            --  PRIV as an array
            Arr : GPIOP_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOP_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port P privileged configuration register
   type GPIOP_PRIVCFGR_Register is record
      --  I/O pin y of Port x privilege configuration
      PRIV           : GPIOP_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOP_RCFGLOCKR_RLOCK array
   type GPIOP_RCFGLOCKR_RLOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOP_RCFGLOCKR_RLOCK
   type GPIOP_RCFGLOCKR_RLOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : HAL.UInt16;
         when True =>
            --  RLOCK as an array
            Arr : GPIOP_RCFGLOCKR_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOP_RCFGLOCKR_RLOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port P resource configuration lock register
   type GPIOP_RCFGLOCKR_Register is record
      --  I/O pin y of port x resource lock
      RLOCK          : GPIOP_RCFGLOCKR_RLOCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_RCFGLOCKR_Register use record
      RLOCK          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOP_DELAYRL_DELAY array element
   subtype GPIOP_DELAYRL_DELAY_Element is HAL.UInt4;

   --  GPIOP_DELAYRL_DELAY array
   type GPIOP_DELAYRL_DELAY_Field_Array is array (0 .. 7)
     of GPIOP_DELAYRL_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port P delay low register
   type GPIOP_DELAYRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : HAL.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOP_DELAYRL_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_DELAYRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOP_DELAYRH_DELAY array element
   subtype GPIOP_DELAYRH_DELAY_Element is HAL.UInt4;

   --  GPIOP_DELAYRH_DELAY array
   type GPIOP_DELAYRH_DELAY_Field_Array is array (8 .. 15)
     of GPIOP_DELAYRH_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port P delay high register
   type GPIOP_DELAYRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : HAL.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOP_DELAYRH_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_DELAYRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOP_PIOCFGRL_PIOCFG array element
   subtype GPIOP_PIOCFGRL_PIOCFG_Element is HAL.UInt4;

   --  GPIOP_PIOCFGRL_PIOCFG array
   type GPIOP_PIOCFGRL_PIOCFG_Field_Array is array (0 .. 7)
     of GPIOP_PIOCFGRL_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port P PIO control low register
   type GPIOP_PIOCFGRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : HAL.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOP_PIOCFGRL_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_PIOCFGRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOP_PIOCFGRH_PIOCFG array element
   subtype GPIOP_PIOCFGRH_PIOCFG_Element is HAL.UInt4;

   --  GPIOP_PIOCFGRH_PIOCFG array
   type GPIOP_PIOCFGRH_PIOCFG_Field_Array is array (8 .. 15)
     of GPIOP_PIOCFGRH_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port P PIO control high register
   type GPIOP_PIOCFGRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : HAL.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOP_PIOCFGRH_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_PIOCFGRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOP_HWCFGR10_AHB_IOP_Field is HAL.UInt4;
   subtype GPIOP_HWCFGR10_AFSIZE_CFG_Field is HAL.UInt4;
   subtype GPIOP_HWCFGR10_SPEED_CFG_Field is HAL.UInt4;
   subtype GPIOP_HWCFGR10_LOCK_CFG_Field is HAL.UInt4;
   subtype GPIOP_HWCFGR10_SEC_CFG_Field is HAL.UInt4;
   subtype GPIOP_HWCFGR10_OR_CFG_Field is HAL.UInt4;

   --  GPIO port P hardware configuration register 10
   type GPIOP_HWCFGR10_Register is record
      --  Read-only. Bus interface selection
      AHB_IOP        : GPIOP_HWCFGR10_AHB_IOP_Field;
      --  Read-only. Number of AF available for each I/O (accepted value: 1 to
      --  4)
      AFSIZE_CFG     : GPIOP_HWCFGR10_AFSIZE_CFG_Field;
      --  Read-only. Number of speed lines for each I/O
      SPEED_CFG      : GPIOP_HWCFGR10_SPEED_CFG_Field;
      --  Read-only. Lock mechanism activation
      LOCK_CFG       : GPIOP_HWCFGR10_LOCK_CFG_Field;
      --  Read-only. Security activation
      SEC_CFG        : GPIOP_HWCFGR10_SEC_CFG_Field;
      --  Read-only. Option register configuration
      OR_CFG         : GPIOP_HWCFGR10_OR_CFG_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_HWCFGR10_Register use record
      AHB_IOP        at 0 range 0 .. 3;
      AFSIZE_CFG     at 0 range 4 .. 7;
      SPEED_CFG      at 0 range 8 .. 11;
      LOCK_CFG       at 0 range 12 .. 15;
      SEC_CFG        at 0 range 16 .. 19;
      OR_CFG         at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPIOP_HWCFGR9_EN_IO_Field is HAL.UInt16;

   --  GPIO port P hardware configuration register 9
   type GPIOP_HWCFGR9_Register is record
      --  Read-only. Presence granularity, each bit indicate the I/O presence
      EN_IO          : GPIOP_HWCFGR9_EN_IO_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_HWCFGR9_Register use record
      EN_IO          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOP_HWCFGR8_FAST_AF_IO array element
   subtype GPIOP_HWCFGR8_FAST_AF_IO_Element is HAL.UInt4;

   --  GPIOP_HWCFGR8_FAST_AF_IO array
   type GPIOP_HWCFGR8_FAST_AF_IO_Field_Array is array (8 .. 15)
     of GPIOP_HWCFGR8_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port P hardware configuration register 8
   type GPIOP_HWCFGR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : HAL.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOP_HWCFGR8_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_HWCFGR8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOP_HWCFGR7_FAST_AF_IO array element
   subtype GPIOP_HWCFGR7_FAST_AF_IO_Element is HAL.UInt4;

   --  GPIOP_HWCFGR7_FAST_AF_IO array
   type GPIOP_HWCFGR7_FAST_AF_IO_Field_Array is array (0 .. 7)
     of GPIOP_HWCFGR7_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port P hardware configuration register 7
   type GPIOP_HWCFGR7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : HAL.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOP_HWCFGR7_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_HWCFGR7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOP_HWCFGR3_ODR_RES_Field is HAL.UInt16;
   subtype GPIOP_HWCFGR3_OTYPER_RES_Field is HAL.UInt16;

   --  GPIO port P hardware configuration register 3
   type GPIOP_HWCFGR3_Register is record
      --  Read-only. Output data register reset value
      ODR_RES    : GPIOP_HWCFGR3_ODR_RES_Field;
      --  Read-only. Output type register reset value
      OTYPER_RES : GPIOP_HWCFGR3_OTYPER_RES_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_HWCFGR3_Register use record
      ODR_RES    at 0 range 0 .. 15;
      OTYPER_RES at 0 range 16 .. 31;
   end record;

   subtype GPIOP_HWCFGR0_OR_RES_Field is HAL.UInt16;

   --  GPIO port P hardware configuration register 0
   type GPIOP_HWCFGR0_Register is record
      --  Read-only. Option register reset value
      OR_RES         : GPIOP_HWCFGR0_OR_RES_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_HWCFGR0_Register use record
      OR_RES         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPIOP_VERR_MINREV_Field is HAL.UInt4;
   subtype GPIOP_VERR_MAJREV_Field is HAL.UInt4;

   --  GPIO port P version register
   type GPIOP_VERR_Register is record
      --  Read-only. GPIO minor revision
      MINREV        : GPIOP_VERR_MINREV_Field;
      --  Read-only. GPIO major revision
      MAJREV        : GPIOP_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOP_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-purpose I/Os
   type GPIOP_Peripheral is record
      --  GPIO port P mode register
      GPIOP_MODER     : aliased GPIOP_MODER_Register;
      --  GPIO port P output type register
      GPIOP_OTYPER    : aliased GPIOP_OTYPER_Register;
      --  GPIO port P output speed register
      GPIOP_OSPEEDR   : aliased GPIOP_OSPEEDR_Register;
      --  GPIO port P pull-up/pull-down register
      GPIOP_PUPDR     : aliased GPIOP_PUPDR_Register;
      --  GPIO port P input data register
      GPIOP_IDR       : aliased GPIOP_IDR_Register;
      --  GPIO port P output data register
      GPIOP_ODR       : aliased GPIOP_ODR_Register;
      --  GPIO port P bit set/reset register
      GPIOP_BSRR      : aliased GPIOP_BSRR_Register;
      --  GPIO port P configuration lock register
      GPIOP_LCKR      : aliased GPIOP_LCKR_Register;
      --  GPIO port P alternate function low register
      GPIOP_AFRL      : aliased GPIOP_AFRL_Register;
      --  GPIO port P alternate function high register
      GPIOP_AFRH      : aliased GPIOP_AFRH_Register;
      --  GPIO port P bit reset register
      GPIOP_BRR       : aliased GPIOP_BRR_Register;
      --  GPIO port P secure configuration register
      GPIOP_SECCFGR   : aliased GPIOP_SECCFGR_Register;
      --  GPIO port P privileged configuration register
      GPIOP_PRIVCFGR  : aliased GPIOP_PRIVCFGR_Register;
      --  GPIO port P resource configuration lock register
      GPIOP_RCFGLOCKR : aliased GPIOP_RCFGLOCKR_Register;
      --  GPIO port P delay low register
      GPIOP_DELAYRL   : aliased GPIOP_DELAYRL_Register;
      --  GPIO port P delay high register
      GPIOP_DELAYRH   : aliased GPIOP_DELAYRH_Register;
      --  GPIO port P PIO control low register
      GPIOP_PIOCFGRL  : aliased GPIOP_PIOCFGRL_Register;
      --  GPIO port P PIO control high register
      GPIOP_PIOCFGRH  : aliased GPIOP_PIOCFGRH_Register;
      --  GPIO port P hardware configuration register 10
      GPIOP_HWCFGR10  : aliased GPIOP_HWCFGR10_Register;
      --  GPIO port P hardware configuration register 9
      GPIOP_HWCFGR9   : aliased GPIOP_HWCFGR9_Register;
      --  GPIO port P hardware configuration register 8
      GPIOP_HWCFGR8   : aliased GPIOP_HWCFGR8_Register;
      --  GPIO port P hardware configuration register 7
      GPIOP_HWCFGR7   : aliased GPIOP_HWCFGR7_Register;
      --  GPIO port P hardware configuration register 6
      GPIOP_HWCFGR6   : aliased HAL.UInt32;
      --  GPIO port P hardware configuration register 5
      GPIOP_HWCFGR5   : aliased HAL.UInt32;
      --  GPIO port P hardware configuration register 4
      GPIOP_HWCFGR4   : aliased HAL.UInt32;
      --  GPIO port P hardware configuration register 3
      GPIOP_HWCFGR3   : aliased GPIOP_HWCFGR3_Register;
      --  GPIO port P hardware configuration register 2
      GPIOP_HWCFGR2   : aliased HAL.UInt32;
      --  GPIO port P hardware configuration register 1
      GPIOP_HWCFGR1   : aliased HAL.UInt32;
      --  GPIO port P hardware configuration register 0
      GPIOP_HWCFGR0   : aliased GPIOP_HWCFGR0_Register;
      --  GPIO port P version register
      GPIOP_VERR      : aliased GPIOP_VERR_Register;
      --  GPIO port P identification register
      GPIOP_IPIDR     : aliased HAL.UInt32;
      --  GPIO port P size identification register
      GPIOP_SIDR      : aliased HAL.UInt32;
   end record
     with Volatile;

   for GPIOP_Peripheral use record
      GPIOP_MODER     at 16#0# range 0 .. 31;
      GPIOP_OTYPER    at 16#4# range 0 .. 31;
      GPIOP_OSPEEDR   at 16#8# range 0 .. 31;
      GPIOP_PUPDR     at 16#C# range 0 .. 31;
      GPIOP_IDR       at 16#10# range 0 .. 31;
      GPIOP_ODR       at 16#14# range 0 .. 31;
      GPIOP_BSRR      at 16#18# range 0 .. 31;
      GPIOP_LCKR      at 16#1C# range 0 .. 31;
      GPIOP_AFRL      at 16#20# range 0 .. 31;
      GPIOP_AFRH      at 16#24# range 0 .. 31;
      GPIOP_BRR       at 16#28# range 0 .. 31;
      GPIOP_SECCFGR   at 16#30# range 0 .. 31;
      GPIOP_PRIVCFGR  at 16#34# range 0 .. 31;
      GPIOP_RCFGLOCKR at 16#38# range 0 .. 31;
      GPIOP_DELAYRL   at 16#40# range 0 .. 31;
      GPIOP_DELAYRH   at 16#44# range 0 .. 31;
      GPIOP_PIOCFGRL  at 16#48# range 0 .. 31;
      GPIOP_PIOCFGRH  at 16#4C# range 0 .. 31;
      GPIOP_HWCFGR10  at 16#3C8# range 0 .. 31;
      GPIOP_HWCFGR9   at 16#3CC# range 0 .. 31;
      GPIOP_HWCFGR8   at 16#3D0# range 0 .. 31;
      GPIOP_HWCFGR7   at 16#3D4# range 0 .. 31;
      GPIOP_HWCFGR6   at 16#3D8# range 0 .. 31;
      GPIOP_HWCFGR5   at 16#3DC# range 0 .. 31;
      GPIOP_HWCFGR4   at 16#3E0# range 0 .. 31;
      GPIOP_HWCFGR3   at 16#3E4# range 0 .. 31;
      GPIOP_HWCFGR2   at 16#3E8# range 0 .. 31;
      GPIOP_HWCFGR1   at 16#3EC# range 0 .. 31;
      GPIOP_HWCFGR0   at 16#3F0# range 0 .. 31;
      GPIOP_VERR      at 16#3F4# range 0 .. 31;
      GPIOP_IPIDR     at 16#3F8# range 0 .. 31;
      GPIOP_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  General-purpose I/Os
   GPIOP_Periph : aliased GPIOP_Peripheral
     with Import, Address => GPIOP_Base;

end STM32_SVD.GPIOP;
