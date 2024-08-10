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

package Interfaces.RP.SYSINFO is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CHIP_ID_MANUFACTURER_Field is Interfaces.Bit_Types.UInt12;
   subtype CHIP_ID_PART_Field is Interfaces.Bit_Types.UInt16;
   subtype CHIP_ID_REVISION_Field is Interfaces.Bit_Types.UInt4;

   --  JEDEC JEP-106 compliant chip identifier.
   type CHIP_ID_Register is record
      --  Read-only.
      MANUFACTURER : CHIP_ID_MANUFACTURER_Field;
      --  Read-only.
      PART         : CHIP_ID_PART_Field;
      --  Read-only.
      REVISION     : CHIP_ID_REVISION_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHIP_ID_Register use record
      MANUFACTURER at 0 range 0 .. 11;
      PART         at 0 range 12 .. 27;
      REVISION     at 0 range 28 .. 31;
   end record;

   subtype PLATFORM_FPGA_Field is Interfaces.Bit_Types.Bit;
   subtype PLATFORM_ASIC_Field is Interfaces.Bit_Types.Bit;

   --  Platform register. Allows software to know what environment it is
   --  running in.
   type PLATFORM_Register is record
      --  Read-only.
      FPGA          : PLATFORM_FPGA_Field;
      --  Read-only.
      ASIC          : PLATFORM_ASIC_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLATFORM_Register use record
      FPGA          at 0 range 0 .. 0;
      ASIC          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type SYSINFO_Peripheral is record
      --  JEDEC JEP-106 compliant chip identifier.
      CHIP_ID       : aliased CHIP_ID_Register;
      --  Platform register. Allows software to know what environment it is
      --  running in.
      PLATFORM      : aliased PLATFORM_Register;
      --  Git hash of the chip source. Used to identify chip version.
      GITREF_RP2040 : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for SYSINFO_Peripheral use record
      CHIP_ID       at 16#0# range 0 .. 31;
      PLATFORM      at 16#4# range 0 .. 31;
      GITREF_RP2040 at 16#40# range 0 .. 31;
   end record;

   SYSINFO_Periph : aliased SYSINFO_Peripheral
     with Import, Address => SYSINFO_Base;

end Interfaces.RP.SYSINFO;
