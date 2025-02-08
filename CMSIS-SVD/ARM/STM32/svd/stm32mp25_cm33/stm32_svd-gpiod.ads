--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

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

   --  GPIO port pull-up/pull-down register
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
      --  Write-only. Port x reset I/O pin y
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
      --  I/O pin y of port x privilege configuration
      PRIV           : GPIOD_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
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

   --  GPIOD_DELAYRL_DLY array element
   subtype GPIOD_DELAYRL_DLY_Element is HAL.UInt4;

   --  GPIOD_DELAYRL_DLY array
   type GPIOD_DELAYRL_DLY_Field_Array is array (0 .. 7)
     of GPIOD_DELAYRL_DLY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port D delay low register
   type GPIOD_DELAYRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DLY as a value
            Val : HAL.UInt32;
         when True =>
            --  DLY as an array
            Arr : GPIOD_DELAYRL_DLY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_DELAYRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOD_DELAYRH_DLY array element
   subtype GPIOD_DELAYRH_DLY_Element is HAL.UInt4;

   --  GPIOD_DELAYRH_DLY array
   type GPIOD_DELAYRH_DLY_Field_Array is array (8 .. 15)
     of GPIOD_DELAYRH_DLY_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port D delay high register
   type GPIOD_DELAYRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DLY as a value
            Val : HAL.UInt32;
         when True =>
            --  DLY as an array
            Arr : GPIOD_DELAYRH_DLY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_DELAYRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIO port D advanced configuration low register
   type GPIOD_ADVCFGRL_Register is record
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

   for GPIOD_ADVCFGRL_Register use record
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

   --  GPIO port D advanced configuration high register
   type GPIOD_ADVCFGRH_Register is record
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

   for GPIOD_ADVCFGRH_Register use record
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

   subtype GPIOD_CIDCFGR_SCID_Field is HAL.UInt2;

   --  GPIOD_CIDCFGR_SEMWLC array
   type GPIOD_CIDCFGR_SEMWLC_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for GPIOD_CIDCFGR_SEMWLC
   type GPIOD_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt4;
         when True =>
            --  SEMWLC as an array
            Arr : GPIOD_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for GPIOD_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  GPIO port D CID configuration register for I/O pin 0
   type GPIOD_CIDCFGR_Register is record
      --  CID filtering enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID
      SCID           : GPIOD_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  Semaphore white list for compartment z
      SEMWLC         : GPIOD_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SEMWLC         at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype GPIOD_SEMCR_SEMCID_Field is HAL.UInt2;

   --  GPIO port D semaphore control register for I/O pin 0
   type GPIOD_SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID
      SEMCID        : GPIOD_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype GPIOD_HWCFGR11_AHB_IOP_Field is HAL.UInt4;
   subtype GPIOD_HWCFGR11_AFSIZE_CFG_Field is HAL.UInt4;
   subtype GPIOD_HWCFGR11_SPEED_CFG_Field is HAL.UInt4;
   subtype GPIOD_HWCFGR11_LOCK_CFG_Field is HAL.UInt4;
   subtype GPIOD_HWCFGR11_SEC_CFG_Field is HAL.UInt4;
   subtype GPIOD_HWCFGR11_OR_CFG_Field is HAL.UInt4;
   subtype GPIOD_HWCFGR11_PRIV_CFG_Field is HAL.UInt4;

   --  GPIO port D hardware configuration register 11
   type GPIOD_HWCFGR11_Register is record
      --  Read-only. Bus interface selection
      AHB_IOP        : GPIOD_HWCFGR11_AHB_IOP_Field;
      --  Read-only. Number of AF available for each I/O
      AFSIZE_CFG     : GPIOD_HWCFGR11_AFSIZE_CFG_Field;
      --  Read-only. Number of speed lines for each I/O
      SPEED_CFG      : GPIOD_HWCFGR11_SPEED_CFG_Field;
      --  Read-only. Lock mechanism activation
      LOCK_CFG       : GPIOD_HWCFGR11_LOCK_CFG_Field;
      --  Read-only. Security activation
      SEC_CFG        : GPIOD_HWCFGR11_SEC_CFG_Field;
      --  Read-only. Option register configuration
      OR_CFG         : GPIOD_HWCFGR11_OR_CFG_Field;
      --  Read-only. Privilege mechanism activation
      PRIV_CFG       : GPIOD_HWCFGR11_PRIV_CFG_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_HWCFGR11_Register use record
      AHB_IOP        at 0 range 0 .. 3;
      AFSIZE_CFG     at 0 range 4 .. 7;
      SPEED_CFG      at 0 range 8 .. 11;
      LOCK_CFG       at 0 range 12 .. 15;
      SEC_CFG        at 0 range 16 .. 19;
      OR_CFG         at 0 range 20 .. 23;
      PRIV_CFG       at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype GPIOD_HWCFGR10_EN_IO_Field is HAL.UInt16;

   --  GPIO port D hardware configuration register 10
   type GPIOD_HWCFGR10_Register is record
      --  Read-only. Presence granularity, each bit indicate the I/O presence
      EN_IO          : GPIOD_HWCFGR10_EN_IO_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_HWCFGR10_Register use record
      EN_IO          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOD_HWCFGR9_FAST_AF_IO array element
   subtype GPIOD_HWCFGR9_FAST_AF_IO_Element is HAL.UInt4;

   --  GPIOD_HWCFGR9_FAST_AF_IO array
   type GPIOD_HWCFGR9_FAST_AF_IO_Field_Array is array (8 .. 15)
     of GPIOD_HWCFGR9_FAST_AF_IO_Element
     with Component_Size => 4, Size => 32;

   --  GPIO port D hardware configuration register 9
   type GPIOD_HWCFGR9_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FAST_AF_IO as a value
            Val : HAL.UInt32;
         when True =>
            --  FAST_AF_IO as an array
            Arr : GPIOD_HWCFGR9_FAST_AF_IO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_HWCFGR9_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOD_HWCFGR8_FAST_AF_IO array element
   subtype GPIOD_HWCFGR8_FAST_AF_IO_Element is HAL.UInt4;

   --  GPIOD_HWCFGR8_FAST_AF_IO array
   type GPIOD_HWCFGR8_FAST_AF_IO_Field_Array is array (0 .. 7)
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

   subtype GPIOD_HWCFGR4_ODR_RES_Field is HAL.UInt16;
   subtype GPIOD_HWCFGR4_OTYPER_RES_Field is HAL.UInt16;

   --  GPIO port D hardware configuration register 4
   type GPIOD_HWCFGR4_Register is record
      --  Read-only. Output data register reset value
      ODR_RES    : GPIOD_HWCFGR4_ODR_RES_Field;
      --  Read-only. Output type register reset value
      OTYPER_RES : GPIOD_HWCFGR4_OTYPER_RES_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_HWCFGR4_Register use record
      ODR_RES    at 0 range 0 .. 15;
      OTYPER_RES at 0 range 16 .. 31;
   end record;

   subtype GPIOD_HWCFGR1_OR_RES_Field is HAL.UInt16;

   --  GPIO port D hardware configuration register 1
   type GPIOD_HWCFGR1_Register is record
      --  Read-only. Option register reset value
      OR_RES         : GPIOD_HWCFGR1_OR_RES_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_HWCFGR1_Register use record
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

   --  Control of ioport D
   type GPIOD_Peripheral is record
      --  GPIO port D mode register
      GPIOD_MODER     : aliased GPIOD_MODER_Register;
      --  GPIO port D output type register
      GPIOD_OTYPER    : aliased GPIOD_OTYPER_Register;
      --  GPIO port D output speed register
      GPIOD_OSPEEDR   : aliased GPIOD_OSPEEDR_Register;
      --  GPIO port pull-up/pull-down register
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
      --  GPIO port D advanced configuration low register
      GPIOD_ADVCFGRL  : aliased GPIOD_ADVCFGRL_Register;
      --  GPIO port D advanced configuration high register
      GPIOD_ADVCFGRH  : aliased GPIOD_ADVCFGRH_Register;
      --  GPIO port D CID configuration register for I/O pin 0
      GPIOD_CIDCFGR0  : aliased GPIOD_CIDCFGR_Register;
      --  GPIO port D semaphore control register for I/O pin 0
      GPIOD_SEMCR0    : aliased GPIOD_SEMCR_Register;
      --  GPIO port D CID configuration register for I/O pin 1
      GPIOD_CIDCFGR1  : aliased GPIOD_CIDCFGR_Register;
      --  GPIO port D semaphore control register for I/O pin 1
      GPIOD_SEMCR1    : aliased GPIOD_SEMCR_Register;
      --  GPIO port D CID configuration register for I/O pin 2
      GPIOD_CIDCFGR2  : aliased GPIOD_CIDCFGR_Register;
      --  GPIO port D semaphore control register for I/O pin 2
      GPIOD_SEMCR2    : aliased GPIOD_SEMCR_Register;
      --  GPIO port D CID configuration register for I/O pin 3
      GPIOD_CIDCFGR3  : aliased GPIOD_CIDCFGR_Register;
      --  GPIO port D semaphore control register for I/O pin 3
      GPIOD_SEMCR3    : aliased GPIOD_SEMCR_Register;
      --  GPIO port D CID configuration register for I/O pin 4
      GPIOD_CIDCFGR4  : aliased GPIOD_CIDCFGR_Register;
      --  GPIO port D semaphore control register for I/O pin 4
      GPIOD_SEMCR4    : aliased GPIOD_SEMCR_Register;
      --  GPIO port D CID configuration register for I/O pin 5
      GPIOD_CIDCFGR5  : aliased GPIOD_CIDCFGR_Register;
      --  GPIO port D semaphore control register for I/O pin 5
      GPIOD_SEMCR5    : aliased GPIOD_SEMCR_Register;
      --  GPIO port D CID configuration register for I/O pin 6
      GPIOD_CIDCFGR6  : aliased GPIOD_CIDCFGR_Register;
      --  GPIO port D semaphore control register for I/O pin 6
      GPIOD_SEMCR6    : aliased GPIOD_SEMCR_Register;
      --  GPIO port D CID configuration register for I/O pin 7
      GPIOD_CIDCFGR7  : aliased GPIOD_CIDCFGR_Register;
      --  GPIO port D semaphore control register for I/O pin 7
      GPIOD_SEMCR7    : aliased GPIOD_SEMCR_Register;
      --  GPIO port D CID configuration register for I/O pin 8
      GPIOD_CIDCFGR8  : aliased GPIOD_CIDCFGR_Register;
      --  GPIO port D semaphore control register for I/O pin 8
      GPIOD_SEMCR8    : aliased GPIOD_SEMCR_Register;
      --  GPIO port D CID configuration register for I/O pin 9
      GPIOD_CIDCFGR9  : aliased GPIOD_CIDCFGR_Register;
      --  GPIO port D semaphore control register for I/O pin 9
      GPIOD_SEMCR9    : aliased GPIOD_SEMCR_Register;
      --  GPIO port D CID configuration register for I/O pin 10
      GPIOD_CIDCFGR10 : aliased GPIOD_CIDCFGR_Register;
      --  GPIO port D semaphore control register for I/O pin 10
      GPIOD_SEMCR10   : aliased GPIOD_SEMCR_Register;
      --  GPIO port D CID configuration register for I/O pin 11
      GPIOD_CIDCFGR11 : aliased GPIOD_CIDCFGR_Register;
      --  GPIO port D semaphore control register for I/O pin 11
      GPIOD_SEMCR11   : aliased GPIOD_SEMCR_Register;
      --  GPIO port D CID configuration register for I/O pin 12
      GPIOD_CIDCFGR12 : aliased GPIOD_CIDCFGR_Register;
      --  GPIO port D semaphore control register for I/O pin 12
      GPIOD_SEMCR12   : aliased GPIOD_SEMCR_Register;
      --  GPIO port D CID configuration register for I/O pin 13
      GPIOD_CIDCFGR13 : aliased GPIOD_CIDCFGR_Register;
      --  GPIO port D semaphore control register for I/O pin 13
      GPIOD_SEMCR13   : aliased GPIOD_SEMCR_Register;
      --  GPIO port D CID configuration register for I/O pin 14
      GPIOD_CIDCFGR14 : aliased GPIOD_CIDCFGR_Register;
      --  GPIO port D semaphore control register for I/O pin 14
      GPIOD_SEMCR14   : aliased GPIOD_SEMCR_Register;
      --  GPIO port D CID configuration register for I/O pin 15
      GPIOD_CIDCFGR15 : aliased GPIOD_CIDCFGR_Register;
      --  GPIO port D semaphore control register for I/O pin 15
      GPIOD_SEMCR15   : aliased GPIOD_SEMCR_Register;
      --  GPIO port D hardware configuration register 11
      GPIOD_HWCFGR11  : aliased GPIOD_HWCFGR11_Register;
      --  GPIO port D hardware configuration register 10
      GPIOD_HWCFGR10  : aliased GPIOD_HWCFGR10_Register;
      --  GPIO port D hardware configuration register 9
      GPIOD_HWCFGR9   : aliased GPIOD_HWCFGR9_Register;
      --  GPIO port D hardware configuration register 8
      GPIOD_HWCFGR8   : aliased GPIOD_HWCFGR8_Register;
      --  GPIO port D hardware configuration register 7
      GPIOD_HWCFGR7   : aliased HAL.UInt32;
      --  GPIO port D hardware configuration register 6
      GPIOD_HWCFGR6   : aliased HAL.UInt32;
      --  GPIO port D hardware configuration register 5
      GPIOD_HWCFGR5   : aliased HAL.UInt32;
      --  GPIO port D hardware configuration register 4
      GPIOD_HWCFGR4   : aliased GPIOD_HWCFGR4_Register;
      --  GPIO port D hardware configuration register 3
      GPIOD_HWCFGR3   : aliased HAL.UInt32;
      --  GPIO port D hardware configuration register 2
      GPIOD_HWCFGR2   : aliased HAL.UInt32;
      --  GPIO port D hardware configuration register 1
      GPIOD_HWCFGR1   : aliased GPIOD_HWCFGR1_Register;
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
      GPIOD_ADVCFGRL  at 16#48# range 0 .. 31;
      GPIOD_ADVCFGRH  at 16#4C# range 0 .. 31;
      GPIOD_CIDCFGR0  at 16#50# range 0 .. 31;
      GPIOD_SEMCR0    at 16#54# range 0 .. 31;
      GPIOD_CIDCFGR1  at 16#58# range 0 .. 31;
      GPIOD_SEMCR1    at 16#5C# range 0 .. 31;
      GPIOD_CIDCFGR2  at 16#60# range 0 .. 31;
      GPIOD_SEMCR2    at 16#64# range 0 .. 31;
      GPIOD_CIDCFGR3  at 16#68# range 0 .. 31;
      GPIOD_SEMCR3    at 16#6C# range 0 .. 31;
      GPIOD_CIDCFGR4  at 16#70# range 0 .. 31;
      GPIOD_SEMCR4    at 16#74# range 0 .. 31;
      GPIOD_CIDCFGR5  at 16#78# range 0 .. 31;
      GPIOD_SEMCR5    at 16#7C# range 0 .. 31;
      GPIOD_CIDCFGR6  at 16#80# range 0 .. 31;
      GPIOD_SEMCR6    at 16#84# range 0 .. 31;
      GPIOD_CIDCFGR7  at 16#88# range 0 .. 31;
      GPIOD_SEMCR7    at 16#8C# range 0 .. 31;
      GPIOD_CIDCFGR8  at 16#90# range 0 .. 31;
      GPIOD_SEMCR8    at 16#94# range 0 .. 31;
      GPIOD_CIDCFGR9  at 16#98# range 0 .. 31;
      GPIOD_SEMCR9    at 16#9C# range 0 .. 31;
      GPIOD_CIDCFGR10 at 16#A0# range 0 .. 31;
      GPIOD_SEMCR10   at 16#A4# range 0 .. 31;
      GPIOD_CIDCFGR11 at 16#A8# range 0 .. 31;
      GPIOD_SEMCR11   at 16#AC# range 0 .. 31;
      GPIOD_CIDCFGR12 at 16#B0# range 0 .. 31;
      GPIOD_SEMCR12   at 16#B4# range 0 .. 31;
      GPIOD_CIDCFGR13 at 16#B8# range 0 .. 31;
      GPIOD_SEMCR13   at 16#BC# range 0 .. 31;
      GPIOD_CIDCFGR14 at 16#C0# range 0 .. 31;
      GPIOD_SEMCR14   at 16#C4# range 0 .. 31;
      GPIOD_CIDCFGR15 at 16#C8# range 0 .. 31;
      GPIOD_SEMCR15   at 16#CC# range 0 .. 31;
      GPIOD_HWCFGR11  at 16#3C8# range 0 .. 31;
      GPIOD_HWCFGR10  at 16#3CC# range 0 .. 31;
      GPIOD_HWCFGR9   at 16#3D0# range 0 .. 31;
      GPIOD_HWCFGR8   at 16#3D4# range 0 .. 31;
      GPIOD_HWCFGR7   at 16#3D8# range 0 .. 31;
      GPIOD_HWCFGR6   at 16#3DC# range 0 .. 31;
      GPIOD_HWCFGR5   at 16#3E0# range 0 .. 31;
      GPIOD_HWCFGR4   at 16#3E4# range 0 .. 31;
      GPIOD_HWCFGR3   at 16#3E8# range 0 .. 31;
      GPIOD_HWCFGR2   at 16#3EC# range 0 .. 31;
      GPIOD_HWCFGR1   at 16#3F0# range 0 .. 31;
      GPIOD_VERR      at 16#3F4# range 0 .. 31;
      GPIOD_IPIDR     at 16#3F8# range 0 .. 31;
      GPIOD_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  Control of ioport D
   GPIOD_Periph : aliased GPIOD_Peripheral
     with Import, Address => GPIOD_Base;

   --  Control of ioport D
   GPIOD_S_Periph : aliased GPIOD_Peripheral
     with Import, Address => GPIOD_S_Base;

end STM32_SVD.GPIOD;
