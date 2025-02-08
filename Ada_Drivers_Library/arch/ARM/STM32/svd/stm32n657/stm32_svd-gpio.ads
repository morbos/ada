--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.GPIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  GPIOA_MODER_MODE array element
   subtype GPIOA_MODER_MODE_Element is HAL.UInt2;

   --  GPIOA_MODER_MODE array
   type GPIOA_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOA_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port A mode register
   type GPIOA_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : HAL.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOA_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_OTYPER_OT array
   type GPIOA_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_OTYPER_OT
   type GPIOA_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : HAL.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOA_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A output type register
   type GPIOA_OTYPER_Register is record
      --  Port x configuration I/O pin y
      OT             : GPIOA_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOA_OSPEEDR_OSPEED array element
   subtype GPIOA_OSPEEDR_OSPEED_Element is HAL.UInt2;

   --  GPIOA_OSPEEDR_OSPEED array
   type GPIOA_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOA_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port A output speed register
   type GPIOA_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : HAL.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOA_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_PUPDR_PUPD array element
   subtype GPIOA_PUPDR_PUPD_Element is HAL.UInt2;

   --  GPIOA_PUPDR_PUPD array
   type GPIOA_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOA_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port A pull-up/pull-down register
   type GPIOA_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : HAL.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOA_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_IDR_ID array
   type GPIOA_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_IDR_ID
   type GPIOA_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : HAL.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOA_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A input data register
   type GPIOA_IDR_Register is record
      --  Read-only. Port x input data I/O pin y
      ID             : GPIOA_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOA_ODR_OD array
   type GPIOA_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_ODR_OD
   type GPIOA_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : HAL.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOA_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A output data register
   type GPIOA_ODR_Register is record
      --  Port x output data I/O pin y
      OD             : GPIOA_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOA_BSRR_BS array
   type GPIOA_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_BSRR_BS
   type GPIOA_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : HAL.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOA_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOA_BSRR_BR array
   type GPIOA_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_BSRR_BR
   type GPIOA_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : HAL.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOA_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A bit set/reset register
   type GPIOA_BSRR_Register is record
      --  Write-only. Port x set I/O pin y
      BS : GPIOA_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y
      BR : GPIOA_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOA_LCKR_LCK array
   type GPIOA_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_LCKR_LCK
   type GPIOA_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : HAL.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOA_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A configuration lock register
   type GPIOA_LCKR_Register is record
      --  Port x lock I/O pin y
      LCK            : GPIOA_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOA_AFRL_AFSEL array element
   subtype GPIOA_AFRL_AFSEL_Element is HAL.UInt4;

   --  GPIOA_AFRL_AFSEL array
   type GPIOA_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOA_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port A alternate function low register
   type GPIOA_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : HAL.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOA_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_AFRH_AFSEL array element
   subtype GPIOA_AFRH_AFSEL_Element is HAL.UInt4;

   --  GPIOA_AFRH_AFSEL array
   type GPIOA_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOA_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port A alternate function high register
   type GPIOA_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : HAL.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOA_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_BRR_BR array
   type GPIOA_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_BRR_BR
   type GPIOA_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : HAL.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOA_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A bit reset register
   type GPIOA_BRR_Register is record
      --  Write-only. Port x reset IO pin y
      BR             : GPIOA_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOA_SECCFGR_SEC array
   type GPIOA_SECCFGR_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_SECCFGR_SEC
   type GPIOA_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt16;
         when True =>
            --  SEC as an array
            Arr : GPIOA_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A secure configuration register
   type GPIOA_SECCFGR_Register is record
      --  I/O pin y of Port x security configuration
      SEC            : GPIOA_SECCFGR_SEC_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOA_PRIVCFGR_PRIV array
   type GPIOA_PRIVCFGR_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_PRIVCFGR_PRIV
   type GPIOA_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt16;
         when True =>
            --  PRIV as an array
            Arr : GPIOA_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A privileged configuration register
   type GPIOA_PRIVCFGR_Register is record
      --  I/O pin y of Port x privilege configuration
      PRIV           : GPIOA_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOA_RCFGLOCKR_RLOCK array
   type GPIOA_RCFGLOCKR_RLOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_RCFGLOCKR_RLOCK
   type GPIOA_RCFGLOCKR_RLOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : HAL.UInt16;
         when True =>
            --  RLOCK as an array
            Arr : GPIOA_RCFGLOCKR_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_RCFGLOCKR_RLOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port A resource configuration lock register
   type GPIOA_RCFGLOCKR_Register is record
      --  I/O pin y of port x resource lock
      RLOCK          : GPIOA_RCFGLOCKR_RLOCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_RCFGLOCKR_Register use record
      RLOCK          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOA_DELAYRL_DELAY array element
   subtype GPIOA_DELAYRL_DELAY_Element is HAL.UInt4;

   --  GPIOA_DELAYRL_DELAY array
   type GPIOA_DELAYRL_DELAY_Field_Array is array (0 .. 7)
     of GPIOA_DELAYRL_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port A delay low register
   type GPIOA_DELAYRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : HAL.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOA_DELAYRL_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DELAYRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_DELAYRH_DELAY array element
   subtype GPIOA_DELAYRH_DELAY_Element is HAL.UInt4;

   --  GPIOA_DELAYRH_DELAY array
   type GPIOA_DELAYRH_DELAY_Field_Array is array (8 .. 15)
     of GPIOA_DELAYRH_DELAY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port A delay high register
   type GPIOA_DELAYRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DELAY as a value
            Val : HAL.UInt32;
         when True =>
            --  DELAY as an array
            Arr : GPIOA_DELAYRH_DELAY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DELAYRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_PIOCFGRL_PIOCFG array element
   subtype GPIOA_PIOCFGRL_PIOCFG_Element is HAL.UInt4;

   --  GPIOA_PIOCFGRL_PIOCFG array
   type GPIOA_PIOCFGRL_PIOCFG_Field_Array is array (0 .. 7)
     of GPIOA_PIOCFGRL_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port A PIO control low register
   type GPIOA_PIOCFGRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : HAL.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOA_PIOCFGRL_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_PIOCFGRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_PIOCFGRH_PIOCFG array element
   subtype GPIOA_PIOCFGRH_PIOCFG_Element is HAL.UInt4;

   --  GPIOA_PIOCFGRH_PIOCFG array
   type GPIOA_PIOCFGRH_PIOCFG_Field_Array is array (8 .. 15)
     of GPIOA_PIOCFGRH_PIOCFG_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port A PIO control high register
   type GPIOA_PIOCFGRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIOCFG as a value
            Val : HAL.UInt32;
         when True =>
            --  PIOCFG as an array
            Arr : GPIOA_PIOCFGRH_PIOCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_PIOCFGRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOA_HWCFGR10_AHB_IOP_Field is HAL.UInt4;
   subtype GPIOA_HWCFGR10_AFSIZE_CFG_Field is HAL.UInt4;
   subtype GPIOA_HWCFGR10_SPEED_CFG_Field is HAL.UInt4;
   subtype GPIOA_HWCFGR10_LOCK_CFG_Field is HAL.UInt4;
   subtype GPIOA_HWCFGR10_SEC_CFG_Field is HAL.UInt4;
   subtype GPIOA_HWCFGR10_OR_CFG_Field is HAL.UInt4;

   --  GPIO port A hardware configuration register 10
   type GPIOA_HWCFGR10_Register is record
      --  Read-only. Bus interface selection
      AHB_IOP        : GPIOA_HWCFGR10_AHB_IOP_Field;
      --  Read-only. Number of AF available for each I/O (accepted value: 1 to
      --  4)
      AFSIZE_CFG     : GPIOA_HWCFGR10_AFSIZE_CFG_Field;
      --  Read-only. Number of speed lines for each I/O
      SPEED_CFG      : GPIOA_HWCFGR10_SPEED_CFG_Field;
      --  Read-only. Lock mechanism activation
      LOCK_CFG       : GPIOA_HWCFGR10_LOCK_CFG_Field;
      --  Read-only. Security activation
      SEC_CFG        : GPIOA_HWCFGR10_SEC_CFG_Field;
      --  Read-only. Option register configuration
      OR_CFG         : GPIOA_HWCFGR10_OR_CFG_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_HWCFGR10_Register use record
      AHB_IOP        at 0 range 0 .. 3;
      AFSIZE_CFG     at 0 range 4 .. 7;
      SPEED_CFG      at 0 range 8 .. 11;
      LOCK_CFG       at 0 range 12 .. 15;
      SEC_CFG        at 0 range 16 .. 19;
      OR_CFG         at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPIOA_HWCFGR9_EN_IO_Field is HAL.UInt16;

   --  GPIO port A hardware configuration register 9
   type GPIOA_HWCFGR9_Register is record
      --  Read-only. Presence granularity, each bit indicate the I/O presence
      EN_IO          : GPIOA_HWCFGR9_EN_IO_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_HWCFGR9_Register use record
      EN_IO          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOA_HWCFGR8_FAST_AF_IO array element
   subtype GPIOA_HWCFGR8_FAST_AF_IO_Element is HAL.UInt4;

   --  GPIOA_HWCFGR8_FAST_AF_IO array
   type GPIOA_HWCFGR8_FAST_AF_IO_Field_Array is array (8 .. 15)
     of GPIOA_HWCFGR8_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port A hardware configuration register 8
   type GPIOA_HWCFGR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : HAL.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOA_HWCFGR8_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_HWCFGR8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_HWCFGR7_FAST_AF_IO array element
   subtype GPIOA_HWCFGR7_FAST_AF_IO_Element is HAL.UInt4;

   --  GPIOA_HWCFGR7_FAST_AF_IO array
   type GPIOA_HWCFGR7_FAST_AF_IO_Field_Array is array (0 .. 7)
     of GPIOA_HWCFGR7_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port A hardware configuration register 7
   type GPIOA_HWCFGR7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : HAL.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOA_HWCFGR7_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_HWCFGR7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOA_HWCFGR3_ODR_RES_Field is HAL.UInt16;
   subtype GPIOA_HWCFGR3_OTYPER_RES_Field is HAL.UInt16;

   --  GPIO port A hardware configuration register 3
   type GPIOA_HWCFGR3_Register is record
      --  Read-only. Output data register reset value
      ODR_RES    : GPIOA_HWCFGR3_ODR_RES_Field;
      --  Read-only. Output type register reset value
      OTYPER_RES : GPIOA_HWCFGR3_OTYPER_RES_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_HWCFGR3_Register use record
      ODR_RES    at 0 range 0 .. 15;
      OTYPER_RES at 0 range 16 .. 31;
   end record;

   subtype GPIOA_HWCFGR0_OR_RES_Field is HAL.UInt16;

   --  GPIO port A hardware configuration register 0
   type GPIOA_HWCFGR0_Register is record
      --  Read-only. Option register reset value
      OR_RES         : GPIOA_HWCFGR0_OR_RES_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_HWCFGR0_Register use record
      OR_RES         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPIOA_VERR_MINREV_Field is HAL.UInt4;
   subtype GPIOA_VERR_MAJREV_Field is HAL.UInt4;

   --  GPIO port A version register
   type GPIOA_VERR_Register is record
      --  Read-only. GPIO minor revision
      MINREV        : GPIOA_VERR_MINREV_Field;
      --  Read-only. GPIO major revision
      MAJREV        : GPIOA_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-purpose I/Os
   type GPIO_Peripheral is record
      --  GPIO port A mode register
      GPIOA_MODER     : aliased GPIOA_MODER_Register;
      --  GPIO port A output type register
      GPIOA_OTYPER    : aliased GPIOA_OTYPER_Register;
      --  GPIO port A output speed register
      GPIOA_OSPEEDR   : aliased GPIOA_OSPEEDR_Register;
      --  GPIO port A pull-up/pull-down register
      GPIOA_PUPDR     : aliased GPIOA_PUPDR_Register;
      --  GPIO port A input data register
      GPIOA_IDR       : aliased GPIOA_IDR_Register;
      --  GPIO port A output data register
      GPIOA_ODR       : aliased GPIOA_ODR_Register;
      --  GPIO port A bit set/reset register
      GPIOA_BSRR      : aliased GPIOA_BSRR_Register;
      --  GPIO port A configuration lock register
      GPIOA_LCKR      : aliased GPIOA_LCKR_Register;
      --  GPIO port A alternate function low register
      GPIOA_AFRL      : aliased GPIOA_AFRL_Register;
      --  GPIO port A alternate function high register
      GPIOA_AFRH      : aliased GPIOA_AFRH_Register;
      --  GPIO port A bit reset register
      GPIOA_BRR       : aliased GPIOA_BRR_Register;
      --  GPIO port A secure configuration register
      GPIOA_SECCFGR   : aliased GPIOA_SECCFGR_Register;
      --  GPIO port A privileged configuration register
      GPIOA_PRIVCFGR  : aliased GPIOA_PRIVCFGR_Register;
      --  GPIO port A resource configuration lock register
      GPIOA_RCFGLOCKR : aliased GPIOA_RCFGLOCKR_Register;
      --  GPIO port A delay low register
      GPIOA_DELAYRL   : aliased GPIOA_DELAYRL_Register;
      --  GPIO port A delay high register
      GPIOA_DELAYRH   : aliased GPIOA_DELAYRH_Register;
      --  GPIO port A PIO control low register
      GPIOA_PIOCFGRL  : aliased GPIOA_PIOCFGRL_Register;
      --  GPIO port A PIO control high register
      GPIOA_PIOCFGRH  : aliased GPIOA_PIOCFGRH_Register;
      --  GPIO port A hardware configuration register 10
      GPIOA_HWCFGR10  : aliased GPIOA_HWCFGR10_Register;
      --  GPIO port A hardware configuration register 9
      GPIOA_HWCFGR9   : aliased GPIOA_HWCFGR9_Register;
      --  GPIO port A hardware configuration register 8
      GPIOA_HWCFGR8   : aliased GPIOA_HWCFGR8_Register;
      --  GPIO port A hardware configuration register 7
      GPIOA_HWCFGR7   : aliased GPIOA_HWCFGR7_Register;
      --  GPIO port A hardware configuration register 6
      GPIOA_HWCFGR6   : aliased HAL.UInt32;
      --  GPIO port A hardware configuration register 5
      GPIOA_HWCFGR5   : aliased HAL.UInt32;
      --  GPIO port A hardware configuration register 4
      GPIOA_HWCFGR4   : aliased HAL.UInt32;
      --  GPIO port A hardware configuration register 3
      GPIOA_HWCFGR3   : aliased GPIOA_HWCFGR3_Register;
      --  GPIO port A hardware configuration register 2
      GPIOA_HWCFGR2   : aliased HAL.UInt32;
      --  GPIO port A hardware configuration register 1
      GPIOA_HWCFGR1   : aliased HAL.UInt32;
      --  GPIO port A hardware configuration register 0
      GPIOA_HWCFGR0   : aliased GPIOA_HWCFGR0_Register;
      --  GPIO port A version register
      GPIOA_VERR      : aliased GPIOA_VERR_Register;
      --  GPIO port A identification register
      GPIOA_IPIDR     : aliased HAL.UInt32;
      --  GPIO port A size identification register
      GPIOA_SIDR      : aliased HAL.UInt32;
   end record
     with Volatile;

   for GPIO_Peripheral use record
      GPIOA_MODER     at 16#0# range 0 .. 31;
      GPIOA_OTYPER    at 16#4# range 0 .. 31;
      GPIOA_OSPEEDR   at 16#8# range 0 .. 31;
      GPIOA_PUPDR     at 16#C# range 0 .. 31;
      GPIOA_IDR       at 16#10# range 0 .. 31;
      GPIOA_ODR       at 16#14# range 0 .. 31;
      GPIOA_BSRR      at 16#18# range 0 .. 31;
      GPIOA_LCKR      at 16#1C# range 0 .. 31;
      GPIOA_AFRL      at 16#20# range 0 .. 31;
      GPIOA_AFRH      at 16#24# range 0 .. 31;
      GPIOA_BRR       at 16#28# range 0 .. 31;
      GPIOA_SECCFGR   at 16#30# range 0 .. 31;
      GPIOA_PRIVCFGR  at 16#34# range 0 .. 31;
      GPIOA_RCFGLOCKR at 16#38# range 0 .. 31;
      GPIOA_DELAYRL   at 16#40# range 0 .. 31;
      GPIOA_DELAYRH   at 16#44# range 0 .. 31;
      GPIOA_PIOCFGRL  at 16#48# range 0 .. 31;
      GPIOA_PIOCFGRH  at 16#4C# range 0 .. 31;
      GPIOA_HWCFGR10  at 16#3C8# range 0 .. 31;
      GPIOA_HWCFGR9   at 16#3CC# range 0 .. 31;
      GPIOA_HWCFGR8   at 16#3D0# range 0 .. 31;
      GPIOA_HWCFGR7   at 16#3D4# range 0 .. 31;
      GPIOA_HWCFGR6   at 16#3D8# range 0 .. 31;
      GPIOA_HWCFGR5   at 16#3DC# range 0 .. 31;
      GPIOA_HWCFGR4   at 16#3E0# range 0 .. 31;
      GPIOA_HWCFGR3   at 16#3E4# range 0 .. 31;
      GPIOA_HWCFGR2   at 16#3E8# range 0 .. 31;
      GPIOA_HWCFGR1   at 16#3EC# range 0 .. 31;
      GPIOA_HWCFGR0   at 16#3F0# range 0 .. 31;
      GPIOA_VERR      at 16#3F4# range 0 .. 31;
      GPIOA_IPIDR     at 16#3F8# range 0 .. 31;
      GPIOA_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  General-purpose I/Os
   GPIOA_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOA_Base;

   --  General-purpose I/Os
   GPIOA_S_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOA_S_Base;

end STM32_SVD.GPIO;
