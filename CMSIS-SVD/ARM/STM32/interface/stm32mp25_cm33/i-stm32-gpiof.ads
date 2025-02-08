--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.GPIOF is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  GPIOF_MODER_MODE array element
   subtype GPIOF_MODER_MODE_Element is Interfaces.Bit_Types.UInt2;

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
            Val : Interfaces.Bit_Types.UInt32;
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
            Val : Interfaces.Bit_Types.UInt16;
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
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOF_OSPEEDR_OSPEED array element
   subtype GPIOF_OSPEEDR_OSPEED_Element is Interfaces.Bit_Types.UInt2;

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
            Val : Interfaces.Bit_Types.UInt32;
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
   subtype GPIOF_PUPDR_PUPD_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOF_PUPDR_PUPD array
   type GPIOF_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOF_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port pull-up/pull-down register
   type GPIOF_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt32;
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
            Val : Interfaces.Bit_Types.UInt16;
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
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
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
            Val : Interfaces.Bit_Types.UInt16;
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
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
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
            Val : Interfaces.Bit_Types.UInt16;
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
            Val : Interfaces.Bit_Types.UInt16;
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
            Val : Interfaces.Bit_Types.UInt16;
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
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOF_AFRL_AFSEL array element
   subtype GPIOF_AFRL_AFSEL_Element is Interfaces.Bit_Types.UInt4;

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
            Val : Interfaces.Bit_Types.UInt32;
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
   subtype GPIOF_AFRH_AFSEL_Element is Interfaces.Bit_Types.UInt4;

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
            Val : Interfaces.Bit_Types.UInt32;
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
            Val : Interfaces.Bit_Types.UInt16;
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
      --  Write-only. Port x reset I/O pin y
      BR             : GPIOF_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
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
            Val : Interfaces.Bit_Types.UInt16;
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
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
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
            Val : Interfaces.Bit_Types.UInt16;
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
      --  I/O pin y of port x privilege configuration
      PRIV           : GPIOF_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
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
            Val : Interfaces.Bit_Types.UInt16;
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
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_RCFGLOCKR_Register use record
      RLOCK          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOF_DELAYRL_DLY array element
   subtype GPIOF_DELAYRL_DLY_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOF_DELAYRL_DLY array
   type GPIOF_DELAYRL_DLY_Field_Array is array (0 .. 7)
     of GPIOF_DELAYRL_DLY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port F delay low register
   type GPIOF_DELAYRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DLY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DLY as an array
            Arr : GPIOF_DELAYRL_DLY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_DELAYRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOF_DELAYRH_DLY array element
   subtype GPIOF_DELAYRH_DLY_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOF_DELAYRH_DLY array
   type GPIOF_DELAYRH_DLY_Field_Array is array (8 .. 15)
     of GPIOF_DELAYRH_DLY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port F delay high register
   type GPIOF_DELAYRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DLY as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DLY as an array
            Arr : GPIOF_DELAYRH_DLY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_DELAYRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIO port F advanced configuration low register
   type GPIOF_ADVCFGRL_Register is record
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

   for GPIOF_ADVCFGRL_Register use record
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

   --  GPIO port F advanced configuration high register
   type GPIOF_ADVCFGRH_Register is record
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

   for GPIOF_ADVCFGRH_Register use record
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

   subtype GPIOF_CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt2;

   --  GPIOF_CIDCFGR_SEMWLC array
   type GPIOF_CIDCFGR_SEMWLC_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for GPIOF_CIDCFGR_SEMWLC
   type GPIOF_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  SEMWLC as an array
            Arr : GPIOF_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for GPIOF_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  GPIO port F CID configuration register for I/O pin 0
   type GPIOF_CIDCFGR_Register is record
      --  CID filtering enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Static CID
      SCID           : GPIOF_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Semaphore white list for compartment z
      SEMWLC         : GPIOF_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEMWLC         at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype GPIOF_SEMCR_SEMCID_Field is Interfaces.Bit_Types.UInt2;

   --  GPIO port F semaphore control register for I/O pin 0
   type GPIOF_SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID
      SEMCID        : GPIOF_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype GPIOF_HWCFGR11_AHB_IOP_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOF_HWCFGR11_AFSIZE_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOF_HWCFGR11_SPEED_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOF_HWCFGR11_LOCK_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOF_HWCFGR11_SEC_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOF_HWCFGR11_OR_CFG_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOF_HWCFGR11_PRIV_CFG_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port F hardware configuration register 11
   type GPIOF_HWCFGR11_Register is record
      --  Read-only. Bus interface selection
      AHB_IOP        : GPIOF_HWCFGR11_AHB_IOP_Field;
      --  Read-only. Number of AF available for each I/O
      AFSIZE_CFG     : GPIOF_HWCFGR11_AFSIZE_CFG_Field;
      --  Read-only. Number of speed lines for each I/O
      SPEED_CFG      : GPIOF_HWCFGR11_SPEED_CFG_Field;
      --  Read-only. Lock mechanism activation
      LOCK_CFG       : GPIOF_HWCFGR11_LOCK_CFG_Field;
      --  Read-only. Security activation
      SEC_CFG        : GPIOF_HWCFGR11_SEC_CFG_Field;
      --  Read-only. Option register configuration
      OR_CFG         : GPIOF_HWCFGR11_OR_CFG_Field;
      --  Read-only. Privilege mechanism activation
      PRIV_CFG       : GPIOF_HWCFGR11_PRIV_CFG_Field;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_HWCFGR11_Register use record
      AHB_IOP        at 0 range 0 .. 3;
      AFSIZE_CFG     at 0 range 4 .. 7;
      SPEED_CFG      at 0 range 8 .. 11;
      LOCK_CFG       at 0 range 12 .. 15;
      SEC_CFG        at 0 range 16 .. 19;
      OR_CFG         at 0 range 20 .. 23;
      PRIV_CFG       at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype GPIOF_HWCFGR10_EN_IO_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port F hardware configuration register 10
   type GPIOF_HWCFGR10_Register is record
      --  Read-only. Presence granularity, each bit indicate the I/O presence
      EN_IO          : GPIOF_HWCFGR10_EN_IO_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_HWCFGR10_Register use record
      EN_IO          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOF_HWCFGR9_FAST_AF_IO array element
   subtype GPIOF_HWCFGR9_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOF_HWCFGR9_FAST_AF_IO array
   type GPIOF_HWCFGR9_FAST_AF_IO_Field_Array is array (8 .. 15)
     of GPIOF_HWCFGR9_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port F hardware configuration register 9
   type GPIOF_HWCFGR9_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOF_HWCFGR9_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_HWCFGR9_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOF_HWCFGR8_FAST_AF_IO array element
   subtype GPIOF_HWCFGR8_FAST_AF_IO_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOF_HWCFGR8_FAST_AF_IO array
   type GPIOF_HWCFGR8_FAST_AF_IO_Field_Array is array (0 .. 7)
     of GPIOF_HWCFGR8_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port F hardware configuration register 8
   type GPIOF_HWCFGR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : Interfaces.Bit_Types.UInt32;
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

   subtype GPIOF_HWCFGR4_ODR_RES_Field is Interfaces.Bit_Types.UInt16;
   subtype GPIOF_HWCFGR4_OTYPER_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port F hardware configuration register 4
   type GPIOF_HWCFGR4_Register is record
      --  Read-only. Output data register reset value
      ODR_RES    : GPIOF_HWCFGR4_ODR_RES_Field;
      --  Read-only. Output type register reset value
      OTYPER_RES : GPIOF_HWCFGR4_OTYPER_RES_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_HWCFGR4_Register use record
      ODR_RES    at 0 range 0 .. 15;
      OTYPER_RES at 0 range 16 .. 31;
   end record;

   subtype GPIOF_HWCFGR1_OR_RES_Field is Interfaces.Bit_Types.UInt16;

   --  GPIO port F hardware configuration register 1
   type GPIOF_HWCFGR1_Register is record
      --  Read-only. Option register reset value
      OR_RES         : GPIOF_HWCFGR1_OR_RES_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_HWCFGR1_Register use record
      OR_RES         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPIOF_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype GPIOF_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO port F version register
   type GPIOF_VERR_Register is record
      --  Read-only. GPIO minor revision
      MINREV        : GPIOF_VERR_MINREV_Field;
      --  Read-only. GPIO major revision
      MAJREV        : GPIOF_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
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

   --  Control of ioport F
   type GPIOF_Peripheral is record
      --  GPIO port F mode register
      GPIOF_MODER     : aliased GPIOF_MODER_Register;
      --  GPIO port F output type register
      GPIOF_OTYPER    : aliased GPIOF_OTYPER_Register;
      --  GPIO port F output speed register
      GPIOF_OSPEEDR   : aliased GPIOF_OSPEEDR_Register;
      --  GPIO port pull-up/pull-down register
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
      --  GPIO port F advanced configuration low register
      GPIOF_ADVCFGRL  : aliased GPIOF_ADVCFGRL_Register;
      --  GPIO port F advanced configuration high register
      GPIOF_ADVCFGRH  : aliased GPIOF_ADVCFGRH_Register;
      --  GPIO port F CID configuration register for I/O pin 0
      GPIOF_CIDCFGR0  : aliased GPIOF_CIDCFGR_Register;
      --  GPIO port F semaphore control register for I/O pin 0
      GPIOF_SEMCR0    : aliased GPIOF_SEMCR_Register;
      --  GPIO port F CID configuration register for I/O pin 1
      GPIOF_CIDCFGR1  : aliased GPIOF_CIDCFGR_Register;
      --  GPIO port F semaphore control register for I/O pin 1
      GPIOF_SEMCR1    : aliased GPIOF_SEMCR_Register;
      --  GPIO port F CID configuration register for I/O pin 2
      GPIOF_CIDCFGR2  : aliased GPIOF_CIDCFGR_Register;
      --  GPIO port F semaphore control register for I/O pin 2
      GPIOF_SEMCR2    : aliased GPIOF_SEMCR_Register;
      --  GPIO port F CID configuration register for I/O pin 3
      GPIOF_CIDCFGR3  : aliased GPIOF_CIDCFGR_Register;
      --  GPIO port F semaphore control register for I/O pin 3
      GPIOF_SEMCR3    : aliased GPIOF_SEMCR_Register;
      --  GPIO port F CID configuration register for I/O pin 4
      GPIOF_CIDCFGR4  : aliased GPIOF_CIDCFGR_Register;
      --  GPIO port F semaphore control register for I/O pin 4
      GPIOF_SEMCR4    : aliased GPIOF_SEMCR_Register;
      --  GPIO port F CID configuration register for I/O pin 5
      GPIOF_CIDCFGR5  : aliased GPIOF_CIDCFGR_Register;
      --  GPIO port F semaphore control register for I/O pin 5
      GPIOF_SEMCR5    : aliased GPIOF_SEMCR_Register;
      --  GPIO port F CID configuration register for I/O pin 6
      GPIOF_CIDCFGR6  : aliased GPIOF_CIDCFGR_Register;
      --  GPIO port F semaphore control register for I/O pin 6
      GPIOF_SEMCR6    : aliased GPIOF_SEMCR_Register;
      --  GPIO port F CID configuration register for I/O pin 7
      GPIOF_CIDCFGR7  : aliased GPIOF_CIDCFGR_Register;
      --  GPIO port F semaphore control register for I/O pin 7
      GPIOF_SEMCR7    : aliased GPIOF_SEMCR_Register;
      --  GPIO port F CID configuration register for I/O pin 8
      GPIOF_CIDCFGR8  : aliased GPIOF_CIDCFGR_Register;
      --  GPIO port F semaphore control register for I/O pin 8
      GPIOF_SEMCR8    : aliased GPIOF_SEMCR_Register;
      --  GPIO port F CID configuration register for I/O pin 9
      GPIOF_CIDCFGR9  : aliased GPIOF_CIDCFGR_Register;
      --  GPIO port F semaphore control register for I/O pin 9
      GPIOF_SEMCR9    : aliased GPIOF_SEMCR_Register;
      --  GPIO port F CID configuration register for I/O pin 10
      GPIOF_CIDCFGR10 : aliased GPIOF_CIDCFGR_Register;
      --  GPIO port F semaphore control register for I/O pin 10
      GPIOF_SEMCR10   : aliased GPIOF_SEMCR_Register;
      --  GPIO port F CID configuration register for I/O pin 11
      GPIOF_CIDCFGR11 : aliased GPIOF_CIDCFGR_Register;
      --  GPIO port F semaphore control register for I/O pin 11
      GPIOF_SEMCR11   : aliased GPIOF_SEMCR_Register;
      --  GPIO port F CID configuration register for I/O pin 12
      GPIOF_CIDCFGR12 : aliased GPIOF_CIDCFGR_Register;
      --  GPIO port F semaphore control register for I/O pin 12
      GPIOF_SEMCR12   : aliased GPIOF_SEMCR_Register;
      --  GPIO port F CID configuration register for I/O pin 13
      GPIOF_CIDCFGR13 : aliased GPIOF_CIDCFGR_Register;
      --  GPIO port F semaphore control register for I/O pin 13
      GPIOF_SEMCR13   : aliased GPIOF_SEMCR_Register;
      --  GPIO port F CID configuration register for I/O pin 14
      GPIOF_CIDCFGR14 : aliased GPIOF_CIDCFGR_Register;
      --  GPIO port F semaphore control register for I/O pin 14
      GPIOF_SEMCR14   : aliased GPIOF_SEMCR_Register;
      --  GPIO port F CID configuration register for I/O pin 15
      GPIOF_CIDCFGR15 : aliased GPIOF_CIDCFGR_Register;
      --  GPIO port F semaphore control register for I/O pin 15
      GPIOF_SEMCR15   : aliased GPIOF_SEMCR_Register;
      --  GPIO port F hardware configuration register 11
      GPIOF_HWCFGR11  : aliased GPIOF_HWCFGR11_Register;
      --  GPIO port F hardware configuration register 10
      GPIOF_HWCFGR10  : aliased GPIOF_HWCFGR10_Register;
      --  GPIO port F hardware configuration register 9
      GPIOF_HWCFGR9   : aliased GPIOF_HWCFGR9_Register;
      --  GPIO port F hardware configuration register 8
      GPIOF_HWCFGR8   : aliased GPIOF_HWCFGR8_Register;
      --  GPIO port F hardware configuration register 7
      GPIOF_HWCFGR7   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port F hardware configuration register 6
      GPIOF_HWCFGR6   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port F hardware configuration register 5
      GPIOF_HWCFGR5   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port F hardware configuration register 4
      GPIOF_HWCFGR4   : aliased GPIOF_HWCFGR4_Register;
      --  GPIO port F hardware configuration register 3
      GPIOF_HWCFGR3   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port F hardware configuration register 2
      GPIOF_HWCFGR2   : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port F hardware configuration register 1
      GPIOF_HWCFGR1   : aliased GPIOF_HWCFGR1_Register;
      --  GPIO port F version register
      GPIOF_VERR      : aliased GPIOF_VERR_Register;
      --  GPIO port F identification register
      GPIOF_IPIDR     : aliased Interfaces.Bit_Types.UInt32;
      --  GPIO port F size identification register
      GPIOF_SIDR      : aliased Interfaces.Bit_Types.UInt32;
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
      GPIOF_ADVCFGRL  at 16#48# range 0 .. 31;
      GPIOF_ADVCFGRH  at 16#4C# range 0 .. 31;
      GPIOF_CIDCFGR0  at 16#50# range 0 .. 31;
      GPIOF_SEMCR0    at 16#54# range 0 .. 31;
      GPIOF_CIDCFGR1  at 16#58# range 0 .. 31;
      GPIOF_SEMCR1    at 16#5C# range 0 .. 31;
      GPIOF_CIDCFGR2  at 16#60# range 0 .. 31;
      GPIOF_SEMCR2    at 16#64# range 0 .. 31;
      GPIOF_CIDCFGR3  at 16#68# range 0 .. 31;
      GPIOF_SEMCR3    at 16#6C# range 0 .. 31;
      GPIOF_CIDCFGR4  at 16#70# range 0 .. 31;
      GPIOF_SEMCR4    at 16#74# range 0 .. 31;
      GPIOF_CIDCFGR5  at 16#78# range 0 .. 31;
      GPIOF_SEMCR5    at 16#7C# range 0 .. 31;
      GPIOF_CIDCFGR6  at 16#80# range 0 .. 31;
      GPIOF_SEMCR6    at 16#84# range 0 .. 31;
      GPIOF_CIDCFGR7  at 16#88# range 0 .. 31;
      GPIOF_SEMCR7    at 16#8C# range 0 .. 31;
      GPIOF_CIDCFGR8  at 16#90# range 0 .. 31;
      GPIOF_SEMCR8    at 16#94# range 0 .. 31;
      GPIOF_CIDCFGR9  at 16#98# range 0 .. 31;
      GPIOF_SEMCR9    at 16#9C# range 0 .. 31;
      GPIOF_CIDCFGR10 at 16#A0# range 0 .. 31;
      GPIOF_SEMCR10   at 16#A4# range 0 .. 31;
      GPIOF_CIDCFGR11 at 16#A8# range 0 .. 31;
      GPIOF_SEMCR11   at 16#AC# range 0 .. 31;
      GPIOF_CIDCFGR12 at 16#B0# range 0 .. 31;
      GPIOF_SEMCR12   at 16#B4# range 0 .. 31;
      GPIOF_CIDCFGR13 at 16#B8# range 0 .. 31;
      GPIOF_SEMCR13   at 16#BC# range 0 .. 31;
      GPIOF_CIDCFGR14 at 16#C0# range 0 .. 31;
      GPIOF_SEMCR14   at 16#C4# range 0 .. 31;
      GPIOF_CIDCFGR15 at 16#C8# range 0 .. 31;
      GPIOF_SEMCR15   at 16#CC# range 0 .. 31;
      GPIOF_HWCFGR11  at 16#3C8# range 0 .. 31;
      GPIOF_HWCFGR10  at 16#3CC# range 0 .. 31;
      GPIOF_HWCFGR9   at 16#3D0# range 0 .. 31;
      GPIOF_HWCFGR8   at 16#3D4# range 0 .. 31;
      GPIOF_HWCFGR7   at 16#3D8# range 0 .. 31;
      GPIOF_HWCFGR6   at 16#3DC# range 0 .. 31;
      GPIOF_HWCFGR5   at 16#3E0# range 0 .. 31;
      GPIOF_HWCFGR4   at 16#3E4# range 0 .. 31;
      GPIOF_HWCFGR3   at 16#3E8# range 0 .. 31;
      GPIOF_HWCFGR2   at 16#3EC# range 0 .. 31;
      GPIOF_HWCFGR1   at 16#3F0# range 0 .. 31;
      GPIOF_VERR      at 16#3F4# range 0 .. 31;
      GPIOF_IPIDR     at 16#3F8# range 0 .. 31;
      GPIOF_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  Control of ioport F
   GPIOF_Periph : aliased GPIOF_Peripheral
     with Import, Address => GPIOF_Base;

   --  Control of ioport F
   GPIOF_S_Periph : aliased GPIOF_Peripheral
     with Import, Address => GPIOF_S_Base;

end Interfaces.STM32.GPIOF;
