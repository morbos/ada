--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WB55x.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.GPIOH is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  MODER_MODE array element
   subtype MODER_MODE_Element is Interfaces.Bit_Types.UInt2;

   --  MODER_MODE array
   type MODER_MODE_Field_Array is array (0 .. 1) of MODER_MODE_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for MODER_MODE
   type MODER_MODE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  MODE as an array
            Arr : MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for MODER_MODE_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype MODER_MODE3_Field is Interfaces.Bit_Types.UInt2;

   type MODER_Register is record
      MODE          : MODER_MODE_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_5  : Interfaces.Bit_Types.UInt2 := 16#0#;
      MODE3         : MODER_MODE3_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODER_Register use record
      MODE          at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      MODE3         at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  OTYPER_OT array
   type OTYPER_OT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for OTYPER_OT
   type OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  OT as an array
            Arr : OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for OTYPER_OT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   type OTYPER_Register is record
      OT            : OTYPER_OT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_2  : Interfaces.Bit_Types.Bit := 16#0#;
      OT3           : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTYPER_Register use record
      OT            at 0 range 0 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      OT3           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  OSPEEDR_OSPEED array element
   subtype OSPEEDR_OSPEED_Element is Interfaces.Bit_Types.UInt2;

   --  OSPEEDR_OSPEED array
   type OSPEEDR_OSPEED_Field_Array is array (0 .. 1)
     of OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for OSPEEDR_OSPEED
   type OSPEEDR_OSPEED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  OSPEED as an array
            Arr : OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for OSPEEDR_OSPEED_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype OSPEEDR_OSPEED3_Field is Interfaces.Bit_Types.UInt2;

   type OSPEEDR_Register is record
      OSPEED        : OSPEEDR_OSPEED_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_5  : Interfaces.Bit_Types.UInt2 := 16#0#;
      OSPEED3       : OSPEEDR_OSPEED3_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSPEEDR_Register use record
      OSPEED        at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      OSPEED3       at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PUPDR_PUPD array element
   subtype PUPDR_PUPD_Element is Interfaces.Bit_Types.UInt2;

   --  PUPDR_PUPD array
   type PUPDR_PUPD_Field_Array is array (0 .. 1) of PUPDR_PUPD_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for PUPDR_PUPD
   type PUPDR_PUPD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  PUPD as an array
            Arr : PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PUPDR_PUPD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype PUPDR_PUPD3_Field is Interfaces.Bit_Types.UInt2;

   type PUPDR_Register is record
      PUPD          : PUPDR_PUPD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_5  : Interfaces.Bit_Types.UInt2 := 16#0#;
      PUPD3         : PUPDR_PUPD3_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUPDR_Register use record
      PUPD          at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      PUPD3         at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  IDR_ID array
   type IDR_ID_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for IDR_ID
   type IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  ID as an array
            Arr : IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for IDR_ID_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   type IDR_Register is record
      ID            : IDR_ID_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_2  : Interfaces.Bit_Types.Bit := 16#0#;
      ID3           : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      ID            at 0 range 0 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      ID3           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  ODR_OD array
   type ODR_OD_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ODR_OD
   type ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  OD as an array
            Arr : ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ODR_OD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   type ODR_Register is record
      OD            : ODR_OD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_2  : Interfaces.Bit_Types.Bit := 16#0#;
      OD3           : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ODR_Register use record
      OD            at 0 range 0 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      OD3           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  BSRR_BS array
   type BSRR_BS_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for BSRR_BS
   type BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  BS as an array
            Arr : BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for BSRR_BS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  BSRR_BR array
   type BSRR_BR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for BSRR_BR
   type BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  BR as an array
            Arr : BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for BSRR_BR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   type BSRR_Register is record
      BS             : BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      BS3            : Boolean := False;
      --  unspecified
      Reserved_4_15  : Interfaces.Bit_Types.UInt12 := 16#0#;
      BR             : BSRR_BR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      BR3            : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSRR_Register use record
      BS             at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      BS3            at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      BR             at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      BR3            at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  LCKR_LCK array
   type LCKR_LCK_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for LCKR_LCK
   type LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  LCK as an array
            Arr : LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for LCKR_LCK_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   type LCKR_Register is record
      LCK            : LCKR_LCK_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      LCK3           : Boolean := False;
      --  unspecified
      Reserved_4_15  : Interfaces.Bit_Types.UInt12 := 16#0#;
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCKR_Register use record
      LCK            at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      LCK3           at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  AFRL_AFSEL array element
   subtype AFRL_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  AFRL_AFSEL array
   type AFRL_AFSEL_Field_Array is array (0 .. 1) of AFRL_AFSEL_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for AFRL_AFSEL
   type AFRL_AFSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  AFSEL as an array
            Arr : AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for AFRL_AFSEL_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype AFRL_AFSEL3_Field is Interfaces.Bit_Types.UInt4;

   type AFRL_Register is record
      AFSEL          : AFRL_AFSEL_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_11  : Interfaces.Bit_Types.UInt4 := 16#0#;
      AFSEL3         : AFRL_AFSEL3_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFRL_Register use record
      AFSEL          at 0 range 0 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      AFSEL3         at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  AFRH_AFSEL array element
   subtype AFRH_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  AFRH_AFSEL array
   type AFRH_AFSEL_Field_Array is array (8 .. 15) of AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   type AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BRR_BR array
   type BRR_BR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for BRR_BR
   type BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  BR as an array
            Arr : BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for BRR_BR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   type BRR_Register is record
      BR            : BRR_BR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_2  : Interfaces.Bit_Types.Bit := 16#0#;
      BR3           : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRR_Register use record
      BR            at 0 range 0 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      BR3           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type GPIOH_Peripheral is record
      MODER   : aliased MODER_Register;
      OTYPER  : aliased OTYPER_Register;
      OSPEEDR : aliased OSPEEDR_Register;
      PUPDR   : aliased PUPDR_Register;
      IDR     : aliased IDR_Register;
      ODR     : aliased ODR_Register;
      BSRR    : aliased BSRR_Register;
      LCKR    : aliased LCKR_Register;
      AFRL    : aliased AFRL_Register;
      AFRH    : aliased AFRH_Register;
      BRR     : aliased BRR_Register;
   end record
     with Volatile;

   for GPIOH_Peripheral use record
      MODER   at 16#0# range 0 .. 31;
      OTYPER  at 16#4# range 0 .. 31;
      OSPEEDR at 16#8# range 0 .. 31;
      PUPDR   at 16#C# range 0 .. 31;
      IDR     at 16#10# range 0 .. 31;
      ODR     at 16#14# range 0 .. 31;
      BSRR    at 16#18# range 0 .. 31;
      LCKR    at 16#1C# range 0 .. 31;
      AFRL    at 16#20# range 0 .. 31;
      AFRH    at 16#24# range 0 .. 31;
      BRR     at 16#28# range 0 .. 31;
   end record;

   GPIOH_Periph : aliased GPIOH_Peripheral
     with Import, Address => GPIOH_Base;

end Interfaces.STM32.GPIOH;
