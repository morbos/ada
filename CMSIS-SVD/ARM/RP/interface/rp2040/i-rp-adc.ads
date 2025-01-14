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

--  Control and data interface to SAR ADC
package Interfaces.RP.ADC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CS_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CS_TS_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CS_START_ONCE_Field is Interfaces.Bit_Types.Bit;
   subtype CS_START_MANY_Field is Interfaces.Bit_Types.Bit;
   subtype CS_READY_Field is Interfaces.Bit_Types.Bit;
   subtype CS_ERR_Field is Interfaces.Bit_Types.Bit;
   subtype CS_ERR_STICKY_Field is Interfaces.Bit_Types.Bit;
   subtype CS_AINSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype CS_RROBIN_Field is Interfaces.Bit_Types.UInt5;

   --  ADC Control and Status
   type CS_Register is record
      --  Power on ADC and enable its clock.\n 1 - enabled. 0 - disabled.
      EN             : CS_EN_Field := 16#0#;
      --  Power on temperature sensor. 1 - enabled. 0 - disabled.
      TS_EN          : CS_TS_EN_Field := 16#0#;
      --  After a write operation all bits in the field are cleared (set to
      --  zero). Start a single conversion. Self-clearing. Ignored if
      --  start_many is asserted.
      START_ONCE     : CS_START_ONCE_Field := 16#0#;
      --  Continuously perform conversions whilst this bit is 1. A new
      --  conversion will start immediately after the previous finishes.
      START_MANY     : CS_START_MANY_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Read-only. 1 if the ADC is ready to start a new conversion. Implies
      --  any previous conversion has completed.\n 0 whilst conversion in
      --  progress.
      READY          : CS_READY_Field := 16#0#;
      --  Read-only. The most recent ADC conversion encountered an error;
      --  result is undefined or noisy.
      ERR            : CS_ERR_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Some past ADC conversion encountered an error. Write 1
      --  to clear.
      ERR_STICKY     : CS_ERR_STICKY_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Select analog mux input. Updated automatically in round-robin mode.
      AINSEL         : CS_AINSEL_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Round-robin sampling. 1 bit per channel. Set all bits to 0 to
      --  disable.\n Otherwise, the ADC will cycle through each enabled channel
      --  in a round-robin fashion.\n The first channel to be sampled will be
      --  the one currently indicated by AINSEL.\n AINSEL will be updated after
      --  each conversion with the newly-selected channel.
      RROBIN         : CS_RROBIN_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CS_Register use record
      EN             at 0 range 0 .. 0;
      TS_EN          at 0 range 1 .. 1;
      START_ONCE     at 0 range 2 .. 2;
      START_MANY     at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      READY          at 0 range 8 .. 8;
      ERR            at 0 range 9 .. 9;
      ERR_STICKY     at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      AINSEL         at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RROBIN         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype RESULT_RESULT_Field is Interfaces.Bit_Types.UInt12;

   --  Result of most recent ADC conversion
   type RESULT_Register is record
      --  Read-only.
      RESULT         : RESULT_RESULT_Field;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESULT_Register use record
      RESULT         at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype FCS_EN_Field is Interfaces.Bit_Types.Bit;
   subtype FCS_SHIFT_Field is Interfaces.Bit_Types.Bit;
   subtype FCS_ERR_Field is Interfaces.Bit_Types.Bit;
   subtype FCS_DREQ_EN_Field is Interfaces.Bit_Types.Bit;
   subtype FCS_EMPTY_Field is Interfaces.Bit_Types.Bit;
   subtype FCS_FULL_Field is Interfaces.Bit_Types.Bit;
   subtype FCS_UNDER_Field is Interfaces.Bit_Types.Bit;
   subtype FCS_OVER_Field is Interfaces.Bit_Types.Bit;
   subtype FCS_LEVEL_Field is Interfaces.Bit_Types.UInt4;
   subtype FCS_THRESH_Field is Interfaces.Bit_Types.UInt4;

   --  FIFO control and status
   type FCS_Register is record
      --  If 1: write result to the FIFO after each conversion.
      EN             : FCS_EN_Field := 16#0#;
      --  If 1: FIFO results are right-shifted to be one byte in size. Enables
      --  DMA to byte buffers.
      SHIFT          : FCS_SHIFT_Field := 16#0#;
      --  If 1: conversion error bit appears in the FIFO alongside the result
      ERR            : FCS_ERR_Field := 16#0#;
      --  If 1: assert DMA requests when FIFO contains data
      DREQ_EN        : FCS_DREQ_EN_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Read-only.
      EMPTY          : FCS_EMPTY_Field := 16#0#;
      --  Read-only.
      FULL           : FCS_FULL_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. 1 if the FIFO has been underflowed. Write 1 to clear.
      UNDER          : FCS_UNDER_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. 1 if the FIFO has been overflowed. Write 1 to clear.
      OVER           : FCS_OVER_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Read-only. The number of conversion results currently waiting in the
      --  FIFO
      LEVEL          : FCS_LEVEL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  DREQ/IRQ asserted when level >= threshold
      THRESH         : FCS_THRESH_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FCS_Register use record
      EN             at 0 range 0 .. 0;
      SHIFT          at 0 range 1 .. 1;
      ERR            at 0 range 2 .. 2;
      DREQ_EN        at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      EMPTY          at 0 range 8 .. 8;
      FULL           at 0 range 9 .. 9;
      UNDER          at 0 range 10 .. 10;
      OVER           at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      LEVEL          at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      THRESH         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype FIFO_VAL_Field is Interfaces.Bit_Types.UInt12;
   subtype FIFO_ERR_Field is Interfaces.Bit_Types.Bit;

   --  Conversion result FIFO
   type FIFO_Register is record
      --  Read-only.
      VAL            : FIFO_VAL_Field;
      --  unspecified
      Reserved_12_14 : Interfaces.Bit_Types.UInt3;
      --  Read-only. 1 if this particular sample experienced a conversion
      --  error. Remains in the same location if the sample is shifted.
      ERR            : FIFO_ERR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFO_Register use record
      VAL            at 0 range 0 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      ERR            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DIV_FRAC_Field is Interfaces.Bit_Types.Byte;
   subtype DIV_INT_Field is Interfaces.Bit_Types.UInt16;

   --  Clock divider. If non-zero, CS_START_MANY will start conversions\n at
   --  regular intervals rather than back-to-back.\n The divider is reset when
   --  either of these fields are written.\n Total period is 1 + INT + FRAC /
   --  256
   type DIV_Register is record
      --  Fractional part of clock divisor. First-order delta-sigma.
      FRAC           : DIV_FRAC_Field := 16#0#;
      --  Integer part of clock divisor.
      INT            : DIV_INT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIV_Register use record
      FRAC           at 0 range 0 .. 7;
      INT            at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype INTR_FIFO_Field is Interfaces.Bit_Types.Bit;

   --  Raw Interrupts
   type INTR_Register is record
      --  Read-only. Triggered when the sample FIFO reaches a certain level.\n
      --  This level can be programmed via the FCS_THRESH field.
      FIFO          : INTR_FIFO_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTR_Register use record
      FIFO          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype INTE_FIFO_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable
   type INTE_Register is record
      --  Triggered when the sample FIFO reaches a certain level.\n This level
      --  can be programmed via the FCS_THRESH field.
      FIFO          : INTE_FIFO_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTE_Register use record
      FIFO          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype INTF_FIFO_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Force
   type INTF_Register is record
      --  Triggered when the sample FIFO reaches a certain level.\n This level
      --  can be programmed via the FCS_THRESH field.
      FIFO          : INTF_FIFO_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTF_Register use record
      FIFO          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype INTS_FIFO_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt status after masking & forcing
   type INTS_Register is record
      --  Read-only. Triggered when the sample FIFO reaches a certain level.\n
      --  This level can be programmed via the FCS_THRESH field.
      FIFO          : INTS_FIFO_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTS_Register use record
      FIFO          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Control and data interface to SAR ADC
   type ADC_Peripheral is record
      --  ADC Control and Status
      CS     : aliased CS_Register;
      --  Result of most recent ADC conversion
      RESULT : aliased RESULT_Register;
      --  FIFO control and status
      FCS    : aliased FCS_Register;
      --  Conversion result FIFO
      FIFO   : aliased FIFO_Register;
      --  Clock divider. If non-zero, CS_START_MANY will start conversions\n at
      --  regular intervals rather than back-to-back.\n The divider is reset
      --  when either of these fields are written.\n Total period is 1 + INT +
      --  FRAC / 256
      DIV    : aliased DIV_Register;
      --  Raw Interrupts
      INTR   : aliased INTR_Register;
      --  Interrupt Enable
      INTE   : aliased INTE_Register;
      --  Interrupt Force
      INTF   : aliased INTF_Register;
      --  Interrupt status after masking & forcing
      INTS   : aliased INTS_Register;
   end record
     with Volatile;

   for ADC_Peripheral use record
      CS     at 16#0# range 0 .. 31;
      RESULT at 16#4# range 0 .. 31;
      FCS    at 16#8# range 0 .. 31;
      FIFO   at 16#C# range 0 .. 31;
      DIV    at 16#10# range 0 .. 31;
      INTR   at 16#14# range 0 .. 31;
      INTE   at 16#18# range 0 .. 31;
      INTF   at 16#1C# range 0 .. 31;
      INTS   at 16#20# range 0 .. 31;
   end record;

   --  Control and data interface to SAR ADC
   ADC_Periph : aliased ADC_Peripheral
     with Import, Address => ADC_Base;

end Interfaces.RP.ADC;
