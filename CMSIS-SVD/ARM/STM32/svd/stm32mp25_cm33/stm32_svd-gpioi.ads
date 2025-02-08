--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.GPIOI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  GPIOI_MODER_MODE array element
   subtype GPIOI_MODER_MODE_Element is HAL.UInt2;

   --  GPIOI_MODER_MODE array
   type GPIOI_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOI_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port I mode register
   type GPIOI_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : HAL.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOI_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOI_OTYPER_OT array
   type GPIOI_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOI_OTYPER_OT
   type GPIOI_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : HAL.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOI_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOI_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port I output type register
   type GPIOI_OTYPER_Register is record
      --  Port x configuration I/O pin y
      OT             : GPIOI_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOI_OSPEEDR_OSPEED array element
   subtype GPIOI_OSPEEDR_OSPEED_Element is HAL.UInt2;

   --  GPIOI_OSPEEDR_OSPEED array
   type GPIOI_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOI_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port I output speed register
   type GPIOI_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : HAL.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOI_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOI_PUPDR_PUPD array element
   subtype GPIOI_PUPDR_PUPD_Element is HAL.UInt2;

   --  GPIOI_PUPDR_PUPD array
   type GPIOI_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOI_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port pull-up/pull-down register
   type GPIOI_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : HAL.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOI_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOI_IDR_ID array
   type GPIOI_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOI_IDR_ID
   type GPIOI_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : HAL.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOI_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOI_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port I input data register
   type GPIOI_IDR_Register is record
      --  Read-only. Port x input data I/O pin y
      ID             : GPIOI_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOI_ODR_OD array
   type GPIOI_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOI_ODR_OD
   type GPIOI_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : HAL.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOI_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOI_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port I output data register
   type GPIOI_ODR_Register is record
      --  Port x output data I/O pin y
      OD             : GPIOI_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOI_BSRR_BS array
   type GPIOI_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOI_BSRR_BS
   type GPIOI_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : HAL.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOI_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOI_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOI_BSRR_BR array
   type GPIOI_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOI_BSRR_BR
   type GPIOI_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : HAL.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOI_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOI_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port I bit set/reset register
   type GPIOI_BSRR_Register is record
      --  Write-only. Port x set I/O pin y
      BS : GPIOI_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y
      BR : GPIOI_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOI_LCKR_LCK array
   type GPIOI_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOI_LCKR_LCK
   type GPIOI_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : HAL.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOI_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOI_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port I configuration lock register
   type GPIOI_LCKR_Register is record
      --  Port x lock I/O pin y
      LCK            : GPIOI_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOI_AFRL_AFSEL array element
   subtype GPIOI_AFRL_AFSEL_Element is HAL.UInt4;

   --  GPIOI_AFRL_AFSEL array
   type GPIOI_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOI_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port I alternate function low register
   type GPIOI_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : HAL.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOI_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOI_AFRH_AFSEL array element
   subtype GPIOI_AFRH_AFSEL_Element is HAL.UInt4;

   --  GPIOI_AFRH_AFSEL array
   type GPIOI_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOI_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port I alternate function high register
   type GPIOI_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : HAL.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOI_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOI_BRR_BR array
   type GPIOI_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOI_BRR_BR
   type GPIOI_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : HAL.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOI_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOI_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port I bit reset register
   type GPIOI_BRR_Register is record
      --  Write-only. Port x reset I/O pin y
      BR             : GPIOI_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOI_SECCFGR_SEC array
   type GPIOI_SECCFGR_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOI_SECCFGR_SEC
   type GPIOI_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt16;
         when True =>
            --  SEC as an array
            Arr : GPIOI_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOI_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port I secure configuration register
   type GPIOI_SECCFGR_Register is record
      --  I/O pin y of Port x security configuration
      SEC            : GPIOI_SECCFGR_SEC_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOI_PRIVCFGR_PRIV array
   type GPIOI_PRIVCFGR_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOI_PRIVCFGR_PRIV
   type GPIOI_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt16;
         when True =>
            --  PRIV as an array
            Arr : GPIOI_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOI_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port I privileged configuration register
   type GPIOI_PRIVCFGR_Register is record
      --  I/O pin y of port x privilege configuration
      PRIV           : GPIOI_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOI_RCFGLOCKR_RLOCK array
   type GPIOI_RCFGLOCKR_RLOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOI_RCFGLOCKR_RLOCK
   type GPIOI_RCFGLOCKR_RLOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : HAL.UInt16;
         when True =>
            --  RLOCK as an array
            Arr : GPIOI_RCFGLOCKR_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOI_RCFGLOCKR_RLOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port I resource configuration lock register
   type GPIOI_RCFGLOCKR_Register is record
      --  I/O pin y of port x resource lock
      RLOCK          : GPIOI_RCFGLOCKR_RLOCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_RCFGLOCKR_Register use record
      RLOCK          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOI_DELAYRL_DLY array element
   subtype GPIOI_DELAYRL_DLY_Element is HAL.UInt4;

   --  GPIOI_DELAYRL_DLY array
   type GPIOI_DELAYRL_DLY_Field_Array is array (0 .. 7)
     of GPIOI_DELAYRL_DLY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port I delay low register
   type GPIOI_DELAYRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DLY as a value
            Val : HAL.UInt32;
         when True =>
            --  DLY as an array
            Arr : GPIOI_DELAYRL_DLY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_DELAYRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOI_DELAYRH_DLY array element
   subtype GPIOI_DELAYRH_DLY_Element is HAL.UInt4;

   --  GPIOI_DELAYRH_DLY array
   type GPIOI_DELAYRH_DLY_Field_Array is array (8 .. 15)
     of GPIOI_DELAYRH_DLY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port I delay high register
   type GPIOI_DELAYRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DLY as a value
            Val : HAL.UInt32;
         when True =>
            --  DLY as an array
            Arr : GPIOI_DELAYRH_DLY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_DELAYRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIO port I advanced configuration low register
   type GPIOI_ADVCFGRL_Register is record
      --  Controls which path contains the configurable delay, input or output
      --  y (y=7to0)
      DLYPATH0 : Boolean := False;
      --  Input/Output data double edge selection y (y=7to0)
      DE0      : Boolean := False;
      --  Clock inversion selection y (y=7to0)
      INVCLK0  : Boolean := False;
      --  Data retime selection y (y=7to0)
      RET0     : Boolean := False;
      --  Controls which path contains the configurable delay, input or output
      --  y (y=7to0)
      DLYPATH1 : Boolean := False;
      --  Input/Output data double edge selection y (y=7to0)
      DE1      : Boolean := False;
      --  Clock inversion selection y (y=7to0)
      INVCLK1  : Boolean := False;
      --  Data retime selection y (y=7to0)
      RET1     : Boolean := False;
      --  Controls which path contains the configurable delay, input or output
      --  y (y=7to0)
      DLYPATH2 : Boolean := False;
      --  Input/Output data double edge selection y (y=7to0)
      DE2      : Boolean := False;
      --  Clock inversion selection y (y=7to0)
      INVCLK2  : Boolean := False;
      --  Data retime selection y (y=7to0)
      RET2     : Boolean := False;
      --  Controls which path contains the configurable delay, input or output
      --  y (y=7to0)
      DLYPATH3 : Boolean := False;
      --  Input/Output data double edge selection y (y=7to0)
      DE3      : Boolean := False;
      --  Clock inversion selection y (y=7to0)
      INVCLK3  : Boolean := False;
      --  Data retime selection y (y=7to0)
      RET3     : Boolean := False;
      --  Controls which path contains the configurable delay, input or output
      --  y (y=7to0)
      DLYPATH4 : Boolean := False;
      --  Input/Output data double edge selection y (y=7to0)
      DE4      : Boolean := False;
      --  Clock inversion selection y (y=7to0)
      INVCLK4  : Boolean := False;
      --  Data retime selection y (y=7to0)
      RET4     : Boolean := False;
      --  Controls which path contains the configurable delay, input or output
      --  y (y=7to0)
      DLYPATH5 : Boolean := False;
      --  Input/Output data double edge selection y (y=7to0)
      DE5      : Boolean := False;
      --  Clock inversion selection y (y=7to0)
      INVCLK5  : Boolean := False;
      --  Data retime selection y (y=7to0)
      RET5     : Boolean := False;
      --  Controls which path contains the configurable delay, input or output
      --  y (y=7to0)
      DLYPATH6 : Boolean := False;
      --  Input/Output data double edge selection y (y=7to0)
      DE6      : Boolean := False;
      --  Clock inversion selection y (y=7to0)
      INVCLK6  : Boolean := False;
      --  Data retime selection y (y=7to0)
      RET6     : Boolean := False;
      --  Controls which path contains the configurable delay, input or output
      --  y (y=7to0)
      DLYPATH7 : Boolean := False;
      --  Input/Output data double edge selection y (y=7to0)
      DE7      : Boolean := False;
      --  Clock inversion selection y (y=7to0)
      INVCLK7  : Boolean := False;
      --  Data retime selection y (y=7to0)
      RET7     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_ADVCFGRL_Register use record
      DLYPATH0 at 0 range 0 .. 0;
      DE0      at 0 range 1 .. 1;
      INVCLK0  at 0 range 2 .. 2;
      RET0     at 0 range 3 .. 3;
      DLYPATH1 at 0 range 4 .. 4;
      DE1      at 0 range 5 .. 5;
      INVCLK1  at 0 range 6 .. 6;
      RET1     at 0 range 7 .. 7;
      DLYPATH2 at 0 range 8 .. 8;
      DE2      at 0 range 9 .. 9;
      INVCLK2  at 0 range 10 .. 10;
      RET2     at 0 range 11 .. 11;
      DLYPATH3 at 0 range 12 .. 12;
      DE3      at 0 range 13 .. 13;
      INVCLK3  at 0 range 14 .. 14;
      RET3     at 0 range 15 .. 15;
      DLYPATH4 at 0 range 16 .. 16;
      DE4      at 0 range 17 .. 17;
      INVCLK4  at 0 range 18 .. 18;
      RET4     at 0 range 19 .. 19;
      DLYPATH5 at 0 range 20 .. 20;
      DE5      at 0 range 21 .. 21;
      INVCLK5  at 0 range 22 .. 22;
      RET5     at 0 range 23 .. 23;
      DLYPATH6 at 0 range 24 .. 24;
      DE6      at 0 range 25 .. 25;
      INVCLK6  at 0 range 26 .. 26;
      RET6     at 0 range 27 .. 27;
      DLYPATH7 at 0 range 28 .. 28;
      DE7      at 0 range 29 .. 29;
      INVCLK7  at 0 range 30 .. 30;
      RET7     at 0 range 31 .. 31;
   end record;

   --  GPIO port I advanced configuration high register
   type GPIOI_ADVCFGRH_Register is record
      --  Controls which path contains the configurable delay, input or output
      --  y (y=15to8)
      DLYPATH8  : Boolean := False;
      --  Input/Output data double edge selection y (y=15to8)
      DE8       : Boolean := False;
      --  Clock inversion selection y (y=15to8)
      INVCLK8   : Boolean := False;
      --  Data retime selection y (y=15to8)
      RET8      : Boolean := False;
      --  Controls which path contains the configurable delay, input or output
      --  y (y=15to8)
      DLYPATH9  : Boolean := False;
      --  Input/Output data double edge selection y (y=15to8)
      DE9       : Boolean := False;
      --  Clock inversion selection y (y=15to8)
      INVCLK9   : Boolean := False;
      --  Data retime selection y (y=15to8)
      RET9      : Boolean := False;
      --  Controls which path contains the configurable delay, input or output
      --  y (y=15to8)
      DLYPATH10 : Boolean := False;
      --  Input/Output data double edge selection y (y=15to8)
      DE10      : Boolean := False;
      --  Clock inversion selection y (y=15to8)
      INVCLK10  : Boolean := False;
      --  Data retime selection y (y=15to8)
      RET10     : Boolean := False;
      --  Controls which path contains the configurable delay, input or output
      --  y (y=15to8)
      DLYPATH11 : Boolean := False;
      --  Input/Output data double edge selection y (y=15to8)
      DE11      : Boolean := False;
      --  Clock inversion selection y (y=15to8)
      INVCLK11  : Boolean := False;
      --  Data retime selection y (y=15to8)
      RET11     : Boolean := False;
      --  Controls which path contains the configurable delay, input or output
      --  y (y=15to8)
      DLYPATH12 : Boolean := False;
      --  Input/Output data double edge selection y (y=15to8)
      DE12      : Boolean := False;
      --  Clock inversion selection y (y=15to8)
      INVCLK12  : Boolean := False;
      --  Data retime selection y (y=15to8)
      RET12     : Boolean := False;
      --  Controls which path contains the configurable delay, input or output
      --  y (y=15to8)
      DLYPATH13 : Boolean := False;
      --  Input/Output data double edge selection y (y=15to8)
      DE13      : Boolean := False;
      --  Clock inversion selection y (y=15to8)
      INVCLK13  : Boolean := False;
      --  Data retime selection y (y=15to8)
      RET13     : Boolean := False;
      --  Controls which path contains the configurable delay, input or output
      --  y (y=15to8)
      DLYPATH14 : Boolean := False;
      --  Input/Output data double edge selection y (y=15to8)
      DE14      : Boolean := False;
      --  Clock inversion selection y (y=15to8)
      INVCLK14  : Boolean := False;
      --  Data retime selection y (y=15to8)
      RET14     : Boolean := False;
      --  Controls which path contains the configurable delay, input or output
      --  y (y=15to8)
      DLYPATH15 : Boolean := False;
      --  Input/Output data double edge selection y (y=15to8)
      DE15      : Boolean := False;
      --  Clock inversion selection y (y=15to8)
      INVCLK15  : Boolean := False;
      --  Data retime selection y (y=15to8)
      RET15     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_ADVCFGRH_Register use record
      DLYPATH8  at 0 range 0 .. 0;
      DE8       at 0 range 1 .. 1;
      INVCLK8   at 0 range 2 .. 2;
      RET8      at 0 range 3 .. 3;
      DLYPATH9  at 0 range 4 .. 4;
      DE9       at 0 range 5 .. 5;
      INVCLK9   at 0 range 6 .. 6;
      RET9      at 0 range 7 .. 7;
      DLYPATH10 at 0 range 8 .. 8;
      DE10      at 0 range 9 .. 9;
      INVCLK10  at 0 range 10 .. 10;
      RET10     at 0 range 11 .. 11;
      DLYPATH11 at 0 range 12 .. 12;
      DE11      at 0 range 13 .. 13;
      INVCLK11  at 0 range 14 .. 14;
      RET11     at 0 range 15 .. 15;
      DLYPATH12 at 0 range 16 .. 16;
      DE12      at 0 range 17 .. 17;
      INVCLK12  at 0 range 18 .. 18;
      RET12     at 0 range 19 .. 19;
      DLYPATH13 at 0 range 20 .. 20;
      DE13      at 0 range 21 .. 21;
      INVCLK13  at 0 range 22 .. 22;
      RET13     at 0 range 23 .. 23;
      DLYPATH14 at 0 range 24 .. 24;
      DE14      at 0 range 25 .. 25;
      INVCLK14  at 0 range 26 .. 26;
      RET14     at 0 range 27 .. 27;
      DLYPATH15 at 0 range 28 .. 28;
      DE15      at 0 range 29 .. 29;
      INVCLK15  at 0 range 30 .. 30;
      RET15     at 0 range 31 .. 31;
   end record;

   subtype GPIOI_CIDCFGR_SCID_Field is HAL.UInt2;

   --  GPIOI_CIDCFGR_SEMWLC array
   type GPIOI_CIDCFGR_SEMWLC_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for GPIOI_CIDCFGR_SEMWLC
   type GPIOI_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt4;
         when True =>
            --  SEMWLC as an array
            Arr : GPIOI_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for GPIOI_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  GPIO port I CID configuration register for I/O pin 0
   type GPIOI_CIDCFGR_Register is record
      --  CID filtering enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID
      SCID           : GPIOI_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  Semaphore white list for compartment z
      SEMWLC         : GPIOI_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEMWLC         at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype GPIOI_SEMCR_SEMCID_Field is HAL.UInt2;

   --  GPIO port I semaphore control register for I/O pin 0
   type GPIOI_SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID
      SEMCID        : GPIOI_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype GPIOI_HWCFGR11_AHB_IOP_Field is HAL.UInt4;
   subtype GPIOI_HWCFGR11_AFSIZE_CFG_Field is HAL.UInt4;
   subtype GPIOI_HWCFGR11_SPEED_CFG_Field is HAL.UInt4;
   subtype GPIOI_HWCFGR11_LOCK_CFG_Field is HAL.UInt4;
   subtype GPIOI_HWCFGR11_SEC_CFG_Field is HAL.UInt4;
   subtype GPIOI_HWCFGR11_OR_CFG_Field is HAL.UInt4;
   subtype GPIOI_HWCFGR11_PRIV_CFG_Field is HAL.UInt4;

   --  GPIO port I hardware configuration register 11
   type GPIOI_HWCFGR11_Register is record
      --  Read-only. Bus interface selection
      AHB_IOP        : GPIOI_HWCFGR11_AHB_IOP_Field;
      --  Read-only. Number of AF available for each I/O
      AFSIZE_CFG     : GPIOI_HWCFGR11_AFSIZE_CFG_Field;
      --  Read-only. Number of speed lines for each I/O
      SPEED_CFG      : GPIOI_HWCFGR11_SPEED_CFG_Field;
      --  Read-only. Lock mechanism activation
      LOCK_CFG       : GPIOI_HWCFGR11_LOCK_CFG_Field;
      --  Read-only. Security activation
      SEC_CFG        : GPIOI_HWCFGR11_SEC_CFG_Field;
      --  Read-only. Option register configuration
      OR_CFG         : GPIOI_HWCFGR11_OR_CFG_Field;
      --  Read-only. Privilege mechanism activation
      PRIV_CFG       : GPIOI_HWCFGR11_PRIV_CFG_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_HWCFGR11_Register use record
      AHB_IOP        at 0 range 0 .. 3;
      AFSIZE_CFG     at 0 range 4 .. 7;
      SPEED_CFG      at 0 range 8 .. 11;
      LOCK_CFG       at 0 range 12 .. 15;
      SEC_CFG        at 0 range 16 .. 19;
      OR_CFG         at 0 range 20 .. 23;
      PRIV_CFG       at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype GPIOI_HWCFGR10_EN_IO_Field is HAL.UInt16;

   --  GPIO port I hardware configuration register 10
   type GPIOI_HWCFGR10_Register is record
      --  Read-only. Presence granularity, each bit indicate the I/O presence
      EN_IO          : GPIOI_HWCFGR10_EN_IO_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_HWCFGR10_Register use record
      EN_IO          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOI_HWCFGR9_FAST_AF_IO array element
   subtype GPIOI_HWCFGR9_FAST_AF_IO_Element is HAL.UInt4;

   --  GPIOI_HWCFGR9_FAST_AF_IO array
   type GPIOI_HWCFGR9_FAST_AF_IO_Field_Array is array (8 .. 15)
     of GPIOI_HWCFGR9_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port I hardware configuration register 9
   type GPIOI_HWCFGR9_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : HAL.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOI_HWCFGR9_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_HWCFGR9_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOI_HWCFGR8_FAST_AF_IO array element
   subtype GPIOI_HWCFGR8_FAST_AF_IO_Element is HAL.UInt4;

   --  GPIOI_HWCFGR8_FAST_AF_IO array
   type GPIOI_HWCFGR8_FAST_AF_IO_Field_Array is array (0 .. 7)
     of GPIOI_HWCFGR8_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port I hardware configuration register 8
   type GPIOI_HWCFGR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : HAL.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOI_HWCFGR8_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_HWCFGR8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOI_HWCFGR4_ODR_RES_Field is HAL.UInt16;
   subtype GPIOI_HWCFGR4_OTYPER_RES_Field is HAL.UInt16;

   --  GPIO port I hardware configuration register 4
   type GPIOI_HWCFGR4_Register is record
      --  Read-only. Output data register reset value
      ODR_RES    : GPIOI_HWCFGR4_ODR_RES_Field;
      --  Read-only. Output type register reset value
      OTYPER_RES : GPIOI_HWCFGR4_OTYPER_RES_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_HWCFGR4_Register use record
      ODR_RES    at 0 range 0 .. 15;
      OTYPER_RES at 0 range 16 .. 31;
   end record;

   subtype GPIOI_HWCFGR1_OR_RES_Field is HAL.UInt16;

   --  GPIO port I hardware configuration register 1
   type GPIOI_HWCFGR1_Register is record
      --  Read-only. Option register reset value
      OR_RES         : GPIOI_HWCFGR1_OR_RES_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_HWCFGR1_Register use record
      OR_RES         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPIOI_VERR_MINREV_Field is HAL.UInt4;
   subtype GPIOI_VERR_MAJREV_Field is HAL.UInt4;

   --  GPIO port I version register
   type GPIOI_VERR_Register is record
      --  Read-only. GPIO minor revision
      MINREV        : GPIOI_VERR_MINREV_Field;
      --  Read-only. GPIO major revision
      MAJREV        : GPIOI_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOI_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Control of ioport I
   type GPIOI_Peripheral is record
      --  GPIO port I mode register
      GPIOI_MODER     : aliased GPIOI_MODER_Register;
      --  GPIO port I output type register
      GPIOI_OTYPER    : aliased GPIOI_OTYPER_Register;
      --  GPIO port I output speed register
      GPIOI_OSPEEDR   : aliased GPIOI_OSPEEDR_Register;
      --  GPIO port pull-up/pull-down register
      GPIOI_PUPDR     : aliased GPIOI_PUPDR_Register;
      --  GPIO port I input data register
      GPIOI_IDR       : aliased GPIOI_IDR_Register;
      --  GPIO port I output data register
      GPIOI_ODR       : aliased GPIOI_ODR_Register;
      --  GPIO port I bit set/reset register
      GPIOI_BSRR      : aliased GPIOI_BSRR_Register;
      --  GPIO port I configuration lock register
      GPIOI_LCKR      : aliased GPIOI_LCKR_Register;
      --  GPIO port I alternate function low register
      GPIOI_AFRL      : aliased GPIOI_AFRL_Register;
      --  GPIO port I alternate function high register
      GPIOI_AFRH      : aliased GPIOI_AFRH_Register;
      --  GPIO port I bit reset register
      GPIOI_BRR       : aliased GPIOI_BRR_Register;
      --  GPIO port I secure configuration register
      GPIOI_SECCFGR   : aliased GPIOI_SECCFGR_Register;
      --  GPIO port I privileged configuration register
      GPIOI_PRIVCFGR  : aliased GPIOI_PRIVCFGR_Register;
      --  GPIO port I resource configuration lock register
      GPIOI_RCFGLOCKR : aliased GPIOI_RCFGLOCKR_Register;
      --  GPIO port I delay low register
      GPIOI_DELAYRL   : aliased GPIOI_DELAYRL_Register;
      --  GPIO port I delay high register
      GPIOI_DELAYRH   : aliased GPIOI_DELAYRH_Register;
      --  GPIO port I advanced configuration low register
      GPIOI_ADVCFGRL  : aliased GPIOI_ADVCFGRL_Register;
      --  GPIO port I advanced configuration high register
      GPIOI_ADVCFGRH  : aliased GPIOI_ADVCFGRH_Register;
      --  GPIO port I CID configuration register for I/O pin 0
      GPIOI_CIDCFGR0  : aliased GPIOI_CIDCFGR_Register;
      --  GPIO port I semaphore control register for I/O pin 0
      GPIOI_SEMCR0    : aliased GPIOI_SEMCR_Register;
      --  GPIO port I CID configuration register for I/O pin 1
      GPIOI_CIDCFGR1  : aliased GPIOI_CIDCFGR_Register;
      --  GPIO port I semaphore control register for I/O pin 1
      GPIOI_SEMCR1    : aliased GPIOI_SEMCR_Register;
      --  GPIO port I CID configuration register for I/O pin 2
      GPIOI_CIDCFGR2  : aliased GPIOI_CIDCFGR_Register;
      --  GPIO port I semaphore control register for I/O pin 2
      GPIOI_SEMCR2    : aliased GPIOI_SEMCR_Register;
      --  GPIO port I CID configuration register for I/O pin 3
      GPIOI_CIDCFGR3  : aliased GPIOI_CIDCFGR_Register;
      --  GPIO port I semaphore control register for I/O pin 3
      GPIOI_SEMCR3    : aliased GPIOI_SEMCR_Register;
      --  GPIO port I CID configuration register for I/O pin 4
      GPIOI_CIDCFGR4  : aliased GPIOI_CIDCFGR_Register;
      --  GPIO port I semaphore control register for I/O pin 4
      GPIOI_SEMCR4    : aliased GPIOI_SEMCR_Register;
      --  GPIO port I CID configuration register for I/O pin 5
      GPIOI_CIDCFGR5  : aliased GPIOI_CIDCFGR_Register;
      --  GPIO port I semaphore control register for I/O pin 5
      GPIOI_SEMCR5    : aliased GPIOI_SEMCR_Register;
      --  GPIO port I CID configuration register for I/O pin 6
      GPIOI_CIDCFGR6  : aliased GPIOI_CIDCFGR_Register;
      --  GPIO port I semaphore control register for I/O pin 6
      GPIOI_SEMCR6    : aliased GPIOI_SEMCR_Register;
      --  GPIO port I CID configuration register for I/O pin 7
      GPIOI_CIDCFGR7  : aliased GPIOI_CIDCFGR_Register;
      --  GPIO port I semaphore control register for I/O pin 7
      GPIOI_SEMCR7    : aliased GPIOI_SEMCR_Register;
      --  GPIO port I CID configuration register for I/O pin 8
      GPIOI_CIDCFGR8  : aliased GPIOI_CIDCFGR_Register;
      --  GPIO port I semaphore control register for I/O pin 8
      GPIOI_SEMCR8    : aliased GPIOI_SEMCR_Register;
      --  GPIO port I CID configuration register for I/O pin 9
      GPIOI_CIDCFGR9  : aliased GPIOI_CIDCFGR_Register;
      --  GPIO port I semaphore control register for I/O pin 9
      GPIOI_SEMCR9    : aliased GPIOI_SEMCR_Register;
      --  GPIO port I CID configuration register for I/O pin 10
      GPIOI_CIDCFGR10 : aliased GPIOI_CIDCFGR_Register;
      --  GPIO port I semaphore control register for I/O pin 10
      GPIOI_SEMCR10   : aliased GPIOI_SEMCR_Register;
      --  GPIO port I CID configuration register for I/O pin 11
      GPIOI_CIDCFGR11 : aliased GPIOI_CIDCFGR_Register;
      --  GPIO port I semaphore control register for I/O pin 11
      GPIOI_SEMCR11   : aliased GPIOI_SEMCR_Register;
      --  GPIO port I CID configuration register for I/O pin 12
      GPIOI_CIDCFGR12 : aliased GPIOI_CIDCFGR_Register;
      --  GPIO port I semaphore control register for I/O pin 12
      GPIOI_SEMCR12   : aliased GPIOI_SEMCR_Register;
      --  GPIO port I CID configuration register for I/O pin 13
      GPIOI_CIDCFGR13 : aliased GPIOI_CIDCFGR_Register;
      --  GPIO port I semaphore control register for I/O pin 13
      GPIOI_SEMCR13   : aliased GPIOI_SEMCR_Register;
      --  GPIO port I CID configuration register for I/O pin 14
      GPIOI_CIDCFGR14 : aliased GPIOI_CIDCFGR_Register;
      --  GPIO port I semaphore control register for I/O pin 14
      GPIOI_SEMCR14   : aliased GPIOI_SEMCR_Register;
      --  GPIO port I CID configuration register for I/O pin 15
      GPIOI_CIDCFGR15 : aliased GPIOI_CIDCFGR_Register;
      --  GPIO port I semaphore control register for I/O pin 15
      GPIOI_SEMCR15   : aliased GPIOI_SEMCR_Register;
      --  GPIO port I hardware configuration register 11
      GPIOI_HWCFGR11  : aliased GPIOI_HWCFGR11_Register;
      --  GPIO port I hardware configuration register 10
      GPIOI_HWCFGR10  : aliased GPIOI_HWCFGR10_Register;
      --  GPIO port I hardware configuration register 9
      GPIOI_HWCFGR9   : aliased GPIOI_HWCFGR9_Register;
      --  GPIO port I hardware configuration register 8
      GPIOI_HWCFGR8   : aliased GPIOI_HWCFGR8_Register;
      --  GPIO port I hardware configuration register 7
      GPIOI_HWCFGR7   : aliased HAL.UInt32;
      --  GPIO port I hardware configuration register 6
      GPIOI_HWCFGR6   : aliased HAL.UInt32;
      --  GPIO port I hardware configuration register 5
      GPIOI_HWCFGR5   : aliased HAL.UInt32;
      --  GPIO port I hardware configuration register 4
      GPIOI_HWCFGR4   : aliased GPIOI_HWCFGR4_Register;
      --  GPIO port I hardware configuration register 3
      GPIOI_HWCFGR3   : aliased HAL.UInt32;
      --  GPIO port I hardware configuration register 2
      GPIOI_HWCFGR2   : aliased HAL.UInt32;
      --  GPIO port I hardware configuration register 1
      GPIOI_HWCFGR1   : aliased GPIOI_HWCFGR1_Register;
      --  GPIO port I version register
      GPIOI_VERR      : aliased GPIOI_VERR_Register;
      --  GPIO port I identification register
      GPIOI_IPIDR     : aliased HAL.UInt32;
      --  GPIO port I size identification register
      GPIOI_SIDR      : aliased HAL.UInt32;
   end record
     with Volatile;

   for GPIOI_Peripheral use record
      GPIOI_MODER     at 16#0# range 0 .. 31;
      GPIOI_OTYPER    at 16#4# range 0 .. 31;
      GPIOI_OSPEEDR   at 16#8# range 0 .. 31;
      GPIOI_PUPDR     at 16#C# range 0 .. 31;
      GPIOI_IDR       at 16#10# range 0 .. 31;
      GPIOI_ODR       at 16#14# range 0 .. 31;
      GPIOI_BSRR      at 16#18# range 0 .. 31;
      GPIOI_LCKR      at 16#1C# range 0 .. 31;
      GPIOI_AFRL      at 16#20# range 0 .. 31;
      GPIOI_AFRH      at 16#24# range 0 .. 31;
      GPIOI_BRR       at 16#28# range 0 .. 31;
      GPIOI_SECCFGR   at 16#30# range 0 .. 31;
      GPIOI_PRIVCFGR  at 16#34# range 0 .. 31;
      GPIOI_RCFGLOCKR at 16#38# range 0 .. 31;
      GPIOI_DELAYRL   at 16#40# range 0 .. 31;
      GPIOI_DELAYRH   at 16#44# range 0 .. 31;
      GPIOI_ADVCFGRL  at 16#48# range 0 .. 31;
      GPIOI_ADVCFGRH  at 16#4C# range 0 .. 31;
      GPIOI_CIDCFGR0  at 16#50# range 0 .. 31;
      GPIOI_SEMCR0    at 16#54# range 0 .. 31;
      GPIOI_CIDCFGR1  at 16#58# range 0 .. 31;
      GPIOI_SEMCR1    at 16#5C# range 0 .. 31;
      GPIOI_CIDCFGR2  at 16#60# range 0 .. 31;
      GPIOI_SEMCR2    at 16#64# range 0 .. 31;
      GPIOI_CIDCFGR3  at 16#68# range 0 .. 31;
      GPIOI_SEMCR3    at 16#6C# range 0 .. 31;
      GPIOI_CIDCFGR4  at 16#70# range 0 .. 31;
      GPIOI_SEMCR4    at 16#74# range 0 .. 31;
      GPIOI_CIDCFGR5  at 16#78# range 0 .. 31;
      GPIOI_SEMCR5    at 16#7C# range 0 .. 31;
      GPIOI_CIDCFGR6  at 16#80# range 0 .. 31;
      GPIOI_SEMCR6    at 16#84# range 0 .. 31;
      GPIOI_CIDCFGR7  at 16#88# range 0 .. 31;
      GPIOI_SEMCR7    at 16#8C# range 0 .. 31;
      GPIOI_CIDCFGR8  at 16#90# range 0 .. 31;
      GPIOI_SEMCR8    at 16#94# range 0 .. 31;
      GPIOI_CIDCFGR9  at 16#98# range 0 .. 31;
      GPIOI_SEMCR9    at 16#9C# range 0 .. 31;
      GPIOI_CIDCFGR10 at 16#A0# range 0 .. 31;
      GPIOI_SEMCR10   at 16#A4# range 0 .. 31;
      GPIOI_CIDCFGR11 at 16#A8# range 0 .. 31;
      GPIOI_SEMCR11   at 16#AC# range 0 .. 31;
      GPIOI_CIDCFGR12 at 16#B0# range 0 .. 31;
      GPIOI_SEMCR12   at 16#B4# range 0 .. 31;
      GPIOI_CIDCFGR13 at 16#B8# range 0 .. 31;
      GPIOI_SEMCR13   at 16#BC# range 0 .. 31;
      GPIOI_CIDCFGR14 at 16#C0# range 0 .. 31;
      GPIOI_SEMCR14   at 16#C4# range 0 .. 31;
      GPIOI_CIDCFGR15 at 16#C8# range 0 .. 31;
      GPIOI_SEMCR15   at 16#CC# range 0 .. 31;
      GPIOI_HWCFGR11  at 16#3C8# range 0 .. 31;
      GPIOI_HWCFGR10  at 16#3CC# range 0 .. 31;
      GPIOI_HWCFGR9   at 16#3D0# range 0 .. 31;
      GPIOI_HWCFGR8   at 16#3D4# range 0 .. 31;
      GPIOI_HWCFGR7   at 16#3D8# range 0 .. 31;
      GPIOI_HWCFGR6   at 16#3DC# range 0 .. 31;
      GPIOI_HWCFGR5   at 16#3E0# range 0 .. 31;
      GPIOI_HWCFGR4   at 16#3E4# range 0 .. 31;
      GPIOI_HWCFGR3   at 16#3E8# range 0 .. 31;
      GPIOI_HWCFGR2   at 16#3EC# range 0 .. 31;
      GPIOI_HWCFGR1   at 16#3F0# range 0 .. 31;
      GPIOI_VERR      at 16#3F4# range 0 .. 31;
      GPIOI_IPIDR     at 16#3F8# range 0 .. 31;
      GPIOI_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  Control of ioport I
   GPIOI_Periph : aliased GPIOI_Peripheral
     with Import, Address => GPIOI_Base;

   --  Control of ioport I
   GPIOI_S_Periph : aliased GPIOI_Peripheral
     with Import, Address => GPIOI_S_Base;

end STM32_SVD.GPIOI;
