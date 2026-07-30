--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.CCB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CCB_CR_CCOP_Field is HAL.UInt8;

   --  CCB control register
   type CCB_CR_Register is record
      --  Coupling and chaining operation
      CCOP          : CCB_CR_CCOP_Field := 16#0#;
      --  unspecified
      Reserved_8_30 : HAL.UInt23 := 16#0#;
      --  CCB reset
      IPRST         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCB_CR_Register use record
      CCOP          at 0 range 0 .. 7;
      Reserved_8_30 at 0 range 8 .. 30;
      IPRST         at 0 range 31 .. 31;
   end record;

   subtype CCB_SR_OPSTEP_Field is HAL.UInt5;
   subtype CCB_SR_OPERR_Field is HAL.UInt6;

   --  CCB_SR_TAMP_EVT array
   type CCB_SR_TAMP_EVT_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for CCB_SR_TAMP_EVT
   type CCB_SR_TAMP_EVT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TAMP_EVT as a value
            Val : HAL.UInt6;
         when True =>
            --  TAMP_EVT as an array
            Arr : CCB_SR_TAMP_EVT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for CCB_SR_TAMP_EVT_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  CCB status register
   type CCB_SR_Register is record
      --  Read-only. Operation step
      OPSTEP         : CCB_SR_OPSTEP_Field;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. Operation error
      OPERR          : CCB_SR_OPERR_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. CCB busy
      CCB_BUSY       : Boolean;
      --  unspecified
      Reserved_17_23 : HAL.UInt7;
      --  Read-only. Tamper i flag
      TAMP_EVT       : CCB_SR_TAMP_EVT_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCB_SR_Register use record
      OPSTEP         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OPERR          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CCB_BUSY       at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      TAMP_EVT       at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  CCB_REFTAGR0_REFTAG array
   type CCB_REFTAGR0_REFTAG_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  CCB reference tag register
   type CCB_REFTAGR0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  REFTAG as a value
            Val : HAL.UInt32;
         when True =>
            --  REFTAG as an array
            Arr : CCB_REFTAGR0_REFTAG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCB_REFTAGR0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CCB_REFTAGR1_REFTAG array
   type CCB_REFTAGR1_REFTAG_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  CCB reference tag register
   type CCB_REFTAGR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  REFTAG as a value
            Val : HAL.UInt32;
         when True =>
            --  REFTAG as an array
            Arr : CCB_REFTAGR1_REFTAG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCB_REFTAGR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CCB_REFTAGR2_REFTAG array
   type CCB_REFTAGR2_REFTAG_Field_Array is array (64 .. 95) of Boolean
     with Component_Size => 1, Size => 32;

   --  CCB reference tag register
   type CCB_REFTAGR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  REFTAG as a value
            Val : HAL.UInt32;
         when True =>
            --  REFTAG as an array
            Arr : CCB_REFTAGR2_REFTAG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCB_REFTAGR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CCB_REFTAGR3_REFTAG array
   type CCB_REFTAGR3_REFTAG_Field_Array is array (96 .. 127) of Boolean
     with Component_Size => 1, Size => 32;

   --  CCB reference tag register
   type CCB_REFTAGR3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  REFTAG as a value
            Val : HAL.UInt32;
         when True =>
            --  REFTAG as an array
            Arr : CCB_REFTAGR3_REFTAG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCB_REFTAGR3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CCB register block
   type CCB_Peripheral is record
      --  CCB control register
      CCB_CR       : aliased CCB_CR_Register;
      --  CCB status register
      CCB_SR       : aliased CCB_SR_Register;
      --  CCB reference tag register
      CCB_REFTAGR0 : aliased CCB_REFTAGR0_Register;
      --  CCB reference tag register
      CCB_REFTAGR1 : aliased CCB_REFTAGR1_Register;
      --  CCB reference tag register
      CCB_REFTAGR2 : aliased CCB_REFTAGR2_Register;
      --  CCB reference tag register
      CCB_REFTAGR3 : aliased CCB_REFTAGR3_Register;
   end record
     with Volatile;

   for CCB_Peripheral use record
      CCB_CR       at 16#0# range 0 .. 31;
      CCB_SR       at 16#4# range 0 .. 31;
      CCB_REFTAGR0 at 16#10# range 0 .. 31;
      CCB_REFTAGR1 at 16#14# range 0 .. 31;
      CCB_REFTAGR2 at 16#18# range 0 .. 31;
      CCB_REFTAGR3 at 16#1C# range 0 .. 31;
   end record;

   --  CCB register block
   CCB_Periph : aliased CCB_Peripheral
     with Import, Address => CCB_Base;

   --  CCB register block
   SEC_CCB_Periph : aliased CCB_Peripheral
     with Import, Address => SEC_CCB_Base;

end STM32_SVD.CCB;
