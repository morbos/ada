--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.CRC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CRC_CR_POLYSIZE_Field is HAL.UInt2;
   subtype CRC_CR_REV_IN_Field is HAL.UInt2;
   subtype CRC_CR_REV_OUT_Field is HAL.UInt2;

   --  CRC control register
   type CRC_CR_Register is record
      --  RESET bit
      RESET          : Boolean := False;
      --  unspecified
      Reserved_1_2   : HAL.UInt2 := 16#0#;
      --  Polynomial size
      POLYSIZE       : CRC_CR_POLYSIZE_Field := 16#0#;
      --  Reverse input data
      REV_IN         : CRC_CR_REV_IN_Field := 16#0#;
      --  Reverse output data
      REV_OUT        : CRC_CR_REV_OUT_Field := 16#0#;
      --  Reverse type input
      RTYPE_IN       : Boolean := False;
      --  Reverse type output
      RTYPE_OUT      : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRC_CR_Register use record
      RESET          at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      POLYSIZE       at 0 range 3 .. 4;
      REV_IN         at 0 range 5 .. 6;
      REV_OUT        at 0 range 7 .. 8;
      RTYPE_IN       at 0 range 9 .. 9;
      RTYPE_OUT      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cyclic redundancy check calculation unit
   type CRC_Peripheral is record
      --  CRC data register
      CRC_DR   : aliased HAL.UInt32;
      --  CRC independent data register
      CRC_IDR  : aliased HAL.UInt32;
      --  CRC control register
      CRC_CR   : aliased CRC_CR_Register;
      --  CRC initial value
      CRC_INIT : aliased HAL.UInt32;
      --  CRC polynomial
      CRC_POL  : aliased HAL.UInt32;
   end record
     with Volatile;

   for CRC_Peripheral use record
      CRC_DR   at 16#0# range 0 .. 31;
      CRC_IDR  at 16#4# range 0 .. 31;
      CRC_CR   at 16#8# range 0 .. 31;
      CRC_INIT at 16#10# range 0 .. 31;
      CRC_POL  at 16#14# range 0 .. 31;
   end record;

   --  Cyclic redundancy check calculation unit
   CRC_Periph : aliased CRC_Peripheral
     with Import, Address => CRC_Base;

   --  Cyclic redundancy check calculation unit
   CRC_S_Periph : aliased CRC_Peripheral
     with Import, Address => CRC_S_Base;

end STM32_SVD.CRC;
