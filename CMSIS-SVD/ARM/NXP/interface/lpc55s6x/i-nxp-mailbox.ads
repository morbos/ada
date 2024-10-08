--
--  Copyright (C) 2020, AdaCore
--

--  Copyright 2016-2019 NXPAll rights reserved.SPDX-License-Identifier: BSD-3-Clause  

--  This spec has been automatically generated from LPC55S6x.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.NXP.MAILBOX is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ---------------------------------
   -- MBOXIRQ cluster's Registers --
   ---------------------------------

   --  no description available
   type MBOXIRQ_Cluster is record
      --  Interrupt request register for the Cortex-M0+ CPU.
      IRQ    : aliased Interfaces.Bit_Types.Word;
      --  Set bits in IRQ0
      IRQSET : aliased Interfaces.Bit_Types.Word;
      --  Clear bits in IRQ0
      IRQCLR : aliased Interfaces.Bit_Types.Word;
   end record
     with Volatile, Size => 128;

   for MBOXIRQ_Cluster use record
      IRQ    at 16#0# range 0 .. 31;
      IRQSET at 16#4# range 0 .. 31;
      IRQCLR at 16#8# range 0 .. 31;
   end record;

   --  no description available
   type MBOXIRQ_Clusters is array (0 .. 1) of MBOXIRQ_Cluster;

   --  Mutual exclusion register[1]
   type MUTEX_Register is record
      --  Cleared when read, set when written. See usage description above.
      EX            : Boolean := True;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MUTEX_Register use record
      EX            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Mailbox
   type MAILBOX_Peripheral is record
      --  no description available
      MBOXIRQ : aliased MBOXIRQ_Clusters;
      --  Mutual exclusion register[1]
      MUTEX   : aliased MUTEX_Register;
   end record
     with Volatile;

   for MAILBOX_Peripheral use record
      MBOXIRQ at 16#0# range 0 .. 255;
      MUTEX   at 16#F8# range 0 .. 31;
   end record;

   --  Mailbox
   MAILBOX_Periph : aliased MAILBOX_Peripheral
     with Import, Address => System'To_Address (16#4008B000#);

end Interfaces.NXP.MAILBOX;
