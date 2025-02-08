--  This spec has been automatically generated from STM32MP25_CM33.svd

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

   --  CRC control register
   type CRC_CR_Register is record
      --  RESET bit This bit is set by software to reset the CRC calculation
      --  unit and set the data register to the value stored in the CRC_INIT
      --  register. This bit can only be set, it is automatically cleared by
      --  hardware
      RESET         : Boolean := False;
      --  unspecified
      Reserved_1_2  : HAL.UInt2 := 16#0#;
      --  Polynomial size These bits control the size of the polynomial.
      POLYSIZE      : CRC_CR_POLYSIZE_Field := 16#0#;
      --  Reverse input data This bit field controls the reversal of the bit
      --  order of the input data
      REV_IN        : CRC_CR_REV_IN_Field := 16#0#;
      --  Reverse output data This bit controls the reversal of the bit order
      --  of the output data.
      REV_OUT       : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRC_CR_Register use record
      RESET         at 0 range 0 .. 0;
      Reserved_1_2  at 0 range 1 .. 2;
      POLYSIZE      at 0 range 3 .. 4;
      REV_IN        at 0 range 5 .. 6;
      REV_OUT       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CRC_HWCFGR_FULL_POLY_Field is HAL.UInt8;

   --  CRC hardware configuration register
   type CRC_HWCFGR_Register is record
      --  Read-only. Polynomial type Others: Reserved, must not be used.
      FULL_POLY     : CRC_HWCFGR_FULL_POLY_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRC_HWCFGR_Register use record
      FULL_POLY     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CRC_VERR_MINREV_Field is HAL.UInt4;
   subtype CRC_VERR_MAJREV_Field is HAL.UInt4;

   --  CRC version register
   type CRC_VERR_Register is record
      --  Read-only. Minor revision These bits return the CRC minor revision.
      MINREV        : CRC_VERR_MINREV_Field;
      --  Read-only. Major revision These bits return the CRC major revision.
      MAJREV        : CRC_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRC_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CRC address block description
   type CRC_Peripheral is record
      --  CRC data register
      CRC_DR     : aliased HAL.UInt32;
      --  CRC independent data register
      CRC_IDR    : aliased HAL.UInt32;
      --  CRC control register
      CRC_CR     : aliased CRC_CR_Register;
      --  CRC initial value
      CRC_INIT   : aliased HAL.UInt32;
      --  CRC polynomial
      CRC_POL    : aliased HAL.UInt32;
      --  CRC hardware configuration register
      CRC_HWCFGR : aliased CRC_HWCFGR_Register;
      --  CRC version register
      CRC_VERR   : aliased CRC_VERR_Register;
      --  CRC identification register
      CRC_IPIDR  : aliased HAL.UInt32;
      --  CRC size identification register
      CRC_SIDR   : aliased HAL.UInt32;
   end record
     with Volatile;

   for CRC_Peripheral use record
      CRC_DR     at 16#0# range 0 .. 31;
      CRC_IDR    at 16#4# range 0 .. 31;
      CRC_CR     at 16#8# range 0 .. 31;
      CRC_INIT   at 16#10# range 0 .. 31;
      CRC_POL    at 16#14# range 0 .. 31;
      CRC_HWCFGR at 16#3F0# range 0 .. 31;
      CRC_VERR   at 16#3F4# range 0 .. 31;
      CRC_IPIDR  at 16#3F8# range 0 .. 31;
      CRC_SIDR   at 16#3FC# range 0 .. 31;
   end record;

   --  CRC address block description
   CRC_Periph : aliased CRC_Peripheral
     with Import, Address => CRC_Base;

   --  CRC address block description
   CRC_S_Periph : aliased CRC_Peripheral
     with Import, Address => CRC_S_Base;

end STM32_SVD.CRC;
