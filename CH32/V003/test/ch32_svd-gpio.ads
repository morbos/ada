--  This spec has been automatically generated from CH32V003xx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package CH32_SVD.GPIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CFGLR_MODE0_Field is HAL.UInt2;
   subtype CFGLR_CNF0_Field is HAL.UInt2;
   subtype CFGLR_MODE1_Field is HAL.UInt2;
   subtype CFGLR_CNF1_Field is HAL.UInt2;
   subtype CFGLR_MODE2_Field is HAL.UInt2;
   subtype CFGLR_CNF2_Field is HAL.UInt2;
   subtype CFGLR_MODE3_Field is HAL.UInt2;
   subtype CFGLR_CNF3_Field is HAL.UInt2;
   subtype CFGLR_MODE4_Field is HAL.UInt2;
   subtype CFGLR_CNF4_Field is HAL.UInt2;
   subtype CFGLR_MODE5_Field is HAL.UInt2;
   subtype CFGLR_CNF5_Field is HAL.UInt2;
   subtype CFGLR_MODE6_Field is HAL.UInt2;
   subtype CFGLR_CNF6_Field is HAL.UInt2;
   subtype CFGLR_MODE7_Field is HAL.UInt2;
   subtype CFGLR_CNF7_Field is HAL.UInt2;

   --  Port configuration register low (GPIOn_CFGLR)
   type CFGLR_Register is record
      --  Port n.0 mode bits
      MODE0 : CFGLR_MODE0_Field := 16#0#;
      --  Port n.0 configuration bits
      CNF0  : CFGLR_CNF0_Field := 16#1#;
      --  Port n.1 mode bits
      MODE1 : CFGLR_MODE1_Field := 16#0#;
      --  Port n.1 configuration bits
      CNF1  : CFGLR_CNF1_Field := 16#1#;
      --  Port n.2 mode bits
      MODE2 : CFGLR_MODE2_Field := 16#0#;
      --  Port n.2 configuration bits
      CNF2  : CFGLR_CNF2_Field := 16#1#;
      --  Port n.3 mode bits
      MODE3 : CFGLR_MODE3_Field := 16#0#;
      --  Port n.3 configuration bits
      CNF3  : CFGLR_CNF3_Field := 16#1#;
      --  Port n.4 mode bits
      MODE4 : CFGLR_MODE4_Field := 16#0#;
      --  Port n.4 configuration bits
      CNF4  : CFGLR_CNF4_Field := 16#1#;
      --  Port n.5 mode bits
      MODE5 : CFGLR_MODE5_Field := 16#0#;
      --  Port n.5 configuration bits
      CNF5  : CFGLR_CNF5_Field := 16#1#;
      --  Port n.6 mode bits
      MODE6 : CFGLR_MODE6_Field := 16#0#;
      --  Port n.6 configuration bits
      CNF6  : CFGLR_CNF6_Field := 16#1#;
      --  Port n.7 mode bits
      MODE7 : CFGLR_MODE7_Field := 16#0#;
      --  Port n.7 configuration bits
      CNF7  : CFGLR_CNF7_Field := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGLR_Register use record
      MODE0 at 0 range 0 .. 1;
      CNF0  at 0 range 2 .. 3;
      MODE1 at 0 range 4 .. 5;
      CNF1  at 0 range 6 .. 7;
      MODE2 at 0 range 8 .. 9;
      CNF2  at 0 range 10 .. 11;
      MODE3 at 0 range 12 .. 13;
      CNF3  at 0 range 14 .. 15;
      MODE4 at 0 range 16 .. 17;
      CNF4  at 0 range 18 .. 19;
      MODE5 at 0 range 20 .. 21;
      CNF5  at 0 range 22 .. 23;
      MODE6 at 0 range 24 .. 25;
      CNF6  at 0 range 26 .. 27;
      MODE7 at 0 range 28 .. 29;
      CNF7  at 0 range 30 .. 31;
   end record;

   --  INDR_IDR array
   type INDR_IDR_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for INDR_IDR
   type INDR_IDR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IDR as a value
            Val : HAL.UInt8;
         when True =>
            --  IDR as an array
            Arr : INDR_IDR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for INDR_IDR_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Port input data register (GPIOn_INDR)
   type INDR_Register is record
      --  Read-only. Port input data
      IDR           : INDR_IDR_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INDR_Register use record
      IDR           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  OUTDR_ODR array
   type OUTDR_ODR_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for OUTDR_ODR
   type OUTDR_ODR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ODR as a value
            Val : HAL.UInt8;
         when True =>
            --  ODR as an array
            Arr : OUTDR_ODR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for OUTDR_ODR_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Port output data register (GPIOn_OUTDR)
   type OUTDR_Register is record
      --  Port output data
      ODR           : OUTDR_ODR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUTDR_Register use record
      ODR           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  BSHR_BS array
   type BSHR_BS_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for BSHR_BS
   type BSHR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : HAL.UInt8;
         when True =>
            --  BS as an array
            Arr : BSHR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for BSHR_BS_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  BSHR_BR array
   type BSHR_BR_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for BSHR_BR
   type BSHR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : HAL.UInt8;
         when True =>
            --  BR as an array
            Arr : BSHR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for BSHR_BR_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Port bit set/reset register (GPIOn_BSHR)
   type BSHR_Register is record
      --  Write-only. Set bit 0
      BS             : BSHR_BS_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Write-only. Reset bit 0
      BR             : BSHR_BR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSHR_Register use record
      BS             at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      BR             at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  BCR_BR array
   type BCR_BR_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for BCR_BR
   type BCR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : HAL.UInt8;
         when True =>
            --  BR as an array
            Arr : BCR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for BCR_BR_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Port bit reset register (GPIOn_BCR)
   type BCR_Register is record
      --  Write-only. Reset bit 0
      BR            : BCR_BR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCR_Register use record
      BR            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  LCKR_LCK array
   type LCKR_LCK_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for LCKR_LCK
   type LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : HAL.UInt8;
         when True =>
            --  LCK as an array
            Arr : LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for LCKR_LCK_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Port configuration lock register
   type LCKR_Register is record
      --  Port A Lock bit 0
      LCK           : LCKR_LCK_Field := (As_Array => False, Val => 16#0#);
      --  Lock key
      LCKK          : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCKR_Register use record
      LCK           at 0 range 0 .. 7;
      LCKK          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General purpose I/O
   type GPIO_Peripheral is record
      --  Port configuration register low (GPIOn_CFGLR)
      CFGLR : aliased CFGLR_Register;
      --  Port input data register (GPIOn_INDR)
      INDR  : aliased INDR_Register;
      --  Port output data register (GPIOn_OUTDR)
      OUTDR : aliased OUTDR_Register;
      --  Port bit set/reset register (GPIOn_BSHR)
      BSHR  : aliased BSHR_Register;
      --  Port bit reset register (GPIOn_BCR)
      BCR   : aliased BCR_Register;
      --  Port configuration lock register
      LCKR  : aliased LCKR_Register;
   end record
     with Volatile;

   for GPIO_Peripheral use record
      CFGLR at 16#0# range 0 .. 31;
      INDR  at 16#8# range 0 .. 31;
      OUTDR at 16#C# range 0 .. 31;
      BSHR  at 16#10# range 0 .. 31;
      BCR   at 16#14# range 0 .. 31;
      LCKR  at 16#18# range 0 .. 31;
   end record;

   --  General purpose I/O
   GPIOA_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOA_Base;

   --  General purpose I/O
   GPIOC_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOC_Base;

   --  General purpose I/O
   GPIOD_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIOD_Base;

end CH32_SVD.GPIO;
