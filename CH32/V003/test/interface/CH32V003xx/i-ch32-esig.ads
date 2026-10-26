--
--  Copyright (C) 2026, AdaCore
--

--  This spec has been automatically generated from CH32V003xx.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.CH32.ESIG is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Device electronic signature
   type ESIG_Peripheral is record
      --  Flash capacity register
      FLACAP : aliased Interfaces.Bit_Types.UInt16;
      --  Unique identity 1
      UNIID1 : aliased Interfaces.Bit_Types.UInt32;
      --  Unique identity 2
      UNIID2 : aliased Interfaces.Bit_Types.UInt32;
      --  Unique identity 3
      UNIID3 : aliased Interfaces.Bit_Types.UInt32;
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

end Interfaces.CH32.ESIG;
