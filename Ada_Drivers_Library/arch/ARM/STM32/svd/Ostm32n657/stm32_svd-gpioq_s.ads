--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  General-purpose I/Os
package STM32_SVD.GPIOQ_S is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  GPIOQ_MODER_MODE array element
   subtype GPIOQ_MODER_MODE_Element is HAL.UInt2;

   --  GPIOQ_MODER_MODE array
   type GPIOQ_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOQ_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port Q mode register
   type GPIOQ_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : HAL.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOQ_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOQ_OTYPER_OT array
   type GPIOQ_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOQ_OTYPER_OT
   type GPIOQ_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : HAL.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOQ_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOQ_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Q output type register
   type GPIOQ_OTYPER_Register is record
      --  Port x configuration I/O pin y
      OT             : GPIOQ_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOQ_OSPEEDR_OSPEED array element
   subtype GPIOQ_OSPEEDR_OSPEED_Element is HAL.UInt2;

   --  GPIOQ_OSPEEDR_OSPEED array
   type GPIOQ_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOQ_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port Q output speed register
   type GPIOQ_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : HAL.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOQ_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOQ_PUPDR_PUPD array element
   subtype GPIOQ_PUPDR_PUPD_Element is HAL.UInt2;

   --  GPIOQ_PUPDR_PUPD array
   type GPIOQ_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOQ_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port Q pull-up/pull-down register
   type GPIOQ_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : HAL.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOQ_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOQ_IDR_ID array
   type GPIOQ_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOQ_IDR_ID
   type GPIOQ_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : HAL.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOQ_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOQ_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Q input data register
   type GPIOQ_IDR_Register is record
      --  Read-only. Port x input data I/O pin y
      ID             : GPIOQ_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOQ_ODR_OD array
   type GPIOQ_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOQ_ODR_OD
   type GPIOQ_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : HAL.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOQ_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOQ_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Q output data register
   type GPIOQ_ODR_Register is record
      --  Port x output data I/O pin y
      OD             : GPIOQ_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOQ_BSRR_BS array
   type GPIOQ_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOQ_BSRR_BS
   type GPIOQ_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : HAL.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOQ_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOQ_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOQ_BSRR_BR array
   type GPIOQ_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOQ_BSRR_BR
   type GPIOQ_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : HAL.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOQ_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOQ_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Q bit set/reset register
   type GPIOQ_BSRR_Register is record
      --  Write-only. Port x set I/O pin y
      BS : GPIOQ_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y
      BR : GPIOQ_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOQ_LCKR_LCK array
   type GPIOQ_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOQ_LCKR_LCK
   type GPIOQ_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : HAL.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOQ_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOQ_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Q configuration lock register
   type GPIOQ_LCKR_Register is record
      --  Port x lock I/O pin y
      LCK            : GPIOQ_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOQ_AFRL_AFSEL array element
   subtype GPIOQ_AFRL_AFSEL_Element is HAL.UInt4;

   --  GPIOQ_AFRL_AFSEL array
   type GPIOQ_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOQ_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port Q alternate function low register
   type GPIOQ_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : HAL.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOQ_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOQ_AFRH_AFSEL array element
   subtype GPIOQ_AFRH_AFSEL_Element is HAL.UInt4;

   --  GPIOQ_AFRH_AFSEL array
   type GPIOQ_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOQ_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port Q alternate function high register
   type GPIOQ_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : HAL.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOQ_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOQ_BRR_BR array
   type GPIOQ_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOQ_BRR_BR
   type GPIOQ_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : HAL.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOQ_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOQ_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Q bit reset register
   type GPIOQ_BRR_Register is record
      --  Write-only. Port x reset IO pin y
      BR             : GPIOQ_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOQ_SECCFGR_SEC array
   type GPIOQ_SECCFGR_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOQ_SECCFGR_SEC
   type GPIOQ_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt16;
         when True =>
            --  SEC as an array
            Arr : GPIOQ_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOQ_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Q secure configuration register
   type GPIOQ_SECCFGR_Register is record
      --  I/O pin y of Port x security configuration
      SEC            : GPIOQ_SECCFGR_SEC_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOQ_PRIVCFGR_PRIV array
   type GPIOQ_PRIVCFGR_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOQ_PRIVCFGR_PRIV
   type GPIOQ_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt16;
         when True =>
            --  PRIV as an array
            Arr : GPIOQ_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOQ_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Q privileged configuration register
   type GPIOQ_PRIVCFGR_Register is record
      --  I/O pin y of Port x privilege configuration
      PRIV           : GPIOQ_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOQ_RCFGLOCKR_RLOCK array
   type GPIOQ_RCFGLOCKR_RLOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOQ_RCFGLOCKR_RLOCK
   type GPIOQ_RCFGLOCKR_RLOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : HAL.UInt16;
         when True =>
            --  RLOCK as an array
            Arr : GPIOQ_RCFGLOCKR_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOQ_RCFGLOCKR_RLOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Q resource configuration lock register
   type GPIOQ_RCFGLOCKR_Register is record
      --  I/O pin y of port x resource lock
      RLOCK          : GPIOQ_RCFGLOCKR_RLOCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_RCFGLOCKR_Register use record
      RLOCK          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOQ_DELAYRL_DELAY array element
   subtype GPIOQ_DELAYRL_DELAY_Element is HAL.UInt4;

   --  GPIOQ_DELAYRL_DELAY array
   type GPIOQ_DELAYRL_DELAY_Field_Array is array (0 .. 7)
     of GPIOQ_DELAYRL_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port Q delay low register
   type GPIOQ_DELAYRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : HAL.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOQ_DELAYRL_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_DELAYRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOQ_DELAYRH_DELAY array element
   subtype GPIOQ_DELAYRH_DELAY_Element is HAL.UInt4;

   --  GPIOQ_DELAYRH_DELAY array
   type GPIOQ_DELAYRH_DELAY_Field_Array is array (8 .. 15)
     of GPIOQ_DELAYRH_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port Q delay high register
   type GPIOQ_DELAYRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : HAL.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOQ_DELAYRH_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_DELAYRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOQ_PIOCFGRL_PIOCFG array element
   subtype GPIOQ_PIOCFGRL_PIOCFG_Element is HAL.UInt4;

   --  GPIOQ_PIOCFGRL_PIOCFG array
   type GPIOQ_PIOCFGRL_PIOCFG_Field_Array is array (0 .. 7)
     of GPIOQ_PIOCFGRL_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port Q PIO control low register
   type GPIOQ_PIOCFGRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : HAL.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOQ_PIOCFGRL_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_PIOCFGRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOQ_PIOCFGRH_PIOCFG array element
   subtype GPIOQ_PIOCFGRH_PIOCFG_Element is HAL.UInt4;

   --  GPIOQ_PIOCFGRH_PIOCFG array
   type GPIOQ_PIOCFGRH_PIOCFG_Field_Array is array (8 .. 15)
     of GPIOQ_PIOCFGRH_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port Q PIO control high register
   type GPIOQ_PIOCFGRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : HAL.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOQ_PIOCFGRH_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_PIOCFGRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOQ_HWCFGR10_AHB_IOP_Field is HAL.UInt4;
   subtype GPIOQ_HWCFGR10_AFSIZE_CFG_Field is HAL.UInt4;
   subtype GPIOQ_HWCFGR10_SPEED_CFG_Field is HAL.UInt4;
   subtype GPIOQ_HWCFGR10_LOCK_CFG_Field is HAL.UInt4;
   subtype GPIOQ_HWCFGR10_SEC_CFG_Field is HAL.UInt4;
   subtype GPIOQ_HWCFGR10_OR_CFG_Field is HAL.UInt4;

   --  GPIO port Q hardware configuration register 10
   type GPIOQ_HWCFGR10_Register is record
      --  Read-only. Bus interface selection
      AHB_IOP        : GPIOQ_HWCFGR10_AHB_IOP_Field;
      --  Read-only. Number of AF available for each I/O (accepted value: 1 to
      --  4)
      AFSIZE_CFG     : GPIOQ_HWCFGR10_AFSIZE_CFG_Field;
      --  Read-only. Number of speed lines for each I/O
      SPEED_CFG      : GPIOQ_HWCFGR10_SPEED_CFG_Field;
      --  Read-only. Lock mechanism activation
      LOCK_CFG       : GPIOQ_HWCFGR10_LOCK_CFG_Field;
      --  Read-only. Security activation
      SEC_CFG        : GPIOQ_HWCFGR10_SEC_CFG_Field;
      --  Read-only. Option register configuration
      OR_CFG         : GPIOQ_HWCFGR10_OR_CFG_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_HWCFGR10_Register use record
      AHB_IOP        at 0 range 0 .. 3;
      AFSIZE_CFG     at 0 range 4 .. 7;
      SPEED_CFG      at 0 range 8 .. 11;
      LOCK_CFG       at 0 range 12 .. 15;
      SEC_CFG        at 0 range 16 .. 19;
      OR_CFG         at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPIOQ_HWCFGR9_EN_IO_Field is HAL.UInt16;

   --  GPIO port Q hardware configuration register 9
   type GPIOQ_HWCFGR9_Register is record
      --  Read-only. Presence granularity, each bit indicate the I/O presence
      EN_IO          : GPIOQ_HWCFGR9_EN_IO_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_HWCFGR9_Register use record
      EN_IO          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOQ_HWCFGR8_FAST_AF_IO array element
   subtype GPIOQ_HWCFGR8_FAST_AF_IO_Element is HAL.UInt4;

   --  GPIOQ_HWCFGR8_FAST_AF_IO array
   type GPIOQ_HWCFGR8_FAST_AF_IO_Field_Array is array (8 .. 15)
     of GPIOQ_HWCFGR8_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port Q hardware configuration register 8
   type GPIOQ_HWCFGR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : HAL.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOQ_HWCFGR8_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_HWCFGR8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOQ_HWCFGR7_FAST_AF_IO array element
   subtype GPIOQ_HWCFGR7_FAST_AF_IO_Element is HAL.UInt4;

   --  GPIOQ_HWCFGR7_FAST_AF_IO array
   type GPIOQ_HWCFGR7_FAST_AF_IO_Field_Array is array (0 .. 7)
     of GPIOQ_HWCFGR7_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port Q hardware configuration register 7
   type GPIOQ_HWCFGR7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : HAL.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOQ_HWCFGR7_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_HWCFGR7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOQ_HWCFGR3_ODR_RES_Field is HAL.UInt16;
   subtype GPIOQ_HWCFGR3_OTYPER_RES_Field is HAL.UInt16;

   --  GPIO port Q hardware configuration register 3
   type GPIOQ_HWCFGR3_Register is record
      --  Read-only. Output data register reset value
      ODR_RES    : GPIOQ_HWCFGR3_ODR_RES_Field;
      --  Read-only. Output type register reset value
      OTYPER_RES : GPIOQ_HWCFGR3_OTYPER_RES_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_HWCFGR3_Register use record
      ODR_RES    at 0 range 0 .. 15;
      OTYPER_RES at 0 range 16 .. 31;
   end record;

   subtype GPIOQ_HWCFGR0_OR_RES_Field is HAL.UInt16;

   --  GPIO port Q hardware configuration register 0
   type GPIOQ_HWCFGR0_Register is record
      --  Read-only. Option register reset value
      OR_RES         : GPIOQ_HWCFGR0_OR_RES_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_HWCFGR0_Register use record
      OR_RES         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPIOQ_VERR_MINREV_Field is HAL.UInt4;
   subtype GPIOQ_VERR_MAJREV_Field is HAL.UInt4;

   --  GPIO port Q version register
   type GPIOQ_VERR_Register is record
      --  Read-only. GPIO minor revision
      MINREV        : GPIOQ_VERR_MINREV_Field;
      --  Read-only. GPIO major revision
      MAJREV        : GPIOQ_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOQ_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-purpose I/Os
   type GPIOQ_S_Peripheral is record
      --  GPIO port Q mode register
      GPIOQ_MODER     : aliased GPIOQ_MODER_Register;
      --  GPIO port Q output type register
      GPIOQ_OTYPER    : aliased GPIOQ_OTYPER_Register;
      --  GPIO port Q output speed register
      GPIOQ_OSPEEDR   : aliased GPIOQ_OSPEEDR_Register;
      --  GPIO port Q pull-up/pull-down register
      GPIOQ_PUPDR     : aliased GPIOQ_PUPDR_Register;
      --  GPIO port Q input data register
      GPIOQ_IDR       : aliased GPIOQ_IDR_Register;
      --  GPIO port Q output data register
      GPIOQ_ODR       : aliased GPIOQ_ODR_Register;
      --  GPIO port Q bit set/reset register
      GPIOQ_BSRR      : aliased GPIOQ_BSRR_Register;
      --  GPIO port Q configuration lock register
      GPIOQ_LCKR      : aliased GPIOQ_LCKR_Register;
      --  GPIO port Q alternate function low register
      GPIOQ_AFRL      : aliased GPIOQ_AFRL_Register;
      --  GPIO port Q alternate function high register
      GPIOQ_AFRH      : aliased GPIOQ_AFRH_Register;
      --  GPIO port Q bit reset register
      GPIOQ_BRR       : aliased GPIOQ_BRR_Register;
      --  GPIO port Q secure configuration register
      GPIOQ_SECCFGR   : aliased GPIOQ_SECCFGR_Register;
      --  GPIO port Q privileged configuration register
      GPIOQ_PRIVCFGR  : aliased GPIOQ_PRIVCFGR_Register;
      --  GPIO port Q resource configuration lock register
      GPIOQ_RCFGLOCKR : aliased GPIOQ_RCFGLOCKR_Register;
      --  GPIO port Q delay low register
      GPIOQ_DELAYRL   : aliased GPIOQ_DELAYRL_Register;
      --  GPIO port Q delay high register
      GPIOQ_DELAYRH   : aliased GPIOQ_DELAYRH_Register;
      --  GPIO port Q PIO control low register
      GPIOQ_PIOCFGRL  : aliased GPIOQ_PIOCFGRL_Register;
      --  GPIO port Q PIO control high register
      GPIOQ_PIOCFGRH  : aliased GPIOQ_PIOCFGRH_Register;
      --  GPIO port Q hardware configuration register 10
      GPIOQ_HWCFGR10  : aliased GPIOQ_HWCFGR10_Register;
      --  GPIO port Q hardware configuration register 9
      GPIOQ_HWCFGR9   : aliased GPIOQ_HWCFGR9_Register;
      --  GPIO port Q hardware configuration register 8
      GPIOQ_HWCFGR8   : aliased GPIOQ_HWCFGR8_Register;
      --  GPIO port Q hardware configuration register 7
      GPIOQ_HWCFGR7   : aliased GPIOQ_HWCFGR7_Register;
      --  GPIO port Q hardware configuration register 6
      GPIOQ_HWCFGR6   : aliased HAL.UInt32;
      --  GPIO port Q hardware configuration register 5
      GPIOQ_HWCFGR5   : aliased HAL.UInt32;
      --  GPIO port Q hardware configuration register 4
      GPIOQ_HWCFGR4   : aliased HAL.UInt32;
      --  GPIO port Q hardware configuration register 3
      GPIOQ_HWCFGR3   : aliased GPIOQ_HWCFGR3_Register;
      --  GPIO port Q hardware configuration register 2
      GPIOQ_HWCFGR2   : aliased HAL.UInt32;
      --  GPIO port Q hardware configuration register 1
      GPIOQ_HWCFGR1   : aliased HAL.UInt32;
      --  GPIO port Q hardware configuration register 0
      GPIOQ_HWCFGR0   : aliased GPIOQ_HWCFGR0_Register;
      --  GPIO port Q version register
      GPIOQ_VERR      : aliased GPIOQ_VERR_Register;
      --  GPIO port Q identification register
      GPIOQ_IPIDR     : aliased HAL.UInt32;
      --  GPIO port Q size identification register
      GPIOQ_SIDR      : aliased HAL.UInt32;
   end record
     with Volatile;

   for GPIOQ_S_Peripheral use record
      GPIOQ_MODER     at 16#0# range 0 .. 31;
      GPIOQ_OTYPER    at 16#4# range 0 .. 31;
      GPIOQ_OSPEEDR   at 16#8# range 0 .. 31;
      GPIOQ_PUPDR     at 16#C# range 0 .. 31;
      GPIOQ_IDR       at 16#10# range 0 .. 31;
      GPIOQ_ODR       at 16#14# range 0 .. 31;
      GPIOQ_BSRR      at 16#18# range 0 .. 31;
      GPIOQ_LCKR      at 16#1C# range 0 .. 31;
      GPIOQ_AFRL      at 16#20# range 0 .. 31;
      GPIOQ_AFRH      at 16#24# range 0 .. 31;
      GPIOQ_BRR       at 16#28# range 0 .. 31;
      GPIOQ_SECCFGR   at 16#30# range 0 .. 31;
      GPIOQ_PRIVCFGR  at 16#34# range 0 .. 31;
      GPIOQ_RCFGLOCKR at 16#38# range 0 .. 31;
      GPIOQ_DELAYRL   at 16#40# range 0 .. 31;
      GPIOQ_DELAYRH   at 16#44# range 0 .. 31;
      GPIOQ_PIOCFGRL  at 16#48# range 0 .. 31;
      GPIOQ_PIOCFGRH  at 16#4C# range 0 .. 31;
      GPIOQ_HWCFGR10  at 16#3C8# range 0 .. 31;
      GPIOQ_HWCFGR9   at 16#3CC# range 0 .. 31;
      GPIOQ_HWCFGR8   at 16#3D0# range 0 .. 31;
      GPIOQ_HWCFGR7   at 16#3D4# range 0 .. 31;
      GPIOQ_HWCFGR6   at 16#3D8# range 0 .. 31;
      GPIOQ_HWCFGR5   at 16#3DC# range 0 .. 31;
      GPIOQ_HWCFGR4   at 16#3E0# range 0 .. 31;
      GPIOQ_HWCFGR3   at 16#3E4# range 0 .. 31;
      GPIOQ_HWCFGR2   at 16#3E8# range 0 .. 31;
      GPIOQ_HWCFGR1   at 16#3EC# range 0 .. 31;
      GPIOQ_HWCFGR0   at 16#3F0# range 0 .. 31;
      GPIOQ_VERR      at 16#3F4# range 0 .. 31;
      GPIOQ_IPIDR     at 16#3F8# range 0 .. 31;
      GPIOQ_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  General-purpose I/Os
   GPIOQ_S_Periph : aliased GPIOQ_S_Peripheral
     with Import, Address => GPIOQ_S_Base;

end STM32_SVD.GPIOQ_S;
