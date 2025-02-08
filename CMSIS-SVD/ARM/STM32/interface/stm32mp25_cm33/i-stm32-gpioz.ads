--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.GPIOZ is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  GPIOZ_MODER_MODE array element
   subtype GPIOZ_MODER_MODE_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOZ_MODER_MODE array
   type GPIOZ_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOZ_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port Z mode register
   type GPIOZ_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOZ_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOZ_OTYPER_OT array
   type GPIOZ_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOZ_OTYPER_OT
   type GPIOZ_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOZ_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOZ_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Z output type register
   type GPIOZ_OTYPER_Register is record
      --  Port x configuration I/O pin y
      OT             : GPIOZ_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOZ_OSPEEDR_OSPEED array element
   subtype GPIOZ_OSPEEDR_OSPEED_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOZ_OSPEEDR_OSPEED array
   type GPIOZ_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOZ_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port Z output speed register
   type GPIOZ_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOZ_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOZ_PUPDR_PUPD array element
   subtype GPIOZ_PUPDR_PUPD_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOZ_PUPDR_PUPD array
   type GPIOZ_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOZ_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port pull-up/pull-down register
   type GPIOZ_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOZ_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOZ_IDR_ID array
   type GPIOZ_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOZ_IDR_ID
   type GPIOZ_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOZ_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOZ_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Z input data register
   type GPIOZ_IDR_Register is record
      --  Read-only. Port x input data I/O pin y
      ID             : GPIOZ_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOZ_ODR_OD array
   type GPIOZ_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOZ_ODR_OD
   type GPIOZ_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOZ_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOZ_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Z output data register
   type GPIOZ_ODR_Register is record
      --  Port x output data I/O pin y
      OD             : GPIOZ_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOZ_BSRR_BS array
   type GPIOZ_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOZ_BSRR_BS
   type GPIOZ_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOZ_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOZ_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOZ_BSRR_BR array
   type GPIOZ_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOZ_BSRR_BR
   type GPIOZ_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOZ_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOZ_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Z bit set/reset register
   type GPIOZ_BSRR_Register is record
      --  Write-only. Port x set I/O pin y
      BS : GPIOZ_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y
      BR : GPIOZ_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOZ_LCKR_LCK array
   type GPIOZ_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOZ_LCKR_LCK
   type GPIOZ_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOZ_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOZ_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Z configuration lock register
   type GPIOZ_LCKR_Register is record
      --  Port x lock I/O pin y
      LCK            : GPIOZ_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOZ_AFRL_AFSEL array element
   subtype GPIOZ_AFRL_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOZ_AFRL_AFSEL array
   type GPIOZ_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOZ_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port Z alternate function low register
   type GPIOZ_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOZ_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOZ_AFRH_AFSEL array element
   subtype GPIOZ_AFRH_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOZ_AFRH_AFSEL array
   type GPIOZ_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOZ_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port Z alternate function high register
   type GPIOZ_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOZ_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOZ_BRR_BR array
   type GPIOZ_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOZ_BRR_BR
   type GPIOZ_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOZ_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOZ_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Z bit reset register
   type GPIOZ_BRR_Register is record
      --  Write-only. Port x reset I/O pin y
      BR             : GPIOZ_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOZ_SECCFGR_SEC array
   type GPIOZ_SECCFGR_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOZ_SECCFGR_SEC
   type GPIOZ_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  SEC as an array
            Arr : GPIOZ_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOZ_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Z secure configuration register
   type GPIOZ_SECCFGR_Register is record
      --  I/O pin y of Port x security configuration
      SEC            : GPIOZ_SECCFGR_SEC_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOZ_PRIVCFGR_PRIV array
   type GPIOZ_PRIVCFGR_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOZ_PRIVCFGR_PRIV
   type GPIOZ_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PRIV as an array
            Arr : GPIOZ_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOZ_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Z privileged configuration register
   type GPIOZ_PRIVCFGR_Register is record
      --  I/O pin y of port x privilege configuration
      PRIV           : GPIOZ_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOZ_RCFGLOCKR_RLOCK array
   type GPIOZ_RCFGLOCKR_RLOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOZ_RCFGLOCKR_RLOCK
   type GPIOZ_RCFGLOCKR_RLOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  RLOCK as an array
            Arr : GPIOZ_RCFGLOCKR_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOZ_RCFGLOCKR_RLOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port Z resource configuration lock register
   type GPIOZ_RCFGLOCKR_Register is record
      --  I/O pin y of port x resource lock
      RLOCK          : GPIOZ_RCFGLOCKR_RLOCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_RCFGLOCKR_Register use record
      RLOCK          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOZ_DELAYRL_DLY array element
   subtype GPIOZ_DELAYRL_DLY_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOZ_DELAYRL_DLY array
   type GPIOZ_DELAYRL_DLY_Field_Array is array (0 .. 7)
     of GPIOZ_DELAYRL_DLY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port Z delay low register
   type GPIOZ_DELAYRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DLY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DLY as an array
            Arr : GPIOZ_DELAYRL_DLY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_DELAYRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOZ_DELAYRH_DLY array element
   subtype GPIOZ_DELAYRH_DLY_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOZ_DELAYRH_DLY array
   type GPIOZ_DELAYRH_DLY_Field_Array is array (8 .. 15)
     of GPIOZ_DELAYRH_DLY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port Z delay high register
   type GPIOZ_DELAYRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DLY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DLY as an array
            Arr : GPIOZ_DELAYRH_DLY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_DELAYRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIO port Z advanced configuration low register
   type GPIOZ_ADVCFGRL_Register is record
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

   for GPIOZ_ADVCFGRL_Register use record
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

   --  GPIO port Z advanced configuration high register
   type GPIOZ_ADVCFGRH_Register is record
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

   for GPIOZ_ADVCFGRH_Register use record
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

   subtype GPIOZ_CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  GPIOZ_CIDCFGR_SEMWLC array
   type GPIOZ_CIDCFGR_SEMWLC_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for GPIOZ_CIDCFGR_SEMWLC
   type GPIOZ_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  SEMWLC as an array
            Arr : GPIOZ_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for GPIOZ_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  GPIO port Z CID configuration register for I/O pin 0
   type GPIOZ_CIDCFGR_Register is record
      --  CID filtering enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Static CID
      SCID           : GPIOZ_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Semaphore white list for compartment z
      SEMWLC         : GPIOZ_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEMWLC         at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype GPIOZ_SEMCR_SEMCID_Field is Interfaces.Bit_Types.UInt2;

   --  GPIO port Z semaphore control register for I/O pin 0
   type GPIOZ_SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID
      SEMCID        : GPIOZ_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype GPIOZ_HWCFGR11_AHB_IOP_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOZ_HWCFGR11_AFSIZE_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOZ_HWCFGR11_SPEED_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOZ_HWCFGR11_LOCK_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOZ_HWCFGR11_SEC_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOZ_HWCFGR11_OR_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOZ_HWCFGR11_PRIV_CFG_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port Z hardware configuration register 11
   type GPIOZ_HWCFGR11_Register is record
      --  Read-only. Bus interface selection
      AHB_IOP        : GPIOZ_HWCFGR11_AHB_IOP_Field;
      --  Read-only. Number of AF available for each I/O
      AFSIZE_CFG     : GPIOZ_HWCFGR11_AFSIZE_CFG_Field;
      --  Read-only. Number of speed lines for each I/O
      SPEED_CFG      : GPIOZ_HWCFGR11_SPEED_CFG_Field;
      --  Read-only. Lock mechanism activation
      LOCK_CFG       : GPIOZ_HWCFGR11_LOCK_CFG_Field;
      --  Read-only. Security activation
      SEC_CFG        : GPIOZ_HWCFGR11_SEC_CFG_Field;
      --  Read-only. Option register configuration
      OR_CFG         : GPIOZ_HWCFGR11_OR_CFG_Field;
      --  Read-only. Privilege mechanism activation
      PRIV_CFG       : GPIOZ_HWCFGR11_PRIV_CFG_Field;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_HWCFGR11_Register use record
      AHB_IOP        at 0 range 0 .. 3;
      AFSIZE_CFG     at 0 range 4 .. 7;
      SPEED_CFG      at 0 range 8 .. 11;
      LOCK_CFG       at 0 range 12 .. 15;
      SEC_CFG        at 0 range 16 .. 19;
      OR_CFG         at 0 range 20 .. 23;
      PRIV_CFG       at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype GPIOZ_HWCFGR10_EN_IO_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port Z hardware configuration register 10
   type GPIOZ_HWCFGR10_Register is record
      --  Read-only. Presence granularity, each bit indicate the I/O presence
      EN_IO          : GPIOZ_HWCFGR10_EN_IO_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_HWCFGR10_Register use record
      EN_IO          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOZ_HWCFGR9_FAST_AF_IO array element
   subtype GPIOZ_HWCFGR9_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOZ_HWCFGR9_FAST_AF_IO array
   type GPIOZ_HWCFGR9_FAST_AF_IO_Field_Array is array (8 .. 15)
     of GPIOZ_HWCFGR9_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port Z hardware configuration register 9
   type GPIOZ_HWCFGR9_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOZ_HWCFGR9_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_HWCFGR9_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOZ_HWCFGR8_FAST_AF_IO array element
   subtype GPIOZ_HWCFGR8_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOZ_HWCFGR8_FAST_AF_IO array
   type GPIOZ_HWCFGR8_FAST_AF_IO_Field_Array is array (0 .. 7)
     of GPIOZ_HWCFGR8_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port Z hardware configuration register 8
   type GPIOZ_HWCFGR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOZ_HWCFGR8_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_HWCFGR8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype GPIOZ_HWCFGR4_ODR_RES_Field is Interfaces.Bit_Types.UInt16;
   subtype GPIOZ_HWCFGR4_OTYPER_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port Z hardware configuration register 4
   type GPIOZ_HWCFGR4_Register is record
      --  Read-only. Output data register reset value
      ODR_RES    : GPIOZ_HWCFGR4_ODR_RES_Field;
      --  Read-only. Output type register reset value
      OTYPER_RES : GPIOZ_HWCFGR4_OTYPER_RES_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_HWCFGR4_Register use record
      ODR_RES    at 0 range 0 .. 15;
      OTYPER_RES at 0 range 16 .. 31;
   end record;

   subtype GPIOZ_HWCFGR1_OR_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port Z hardware configuration register 1
   type GPIOZ_HWCFGR1_Register is record
      --  Read-only. Option register reset value
      OR_RES         : GPIOZ_HWCFGR1_OR_RES_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_HWCFGR1_Register use record
      OR_RES         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPIOZ_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOZ_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port Z version register
   type GPIOZ_VERR_Register is record
      --  Read-only. GPIO minor revision
      MINREV        : GPIOZ_VERR_MINREV_Field;
      --  Read-only. GPIO major revision
      MAJREV        : GPIOZ_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOZ_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Control of ioport Z
   type GPIOZ_Peripheral is record
      --  GPIO port Z mode register
      GPIOZ_MODER     : aliased GPIOZ_MODER_Register;
      --  GPIO port Z output type register
      GPIOZ_OTYPER    : aliased GPIOZ_OTYPER_Register;
      --  GPIO port Z output speed register
      GPIOZ_OSPEEDR   : aliased GPIOZ_OSPEEDR_Register;
      --  GPIO port pull-up/pull-down register
      GPIOZ_PUPDR     : aliased GPIOZ_PUPDR_Register;
      --  GPIO port Z input data register
      GPIOZ_IDR       : aliased GPIOZ_IDR_Register;
      --  GPIO port Z output data register
      GPIOZ_ODR       : aliased GPIOZ_ODR_Register;
      --  GPIO port Z bit set/reset register
      GPIOZ_BSRR      : aliased GPIOZ_BSRR_Register;
      --  GPIO port Z configuration lock register
      GPIOZ_LCKR      : aliased GPIOZ_LCKR_Register;
      --  GPIO port Z alternate function low register
      GPIOZ_AFRL      : aliased GPIOZ_AFRL_Register;
      --  GPIO port Z alternate function high register
      GPIOZ_AFRH      : aliased GPIOZ_AFRH_Register;
      --  GPIO port Z bit reset register
      GPIOZ_BRR       : aliased GPIOZ_BRR_Register;
      --  GPIO port Z secure configuration register
      GPIOZ_SECCFGR   : aliased GPIOZ_SECCFGR_Register;
      --  GPIO port Z privileged configuration register
      GPIOZ_PRIVCFGR  : aliased GPIOZ_PRIVCFGR_Register;
      --  GPIO port Z resource configuration lock register
      GPIOZ_RCFGLOCKR : aliased GPIOZ_RCFGLOCKR_Register;
      --  GPIO port Z delay low register
      GPIOZ_DELAYRL   : aliased GPIOZ_DELAYRL_Register;
      --  GPIO port Z delay high register
      GPIOZ_DELAYRH   : aliased GPIOZ_DELAYRH_Register;
      --  GPIO port Z advanced configuration low register
      GPIOZ_ADVCFGRL  : aliased GPIOZ_ADVCFGRL_Register;
      --  GPIO port Z advanced configuration high register
      GPIOZ_ADVCFGRH  : aliased GPIOZ_ADVCFGRH_Register;
      --  GPIO port Z CID configuration register for I/O pin 0
      GPIOZ_CIDCFGR0  : aliased GPIOZ_CIDCFGR_Register;
      --  GPIO port Z semaphore control register for I/O pin 0
      GPIOZ_SEMCR0    : aliased GPIOZ_SEMCR_Register;
      --  GPIO port Z CID configuration register for I/O pin 1
      GPIOZ_CIDCFGR1  : aliased GPIOZ_CIDCFGR_Register;
      --  GPIO port Z semaphore control register for I/O pin 1
      GPIOZ_SEMCR1    : aliased GPIOZ_SEMCR_Register;
      --  GPIO port Z CID configuration register for I/O pin 2
      GPIOZ_CIDCFGR2  : aliased GPIOZ_CIDCFGR_Register;
      --  GPIO port Z semaphore control register for I/O pin 2
      GPIOZ_SEMCR2    : aliased GPIOZ_SEMCR_Register;
      --  GPIO port Z CID configuration register for I/O pin 3
      GPIOZ_CIDCFGR3  : aliased GPIOZ_CIDCFGR_Register;
      --  GPIO port Z semaphore control register for I/O pin 3
      GPIOZ_SEMCR3    : aliased GPIOZ_SEMCR_Register;
      --  GPIO port Z CID configuration register for I/O pin 4
      GPIOZ_CIDCFGR4  : aliased GPIOZ_CIDCFGR_Register;
      --  GPIO port Z semaphore control register for I/O pin 4
      GPIOZ_SEMCR4    : aliased GPIOZ_SEMCR_Register;
      --  GPIO port Z CID configuration register for I/O pin 5
      GPIOZ_CIDCFGR5  : aliased GPIOZ_CIDCFGR_Register;
      --  GPIO port Z semaphore control register for I/O pin 5
      GPIOZ_SEMCR5    : aliased GPIOZ_SEMCR_Register;
      --  GPIO port Z CID configuration register for I/O pin 6
      GPIOZ_CIDCFGR6  : aliased GPIOZ_CIDCFGR_Register;
      --  GPIO port Z semaphore control register for I/O pin 6
      GPIOZ_SEMCR6    : aliased GPIOZ_SEMCR_Register;
      --  GPIO port Z CID configuration register for I/O pin 7
      GPIOZ_CIDCFGR7  : aliased GPIOZ_CIDCFGR_Register;
      --  GPIO port Z semaphore control register for I/O pin 7
      GPIOZ_SEMCR7    : aliased GPIOZ_SEMCR_Register;
      --  GPIO port Z CID configuration register for I/O pin 8
      GPIOZ_CIDCFGR8  : aliased GPIOZ_CIDCFGR_Register;
      --  GPIO port Z semaphore control register for I/O pin 8
      GPIOZ_SEMCR8    : aliased GPIOZ_SEMCR_Register;
      --  GPIO port Z CID configuration register for I/O pin 9
      GPIOZ_CIDCFGR9  : aliased GPIOZ_CIDCFGR_Register;
      --  GPIO port Z semaphore control register for I/O pin 9
      GPIOZ_SEMCR9    : aliased GPIOZ_SEMCR_Register;
      --  GPIO port Z CID configuration register for I/O pin 10
      GPIOZ_CIDCFGR10 : aliased GPIOZ_CIDCFGR_Register;
      --  GPIO port Z semaphore control register for I/O pin 10
      GPIOZ_SEMCR10   : aliased GPIOZ_SEMCR_Register;
      --  GPIO port Z CID configuration register for I/O pin 11
      GPIOZ_CIDCFGR11 : aliased GPIOZ_CIDCFGR_Register;
      --  GPIO port Z semaphore control register for I/O pin 11
      GPIOZ_SEMCR11   : aliased GPIOZ_SEMCR_Register;
      --  GPIO port Z CID configuration register for I/O pin 12
      GPIOZ_CIDCFGR12 : aliased GPIOZ_CIDCFGR_Register;
      --  GPIO port Z semaphore control register for I/O pin 12
      GPIOZ_SEMCR12   : aliased GPIOZ_SEMCR_Register;
      --  GPIO port Z CID configuration register for I/O pin 13
      GPIOZ_CIDCFGR13 : aliased GPIOZ_CIDCFGR_Register;
      --  GPIO port Z semaphore control register for I/O pin 13
      GPIOZ_SEMCR13   : aliased GPIOZ_SEMCR_Register;
      --  GPIO port Z CID configuration register for I/O pin 14
      GPIOZ_CIDCFGR14 : aliased GPIOZ_CIDCFGR_Register;
      --  GPIO port Z semaphore control register for I/O pin 14
      GPIOZ_SEMCR14   : aliased GPIOZ_SEMCR_Register;
      --  GPIO port Z CID configuration register for I/O pin 15
      GPIOZ_CIDCFGR15 : aliased GPIOZ_CIDCFGR_Register;
      --  GPIO port Z semaphore control register for I/O pin 15
      GPIOZ_SEMCR15   : aliased GPIOZ_SEMCR_Register;
      --  GPIO port Z hardware configuration register 11
      GPIOZ_HWCFGR11  : aliased GPIOZ_HWCFGR11_Register;
      --  GPIO port Z hardware configuration register 10
      GPIOZ_HWCFGR10  : aliased GPIOZ_HWCFGR10_Register;
      --  GPIO port Z hardware configuration register 9
      GPIOZ_HWCFGR9   : aliased GPIOZ_HWCFGR9_Register;
      --  GPIO port Z hardware configuration register 8
      GPIOZ_HWCFGR8   : aliased GPIOZ_HWCFGR8_Register;
      --  GPIO port Z hardware configuration register 7
      GPIOZ_HWCFGR7   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port Z hardware configuration register 6
      GPIOZ_HWCFGR6   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port Z hardware configuration register 5
      GPIOZ_HWCFGR5   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port Z hardware configuration register 4
      GPIOZ_HWCFGR4   : aliased GPIOZ_HWCFGR4_Register;
      --  GPIO port Z hardware configuration register 3
      GPIOZ_HWCFGR3   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port Z hardware configuration register 2
      GPIOZ_HWCFGR2   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port Z hardware configuration register 1
      GPIOZ_HWCFGR1   : aliased GPIOZ_HWCFGR1_Register;
      --  GPIO port Z version register
      GPIOZ_VERR      : aliased GPIOZ_VERR_Register;
      --  GPIO port Z identification register
      GPIOZ_IPIDR     : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port Z size identification register
      GPIOZ_SIDR      : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for GPIOZ_Peripheral use record
      GPIOZ_MODER     at 16#0# range 0 .. 31;
      GPIOZ_OTYPER    at 16#4# range 0 .. 31;
      GPIOZ_OSPEEDR   at 16#8# range 0 .. 31;
      GPIOZ_PUPDR     at 16#C# range 0 .. 31;
      GPIOZ_IDR       at 16#10# range 0 .. 31;
      GPIOZ_ODR       at 16#14# range 0 .. 31;
      GPIOZ_BSRR      at 16#18# range 0 .. 31;
      GPIOZ_LCKR      at 16#1C# range 0 .. 31;
      GPIOZ_AFRL      at 16#20# range 0 .. 31;
      GPIOZ_AFRH      at 16#24# range 0 .. 31;
      GPIOZ_BRR       at 16#28# range 0 .. 31;
      GPIOZ_SECCFGR   at 16#30# range 0 .. 31;
      GPIOZ_PRIVCFGR  at 16#34# range 0 .. 31;
      GPIOZ_RCFGLOCKR at 16#38# range 0 .. 31;
      GPIOZ_DELAYRL   at 16#40# range 0 .. 31;
      GPIOZ_DELAYRH   at 16#44# range 0 .. 31;
      GPIOZ_ADVCFGRL  at 16#48# range 0 .. 31;
      GPIOZ_ADVCFGRH  at 16#4C# range 0 .. 31;
      GPIOZ_CIDCFGR0  at 16#50# range 0 .. 31;
      GPIOZ_SEMCR0    at 16#54# range 0 .. 31;
      GPIOZ_CIDCFGR1  at 16#58# range 0 .. 31;
      GPIOZ_SEMCR1    at 16#5C# range 0 .. 31;
      GPIOZ_CIDCFGR2  at 16#60# range 0 .. 31;
      GPIOZ_SEMCR2    at 16#64# range 0 .. 31;
      GPIOZ_CIDCFGR3  at 16#68# range 0 .. 31;
      GPIOZ_SEMCR3    at 16#6C# range 0 .. 31;
      GPIOZ_CIDCFGR4  at 16#70# range 0 .. 31;
      GPIOZ_SEMCR4    at 16#74# range 0 .. 31;
      GPIOZ_CIDCFGR5  at 16#78# range 0 .. 31;
      GPIOZ_SEMCR5    at 16#7C# range 0 .. 31;
      GPIOZ_CIDCFGR6  at 16#80# range 0 .. 31;
      GPIOZ_SEMCR6    at 16#84# range 0 .. 31;
      GPIOZ_CIDCFGR7  at 16#88# range 0 .. 31;
      GPIOZ_SEMCR7    at 16#8C# range 0 .. 31;
      GPIOZ_CIDCFGR8  at 16#90# range 0 .. 31;
      GPIOZ_SEMCR8    at 16#94# range 0 .. 31;
      GPIOZ_CIDCFGR9  at 16#98# range 0 .. 31;
      GPIOZ_SEMCR9    at 16#9C# range 0 .. 31;
      GPIOZ_CIDCFGR10 at 16#A0# range 0 .. 31;
      GPIOZ_SEMCR10   at 16#A4# range 0 .. 31;
      GPIOZ_CIDCFGR11 at 16#A8# range 0 .. 31;
      GPIOZ_SEMCR11   at 16#AC# range 0 .. 31;
      GPIOZ_CIDCFGR12 at 16#B0# range 0 .. 31;
      GPIOZ_SEMCR12   at 16#B4# range 0 .. 31;
      GPIOZ_CIDCFGR13 at 16#B8# range 0 .. 31;
      GPIOZ_SEMCR13   at 16#BC# range 0 .. 31;
      GPIOZ_CIDCFGR14 at 16#C0# range 0 .. 31;
      GPIOZ_SEMCR14   at 16#C4# range 0 .. 31;
      GPIOZ_CIDCFGR15 at 16#C8# range 0 .. 31;
      GPIOZ_SEMCR15   at 16#CC# range 0 .. 31;
      GPIOZ_HWCFGR11  at 16#3C8# range 0 .. 31;
      GPIOZ_HWCFGR10  at 16#3CC# range 0 .. 31;
      GPIOZ_HWCFGR9   at 16#3D0# range 0 .. 31;
      GPIOZ_HWCFGR8   at 16#3D4# range 0 .. 31;
      GPIOZ_HWCFGR7   at 16#3D8# range 0 .. 31;
      GPIOZ_HWCFGR6   at 16#3DC# range 0 .. 31;
      GPIOZ_HWCFGR5   at 16#3E0# range 0 .. 31;
      GPIOZ_HWCFGR4   at 16#3E4# range 0 .. 31;
      GPIOZ_HWCFGR3   at 16#3E8# range 0 .. 31;
      GPIOZ_HWCFGR2   at 16#3EC# range 0 .. 31;
      GPIOZ_HWCFGR1   at 16#3F0# range 0 .. 31;
      GPIOZ_VERR      at 16#3F4# range 0 .. 31;
      GPIOZ_IPIDR     at 16#3F8# range 0 .. 31;
      GPIOZ_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  Control of ioport Z
   GPIOZ_Periph : aliased GPIOZ_Peripheral
     with Import, Address => GPIOZ_Base;

   --  Control of ioport Z
   GPIOZ_S_Periph : aliased GPIOZ_Peripheral
     with Import, Address => GPIOZ_S_Base;

end Interfaces.STM32.GPIOZ;
