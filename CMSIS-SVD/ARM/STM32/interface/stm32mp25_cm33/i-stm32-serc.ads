--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.SERC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  SERC enable
   type SERC_ENABLE_Register is record
      --  Enable the SERF framework. When the SERF is enabled, an access to a
      --  target under reset or clocked off is detected; a functional error
      --  response is given back on the IP bus, an illegal access is reported
      --  to the SERC, and an interrupt is fired according to the SERC
      --  registers configuration. When the SERF is disabled, an access to a
      --  target under reset or clocked off is not detected.
      SERFEN        : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SERC_ENABLE_Register use record
      SERFEN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SERC_HWCFGR_CFG1_Field is Interfaces.Bit_Types.Byte;
   subtype SERC_HWCFGR_CFG2_Field is Interfaces.Bit_Types.UInt3;

   --  SERC hardware configuration register
   type SERC_HWCFGR_Register is record
      --  Read-only. NUM_ILAC, number of illegal accesses input pins configured
      --  for this instance of the collector.
      CFG1           : SERC_HWCFGR_CFG1_Field;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte;
      --  Read-only. NUM_RESYNC_FLOPS, number of resynchronization flops when
      --  receiving a bus_ilac information in the SERC clock domain.
      CFG2           : SERC_HWCFGR_CFG2_Field;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SERC_HWCFGR_Register use record
      CFG1           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CFG2           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype SERC_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype SERC_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  SERC version register
   type SERC_VERR_Register is record
      --  Read-only. Minor revision
      MINREV        : SERC_VERR_MINREV_Field;
      --  Read-only. Major revision
      MAJREV        : SERC_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SERC_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SERC register block
   type SERC_Peripheral is record
      --  SERC interrupt enable register 0
      SERC_IER0   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC interrupt enable register 1
      SERC_IER1   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC interrupt enable register 2
      SERC_IER2   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC interrupt enable register 3
      SERC_IER3   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC interrupt enable register 4
      SERC_IER4   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC interrupt enable register 5
      SERC_IER5   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC interrupt status register 0
      SERC_ISR0   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC interrupt status register 1
      SERC_ISR1   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC interrupt status register 2
      SERC_ISR2   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC interrupt status register 3
      SERC_ISR3   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC interrupt status register 4
      SERC_ISR4   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC interrupt status register 5
      SERC_ISR5   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC interrupt clear register 0
      SERC_ICR0   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC interrupt clear register 1
      SERC_ICR1   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC interrupt clear register 2
      SERC_ICR2   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC interrupt clear register 3
      SERC_ICR3   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC interrupt clear register 4
      SERC_ICR4   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC interrupt clear register 5
      SERC_ICR5   : aliased Interfaces.Bit_Types.UInt32;
      --  SERC enable
      SERC_ENABLE : aliased SERC_ENABLE_Register;
      --  SERC hardware configuration register
      SERC_HWCFGR : aliased SERC_HWCFGR_Register;
      --  SERC version register
      SERC_VERR   : aliased SERC_VERR_Register;
      --  SERC identification register
      SERC_IPIDR  : aliased Interfaces.Bit_Types.UInt32;
      --  SERC size identification register
      SERC_SIDR   : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for SERC_Peripheral use record
      SERC_IER0   at 16#0# range 0 .. 31;
      SERC_IER1   at 16#4# range 0 .. 31;
      SERC_IER2   at 16#8# range 0 .. 31;
      SERC_IER3   at 16#C# range 0 .. 31;
      SERC_IER4   at 16#10# range 0 .. 31;
      SERC_IER5   at 16#14# range 0 .. 31;
      SERC_ISR0   at 16#40# range 0 .. 31;
      SERC_ISR1   at 16#44# range 0 .. 31;
      SERC_ISR2   at 16#48# range 0 .. 31;
      SERC_ISR3   at 16#4C# range 0 .. 31;
      SERC_ISR4   at 16#50# range 0 .. 31;
      SERC_ISR5   at 16#54# range 0 .. 31;
      SERC_ICR0   at 16#80# range 0 .. 31;
      SERC_ICR1   at 16#84# range 0 .. 31;
      SERC_ICR2   at 16#88# range 0 .. 31;
      SERC_ICR3   at 16#8C# range 0 .. 31;
      SERC_ICR4   at 16#90# range 0 .. 31;
      SERC_ICR5   at 16#94# range 0 .. 31;
      SERC_ENABLE at 16#100# range 0 .. 31;
      SERC_HWCFGR at 16#3F0# range 0 .. 31;
      SERC_VERR   at 16#3F4# range 0 .. 31;
      SERC_IPIDR  at 16#3F8# range 0 .. 31;
      SERC_SIDR   at 16#3FC# range 0 .. 31;
   end record;

   --  SERC register block
   SERC_Periph : aliased SERC_Peripheral
     with Import, Address => SERC_Base;

   --  SERC register block
   SERC_S_Periph : aliased SERC_Peripheral
     with Import, Address => SERC_S_Base;

end Interfaces.STM32.SERC;
