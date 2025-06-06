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

package Interfaces.RP.IO_QSPI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype GPIO_QSPI_SCLK_STATUS_OUTFROMPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SCLK_STATUS_OUTTOPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SCLK_STATUS_OEFROMPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SCLK_STATUS_OETOPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SCLK_STATUS_INFROMPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SCLK_STATUS_INTOPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SCLK_STATUS_IRQFROMPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SCLK_STATUS_IRQTOPROC_Field is Interfaces.Bit_Types.Bit;

   --  GPIO status
   type GPIO_QSPI_SCLK_STATUS_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte;
      --  Read-only. output signal from selected peripheral, before register
      --  override is applied
      OUTFROMPERI    : GPIO_QSPI_SCLK_STATUS_OUTFROMPERI_Field;
      --  Read-only. output signal to pad after register override is applied
      OUTTOPAD       : GPIO_QSPI_SCLK_STATUS_OUTTOPAD_Field;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2;
      --  Read-only. output enable from selected peripheral, before register
      --  override is applied
      OEFROMPERI     : GPIO_QSPI_SCLK_STATUS_OEFROMPERI_Field;
      --  Read-only. output enable to pad after register override is applied
      OETOPAD        : GPIO_QSPI_SCLK_STATUS_OETOPAD_Field;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3;
      --  Read-only. input signal from pad, before override is applied
      INFROMPAD      : GPIO_QSPI_SCLK_STATUS_INFROMPAD_Field;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit;
      --  Read-only. input signal to peripheral, after override is applied
      INTOPERI       : GPIO_QSPI_SCLK_STATUS_INTOPERI_Field;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4;
      --  Read-only. interrupt from pad before override is applied
      IRQFROMPAD     : GPIO_QSPI_SCLK_STATUS_IRQFROMPAD_Field;
      --  unspecified
      Reserved_25_25 : Interfaces.Bit_Types.Bit;
      --  Read-only. interrupt to processors, after override is applied
      IRQTOPROC      : GPIO_QSPI_SCLK_STATUS_IRQTOPROC_Field;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_QSPI_SCLK_STATUS_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      OUTFROMPERI    at 0 range 8 .. 8;
      OUTTOPAD       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      OEFROMPERI     at 0 range 12 .. 12;
      OETOPAD        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      INFROMPAD      at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      INTOPERI       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      IRQFROMPAD     at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      IRQTOPROC      at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  0-31 -> selects pin function according to the gpio table\n 31 == NULL
   type GPIO_QSPI_SCLK_CTRL_FUNCSEL_Field is
     (XIP_SCLK,
      SIO_30,
      NULL_k)
     with Size => 5;
   for GPIO_QSPI_SCLK_CTRL_FUNCSEL_Field use
     (XIP_SCLK => 0,
      SIO_30 => 5,
      NULL_k => 31);

   type GPIO_QSPI_SCLK_CTRL_OUTOVER_Field is
     (--  drive output from peripheral signal selected by funcsel
      Normal,
      --  drive output from inverse of peripheral signal selected by funcsel
      Invert,
      --  drive output low
      Low,
      --  drive output high
      High)
     with Size => 2;
   for GPIO_QSPI_SCLK_CTRL_OUTOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   type GPIO_QSPI_SCLK_CTRL_OEOVER_Field is
     (--  drive output enable from peripheral signal selected by funcsel
      Normal,
      --  drive output enable from inverse of peripheral signal selected by funcsel
      Invert,
      --  disable output
      Disable,
      --  enable output
      Enable)
     with Size => 2;
   for GPIO_QSPI_SCLK_CTRL_OEOVER_Field use
     (Normal => 0,
      Invert => 1,
      Disable => 2,
      Enable => 3);

   type GPIO_QSPI_SCLK_CTRL_INOVER_Field is
     (--  don't invert the peri input
      Normal,
      --  invert the peri input
      Invert,
      --  drive peri input low
      Low,
      --  drive peri input high
      High)
     with Size => 2;
   for GPIO_QSPI_SCLK_CTRL_INOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   type GPIO_QSPI_SCLK_CTRL_IRQOVER_Field is
     (--  don't invert the interrupt
      Normal,
      --  invert the interrupt
      Invert,
      --  drive interrupt low
      Low,
      --  drive interrupt high
      High)
     with Size => 2;
   for GPIO_QSPI_SCLK_CTRL_IRQOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   --  GPIO control including function select and overrides.
   type GPIO_QSPI_SCLK_CTRL_Register is record
      --  0-31 -> selects pin function according to the gpio table\n 31 == NULL
      FUNCSEL        : GPIO_QSPI_SCLK_CTRL_FUNCSEL_Field :=
                        Interfaces.RP.IO_QSPI.NULL_k;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      OUTOVER        : GPIO_QSPI_SCLK_CTRL_OUTOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      OEOVER         : GPIO_QSPI_SCLK_CTRL_OEOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      INOVER         : GPIO_QSPI_SCLK_CTRL_INOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_18_27 : Interfaces.Bit_Types.UInt10 := 16#0#;
      IRQOVER        : GPIO_QSPI_SCLK_CTRL_IRQOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_QSPI_SCLK_CTRL_Register use record
      FUNCSEL        at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OUTOVER        at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      OEOVER         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      INOVER         at 0 range 16 .. 17;
      Reserved_18_27 at 0 range 18 .. 27;
      IRQOVER        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype GPIO_QSPI_SS_STATUS_OUTFROMPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SS_STATUS_OUTTOPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SS_STATUS_OEFROMPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SS_STATUS_OETOPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SS_STATUS_INFROMPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SS_STATUS_INTOPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SS_STATUS_IRQFROMPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SS_STATUS_IRQTOPROC_Field is Interfaces.Bit_Types.Bit;

   --  GPIO status
   type GPIO_QSPI_SS_STATUS_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte;
      --  Read-only. output signal from selected peripheral, before register
      --  override is applied
      OUTFROMPERI    : GPIO_QSPI_SS_STATUS_OUTFROMPERI_Field;
      --  Read-only. output signal to pad after register override is applied
      OUTTOPAD       : GPIO_QSPI_SS_STATUS_OUTTOPAD_Field;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2;
      --  Read-only. output enable from selected peripheral, before register
      --  override is applied
      OEFROMPERI     : GPIO_QSPI_SS_STATUS_OEFROMPERI_Field;
      --  Read-only. output enable to pad after register override is applied
      OETOPAD        : GPIO_QSPI_SS_STATUS_OETOPAD_Field;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3;
      --  Read-only. input signal from pad, before override is applied
      INFROMPAD      : GPIO_QSPI_SS_STATUS_INFROMPAD_Field;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit;
      --  Read-only. input signal to peripheral, after override is applied
      INTOPERI       : GPIO_QSPI_SS_STATUS_INTOPERI_Field;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4;
      --  Read-only. interrupt from pad before override is applied
      IRQFROMPAD     : GPIO_QSPI_SS_STATUS_IRQFROMPAD_Field;
      --  unspecified
      Reserved_25_25 : Interfaces.Bit_Types.Bit;
      --  Read-only. interrupt to processors, after override is applied
      IRQTOPROC      : GPIO_QSPI_SS_STATUS_IRQTOPROC_Field;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_QSPI_SS_STATUS_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      OUTFROMPERI    at 0 range 8 .. 8;
      OUTTOPAD       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      OEFROMPERI     at 0 range 12 .. 12;
      OETOPAD        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      INFROMPAD      at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      INTOPERI       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      IRQFROMPAD     at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      IRQTOPROC      at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  0-31 -> selects pin function according to the gpio table\n 31 == NULL
   type GPIO_QSPI_SS_CTRL_FUNCSEL_Field is
     (XIP_SS_N,
      SIO_31,
      NULL_k)
     with Size => 5;
   for GPIO_QSPI_SS_CTRL_FUNCSEL_Field use
     (XIP_SS_N => 0,
      SIO_31 => 5,
      NULL_k => 31);

   type GPIO_QSPI_SS_CTRL_OUTOVER_Field is
     (--  drive output from peripheral signal selected by funcsel
      Normal,
      --  drive output from inverse of peripheral signal selected by funcsel
      Invert,
      --  drive output low
      Low,
      --  drive output high
      High)
     with Size => 2;
   for GPIO_QSPI_SS_CTRL_OUTOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   type GPIO_QSPI_SS_CTRL_OEOVER_Field is
     (--  drive output enable from peripheral signal selected by funcsel
      Normal,
      --  drive output enable from inverse of peripheral signal selected by funcsel
      Invert,
      --  disable output
      Disable,
      --  enable output
      Enable)
     with Size => 2;
   for GPIO_QSPI_SS_CTRL_OEOVER_Field use
     (Normal => 0,
      Invert => 1,
      Disable => 2,
      Enable => 3);

   type GPIO_QSPI_SS_CTRL_INOVER_Field is
     (--  don't invert the peri input
      Normal,
      --  invert the peri input
      Invert,
      --  drive peri input low
      Low,
      --  drive peri input high
      High)
     with Size => 2;
   for GPIO_QSPI_SS_CTRL_INOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   type GPIO_QSPI_SS_CTRL_IRQOVER_Field is
     (--  don't invert the interrupt
      Normal,
      --  invert the interrupt
      Invert,
      --  drive interrupt low
      Low,
      --  drive interrupt high
      High)
     with Size => 2;
   for GPIO_QSPI_SS_CTRL_IRQOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   --  GPIO control including function select and overrides.
   type GPIO_QSPI_SS_CTRL_Register is record
      --  0-31 -> selects pin function according to the gpio table\n 31 == NULL
      FUNCSEL        : GPIO_QSPI_SS_CTRL_FUNCSEL_Field :=
                        Interfaces.RP.IO_QSPI.NULL_k;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      OUTOVER        : GPIO_QSPI_SS_CTRL_OUTOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      OEOVER         : GPIO_QSPI_SS_CTRL_OEOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      INOVER         : GPIO_QSPI_SS_CTRL_INOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_18_27 : Interfaces.Bit_Types.UInt10 := 16#0#;
      IRQOVER        : GPIO_QSPI_SS_CTRL_IRQOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_QSPI_SS_CTRL_Register use record
      FUNCSEL        at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OUTOVER        at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      OEOVER         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      INOVER         at 0 range 16 .. 17;
      Reserved_18_27 at 0 range 18 .. 27;
      IRQOVER        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype GPIO_QSPI_SD0_STATUS_OUTFROMPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD0_STATUS_OUTTOPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD0_STATUS_OEFROMPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD0_STATUS_OETOPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD0_STATUS_INFROMPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD0_STATUS_INTOPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD0_STATUS_IRQFROMPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD0_STATUS_IRQTOPROC_Field is Interfaces.Bit_Types.Bit;

   --  GPIO status
   type GPIO_QSPI_SD0_STATUS_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte;
      --  Read-only. output signal from selected peripheral, before register
      --  override is applied
      OUTFROMPERI    : GPIO_QSPI_SD0_STATUS_OUTFROMPERI_Field;
      --  Read-only. output signal to pad after register override is applied
      OUTTOPAD       : GPIO_QSPI_SD0_STATUS_OUTTOPAD_Field;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2;
      --  Read-only. output enable from selected peripheral, before register
      --  override is applied
      OEFROMPERI     : GPIO_QSPI_SD0_STATUS_OEFROMPERI_Field;
      --  Read-only. output enable to pad after register override is applied
      OETOPAD        : GPIO_QSPI_SD0_STATUS_OETOPAD_Field;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3;
      --  Read-only. input signal from pad, before override is applied
      INFROMPAD      : GPIO_QSPI_SD0_STATUS_INFROMPAD_Field;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit;
      --  Read-only. input signal to peripheral, after override is applied
      INTOPERI       : GPIO_QSPI_SD0_STATUS_INTOPERI_Field;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4;
      --  Read-only. interrupt from pad before override is applied
      IRQFROMPAD     : GPIO_QSPI_SD0_STATUS_IRQFROMPAD_Field;
      --  unspecified
      Reserved_25_25 : Interfaces.Bit_Types.Bit;
      --  Read-only. interrupt to processors, after override is applied
      IRQTOPROC      : GPIO_QSPI_SD0_STATUS_IRQTOPROC_Field;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_QSPI_SD0_STATUS_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      OUTFROMPERI    at 0 range 8 .. 8;
      OUTTOPAD       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      OEFROMPERI     at 0 range 12 .. 12;
      OETOPAD        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      INFROMPAD      at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      INTOPERI       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      IRQFROMPAD     at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      IRQTOPROC      at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  0-31 -> selects pin function according to the gpio table\n 31 == NULL
   type GPIO_QSPI_SD0_CTRL_FUNCSEL_Field is
     (XIP_SD0,
      SIO_32,
      NULL_k)
     with Size => 5;
   for GPIO_QSPI_SD0_CTRL_FUNCSEL_Field use
     (XIP_SD0 => 0,
      SIO_32 => 5,
      NULL_k => 31);

   type GPIO_QSPI_SD0_CTRL_OUTOVER_Field is
     (--  drive output from peripheral signal selected by funcsel
      Normal,
      --  drive output from inverse of peripheral signal selected by funcsel
      Invert,
      --  drive output low
      Low,
      --  drive output high
      High)
     with Size => 2;
   for GPIO_QSPI_SD0_CTRL_OUTOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   type GPIO_QSPI_SD0_CTRL_OEOVER_Field is
     (--  drive output enable from peripheral signal selected by funcsel
      Normal,
      --  drive output enable from inverse of peripheral signal selected by funcsel
      Invert,
      --  disable output
      Disable,
      --  enable output
      Enable)
     with Size => 2;
   for GPIO_QSPI_SD0_CTRL_OEOVER_Field use
     (Normal => 0,
      Invert => 1,
      Disable => 2,
      Enable => 3);

   type GPIO_QSPI_SD0_CTRL_INOVER_Field is
     (--  don't invert the peri input
      Normal,
      --  invert the peri input
      Invert,
      --  drive peri input low
      Low,
      --  drive peri input high
      High)
     with Size => 2;
   for GPIO_QSPI_SD0_CTRL_INOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   type GPIO_QSPI_SD0_CTRL_IRQOVER_Field is
     (--  don't invert the interrupt
      Normal,
      --  invert the interrupt
      Invert,
      --  drive interrupt low
      Low,
      --  drive interrupt high
      High)
     with Size => 2;
   for GPIO_QSPI_SD0_CTRL_IRQOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   --  GPIO control including function select and overrides.
   type GPIO_QSPI_SD0_CTRL_Register is record
      --  0-31 -> selects pin function according to the gpio table\n 31 == NULL
      FUNCSEL        : GPIO_QSPI_SD0_CTRL_FUNCSEL_Field :=
                        Interfaces.RP.IO_QSPI.NULL_k;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      OUTOVER        : GPIO_QSPI_SD0_CTRL_OUTOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      OEOVER         : GPIO_QSPI_SD0_CTRL_OEOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      INOVER         : GPIO_QSPI_SD0_CTRL_INOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_18_27 : Interfaces.Bit_Types.UInt10 := 16#0#;
      IRQOVER        : GPIO_QSPI_SD0_CTRL_IRQOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_QSPI_SD0_CTRL_Register use record
      FUNCSEL        at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OUTOVER        at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      OEOVER         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      INOVER         at 0 range 16 .. 17;
      Reserved_18_27 at 0 range 18 .. 27;
      IRQOVER        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype GPIO_QSPI_SD1_STATUS_OUTFROMPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD1_STATUS_OUTTOPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD1_STATUS_OEFROMPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD1_STATUS_OETOPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD1_STATUS_INFROMPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD1_STATUS_INTOPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD1_STATUS_IRQFROMPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD1_STATUS_IRQTOPROC_Field is Interfaces.Bit_Types.Bit;

   --  GPIO status
   type GPIO_QSPI_SD1_STATUS_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte;
      --  Read-only. output signal from selected peripheral, before register
      --  override is applied
      OUTFROMPERI    : GPIO_QSPI_SD1_STATUS_OUTFROMPERI_Field;
      --  Read-only. output signal to pad after register override is applied
      OUTTOPAD       : GPIO_QSPI_SD1_STATUS_OUTTOPAD_Field;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2;
      --  Read-only. output enable from selected peripheral, before register
      --  override is applied
      OEFROMPERI     : GPIO_QSPI_SD1_STATUS_OEFROMPERI_Field;
      --  Read-only. output enable to pad after register override is applied
      OETOPAD        : GPIO_QSPI_SD1_STATUS_OETOPAD_Field;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3;
      --  Read-only. input signal from pad, before override is applied
      INFROMPAD      : GPIO_QSPI_SD1_STATUS_INFROMPAD_Field;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit;
      --  Read-only. input signal to peripheral, after override is applied
      INTOPERI       : GPIO_QSPI_SD1_STATUS_INTOPERI_Field;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4;
      --  Read-only. interrupt from pad before override is applied
      IRQFROMPAD     : GPIO_QSPI_SD1_STATUS_IRQFROMPAD_Field;
      --  unspecified
      Reserved_25_25 : Interfaces.Bit_Types.Bit;
      --  Read-only. interrupt to processors, after override is applied
      IRQTOPROC      : GPIO_QSPI_SD1_STATUS_IRQTOPROC_Field;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_QSPI_SD1_STATUS_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      OUTFROMPERI    at 0 range 8 .. 8;
      OUTTOPAD       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      OEFROMPERI     at 0 range 12 .. 12;
      OETOPAD        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      INFROMPAD      at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      INTOPERI       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      IRQFROMPAD     at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      IRQTOPROC      at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  0-31 -> selects pin function according to the gpio table\n 31 == NULL
   type GPIO_QSPI_SD1_CTRL_FUNCSEL_Field is
     (XIP_SD1,
      SIO_33,
      NULL_k)
     with Size => 5;
   for GPIO_QSPI_SD1_CTRL_FUNCSEL_Field use
     (XIP_SD1 => 0,
      SIO_33 => 5,
      NULL_k => 31);

   type GPIO_QSPI_SD1_CTRL_OUTOVER_Field is
     (--  drive output from peripheral signal selected by funcsel
      Normal,
      --  drive output from inverse of peripheral signal selected by funcsel
      Invert,
      --  drive output low
      Low,
      --  drive output high
      High)
     with Size => 2;
   for GPIO_QSPI_SD1_CTRL_OUTOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   type GPIO_QSPI_SD1_CTRL_OEOVER_Field is
     (--  drive output enable from peripheral signal selected by funcsel
      Normal,
      --  drive output enable from inverse of peripheral signal selected by funcsel
      Invert,
      --  disable output
      Disable,
      --  enable output
      Enable)
     with Size => 2;
   for GPIO_QSPI_SD1_CTRL_OEOVER_Field use
     (Normal => 0,
      Invert => 1,
      Disable => 2,
      Enable => 3);

   type GPIO_QSPI_SD1_CTRL_INOVER_Field is
     (--  don't invert the peri input
      Normal,
      --  invert the peri input
      Invert,
      --  drive peri input low
      Low,
      --  drive peri input high
      High)
     with Size => 2;
   for GPIO_QSPI_SD1_CTRL_INOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   type GPIO_QSPI_SD1_CTRL_IRQOVER_Field is
     (--  don't invert the interrupt
      Normal,
      --  invert the interrupt
      Invert,
      --  drive interrupt low
      Low,
      --  drive interrupt high
      High)
     with Size => 2;
   for GPIO_QSPI_SD1_CTRL_IRQOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   --  GPIO control including function select and overrides.
   type GPIO_QSPI_SD1_CTRL_Register is record
      --  0-31 -> selects pin function according to the gpio table\n 31 == NULL
      FUNCSEL        : GPIO_QSPI_SD1_CTRL_FUNCSEL_Field :=
                        Interfaces.RP.IO_QSPI.NULL_k;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      OUTOVER        : GPIO_QSPI_SD1_CTRL_OUTOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      OEOVER         : GPIO_QSPI_SD1_CTRL_OEOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      INOVER         : GPIO_QSPI_SD1_CTRL_INOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_18_27 : Interfaces.Bit_Types.UInt10 := 16#0#;
      IRQOVER        : GPIO_QSPI_SD1_CTRL_IRQOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_QSPI_SD1_CTRL_Register use record
      FUNCSEL        at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OUTOVER        at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      OEOVER         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      INOVER         at 0 range 16 .. 17;
      Reserved_18_27 at 0 range 18 .. 27;
      IRQOVER        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype GPIO_QSPI_SD2_STATUS_OUTFROMPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD2_STATUS_OUTTOPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD2_STATUS_OEFROMPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD2_STATUS_OETOPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD2_STATUS_INFROMPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD2_STATUS_INTOPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD2_STATUS_IRQFROMPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD2_STATUS_IRQTOPROC_Field is Interfaces.Bit_Types.Bit;

   --  GPIO status
   type GPIO_QSPI_SD2_STATUS_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte;
      --  Read-only. output signal from selected peripheral, before register
      --  override is applied
      OUTFROMPERI    : GPIO_QSPI_SD2_STATUS_OUTFROMPERI_Field;
      --  Read-only. output signal to pad after register override is applied
      OUTTOPAD       : GPIO_QSPI_SD2_STATUS_OUTTOPAD_Field;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2;
      --  Read-only. output enable from selected peripheral, before register
      --  override is applied
      OEFROMPERI     : GPIO_QSPI_SD2_STATUS_OEFROMPERI_Field;
      --  Read-only. output enable to pad after register override is applied
      OETOPAD        : GPIO_QSPI_SD2_STATUS_OETOPAD_Field;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3;
      --  Read-only. input signal from pad, before override is applied
      INFROMPAD      : GPIO_QSPI_SD2_STATUS_INFROMPAD_Field;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit;
      --  Read-only. input signal to peripheral, after override is applied
      INTOPERI       : GPIO_QSPI_SD2_STATUS_INTOPERI_Field;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4;
      --  Read-only. interrupt from pad before override is applied
      IRQFROMPAD     : GPIO_QSPI_SD2_STATUS_IRQFROMPAD_Field;
      --  unspecified
      Reserved_25_25 : Interfaces.Bit_Types.Bit;
      --  Read-only. interrupt to processors, after override is applied
      IRQTOPROC      : GPIO_QSPI_SD2_STATUS_IRQTOPROC_Field;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_QSPI_SD2_STATUS_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      OUTFROMPERI    at 0 range 8 .. 8;
      OUTTOPAD       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      OEFROMPERI     at 0 range 12 .. 12;
      OETOPAD        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      INFROMPAD      at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      INTOPERI       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      IRQFROMPAD     at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      IRQTOPROC      at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  0-31 -> selects pin function according to the gpio table\n 31 == NULL
   type GPIO_QSPI_SD2_CTRL_FUNCSEL_Field is
     (XIP_SD2,
      SIO_34,
      NULL_k)
     with Size => 5;
   for GPIO_QSPI_SD2_CTRL_FUNCSEL_Field use
     (XIP_SD2 => 0,
      SIO_34 => 5,
      NULL_k => 31);

   type GPIO_QSPI_SD2_CTRL_OUTOVER_Field is
     (--  drive output from peripheral signal selected by funcsel
      Normal,
      --  drive output from inverse of peripheral signal selected by funcsel
      Invert,
      --  drive output low
      Low,
      --  drive output high
      High)
     with Size => 2;
   for GPIO_QSPI_SD2_CTRL_OUTOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   type GPIO_QSPI_SD2_CTRL_OEOVER_Field is
     (--  drive output enable from peripheral signal selected by funcsel
      Normal,
      --  drive output enable from inverse of peripheral signal selected by funcsel
      Invert,
      --  disable output
      Disable,
      --  enable output
      Enable)
     with Size => 2;
   for GPIO_QSPI_SD2_CTRL_OEOVER_Field use
     (Normal => 0,
      Invert => 1,
      Disable => 2,
      Enable => 3);

   type GPIO_QSPI_SD2_CTRL_INOVER_Field is
     (--  don't invert the peri input
      Normal,
      --  invert the peri input
      Invert,
      --  drive peri input low
      Low,
      --  drive peri input high
      High)
     with Size => 2;
   for GPIO_QSPI_SD2_CTRL_INOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   type GPIO_QSPI_SD2_CTRL_IRQOVER_Field is
     (--  don't invert the interrupt
      Normal,
      --  invert the interrupt
      Invert,
      --  drive interrupt low
      Low,
      --  drive interrupt high
      High)
     with Size => 2;
   for GPIO_QSPI_SD2_CTRL_IRQOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   --  GPIO control including function select and overrides.
   type GPIO_QSPI_SD2_CTRL_Register is record
      --  0-31 -> selects pin function according to the gpio table\n 31 == NULL
      FUNCSEL        : GPIO_QSPI_SD2_CTRL_FUNCSEL_Field :=
                        Interfaces.RP.IO_QSPI.NULL_k;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      OUTOVER        : GPIO_QSPI_SD2_CTRL_OUTOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      OEOVER         : GPIO_QSPI_SD2_CTRL_OEOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      INOVER         : GPIO_QSPI_SD2_CTRL_INOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_18_27 : Interfaces.Bit_Types.UInt10 := 16#0#;
      IRQOVER        : GPIO_QSPI_SD2_CTRL_IRQOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_QSPI_SD2_CTRL_Register use record
      FUNCSEL        at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OUTOVER        at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      OEOVER         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      INOVER         at 0 range 16 .. 17;
      Reserved_18_27 at 0 range 18 .. 27;
      IRQOVER        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype GPIO_QSPI_SD3_STATUS_OUTFROMPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD3_STATUS_OUTTOPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD3_STATUS_OEFROMPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD3_STATUS_OETOPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD3_STATUS_INFROMPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD3_STATUS_INTOPERI_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD3_STATUS_IRQFROMPAD_Field is Interfaces.Bit_Types.Bit;
   subtype GPIO_QSPI_SD3_STATUS_IRQTOPROC_Field is Interfaces.Bit_Types.Bit;

   --  GPIO status
   type GPIO_QSPI_SD3_STATUS_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte;
      --  Read-only. output signal from selected peripheral, before register
      --  override is applied
      OUTFROMPERI    : GPIO_QSPI_SD3_STATUS_OUTFROMPERI_Field;
      --  Read-only. output signal to pad after register override is applied
      OUTTOPAD       : GPIO_QSPI_SD3_STATUS_OUTTOPAD_Field;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2;
      --  Read-only. output enable from selected peripheral, before register
      --  override is applied
      OEFROMPERI     : GPIO_QSPI_SD3_STATUS_OEFROMPERI_Field;
      --  Read-only. output enable to pad after register override is applied
      OETOPAD        : GPIO_QSPI_SD3_STATUS_OETOPAD_Field;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3;
      --  Read-only. input signal from pad, before override is applied
      INFROMPAD      : GPIO_QSPI_SD3_STATUS_INFROMPAD_Field;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit;
      --  Read-only. input signal to peripheral, after override is applied
      INTOPERI       : GPIO_QSPI_SD3_STATUS_INTOPERI_Field;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4;
      --  Read-only. interrupt from pad before override is applied
      IRQFROMPAD     : GPIO_QSPI_SD3_STATUS_IRQFROMPAD_Field;
      --  unspecified
      Reserved_25_25 : Interfaces.Bit_Types.Bit;
      --  Read-only. interrupt to processors, after override is applied
      IRQTOPROC      : GPIO_QSPI_SD3_STATUS_IRQTOPROC_Field;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_QSPI_SD3_STATUS_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      OUTFROMPERI    at 0 range 8 .. 8;
      OUTTOPAD       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      OEFROMPERI     at 0 range 12 .. 12;
      OETOPAD        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      INFROMPAD      at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      INTOPERI       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      IRQFROMPAD     at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      IRQTOPROC      at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  0-31 -> selects pin function according to the gpio table\n 31 == NULL
   type GPIO_QSPI_SD3_CTRL_FUNCSEL_Field is
     (XIP_SD3,
      SIO_35,
      NULL_k)
     with Size => 5;
   for GPIO_QSPI_SD3_CTRL_FUNCSEL_Field use
     (XIP_SD3 => 0,
      SIO_35 => 5,
      NULL_k => 31);

   type GPIO_QSPI_SD3_CTRL_OUTOVER_Field is
     (--  drive output from peripheral signal selected by funcsel
      Normal,
      --  drive output from inverse of peripheral signal selected by funcsel
      Invert,
      --  drive output low
      Low,
      --  drive output high
      High)
     with Size => 2;
   for GPIO_QSPI_SD3_CTRL_OUTOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   type GPIO_QSPI_SD3_CTRL_OEOVER_Field is
     (--  drive output enable from peripheral signal selected by funcsel
      Normal,
      --  drive output enable from inverse of peripheral signal selected by funcsel
      Invert,
      --  disable output
      Disable,
      --  enable output
      Enable)
     with Size => 2;
   for GPIO_QSPI_SD3_CTRL_OEOVER_Field use
     (Normal => 0,
      Invert => 1,
      Disable => 2,
      Enable => 3);

   type GPIO_QSPI_SD3_CTRL_INOVER_Field is
     (--  don't invert the peri input
      Normal,
      --  invert the peri input
      Invert,
      --  drive peri input low
      Low,
      --  drive peri input high
      High)
     with Size => 2;
   for GPIO_QSPI_SD3_CTRL_INOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   type GPIO_QSPI_SD3_CTRL_IRQOVER_Field is
     (--  don't invert the interrupt
      Normal,
      --  invert the interrupt
      Invert,
      --  drive interrupt low
      Low,
      --  drive interrupt high
      High)
     with Size => 2;
   for GPIO_QSPI_SD3_CTRL_IRQOVER_Field use
     (Normal => 0,
      Invert => 1,
      Low => 2,
      High => 3);

   --  GPIO control including function select and overrides.
   type GPIO_QSPI_SD3_CTRL_Register is record
      --  0-31 -> selects pin function according to the gpio table\n 31 == NULL
      FUNCSEL        : GPIO_QSPI_SD3_CTRL_FUNCSEL_Field :=
                        Interfaces.RP.IO_QSPI.NULL_k;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      OUTOVER        : GPIO_QSPI_SD3_CTRL_OUTOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      OEOVER         : GPIO_QSPI_SD3_CTRL_OEOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      INOVER         : GPIO_QSPI_SD3_CTRL_INOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_18_27 : Interfaces.Bit_Types.UInt10 := 16#0#;
      IRQOVER        : GPIO_QSPI_SD3_CTRL_IRQOVER_Field :=
                        Interfaces.RP.IO_QSPI.Normal;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_QSPI_SD3_CTRL_Register use record
      FUNCSEL        at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OUTOVER        at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      OEOVER         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      INOVER         at 0 range 16 .. 17;
      Reserved_18_27 at 0 range 18 .. 27;
      IRQOVER        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype INTR_GPIO_QSPI_SCLK_LEVEL_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SCLK_LEVEL_HIGH_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SCLK_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SCLK_EDGE_HIGH_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SS_LEVEL_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SS_LEVEL_HIGH_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SS_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SS_EDGE_HIGH_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SD0_LEVEL_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SD0_LEVEL_HIGH_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SD0_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SD0_EDGE_HIGH_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SD1_LEVEL_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SD1_LEVEL_HIGH_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SD1_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SD1_EDGE_HIGH_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SD2_LEVEL_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SD2_LEVEL_HIGH_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SD2_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SD2_EDGE_HIGH_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SD3_LEVEL_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SD3_LEVEL_HIGH_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SD3_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype INTR_GPIO_QSPI_SD3_EDGE_HIGH_Field is Interfaces.Bit_Types.Bit;

   --  Raw Interrupts
   type INTR_Register is record
      --  Read-only.
      GPIO_QSPI_SCLK_LEVEL_LOW  : INTR_GPIO_QSPI_SCLK_LEVEL_LOW_Field :=
                                   16#0#;
      --  Read-only.
      GPIO_QSPI_SCLK_LEVEL_HIGH : INTR_GPIO_QSPI_SCLK_LEVEL_HIGH_Field :=
                                   16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field.
      GPIO_QSPI_SCLK_EDGE_LOW   : INTR_GPIO_QSPI_SCLK_EDGE_LOW_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field.
      GPIO_QSPI_SCLK_EDGE_HIGH  : INTR_GPIO_QSPI_SCLK_EDGE_HIGH_Field :=
                                   16#0#;
      --  Read-only.
      GPIO_QSPI_SS_LEVEL_LOW    : INTR_GPIO_QSPI_SS_LEVEL_LOW_Field := 16#0#;
      --  Read-only.
      GPIO_QSPI_SS_LEVEL_HIGH   : INTR_GPIO_QSPI_SS_LEVEL_HIGH_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field.
      GPIO_QSPI_SS_EDGE_LOW     : INTR_GPIO_QSPI_SS_EDGE_LOW_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field.
      GPIO_QSPI_SS_EDGE_HIGH    : INTR_GPIO_QSPI_SS_EDGE_HIGH_Field := 16#0#;
      --  Read-only.
      GPIO_QSPI_SD0_LEVEL_LOW   : INTR_GPIO_QSPI_SD0_LEVEL_LOW_Field := 16#0#;
      --  Read-only.
      GPIO_QSPI_SD0_LEVEL_HIGH  : INTR_GPIO_QSPI_SD0_LEVEL_HIGH_Field :=
                                   16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field.
      GPIO_QSPI_SD0_EDGE_LOW    : INTR_GPIO_QSPI_SD0_EDGE_LOW_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field.
      GPIO_QSPI_SD0_EDGE_HIGH   : INTR_GPIO_QSPI_SD0_EDGE_HIGH_Field := 16#0#;
      --  Read-only.
      GPIO_QSPI_SD1_LEVEL_LOW   : INTR_GPIO_QSPI_SD1_LEVEL_LOW_Field := 16#0#;
      --  Read-only.
      GPIO_QSPI_SD1_LEVEL_HIGH  : INTR_GPIO_QSPI_SD1_LEVEL_HIGH_Field :=
                                   16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field.
      GPIO_QSPI_SD1_EDGE_LOW    : INTR_GPIO_QSPI_SD1_EDGE_LOW_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field.
      GPIO_QSPI_SD1_EDGE_HIGH   : INTR_GPIO_QSPI_SD1_EDGE_HIGH_Field := 16#0#;
      --  Read-only.
      GPIO_QSPI_SD2_LEVEL_LOW   : INTR_GPIO_QSPI_SD2_LEVEL_LOW_Field := 16#0#;
      --  Read-only.
      GPIO_QSPI_SD2_LEVEL_HIGH  : INTR_GPIO_QSPI_SD2_LEVEL_HIGH_Field :=
                                   16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field.
      GPIO_QSPI_SD2_EDGE_LOW    : INTR_GPIO_QSPI_SD2_EDGE_LOW_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field.
      GPIO_QSPI_SD2_EDGE_HIGH   : INTR_GPIO_QSPI_SD2_EDGE_HIGH_Field := 16#0#;
      --  Read-only.
      GPIO_QSPI_SD3_LEVEL_LOW   : INTR_GPIO_QSPI_SD3_LEVEL_LOW_Field := 16#0#;
      --  Read-only.
      GPIO_QSPI_SD3_LEVEL_HIGH  : INTR_GPIO_QSPI_SD3_LEVEL_HIGH_Field :=
                                   16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field.
      GPIO_QSPI_SD3_EDGE_LOW    : INTR_GPIO_QSPI_SD3_EDGE_LOW_Field := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field.
      GPIO_QSPI_SD3_EDGE_HIGH   : INTR_GPIO_QSPI_SD3_EDGE_HIGH_Field := 16#0#;
      --  unspecified
      Reserved_24_31            : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTR_Register use record
      GPIO_QSPI_SCLK_LEVEL_LOW  at 0 range 0 .. 0;
      GPIO_QSPI_SCLK_LEVEL_HIGH at 0 range 1 .. 1;
      GPIO_QSPI_SCLK_EDGE_LOW   at 0 range 2 .. 2;
      GPIO_QSPI_SCLK_EDGE_HIGH  at 0 range 3 .. 3;
      GPIO_QSPI_SS_LEVEL_LOW    at 0 range 4 .. 4;
      GPIO_QSPI_SS_LEVEL_HIGH   at 0 range 5 .. 5;
      GPIO_QSPI_SS_EDGE_LOW     at 0 range 6 .. 6;
      GPIO_QSPI_SS_EDGE_HIGH    at 0 range 7 .. 7;
      GPIO_QSPI_SD0_LEVEL_LOW   at 0 range 8 .. 8;
      GPIO_QSPI_SD0_LEVEL_HIGH  at 0 range 9 .. 9;
      GPIO_QSPI_SD0_EDGE_LOW    at 0 range 10 .. 10;
      GPIO_QSPI_SD0_EDGE_HIGH   at 0 range 11 .. 11;
      GPIO_QSPI_SD1_LEVEL_LOW   at 0 range 12 .. 12;
      GPIO_QSPI_SD1_LEVEL_HIGH  at 0 range 13 .. 13;
      GPIO_QSPI_SD1_EDGE_LOW    at 0 range 14 .. 14;
      GPIO_QSPI_SD1_EDGE_HIGH   at 0 range 15 .. 15;
      GPIO_QSPI_SD2_LEVEL_LOW   at 0 range 16 .. 16;
      GPIO_QSPI_SD2_LEVEL_HIGH  at 0 range 17 .. 17;
      GPIO_QSPI_SD2_EDGE_LOW    at 0 range 18 .. 18;
      GPIO_QSPI_SD2_EDGE_HIGH   at 0 range 19 .. 19;
      GPIO_QSPI_SD3_LEVEL_LOW   at 0 range 20 .. 20;
      GPIO_QSPI_SD3_LEVEL_HIGH  at 0 range 21 .. 21;
      GPIO_QSPI_SD3_EDGE_LOW    at 0 range 22 .. 22;
      GPIO_QSPI_SD3_EDGE_HIGH   at 0 range 23 .. 23;
      Reserved_24_31            at 0 range 24 .. 31;
   end record;

   subtype PROC0_INTE_GPIO_QSPI_SCLK_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SCLK_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SCLK_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SCLK_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SS_LEVEL_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SS_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SS_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SS_EDGE_HIGH_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SD0_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SD0_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SD0_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SD0_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SD1_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SD1_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SD1_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SD1_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SD2_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SD2_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SD2_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SD2_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SD3_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SD3_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SD3_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTE_GPIO_QSPI_SD3_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;

   --  Interrupt Enable for proc0
   type PROC0_INTE_Register is record
      GPIO_QSPI_SCLK_LEVEL_LOW  : PROC0_INTE_GPIO_QSPI_SCLK_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_LEVEL_HIGH : PROC0_INTE_GPIO_QSPI_SCLK_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_EDGE_LOW   : PROC0_INTE_GPIO_QSPI_SCLK_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_EDGE_HIGH  : PROC0_INTE_GPIO_QSPI_SCLK_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SS_LEVEL_LOW    : PROC0_INTE_GPIO_QSPI_SS_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SS_LEVEL_HIGH   : PROC0_INTE_GPIO_QSPI_SS_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SS_EDGE_LOW     : PROC0_INTE_GPIO_QSPI_SS_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SS_EDGE_HIGH    : PROC0_INTE_GPIO_QSPI_SS_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_LEVEL_LOW   : PROC0_INTE_GPIO_QSPI_SD0_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_LEVEL_HIGH  : PROC0_INTE_GPIO_QSPI_SD0_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_EDGE_LOW    : PROC0_INTE_GPIO_QSPI_SD0_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_EDGE_HIGH   : PROC0_INTE_GPIO_QSPI_SD0_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_LEVEL_LOW   : PROC0_INTE_GPIO_QSPI_SD1_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_LEVEL_HIGH  : PROC0_INTE_GPIO_QSPI_SD1_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_EDGE_LOW    : PROC0_INTE_GPIO_QSPI_SD1_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_EDGE_HIGH   : PROC0_INTE_GPIO_QSPI_SD1_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_LEVEL_LOW   : PROC0_INTE_GPIO_QSPI_SD2_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_LEVEL_HIGH  : PROC0_INTE_GPIO_QSPI_SD2_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_EDGE_LOW    : PROC0_INTE_GPIO_QSPI_SD2_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_EDGE_HIGH   : PROC0_INTE_GPIO_QSPI_SD2_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_LEVEL_LOW   : PROC0_INTE_GPIO_QSPI_SD3_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_LEVEL_HIGH  : PROC0_INTE_GPIO_QSPI_SD3_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_EDGE_LOW    : PROC0_INTE_GPIO_QSPI_SD3_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_EDGE_HIGH   : PROC0_INTE_GPIO_QSPI_SD3_EDGE_HIGH_Field :=
                                   16#0#;
      --  unspecified
      Reserved_24_31            : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PROC0_INTE_Register use record
      GPIO_QSPI_SCLK_LEVEL_LOW  at 0 range 0 .. 0;
      GPIO_QSPI_SCLK_LEVEL_HIGH at 0 range 1 .. 1;
      GPIO_QSPI_SCLK_EDGE_LOW   at 0 range 2 .. 2;
      GPIO_QSPI_SCLK_EDGE_HIGH  at 0 range 3 .. 3;
      GPIO_QSPI_SS_LEVEL_LOW    at 0 range 4 .. 4;
      GPIO_QSPI_SS_LEVEL_HIGH   at 0 range 5 .. 5;
      GPIO_QSPI_SS_EDGE_LOW     at 0 range 6 .. 6;
      GPIO_QSPI_SS_EDGE_HIGH    at 0 range 7 .. 7;
      GPIO_QSPI_SD0_LEVEL_LOW   at 0 range 8 .. 8;
      GPIO_QSPI_SD0_LEVEL_HIGH  at 0 range 9 .. 9;
      GPIO_QSPI_SD0_EDGE_LOW    at 0 range 10 .. 10;
      GPIO_QSPI_SD0_EDGE_HIGH   at 0 range 11 .. 11;
      GPIO_QSPI_SD1_LEVEL_LOW   at 0 range 12 .. 12;
      GPIO_QSPI_SD1_LEVEL_HIGH  at 0 range 13 .. 13;
      GPIO_QSPI_SD1_EDGE_LOW    at 0 range 14 .. 14;
      GPIO_QSPI_SD1_EDGE_HIGH   at 0 range 15 .. 15;
      GPIO_QSPI_SD2_LEVEL_LOW   at 0 range 16 .. 16;
      GPIO_QSPI_SD2_LEVEL_HIGH  at 0 range 17 .. 17;
      GPIO_QSPI_SD2_EDGE_LOW    at 0 range 18 .. 18;
      GPIO_QSPI_SD2_EDGE_HIGH   at 0 range 19 .. 19;
      GPIO_QSPI_SD3_LEVEL_LOW   at 0 range 20 .. 20;
      GPIO_QSPI_SD3_LEVEL_HIGH  at 0 range 21 .. 21;
      GPIO_QSPI_SD3_EDGE_LOW    at 0 range 22 .. 22;
      GPIO_QSPI_SD3_EDGE_HIGH   at 0 range 23 .. 23;
      Reserved_24_31            at 0 range 24 .. 31;
   end record;

   subtype PROC0_INTF_GPIO_QSPI_SCLK_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SCLK_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SCLK_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SCLK_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SS_LEVEL_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SS_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SS_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SS_EDGE_HIGH_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SD0_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SD0_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SD0_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SD0_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SD1_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SD1_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SD1_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SD1_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SD2_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SD2_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SD2_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SD2_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SD3_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SD3_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SD3_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTF_GPIO_QSPI_SD3_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;

   --  Interrupt Force for proc0
   type PROC0_INTF_Register is record
      GPIO_QSPI_SCLK_LEVEL_LOW  : PROC0_INTF_GPIO_QSPI_SCLK_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_LEVEL_HIGH : PROC0_INTF_GPIO_QSPI_SCLK_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_EDGE_LOW   : PROC0_INTF_GPIO_QSPI_SCLK_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_EDGE_HIGH  : PROC0_INTF_GPIO_QSPI_SCLK_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SS_LEVEL_LOW    : PROC0_INTF_GPIO_QSPI_SS_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SS_LEVEL_HIGH   : PROC0_INTF_GPIO_QSPI_SS_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SS_EDGE_LOW     : PROC0_INTF_GPIO_QSPI_SS_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SS_EDGE_HIGH    : PROC0_INTF_GPIO_QSPI_SS_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_LEVEL_LOW   : PROC0_INTF_GPIO_QSPI_SD0_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_LEVEL_HIGH  : PROC0_INTF_GPIO_QSPI_SD0_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_EDGE_LOW    : PROC0_INTF_GPIO_QSPI_SD0_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_EDGE_HIGH   : PROC0_INTF_GPIO_QSPI_SD0_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_LEVEL_LOW   : PROC0_INTF_GPIO_QSPI_SD1_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_LEVEL_HIGH  : PROC0_INTF_GPIO_QSPI_SD1_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_EDGE_LOW    : PROC0_INTF_GPIO_QSPI_SD1_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_EDGE_HIGH   : PROC0_INTF_GPIO_QSPI_SD1_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_LEVEL_LOW   : PROC0_INTF_GPIO_QSPI_SD2_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_LEVEL_HIGH  : PROC0_INTF_GPIO_QSPI_SD2_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_EDGE_LOW    : PROC0_INTF_GPIO_QSPI_SD2_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_EDGE_HIGH   : PROC0_INTF_GPIO_QSPI_SD2_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_LEVEL_LOW   : PROC0_INTF_GPIO_QSPI_SD3_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_LEVEL_HIGH  : PROC0_INTF_GPIO_QSPI_SD3_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_EDGE_LOW    : PROC0_INTF_GPIO_QSPI_SD3_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_EDGE_HIGH   : PROC0_INTF_GPIO_QSPI_SD3_EDGE_HIGH_Field :=
                                   16#0#;
      --  unspecified
      Reserved_24_31            : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PROC0_INTF_Register use record
      GPIO_QSPI_SCLK_LEVEL_LOW  at 0 range 0 .. 0;
      GPIO_QSPI_SCLK_LEVEL_HIGH at 0 range 1 .. 1;
      GPIO_QSPI_SCLK_EDGE_LOW   at 0 range 2 .. 2;
      GPIO_QSPI_SCLK_EDGE_HIGH  at 0 range 3 .. 3;
      GPIO_QSPI_SS_LEVEL_LOW    at 0 range 4 .. 4;
      GPIO_QSPI_SS_LEVEL_HIGH   at 0 range 5 .. 5;
      GPIO_QSPI_SS_EDGE_LOW     at 0 range 6 .. 6;
      GPIO_QSPI_SS_EDGE_HIGH    at 0 range 7 .. 7;
      GPIO_QSPI_SD0_LEVEL_LOW   at 0 range 8 .. 8;
      GPIO_QSPI_SD0_LEVEL_HIGH  at 0 range 9 .. 9;
      GPIO_QSPI_SD0_EDGE_LOW    at 0 range 10 .. 10;
      GPIO_QSPI_SD0_EDGE_HIGH   at 0 range 11 .. 11;
      GPIO_QSPI_SD1_LEVEL_LOW   at 0 range 12 .. 12;
      GPIO_QSPI_SD1_LEVEL_HIGH  at 0 range 13 .. 13;
      GPIO_QSPI_SD1_EDGE_LOW    at 0 range 14 .. 14;
      GPIO_QSPI_SD1_EDGE_HIGH   at 0 range 15 .. 15;
      GPIO_QSPI_SD2_LEVEL_LOW   at 0 range 16 .. 16;
      GPIO_QSPI_SD2_LEVEL_HIGH  at 0 range 17 .. 17;
      GPIO_QSPI_SD2_EDGE_LOW    at 0 range 18 .. 18;
      GPIO_QSPI_SD2_EDGE_HIGH   at 0 range 19 .. 19;
      GPIO_QSPI_SD3_LEVEL_LOW   at 0 range 20 .. 20;
      GPIO_QSPI_SD3_LEVEL_HIGH  at 0 range 21 .. 21;
      GPIO_QSPI_SD3_EDGE_LOW    at 0 range 22 .. 22;
      GPIO_QSPI_SD3_EDGE_HIGH   at 0 range 23 .. 23;
      Reserved_24_31            at 0 range 24 .. 31;
   end record;

   subtype PROC0_INTS_GPIO_QSPI_SCLK_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SCLK_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SCLK_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SCLK_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SS_LEVEL_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SS_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SS_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SS_EDGE_HIGH_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SD0_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SD0_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SD0_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SD0_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SD1_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SD1_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SD1_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SD1_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SD2_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SD2_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SD2_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SD2_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SD3_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SD3_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SD3_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC0_INTS_GPIO_QSPI_SD3_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;

   --  Interrupt status after masking & forcing for proc0
   type PROC0_INTS_Register is record
      --  Read-only.
      GPIO_QSPI_SCLK_LEVEL_LOW  : PROC0_INTS_GPIO_QSPI_SCLK_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SCLK_LEVEL_HIGH : PROC0_INTS_GPIO_QSPI_SCLK_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SCLK_EDGE_LOW   : PROC0_INTS_GPIO_QSPI_SCLK_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SCLK_EDGE_HIGH  : PROC0_INTS_GPIO_QSPI_SCLK_EDGE_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SS_LEVEL_LOW    : PROC0_INTS_GPIO_QSPI_SS_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SS_LEVEL_HIGH   : PROC0_INTS_GPIO_QSPI_SS_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SS_EDGE_LOW     : PROC0_INTS_GPIO_QSPI_SS_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SS_EDGE_HIGH    : PROC0_INTS_GPIO_QSPI_SS_EDGE_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD0_LEVEL_LOW   : PROC0_INTS_GPIO_QSPI_SD0_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD0_LEVEL_HIGH  : PROC0_INTS_GPIO_QSPI_SD0_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD0_EDGE_LOW    : PROC0_INTS_GPIO_QSPI_SD0_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD0_EDGE_HIGH   : PROC0_INTS_GPIO_QSPI_SD0_EDGE_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD1_LEVEL_LOW   : PROC0_INTS_GPIO_QSPI_SD1_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD1_LEVEL_HIGH  : PROC0_INTS_GPIO_QSPI_SD1_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD1_EDGE_LOW    : PROC0_INTS_GPIO_QSPI_SD1_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD1_EDGE_HIGH   : PROC0_INTS_GPIO_QSPI_SD1_EDGE_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD2_LEVEL_LOW   : PROC0_INTS_GPIO_QSPI_SD2_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD2_LEVEL_HIGH  : PROC0_INTS_GPIO_QSPI_SD2_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD2_EDGE_LOW    : PROC0_INTS_GPIO_QSPI_SD2_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD2_EDGE_HIGH   : PROC0_INTS_GPIO_QSPI_SD2_EDGE_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD3_LEVEL_LOW   : PROC0_INTS_GPIO_QSPI_SD3_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD3_LEVEL_HIGH  : PROC0_INTS_GPIO_QSPI_SD3_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD3_EDGE_LOW    : PROC0_INTS_GPIO_QSPI_SD3_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD3_EDGE_HIGH   : PROC0_INTS_GPIO_QSPI_SD3_EDGE_HIGH_Field;
      --  unspecified
      Reserved_24_31            : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PROC0_INTS_Register use record
      GPIO_QSPI_SCLK_LEVEL_LOW  at 0 range 0 .. 0;
      GPIO_QSPI_SCLK_LEVEL_HIGH at 0 range 1 .. 1;
      GPIO_QSPI_SCLK_EDGE_LOW   at 0 range 2 .. 2;
      GPIO_QSPI_SCLK_EDGE_HIGH  at 0 range 3 .. 3;
      GPIO_QSPI_SS_LEVEL_LOW    at 0 range 4 .. 4;
      GPIO_QSPI_SS_LEVEL_HIGH   at 0 range 5 .. 5;
      GPIO_QSPI_SS_EDGE_LOW     at 0 range 6 .. 6;
      GPIO_QSPI_SS_EDGE_HIGH    at 0 range 7 .. 7;
      GPIO_QSPI_SD0_LEVEL_LOW   at 0 range 8 .. 8;
      GPIO_QSPI_SD0_LEVEL_HIGH  at 0 range 9 .. 9;
      GPIO_QSPI_SD0_EDGE_LOW    at 0 range 10 .. 10;
      GPIO_QSPI_SD0_EDGE_HIGH   at 0 range 11 .. 11;
      GPIO_QSPI_SD1_LEVEL_LOW   at 0 range 12 .. 12;
      GPIO_QSPI_SD1_LEVEL_HIGH  at 0 range 13 .. 13;
      GPIO_QSPI_SD1_EDGE_LOW    at 0 range 14 .. 14;
      GPIO_QSPI_SD1_EDGE_HIGH   at 0 range 15 .. 15;
      GPIO_QSPI_SD2_LEVEL_LOW   at 0 range 16 .. 16;
      GPIO_QSPI_SD2_LEVEL_HIGH  at 0 range 17 .. 17;
      GPIO_QSPI_SD2_EDGE_LOW    at 0 range 18 .. 18;
      GPIO_QSPI_SD2_EDGE_HIGH   at 0 range 19 .. 19;
      GPIO_QSPI_SD3_LEVEL_LOW   at 0 range 20 .. 20;
      GPIO_QSPI_SD3_LEVEL_HIGH  at 0 range 21 .. 21;
      GPIO_QSPI_SD3_EDGE_LOW    at 0 range 22 .. 22;
      GPIO_QSPI_SD3_EDGE_HIGH   at 0 range 23 .. 23;
      Reserved_24_31            at 0 range 24 .. 31;
   end record;

   subtype PROC1_INTE_GPIO_QSPI_SCLK_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SCLK_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SCLK_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SCLK_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SS_LEVEL_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SS_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SS_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SS_EDGE_HIGH_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SD0_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SD0_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SD0_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SD0_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SD1_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SD1_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SD1_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SD1_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SD2_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SD2_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SD2_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SD2_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SD3_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SD3_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SD3_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTE_GPIO_QSPI_SD3_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;

   --  Interrupt Enable for proc1
   type PROC1_INTE_Register is record
      GPIO_QSPI_SCLK_LEVEL_LOW  : PROC1_INTE_GPIO_QSPI_SCLK_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_LEVEL_HIGH : PROC1_INTE_GPIO_QSPI_SCLK_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_EDGE_LOW   : PROC1_INTE_GPIO_QSPI_SCLK_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_EDGE_HIGH  : PROC1_INTE_GPIO_QSPI_SCLK_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SS_LEVEL_LOW    : PROC1_INTE_GPIO_QSPI_SS_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SS_LEVEL_HIGH   : PROC1_INTE_GPIO_QSPI_SS_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SS_EDGE_LOW     : PROC1_INTE_GPIO_QSPI_SS_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SS_EDGE_HIGH    : PROC1_INTE_GPIO_QSPI_SS_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_LEVEL_LOW   : PROC1_INTE_GPIO_QSPI_SD0_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_LEVEL_HIGH  : PROC1_INTE_GPIO_QSPI_SD0_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_EDGE_LOW    : PROC1_INTE_GPIO_QSPI_SD0_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_EDGE_HIGH   : PROC1_INTE_GPIO_QSPI_SD0_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_LEVEL_LOW   : PROC1_INTE_GPIO_QSPI_SD1_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_LEVEL_HIGH  : PROC1_INTE_GPIO_QSPI_SD1_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_EDGE_LOW    : PROC1_INTE_GPIO_QSPI_SD1_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_EDGE_HIGH   : PROC1_INTE_GPIO_QSPI_SD1_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_LEVEL_LOW   : PROC1_INTE_GPIO_QSPI_SD2_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_LEVEL_HIGH  : PROC1_INTE_GPIO_QSPI_SD2_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_EDGE_LOW    : PROC1_INTE_GPIO_QSPI_SD2_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_EDGE_HIGH   : PROC1_INTE_GPIO_QSPI_SD2_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_LEVEL_LOW   : PROC1_INTE_GPIO_QSPI_SD3_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_LEVEL_HIGH  : PROC1_INTE_GPIO_QSPI_SD3_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_EDGE_LOW    : PROC1_INTE_GPIO_QSPI_SD3_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_EDGE_HIGH   : PROC1_INTE_GPIO_QSPI_SD3_EDGE_HIGH_Field :=
                                   16#0#;
      --  unspecified
      Reserved_24_31            : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PROC1_INTE_Register use record
      GPIO_QSPI_SCLK_LEVEL_LOW  at 0 range 0 .. 0;
      GPIO_QSPI_SCLK_LEVEL_HIGH at 0 range 1 .. 1;
      GPIO_QSPI_SCLK_EDGE_LOW   at 0 range 2 .. 2;
      GPIO_QSPI_SCLK_EDGE_HIGH  at 0 range 3 .. 3;
      GPIO_QSPI_SS_LEVEL_LOW    at 0 range 4 .. 4;
      GPIO_QSPI_SS_LEVEL_HIGH   at 0 range 5 .. 5;
      GPIO_QSPI_SS_EDGE_LOW     at 0 range 6 .. 6;
      GPIO_QSPI_SS_EDGE_HIGH    at 0 range 7 .. 7;
      GPIO_QSPI_SD0_LEVEL_LOW   at 0 range 8 .. 8;
      GPIO_QSPI_SD0_LEVEL_HIGH  at 0 range 9 .. 9;
      GPIO_QSPI_SD0_EDGE_LOW    at 0 range 10 .. 10;
      GPIO_QSPI_SD0_EDGE_HIGH   at 0 range 11 .. 11;
      GPIO_QSPI_SD1_LEVEL_LOW   at 0 range 12 .. 12;
      GPIO_QSPI_SD1_LEVEL_HIGH  at 0 range 13 .. 13;
      GPIO_QSPI_SD1_EDGE_LOW    at 0 range 14 .. 14;
      GPIO_QSPI_SD1_EDGE_HIGH   at 0 range 15 .. 15;
      GPIO_QSPI_SD2_LEVEL_LOW   at 0 range 16 .. 16;
      GPIO_QSPI_SD2_LEVEL_HIGH  at 0 range 17 .. 17;
      GPIO_QSPI_SD2_EDGE_LOW    at 0 range 18 .. 18;
      GPIO_QSPI_SD2_EDGE_HIGH   at 0 range 19 .. 19;
      GPIO_QSPI_SD3_LEVEL_LOW   at 0 range 20 .. 20;
      GPIO_QSPI_SD3_LEVEL_HIGH  at 0 range 21 .. 21;
      GPIO_QSPI_SD3_EDGE_LOW    at 0 range 22 .. 22;
      GPIO_QSPI_SD3_EDGE_HIGH   at 0 range 23 .. 23;
      Reserved_24_31            at 0 range 24 .. 31;
   end record;

   subtype PROC1_INTF_GPIO_QSPI_SCLK_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SCLK_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SCLK_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SCLK_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SS_LEVEL_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SS_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SS_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SS_EDGE_HIGH_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SD0_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SD0_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SD0_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SD0_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SD1_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SD1_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SD1_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SD1_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SD2_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SD2_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SD2_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SD2_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SD3_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SD3_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SD3_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTF_GPIO_QSPI_SD3_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;

   --  Interrupt Force for proc1
   type PROC1_INTF_Register is record
      GPIO_QSPI_SCLK_LEVEL_LOW  : PROC1_INTF_GPIO_QSPI_SCLK_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_LEVEL_HIGH : PROC1_INTF_GPIO_QSPI_SCLK_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_EDGE_LOW   : PROC1_INTF_GPIO_QSPI_SCLK_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_EDGE_HIGH  : PROC1_INTF_GPIO_QSPI_SCLK_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SS_LEVEL_LOW    : PROC1_INTF_GPIO_QSPI_SS_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SS_LEVEL_HIGH   : PROC1_INTF_GPIO_QSPI_SS_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SS_EDGE_LOW     : PROC1_INTF_GPIO_QSPI_SS_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SS_EDGE_HIGH    : PROC1_INTF_GPIO_QSPI_SS_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_LEVEL_LOW   : PROC1_INTF_GPIO_QSPI_SD0_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_LEVEL_HIGH  : PROC1_INTF_GPIO_QSPI_SD0_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_EDGE_LOW    : PROC1_INTF_GPIO_QSPI_SD0_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_EDGE_HIGH   : PROC1_INTF_GPIO_QSPI_SD0_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_LEVEL_LOW   : PROC1_INTF_GPIO_QSPI_SD1_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_LEVEL_HIGH  : PROC1_INTF_GPIO_QSPI_SD1_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_EDGE_LOW    : PROC1_INTF_GPIO_QSPI_SD1_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_EDGE_HIGH   : PROC1_INTF_GPIO_QSPI_SD1_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_LEVEL_LOW   : PROC1_INTF_GPIO_QSPI_SD2_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_LEVEL_HIGH  : PROC1_INTF_GPIO_QSPI_SD2_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_EDGE_LOW    : PROC1_INTF_GPIO_QSPI_SD2_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_EDGE_HIGH   : PROC1_INTF_GPIO_QSPI_SD2_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_LEVEL_LOW   : PROC1_INTF_GPIO_QSPI_SD3_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_LEVEL_HIGH  : PROC1_INTF_GPIO_QSPI_SD3_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_EDGE_LOW    : PROC1_INTF_GPIO_QSPI_SD3_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_EDGE_HIGH   : PROC1_INTF_GPIO_QSPI_SD3_EDGE_HIGH_Field :=
                                   16#0#;
      --  unspecified
      Reserved_24_31            : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PROC1_INTF_Register use record
      GPIO_QSPI_SCLK_LEVEL_LOW  at 0 range 0 .. 0;
      GPIO_QSPI_SCLK_LEVEL_HIGH at 0 range 1 .. 1;
      GPIO_QSPI_SCLK_EDGE_LOW   at 0 range 2 .. 2;
      GPIO_QSPI_SCLK_EDGE_HIGH  at 0 range 3 .. 3;
      GPIO_QSPI_SS_LEVEL_LOW    at 0 range 4 .. 4;
      GPIO_QSPI_SS_LEVEL_HIGH   at 0 range 5 .. 5;
      GPIO_QSPI_SS_EDGE_LOW     at 0 range 6 .. 6;
      GPIO_QSPI_SS_EDGE_HIGH    at 0 range 7 .. 7;
      GPIO_QSPI_SD0_LEVEL_LOW   at 0 range 8 .. 8;
      GPIO_QSPI_SD0_LEVEL_HIGH  at 0 range 9 .. 9;
      GPIO_QSPI_SD0_EDGE_LOW    at 0 range 10 .. 10;
      GPIO_QSPI_SD0_EDGE_HIGH   at 0 range 11 .. 11;
      GPIO_QSPI_SD1_LEVEL_LOW   at 0 range 12 .. 12;
      GPIO_QSPI_SD1_LEVEL_HIGH  at 0 range 13 .. 13;
      GPIO_QSPI_SD1_EDGE_LOW    at 0 range 14 .. 14;
      GPIO_QSPI_SD1_EDGE_HIGH   at 0 range 15 .. 15;
      GPIO_QSPI_SD2_LEVEL_LOW   at 0 range 16 .. 16;
      GPIO_QSPI_SD2_LEVEL_HIGH  at 0 range 17 .. 17;
      GPIO_QSPI_SD2_EDGE_LOW    at 0 range 18 .. 18;
      GPIO_QSPI_SD2_EDGE_HIGH   at 0 range 19 .. 19;
      GPIO_QSPI_SD3_LEVEL_LOW   at 0 range 20 .. 20;
      GPIO_QSPI_SD3_LEVEL_HIGH  at 0 range 21 .. 21;
      GPIO_QSPI_SD3_EDGE_LOW    at 0 range 22 .. 22;
      GPIO_QSPI_SD3_EDGE_HIGH   at 0 range 23 .. 23;
      Reserved_24_31            at 0 range 24 .. 31;
   end record;

   subtype PROC1_INTS_GPIO_QSPI_SCLK_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SCLK_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SCLK_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SCLK_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SS_LEVEL_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SS_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SS_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SS_EDGE_HIGH_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SD0_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SD0_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SD0_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SD0_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SD1_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SD1_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SD1_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SD1_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SD2_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SD2_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SD2_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SD2_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SD3_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SD3_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SD3_EDGE_LOW_Field is Interfaces.Bit_Types.Bit;
   subtype PROC1_INTS_GPIO_QSPI_SD3_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;

   --  Interrupt status after masking & forcing for proc1
   type PROC1_INTS_Register is record
      --  Read-only.
      GPIO_QSPI_SCLK_LEVEL_LOW  : PROC1_INTS_GPIO_QSPI_SCLK_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SCLK_LEVEL_HIGH : PROC1_INTS_GPIO_QSPI_SCLK_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SCLK_EDGE_LOW   : PROC1_INTS_GPIO_QSPI_SCLK_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SCLK_EDGE_HIGH  : PROC1_INTS_GPIO_QSPI_SCLK_EDGE_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SS_LEVEL_LOW    : PROC1_INTS_GPIO_QSPI_SS_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SS_LEVEL_HIGH   : PROC1_INTS_GPIO_QSPI_SS_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SS_EDGE_LOW     : PROC1_INTS_GPIO_QSPI_SS_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SS_EDGE_HIGH    : PROC1_INTS_GPIO_QSPI_SS_EDGE_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD0_LEVEL_LOW   : PROC1_INTS_GPIO_QSPI_SD0_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD0_LEVEL_HIGH  : PROC1_INTS_GPIO_QSPI_SD0_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD0_EDGE_LOW    : PROC1_INTS_GPIO_QSPI_SD0_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD0_EDGE_HIGH   : PROC1_INTS_GPIO_QSPI_SD0_EDGE_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD1_LEVEL_LOW   : PROC1_INTS_GPIO_QSPI_SD1_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD1_LEVEL_HIGH  : PROC1_INTS_GPIO_QSPI_SD1_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD1_EDGE_LOW    : PROC1_INTS_GPIO_QSPI_SD1_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD1_EDGE_HIGH   : PROC1_INTS_GPIO_QSPI_SD1_EDGE_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD2_LEVEL_LOW   : PROC1_INTS_GPIO_QSPI_SD2_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD2_LEVEL_HIGH  : PROC1_INTS_GPIO_QSPI_SD2_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD2_EDGE_LOW    : PROC1_INTS_GPIO_QSPI_SD2_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD2_EDGE_HIGH   : PROC1_INTS_GPIO_QSPI_SD2_EDGE_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD3_LEVEL_LOW   : PROC1_INTS_GPIO_QSPI_SD3_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD3_LEVEL_HIGH  : PROC1_INTS_GPIO_QSPI_SD3_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD3_EDGE_LOW    : PROC1_INTS_GPIO_QSPI_SD3_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD3_EDGE_HIGH   : PROC1_INTS_GPIO_QSPI_SD3_EDGE_HIGH_Field;
      --  unspecified
      Reserved_24_31            : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PROC1_INTS_Register use record
      GPIO_QSPI_SCLK_LEVEL_LOW  at 0 range 0 .. 0;
      GPIO_QSPI_SCLK_LEVEL_HIGH at 0 range 1 .. 1;
      GPIO_QSPI_SCLK_EDGE_LOW   at 0 range 2 .. 2;
      GPIO_QSPI_SCLK_EDGE_HIGH  at 0 range 3 .. 3;
      GPIO_QSPI_SS_LEVEL_LOW    at 0 range 4 .. 4;
      GPIO_QSPI_SS_LEVEL_HIGH   at 0 range 5 .. 5;
      GPIO_QSPI_SS_EDGE_LOW     at 0 range 6 .. 6;
      GPIO_QSPI_SS_EDGE_HIGH    at 0 range 7 .. 7;
      GPIO_QSPI_SD0_LEVEL_LOW   at 0 range 8 .. 8;
      GPIO_QSPI_SD0_LEVEL_HIGH  at 0 range 9 .. 9;
      GPIO_QSPI_SD0_EDGE_LOW    at 0 range 10 .. 10;
      GPIO_QSPI_SD0_EDGE_HIGH   at 0 range 11 .. 11;
      GPIO_QSPI_SD1_LEVEL_LOW   at 0 range 12 .. 12;
      GPIO_QSPI_SD1_LEVEL_HIGH  at 0 range 13 .. 13;
      GPIO_QSPI_SD1_EDGE_LOW    at 0 range 14 .. 14;
      GPIO_QSPI_SD1_EDGE_HIGH   at 0 range 15 .. 15;
      GPIO_QSPI_SD2_LEVEL_LOW   at 0 range 16 .. 16;
      GPIO_QSPI_SD2_LEVEL_HIGH  at 0 range 17 .. 17;
      GPIO_QSPI_SD2_EDGE_LOW    at 0 range 18 .. 18;
      GPIO_QSPI_SD2_EDGE_HIGH   at 0 range 19 .. 19;
      GPIO_QSPI_SD3_LEVEL_LOW   at 0 range 20 .. 20;
      GPIO_QSPI_SD3_LEVEL_HIGH  at 0 range 21 .. 21;
      GPIO_QSPI_SD3_EDGE_LOW    at 0 range 22 .. 22;
      GPIO_QSPI_SD3_EDGE_HIGH   at 0 range 23 .. 23;
      Reserved_24_31            at 0 range 24 .. 31;
   end record;

   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SCLK_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SCLK_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SCLK_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SCLK_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SS_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SS_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SS_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SS_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SD0_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SD0_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SD0_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SD0_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SD1_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SD1_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SD1_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SD1_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SD2_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SD2_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SD2_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SD2_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SD3_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SD3_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SD3_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTE_GPIO_QSPI_SD3_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;

   --  Interrupt Enable for dormant_wake
   type DORMANT_WAKE_INTE_Register is record
      GPIO_QSPI_SCLK_LEVEL_LOW  : DORMANT_WAKE_INTE_GPIO_QSPI_SCLK_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_LEVEL_HIGH : DORMANT_WAKE_INTE_GPIO_QSPI_SCLK_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_EDGE_LOW   : DORMANT_WAKE_INTE_GPIO_QSPI_SCLK_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_EDGE_HIGH  : DORMANT_WAKE_INTE_GPIO_QSPI_SCLK_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SS_LEVEL_LOW    : DORMANT_WAKE_INTE_GPIO_QSPI_SS_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SS_LEVEL_HIGH   : DORMANT_WAKE_INTE_GPIO_QSPI_SS_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SS_EDGE_LOW     : DORMANT_WAKE_INTE_GPIO_QSPI_SS_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SS_EDGE_HIGH    : DORMANT_WAKE_INTE_GPIO_QSPI_SS_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_LEVEL_LOW   : DORMANT_WAKE_INTE_GPIO_QSPI_SD0_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_LEVEL_HIGH  : DORMANT_WAKE_INTE_GPIO_QSPI_SD0_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_EDGE_LOW    : DORMANT_WAKE_INTE_GPIO_QSPI_SD0_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_EDGE_HIGH   : DORMANT_WAKE_INTE_GPIO_QSPI_SD0_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_LEVEL_LOW   : DORMANT_WAKE_INTE_GPIO_QSPI_SD1_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_LEVEL_HIGH  : DORMANT_WAKE_INTE_GPIO_QSPI_SD1_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_EDGE_LOW    : DORMANT_WAKE_INTE_GPIO_QSPI_SD1_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_EDGE_HIGH   : DORMANT_WAKE_INTE_GPIO_QSPI_SD1_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_LEVEL_LOW   : DORMANT_WAKE_INTE_GPIO_QSPI_SD2_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_LEVEL_HIGH  : DORMANT_WAKE_INTE_GPIO_QSPI_SD2_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_EDGE_LOW    : DORMANT_WAKE_INTE_GPIO_QSPI_SD2_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_EDGE_HIGH   : DORMANT_WAKE_INTE_GPIO_QSPI_SD2_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_LEVEL_LOW   : DORMANT_WAKE_INTE_GPIO_QSPI_SD3_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_LEVEL_HIGH  : DORMANT_WAKE_INTE_GPIO_QSPI_SD3_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_EDGE_LOW    : DORMANT_WAKE_INTE_GPIO_QSPI_SD3_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_EDGE_HIGH   : DORMANT_WAKE_INTE_GPIO_QSPI_SD3_EDGE_HIGH_Field :=
                                   16#0#;
      --  unspecified
      Reserved_24_31            : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DORMANT_WAKE_INTE_Register use record
      GPIO_QSPI_SCLK_LEVEL_LOW  at 0 range 0 .. 0;
      GPIO_QSPI_SCLK_LEVEL_HIGH at 0 range 1 .. 1;
      GPIO_QSPI_SCLK_EDGE_LOW   at 0 range 2 .. 2;
      GPIO_QSPI_SCLK_EDGE_HIGH  at 0 range 3 .. 3;
      GPIO_QSPI_SS_LEVEL_LOW    at 0 range 4 .. 4;
      GPIO_QSPI_SS_LEVEL_HIGH   at 0 range 5 .. 5;
      GPIO_QSPI_SS_EDGE_LOW     at 0 range 6 .. 6;
      GPIO_QSPI_SS_EDGE_HIGH    at 0 range 7 .. 7;
      GPIO_QSPI_SD0_LEVEL_LOW   at 0 range 8 .. 8;
      GPIO_QSPI_SD0_LEVEL_HIGH  at 0 range 9 .. 9;
      GPIO_QSPI_SD0_EDGE_LOW    at 0 range 10 .. 10;
      GPIO_QSPI_SD0_EDGE_HIGH   at 0 range 11 .. 11;
      GPIO_QSPI_SD1_LEVEL_LOW   at 0 range 12 .. 12;
      GPIO_QSPI_SD1_LEVEL_HIGH  at 0 range 13 .. 13;
      GPIO_QSPI_SD1_EDGE_LOW    at 0 range 14 .. 14;
      GPIO_QSPI_SD1_EDGE_HIGH   at 0 range 15 .. 15;
      GPIO_QSPI_SD2_LEVEL_LOW   at 0 range 16 .. 16;
      GPIO_QSPI_SD2_LEVEL_HIGH  at 0 range 17 .. 17;
      GPIO_QSPI_SD2_EDGE_LOW    at 0 range 18 .. 18;
      GPIO_QSPI_SD2_EDGE_HIGH   at 0 range 19 .. 19;
      GPIO_QSPI_SD3_LEVEL_LOW   at 0 range 20 .. 20;
      GPIO_QSPI_SD3_LEVEL_HIGH  at 0 range 21 .. 21;
      GPIO_QSPI_SD3_EDGE_LOW    at 0 range 22 .. 22;
      GPIO_QSPI_SD3_EDGE_HIGH   at 0 range 23 .. 23;
      Reserved_24_31            at 0 range 24 .. 31;
   end record;

   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SCLK_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SCLK_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SCLK_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SCLK_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SS_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SS_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SS_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SS_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SD0_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SD0_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SD0_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SD0_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SD1_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SD1_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SD1_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SD1_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SD2_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SD2_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SD2_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SD2_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SD3_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SD3_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SD3_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTF_GPIO_QSPI_SD3_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;

   --  Interrupt Force for dormant_wake
   type DORMANT_WAKE_INTF_Register is record
      GPIO_QSPI_SCLK_LEVEL_LOW  : DORMANT_WAKE_INTF_GPIO_QSPI_SCLK_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_LEVEL_HIGH : DORMANT_WAKE_INTF_GPIO_QSPI_SCLK_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_EDGE_LOW   : DORMANT_WAKE_INTF_GPIO_QSPI_SCLK_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SCLK_EDGE_HIGH  : DORMANT_WAKE_INTF_GPIO_QSPI_SCLK_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SS_LEVEL_LOW    : DORMANT_WAKE_INTF_GPIO_QSPI_SS_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SS_LEVEL_HIGH   : DORMANT_WAKE_INTF_GPIO_QSPI_SS_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SS_EDGE_LOW     : DORMANT_WAKE_INTF_GPIO_QSPI_SS_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SS_EDGE_HIGH    : DORMANT_WAKE_INTF_GPIO_QSPI_SS_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_LEVEL_LOW   : DORMANT_WAKE_INTF_GPIO_QSPI_SD0_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_LEVEL_HIGH  : DORMANT_WAKE_INTF_GPIO_QSPI_SD0_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_EDGE_LOW    : DORMANT_WAKE_INTF_GPIO_QSPI_SD0_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD0_EDGE_HIGH   : DORMANT_WAKE_INTF_GPIO_QSPI_SD0_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_LEVEL_LOW   : DORMANT_WAKE_INTF_GPIO_QSPI_SD1_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_LEVEL_HIGH  : DORMANT_WAKE_INTF_GPIO_QSPI_SD1_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_EDGE_LOW    : DORMANT_WAKE_INTF_GPIO_QSPI_SD1_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD1_EDGE_HIGH   : DORMANT_WAKE_INTF_GPIO_QSPI_SD1_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_LEVEL_LOW   : DORMANT_WAKE_INTF_GPIO_QSPI_SD2_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_LEVEL_HIGH  : DORMANT_WAKE_INTF_GPIO_QSPI_SD2_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_EDGE_LOW    : DORMANT_WAKE_INTF_GPIO_QSPI_SD2_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD2_EDGE_HIGH   : DORMANT_WAKE_INTF_GPIO_QSPI_SD2_EDGE_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_LEVEL_LOW   : DORMANT_WAKE_INTF_GPIO_QSPI_SD3_LEVEL_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_LEVEL_HIGH  : DORMANT_WAKE_INTF_GPIO_QSPI_SD3_LEVEL_HIGH_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_EDGE_LOW    : DORMANT_WAKE_INTF_GPIO_QSPI_SD3_EDGE_LOW_Field :=
                                   16#0#;
      GPIO_QSPI_SD3_EDGE_HIGH   : DORMANT_WAKE_INTF_GPIO_QSPI_SD3_EDGE_HIGH_Field :=
                                   16#0#;
      --  unspecified
      Reserved_24_31            : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DORMANT_WAKE_INTF_Register use record
      GPIO_QSPI_SCLK_LEVEL_LOW  at 0 range 0 .. 0;
      GPIO_QSPI_SCLK_LEVEL_HIGH at 0 range 1 .. 1;
      GPIO_QSPI_SCLK_EDGE_LOW   at 0 range 2 .. 2;
      GPIO_QSPI_SCLK_EDGE_HIGH  at 0 range 3 .. 3;
      GPIO_QSPI_SS_LEVEL_LOW    at 0 range 4 .. 4;
      GPIO_QSPI_SS_LEVEL_HIGH   at 0 range 5 .. 5;
      GPIO_QSPI_SS_EDGE_LOW     at 0 range 6 .. 6;
      GPIO_QSPI_SS_EDGE_HIGH    at 0 range 7 .. 7;
      GPIO_QSPI_SD0_LEVEL_LOW   at 0 range 8 .. 8;
      GPIO_QSPI_SD0_LEVEL_HIGH  at 0 range 9 .. 9;
      GPIO_QSPI_SD0_EDGE_LOW    at 0 range 10 .. 10;
      GPIO_QSPI_SD0_EDGE_HIGH   at 0 range 11 .. 11;
      GPIO_QSPI_SD1_LEVEL_LOW   at 0 range 12 .. 12;
      GPIO_QSPI_SD1_LEVEL_HIGH  at 0 range 13 .. 13;
      GPIO_QSPI_SD1_EDGE_LOW    at 0 range 14 .. 14;
      GPIO_QSPI_SD1_EDGE_HIGH   at 0 range 15 .. 15;
      GPIO_QSPI_SD2_LEVEL_LOW   at 0 range 16 .. 16;
      GPIO_QSPI_SD2_LEVEL_HIGH  at 0 range 17 .. 17;
      GPIO_QSPI_SD2_EDGE_LOW    at 0 range 18 .. 18;
      GPIO_QSPI_SD2_EDGE_HIGH   at 0 range 19 .. 19;
      GPIO_QSPI_SD3_LEVEL_LOW   at 0 range 20 .. 20;
      GPIO_QSPI_SD3_LEVEL_HIGH  at 0 range 21 .. 21;
      GPIO_QSPI_SD3_EDGE_LOW    at 0 range 22 .. 22;
      GPIO_QSPI_SD3_EDGE_HIGH   at 0 range 23 .. 23;
      Reserved_24_31            at 0 range 24 .. 31;
   end record;

   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SCLK_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SCLK_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SCLK_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SCLK_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SS_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SS_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SS_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SS_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SD0_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SD0_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SD0_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SD0_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SD1_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SD1_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SD1_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SD1_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SD2_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SD2_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SD2_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SD2_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SD3_LEVEL_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SD3_LEVEL_HIGH_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SD3_EDGE_LOW_Field is
     Interfaces.Bit_Types.Bit;
   subtype DORMANT_WAKE_INTS_GPIO_QSPI_SD3_EDGE_HIGH_Field is
     Interfaces.Bit_Types.Bit;

   --  Interrupt status after masking & forcing for dormant_wake
   type DORMANT_WAKE_INTS_Register is record
      --  Read-only.
      GPIO_QSPI_SCLK_LEVEL_LOW  : DORMANT_WAKE_INTS_GPIO_QSPI_SCLK_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SCLK_LEVEL_HIGH : DORMANT_WAKE_INTS_GPIO_QSPI_SCLK_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SCLK_EDGE_LOW   : DORMANT_WAKE_INTS_GPIO_QSPI_SCLK_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SCLK_EDGE_HIGH  : DORMANT_WAKE_INTS_GPIO_QSPI_SCLK_EDGE_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SS_LEVEL_LOW    : DORMANT_WAKE_INTS_GPIO_QSPI_SS_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SS_LEVEL_HIGH   : DORMANT_WAKE_INTS_GPIO_QSPI_SS_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SS_EDGE_LOW     : DORMANT_WAKE_INTS_GPIO_QSPI_SS_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SS_EDGE_HIGH    : DORMANT_WAKE_INTS_GPIO_QSPI_SS_EDGE_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD0_LEVEL_LOW   : DORMANT_WAKE_INTS_GPIO_QSPI_SD0_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD0_LEVEL_HIGH  : DORMANT_WAKE_INTS_GPIO_QSPI_SD0_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD0_EDGE_LOW    : DORMANT_WAKE_INTS_GPIO_QSPI_SD0_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD0_EDGE_HIGH   : DORMANT_WAKE_INTS_GPIO_QSPI_SD0_EDGE_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD1_LEVEL_LOW   : DORMANT_WAKE_INTS_GPIO_QSPI_SD1_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD1_LEVEL_HIGH  : DORMANT_WAKE_INTS_GPIO_QSPI_SD1_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD1_EDGE_LOW    : DORMANT_WAKE_INTS_GPIO_QSPI_SD1_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD1_EDGE_HIGH   : DORMANT_WAKE_INTS_GPIO_QSPI_SD1_EDGE_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD2_LEVEL_LOW   : DORMANT_WAKE_INTS_GPIO_QSPI_SD2_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD2_LEVEL_HIGH  : DORMANT_WAKE_INTS_GPIO_QSPI_SD2_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD2_EDGE_LOW    : DORMANT_WAKE_INTS_GPIO_QSPI_SD2_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD2_EDGE_HIGH   : DORMANT_WAKE_INTS_GPIO_QSPI_SD2_EDGE_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD3_LEVEL_LOW   : DORMANT_WAKE_INTS_GPIO_QSPI_SD3_LEVEL_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD3_LEVEL_HIGH  : DORMANT_WAKE_INTS_GPIO_QSPI_SD3_LEVEL_HIGH_Field;
      --  Read-only.
      GPIO_QSPI_SD3_EDGE_LOW    : DORMANT_WAKE_INTS_GPIO_QSPI_SD3_EDGE_LOW_Field;
      --  Read-only.
      GPIO_QSPI_SD3_EDGE_HIGH   : DORMANT_WAKE_INTS_GPIO_QSPI_SD3_EDGE_HIGH_Field;
      --  unspecified
      Reserved_24_31            : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DORMANT_WAKE_INTS_Register use record
      GPIO_QSPI_SCLK_LEVEL_LOW  at 0 range 0 .. 0;
      GPIO_QSPI_SCLK_LEVEL_HIGH at 0 range 1 .. 1;
      GPIO_QSPI_SCLK_EDGE_LOW   at 0 range 2 .. 2;
      GPIO_QSPI_SCLK_EDGE_HIGH  at 0 range 3 .. 3;
      GPIO_QSPI_SS_LEVEL_LOW    at 0 range 4 .. 4;
      GPIO_QSPI_SS_LEVEL_HIGH   at 0 range 5 .. 5;
      GPIO_QSPI_SS_EDGE_LOW     at 0 range 6 .. 6;
      GPIO_QSPI_SS_EDGE_HIGH    at 0 range 7 .. 7;
      GPIO_QSPI_SD0_LEVEL_LOW   at 0 range 8 .. 8;
      GPIO_QSPI_SD0_LEVEL_HIGH  at 0 range 9 .. 9;
      GPIO_QSPI_SD0_EDGE_LOW    at 0 range 10 .. 10;
      GPIO_QSPI_SD0_EDGE_HIGH   at 0 range 11 .. 11;
      GPIO_QSPI_SD1_LEVEL_LOW   at 0 range 12 .. 12;
      GPIO_QSPI_SD1_LEVEL_HIGH  at 0 range 13 .. 13;
      GPIO_QSPI_SD1_EDGE_LOW    at 0 range 14 .. 14;
      GPIO_QSPI_SD1_EDGE_HIGH   at 0 range 15 .. 15;
      GPIO_QSPI_SD2_LEVEL_LOW   at 0 range 16 .. 16;
      GPIO_QSPI_SD2_LEVEL_HIGH  at 0 range 17 .. 17;
      GPIO_QSPI_SD2_EDGE_LOW    at 0 range 18 .. 18;
      GPIO_QSPI_SD2_EDGE_HIGH   at 0 range 19 .. 19;
      GPIO_QSPI_SD3_LEVEL_LOW   at 0 range 20 .. 20;
      GPIO_QSPI_SD3_LEVEL_HIGH  at 0 range 21 .. 21;
      GPIO_QSPI_SD3_EDGE_LOW    at 0 range 22 .. 22;
      GPIO_QSPI_SD3_EDGE_HIGH   at 0 range 23 .. 23;
      Reserved_24_31            at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type IO_QSPI_Peripheral is record
      --  GPIO status
      GPIO_QSPI_SCLK_STATUS : aliased GPIO_QSPI_SCLK_STATUS_Register;
      --  GPIO control including function select and overrides.
      GPIO_QSPI_SCLK_CTRL   : aliased GPIO_QSPI_SCLK_CTRL_Register;
      --  GPIO status
      GPIO_QSPI_SS_STATUS   : aliased GPIO_QSPI_SS_STATUS_Register;
      --  GPIO control including function select and overrides.
      GPIO_QSPI_SS_CTRL     : aliased GPIO_QSPI_SS_CTRL_Register;
      --  GPIO status
      GPIO_QSPI_SD0_STATUS  : aliased GPIO_QSPI_SD0_STATUS_Register;
      --  GPIO control including function select and overrides.
      GPIO_QSPI_SD0_CTRL    : aliased GPIO_QSPI_SD0_CTRL_Register;
      --  GPIO status
      GPIO_QSPI_SD1_STATUS  : aliased GPIO_QSPI_SD1_STATUS_Register;
      --  GPIO control including function select and overrides.
      GPIO_QSPI_SD1_CTRL    : aliased GPIO_QSPI_SD1_CTRL_Register;
      --  GPIO status
      GPIO_QSPI_SD2_STATUS  : aliased GPIO_QSPI_SD2_STATUS_Register;
      --  GPIO control including function select and overrides.
      GPIO_QSPI_SD2_CTRL    : aliased GPIO_QSPI_SD2_CTRL_Register;
      --  GPIO status
      GPIO_QSPI_SD3_STATUS  : aliased GPIO_QSPI_SD3_STATUS_Register;
      --  GPIO control including function select and overrides.
      GPIO_QSPI_SD3_CTRL    : aliased GPIO_QSPI_SD3_CTRL_Register;
      --  Raw Interrupts
      INTR                  : aliased INTR_Register;
      --  Interrupt Enable for proc0
      PROC0_INTE            : aliased PROC0_INTE_Register;
      --  Interrupt Force for proc0
      PROC0_INTF            : aliased PROC0_INTF_Register;
      --  Interrupt status after masking & forcing for proc0
      PROC0_INTS            : aliased PROC0_INTS_Register;
      --  Interrupt Enable for proc1
      PROC1_INTE            : aliased PROC1_INTE_Register;
      --  Interrupt Force for proc1
      PROC1_INTF            : aliased PROC1_INTF_Register;
      --  Interrupt status after masking & forcing for proc1
      PROC1_INTS            : aliased PROC1_INTS_Register;
      --  Interrupt Enable for dormant_wake
      DORMANT_WAKE_INTE     : aliased DORMANT_WAKE_INTE_Register;
      --  Interrupt Force for dormant_wake
      DORMANT_WAKE_INTF     : aliased DORMANT_WAKE_INTF_Register;
      --  Interrupt status after masking & forcing for dormant_wake
      DORMANT_WAKE_INTS     : aliased DORMANT_WAKE_INTS_Register;
   end record
     with Volatile;

   for IO_QSPI_Peripheral use record
      GPIO_QSPI_SCLK_STATUS at 16#0# range 0 .. 31;
      GPIO_QSPI_SCLK_CTRL   at 16#4# range 0 .. 31;
      GPIO_QSPI_SS_STATUS   at 16#8# range 0 .. 31;
      GPIO_QSPI_SS_CTRL     at 16#C# range 0 .. 31;
      GPIO_QSPI_SD0_STATUS  at 16#10# range 0 .. 31;
      GPIO_QSPI_SD0_CTRL    at 16#14# range 0 .. 31;
      GPIO_QSPI_SD1_STATUS  at 16#18# range 0 .. 31;
      GPIO_QSPI_SD1_CTRL    at 16#1C# range 0 .. 31;
      GPIO_QSPI_SD2_STATUS  at 16#20# range 0 .. 31;
      GPIO_QSPI_SD2_CTRL    at 16#24# range 0 .. 31;
      GPIO_QSPI_SD3_STATUS  at 16#28# range 0 .. 31;
      GPIO_QSPI_SD3_CTRL    at 16#2C# range 0 .. 31;
      INTR                  at 16#30# range 0 .. 31;
      PROC0_INTE            at 16#34# range 0 .. 31;
      PROC0_INTF            at 16#38# range 0 .. 31;
      PROC0_INTS            at 16#3C# range 0 .. 31;
      PROC1_INTE            at 16#40# range 0 .. 31;
      PROC1_INTF            at 16#44# range 0 .. 31;
      PROC1_INTS            at 16#48# range 0 .. 31;
      DORMANT_WAKE_INTE     at 16#4C# range 0 .. 31;
      DORMANT_WAKE_INTF     at 16#50# range 0 .. 31;
      DORMANT_WAKE_INTS     at 16#54# range 0 .. 31;
   end record;

   IO_QSPI_Periph : aliased IO_QSPI_Peripheral
     with Import, Address => IO_QSPI_Base;

end Interfaces.RP.IO_QSPI;
