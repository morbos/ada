--
--  Copyright (C) 2021, AdaCore
--

--  Copyright (c) 2020 Raspberry Pi (Trading) Ltd.
--
--  SPDX-License-Identifier: BSD-3-Clause

--  This spec has been automatically generated from rp2040.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

--  Testbench manager. Allows the programmer to know what platform their
--  software is running on.
package Interfaces.RP.TBMAN is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype PLATFORM_ASIC_Field is Interfaces.Bit_Types.Bit;
   subtype PLATFORM_FPGA_Field is Interfaces.Bit_Types.Bit;

   --  Indicates the type of platform in use
   type PLATFORM_Register is record
      --  Read-only. Indicates the platform is an ASIC
      ASIC          : PLATFORM_ASIC_Field;
      --  Read-only. Indicates the platform is an FPGA
      FPGA          : PLATFORM_FPGA_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLATFORM_Register use record
      ASIC          at 0 range 0 .. 0;
      FPGA          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Testbench manager. Allows the programmer to know what platform their
   --  software is running on.
   type TBMAN_Peripheral is record
      --  Indicates the type of platform in use
      PLATFORM : aliased PLATFORM_Register;
   end record
     with Volatile;

   for TBMAN_Peripheral use record
      PLATFORM at 0 range 0 .. 31;
   end record;

   --  Testbench manager. Allows the programmer to know what platform their
   --  software is running on.
   TBMAN_Periph : aliased TBMAN_Peripheral
     with Import, Address => TBMAN_Base;

end Interfaces.RP.TBMAN;
