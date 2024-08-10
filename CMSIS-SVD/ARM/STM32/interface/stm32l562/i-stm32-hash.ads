--
--  Copyright (C) 2020, AdaCore
--

--  This spec has been automatically generated from STM32L562.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.HASH is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR_DATATYPE_Field is Interfaces.Bit_Types.UInt2;
   subtype CR_NBW_Field is Interfaces.Bit_Types.UInt4;

   type CR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      INIT           : Boolean := False;
      DMAE           : Boolean := False;
      DATATYPE       : CR_DATATYPE_Field := 16#0#;
      MODE           : Boolean := False;
      ALGO           : Boolean := False;
      NBW            : CR_NBW_Field := 16#0#;
      DINNE          : Boolean := False;
      MDMAT          : Boolean := False;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      LKEY           : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      ALGO_1         : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      INIT           at 0 range 2 .. 2;
      DMAE           at 0 range 3 .. 3;
      DATATYPE       at 0 range 4 .. 5;
      MODE           at 0 range 6 .. 6;
      ALGO           at 0 range 7 .. 7;
      NBW            at 0 range 8 .. 11;
      DINNE          at 0 range 12 .. 12;
      MDMAT          at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      LKEY           at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      ALGO_1         at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype STR_NBLW_Field is Interfaces.Bit_Types.UInt5;

   type STR_Register is record
      NBLW          : STR_NBLW_Field := 16#0#;
      --  unspecified
      Reserved_5_7  : Interfaces.Bit_Types.UInt3 := 16#0#;
      DCAL          : Boolean := False;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STR_Register use record
      NBLW          at 0 range 0 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      DCAL          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   type IMR_Register is record
      DINIE         : Boolean := False;
      DCIE          : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR_Register use record
      DINIE         at 0 range 0 .. 0;
      DCIE          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   type SR_Register is record
      DINIS         : Boolean := False;
      DCIS          : Boolean := False;
      DMAS          : Boolean := False;
      BUSY          : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      DINIS         at 0 range 0 .. 0;
      DCIS          at 0 range 1 .. 1;
      DMAS          at 0 range 2 .. 2;
      BUSY          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type HASH_Peripheral is record
      CR    : aliased CR_Register;
      DIN   : aliased Interfaces.Bit_Types.Word;
      STR   : aliased STR_Register;
      HRA0  : aliased Interfaces.Bit_Types.Word;
      HRA1  : aliased Interfaces.Bit_Types.Word;
      HRA2  : aliased Interfaces.Bit_Types.Word;
      HRA3  : aliased Interfaces.Bit_Types.Word;
      HRA4  : aliased Interfaces.Bit_Types.Word;
      IMR   : aliased IMR_Register;
      SR    : aliased SR_Register;
      CSR0  : aliased Interfaces.Bit_Types.Word;
      CSR1  : aliased Interfaces.Bit_Types.Word;
      CSR2  : aliased Interfaces.Bit_Types.Word;
      CSR3  : aliased Interfaces.Bit_Types.Word;
      CSR4  : aliased Interfaces.Bit_Types.Word;
      CSR5  : aliased Interfaces.Bit_Types.Word;
      CSR6  : aliased Interfaces.Bit_Types.Word;
      CSR7  : aliased Interfaces.Bit_Types.Word;
      CSR8  : aliased Interfaces.Bit_Types.Word;
      CSR9  : aliased Interfaces.Bit_Types.Word;
      CSR10 : aliased Interfaces.Bit_Types.Word;
      CSR11 : aliased Interfaces.Bit_Types.Word;
      CSR12 : aliased Interfaces.Bit_Types.Word;
      CSR13 : aliased Interfaces.Bit_Types.Word;
      CSR14 : aliased Interfaces.Bit_Types.Word;
      CSR15 : aliased Interfaces.Bit_Types.Word;
      CSR16 : aliased Interfaces.Bit_Types.Word;
      CSR17 : aliased Interfaces.Bit_Types.Word;
      CSR18 : aliased Interfaces.Bit_Types.Word;
      CSR19 : aliased Interfaces.Bit_Types.Word;
      CSR20 : aliased Interfaces.Bit_Types.Word;
      CSR21 : aliased Interfaces.Bit_Types.Word;
      CSR22 : aliased Interfaces.Bit_Types.Word;
      CSR23 : aliased Interfaces.Bit_Types.Word;
      CSR24 : aliased Interfaces.Bit_Types.Word;
      CSR25 : aliased Interfaces.Bit_Types.Word;
      CSR26 : aliased Interfaces.Bit_Types.Word;
      CSR27 : aliased Interfaces.Bit_Types.Word;
      CSR28 : aliased Interfaces.Bit_Types.Word;
      CSR29 : aliased Interfaces.Bit_Types.Word;
      CSR30 : aliased Interfaces.Bit_Types.Word;
      CSR31 : aliased Interfaces.Bit_Types.Word;
      CSR32 : aliased Interfaces.Bit_Types.Word;
      CSR33 : aliased Interfaces.Bit_Types.Word;
      CSR34 : aliased Interfaces.Bit_Types.Word;
      CSR35 : aliased Interfaces.Bit_Types.Word;
      CSR36 : aliased Interfaces.Bit_Types.Word;
      CSR37 : aliased Interfaces.Bit_Types.Word;
      CSR38 : aliased Interfaces.Bit_Types.Word;
      CSR39 : aliased Interfaces.Bit_Types.Word;
      CSR40 : aliased Interfaces.Bit_Types.Word;
      CSR41 : aliased Interfaces.Bit_Types.Word;
      CSR42 : aliased Interfaces.Bit_Types.Word;
      CSR43 : aliased Interfaces.Bit_Types.Word;
      CSR44 : aliased Interfaces.Bit_Types.Word;
      CSR45 : aliased Interfaces.Bit_Types.Word;
      CSR46 : aliased Interfaces.Bit_Types.Word;
      CSR47 : aliased Interfaces.Bit_Types.Word;
      CSR48 : aliased Interfaces.Bit_Types.Word;
      CSR49 : aliased Interfaces.Bit_Types.Word;
      CSR50 : aliased Interfaces.Bit_Types.Word;
      CSR51 : aliased Interfaces.Bit_Types.Word;
      CSR52 : aliased Interfaces.Bit_Types.Word;
      CSR53 : aliased Interfaces.Bit_Types.Word;
      HR0   : aliased Interfaces.Bit_Types.Word;
      HR1   : aliased Interfaces.Bit_Types.Word;
      HR2   : aliased Interfaces.Bit_Types.Word;
      HR3   : aliased Interfaces.Bit_Types.Word;
      HR4   : aliased Interfaces.Bit_Types.Word;
      HR5   : aliased Interfaces.Bit_Types.Word;
      HR6   : aliased Interfaces.Bit_Types.Word;
      HR7   : aliased Interfaces.Bit_Types.Word;
   end record
     with Volatile;

   for HASH_Peripheral use record
      CR    at 16#0# range 0 .. 31;
      DIN   at 16#4# range 0 .. 31;
      STR   at 16#8# range 0 .. 31;
      HRA0  at 16#C# range 0 .. 31;
      HRA1  at 16#10# range 0 .. 31;
      HRA2  at 16#14# range 0 .. 31;
      HRA3  at 16#18# range 0 .. 31;
      HRA4  at 16#1C# range 0 .. 31;
      IMR   at 16#20# range 0 .. 31;
      SR    at 16#24# range 0 .. 31;
      CSR0  at 16#F8# range 0 .. 31;
      CSR1  at 16#FC# range 0 .. 31;
      CSR2  at 16#100# range 0 .. 31;
      CSR3  at 16#104# range 0 .. 31;
      CSR4  at 16#108# range 0 .. 31;
      CSR5  at 16#10C# range 0 .. 31;
      CSR6  at 16#110# range 0 .. 31;
      CSR7  at 16#114# range 0 .. 31;
      CSR8  at 16#118# range 0 .. 31;
      CSR9  at 16#11C# range 0 .. 31;
      CSR10 at 16#120# range 0 .. 31;
      CSR11 at 16#124# range 0 .. 31;
      CSR12 at 16#128# range 0 .. 31;
      CSR13 at 16#12C# range 0 .. 31;
      CSR14 at 16#130# range 0 .. 31;
      CSR15 at 16#134# range 0 .. 31;
      CSR16 at 16#138# range 0 .. 31;
      CSR17 at 16#13C# range 0 .. 31;
      CSR18 at 16#140# range 0 .. 31;
      CSR19 at 16#144# range 0 .. 31;
      CSR20 at 16#148# range 0 .. 31;
      CSR21 at 16#14C# range 0 .. 31;
      CSR22 at 16#150# range 0 .. 31;
      CSR23 at 16#154# range 0 .. 31;
      CSR24 at 16#158# range 0 .. 31;
      CSR25 at 16#15C# range 0 .. 31;
      CSR26 at 16#160# range 0 .. 31;
      CSR27 at 16#164# range 0 .. 31;
      CSR28 at 16#168# range 0 .. 31;
      CSR29 at 16#16C# range 0 .. 31;
      CSR30 at 16#170# range 0 .. 31;
      CSR31 at 16#174# range 0 .. 31;
      CSR32 at 16#178# range 0 .. 31;
      CSR33 at 16#17C# range 0 .. 31;
      CSR34 at 16#180# range 0 .. 31;
      CSR35 at 16#184# range 0 .. 31;
      CSR36 at 16#188# range 0 .. 31;
      CSR37 at 16#18C# range 0 .. 31;
      CSR38 at 16#190# range 0 .. 31;
      CSR39 at 16#194# range 0 .. 31;
      CSR40 at 16#198# range 0 .. 31;
      CSR41 at 16#19C# range 0 .. 31;
      CSR42 at 16#1A0# range 0 .. 31;
      CSR43 at 16#1A4# range 0 .. 31;
      CSR44 at 16#1A8# range 0 .. 31;
      CSR45 at 16#1AC# range 0 .. 31;
      CSR46 at 16#1B0# range 0 .. 31;
      CSR47 at 16#1B4# range 0 .. 31;
      CSR48 at 16#1B8# range 0 .. 31;
      CSR49 at 16#1BC# range 0 .. 31;
      CSR50 at 16#1C0# range 0 .. 31;
      CSR51 at 16#1C4# range 0 .. 31;
      CSR52 at 16#1C8# range 0 .. 31;
      CSR53 at 16#1CC# range 0 .. 31;
      HR0   at 16#310# range 0 .. 31;
      HR1   at 16#314# range 0 .. 31;
      HR2   at 16#318# range 0 .. 31;
      HR3   at 16#31C# range 0 .. 31;
      HR4   at 16#320# range 0 .. 31;
      HR5   at 16#324# range 0 .. 31;
      HR6   at 16#328# range 0 .. 31;
      HR7   at 16#32C# range 0 .. 31;
   end record;

   HASH_Periph : aliased HASH_Peripheral
     with Import, Address => System'To_Address (16#420C0400#);

   SEC_HASH_Periph : aliased HASH_Peripheral
     with Import, Address => System'To_Address (16#520C0400#);

end Interfaces.STM32.HASH;
