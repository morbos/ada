--
--  Copyright (C) 2020, AdaCore
--

--  Copyright 2016-2019 NXPAll rights reserved.SPDX-License-Identifier: BSD-3-Clause  

--  This spec has been automatically generated from LPC55S6x.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.NXP.IOCON is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Selects pin function.
   type PIO0_0_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_0_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_0_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_0_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_0_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_0_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_0_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_0_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_0_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_0_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_0_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_0_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Analog switch input control.
   type PIO0_0_ASW_Field is
     (
      --  For pins PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18, PIO0_31, PIO1_0
      --  and PIO1_9, analog switch is closed (enabled). For the other pins,
      --  analog switch is open (disabled).
      Value0,
      --  For all pins except PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18,
      --  PIO0_31, PIO1_0 and PIO1_9 analog switch is closed (enabled)
      Value1)
     with Size => 1;
   for PIO0_0_ASW_Field use
     (Value0 => 0,
      Value1 => 1);

   --  Digital I/O control for port 0 pins PIO0_0
   type PIO0_0_Register is record
      --  Selects pin function.
      FUNC           : PIO0_0_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_0_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_0_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_0_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_0_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_0_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  Analog switch input control.
      ASW            : PIO0_0_ASW_Field := Interfaces.NXP.IOCON.Value0;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_0_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      ASW            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_1_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_1_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_1_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_1_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_1_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_1_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_1_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_1_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_1_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_1_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_1_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_1_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_1
   type PIO0_1_Register is record
      --  Selects pin function.
      FUNC           : PIO0_1_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_1_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_1_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_1_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_1_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_1_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_1_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_2_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_2_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_2_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_2_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_2_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_2_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_2_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_2_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_2_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_2_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_2_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_2_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_2
   type PIO0_2_Register is record
      --  Selects pin function.
      FUNC           : PIO0_2_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_2_MODE_Field := Interfaces.NXP.IOCON.Pull_Down;
      --  Driver slew rate.
      SLEW           : PIO0_2_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_2_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_2_DIGIMODE_Field := Interfaces.NXP.IOCON.Digital;
      --  Controls open-drain mode.
      OD             : PIO0_2_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_2_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_3_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_3_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_3_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_3_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_3_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_3_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_3_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_3_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_3_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_3_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_3_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_3_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_3
   type PIO0_3_Register is record
      --  Selects pin function.
      FUNC           : PIO0_3_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_3_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_3_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_3_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_3_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_3_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_3_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_4_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_4_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_4_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_4_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_4_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_4_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_4_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_4_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_4_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_4_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_4_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_4_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_4
   type PIO0_4_Register is record
      --  Selects pin function.
      FUNC           : PIO0_4_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_4_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_4_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_4_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_4_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_4_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_4_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_5_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_5_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_5_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_5_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_5_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_5_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_5_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_5_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_5_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_5_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_5_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_5_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_5
   type PIO0_5_Register is record
      --  Selects pin function.
      FUNC           : PIO0_5_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_5_MODE_Field := Interfaces.NXP.IOCON.Pull_Up;
      --  Driver slew rate.
      SLEW           : PIO0_5_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_5_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_5_DIGIMODE_Field := Interfaces.NXP.IOCON.Digital;
      --  Controls open-drain mode.
      OD             : PIO0_5_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_5_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_6_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_6_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_6_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_6_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_6_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_6_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_6_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_6_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_6_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_6_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_6_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_6_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_6
   type PIO0_6_Register is record
      --  Selects pin function.
      FUNC           : PIO0_6_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_6_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_6_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_6_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_6_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_6_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_6_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_7_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_7_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_7_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_7_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_7_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_7_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_7_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_7_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_7_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_7_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_7_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_7_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_7
   type PIO0_7_Register is record
      --  Selects pin function.
      FUNC           : PIO0_7_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_7_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_7_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_7_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_7_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_7_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_7_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_8_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_8_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_8_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_8_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_8_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_8_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_8_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_8_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_8_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_8_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_8_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_8_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_8
   type PIO0_8_Register is record
      --  Selects pin function.
      FUNC           : PIO0_8_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_8_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_8_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_8_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_8_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_8_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_8_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_9_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_9_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_9_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_9_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_9_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_9_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_9_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_9_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_9_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_9_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_9_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_9_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Analog switch input control.
   type PIO0_9_ASW_Field is
     (
      --  For pins PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18, PIO0_31, PIO1_0
      --  and PIO1_9, analog switch is closed (enabled). For the other pins,
      --  analog switch is open (disabled).
      Value0,
      --  For all pins except PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18,
      --  PIO0_31, PIO1_0 and PIO1_9 analog switch is closed (enabled)
      Value1)
     with Size => 1;
   for PIO0_9_ASW_Field use
     (Value0 => 0,
      Value1 => 1);

   --  Digital I/O control for port 0 pins PIO0_9
   type PIO0_9_Register is record
      --  Selects pin function.
      FUNC           : PIO0_9_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_9_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_9_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_9_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_9_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_9_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  Analog switch input control.
      ASW            : PIO0_9_ASW_Field := Interfaces.NXP.IOCON.Value0;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_9_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      ASW            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_10_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_10_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_10_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_10_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_10_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_10_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_10_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_10_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_10_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_10_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_10_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_10_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Analog switch input control.
   type PIO0_10_ASW_Field is
     (
      --  For pins PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18, PIO0_31, PIO1_0
      --  and PIO1_9, analog switch is closed (enabled). For the other pins,
      --  analog switch is open (disabled).
      Value0,
      --  For all pins except PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18,
      --  PIO0_31, PIO1_0 and PIO1_9 analog switch is closed (enabled)
      Value1)
     with Size => 1;
   for PIO0_10_ASW_Field use
     (Value0 => 0,
      Value1 => 1);

   --  Digital I/O control for port 0 pins PIO0_10
   type PIO0_10_Register is record
      --  Selects pin function.
      FUNC           : PIO0_10_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_10_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_10_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_10_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_10_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_10_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  Analog switch input control.
      ASW            : PIO0_10_ASW_Field := Interfaces.NXP.IOCON.Value0;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_10_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      ASW            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_11_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_11_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_11_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_11_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_11_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_11_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_11_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_11_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_11_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_11_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_11_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_11_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Analog switch input control.
   type PIO0_11_ASW_Field is
     (
      --  For pins PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18, PIO0_31, PIO1_0
      --  and PIO1_9, analog switch is closed (enabled). For the other pins,
      --  analog switch is open (disabled).
      Value0,
      --  For all pins except PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18,
      --  PIO0_31, PIO1_0 and PIO1_9 analog switch is closed (enabled)
      Value1)
     with Size => 1;
   for PIO0_11_ASW_Field use
     (Value0 => 0,
      Value1 => 1);

   --  Digital I/O control for port 0 pins PIO0_11
   type PIO0_11_Register is record
      --  Selects pin function.
      FUNC           : PIO0_11_FUNC_Field := Interfaces.NXP.IOCON.Alt6;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_11_MODE_Field := Interfaces.NXP.IOCON.Pull_Down;
      --  Driver slew rate.
      SLEW           : PIO0_11_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_11_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_11_DIGIMODE_Field := Interfaces.NXP.IOCON.Digital;
      --  Controls open-drain mode.
      OD             : PIO0_11_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  Analog switch input control.
      ASW            : PIO0_11_ASW_Field := Interfaces.NXP.IOCON.Value0;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_11_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      ASW            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_12_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_12_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_12_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_12_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_12_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_12_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_12_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_12_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_12_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_12_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_12_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_12_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Analog switch input control.
   type PIO0_12_ASW_Field is
     (
      --  For pins PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18, PIO0_31, PIO1_0
      --  and PIO1_9, analog switch is closed (enabled). For the other pins,
      --  analog switch is open (disabled).
      Value0,
      --  For all pins except PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18,
      --  PIO0_31, PIO1_0 and PIO1_9 analog switch is closed (enabled)
      Value1)
     with Size => 1;
   for PIO0_12_ASW_Field use
     (Value0 => 0,
      Value1 => 1);

   --  Digital I/O control for port 0 pins PIO0_12
   type PIO0_12_Register is record
      --  Selects pin function.
      FUNC           : PIO0_12_FUNC_Field := Interfaces.NXP.IOCON.Alt6;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_12_MODE_Field := Interfaces.NXP.IOCON.Pull_Up;
      --  Driver slew rate.
      SLEW           : PIO0_12_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_12_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_12_DIGIMODE_Field := Interfaces.NXP.IOCON.Digital;
      --  Controls open-drain mode.
      OD             : PIO0_12_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  Analog switch input control.
      ASW            : PIO0_12_ASW_Field := Interfaces.NXP.IOCON.Value0;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_12_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      ASW            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_13_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_13_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_13_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_13_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_13_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_13_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_13_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_13_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_13_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_13_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode in standard GPIO mode (EGP = 1). This bit has
   --  no effect in I2C mode (EGP=0).
   type PIO0_13_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_13_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Supply Selection bit.
   type PIO0_13_SSEL_Field is
     (
      --  3V3 Signaling in I2C Mode.
      Sel3V3,
      --  1V8 Signaling in I2C Mode.
      Sel1V8)
     with Size => 1;
   for PIO0_13_SSEL_Field use
     (Sel3V3 => 0,
      Sel1V8 => 1);

   --  Controls input glitch filter.
   type PIO0_13_FILTEROFF_Field is
     (
      --  Filter enabled.
      Enabled,
      --  Filter disabled.
      Disabled)
     with Size => 1;
   for PIO0_13_FILTEROFF_Field use
     (Enabled => 0,
      Disabled => 1);

   --  Pull-up current source enable in I2C mode.
   type PIO0_13_ECS_Field is
     (
      --  Disabled. IO is in open drain cell.
      Disabled,
      --  Enabled. Pull resistor is conencted.
      Enabled)
     with Size => 1;
   for PIO0_13_ECS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Switch between GPIO mode and I2C mode.
   type PIO0_13_EGP_Field is
     (
      --  I2C mode.
      I2C_Mode,
      --  GPIO mode.
      Gpio_Mode)
     with Size => 1;
   for PIO0_13_EGP_Field use
     (I2C_Mode => 0,
      Gpio_Mode => 1);

   --  Configures I2C features for standard mode, fast mode, and Fast Mode Plus
   --  operation and High-Speed mode operation.
   type PIO0_13_I2CFILTER_Field is
     (
      --  I2C 50 ns glitch filter enabled. Typically used for Standard-mode,
      --  Fast-mode and Fast-mode Plus I2C.
      Fast_Mode,
      --  I2C 10 ns glitch filter enabled. Typically used for High-speed mode
      --  I2C.
      Standard_Mode)
     with Size => 1;
   for PIO0_13_I2CFILTER_Field use
     (Fast_Mode => 0,
      Standard_Mode => 1);

   --  Digital I/O control for port 0 pins PIO0_13
   type PIO0_13_Register is record
      --  Selects pin function.
      FUNC           : PIO0_13_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_13_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_13_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_13_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_13_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode in standard GPIO mode (EGP = 1). This bit
      --  has no effect in I2C mode (EGP=0).
      OD             : PIO0_13_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Supply Selection bit.
      SSEL           : PIO0_13_SSEL_Field := Interfaces.NXP.IOCON.Sel3V3;
      --  Controls input glitch filter.
      FILTEROFF      : PIO0_13_FILTEROFF_Field :=
                        Interfaces.NXP.IOCON.Disabled;
      --  Pull-up current source enable in I2C mode.
      ECS            : PIO0_13_ECS_Field := Interfaces.NXP.IOCON.Disabled;
      --  Switch between GPIO mode and I2C mode.
      EGP            : PIO0_13_EGP_Field := Interfaces.NXP.IOCON.Gpio_Mode;
      --  Configures I2C features for standard mode, fast mode, and Fast Mode
      --  Plus operation and High-Speed mode operation.
      I2CFILTER      : PIO0_13_I2CFILTER_Field :=
                        Interfaces.NXP.IOCON.Fast_Mode;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_13_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      SSEL           at 0 range 11 .. 11;
      FILTEROFF      at 0 range 12 .. 12;
      ECS            at 0 range 13 .. 13;
      EGP            at 0 range 14 .. 14;
      I2CFILTER      at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_14_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_14_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_14_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_14_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_14_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_14_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_14_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_14_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_14_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_14_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode in standard GPIO mode (EGP = 1). This bit has
   --  no effect in I2C mode (EGP=0).
   type PIO0_14_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_14_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Supply Selection bit.
   type PIO0_14_SSEL_Field is
     (
      --  3V3 Signaling in I2C Mode.
      Sel3V3,
      --  1V8 Signaling in I2C Mode.
      Sel1V8)
     with Size => 1;
   for PIO0_14_SSEL_Field use
     (Sel3V3 => 0,
      Sel1V8 => 1);

   --  Controls input glitch filter.
   type PIO0_14_FILTEROFF_Field is
     (
      --  Filter enabled.
      Enabled,
      --  Filter disabled.
      Disabled)
     with Size => 1;
   for PIO0_14_FILTEROFF_Field use
     (Enabled => 0,
      Disabled => 1);

   --  Pull-up current source enable in I2C mode.
   type PIO0_14_ECS_Field is
     (
      --  Disabled. IO is in open drain cell.
      Disabled,
      --  Enabled. Pull resistor is conencted.
      Enabled)
     with Size => 1;
   for PIO0_14_ECS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Switch between GPIO mode and I2C mode.
   type PIO0_14_EGP_Field is
     (
      --  I2C mode.
      I2C_Mode,
      --  GPIO mode.
      Gpio_Mode)
     with Size => 1;
   for PIO0_14_EGP_Field use
     (I2C_Mode => 0,
      Gpio_Mode => 1);

   --  Configures I2C features for standard mode, fast mode, and Fast Mode Plus
   --  operation and High-Speed mode operation.
   type PIO0_14_I2CFILTER_Field is
     (
      --  I2C 50 ns glitch filter enabled. Typically used for Standard-mode,
      --  Fast-mode and Fast-mode Plus I2C.
      Fast_Mode,
      --  I2C 10 ns glitch filter enabled. Typically used for High-speed mode
      --  I2C.
      Standard_Mode)
     with Size => 1;
   for PIO0_14_I2CFILTER_Field use
     (Fast_Mode => 0,
      Standard_Mode => 1);

   --  Digital I/O control for port 0 pins PIO0_14
   type PIO0_14_Register is record
      --  Selects pin function.
      FUNC           : PIO0_14_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_14_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_14_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_14_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_14_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode in standard GPIO mode (EGP = 1). This bit
      --  has no effect in I2C mode (EGP=0).
      OD             : PIO0_14_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Supply Selection bit.
      SSEL           : PIO0_14_SSEL_Field := Interfaces.NXP.IOCON.Sel3V3;
      --  Controls input glitch filter.
      FILTEROFF      : PIO0_14_FILTEROFF_Field :=
                        Interfaces.NXP.IOCON.Disabled;
      --  Pull-up current source enable in I2C mode.
      ECS            : PIO0_14_ECS_Field := Interfaces.NXP.IOCON.Disabled;
      --  Switch between GPIO mode and I2C mode.
      EGP            : PIO0_14_EGP_Field := Interfaces.NXP.IOCON.Gpio_Mode;
      --  Configures I2C features for standard mode, fast mode, and Fast Mode
      --  Plus operation and High-Speed mode operation.
      I2CFILTER      : PIO0_14_I2CFILTER_Field :=
                        Interfaces.NXP.IOCON.Fast_Mode;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_14_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      SSEL           at 0 range 11 .. 11;
      FILTEROFF      at 0 range 12 .. 12;
      ECS            at 0 range 13 .. 13;
      EGP            at 0 range 14 .. 14;
      I2CFILTER      at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_15_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_15_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_15_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_15_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_15_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_15_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_15_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_15_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_15_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_15_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_15_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_15_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Analog switch input control.
   type PIO0_15_ASW_Field is
     (
      --  For pins PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18, PIO0_31, PIO1_0
      --  and PIO1_9, analog switch is closed (enabled). For the other pins,
      --  analog switch is open (disabled).
      Value0,
      --  For all pins except PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18,
      --  PIO0_31, PIO1_0 and PIO1_9 analog switch is closed (enabled)
      Value1)
     with Size => 1;
   for PIO0_15_ASW_Field use
     (Value0 => 0,
      Value1 => 1);

   --  Digital I/O control for port 0 pins PIO0_15
   type PIO0_15_Register is record
      --  Selects pin function.
      FUNC           : PIO0_15_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_15_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_15_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_15_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_15_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_15_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  Analog switch input control.
      ASW            : PIO0_15_ASW_Field := Interfaces.NXP.IOCON.Value0;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_15_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      ASW            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_16_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_16_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_16_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_16_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_16_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_16_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_16_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_16_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_16_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_16_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_16_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_16_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Analog switch input control.
   type PIO0_16_ASW_Field is
     (
      --  For pins PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18, PIO0_31, PIO1_0
      --  and PIO1_9, analog switch is closed (enabled). For the other pins,
      --  analog switch is open (disabled).
      Value0,
      --  For all pins except PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18,
      --  PIO0_31, PIO1_0 and PIO1_9 analog switch is closed (enabled)
      Value1)
     with Size => 1;
   for PIO0_16_ASW_Field use
     (Value0 => 0,
      Value1 => 1);

   --  Digital I/O control for port 0 pins PIO0_16
   type PIO0_16_Register is record
      --  Selects pin function.
      FUNC           : PIO0_16_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_16_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_16_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_16_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_16_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_16_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  Analog switch input control.
      ASW            : PIO0_16_ASW_Field := Interfaces.NXP.IOCON.Value0;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_16_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      ASW            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_17_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_17_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_17_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_17_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_17_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_17_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_17_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_17_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_17_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_17_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_17_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_17_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_17
   type PIO0_17_Register is record
      --  Selects pin function.
      FUNC           : PIO0_17_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_17_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_17_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_17_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_17_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_17_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_17_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_18_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_18_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_18_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_18_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_18_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_18_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_18_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_18_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_18_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_18_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_18_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_18_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Analog switch input control.
   type PIO0_18_ASW_Field is
     (
      --  For pins PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18, PIO0_31, PIO1_0
      --  and PIO1_9, analog switch is closed (enabled). For the other pins,
      --  analog switch is open (disabled).
      Value0,
      --  For all pins except PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18,
      --  PIO0_31, PIO1_0 and PIO1_9 analog switch is closed (enabled)
      Value1)
     with Size => 1;
   for PIO0_18_ASW_Field use
     (Value0 => 0,
      Value1 => 1);

   --  Digital I/O control for port 0 pins PIO0_18
   type PIO0_18_Register is record
      --  Selects pin function.
      FUNC           : PIO0_18_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_18_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_18_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_18_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_18_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_18_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  Analog switch input control.
      ASW            : PIO0_18_ASW_Field := Interfaces.NXP.IOCON.Value0;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_18_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      ASW            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_19_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_19_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_19_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_19_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_19_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_19_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_19_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_19_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_19_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_19_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_19_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_19_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_19
   type PIO0_19_Register is record
      --  Selects pin function.
      FUNC           : PIO0_19_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_19_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_19_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_19_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_19_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_19_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_19_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_20_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_20_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_20_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_20_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_20_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_20_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_20_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_20_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_20_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_20_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_20_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_20_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_20
   type PIO0_20_Register is record
      --  Selects pin function.
      FUNC           : PIO0_20_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_20_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_20_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_20_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_20_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_20_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_20_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_21_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_21_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_21_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_21_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_21_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_21_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_21_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_21_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_21_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_21_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_21_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_21_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_21
   type PIO0_21_Register is record
      --  Selects pin function.
      FUNC           : PIO0_21_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_21_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_21_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_21_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_21_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_21_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_21_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_22_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_22_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_22_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_22_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_22_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_22_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_22_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_22_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_22_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_22_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_22_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_22_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_22
   type PIO0_22_Register is record
      --  Selects pin function.
      FUNC           : PIO0_22_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_22_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_22_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_22_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_22_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_22_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_22_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_23_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_23_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_23_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_23_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_23_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_23_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_23_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_23_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_23_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_23_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_23_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_23_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Analog switch input control.
   type PIO0_23_ASW_Field is
     (
      --  For pins PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18, PIO0_31, PIO1_0
      --  and PIO1_9, analog switch is closed (enabled). For the other pins,
      --  analog switch is open (disabled).
      Value0,
      --  For all pins except PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18,
      --  PIO0_31, PIO1_0 and PIO1_9 analog switch is closed (enabled)
      Value1)
     with Size => 1;
   for PIO0_23_ASW_Field use
     (Value0 => 0,
      Value1 => 1);

   --  Digital I/O control for port 0 pins PIO0_23
   type PIO0_23_Register is record
      --  Selects pin function.
      FUNC           : PIO0_23_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_23_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_23_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_23_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_23_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_23_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  Analog switch input control.
      ASW            : PIO0_23_ASW_Field := Interfaces.NXP.IOCON.Value0;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_23_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      ASW            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_24_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_24_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_24_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_24_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_24_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_24_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_24_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_24_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_24_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_24_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_24_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_24_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_24
   type PIO0_24_Register is record
      --  Selects pin function.
      FUNC           : PIO0_24_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_24_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_24_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_24_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_24_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_24_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_24_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_25_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_25_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_25_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_25_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_25_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_25_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_25_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_25_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_25_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_25_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_25_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_25_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_25
   type PIO0_25_Register is record
      --  Selects pin function.
      FUNC           : PIO0_25_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_25_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_25_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_25_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_25_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_25_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_25_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_26_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_26_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_26_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_26_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_26_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_26_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_26_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_26_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_26_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_26_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_26_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_26_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_26
   type PIO0_26_Register is record
      --  Selects pin function.
      FUNC           : PIO0_26_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_26_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_26_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_26_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_26_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_26_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_26_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_27_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_27_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_27_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_27_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_27_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_27_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_27_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_27_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_27_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_27_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_27_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_27_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_27
   type PIO0_27_Register is record
      --  Selects pin function.
      FUNC           : PIO0_27_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_27_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_27_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_27_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_27_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_27_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_27_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_28_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_28_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_28_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_28_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_28_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_28_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_28_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_28_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_28_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_28_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_28_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_28_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_28
   type PIO0_28_Register is record
      --  Selects pin function.
      FUNC           : PIO0_28_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_28_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_28_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_28_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_28_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_28_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_28_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_29_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_29_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_29_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_29_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_29_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_29_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_29_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_29_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_29_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_29_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_29_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_29_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_29
   type PIO0_29_Register is record
      --  Selects pin function.
      FUNC           : PIO0_29_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_29_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_29_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_29_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_29_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_29_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_29_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_30_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_30_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_30_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_30_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_30_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_30_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_30_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_30_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_30_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_30_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_30_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_30_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 0 pins PIO0_30
   type PIO0_30_Register is record
      --  Selects pin function.
      FUNC           : PIO0_30_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_30_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_30_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_30_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_30_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_30_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_30_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO0_31_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO0_31_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO0_31_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO0_31_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO0_31_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO0_31_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO0_31_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO0_31_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO0_31_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO0_31_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO0_31_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO0_31_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Analog switch input control.
   type PIO0_31_ASW_Field is
     (
      --  For pins PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18, PIO0_31, PIO1_0
      --  and PIO1_9, analog switch is closed (enabled). For the other pins,
      --  analog switch is open (disabled).
      Value0,
      --  For all pins except PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18,
      --  PIO0_31, PIO1_0 and PIO1_9 analog switch is closed (enabled)
      Value1)
     with Size => 1;
   for PIO0_31_ASW_Field use
     (Value0 => 0,
      Value1 => 1);

   --  Digital I/O control for port 0 pins PIO0_31
   type PIO0_31_Register is record
      --  Selects pin function.
      FUNC           : PIO0_31_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO0_31_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO0_31_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO0_31_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO0_31_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO0_31_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  Analog switch input control.
      ASW            : PIO0_31_ASW_Field := Interfaces.NXP.IOCON.Value0;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO0_31_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      ASW            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_0_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_0_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_0_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_0_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_0_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_0_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_0_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_0_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_0_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_0_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_0_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_0_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Analog switch input control.
   type PIO1_0_ASW_Field is
     (
      --  For pins PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18, PIO0_31, PIO1_0
      --  and PIO1_9, analog switch is closed (enabled). For the other pins,
      --  analog switch is open (disabled).
      Value0,
      --  For all pins except PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18,
      --  PIO0_31, PIO1_0 and PIO1_9 analog switch is closed (enabled)
      Value1)
     with Size => 1;
   for PIO1_0_ASW_Field use
     (Value0 => 0,
      Value1 => 1);

   --  Digital I/O control for port 1 pins PIO1_0
   type PIO1_0_Register is record
      --  Selects pin function.
      FUNC           : PIO1_0_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_0_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_0_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_0_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_0_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_0_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  Analog switch input control.
      ASW            : PIO1_0_ASW_Field := Interfaces.NXP.IOCON.Value0;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_0_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      ASW            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_1_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_1_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_1_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_1_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_1_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_1_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_1_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_1_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_1_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_1_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_1_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_1_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_1
   type PIO1_1_Register is record
      --  Selects pin function.
      FUNC           : PIO1_1_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_1_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_1_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_1_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_1_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_1_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_1_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_2_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_2_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_2_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_2_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_2_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_2_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_2_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_2_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_2_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_2_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_2_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_2_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_2
   type PIO1_2_Register is record
      --  Selects pin function.
      FUNC           : PIO1_2_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_2_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_2_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_2_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_2_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_2_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_2_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_3_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_3_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_3_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_3_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_3_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_3_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_3_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_3_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_3_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_3_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_3_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_3_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_3
   type PIO1_3_Register is record
      --  Selects pin function.
      FUNC           : PIO1_3_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_3_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_3_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_3_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_3_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_3_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_3_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_4_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_4_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_4_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_4_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_4_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_4_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_4_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_4_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_4_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_4_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_4_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_4_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_4
   type PIO1_4_Register is record
      --  Selects pin function.
      FUNC           : PIO1_4_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_4_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_4_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_4_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_4_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_4_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_4_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_5_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_5_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_5_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_5_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_5_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_5_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_5_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_5_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_5_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_5_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_5_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_5_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_5
   type PIO1_5_Register is record
      --  Selects pin function.
      FUNC           : PIO1_5_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_5_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_5_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_5_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_5_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_5_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_5_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_6_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_6_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_6_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_6_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_6_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_6_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_6_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_6_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_6_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_6_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_6_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_6_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_6
   type PIO1_6_Register is record
      --  Selects pin function.
      FUNC           : PIO1_6_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_6_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_6_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_6_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_6_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_6_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_6_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_7_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_7_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_7_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_7_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_7_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_7_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_7_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_7_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_7_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_7_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_7_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_7_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_7
   type PIO1_7_Register is record
      --  Selects pin function.
      FUNC           : PIO1_7_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_7_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_7_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_7_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_7_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_7_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_7_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_8_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_8_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_8_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_8_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_8_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_8_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_8_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_8_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_8_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_8_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_8_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_8_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Analog switch input control.
   type PIO1_8_ASW_Field is
     (
      --  For pins PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18, PIO0_31, PIO1_0
      --  and PIO1_9, analog switch is closed (enabled). For the other pins,
      --  analog switch is open (disabled).
      Value0,
      --  For all pins except PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18,
      --  PIO0_31, PIO1_0 and PIO1_9 analog switch is closed (enabled)
      Value1)
     with Size => 1;
   for PIO1_8_ASW_Field use
     (Value0 => 0,
      Value1 => 1);

   --  Digital I/O control for port 1 pins PIO1_8
   type PIO1_8_Register is record
      --  Selects pin function.
      FUNC           : PIO1_8_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_8_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_8_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_8_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_8_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_8_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  Analog switch input control.
      ASW            : PIO1_8_ASW_Field := Interfaces.NXP.IOCON.Value0;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_8_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      ASW            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_9_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_9_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_9_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_9_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_9_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_9_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_9_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_9_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_9_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_9_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_9_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_9_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Analog switch input control.
   type PIO1_9_ASW_Field is
     (
      --  For pins PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18, PIO0_31, PIO1_0
      --  and PIO1_9, analog switch is closed (enabled). For the other pins,
      --  analog switch is open (disabled).
      Value0,
      --  For all pins except PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18,
      --  PIO0_31, PIO1_0 and PIO1_9 analog switch is closed (enabled)
      Value1)
     with Size => 1;
   for PIO1_9_ASW_Field use
     (Value0 => 0,
      Value1 => 1);

   --  Digital I/O control for port 1 pins PIO1_9
   type PIO1_9_Register is record
      --  Selects pin function.
      FUNC           : PIO1_9_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_9_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_9_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_9_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_9_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_9_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  Analog switch input control.
      ASW            : PIO1_9_ASW_Field := Interfaces.NXP.IOCON.Value0;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_9_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      ASW            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_10_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_10_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_10_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_10_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_10_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_10_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_10_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_10_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_10_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_10_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_10_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_10_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_10
   type PIO1_10_Register is record
      --  Selects pin function.
      FUNC           : PIO1_10_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_10_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_10_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_10_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_10_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_10_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_10_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_11_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_11_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_11_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_11_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_11_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_11_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_11_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_11_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_11_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_11_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_11_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_11_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_11
   type PIO1_11_Register is record
      --  Selects pin function.
      FUNC           : PIO1_11_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_11_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_11_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_11_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_11_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_11_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_11_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_12_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_12_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_12_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_12_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_12_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_12_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_12_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_12_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_12_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_12_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_12_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_12_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_12
   type PIO1_12_Register is record
      --  Selects pin function.
      FUNC           : PIO1_12_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_12_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_12_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_12_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_12_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_12_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_12_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_13_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_13_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_13_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_13_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_13_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_13_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_13_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_13_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_13_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_13_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_13_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_13_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_13
   type PIO1_13_Register is record
      --  Selects pin function.
      FUNC           : PIO1_13_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_13_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_13_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_13_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_13_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_13_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_13_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_14_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_14_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_14_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_14_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_14_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_14_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_14_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_14_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_14_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_14_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_14_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_14_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Analog switch input control.
   type PIO1_14_ASW_Field is
     (
      --  For pins PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18, PIO0_31, PIO1_0
      --  and PIO1_9, analog switch is closed (enabled). For the other pins,
      --  analog switch is open (disabled).
      Value0,
      --  For all pins except PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18,
      --  PIO0_31, PIO1_0 and PIO1_9 analog switch is closed (enabled)
      Value1)
     with Size => 1;
   for PIO1_14_ASW_Field use
     (Value0 => 0,
      Value1 => 1);

   --  Digital I/O control for port 1 pins PIO1_14
   type PIO1_14_Register is record
      --  Selects pin function.
      FUNC           : PIO1_14_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_14_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_14_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_14_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_14_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_14_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  Analog switch input control.
      ASW            : PIO1_14_ASW_Field := Interfaces.NXP.IOCON.Value0;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_14_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      ASW            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_15_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_15_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_15_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_15_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_15_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_15_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_15_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_15_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_15_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_15_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_15_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_15_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_15
   type PIO1_15_Register is record
      --  Selects pin function.
      FUNC           : PIO1_15_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_15_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_15_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_15_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_15_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_15_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_15_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_16_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_16_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_16_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_16_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_16_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_16_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_16_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_16_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_16_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_16_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_16_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_16_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_16
   type PIO1_16_Register is record
      --  Selects pin function.
      FUNC           : PIO1_16_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_16_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_16_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_16_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_16_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_16_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_16_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_17_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_17_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_17_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_17_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_17_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_17_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_17_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_17_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_17_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_17_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_17_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_17_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_17
   type PIO1_17_Register is record
      --  Selects pin function.
      FUNC           : PIO1_17_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_17_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_17_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_17_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_17_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_17_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_17_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_18_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_18_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_18_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_18_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_18_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_18_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_18_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_18_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_18_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_18_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_18_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_18_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_18
   type PIO1_18_Register is record
      --  Selects pin function.
      FUNC           : PIO1_18_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_18_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_18_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_18_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_18_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_18_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_18_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_19_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_19_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_19_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_19_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_19_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_19_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_19_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_19_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_19_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_19_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_19_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_19_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Analog switch input control.
   type PIO1_19_ASW_Field is
     (
      --  For pins PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18, PIO0_31, PIO1_0
      --  and PIO1_9, analog switch is closed (enabled). For the other pins,
      --  analog switch is open (disabled).
      Value0,
      --  For all pins except PIO0_9, PIO0_11, PIO0_12, PIO0_15, PIO0_18,
      --  PIO0_31, PIO1_0 and PIO1_9 analog switch is closed (enabled)
      Value1)
     with Size => 1;
   for PIO1_19_ASW_Field use
     (Value0 => 0,
      Value1 => 1);

   --  Digital I/O control for port 1 pins PIO1_19
   type PIO1_19_Register is record
      --  Selects pin function.
      FUNC           : PIO1_19_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_19_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_19_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_19_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_19_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_19_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  Analog switch input control.
      ASW            : PIO1_19_ASW_Field := Interfaces.NXP.IOCON.Value0;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_19_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      ASW            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_20_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_20_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_20_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_20_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_20_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_20_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_20_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_20_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_20_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_20_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_20_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_20_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_20
   type PIO1_20_Register is record
      --  Selects pin function.
      FUNC           : PIO1_20_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_20_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_20_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_20_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_20_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_20_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_20_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_21_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_21_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_21_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_21_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_21_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_21_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_21_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_21_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_21_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_21_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_21_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_21_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_21
   type PIO1_21_Register is record
      --  Selects pin function.
      FUNC           : PIO1_21_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_21_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_21_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_21_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_21_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_21_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_21_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_22_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_22_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_22_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_22_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_22_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_22_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_22_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_22_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_22_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_22_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_22_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_22_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_22
   type PIO1_22_Register is record
      --  Selects pin function.
      FUNC           : PIO1_22_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_22_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_22_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_22_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_22_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_22_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_22_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_23_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_23_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_23_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_23_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_23_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_23_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_23_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_23_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_23_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_23_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_23_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_23_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_23
   type PIO1_23_Register is record
      --  Selects pin function.
      FUNC           : PIO1_23_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_23_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_23_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_23_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_23_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_23_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_23_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_24_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_24_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_24_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_24_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_24_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_24_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_24_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_24_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_24_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_24_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_24_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_24_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_24
   type PIO1_24_Register is record
      --  Selects pin function.
      FUNC           : PIO1_24_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_24_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_24_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_24_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_24_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_24_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_24_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_25_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_25_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_25_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_25_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_25_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_25_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_25_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_25_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_25_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_25_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_25_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_25_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_25
   type PIO1_25_Register is record
      --  Selects pin function.
      FUNC           : PIO1_25_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_25_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_25_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_25_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_25_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_25_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_25_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_26_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_26_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_26_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_26_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_26_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_26_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_26_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_26_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_26_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_26_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_26_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_26_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_26
   type PIO1_26_Register is record
      --  Selects pin function.
      FUNC           : PIO1_26_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_26_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_26_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_26_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_26_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_26_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_26_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_27_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_27_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_27_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_27_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_27_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_27_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_27_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_27_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_27_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_27_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_27_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_27_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_27
   type PIO1_27_Register is record
      --  Selects pin function.
      FUNC           : PIO1_27_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_27_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_27_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_27_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_27_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_27_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_27_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_28_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_28_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_28_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_28_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_28_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_28_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_28_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_28_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_28_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_28_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_28_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_28_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_28
   type PIO1_28_Register is record
      --  Selects pin function.
      FUNC           : PIO1_28_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_28_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_28_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_28_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_28_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_28_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_28_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_29_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_29_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_29_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_29_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_29_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_29_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_29_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_29_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_29_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_29_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_29_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_29_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_29
   type PIO1_29_Register is record
      --  Selects pin function.
      FUNC           : PIO1_29_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_29_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_29_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_29_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_29_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_29_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_29_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_30_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_30_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_30_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_30_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_30_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_30_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_30_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_30_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_30_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_30_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_30_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_30_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_30
   type PIO1_30_Register is record
      --  Selects pin function.
      FUNC           : PIO1_30_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_30_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_30_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_30_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_30_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_30_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_30_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Selects pin function.
   type PIO1_31_FUNC_Field is
     (
      --  Alternative connection 0.
      Alt0,
      --  Alternative connection 1.
      Alt1,
      --  Alternative connection 2.
      Alt2,
      --  Alternative connection 3.
      Alt3,
      --  Alternative connection 4.
      Alt4,
      --  Alternative connection 5.
      Alt5,
      --  Alternative connection 6.
      Alt6,
      --  Alternative connection 7.
      Alt7)
     with Size => 4;
   for PIO1_31_FUNC_Field use
     (Alt0 => 0,
      Alt1 => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Selects function mode (on-chip pull-up/pull-down resistor control).
   type PIO1_31_MODE_Field is
     (
      --  Inactive. Inactive (no pull-down/pull-up resistor enabled).
      Inactive,
      --  Pull-down. Pull-down resistor enabled.
      Pull_Down,
      --  Pull-up. Pull-up resistor enabled.
      Pull_Up,
      --  Repeater. Repeater mode.
      Repeater)
     with Size => 2;
   for PIO1_31_MODE_Field use
     (Inactive => 0,
      Pull_Down => 1,
      Pull_Up => 2,
      Repeater => 3);

   --  Driver slew rate.
   type PIO1_31_SLEW_Field is
     (
      --  Standard-mode, output slew rate is slower. More outputs can be
      --  switched simultaneously.
      Standard,
      --  Fast-mode, output slew rate is faster. Refer to the appropriate
      --  specific device data sheet for details.
      Fast)
     with Size => 1;
   for PIO1_31_SLEW_Field use
     (Standard => 0,
      Fast => 1);

   --  Input polarity.
   type PIO1_31_INVERT_Field is
     (
      --  Disabled. Input function is not inverted.
      Disabled,
      --  Enabled. Input is function inverted.
      Enabled)
     with Size => 1;
   for PIO1_31_INVERT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Select Digital mode.
   type PIO1_31_DIGIMODE_Field is
     (
      --  Disable digital mode. Digital input set to 0.
      Analog,
      --  Enable Digital mode. Digital input is enabled.
      Digital)
     with Size => 1;
   for PIO1_31_DIGIMODE_Field use
     (Analog => 0,
      Digital => 1);

   --  Controls open-drain mode.
   type PIO1_31_OD_Field is
     (
      --  Normal. Normal push-pull output
      Normal,
      --  Open-drain. Simulated open-drain output (high drive disabled).
      Open_Drain)
     with Size => 1;
   for PIO1_31_OD_Field use
     (Normal => 0,
      Open_Drain => 1);

   --  Digital I/O control for port 1 pins PIO1_31
   type PIO1_31_Register is record
      --  Selects pin function.
      FUNC           : PIO1_31_FUNC_Field := Interfaces.NXP.IOCON.Alt0;
      --  Selects function mode (on-chip pull-up/pull-down resistor control).
      MODE           : PIO1_31_MODE_Field := Interfaces.NXP.IOCON.Inactive;
      --  Driver slew rate.
      SLEW           : PIO1_31_SLEW_Field := Interfaces.NXP.IOCON.Standard;
      --  Input polarity.
      INVERT         : PIO1_31_INVERT_Field := Interfaces.NXP.IOCON.Disabled;
      --  Select Digital mode.
      DIGIMODE       : PIO1_31_DIGIMODE_Field := Interfaces.NXP.IOCON.Analog;
      --  Controls open-drain mode.
      OD             : PIO1_31_OD_Field := Interfaces.NXP.IOCON.Normal;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO1_31_Register use record
      FUNC           at 0 range 0 .. 3;
      MODE           at 0 range 4 .. 5;
      SLEW           at 0 range 6 .. 6;
      INVERT         at 0 range 7 .. 7;
      DIGIMODE       at 0 range 8 .. 8;
      OD             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  I/O pin configuration (IOCON)
   type IOCON_Peripheral is record
      --  Digital I/O control for port 0 pins PIO0_0
      PIO0_0  : aliased PIO0_0_Register;
      --  Digital I/O control for port 0 pins PIO0_1
      PIO0_1  : aliased PIO0_1_Register;
      --  Digital I/O control for port 0 pins PIO0_2
      PIO0_2  : aliased PIO0_2_Register;
      --  Digital I/O control for port 0 pins PIO0_3
      PIO0_3  : aliased PIO0_3_Register;
      --  Digital I/O control for port 0 pins PIO0_4
      PIO0_4  : aliased PIO0_4_Register;
      --  Digital I/O control for port 0 pins PIO0_5
      PIO0_5  : aliased PIO0_5_Register;
      --  Digital I/O control for port 0 pins PIO0_6
      PIO0_6  : aliased PIO0_6_Register;
      --  Digital I/O control for port 0 pins PIO0_7
      PIO0_7  : aliased PIO0_7_Register;
      --  Digital I/O control for port 0 pins PIO0_8
      PIO0_8  : aliased PIO0_8_Register;
      --  Digital I/O control for port 0 pins PIO0_9
      PIO0_9  : aliased PIO0_9_Register;
      --  Digital I/O control for port 0 pins PIO0_10
      PIO0_10 : aliased PIO0_10_Register;
      --  Digital I/O control for port 0 pins PIO0_11
      PIO0_11 : aliased PIO0_11_Register;
      --  Digital I/O control for port 0 pins PIO0_12
      PIO0_12 : aliased PIO0_12_Register;
      --  Digital I/O control for port 0 pins PIO0_13
      PIO0_13 : aliased PIO0_13_Register;
      --  Digital I/O control for port 0 pins PIO0_14
      PIO0_14 : aliased PIO0_14_Register;
      --  Digital I/O control for port 0 pins PIO0_15
      PIO0_15 : aliased PIO0_15_Register;
      --  Digital I/O control for port 0 pins PIO0_16
      PIO0_16 : aliased PIO0_16_Register;
      --  Digital I/O control for port 0 pins PIO0_17
      PIO0_17 : aliased PIO0_17_Register;
      --  Digital I/O control for port 0 pins PIO0_18
      PIO0_18 : aliased PIO0_18_Register;
      --  Digital I/O control for port 0 pins PIO0_19
      PIO0_19 : aliased PIO0_19_Register;
      --  Digital I/O control for port 0 pins PIO0_20
      PIO0_20 : aliased PIO0_20_Register;
      --  Digital I/O control for port 0 pins PIO0_21
      PIO0_21 : aliased PIO0_21_Register;
      --  Digital I/O control for port 0 pins PIO0_22
      PIO0_22 : aliased PIO0_22_Register;
      --  Digital I/O control for port 0 pins PIO0_23
      PIO0_23 : aliased PIO0_23_Register;
      --  Digital I/O control for port 0 pins PIO0_24
      PIO0_24 : aliased PIO0_24_Register;
      --  Digital I/O control for port 0 pins PIO0_25
      PIO0_25 : aliased PIO0_25_Register;
      --  Digital I/O control for port 0 pins PIO0_26
      PIO0_26 : aliased PIO0_26_Register;
      --  Digital I/O control for port 0 pins PIO0_27
      PIO0_27 : aliased PIO0_27_Register;
      --  Digital I/O control for port 0 pins PIO0_28
      PIO0_28 : aliased PIO0_28_Register;
      --  Digital I/O control for port 0 pins PIO0_29
      PIO0_29 : aliased PIO0_29_Register;
      --  Digital I/O control for port 0 pins PIO0_30
      PIO0_30 : aliased PIO0_30_Register;
      --  Digital I/O control for port 0 pins PIO0_31
      PIO0_31 : aliased PIO0_31_Register;
      --  Digital I/O control for port 1 pins PIO1_0
      PIO1_0  : aliased PIO1_0_Register;
      --  Digital I/O control for port 1 pins PIO1_1
      PIO1_1  : aliased PIO1_1_Register;
      --  Digital I/O control for port 1 pins PIO1_2
      PIO1_2  : aliased PIO1_2_Register;
      --  Digital I/O control for port 1 pins PIO1_3
      PIO1_3  : aliased PIO1_3_Register;
      --  Digital I/O control for port 1 pins PIO1_4
      PIO1_4  : aliased PIO1_4_Register;
      --  Digital I/O control for port 1 pins PIO1_5
      PIO1_5  : aliased PIO1_5_Register;
      --  Digital I/O control for port 1 pins PIO1_6
      PIO1_6  : aliased PIO1_6_Register;
      --  Digital I/O control for port 1 pins PIO1_7
      PIO1_7  : aliased PIO1_7_Register;
      --  Digital I/O control for port 1 pins PIO1_8
      PIO1_8  : aliased PIO1_8_Register;
      --  Digital I/O control for port 1 pins PIO1_9
      PIO1_9  : aliased PIO1_9_Register;
      --  Digital I/O control for port 1 pins PIO1_10
      PIO1_10 : aliased PIO1_10_Register;
      --  Digital I/O control for port 1 pins PIO1_11
      PIO1_11 : aliased PIO1_11_Register;
      --  Digital I/O control for port 1 pins PIO1_12
      PIO1_12 : aliased PIO1_12_Register;
      --  Digital I/O control for port 1 pins PIO1_13
      PIO1_13 : aliased PIO1_13_Register;
      --  Digital I/O control for port 1 pins PIO1_14
      PIO1_14 : aliased PIO1_14_Register;
      --  Digital I/O control for port 1 pins PIO1_15
      PIO1_15 : aliased PIO1_15_Register;
      --  Digital I/O control for port 1 pins PIO1_16
      PIO1_16 : aliased PIO1_16_Register;
      --  Digital I/O control for port 1 pins PIO1_17
      PIO1_17 : aliased PIO1_17_Register;
      --  Digital I/O control for port 1 pins PIO1_18
      PIO1_18 : aliased PIO1_18_Register;
      --  Digital I/O control for port 1 pins PIO1_19
      PIO1_19 : aliased PIO1_19_Register;
      --  Digital I/O control for port 1 pins PIO1_20
      PIO1_20 : aliased PIO1_20_Register;
      --  Digital I/O control for port 1 pins PIO1_21
      PIO1_21 : aliased PIO1_21_Register;
      --  Digital I/O control for port 1 pins PIO1_22
      PIO1_22 : aliased PIO1_22_Register;
      --  Digital I/O control for port 1 pins PIO1_23
      PIO1_23 : aliased PIO1_23_Register;
      --  Digital I/O control for port 1 pins PIO1_24
      PIO1_24 : aliased PIO1_24_Register;
      --  Digital I/O control for port 1 pins PIO1_25
      PIO1_25 : aliased PIO1_25_Register;
      --  Digital I/O control for port 1 pins PIO1_26
      PIO1_26 : aliased PIO1_26_Register;
      --  Digital I/O control for port 1 pins PIO1_27
      PIO1_27 : aliased PIO1_27_Register;
      --  Digital I/O control for port 1 pins PIO1_28
      PIO1_28 : aliased PIO1_28_Register;
      --  Digital I/O control for port 1 pins PIO1_29
      PIO1_29 : aliased PIO1_29_Register;
      --  Digital I/O control for port 1 pins PIO1_30
      PIO1_30 : aliased PIO1_30_Register;
      --  Digital I/O control for port 1 pins PIO1_31
      PIO1_31 : aliased PIO1_31_Register;
   end record
     with Volatile;

   for IOCON_Peripheral use record
      PIO0_0  at 16#0# range 0 .. 31;
      PIO0_1  at 16#4# range 0 .. 31;
      PIO0_2  at 16#8# range 0 .. 31;
      PIO0_3  at 16#C# range 0 .. 31;
      PIO0_4  at 16#10# range 0 .. 31;
      PIO0_5  at 16#14# range 0 .. 31;
      PIO0_6  at 16#18# range 0 .. 31;
      PIO0_7  at 16#1C# range 0 .. 31;
      PIO0_8  at 16#20# range 0 .. 31;
      PIO0_9  at 16#24# range 0 .. 31;
      PIO0_10 at 16#28# range 0 .. 31;
      PIO0_11 at 16#2C# range 0 .. 31;
      PIO0_12 at 16#30# range 0 .. 31;
      PIO0_13 at 16#34# range 0 .. 31;
      PIO0_14 at 16#38# range 0 .. 31;
      PIO0_15 at 16#3C# range 0 .. 31;
      PIO0_16 at 16#40# range 0 .. 31;
      PIO0_17 at 16#44# range 0 .. 31;
      PIO0_18 at 16#48# range 0 .. 31;
      PIO0_19 at 16#4C# range 0 .. 31;
      PIO0_20 at 16#50# range 0 .. 31;
      PIO0_21 at 16#54# range 0 .. 31;
      PIO0_22 at 16#58# range 0 .. 31;
      PIO0_23 at 16#5C# range 0 .. 31;
      PIO0_24 at 16#60# range 0 .. 31;
      PIO0_25 at 16#64# range 0 .. 31;
      PIO0_26 at 16#68# range 0 .. 31;
      PIO0_27 at 16#6C# range 0 .. 31;
      PIO0_28 at 16#70# range 0 .. 31;
      PIO0_29 at 16#74# range 0 .. 31;
      PIO0_30 at 16#78# range 0 .. 31;
      PIO0_31 at 16#7C# range 0 .. 31;
      PIO1_0  at 16#80# range 0 .. 31;
      PIO1_1  at 16#84# range 0 .. 31;
      PIO1_2  at 16#88# range 0 .. 31;
      PIO1_3  at 16#8C# range 0 .. 31;
      PIO1_4  at 16#90# range 0 .. 31;
      PIO1_5  at 16#94# range 0 .. 31;
      PIO1_6  at 16#98# range 0 .. 31;
      PIO1_7  at 16#9C# range 0 .. 31;
      PIO1_8  at 16#A0# range 0 .. 31;
      PIO1_9  at 16#A4# range 0 .. 31;
      PIO1_10 at 16#A8# range 0 .. 31;
      PIO1_11 at 16#AC# range 0 .. 31;
      PIO1_12 at 16#B0# range 0 .. 31;
      PIO1_13 at 16#B4# range 0 .. 31;
      PIO1_14 at 16#B8# range 0 .. 31;
      PIO1_15 at 16#BC# range 0 .. 31;
      PIO1_16 at 16#C0# range 0 .. 31;
      PIO1_17 at 16#C4# range 0 .. 31;
      PIO1_18 at 16#C8# range 0 .. 31;
      PIO1_19 at 16#CC# range 0 .. 31;
      PIO1_20 at 16#D0# range 0 .. 31;
      PIO1_21 at 16#D4# range 0 .. 31;
      PIO1_22 at 16#D8# range 0 .. 31;
      PIO1_23 at 16#DC# range 0 .. 31;
      PIO1_24 at 16#E0# range 0 .. 31;
      PIO1_25 at 16#E4# range 0 .. 31;
      PIO1_26 at 16#E8# range 0 .. 31;
      PIO1_27 at 16#EC# range 0 .. 31;
      PIO1_28 at 16#F0# range 0 .. 31;
      PIO1_29 at 16#F4# range 0 .. 31;
      PIO1_30 at 16#F8# range 0 .. 31;
      PIO1_31 at 16#FC# range 0 .. 31;
   end record;

   --  I/O pin configuration (IOCON)
   IOCON_Periph : aliased IOCON_Peripheral
     with Import, Address => System'To_Address (16#40001000#);

end Interfaces.NXP.IOCON;
