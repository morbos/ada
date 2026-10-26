--  This spec has been automatically generated from CH32V003xx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package CH32_SVD.ESIG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Device electronic signature
   type ESIG_Peripheral is record
      --  Flash capacity register
      FLACAP : aliased HAL.UInt16;
      --  Unique identity 1
      UNIID1 : aliased HAL.UInt32;
      --  Unique identity 2
      UNIID2 : aliased HAL.UInt32;
      --  Unique identity 3
      UNIID3 : aliased HAL.UInt32;
   end record
     with Volatile;

   for ESIG_Peripheral use record
      FLACAP at 16#0# range 0 .. 15;
      UNIID1 at 16#8# range 0 .. 31;
      UNIID2 at 16#C# range 0 .. 31;
      UNIID3 at 16#10# range 0 .. 31;
   end record;

   --  Device electronic signature
   ESIG_Periph : aliased ESIG_Peripheral
     with Import, Address => ESIG_Base;

end CH32_SVD.ESIG;
