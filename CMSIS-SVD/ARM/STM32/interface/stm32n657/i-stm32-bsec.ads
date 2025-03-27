--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.BSEC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  BSEC_SPLOCK0_SPLOCK array
   type BSEC_SPLOCK0_SPLOCK_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky programming lock register 0
   type BSEC_SPLOCK0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SPLOCK as an array
            Arr : BSEC_SPLOCK0_SPLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SPLOCK0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SPLOCK1_SPLOCK array
   type BSEC_SPLOCK1_SPLOCK_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky programming lock register 1
   type BSEC_SPLOCK1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SPLOCK as an array
            Arr : BSEC_SPLOCK1_SPLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SPLOCK1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SPLOCK2_SPLOCK array
   type BSEC_SPLOCK2_SPLOCK_Field_Array is array (64 .. 95) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky programming lock register 2
   type BSEC_SPLOCK2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SPLOCK as an array
            Arr : BSEC_SPLOCK2_SPLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SPLOCK2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SPLOCK3_SPLOCK array
   type BSEC_SPLOCK3_SPLOCK_Field_Array is array (96 .. 127) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky programming lock register 3
   type BSEC_SPLOCK3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SPLOCK as an array
            Arr : BSEC_SPLOCK3_SPLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SPLOCK3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SPLOCK4_SPLOCK array
   type BSEC_SPLOCK4_SPLOCK_Field_Array is array (128 .. 159) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky programming lock register 4
   type BSEC_SPLOCK4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SPLOCK as an array
            Arr : BSEC_SPLOCK4_SPLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SPLOCK4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SPLOCK5_SPLOCK array
   type BSEC_SPLOCK5_SPLOCK_Field_Array is array (160 .. 191) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky programming lock register 5
   type BSEC_SPLOCK5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SPLOCK as an array
            Arr : BSEC_SPLOCK5_SPLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SPLOCK5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SPLOCK6_SPLOCK array
   type BSEC_SPLOCK6_SPLOCK_Field_Array is array (192 .. 223) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky programming lock register 6
   type BSEC_SPLOCK6_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SPLOCK as an array
            Arr : BSEC_SPLOCK6_SPLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SPLOCK6_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SPLOCK7_SPLOCK array
   type BSEC_SPLOCK7_SPLOCK_Field_Array is array (224 .. 255) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky programming lock register 7
   type BSEC_SPLOCK7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SPLOCK as an array
            Arr : BSEC_SPLOCK7_SPLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SPLOCK7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SPLOCK8_SPLOCK array
   type BSEC_SPLOCK8_SPLOCK_Field_Array is array (256 .. 287) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky programming lock register 8
   type BSEC_SPLOCK8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SPLOCK as an array
            Arr : BSEC_SPLOCK8_SPLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SPLOCK8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SPLOCK9_SPLOCK array
   type BSEC_SPLOCK9_SPLOCK_Field_Array is array (288 .. 319) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky programming lock register 9
   type BSEC_SPLOCK9_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SPLOCK as an array
            Arr : BSEC_SPLOCK9_SPLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SPLOCK9_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SPLOCK10_SPLOCK array
   type BSEC_SPLOCK10_SPLOCK_Field_Array is array (320 .. 351) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky programming lock register 10
   type BSEC_SPLOCK10_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SPLOCK as an array
            Arr : BSEC_SPLOCK10_SPLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SPLOCK10_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SPLOCK11_SPLOCK array
   type BSEC_SPLOCK11_SPLOCK_Field_Array is array (352 .. 383) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky programming lock register 11
   type BSEC_SPLOCK11_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SPLOCK as an array
            Arr : BSEC_SPLOCK11_SPLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SPLOCK11_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SWLOCK0_SWLOCK array
   type BSEC_SWLOCK0_SWLOCK_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky write lock register 0
   type BSEC_SWLOCK0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SWLOCK as an array
            Arr : BSEC_SWLOCK0_SWLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SWLOCK0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SWLOCK1_SWLOCK array
   type BSEC_SWLOCK1_SWLOCK_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky write lock register 1
   type BSEC_SWLOCK1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SWLOCK as an array
            Arr : BSEC_SWLOCK1_SWLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SWLOCK1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SWLOCK2_SWLOCK array
   type BSEC_SWLOCK2_SWLOCK_Field_Array is array (64 .. 95) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky write lock register 2
   type BSEC_SWLOCK2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SWLOCK as an array
            Arr : BSEC_SWLOCK2_SWLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SWLOCK2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SWLOCK3_SWLOCK array
   type BSEC_SWLOCK3_SWLOCK_Field_Array is array (96 .. 127) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky write lock register 3
   type BSEC_SWLOCK3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SWLOCK as an array
            Arr : BSEC_SWLOCK3_SWLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SWLOCK3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SWLOCK4_SWLOCK array
   type BSEC_SWLOCK4_SWLOCK_Field_Array is array (128 .. 159) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky write lock register 4
   type BSEC_SWLOCK4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SWLOCK as an array
            Arr : BSEC_SWLOCK4_SWLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SWLOCK4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SWLOCK5_SWLOCK array
   type BSEC_SWLOCK5_SWLOCK_Field_Array is array (160 .. 191) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky write lock register 5
   type BSEC_SWLOCK5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SWLOCK as an array
            Arr : BSEC_SWLOCK5_SWLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SWLOCK5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SWLOCK6_SWLOCK array
   type BSEC_SWLOCK6_SWLOCK_Field_Array is array (192 .. 223) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky write lock register 6
   type BSEC_SWLOCK6_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SWLOCK as an array
            Arr : BSEC_SWLOCK6_SWLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SWLOCK6_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SWLOCK7_SWLOCK array
   type BSEC_SWLOCK7_SWLOCK_Field_Array is array (224 .. 255) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky write lock register 7
   type BSEC_SWLOCK7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SWLOCK as an array
            Arr : BSEC_SWLOCK7_SWLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SWLOCK7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SWLOCK8_SWLOCK array
   type BSEC_SWLOCK8_SWLOCK_Field_Array is array (256 .. 287) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky write lock register 8
   type BSEC_SWLOCK8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SWLOCK as an array
            Arr : BSEC_SWLOCK8_SWLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SWLOCK8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SWLOCK9_SWLOCK array
   type BSEC_SWLOCK9_SWLOCK_Field_Array is array (288 .. 319) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky write lock register 9
   type BSEC_SWLOCK9_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SWLOCK as an array
            Arr : BSEC_SWLOCK9_SWLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SWLOCK9_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SWLOCK10_SWLOCK array
   type BSEC_SWLOCK10_SWLOCK_Field_Array is array (320 .. 351) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky write lock register 10
   type BSEC_SWLOCK10_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SWLOCK as an array
            Arr : BSEC_SWLOCK10_SWLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SWLOCK10_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SWLOCK11_SWLOCK array
   type BSEC_SWLOCK11_SWLOCK_Field_Array is array (352 .. 383) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky write lock register 11
   type BSEC_SWLOCK11_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SWLOCK as an array
            Arr : BSEC_SWLOCK11_SWLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SWLOCK11_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SRLOCK0_SRLOCK array
   type BSEC_SRLOCK0_SRLOCK_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky reload lock register 0
   type BSEC_SRLOCK0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SRLOCK as an array
            Arr : BSEC_SRLOCK0_SRLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SRLOCK0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SRLOCK1_SRLOCK array
   type BSEC_SRLOCK1_SRLOCK_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky reload lock register 1
   type BSEC_SRLOCK1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SRLOCK as an array
            Arr : BSEC_SRLOCK1_SRLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SRLOCK1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SRLOCK2_SRLOCK array
   type BSEC_SRLOCK2_SRLOCK_Field_Array is array (64 .. 95) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky reload lock register 2
   type BSEC_SRLOCK2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SRLOCK as an array
            Arr : BSEC_SRLOCK2_SRLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SRLOCK2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SRLOCK3_SRLOCK array
   type BSEC_SRLOCK3_SRLOCK_Field_Array is array (96 .. 127) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky reload lock register 3
   type BSEC_SRLOCK3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SRLOCK as an array
            Arr : BSEC_SRLOCK3_SRLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SRLOCK3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SRLOCK4_SRLOCK array
   type BSEC_SRLOCK4_SRLOCK_Field_Array is array (128 .. 159) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky reload lock register 4
   type BSEC_SRLOCK4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SRLOCK as an array
            Arr : BSEC_SRLOCK4_SRLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SRLOCK4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SRLOCK5_SRLOCK array
   type BSEC_SRLOCK5_SRLOCK_Field_Array is array (160 .. 191) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky reload lock register 5
   type BSEC_SRLOCK5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SRLOCK as an array
            Arr : BSEC_SRLOCK5_SRLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SRLOCK5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SRLOCK6_SRLOCK array
   type BSEC_SRLOCK6_SRLOCK_Field_Array is array (192 .. 223) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky reload lock register 6
   type BSEC_SRLOCK6_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SRLOCK as an array
            Arr : BSEC_SRLOCK6_SRLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SRLOCK6_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SRLOCK7_SRLOCK array
   type BSEC_SRLOCK7_SRLOCK_Field_Array is array (224 .. 255) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky reload lock register 7
   type BSEC_SRLOCK7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SRLOCK as an array
            Arr : BSEC_SRLOCK7_SRLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SRLOCK7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SRLOCK8_SRLOCK array
   type BSEC_SRLOCK8_SRLOCK_Field_Array is array (256 .. 287) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky reload lock register 8
   type BSEC_SRLOCK8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SRLOCK as an array
            Arr : BSEC_SRLOCK8_SRLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SRLOCK8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SRLOCK9_SRLOCK array
   type BSEC_SRLOCK9_SRLOCK_Field_Array is array (288 .. 319) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky reload lock register 9
   type BSEC_SRLOCK9_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SRLOCK as an array
            Arr : BSEC_SRLOCK9_SRLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SRLOCK9_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SRLOCK10_SRLOCK array
   type BSEC_SRLOCK10_SRLOCK_Field_Array is array (320 .. 351) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky reload lock register 10
   type BSEC_SRLOCK10_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SRLOCK as an array
            Arr : BSEC_SRLOCK10_SRLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SRLOCK10_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SRLOCK11_SRLOCK array
   type BSEC_SRLOCK11_SRLOCK_Field_Array is array (352 .. 383) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC sticky reload lock register 11
   type BSEC_SRLOCK11_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRLOCK as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SRLOCK as an array
            Arr : BSEC_SRLOCK11_SRLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SRLOCK11_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_OTPVLDR0_VLDF array
   type BSEC_OTPVLDR0_VLDF_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC OTP valid register 0
   type BSEC_OTPVLDR0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VLDF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  VLDF as an array
            Arr : BSEC_OTPVLDR0_VLDF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_OTPVLDR0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_OTPVLDR1_VLDF array
   type BSEC_OTPVLDR1_VLDF_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC OTP valid register 1
   type BSEC_OTPVLDR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VLDF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  VLDF as an array
            Arr : BSEC_OTPVLDR1_VLDF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_OTPVLDR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_OTPVLDR2_VLDF array
   type BSEC_OTPVLDR2_VLDF_Field_Array is array (64 .. 95) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC OTP valid register 2
   type BSEC_OTPVLDR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VLDF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  VLDF as an array
            Arr : BSEC_OTPVLDR2_VLDF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_OTPVLDR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_OTPVLDR3_VLDF array
   type BSEC_OTPVLDR3_VLDF_Field_Array is array (96 .. 127) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC OTP valid register 3
   type BSEC_OTPVLDR3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VLDF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  VLDF as an array
            Arr : BSEC_OTPVLDR3_VLDF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_OTPVLDR3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_OTPVLDR4_VLDF array
   type BSEC_OTPVLDR4_VLDF_Field_Array is array (128 .. 159) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC OTP valid register 4
   type BSEC_OTPVLDR4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VLDF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  VLDF as an array
            Arr : BSEC_OTPVLDR4_VLDF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_OTPVLDR4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_OTPVLDR5_VLDF array
   type BSEC_OTPVLDR5_VLDF_Field_Array is array (160 .. 191) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC OTP valid register 5
   type BSEC_OTPVLDR5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VLDF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  VLDF as an array
            Arr : BSEC_OTPVLDR5_VLDF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_OTPVLDR5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_OTPVLDR6_VLDF array
   type BSEC_OTPVLDR6_VLDF_Field_Array is array (192 .. 223) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC OTP valid register 6
   type BSEC_OTPVLDR6_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VLDF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  VLDF as an array
            Arr : BSEC_OTPVLDR6_VLDF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_OTPVLDR6_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_OTPVLDR7_VLDF array
   type BSEC_OTPVLDR7_VLDF_Field_Array is array (224 .. 255) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC OTP valid register 7
   type BSEC_OTPVLDR7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VLDF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  VLDF as an array
            Arr : BSEC_OTPVLDR7_VLDF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_OTPVLDR7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_OTPVLDR8_VLDF array
   type BSEC_OTPVLDR8_VLDF_Field_Array is array (256 .. 287) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC OTP valid register 8
   type BSEC_OTPVLDR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VLDF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  VLDF as an array
            Arr : BSEC_OTPVLDR8_VLDF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_OTPVLDR8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_OTPVLDR9_VLDF array
   type BSEC_OTPVLDR9_VLDF_Field_Array is array (288 .. 319) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC OTP valid register 9
   type BSEC_OTPVLDR9_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VLDF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  VLDF as an array
            Arr : BSEC_OTPVLDR9_VLDF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_OTPVLDR9_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_OTPVLDR10_VLDF array
   type BSEC_OTPVLDR10_VLDF_Field_Array is array (320 .. 351) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC OTP valid register 10
   type BSEC_OTPVLDR10_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VLDF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  VLDF as an array
            Arr : BSEC_OTPVLDR10_VLDF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_OTPVLDR10_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_OTPVLDR11_VLDF array
   type BSEC_OTPVLDR11_VLDF_Field_Array is array (352 .. 383) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC OTP valid register 11
   type BSEC_OTPVLDR11_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VLDF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  VLDF as an array
            Arr : BSEC_OTPVLDR11_VLDF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_OTPVLDR11_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SFSR0_SFW array
   type BSEC_SFSR0_SFW_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC shadowed fuses status register 0
   type BSEC_SFSR0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SFW as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SFW as an array
            Arr : BSEC_SFSR0_SFW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SFSR0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SFSR1_SFW array
   type BSEC_SFSR1_SFW_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC shadowed fuses status register 1
   type BSEC_SFSR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SFW as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SFW as an array
            Arr : BSEC_SFSR1_SFW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SFSR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SFSR2_SFW array
   type BSEC_SFSR2_SFW_Field_Array is array (64 .. 95) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC shadowed fuses status register 2
   type BSEC_SFSR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SFW as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SFW as an array
            Arr : BSEC_SFSR2_SFW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SFSR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SFSR3_SFW array
   type BSEC_SFSR3_SFW_Field_Array is array (96 .. 127) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC shadowed fuses status register 3
   type BSEC_SFSR3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SFW as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SFW as an array
            Arr : BSEC_SFSR3_SFW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SFSR3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SFSR4_SFW array
   type BSEC_SFSR4_SFW_Field_Array is array (128 .. 159) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC shadowed fuses status register 4
   type BSEC_SFSR4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SFW as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SFW as an array
            Arr : BSEC_SFSR4_SFW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SFSR4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SFSR5_SFW array
   type BSEC_SFSR5_SFW_Field_Array is array (160 .. 191) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC shadowed fuses status register 5
   type BSEC_SFSR5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SFW as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SFW as an array
            Arr : BSEC_SFSR5_SFW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SFSR5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SFSR6_SFW array
   type BSEC_SFSR6_SFW_Field_Array is array (192 .. 223) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC shadowed fuses status register 6
   type BSEC_SFSR6_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SFW as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SFW as an array
            Arr : BSEC_SFSR6_SFW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SFSR6_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SFSR7_SFW array
   type BSEC_SFSR7_SFW_Field_Array is array (224 .. 255) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC shadowed fuses status register 7
   type BSEC_SFSR7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SFW as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SFW as an array
            Arr : BSEC_SFSR7_SFW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SFSR7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SFSR8_SFW array
   type BSEC_SFSR8_SFW_Field_Array is array (256 .. 287) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC shadowed fuses status register 8
   type BSEC_SFSR8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SFW as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SFW as an array
            Arr : BSEC_SFSR8_SFW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SFSR8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SFSR9_SFW array
   type BSEC_SFSR9_SFW_Field_Array is array (288 .. 319) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC shadowed fuses status register 9
   type BSEC_SFSR9_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SFW as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SFW as an array
            Arr : BSEC_SFSR9_SFW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SFSR9_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SFSR10_SFW array
   type BSEC_SFSR10_SFW_Field_Array is array (320 .. 351) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC shadowed fuses status register 10
   type BSEC_SFSR10_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SFW as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SFW as an array
            Arr : BSEC_SFSR10_SFW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SFSR10_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BSEC_SFSR11_SFW array
   type BSEC_SFSR11_SFW_Field_Array is array (352 .. 383) of Boolean
     with Component_Size => 1, Size => 32;

   --  BSEC shadowed fuses status register 11
   type BSEC_SFSR11_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SFW as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SFW as an array
            Arr : BSEC_SFSR11_SFW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SFSR11_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype BSEC_OTPCR_ADDR_Field is Interfaces.Bit_Types.UInt9;
   subtype BSEC_OTPCR_LASTCID_Field is Interfaces.Bit_Types.UInt3;

   --  BSEC OTP control register
   type BSEC_OTPCR_Register is record
      --  Fuse word address
      ADDR           : BSEC_OTPCR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_9_12  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Fuse word programming
      PROG           : Boolean := False;
      --  Permanent programming lock
      PPLOCK         : Boolean := False;
      --  unspecified
      Reserved_15_18 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Read-only. Last CID
      LASTCID        : BSEC_OTPCR_LASTCID_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_OTPCR_Register use record
      ADDR           at 0 range 0 .. 8;
      Reserved_9_12  at 0 range 9 .. 12;
      PROG           at 0 range 13 .. 13;
      PPLOCK         at 0 range 14 .. 14;
      Reserved_15_18 at 0 range 15 .. 18;
      LASTCID        at 0 range 19 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  BSEC lock register
   type BSEC_LOCKR_Register is record
      --  Global write lock
      GWLOCK        : Boolean := False;
      --  unspecified
      Reserved_1_1  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Hardware key lock
      HKLOCK        : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_LOCKR_Register use record
      GWLOCK        at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      HKLOCK        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype BSEC_SR_NVSTATE_Field is Interfaces.Bit_Types.UInt6;

   --  BSEC status register
   type BSEC_SR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit;
      --  Read-only. Hardware key valid
      HVALID         : Boolean;
      --  unspecified
      Reserved_2_15  : Interfaces.Bit_Types.UInt14;
      --  Read-only. debug request
      DBGREQ         : Boolean;
      --  unspecified
      Reserved_17_25 : Interfaces.Bit_Types.UInt9;
      --  Read-only. Non-volatile state
      NVSTATE        : BSEC_SR_NVSTATE_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_SR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      HVALID         at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      DBGREQ         at 0 range 16 .. 16;
      Reserved_17_25 at 0 range 17 .. 25;
      NVSTATE        at 0 range 26 .. 31;
   end record;

   --  BSEC OTP status register
   type BSEC_OTPSR_Register is record
      --  Read-only. Busy flag
      BUSY           : Boolean;
      --  Read-only. Initialization done
      INIT_DONE      : Boolean;
      --  Read-only. Hide upper fuse words
      HIDEUP         : Boolean;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit;
      --  Read-only. OTP not virgin
      OTPNVIR        : Boolean;
      --  Read-only. OTP with error
      OTPERR         : Boolean;
      --  Read-only. OTP with single error correction
      OTPSEC         : Boolean;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9;
      --  Read-only. Programming failed
      PROGFAIL       : Boolean;
      --  Read-only. Disturb flag
      DISTURBF       : Boolean;
      --  Read-only. Double error detection flag
      DEDF           : Boolean;
      --  Read-only. Single error correction flag
      SECF           : Boolean;
      --  Read-only. Permanent programming lock flag
      PPLF           : Boolean;
      --  Read-only. Permanent programming lock mismatch flag
      PPLMF          : Boolean;
      --  Read-only. Addresses mismatch error flag
      AMEF           : Boolean;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_OTPSR_Register use record
      BUSY           at 0 range 0 .. 0;
      INIT_DONE      at 0 range 1 .. 1;
      HIDEUP         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      OTPNVIR        at 0 range 4 .. 4;
      OTPERR         at 0 range 5 .. 5;
      OTPSEC         at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      PROGFAIL       at 0 range 16 .. 16;
      DISTURBF       at 0 range 17 .. 17;
      DEDF           at 0 range 18 .. 18;
      SECF           at 0 range 19 .. 19;
      PPLF           at 0 range 20 .. 20;
      PPLMF          at 0 range 21 .. 21;
      AMEF           at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  BSEC epoch select register
   type BSEC_EPOCH_SELR_Register is record
      --  Epoch selection. This value is wired out to the SAES peripheral.
      EPSEL         : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_EPOCH_SELR_Register use record
      EPSEL         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype BSEC_DBGCR_UNLOCK_Field is Interfaces.Bit_Types.Byte;
   subtype BSEC_DBGCR_AUTH_HDPL_Field is Interfaces.Bit_Types.Byte;
   subtype BSEC_DBGCR_AUTH_SEC_Field is Interfaces.Bit_Types.Byte;

   --  BSEC Debug
   type BSEC_DBGCR_Register is record
      --  unspecified
      Reserved_0_7 : Interfaces.Bit_Types.Byte := 16#0#;
      --  any other value: debug not authorized (provided BSEC state is not
      --  OPEN)
      UNLOCK       : BSEC_DBGCR_UNLOCK_Field := 16#0#;
      --  level at which debug may be opened.
      AUTH_HDPL    : BSEC_DBGCR_AUTH_HDPL_Field := 16#0#;
      --  any other value: secure debug not authorized (provided BSEC state is
      --  not OPEN)
      AUTH_SEC     : BSEC_DBGCR_AUTH_SEC_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_DBGCR_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      UNLOCK       at 0 range 8 .. 15;
      AUTH_HDPL    at 0 range 16 .. 23;
      AUTH_SEC     at 0 range 24 .. 31;
   end record;

   subtype BSEC_AP_UNLOCK_UNLOCK_Field is Interfaces.Bit_Types.Byte;

   --  BSEC AP Unlock
   type BSEC_AP_UNLOCK_Register is record
      --  any other value: do not unlock
      UNLOCK        : BSEC_AP_UNLOCK_UNLOCK_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_AP_UNLOCK_Register use record
      UNLOCK        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype BSEC_HDPLSR_HDPL_Field is Interfaces.Bit_Types.Byte;

   --  BSEC HDPL
   type BSEC_HDPLSR_Register is record
      --  Read-only. current HDPL
      HDPL          : BSEC_HDPLSR_HDPL_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_HDPLSR_Register use record
      HDPL          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype BSEC_NEXTLR_INCR_Field is Interfaces.Bit_Types.UInt2;

   --  BSEC Next HDPL
   type BSEC_NEXTLR_Register is record
      --  Increment
      INCR          : BSEC_NEXTLR_INCR_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSEC_NEXTLR_Register use record
      INCR          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Boot and security control
   type BSEC_Peripheral is record
      --  BSEC fuse word 0 value register
      BSEC_FVR0       : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 1 value register
      BSEC_FVR1       : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 2 value register
      BSEC_FVR2       : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 3 value register
      BSEC_FVR3       : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 4 value register
      BSEC_FVR4       : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 5 value register
      BSEC_FVR5       : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 6 value register
      BSEC_FVR6       : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 7 value register
      BSEC_FVR7       : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 8 value register
      BSEC_FVR8       : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 9 value register
      BSEC_FVR9       : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 10 value register
      BSEC_FVR10      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 11 value register
      BSEC_FVR11      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 12 value register
      BSEC_FVR12      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 13 value register
      BSEC_FVR13      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 14 value register
      BSEC_FVR14      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 15 value register
      BSEC_FVR15      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 16 value register
      BSEC_FVR16      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 17 value register
      BSEC_FVR17      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 18 value register
      BSEC_FVR18      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 19 value register
      BSEC_FVR19      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 20 value register
      BSEC_FVR20      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 21 value register
      BSEC_FVR21      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 22 value register
      BSEC_FVR22      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 23 value register
      BSEC_FVR23      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 24 value register
      BSEC_FVR24      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 25 value register
      BSEC_FVR25      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 26 value register
      BSEC_FVR26      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 27 value register
      BSEC_FVR27      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 28 value register
      BSEC_FVR28      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 29 value register
      BSEC_FVR29      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 30 value register
      BSEC_FVR30      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 31 value register
      BSEC_FVR31      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 32 value register
      BSEC_FVR32      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 33 value register
      BSEC_FVR33      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 34 value register
      BSEC_FVR34      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 35 value register
      BSEC_FVR35      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 36 value register
      BSEC_FVR36      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 37 value register
      BSEC_FVR37      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 38 value register
      BSEC_FVR38      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 39 value register
      BSEC_FVR39      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 40 value register
      BSEC_FVR40      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 41 value register
      BSEC_FVR41      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 42 value register
      BSEC_FVR42      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 43 value register
      BSEC_FVR43      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 44 value register
      BSEC_FVR44      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 45 value register
      BSEC_FVR45      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 46 value register
      BSEC_FVR46      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 47 value register
      BSEC_FVR47      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 48 value register
      BSEC_FVR48      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 49 value register
      BSEC_FVR49      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 50 value register
      BSEC_FVR50      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 51 value register
      BSEC_FVR51      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 52 value register
      BSEC_FVR52      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 53 value register
      BSEC_FVR53      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 54 value register
      BSEC_FVR54      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 55 value register
      BSEC_FVR55      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 56 value register
      BSEC_FVR56      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 57 value register
      BSEC_FVR57      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 58 value register
      BSEC_FVR58      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 59 value register
      BSEC_FVR59      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 60 value register
      BSEC_FVR60      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 61 value register
      BSEC_FVR61      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 62 value register
      BSEC_FVR62      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 63 value register
      BSEC_FVR63      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 64 value register
      BSEC_FVR64      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 65 value register
      BSEC_FVR65      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 66 value register
      BSEC_FVR66      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 67 value register
      BSEC_FVR67      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 68 value register
      BSEC_FVR68      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 69 value register
      BSEC_FVR69      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 70 value register
      BSEC_FVR70      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 71 value register
      BSEC_FVR71      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 72 value register
      BSEC_FVR72      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 73 value register
      BSEC_FVR73      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 74 value register
      BSEC_FVR74      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 75 value register
      BSEC_FVR75      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 76 value register
      BSEC_FVR76      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 77 value register
      BSEC_FVR77      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 78 value register
      BSEC_FVR78      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 79 value register
      BSEC_FVR79      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 80 value register
      BSEC_FVR80      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 81 value register
      BSEC_FVR81      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 82 value register
      BSEC_FVR82      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 83 value register
      BSEC_FVR83      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 84 value register
      BSEC_FVR84      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 85 value register
      BSEC_FVR85      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 86 value register
      BSEC_FVR86      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 87 value register
      BSEC_FVR87      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 88 value register
      BSEC_FVR88      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 89 value register
      BSEC_FVR89      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 90 value register
      BSEC_FVR90      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 91 value register
      BSEC_FVR91      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 92 value register
      BSEC_FVR92      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 93 value register
      BSEC_FVR93      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 94 value register
      BSEC_FVR94      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 95 value register
      BSEC_FVR95      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 96 value register
      BSEC_FVR96      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 97 value register
      BSEC_FVR97      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 98 value register
      BSEC_FVR98      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 99 value register
      BSEC_FVR99      : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 100 value register
      BSEC_FVR100     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 101 value register
      BSEC_FVR101     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 102 value register
      BSEC_FVR102     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 103 value register
      BSEC_FVR103     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 104 value register
      BSEC_FVR104     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 105 value register
      BSEC_FVR105     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 106 value register
      BSEC_FVR106     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 107 value register
      BSEC_FVR107     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 108 value register
      BSEC_FVR108     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 109 value register
      BSEC_FVR109     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 110 value register
      BSEC_FVR110     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 111 value register
      BSEC_FVR111     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 112 value register
      BSEC_FVR112     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 113 value register
      BSEC_FVR113     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 114 value register
      BSEC_FVR114     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 115 value register
      BSEC_FVR115     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 116 value register
      BSEC_FVR116     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 117 value register
      BSEC_FVR117     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 118 value register
      BSEC_FVR118     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 119 value register
      BSEC_FVR119     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 120 value register
      BSEC_FVR120     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 121 value register
      BSEC_FVR121     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 122 value register
      BSEC_FVR122     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 123 value register
      BSEC_FVR123     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 124 value register
      BSEC_FVR124     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 125 value register
      BSEC_FVR125     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 126 value register
      BSEC_FVR126     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 127 value register
      BSEC_FVR127     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 128 value register
      BSEC_FVR128     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 129 value register
      BSEC_FVR129     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 130 value register
      BSEC_FVR130     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 131 value register
      BSEC_FVR131     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 132 value register
      BSEC_FVR132     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 133 value register
      BSEC_FVR133     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 134 value register
      BSEC_FVR134     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 135 value register
      BSEC_FVR135     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 136 value register
      BSEC_FVR136     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 137 value register
      BSEC_FVR137     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 138 value register
      BSEC_FVR138     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 139 value register
      BSEC_FVR139     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 140 value register
      BSEC_FVR140     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 141 value register
      BSEC_FVR141     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 142 value register
      BSEC_FVR142     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 143 value register
      BSEC_FVR143     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 144 value register
      BSEC_FVR144     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 145 value register
      BSEC_FVR145     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 146 value register
      BSEC_FVR146     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 147 value register
      BSEC_FVR147     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 148 value register
      BSEC_FVR148     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 149 value register
      BSEC_FVR149     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 150 value register
      BSEC_FVR150     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 151 value register
      BSEC_FVR151     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 152 value register
      BSEC_FVR152     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 153 value register
      BSEC_FVR153     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 154 value register
      BSEC_FVR154     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 155 value register
      BSEC_FVR155     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 156 value register
      BSEC_FVR156     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 157 value register
      BSEC_FVR157     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 158 value register
      BSEC_FVR158     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 159 value register
      BSEC_FVR159     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 160 value register
      BSEC_FVR160     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 161 value register
      BSEC_FVR161     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 162 value register
      BSEC_FVR162     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 163 value register
      BSEC_FVR163     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 164 value register
      BSEC_FVR164     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 165 value register
      BSEC_FVR165     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 166 value register
      BSEC_FVR166     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 167 value register
      BSEC_FVR167     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 168 value register
      BSEC_FVR168     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 169 value register
      BSEC_FVR169     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 170 value register
      BSEC_FVR170     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 171 value register
      BSEC_FVR171     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 172 value register
      BSEC_FVR172     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 173 value register
      BSEC_FVR173     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 174 value register
      BSEC_FVR174     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 175 value register
      BSEC_FVR175     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 176 value register
      BSEC_FVR176     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 177 value register
      BSEC_FVR177     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 178 value register
      BSEC_FVR178     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 179 value register
      BSEC_FVR179     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 180 value register
      BSEC_FVR180     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 181 value register
      BSEC_FVR181     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 182 value register
      BSEC_FVR182     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 183 value register
      BSEC_FVR183     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 184 value register
      BSEC_FVR184     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 185 value register
      BSEC_FVR185     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 186 value register
      BSEC_FVR186     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 187 value register
      BSEC_FVR187     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 188 value register
      BSEC_FVR188     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 189 value register
      BSEC_FVR189     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 190 value register
      BSEC_FVR190     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 191 value register
      BSEC_FVR191     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 192 value register
      BSEC_FVR192     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 193 value register
      BSEC_FVR193     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 194 value register
      BSEC_FVR194     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 195 value register
      BSEC_FVR195     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 196 value register
      BSEC_FVR196     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 197 value register
      BSEC_FVR197     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 198 value register
      BSEC_FVR198     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 199 value register
      BSEC_FVR199     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 200 value register
      BSEC_FVR200     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 201 value register
      BSEC_FVR201     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 202 value register
      BSEC_FVR202     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 203 value register
      BSEC_FVR203     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 204 value register
      BSEC_FVR204     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 205 value register
      BSEC_FVR205     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 206 value register
      BSEC_FVR206     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 207 value register
      BSEC_FVR207     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 208 value register
      BSEC_FVR208     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 209 value register
      BSEC_FVR209     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 210 value register
      BSEC_FVR210     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 211 value register
      BSEC_FVR211     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 212 value register
      BSEC_FVR212     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 213 value register
      BSEC_FVR213     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 214 value register
      BSEC_FVR214     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 215 value register
      BSEC_FVR215     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 216 value register
      BSEC_FVR216     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 217 value register
      BSEC_FVR217     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 218 value register
      BSEC_FVR218     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 219 value register
      BSEC_FVR219     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 220 value register
      BSEC_FVR220     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 221 value register
      BSEC_FVR221     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 222 value register
      BSEC_FVR222     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 223 value register
      BSEC_FVR223     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 224 value register
      BSEC_FVR224     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 225 value register
      BSEC_FVR225     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 226 value register
      BSEC_FVR226     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 227 value register
      BSEC_FVR227     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 228 value register
      BSEC_FVR228     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 229 value register
      BSEC_FVR229     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 230 value register
      BSEC_FVR230     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 231 value register
      BSEC_FVR231     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 232 value register
      BSEC_FVR232     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 233 value register
      BSEC_FVR233     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 234 value register
      BSEC_FVR234     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 235 value register
      BSEC_FVR235     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 236 value register
      BSEC_FVR236     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 237 value register
      BSEC_FVR237     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 238 value register
      BSEC_FVR238     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 239 value register
      BSEC_FVR239     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 240 value register
      BSEC_FVR240     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 241 value register
      BSEC_FVR241     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 242 value register
      BSEC_FVR242     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 243 value register
      BSEC_FVR243     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 244 value register
      BSEC_FVR244     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 245 value register
      BSEC_FVR245     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 246 value register
      BSEC_FVR246     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 247 value register
      BSEC_FVR247     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 248 value register
      BSEC_FVR248     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 249 value register
      BSEC_FVR249     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 250 value register
      BSEC_FVR250     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 251 value register
      BSEC_FVR251     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 252 value register
      BSEC_FVR252     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 253 value register
      BSEC_FVR253     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 254 value register
      BSEC_FVR254     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 255 value register
      BSEC_FVR255     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 256 value register
      BSEC_FVR256     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 257 value register
      BSEC_FVR257     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 258 value register
      BSEC_FVR258     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 259 value register
      BSEC_FVR259     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 260 value register
      BSEC_FVR260     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 261 value register
      BSEC_FVR261     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 262 value register
      BSEC_FVR262     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 263 value register
      BSEC_FVR263     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 264 value register
      BSEC_FVR264     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 265 value register
      BSEC_FVR265     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 266 value register
      BSEC_FVR266     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 267 value register
      BSEC_FVR267     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 268 value register
      BSEC_FVR268     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 269 value register
      BSEC_FVR269     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 270 value register
      BSEC_FVR270     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 271 value register
      BSEC_FVR271     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 272 value register
      BSEC_FVR272     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 273 value register
      BSEC_FVR273     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 274 value register
      BSEC_FVR274     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 275 value register
      BSEC_FVR275     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 276 value register
      BSEC_FVR276     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 277 value register
      BSEC_FVR277     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 278 value register
      BSEC_FVR278     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 279 value register
      BSEC_FVR279     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 280 value register
      BSEC_FVR280     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 281 value register
      BSEC_FVR281     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 282 value register
      BSEC_FVR282     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 283 value register
      BSEC_FVR283     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 284 value register
      BSEC_FVR284     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 285 value register
      BSEC_FVR285     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 286 value register
      BSEC_FVR286     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 287 value register
      BSEC_FVR287     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 288 value register
      BSEC_FVR288     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 289 value register
      BSEC_FVR289     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 290 value register
      BSEC_FVR290     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 291 value register
      BSEC_FVR291     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 292 value register
      BSEC_FVR292     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 293 value register
      BSEC_FVR293     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 294 value register
      BSEC_FVR294     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 295 value register
      BSEC_FVR295     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 296 value register
      BSEC_FVR296     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 297 value register
      BSEC_FVR297     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 298 value register
      BSEC_FVR298     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 299 value register
      BSEC_FVR299     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 300 value register
      BSEC_FVR300     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 301 value register
      BSEC_FVR301     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 302 value register
      BSEC_FVR302     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 303 value register
      BSEC_FVR303     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 304 value register
      BSEC_FVR304     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 305 value register
      BSEC_FVR305     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 306 value register
      BSEC_FVR306     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 307 value register
      BSEC_FVR307     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 308 value register
      BSEC_FVR308     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 309 value register
      BSEC_FVR309     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 310 value register
      BSEC_FVR310     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 311 value register
      BSEC_FVR311     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 312 value register
      BSEC_FVR312     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 313 value register
      BSEC_FVR313     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 314 value register
      BSEC_FVR314     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 315 value register
      BSEC_FVR315     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 316 value register
      BSEC_FVR316     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 317 value register
      BSEC_FVR317     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 318 value register
      BSEC_FVR318     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 319 value register
      BSEC_FVR319     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 320 value register
      BSEC_FVR320     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 321 value register
      BSEC_FVR321     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 322 value register
      BSEC_FVR322     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 323 value register
      BSEC_FVR323     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 324 value register
      BSEC_FVR324     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 325 value register
      BSEC_FVR325     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 326 value register
      BSEC_FVR326     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 327 value register
      BSEC_FVR327     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 328 value register
      BSEC_FVR328     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 329 value register
      BSEC_FVR329     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 330 value register
      BSEC_FVR330     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 331 value register
      BSEC_FVR331     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 332 value register
      BSEC_FVR332     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 333 value register
      BSEC_FVR333     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 334 value register
      BSEC_FVR334     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 335 value register
      BSEC_FVR335     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 336 value register
      BSEC_FVR336     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 337 value register
      BSEC_FVR337     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 338 value register
      BSEC_FVR338     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 339 value register
      BSEC_FVR339     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 340 value register
      BSEC_FVR340     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 341 value register
      BSEC_FVR341     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 342 value register
      BSEC_FVR342     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 343 value register
      BSEC_FVR343     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 344 value register
      BSEC_FVR344     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 345 value register
      BSEC_FVR345     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 346 value register
      BSEC_FVR346     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 347 value register
      BSEC_FVR347     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 348 value register
      BSEC_FVR348     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 349 value register
      BSEC_FVR349     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 350 value register
      BSEC_FVR350     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 351 value register
      BSEC_FVR351     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 352 value register
      BSEC_FVR352     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 353 value register
      BSEC_FVR353     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 354 value register
      BSEC_FVR354     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 355 value register
      BSEC_FVR355     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 356 value register
      BSEC_FVR356     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 357 value register
      BSEC_FVR357     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 358 value register
      BSEC_FVR358     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 359 value register
      BSEC_FVR359     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 360 value register
      BSEC_FVR360     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 361 value register
      BSEC_FVR361     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 362 value register
      BSEC_FVR362     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 363 value register
      BSEC_FVR363     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 364 value register
      BSEC_FVR364     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 365 value register
      BSEC_FVR365     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 366 value register
      BSEC_FVR366     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 367 value register
      BSEC_FVR367     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 368 value register
      BSEC_FVR368     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 369 value register
      BSEC_FVR369     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 370 value register
      BSEC_FVR370     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 371 value register
      BSEC_FVR371     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 372 value register
      BSEC_FVR372     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 373 value register
      BSEC_FVR373     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 374 value register
      BSEC_FVR374     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC fuse word 375 value register
      BSEC_FVR375     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC sticky programming lock register 0
      BSEC_SPLOCK0    : aliased BSEC_SPLOCK0_Register;
      --  BSEC sticky programming lock register 1
      BSEC_SPLOCK1    : aliased BSEC_SPLOCK1_Register;
      --  BSEC sticky programming lock register 2
      BSEC_SPLOCK2    : aliased BSEC_SPLOCK2_Register;
      --  BSEC sticky programming lock register 3
      BSEC_SPLOCK3    : aliased BSEC_SPLOCK3_Register;
      --  BSEC sticky programming lock register 4
      BSEC_SPLOCK4    : aliased BSEC_SPLOCK4_Register;
      --  BSEC sticky programming lock register 5
      BSEC_SPLOCK5    : aliased BSEC_SPLOCK5_Register;
      --  BSEC sticky programming lock register 6
      BSEC_SPLOCK6    : aliased BSEC_SPLOCK6_Register;
      --  BSEC sticky programming lock register 7
      BSEC_SPLOCK7    : aliased BSEC_SPLOCK7_Register;
      --  BSEC sticky programming lock register 8
      BSEC_SPLOCK8    : aliased BSEC_SPLOCK8_Register;
      --  BSEC sticky programming lock register 9
      BSEC_SPLOCK9    : aliased BSEC_SPLOCK9_Register;
      --  BSEC sticky programming lock register 10
      BSEC_SPLOCK10   : aliased BSEC_SPLOCK10_Register;
      --  BSEC sticky programming lock register 11
      BSEC_SPLOCK11   : aliased BSEC_SPLOCK11_Register;
      --  BSEC sticky write lock register 0
      BSEC_SWLOCK0    : aliased BSEC_SWLOCK0_Register;
      --  BSEC sticky write lock register 1
      BSEC_SWLOCK1    : aliased BSEC_SWLOCK1_Register;
      --  BSEC sticky write lock register 2
      BSEC_SWLOCK2    : aliased BSEC_SWLOCK2_Register;
      --  BSEC sticky write lock register 3
      BSEC_SWLOCK3    : aliased BSEC_SWLOCK3_Register;
      --  BSEC sticky write lock register 4
      BSEC_SWLOCK4    : aliased BSEC_SWLOCK4_Register;
      --  BSEC sticky write lock register 5
      BSEC_SWLOCK5    : aliased BSEC_SWLOCK5_Register;
      --  BSEC sticky write lock register 6
      BSEC_SWLOCK6    : aliased BSEC_SWLOCK6_Register;
      --  BSEC sticky write lock register 7
      BSEC_SWLOCK7    : aliased BSEC_SWLOCK7_Register;
      --  BSEC sticky write lock register 8
      BSEC_SWLOCK8    : aliased BSEC_SWLOCK8_Register;
      --  BSEC sticky write lock register 9
      BSEC_SWLOCK9    : aliased BSEC_SWLOCK9_Register;
      --  BSEC sticky write lock register 10
      BSEC_SWLOCK10   : aliased BSEC_SWLOCK10_Register;
      --  BSEC sticky write lock register 11
      BSEC_SWLOCK11   : aliased BSEC_SWLOCK11_Register;
      --  BSEC sticky reload lock register 0
      BSEC_SRLOCK0    : aliased BSEC_SRLOCK0_Register;
      --  BSEC sticky reload lock register 1
      BSEC_SRLOCK1    : aliased BSEC_SRLOCK1_Register;
      --  BSEC sticky reload lock register 2
      BSEC_SRLOCK2    : aliased BSEC_SRLOCK2_Register;
      --  BSEC sticky reload lock register 3
      BSEC_SRLOCK3    : aliased BSEC_SRLOCK3_Register;
      --  BSEC sticky reload lock register 4
      BSEC_SRLOCK4    : aliased BSEC_SRLOCK4_Register;
      --  BSEC sticky reload lock register 5
      BSEC_SRLOCK5    : aliased BSEC_SRLOCK5_Register;
      --  BSEC sticky reload lock register 6
      BSEC_SRLOCK6    : aliased BSEC_SRLOCK6_Register;
      --  BSEC sticky reload lock register 7
      BSEC_SRLOCK7    : aliased BSEC_SRLOCK7_Register;
      --  BSEC sticky reload lock register 8
      BSEC_SRLOCK8    : aliased BSEC_SRLOCK8_Register;
      --  BSEC sticky reload lock register 9
      BSEC_SRLOCK9    : aliased BSEC_SRLOCK9_Register;
      --  BSEC sticky reload lock register 10
      BSEC_SRLOCK10   : aliased BSEC_SRLOCK10_Register;
      --  BSEC sticky reload lock register 11
      BSEC_SRLOCK11   : aliased BSEC_SRLOCK11_Register;
      --  BSEC OTP valid register 0
      BSEC_OTPVLDR0   : aliased BSEC_OTPVLDR0_Register;
      --  BSEC OTP valid register 1
      BSEC_OTPVLDR1   : aliased BSEC_OTPVLDR1_Register;
      --  BSEC OTP valid register 2
      BSEC_OTPVLDR2   : aliased BSEC_OTPVLDR2_Register;
      --  BSEC OTP valid register 3
      BSEC_OTPVLDR3   : aliased BSEC_OTPVLDR3_Register;
      --  BSEC OTP valid register 4
      BSEC_OTPVLDR4   : aliased BSEC_OTPVLDR4_Register;
      --  BSEC OTP valid register 5
      BSEC_OTPVLDR5   : aliased BSEC_OTPVLDR5_Register;
      --  BSEC OTP valid register 6
      BSEC_OTPVLDR6   : aliased BSEC_OTPVLDR6_Register;
      --  BSEC OTP valid register 7
      BSEC_OTPVLDR7   : aliased BSEC_OTPVLDR7_Register;
      --  BSEC OTP valid register 8
      BSEC_OTPVLDR8   : aliased BSEC_OTPVLDR8_Register;
      --  BSEC OTP valid register 9
      BSEC_OTPVLDR9   : aliased BSEC_OTPVLDR9_Register;
      --  BSEC OTP valid register 10
      BSEC_OTPVLDR10  : aliased BSEC_OTPVLDR10_Register;
      --  BSEC OTP valid register 11
      BSEC_OTPVLDR11  : aliased BSEC_OTPVLDR11_Register;
      --  BSEC shadowed fuses status register 0
      BSEC_SFSR0      : aliased BSEC_SFSR0_Register;
      --  BSEC shadowed fuses status register 1
      BSEC_SFSR1      : aliased BSEC_SFSR1_Register;
      --  BSEC shadowed fuses status register 2
      BSEC_SFSR2      : aliased BSEC_SFSR2_Register;
      --  BSEC shadowed fuses status register 3
      BSEC_SFSR3      : aliased BSEC_SFSR3_Register;
      --  BSEC shadowed fuses status register 4
      BSEC_SFSR4      : aliased BSEC_SFSR4_Register;
      --  BSEC shadowed fuses status register 5
      BSEC_SFSR5      : aliased BSEC_SFSR5_Register;
      --  BSEC shadowed fuses status register 6
      BSEC_SFSR6      : aliased BSEC_SFSR6_Register;
      --  BSEC shadowed fuses status register 7
      BSEC_SFSR7      : aliased BSEC_SFSR7_Register;
      --  BSEC shadowed fuses status register 8
      BSEC_SFSR8      : aliased BSEC_SFSR8_Register;
      --  BSEC shadowed fuses status register 9
      BSEC_SFSR9      : aliased BSEC_SFSR9_Register;
      --  BSEC shadowed fuses status register 10
      BSEC_SFSR10     : aliased BSEC_SFSR10_Register;
      --  BSEC shadowed fuses status register 11
      BSEC_SFSR11     : aliased BSEC_SFSR11_Register;
      --  BSEC OTP control register
      BSEC_OTPCR      : aliased BSEC_OTPCR_Register;
      --  BSEC write data register
      BSEC_WDR        : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC scratch register 0
      BSEC_SCRATCHR0  : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC scratch register 1
      BSEC_SCRATCHR1  : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC scratch register 2
      BSEC_SCRATCHR2  : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC scratch register 3
      BSEC_SCRATCHR3  : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC lock register
      BSEC_LOCKR      : aliased BSEC_LOCKR_Register;
      --  BSEC JTAG input register
      BSEC_JTAGINR    : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC JTAG output register
      BSEC_JTAGOUTR   : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC unmap register
      BSEC_UNMAPR     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC status register
      BSEC_SR         : aliased BSEC_SR_Register;
      --  BSEC OTP status register
      BSEC_OTPSR      : aliased BSEC_OTPSR_Register;
      --  BSEC epoch register
      BSEC_EPOCHR0    : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC epoch register
      BSEC_EPOCHR1    : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC epoch select register
      BSEC_EPOCH_SELR : aliased BSEC_EPOCH_SELR_Register;
      --  BSEC Debug
      BSEC_DBGCR      : aliased BSEC_DBGCR_Register;
      --  BSEC AP Unlock
      BSEC_AP_UNLOCK  : aliased BSEC_AP_UNLOCK_Register;
      --  BSEC HDPL
      BSEC_HDPLSR     : aliased BSEC_HDPLSR_Register;
      --  BSEC HDPL control
      BSEC_HDPLCR     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC Next HDPL
      BSEC_NEXTLR     : aliased BSEC_NEXTLR_Register;
      --  BSEC write once scratch register 0
      BSEC_WOSCR0     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC write once scratch register 1
      BSEC_WOSCR1     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC write once scratch register 2
      BSEC_WOSCR2     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC write once scratch register 3
      BSEC_WOSCR3     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC write once scratch register 4
      BSEC_WOSCR4     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC write once scratch register 5
      BSEC_WOSCR5     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC write once scratch register 6
      BSEC_WOSCR6     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC write once scratch register 7
      BSEC_WOSCR7     : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC hot reset count register
      BSEC_HRCR       : aliased Interfaces.Bit_Types.UInt32;
      --  BSEC warm reset count register
      BSEC_WRCR       : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for BSEC_Peripheral use record
      BSEC_FVR0       at 16#0# range 0 .. 31;
      BSEC_FVR1       at 16#4# range 0 .. 31;
      BSEC_FVR2       at 16#8# range 0 .. 31;
      BSEC_FVR3       at 16#C# range 0 .. 31;
      BSEC_FVR4       at 16#10# range 0 .. 31;
      BSEC_FVR5       at 16#14# range 0 .. 31;
      BSEC_FVR6       at 16#18# range 0 .. 31;
      BSEC_FVR7       at 16#1C# range 0 .. 31;
      BSEC_FVR8       at 16#20# range 0 .. 31;
      BSEC_FVR9       at 16#24# range 0 .. 31;
      BSEC_FVR10      at 16#28# range 0 .. 31;
      BSEC_FVR11      at 16#2C# range 0 .. 31;
      BSEC_FVR12      at 16#30# range 0 .. 31;
      BSEC_FVR13      at 16#34# range 0 .. 31;
      BSEC_FVR14      at 16#38# range 0 .. 31;
      BSEC_FVR15      at 16#3C# range 0 .. 31;
      BSEC_FVR16      at 16#40# range 0 .. 31;
      BSEC_FVR17      at 16#44# range 0 .. 31;
      BSEC_FVR18      at 16#48# range 0 .. 31;
      BSEC_FVR19      at 16#4C# range 0 .. 31;
      BSEC_FVR20      at 16#50# range 0 .. 31;
      BSEC_FVR21      at 16#54# range 0 .. 31;
      BSEC_FVR22      at 16#58# range 0 .. 31;
      BSEC_FVR23      at 16#5C# range 0 .. 31;
      BSEC_FVR24      at 16#60# range 0 .. 31;
      BSEC_FVR25      at 16#64# range 0 .. 31;
      BSEC_FVR26      at 16#68# range 0 .. 31;
      BSEC_FVR27      at 16#6C# range 0 .. 31;
      BSEC_FVR28      at 16#70# range 0 .. 31;
      BSEC_FVR29      at 16#74# range 0 .. 31;
      BSEC_FVR30      at 16#78# range 0 .. 31;
      BSEC_FVR31      at 16#7C# range 0 .. 31;
      BSEC_FVR32      at 16#80# range 0 .. 31;
      BSEC_FVR33      at 16#84# range 0 .. 31;
      BSEC_FVR34      at 16#88# range 0 .. 31;
      BSEC_FVR35      at 16#8C# range 0 .. 31;
      BSEC_FVR36      at 16#90# range 0 .. 31;
      BSEC_FVR37      at 16#94# range 0 .. 31;
      BSEC_FVR38      at 16#98# range 0 .. 31;
      BSEC_FVR39      at 16#9C# range 0 .. 31;
      BSEC_FVR40      at 16#A0# range 0 .. 31;
      BSEC_FVR41      at 16#A4# range 0 .. 31;
      BSEC_FVR42      at 16#A8# range 0 .. 31;
      BSEC_FVR43      at 16#AC# range 0 .. 31;
      BSEC_FVR44      at 16#B0# range 0 .. 31;
      BSEC_FVR45      at 16#B4# range 0 .. 31;
      BSEC_FVR46      at 16#B8# range 0 .. 31;
      BSEC_FVR47      at 16#BC# range 0 .. 31;
      BSEC_FVR48      at 16#C0# range 0 .. 31;
      BSEC_FVR49      at 16#C4# range 0 .. 31;
      BSEC_FVR50      at 16#C8# range 0 .. 31;
      BSEC_FVR51      at 16#CC# range 0 .. 31;
      BSEC_FVR52      at 16#D0# range 0 .. 31;
      BSEC_FVR53      at 16#D4# range 0 .. 31;
      BSEC_FVR54      at 16#D8# range 0 .. 31;
      BSEC_FVR55      at 16#DC# range 0 .. 31;
      BSEC_FVR56      at 16#E0# range 0 .. 31;
      BSEC_FVR57      at 16#E4# range 0 .. 31;
      BSEC_FVR58      at 16#E8# range 0 .. 31;
      BSEC_FVR59      at 16#EC# range 0 .. 31;
      BSEC_FVR60      at 16#F0# range 0 .. 31;
      BSEC_FVR61      at 16#F4# range 0 .. 31;
      BSEC_FVR62      at 16#F8# range 0 .. 31;
      BSEC_FVR63      at 16#FC# range 0 .. 31;
      BSEC_FVR64      at 16#100# range 0 .. 31;
      BSEC_FVR65      at 16#104# range 0 .. 31;
      BSEC_FVR66      at 16#108# range 0 .. 31;
      BSEC_FVR67      at 16#10C# range 0 .. 31;
      BSEC_FVR68      at 16#110# range 0 .. 31;
      BSEC_FVR69      at 16#114# range 0 .. 31;
      BSEC_FVR70      at 16#118# range 0 .. 31;
      BSEC_FVR71      at 16#11C# range 0 .. 31;
      BSEC_FVR72      at 16#120# range 0 .. 31;
      BSEC_FVR73      at 16#124# range 0 .. 31;
      BSEC_FVR74      at 16#128# range 0 .. 31;
      BSEC_FVR75      at 16#12C# range 0 .. 31;
      BSEC_FVR76      at 16#130# range 0 .. 31;
      BSEC_FVR77      at 16#134# range 0 .. 31;
      BSEC_FVR78      at 16#138# range 0 .. 31;
      BSEC_FVR79      at 16#13C# range 0 .. 31;
      BSEC_FVR80      at 16#140# range 0 .. 31;
      BSEC_FVR81      at 16#144# range 0 .. 31;
      BSEC_FVR82      at 16#148# range 0 .. 31;
      BSEC_FVR83      at 16#14C# range 0 .. 31;
      BSEC_FVR84      at 16#150# range 0 .. 31;
      BSEC_FVR85      at 16#154# range 0 .. 31;
      BSEC_FVR86      at 16#158# range 0 .. 31;
      BSEC_FVR87      at 16#15C# range 0 .. 31;
      BSEC_FVR88      at 16#160# range 0 .. 31;
      BSEC_FVR89      at 16#164# range 0 .. 31;
      BSEC_FVR90      at 16#168# range 0 .. 31;
      BSEC_FVR91      at 16#16C# range 0 .. 31;
      BSEC_FVR92      at 16#170# range 0 .. 31;
      BSEC_FVR93      at 16#174# range 0 .. 31;
      BSEC_FVR94      at 16#178# range 0 .. 31;
      BSEC_FVR95      at 16#17C# range 0 .. 31;
      BSEC_FVR96      at 16#180# range 0 .. 31;
      BSEC_FVR97      at 16#184# range 0 .. 31;
      BSEC_FVR98      at 16#188# range 0 .. 31;
      BSEC_FVR99      at 16#18C# range 0 .. 31;
      BSEC_FVR100     at 16#190# range 0 .. 31;
      BSEC_FVR101     at 16#194# range 0 .. 31;
      BSEC_FVR102     at 16#198# range 0 .. 31;
      BSEC_FVR103     at 16#19C# range 0 .. 31;
      BSEC_FVR104     at 16#1A0# range 0 .. 31;
      BSEC_FVR105     at 16#1A4# range 0 .. 31;
      BSEC_FVR106     at 16#1A8# range 0 .. 31;
      BSEC_FVR107     at 16#1AC# range 0 .. 31;
      BSEC_FVR108     at 16#1B0# range 0 .. 31;
      BSEC_FVR109     at 16#1B4# range 0 .. 31;
      BSEC_FVR110     at 16#1B8# range 0 .. 31;
      BSEC_FVR111     at 16#1BC# range 0 .. 31;
      BSEC_FVR112     at 16#1C0# range 0 .. 31;
      BSEC_FVR113     at 16#1C4# range 0 .. 31;
      BSEC_FVR114     at 16#1C8# range 0 .. 31;
      BSEC_FVR115     at 16#1CC# range 0 .. 31;
      BSEC_FVR116     at 16#1D0# range 0 .. 31;
      BSEC_FVR117     at 16#1D4# range 0 .. 31;
      BSEC_FVR118     at 16#1D8# range 0 .. 31;
      BSEC_FVR119     at 16#1DC# range 0 .. 31;
      BSEC_FVR120     at 16#1E0# range 0 .. 31;
      BSEC_FVR121     at 16#1E4# range 0 .. 31;
      BSEC_FVR122     at 16#1E8# range 0 .. 31;
      BSEC_FVR123     at 16#1EC# range 0 .. 31;
      BSEC_FVR124     at 16#1F0# range 0 .. 31;
      BSEC_FVR125     at 16#1F4# range 0 .. 31;
      BSEC_FVR126     at 16#1F8# range 0 .. 31;
      BSEC_FVR127     at 16#1FC# range 0 .. 31;
      BSEC_FVR128     at 16#200# range 0 .. 31;
      BSEC_FVR129     at 16#204# range 0 .. 31;
      BSEC_FVR130     at 16#208# range 0 .. 31;
      BSEC_FVR131     at 16#20C# range 0 .. 31;
      BSEC_FVR132     at 16#210# range 0 .. 31;
      BSEC_FVR133     at 16#214# range 0 .. 31;
      BSEC_FVR134     at 16#218# range 0 .. 31;
      BSEC_FVR135     at 16#21C# range 0 .. 31;
      BSEC_FVR136     at 16#220# range 0 .. 31;
      BSEC_FVR137     at 16#224# range 0 .. 31;
      BSEC_FVR138     at 16#228# range 0 .. 31;
      BSEC_FVR139     at 16#22C# range 0 .. 31;
      BSEC_FVR140     at 16#230# range 0 .. 31;
      BSEC_FVR141     at 16#234# range 0 .. 31;
      BSEC_FVR142     at 16#238# range 0 .. 31;
      BSEC_FVR143     at 16#23C# range 0 .. 31;
      BSEC_FVR144     at 16#240# range 0 .. 31;
      BSEC_FVR145     at 16#244# range 0 .. 31;
      BSEC_FVR146     at 16#248# range 0 .. 31;
      BSEC_FVR147     at 16#24C# range 0 .. 31;
      BSEC_FVR148     at 16#250# range 0 .. 31;
      BSEC_FVR149     at 16#254# range 0 .. 31;
      BSEC_FVR150     at 16#258# range 0 .. 31;
      BSEC_FVR151     at 16#25C# range 0 .. 31;
      BSEC_FVR152     at 16#260# range 0 .. 31;
      BSEC_FVR153     at 16#264# range 0 .. 31;
      BSEC_FVR154     at 16#268# range 0 .. 31;
      BSEC_FVR155     at 16#26C# range 0 .. 31;
      BSEC_FVR156     at 16#270# range 0 .. 31;
      BSEC_FVR157     at 16#274# range 0 .. 31;
      BSEC_FVR158     at 16#278# range 0 .. 31;
      BSEC_FVR159     at 16#27C# range 0 .. 31;
      BSEC_FVR160     at 16#280# range 0 .. 31;
      BSEC_FVR161     at 16#284# range 0 .. 31;
      BSEC_FVR162     at 16#288# range 0 .. 31;
      BSEC_FVR163     at 16#28C# range 0 .. 31;
      BSEC_FVR164     at 16#290# range 0 .. 31;
      BSEC_FVR165     at 16#294# range 0 .. 31;
      BSEC_FVR166     at 16#298# range 0 .. 31;
      BSEC_FVR167     at 16#29C# range 0 .. 31;
      BSEC_FVR168     at 16#2A0# range 0 .. 31;
      BSEC_FVR169     at 16#2A4# range 0 .. 31;
      BSEC_FVR170     at 16#2A8# range 0 .. 31;
      BSEC_FVR171     at 16#2AC# range 0 .. 31;
      BSEC_FVR172     at 16#2B0# range 0 .. 31;
      BSEC_FVR173     at 16#2B4# range 0 .. 31;
      BSEC_FVR174     at 16#2B8# range 0 .. 31;
      BSEC_FVR175     at 16#2BC# range 0 .. 31;
      BSEC_FVR176     at 16#2C0# range 0 .. 31;
      BSEC_FVR177     at 16#2C4# range 0 .. 31;
      BSEC_FVR178     at 16#2C8# range 0 .. 31;
      BSEC_FVR179     at 16#2CC# range 0 .. 31;
      BSEC_FVR180     at 16#2D0# range 0 .. 31;
      BSEC_FVR181     at 16#2D4# range 0 .. 31;
      BSEC_FVR182     at 16#2D8# range 0 .. 31;
      BSEC_FVR183     at 16#2DC# range 0 .. 31;
      BSEC_FVR184     at 16#2E0# range 0 .. 31;
      BSEC_FVR185     at 16#2E4# range 0 .. 31;
      BSEC_FVR186     at 16#2E8# range 0 .. 31;
      BSEC_FVR187     at 16#2EC# range 0 .. 31;
      BSEC_FVR188     at 16#2F0# range 0 .. 31;
      BSEC_FVR189     at 16#2F4# range 0 .. 31;
      BSEC_FVR190     at 16#2F8# range 0 .. 31;
      BSEC_FVR191     at 16#2FC# range 0 .. 31;
      BSEC_FVR192     at 16#300# range 0 .. 31;
      BSEC_FVR193     at 16#304# range 0 .. 31;
      BSEC_FVR194     at 16#308# range 0 .. 31;
      BSEC_FVR195     at 16#30C# range 0 .. 31;
      BSEC_FVR196     at 16#310# range 0 .. 31;
      BSEC_FVR197     at 16#314# range 0 .. 31;
      BSEC_FVR198     at 16#318# range 0 .. 31;
      BSEC_FVR199     at 16#31C# range 0 .. 31;
      BSEC_FVR200     at 16#320# range 0 .. 31;
      BSEC_FVR201     at 16#324# range 0 .. 31;
      BSEC_FVR202     at 16#328# range 0 .. 31;
      BSEC_FVR203     at 16#32C# range 0 .. 31;
      BSEC_FVR204     at 16#330# range 0 .. 31;
      BSEC_FVR205     at 16#334# range 0 .. 31;
      BSEC_FVR206     at 16#338# range 0 .. 31;
      BSEC_FVR207     at 16#33C# range 0 .. 31;
      BSEC_FVR208     at 16#340# range 0 .. 31;
      BSEC_FVR209     at 16#344# range 0 .. 31;
      BSEC_FVR210     at 16#348# range 0 .. 31;
      BSEC_FVR211     at 16#34C# range 0 .. 31;
      BSEC_FVR212     at 16#350# range 0 .. 31;
      BSEC_FVR213     at 16#354# range 0 .. 31;
      BSEC_FVR214     at 16#358# range 0 .. 31;
      BSEC_FVR215     at 16#35C# range 0 .. 31;
      BSEC_FVR216     at 16#360# range 0 .. 31;
      BSEC_FVR217     at 16#364# range 0 .. 31;
      BSEC_FVR218     at 16#368# range 0 .. 31;
      BSEC_FVR219     at 16#36C# range 0 .. 31;
      BSEC_FVR220     at 16#370# range 0 .. 31;
      BSEC_FVR221     at 16#374# range 0 .. 31;
      BSEC_FVR222     at 16#378# range 0 .. 31;
      BSEC_FVR223     at 16#37C# range 0 .. 31;
      BSEC_FVR224     at 16#380# range 0 .. 31;
      BSEC_FVR225     at 16#384# range 0 .. 31;
      BSEC_FVR226     at 16#388# range 0 .. 31;
      BSEC_FVR227     at 16#38C# range 0 .. 31;
      BSEC_FVR228     at 16#390# range 0 .. 31;
      BSEC_FVR229     at 16#394# range 0 .. 31;
      BSEC_FVR230     at 16#398# range 0 .. 31;
      BSEC_FVR231     at 16#39C# range 0 .. 31;
      BSEC_FVR232     at 16#3A0# range 0 .. 31;
      BSEC_FVR233     at 16#3A4# range 0 .. 31;
      BSEC_FVR234     at 16#3A8# range 0 .. 31;
      BSEC_FVR235     at 16#3AC# range 0 .. 31;
      BSEC_FVR236     at 16#3B0# range 0 .. 31;
      BSEC_FVR237     at 16#3B4# range 0 .. 31;
      BSEC_FVR238     at 16#3B8# range 0 .. 31;
      BSEC_FVR239     at 16#3BC# range 0 .. 31;
      BSEC_FVR240     at 16#3C0# range 0 .. 31;
      BSEC_FVR241     at 16#3C4# range 0 .. 31;
      BSEC_FVR242     at 16#3C8# range 0 .. 31;
      BSEC_FVR243     at 16#3CC# range 0 .. 31;
      BSEC_FVR244     at 16#3D0# range 0 .. 31;
      BSEC_FVR245     at 16#3D4# range 0 .. 31;
      BSEC_FVR246     at 16#3D8# range 0 .. 31;
      BSEC_FVR247     at 16#3DC# range 0 .. 31;
      BSEC_FVR248     at 16#3E0# range 0 .. 31;
      BSEC_FVR249     at 16#3E4# range 0 .. 31;
      BSEC_FVR250     at 16#3E8# range 0 .. 31;
      BSEC_FVR251     at 16#3EC# range 0 .. 31;
      BSEC_FVR252     at 16#3F0# range 0 .. 31;
      BSEC_FVR253     at 16#3F4# range 0 .. 31;
      BSEC_FVR254     at 16#3F8# range 0 .. 31;
      BSEC_FVR255     at 16#3FC# range 0 .. 31;
      BSEC_FVR256     at 16#400# range 0 .. 31;
      BSEC_FVR257     at 16#404# range 0 .. 31;
      BSEC_FVR258     at 16#408# range 0 .. 31;
      BSEC_FVR259     at 16#40C# range 0 .. 31;
      BSEC_FVR260     at 16#410# range 0 .. 31;
      BSEC_FVR261     at 16#414# range 0 .. 31;
      BSEC_FVR262     at 16#418# range 0 .. 31;
      BSEC_FVR263     at 16#41C# range 0 .. 31;
      BSEC_FVR264     at 16#420# range 0 .. 31;
      BSEC_FVR265     at 16#424# range 0 .. 31;
      BSEC_FVR266     at 16#428# range 0 .. 31;
      BSEC_FVR267     at 16#42C# range 0 .. 31;
      BSEC_FVR268     at 16#430# range 0 .. 31;
      BSEC_FVR269     at 16#434# range 0 .. 31;
      BSEC_FVR270     at 16#438# range 0 .. 31;
      BSEC_FVR271     at 16#43C# range 0 .. 31;
      BSEC_FVR272     at 16#440# range 0 .. 31;
      BSEC_FVR273     at 16#444# range 0 .. 31;
      BSEC_FVR274     at 16#448# range 0 .. 31;
      BSEC_FVR275     at 16#44C# range 0 .. 31;
      BSEC_FVR276     at 16#450# range 0 .. 31;
      BSEC_FVR277     at 16#454# range 0 .. 31;
      BSEC_FVR278     at 16#458# range 0 .. 31;
      BSEC_FVR279     at 16#45C# range 0 .. 31;
      BSEC_FVR280     at 16#460# range 0 .. 31;
      BSEC_FVR281     at 16#464# range 0 .. 31;
      BSEC_FVR282     at 16#468# range 0 .. 31;
      BSEC_FVR283     at 16#46C# range 0 .. 31;
      BSEC_FVR284     at 16#470# range 0 .. 31;
      BSEC_FVR285     at 16#474# range 0 .. 31;
      BSEC_FVR286     at 16#478# range 0 .. 31;
      BSEC_FVR287     at 16#47C# range 0 .. 31;
      BSEC_FVR288     at 16#480# range 0 .. 31;
      BSEC_FVR289     at 16#484# range 0 .. 31;
      BSEC_FVR290     at 16#488# range 0 .. 31;
      BSEC_FVR291     at 16#48C# range 0 .. 31;
      BSEC_FVR292     at 16#490# range 0 .. 31;
      BSEC_FVR293     at 16#494# range 0 .. 31;
      BSEC_FVR294     at 16#498# range 0 .. 31;
      BSEC_FVR295     at 16#49C# range 0 .. 31;
      BSEC_FVR296     at 16#4A0# range 0 .. 31;
      BSEC_FVR297     at 16#4A4# range 0 .. 31;
      BSEC_FVR298     at 16#4A8# range 0 .. 31;
      BSEC_FVR299     at 16#4AC# range 0 .. 31;
      BSEC_FVR300     at 16#4B0# range 0 .. 31;
      BSEC_FVR301     at 16#4B4# range 0 .. 31;
      BSEC_FVR302     at 16#4B8# range 0 .. 31;
      BSEC_FVR303     at 16#4BC# range 0 .. 31;
      BSEC_FVR304     at 16#4C0# range 0 .. 31;
      BSEC_FVR305     at 16#4C4# range 0 .. 31;
      BSEC_FVR306     at 16#4C8# range 0 .. 31;
      BSEC_FVR307     at 16#4CC# range 0 .. 31;
      BSEC_FVR308     at 16#4D0# range 0 .. 31;
      BSEC_FVR309     at 16#4D4# range 0 .. 31;
      BSEC_FVR310     at 16#4D8# range 0 .. 31;
      BSEC_FVR311     at 16#4DC# range 0 .. 31;
      BSEC_FVR312     at 16#4E0# range 0 .. 31;
      BSEC_FVR313     at 16#4E4# range 0 .. 31;
      BSEC_FVR314     at 16#4E8# range 0 .. 31;
      BSEC_FVR315     at 16#4EC# range 0 .. 31;
      BSEC_FVR316     at 16#4F0# range 0 .. 31;
      BSEC_FVR317     at 16#4F4# range 0 .. 31;
      BSEC_FVR318     at 16#4F8# range 0 .. 31;
      BSEC_FVR319     at 16#4FC# range 0 .. 31;
      BSEC_FVR320     at 16#500# range 0 .. 31;
      BSEC_FVR321     at 16#504# range 0 .. 31;
      BSEC_FVR322     at 16#508# range 0 .. 31;
      BSEC_FVR323     at 16#50C# range 0 .. 31;
      BSEC_FVR324     at 16#510# range 0 .. 31;
      BSEC_FVR325     at 16#514# range 0 .. 31;
      BSEC_FVR326     at 16#518# range 0 .. 31;
      BSEC_FVR327     at 16#51C# range 0 .. 31;
      BSEC_FVR328     at 16#520# range 0 .. 31;
      BSEC_FVR329     at 16#524# range 0 .. 31;
      BSEC_FVR330     at 16#528# range 0 .. 31;
      BSEC_FVR331     at 16#52C# range 0 .. 31;
      BSEC_FVR332     at 16#530# range 0 .. 31;
      BSEC_FVR333     at 16#534# range 0 .. 31;
      BSEC_FVR334     at 16#538# range 0 .. 31;
      BSEC_FVR335     at 16#53C# range 0 .. 31;
      BSEC_FVR336     at 16#540# range 0 .. 31;
      BSEC_FVR337     at 16#544# range 0 .. 31;
      BSEC_FVR338     at 16#548# range 0 .. 31;
      BSEC_FVR339     at 16#54C# range 0 .. 31;
      BSEC_FVR340     at 16#550# range 0 .. 31;
      BSEC_FVR341     at 16#554# range 0 .. 31;
      BSEC_FVR342     at 16#558# range 0 .. 31;
      BSEC_FVR343     at 16#55C# range 0 .. 31;
      BSEC_FVR344     at 16#560# range 0 .. 31;
      BSEC_FVR345     at 16#564# range 0 .. 31;
      BSEC_FVR346     at 16#568# range 0 .. 31;
      BSEC_FVR347     at 16#56C# range 0 .. 31;
      BSEC_FVR348     at 16#570# range 0 .. 31;
      BSEC_FVR349     at 16#574# range 0 .. 31;
      BSEC_FVR350     at 16#578# range 0 .. 31;
      BSEC_FVR351     at 16#57C# range 0 .. 31;
      BSEC_FVR352     at 16#580# range 0 .. 31;
      BSEC_FVR353     at 16#584# range 0 .. 31;
      BSEC_FVR354     at 16#588# range 0 .. 31;
      BSEC_FVR355     at 16#58C# range 0 .. 31;
      BSEC_FVR356     at 16#590# range 0 .. 31;
      BSEC_FVR357     at 16#594# range 0 .. 31;
      BSEC_FVR358     at 16#598# range 0 .. 31;
      BSEC_FVR359     at 16#59C# range 0 .. 31;
      BSEC_FVR360     at 16#5A0# range 0 .. 31;
      BSEC_FVR361     at 16#5A4# range 0 .. 31;
      BSEC_FVR362     at 16#5A8# range 0 .. 31;
      BSEC_FVR363     at 16#5AC# range 0 .. 31;
      BSEC_FVR364     at 16#5B0# range 0 .. 31;
      BSEC_FVR365     at 16#5B4# range 0 .. 31;
      BSEC_FVR366     at 16#5B8# range 0 .. 31;
      BSEC_FVR367     at 16#5BC# range 0 .. 31;
      BSEC_FVR368     at 16#5C0# range 0 .. 31;
      BSEC_FVR369     at 16#5C4# range 0 .. 31;
      BSEC_FVR370     at 16#5C8# range 0 .. 31;
      BSEC_FVR371     at 16#5CC# range 0 .. 31;
      BSEC_FVR372     at 16#5D0# range 0 .. 31;
      BSEC_FVR373     at 16#5D4# range 0 .. 31;
      BSEC_FVR374     at 16#5D8# range 0 .. 31;
      BSEC_FVR375     at 16#5DC# range 0 .. 31;
      BSEC_SPLOCK0    at 16#800# range 0 .. 31;
      BSEC_SPLOCK1    at 16#804# range 0 .. 31;
      BSEC_SPLOCK2    at 16#808# range 0 .. 31;
      BSEC_SPLOCK3    at 16#80C# range 0 .. 31;
      BSEC_SPLOCK4    at 16#810# range 0 .. 31;
      BSEC_SPLOCK5    at 16#814# range 0 .. 31;
      BSEC_SPLOCK6    at 16#818# range 0 .. 31;
      BSEC_SPLOCK7    at 16#81C# range 0 .. 31;
      BSEC_SPLOCK8    at 16#820# range 0 .. 31;
      BSEC_SPLOCK9    at 16#824# range 0 .. 31;
      BSEC_SPLOCK10   at 16#828# range 0 .. 31;
      BSEC_SPLOCK11   at 16#82C# range 0 .. 31;
      BSEC_SWLOCK0    at 16#840# range 0 .. 31;
      BSEC_SWLOCK1    at 16#844# range 0 .. 31;
      BSEC_SWLOCK2    at 16#848# range 0 .. 31;
      BSEC_SWLOCK3    at 16#84C# range 0 .. 31;
      BSEC_SWLOCK4    at 16#850# range 0 .. 31;
      BSEC_SWLOCK5    at 16#854# range 0 .. 31;
      BSEC_SWLOCK6    at 16#858# range 0 .. 31;
      BSEC_SWLOCK7    at 16#85C# range 0 .. 31;
      BSEC_SWLOCK8    at 16#860# range 0 .. 31;
      BSEC_SWLOCK9    at 16#864# range 0 .. 31;
      BSEC_SWLOCK10   at 16#868# range 0 .. 31;
      BSEC_SWLOCK11   at 16#86C# range 0 .. 31;
      BSEC_SRLOCK0    at 16#880# range 0 .. 31;
      BSEC_SRLOCK1    at 16#884# range 0 .. 31;
      BSEC_SRLOCK2    at 16#888# range 0 .. 31;
      BSEC_SRLOCK3    at 16#88C# range 0 .. 31;
      BSEC_SRLOCK4    at 16#890# range 0 .. 31;
      BSEC_SRLOCK5    at 16#894# range 0 .. 31;
      BSEC_SRLOCK6    at 16#898# range 0 .. 31;
      BSEC_SRLOCK7    at 16#89C# range 0 .. 31;
      BSEC_SRLOCK8    at 16#8A0# range 0 .. 31;
      BSEC_SRLOCK9    at 16#8A4# range 0 .. 31;
      BSEC_SRLOCK10   at 16#8A8# range 0 .. 31;
      BSEC_SRLOCK11   at 16#8AC# range 0 .. 31;
      BSEC_OTPVLDR0   at 16#8C0# range 0 .. 31;
      BSEC_OTPVLDR1   at 16#8C4# range 0 .. 31;
      BSEC_OTPVLDR2   at 16#8C8# range 0 .. 31;
      BSEC_OTPVLDR3   at 16#8CC# range 0 .. 31;
      BSEC_OTPVLDR4   at 16#8D0# range 0 .. 31;
      BSEC_OTPVLDR5   at 16#8D4# range 0 .. 31;
      BSEC_OTPVLDR6   at 16#8D8# range 0 .. 31;
      BSEC_OTPVLDR7   at 16#8DC# range 0 .. 31;
      BSEC_OTPVLDR8   at 16#8E0# range 0 .. 31;
      BSEC_OTPVLDR9   at 16#8E4# range 0 .. 31;
      BSEC_OTPVLDR10  at 16#8E8# range 0 .. 31;
      BSEC_OTPVLDR11  at 16#8EC# range 0 .. 31;
      BSEC_SFSR0      at 16#940# range 0 .. 31;
      BSEC_SFSR1      at 16#944# range 0 .. 31;
      BSEC_SFSR2      at 16#948# range 0 .. 31;
      BSEC_SFSR3      at 16#94C# range 0 .. 31;
      BSEC_SFSR4      at 16#950# range 0 .. 31;
      BSEC_SFSR5      at 16#954# range 0 .. 31;
      BSEC_SFSR6      at 16#958# range 0 .. 31;
      BSEC_SFSR7      at 16#95C# range 0 .. 31;
      BSEC_SFSR8      at 16#960# range 0 .. 31;
      BSEC_SFSR9      at 16#964# range 0 .. 31;
      BSEC_SFSR10     at 16#968# range 0 .. 31;
      BSEC_SFSR11     at 16#96C# range 0 .. 31;
      BSEC_OTPCR      at 16#C04# range 0 .. 31;
      BSEC_WDR        at 16#C08# range 0 .. 31;
      BSEC_SCRATCHR0  at 16#E00# range 0 .. 31;
      BSEC_SCRATCHR1  at 16#E04# range 0 .. 31;
      BSEC_SCRATCHR2  at 16#E08# range 0 .. 31;
      BSEC_SCRATCHR3  at 16#E0C# range 0 .. 31;
      BSEC_LOCKR      at 16#E10# range 0 .. 31;
      BSEC_JTAGINR    at 16#E14# range 0 .. 31;
      BSEC_JTAGOUTR   at 16#E18# range 0 .. 31;
      BSEC_UNMAPR     at 16#E24# range 0 .. 31;
      BSEC_SR         at 16#E40# range 0 .. 31;
      BSEC_OTPSR      at 16#E44# range 0 .. 31;
      BSEC_EPOCHR0    at 16#E80# range 0 .. 31;
      BSEC_EPOCHR1    at 16#E84# range 0 .. 31;
      BSEC_EPOCH_SELR at 16#E88# range 0 .. 31;
      BSEC_DBGCR      at 16#E8C# range 0 .. 31;
      BSEC_AP_UNLOCK  at 16#E90# range 0 .. 31;
      BSEC_HDPLSR     at 16#E94# range 0 .. 31;
      BSEC_HDPLCR     at 16#E98# range 0 .. 31;
      BSEC_NEXTLR     at 16#E9C# range 0 .. 31;
      BSEC_WOSCR0     at 16#F40# range 0 .. 31;
      BSEC_WOSCR1     at 16#F44# range 0 .. 31;
      BSEC_WOSCR2     at 16#F48# range 0 .. 31;
      BSEC_WOSCR3     at 16#F4C# range 0 .. 31;
      BSEC_WOSCR4     at 16#F50# range 0 .. 31;
      BSEC_WOSCR5     at 16#F54# range 0 .. 31;
      BSEC_WOSCR6     at 16#F58# range 0 .. 31;
      BSEC_WOSCR7     at 16#F5C# range 0 .. 31;
      BSEC_HRCR       at 16#FE8# range 0 .. 31;
      BSEC_WRCR       at 16#FEC# range 0 .. 31;
   end record;

   --  Boot and security control
   BSEC_Periph : aliased BSEC_Peripheral
     with Import, Address => BSEC_Base;

   --  Boot and security control
   BSEC_S_Periph : aliased BSEC_Peripheral
     with Import, Address => BSEC_S_Base;

end Interfaces.STM32.BSEC;
