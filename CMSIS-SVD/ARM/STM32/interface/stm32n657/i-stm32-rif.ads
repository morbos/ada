--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.RIF is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  IAC_IER0_IAIE array
   type IAC_IER0_IAIE_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt enable register 0
   type IAC_IER0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAIE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAIE as an array
            Arr : IAC_IER0_IAIE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_IER0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_IER1_IAIE array
   type IAC_IER1_IAIE_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt enable register 1
   type IAC_IER1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAIE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAIE as an array
            Arr : IAC_IER1_IAIE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_IER1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_IER2_IAIE array
   type IAC_IER2_IAIE_Field_Array is array (64 .. 95) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt enable register 2
   type IAC_IER2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAIE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAIE as an array
            Arr : IAC_IER2_IAIE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_IER2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_IER3_IAIE array
   type IAC_IER3_IAIE_Field_Array is array (96 .. 127) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt enable register 3
   type IAC_IER3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAIE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAIE as an array
            Arr : IAC_IER3_IAIE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_IER3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_IER4_IAIE array
   type IAC_IER4_IAIE_Field_Array is array (128 .. 159) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt enable register 4
   type IAC_IER4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAIE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAIE as an array
            Arr : IAC_IER4_IAIE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_IER4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_IER5_IAIE array
   type IAC_IER5_IAIE_Field_Array is array (160 .. 191) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt enable register 5
   type IAC_IER5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAIE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAIE as an array
            Arr : IAC_IER5_IAIE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_IER5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_ISR0_IAF array
   type IAC_ISR0_IAF_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt status register 0
   type IAC_ISR0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAF as an array
            Arr : IAC_ISR0_IAF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_ISR0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_ISR1_IAF array
   type IAC_ISR1_IAF_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt status register 1
   type IAC_ISR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAF as an array
            Arr : IAC_ISR1_IAF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_ISR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_ISR2_IAF array
   type IAC_ISR2_IAF_Field_Array is array (64 .. 95) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt status register 2
   type IAC_ISR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAF as an array
            Arr : IAC_ISR2_IAF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_ISR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_ISR3_IAF array
   type IAC_ISR3_IAF_Field_Array is array (96 .. 127) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt status register 3
   type IAC_ISR3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAF as an array
            Arr : IAC_ISR3_IAF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_ISR3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_ISR4_IAF array
   type IAC_ISR4_IAF_Field_Array is array (128 .. 159) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt status register 4
   type IAC_ISR4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAF as an array
            Arr : IAC_ISR4_IAF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_ISR4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_ISR5_IAF array
   type IAC_ISR5_IAF_Field_Array is array (160 .. 191) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt status register 5
   type IAC_ISR5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAF as an array
            Arr : IAC_ISR5_IAF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_ISR5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_ICR0_IAF array
   type IAC_ICR0_IAF_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt clear register 0
   type IAC_ICR0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAF as an array
            Arr : IAC_ICR0_IAF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_ICR0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_ICR1_IAF array
   type IAC_ICR1_IAF_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt clear register 1
   type IAC_ICR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAF as an array
            Arr : IAC_ICR1_IAF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_ICR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_ICR2_IAF array
   type IAC_ICR2_IAF_Field_Array is array (64 .. 95) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt clear register 2
   type IAC_ICR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAF as an array
            Arr : IAC_ICR2_IAF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_ICR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_ICR3_IAF array
   type IAC_ICR3_IAF_Field_Array is array (96 .. 127) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt clear register 3
   type IAC_ICR3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAF as an array
            Arr : IAC_ICR3_IAF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_ICR3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_ICR4_IAF array
   type IAC_ICR4_IAF_Field_Array is array (128 .. 159) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt clear register 4
   type IAC_ICR4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAF as an array
            Arr : IAC_ICR4_IAF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_ICR4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_ICR5_IAF array
   type IAC_ICR5_IAF_Field_Array is array (160 .. 191) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC interrupt clear register 5
   type IAC_ICR5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IAF as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  IAF as an array
            Arr : IAC_ICR5_IAF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_ICR5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_IISR0_ILACIN array
   type IAC_IISR0_ILACIN_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC ILAC input status register 0
   type IAC_IISR0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ILACIN as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  ILACIN as an array
            Arr : IAC_IISR0_ILACIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_IISR0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_IISR1_ILACIN array
   type IAC_IISR1_ILACIN_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC ILAC input status register 1
   type IAC_IISR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ILACIN as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  ILACIN as an array
            Arr : IAC_IISR1_ILACIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_IISR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_IISR2_ILACIN array
   type IAC_IISR2_ILACIN_Field_Array is array (64 .. 95) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC ILAC input status register 2
   type IAC_IISR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ILACIN as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  ILACIN as an array
            Arr : IAC_IISR2_ILACIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_IISR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_IISR3_ILACIN array
   type IAC_IISR3_ILACIN_Field_Array is array (96 .. 127) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC ILAC input status register 3
   type IAC_IISR3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ILACIN as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  ILACIN as an array
            Arr : IAC_IISR3_ILACIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_IISR3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IAC_IISR_ILACIN array
   type IAC_IISR_ILACIN_Field_Array is array (128 .. 159) of Boolean
     with Component_Size => 1, Size => 32;

   --  IAC ILAC input status register 4
   type IAC_IISR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ILACIN as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  ILACIN as an array
            Arr : IAC_IISR_ILACIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IAC_IISR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Illegal access controller
   type RIF_Peripheral is record
      --  IAC interrupt enable register 0
      IAC_IER0  : aliased IAC_IER0_Register;
      --  IAC interrupt enable register 1
      IAC_IER1  : aliased IAC_IER1_Register;
      --  IAC interrupt enable register 2
      IAC_IER2  : aliased IAC_IER2_Register;
      --  IAC interrupt enable register 3
      IAC_IER3  : aliased IAC_IER3_Register;
      --  IAC interrupt enable register 4
      IAC_IER4  : aliased IAC_IER4_Register;
      --  IAC interrupt enable register 5
      IAC_IER5  : aliased IAC_IER5_Register;
      --  IAC interrupt status register 0
      IAC_ISR0  : aliased IAC_ISR0_Register;
      --  IAC interrupt status register 1
      IAC_ISR1  : aliased IAC_ISR1_Register;
      --  IAC interrupt status register 2
      IAC_ISR2  : aliased IAC_ISR2_Register;
      --  IAC interrupt status register 3
      IAC_ISR3  : aliased IAC_ISR3_Register;
      --  IAC interrupt status register 4
      IAC_ISR4  : aliased IAC_ISR4_Register;
      --  IAC interrupt status register 5
      IAC_ISR5  : aliased IAC_ISR5_Register;
      --  IAC interrupt clear register 0
      IAC_ICR0  : aliased IAC_ICR0_Register;
      --  IAC interrupt clear register 1
      IAC_ICR1  : aliased IAC_ICR1_Register;
      --  IAC interrupt clear register 2
      IAC_ICR2  : aliased IAC_ICR2_Register;
      --  IAC interrupt clear register 3
      IAC_ICR3  : aliased IAC_ICR3_Register;
      --  IAC interrupt clear register 4
      IAC_ICR4  : aliased IAC_ICR4_Register;
      --  IAC interrupt clear register 5
      IAC_ICR5  : aliased IAC_ICR5_Register;
      --  IAC ILAC input status register 0
      IAC_IISR0 : aliased IAC_IISR0_Register;
      --  IAC ILAC input status register 1
      IAC_IISR1 : aliased IAC_IISR1_Register;
      --  IAC ILAC input status register 2
      IAC_IISR2 : aliased IAC_IISR2_Register;
      --  IAC ILAC input status register 3
      IAC_IISR3 : aliased IAC_IISR3_Register;
      --  IAC ILAC input status register 4
      IAC_IISR4 : aliased IAC_IISR_Register;
      --  IAC ILAC input status register 5
      IAC_IISR5 : aliased IAC_IISR_Register;
   end record
     with Volatile;

   for RIF_Peripheral use record
      IAC_IER0  at 16#0# range 0 .. 31;
      IAC_IER1  at 16#4# range 0 .. 31;
      IAC_IER2  at 16#8# range 0 .. 31;
      IAC_IER3  at 16#C# range 0 .. 31;
      IAC_IER4  at 16#10# range 0 .. 31;
      IAC_IER5  at 16#14# range 0 .. 31;
      IAC_ISR0  at 16#80# range 0 .. 31;
      IAC_ISR1  at 16#84# range 0 .. 31;
      IAC_ISR2  at 16#88# range 0 .. 31;
      IAC_ISR3  at 16#8C# range 0 .. 31;
      IAC_ISR4  at 16#90# range 0 .. 31;
      IAC_ISR5  at 16#94# range 0 .. 31;
      IAC_ICR0  at 16#100# range 0 .. 31;
      IAC_ICR1  at 16#104# range 0 .. 31;
      IAC_ICR2  at 16#108# range 0 .. 31;
      IAC_ICR3  at 16#10C# range 0 .. 31;
      IAC_ICR4  at 16#110# range 0 .. 31;
      IAC_ICR5  at 16#114# range 0 .. 31;
      IAC_IISR0 at 16#36C# range 0 .. 31;
      IAC_IISR1 at 16#370# range 0 .. 31;
      IAC_IISR2 at 16#374# range 0 .. 31;
      IAC_IISR3 at 16#378# range 0 .. 31;
      IAC_IISR4 at 16#37C# range 0 .. 31;
      IAC_IISR5 at 16#384# range 0 .. 31;
   end record;

   --  Illegal access controller
   IAC_Periph : aliased RIF_Peripheral
     with Import, Address => IAC_Base;

   --  Illegal access controller
   IAC_S_Periph : aliased RIF_Peripheral
     with Import, Address => IAC_S_Base;

end Interfaces.STM32.RIF;
