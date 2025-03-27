--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.MDIOS is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype MDIOS_CR_PORT_ADDRESS_Field is Interfaces.Bit_Types.UInt5;

   --  MDIOS configuration register
   type MDIOS_CR_Register is record
      --  peripheral enable
      EN             : Boolean := False;
      --  register write interrupt enable
      WRIE           : Boolean := False;
      --  register read interrupt enable
      RDIE           : Boolean := False;
      --  error interrupt enable
      EIE            : Boolean := False;
      --  unspecified
      Reserved_4_6   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  disable preamble check
      DPC            : Boolean := False;
      --  slave address
      PORT_ADDRESS   : MDIOS_CR_PORT_ADDRESS_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDIOS_CR_Register use record
      EN             at 0 range 0 .. 0;
      WRIE           at 0 range 1 .. 1;
      RDIE           at 0 range 2 .. 2;
      EIE            at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      DPC            at 0 range 7 .. 7;
      PORT_ADDRESS   at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  MDIOS status register
   type MDIOS_SR_Register is record
      --  Read-only. preamble error flag
      PERF          : Boolean;
      --  Read-only. start error flag
      SERF          : Boolean;
      --  Read-only. turnaround error flag
      TERF          : Boolean;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDIOS_SR_Register use record
      PERF          at 0 range 0 .. 0;
      SERF          at 0 range 1 .. 1;
      TERF          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  MDIOS clear flag register
   type MDIOS_CLRFR_Register is record
      --  clear the preamble error flag
      CPERF         : Boolean := False;
      --  clear the start error flag
      CSERF         : Boolean := False;
      --  clear the turnaround error flag
      CTERF         : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDIOS_CLRFR_Register use record
      CPERF         at 0 range 0 .. 0;
      CSERF         at 0 range 1 .. 1;
      CTERF         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype MDIOS_DINR_DIN_Field is Interfaces.Bit_Types.UInt16;

   --  MDIOS input data register 0
   type MDIOS_DINR_Register is record
      --  Read-only. input data received from MDIO master during write frames
      DIN            : MDIOS_DINR_DIN_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDIOS_DINR_Register use record
      DIN            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MDIOS_DOUTR_DOUT_Field is Interfaces.Bit_Types.UInt16;

   --  MDIOS output data register 0
   type MDIOS_DOUTR_Register is record
      --  output data sent to MDIO Master during read frames
      DOUT           : MDIOS_DOUTR_DOUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDIOS_DOUTR_Register use record
      DOUT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Management data input/output
   type MDIOS_Peripheral is record
      --  MDIOS configuration register
      MDIOS_CR      : aliased MDIOS_CR_Register;
      --  MDIOS write flag register
      MDIOS_WRFR    : aliased Interfaces.Bit_Types.UInt32;
      --  MDIOS clear write flag register
      MDIOS_CWRFR   : aliased Interfaces.Bit_Types.UInt32;
      --  MDIOS read flag register
      MDIOS_RDFR    : aliased Interfaces.Bit_Types.UInt32;
      --  MDIOS clear read flag register
      MDIOS_CRDFR   : aliased Interfaces.Bit_Types.UInt32;
      --  MDIOS status register
      MDIOS_SR      : aliased MDIOS_SR_Register;
      --  MDIOS clear flag register
      MDIOS_CLRFR   : aliased MDIOS_CLRFR_Register;
      --  MDIOS input data register 0
      MDIOS_DINR0   : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 1
      MDIOS_DINR1   : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 2
      MDIOS_DINR2   : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 3
      MDIOS_DINR3   : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 4
      MDIOS_DINR4   : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 5
      MDIOS_DINR5   : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 6
      MDIOS_DINR6   : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 7
      MDIOS_DINR7   : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 8
      MDIOS_DINR8   : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 9
      MDIOS_DINR9   : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 10
      MDIOS_DINR10  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 11
      MDIOS_DINR11  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 12
      MDIOS_DINR12  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 13
      MDIOS_DINR13  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 14
      MDIOS_DINR14  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 15
      MDIOS_DINR15  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 16
      MDIOS_DINR16  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 17
      MDIOS_DINR17  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 18
      MDIOS_DINR18  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 19
      MDIOS_DINR19  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 20
      MDIOS_DINR20  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 21
      MDIOS_DINR21  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 22
      MDIOS_DINR22  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 23
      MDIOS_DINR23  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 24
      MDIOS_DINR24  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 25
      MDIOS_DINR25  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 26
      MDIOS_DINR26  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 27
      MDIOS_DINR27  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 28
      MDIOS_DINR28  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 29
      MDIOS_DINR29  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 30
      MDIOS_DINR30  : aliased MDIOS_DINR_Register;
      --  MDIOS input data register 31
      MDIOS_DINR31  : aliased MDIOS_DINR_Register;
      --  MDIOS output data register 0
      MDIOS_DOUTR0  : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 1
      MDIOS_DOUTR1  : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 2
      MDIOS_DOUTR2  : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 3
      MDIOS_DOUTR3  : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 4
      MDIOS_DOUTR4  : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 5
      MDIOS_DOUTR5  : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 6
      MDIOS_DOUTR6  : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 7
      MDIOS_DOUTR7  : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 8
      MDIOS_DOUTR8  : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 9
      MDIOS_DOUTR9  : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 10
      MDIOS_DOUTR10 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 11
      MDIOS_DOUTR11 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 12
      MDIOS_DOUTR12 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 13
      MDIOS_DOUTR13 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 14
      MDIOS_DOUTR14 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 15
      MDIOS_DOUTR15 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 16
      MDIOS_DOUTR16 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 17
      MDIOS_DOUTR17 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 18
      MDIOS_DOUTR18 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 19
      MDIOS_DOUTR19 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 20
      MDIOS_DOUTR20 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 21
      MDIOS_DOUTR21 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 22
      MDIOS_DOUTR22 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 23
      MDIOS_DOUTR23 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 24
      MDIOS_DOUTR24 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 25
      MDIOS_DOUTR25 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 26
      MDIOS_DOUTR26 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 27
      MDIOS_DOUTR27 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 28
      MDIOS_DOUTR28 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 29
      MDIOS_DOUTR29 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 30
      MDIOS_DOUTR30 : aliased MDIOS_DOUTR_Register;
      --  MDIOS output data register 31
      MDIOS_DOUTR31 : aliased MDIOS_DOUTR_Register;
   end record
     with Volatile;

   for MDIOS_Peripheral use record
      MDIOS_CR      at 16#0# range 0 .. 31;
      MDIOS_WRFR    at 16#4# range 0 .. 31;
      MDIOS_CWRFR   at 16#8# range 0 .. 31;
      MDIOS_RDFR    at 16#C# range 0 .. 31;
      MDIOS_CRDFR   at 16#10# range 0 .. 31;
      MDIOS_SR      at 16#14# range 0 .. 31;
      MDIOS_CLRFR   at 16#18# range 0 .. 31;
      MDIOS_DINR0   at 16#100# range 0 .. 31;
      MDIOS_DINR1   at 16#104# range 0 .. 31;
      MDIOS_DINR2   at 16#108# range 0 .. 31;
      MDIOS_DINR3   at 16#10C# range 0 .. 31;
      MDIOS_DINR4   at 16#110# range 0 .. 31;
      MDIOS_DINR5   at 16#114# range 0 .. 31;
      MDIOS_DINR6   at 16#118# range 0 .. 31;
      MDIOS_DINR7   at 16#11C# range 0 .. 31;
      MDIOS_DINR8   at 16#120# range 0 .. 31;
      MDIOS_DINR9   at 16#124# range 0 .. 31;
      MDIOS_DINR10  at 16#128# range 0 .. 31;
      MDIOS_DINR11  at 16#12C# range 0 .. 31;
      MDIOS_DINR12  at 16#130# range 0 .. 31;
      MDIOS_DINR13  at 16#134# range 0 .. 31;
      MDIOS_DINR14  at 16#138# range 0 .. 31;
      MDIOS_DINR15  at 16#13C# range 0 .. 31;
      MDIOS_DINR16  at 16#140# range 0 .. 31;
      MDIOS_DINR17  at 16#144# range 0 .. 31;
      MDIOS_DINR18  at 16#148# range 0 .. 31;
      MDIOS_DINR19  at 16#14C# range 0 .. 31;
      MDIOS_DINR20  at 16#150# range 0 .. 31;
      MDIOS_DINR21  at 16#154# range 0 .. 31;
      MDIOS_DINR22  at 16#158# range 0 .. 31;
      MDIOS_DINR23  at 16#15C# range 0 .. 31;
      MDIOS_DINR24  at 16#160# range 0 .. 31;
      MDIOS_DINR25  at 16#164# range 0 .. 31;
      MDIOS_DINR26  at 16#168# range 0 .. 31;
      MDIOS_DINR27  at 16#16C# range 0 .. 31;
      MDIOS_DINR28  at 16#170# range 0 .. 31;
      MDIOS_DINR29  at 16#174# range 0 .. 31;
      MDIOS_DINR30  at 16#178# range 0 .. 31;
      MDIOS_DINR31  at 16#17C# range 0 .. 31;
      MDIOS_DOUTR0  at 16#180# range 0 .. 31;
      MDIOS_DOUTR1  at 16#184# range 0 .. 31;
      MDIOS_DOUTR2  at 16#188# range 0 .. 31;
      MDIOS_DOUTR3  at 16#18C# range 0 .. 31;
      MDIOS_DOUTR4  at 16#190# range 0 .. 31;
      MDIOS_DOUTR5  at 16#194# range 0 .. 31;
      MDIOS_DOUTR6  at 16#198# range 0 .. 31;
      MDIOS_DOUTR7  at 16#19C# range 0 .. 31;
      MDIOS_DOUTR8  at 16#1A0# range 0 .. 31;
      MDIOS_DOUTR9  at 16#1A4# range 0 .. 31;
      MDIOS_DOUTR10 at 16#1A8# range 0 .. 31;
      MDIOS_DOUTR11 at 16#1AC# range 0 .. 31;
      MDIOS_DOUTR12 at 16#1B0# range 0 .. 31;
      MDIOS_DOUTR13 at 16#1B4# range 0 .. 31;
      MDIOS_DOUTR14 at 16#1B8# range 0 .. 31;
      MDIOS_DOUTR15 at 16#1BC# range 0 .. 31;
      MDIOS_DOUTR16 at 16#1C0# range 0 .. 31;
      MDIOS_DOUTR17 at 16#1C4# range 0 .. 31;
      MDIOS_DOUTR18 at 16#1C8# range 0 .. 31;
      MDIOS_DOUTR19 at 16#1CC# range 0 .. 31;
      MDIOS_DOUTR20 at 16#1D0# range 0 .. 31;
      MDIOS_DOUTR21 at 16#1D4# range 0 .. 31;
      MDIOS_DOUTR22 at 16#1D8# range 0 .. 31;
      MDIOS_DOUTR23 at 16#1DC# range 0 .. 31;
      MDIOS_DOUTR24 at 16#1E0# range 0 .. 31;
      MDIOS_DOUTR25 at 16#1E4# range 0 .. 31;
      MDIOS_DOUTR26 at 16#1E8# range 0 .. 31;
      MDIOS_DOUTR27 at 16#1EC# range 0 .. 31;
      MDIOS_DOUTR28 at 16#1F0# range 0 .. 31;
      MDIOS_DOUTR29 at 16#1F4# range 0 .. 31;
      MDIOS_DOUTR30 at 16#1F8# range 0 .. 31;
      MDIOS_DOUTR31 at 16#1FC# range 0 .. 31;
   end record;

   --  Management data input/output
   MDIOS_Periph : aliased MDIOS_Peripheral
     with Import, Address => MDIOS_Base;

   --  Management data input/output
   MDIOS_S_Periph : aliased MDIOS_Peripheral
     with Import, Address => MDIOS_S_Base;

end Interfaces.STM32.MDIOS;
