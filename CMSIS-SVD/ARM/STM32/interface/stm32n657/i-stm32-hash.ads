--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

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
   subtype CR_ALGO_Field is Interfaces.Bit_Types.UInt4;

   --  HASH control register
   type CR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Initialize message digest calculation
      INIT           : Boolean := False;
      --  DMA enable
      DMAE           : Boolean := False;
      --  Data type selection
      DATATYPE       : CR_DATATYPE_Field := 16#0#;
      --  Mode selection
      MODE           : Boolean := False;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Number of words already pushed
      NBW            : CR_NBW_Field := 16#0#;
      --  Read-only. DIN not empty
      DINNE          : Boolean := False;
      --  Multiple DMA transfers
      MDMAT          : Boolean := False;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Long key selection
      LKEY           : Boolean := False;
      --  Algorithm selection
      ALGO           : CR_ALGO_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      INIT           at 0 range 2 .. 2;
      DMAE           at 0 range 3 .. 3;
      DATATYPE       at 0 range 4 .. 5;
      MODE           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NBW            at 0 range 8 .. 11;
      DINNE          at 0 range 12 .. 12;
      MDMAT          at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      LKEY           at 0 range 16 .. 16;
      ALGO           at 0 range 17 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype STR_NBLW_Field is Interfaces.Bit_Types.UInt5;

   --  HASH start register
   type STR_Register is record
      --  Number of valid bits in the last word
      NBLW          : STR_NBLW_Field := 16#0#;
      --  unspecified
      Reserved_5_7  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Digest calculation
      DCAL          : Boolean := False;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STR_Register use record
      NBLW          at 0 range 0 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      DCAL          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  HASH interrupt enable register
   type IMR_Register is record
      --  Data input interrupt enable
      DINIE         : Boolean := False;
      --  Digest calculation completion interrupt enable
      DCIE          : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR_Register use record
      DINIE         at 0 range 0 .. 0;
      DCIE          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SR_NBWP_Field is Interfaces.Bit_Types.UInt5;
   subtype SR_NBWE_Field is Interfaces.Bit_Types.UInt5;

   --  HASH status register
   type SR_Register is record
      --  Data input interrupt status
      DINIS          : Boolean := True;
      --  Digest calculation completion interrupt status
      DCIS           : Boolean := False;
      --  Read-only. DMA Status
      DMAS           : Boolean := False;
      --  Read-only. Busy bit
      BUSY           : Boolean := False;
      --  unspecified
      Reserved_4_8   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Read-only. Number of words already pushed
      NBWP           : SR_NBWP_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. DIN not empty
      DINNE          : Boolean := False;
      --  Read-only. Number of words expected
      NBWE           : SR_NBWE_Field := 16#11#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      DINIS          at 0 range 0 .. 0;
      DCIS           at 0 range 1 .. 1;
      DMAS           at 0 range 2 .. 2;
      BUSY           at 0 range 3 .. 3;
      Reserved_4_8   at 0 range 4 .. 8;
      NBWP           at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      DINNE          at 0 range 15 .. 15;
      NBWE           at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  HASH register bank (full SHA-2/SHA-3)
   type HASH_Peripheral is record
      --  HASH control register
      CR     : aliased CR_Register;
      --  HASH data input register
      DIN    : aliased Interfaces.Bit_Types.UInt32;
      --  HASH start register
      STR    : aliased STR_Register;
      --  HASH aliased digest register 0
      HRA0   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH aliased digest register 1
      HRA1   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH aliased digest register 2
      HRA2   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH aliased digest register 3
      HRA3   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH aliased digest register 4
      HRA4   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH interrupt enable register
      IMR    : aliased IMR_Register;
      --  HASH status register
      SR     : aliased SR_Register;
      --  HASH context swap register 0
      CSR0   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 1
      CSR1   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 2
      CSR2   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 3
      CSR3   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 4
      CSR4   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 5
      CSR5   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 6
      CSR6   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 7
      CSR7   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 8
      CSR8   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 9
      CSR9   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 10
      CSR10  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 11
      CSR11  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 12
      CSR12  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 13
      CSR13  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 14
      CSR14  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 15
      CSR15  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 16
      CSR16  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 17
      CSR17  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 18
      CSR18  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 19
      CSR19  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 20
      CSR20  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 21
      CSR21  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 22
      CSR22  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 23
      CSR23  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 24
      CSR24  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 25
      CSR25  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 26
      CSR26  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 27
      CSR27  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 28
      CSR28  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 29
      CSR29  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 30
      CSR30  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 31
      CSR31  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 32
      CSR32  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 33
      CSR33  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 34
      CSR34  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 35
      CSR35  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 36
      CSR36  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 37
      CSR37  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 38
      CSR38  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 39
      CSR39  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 40
      CSR40  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 41
      CSR41  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 42
      CSR42  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 43
      CSR43  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 44
      CSR44  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 45
      CSR45  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 46
      CSR46  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 47
      CSR47  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 48
      CSR48  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 49
      CSR49  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 50
      CSR50  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 51
      CSR51  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 52
      CSR52  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 53
      CSR53  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 54
      CSR54  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 55
      CSR55  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 56
      CSR56  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 57
      CSR57  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 58
      CSR58  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 59
      CSR59  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 60
      CSR60  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 61
      CSR61  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 62
      CSR62  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 63
      CSR63  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 64
      CSR64  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 65
      CSR65  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 66
      CSR66  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 67
      CSR67  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 68
      CSR68  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 69
      CSR69  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 70
      CSR70  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 71
      CSR71  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 72
      CSR72  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 73
      CSR73  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 74
      CSR74  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 75
      CSR75  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 76
      CSR76  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 77
      CSR77  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 78
      CSR78  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 79
      CSR79  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 80
      CSR80  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 81
      CSR81  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 82
      CSR82  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 83
      CSR83  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 84
      CSR84  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 85
      CSR85  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 86
      CSR86  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 87
      CSR87  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 88
      CSR88  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 89
      CSR89  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 90
      CSR90  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 91
      CSR91  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 92
      CSR92  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 93
      CSR93  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 94
      CSR94  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 95
      CSR95  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 96
      CSR96  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 97
      CSR97  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 98
      CSR98  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 99
      CSR99  : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 100
      CSR100 : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 101
      CSR101 : aliased Interfaces.Bit_Types.UInt32;
      --  HASH context swap register 102
      CSR102 : aliased Interfaces.Bit_Types.UInt32;
      --  HASH digest register 0
      HR0    : aliased Interfaces.Bit_Types.UInt32;
      --  HASH digest register 1
      HR1    : aliased Interfaces.Bit_Types.UInt32;
      --  HASH digest register 2
      HR2    : aliased Interfaces.Bit_Types.UInt32;
      --  HASH digest register 3
      HR3    : aliased Interfaces.Bit_Types.UInt32;
      --  HASH digest register 4
      HR4    : aliased Interfaces.Bit_Types.UInt32;
      --  HASH supplementary digest register 5
      HR5    : aliased Interfaces.Bit_Types.UInt32;
      --  HASH supplementary digest register 6
      HR6    : aliased Interfaces.Bit_Types.UInt32;
      --  HASH supplementary digest register 7
      HR7    : aliased Interfaces.Bit_Types.UInt32;
      --  HASH supplementary digest register 8
      HR8    : aliased Interfaces.Bit_Types.UInt32;
      --  HASH supplementary digest register 9
      HR9    : aliased Interfaces.Bit_Types.UInt32;
      --  HASH supplementary digest register 10
      HR10   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH supplementary digest register 11
      HR11   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH supplementary digest register 12
      HR12   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH supplementary digest register 13
      HR13   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH supplementary digest register 14
      HR14   : aliased Interfaces.Bit_Types.UInt32;
      --  HASH supplementary digest register 15
      HR15   : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for HASH_Peripheral use record
      CR     at 16#0# range 0 .. 31;
      DIN    at 16#4# range 0 .. 31;
      STR    at 16#8# range 0 .. 31;
      HRA0   at 16#C# range 0 .. 31;
      HRA1   at 16#10# range 0 .. 31;
      HRA2   at 16#14# range 0 .. 31;
      HRA3   at 16#18# range 0 .. 31;
      HRA4   at 16#1C# range 0 .. 31;
      IMR    at 16#20# range 0 .. 31;
      SR     at 16#24# range 0 .. 31;
      CSR0   at 16#F8# range 0 .. 31;
      CSR1   at 16#FC# range 0 .. 31;
      CSR2   at 16#100# range 0 .. 31;
      CSR3   at 16#104# range 0 .. 31;
      CSR4   at 16#108# range 0 .. 31;
      CSR5   at 16#10C# range 0 .. 31;
      CSR6   at 16#110# range 0 .. 31;
      CSR7   at 16#114# range 0 .. 31;
      CSR8   at 16#118# range 0 .. 31;
      CSR9   at 16#11C# range 0 .. 31;
      CSR10  at 16#120# range 0 .. 31;
      CSR11  at 16#124# range 0 .. 31;
      CSR12  at 16#128# range 0 .. 31;
      CSR13  at 16#12C# range 0 .. 31;
      CSR14  at 16#130# range 0 .. 31;
      CSR15  at 16#134# range 0 .. 31;
      CSR16  at 16#138# range 0 .. 31;
      CSR17  at 16#13C# range 0 .. 31;
      CSR18  at 16#140# range 0 .. 31;
      CSR19  at 16#144# range 0 .. 31;
      CSR20  at 16#148# range 0 .. 31;
      CSR21  at 16#14C# range 0 .. 31;
      CSR22  at 16#150# range 0 .. 31;
      CSR23  at 16#154# range 0 .. 31;
      CSR24  at 16#158# range 0 .. 31;
      CSR25  at 16#15C# range 0 .. 31;
      CSR26  at 16#160# range 0 .. 31;
      CSR27  at 16#164# range 0 .. 31;
      CSR28  at 16#168# range 0 .. 31;
      CSR29  at 16#16C# range 0 .. 31;
      CSR30  at 16#170# range 0 .. 31;
      CSR31  at 16#174# range 0 .. 31;
      CSR32  at 16#178# range 0 .. 31;
      CSR33  at 16#17C# range 0 .. 31;
      CSR34  at 16#180# range 0 .. 31;
      CSR35  at 16#184# range 0 .. 31;
      CSR36  at 16#188# range 0 .. 31;
      CSR37  at 16#18C# range 0 .. 31;
      CSR38  at 16#190# range 0 .. 31;
      CSR39  at 16#194# range 0 .. 31;
      CSR40  at 16#198# range 0 .. 31;
      CSR41  at 16#19C# range 0 .. 31;
      CSR42  at 16#1A0# range 0 .. 31;
      CSR43  at 16#1A4# range 0 .. 31;
      CSR44  at 16#1A8# range 0 .. 31;
      CSR45  at 16#1AC# range 0 .. 31;
      CSR46  at 16#1B0# range 0 .. 31;
      CSR47  at 16#1B4# range 0 .. 31;
      CSR48  at 16#1B8# range 0 .. 31;
      CSR49  at 16#1BC# range 0 .. 31;
      CSR50  at 16#1C0# range 0 .. 31;
      CSR51  at 16#1C4# range 0 .. 31;
      CSR52  at 16#1C8# range 0 .. 31;
      CSR53  at 16#1CC# range 0 .. 31;
      CSR54  at 16#1D0# range 0 .. 31;
      CSR55  at 16#1D4# range 0 .. 31;
      CSR56  at 16#1D8# range 0 .. 31;
      CSR57  at 16#1DC# range 0 .. 31;
      CSR58  at 16#1E0# range 0 .. 31;
      CSR59  at 16#1E4# range 0 .. 31;
      CSR60  at 16#1E8# range 0 .. 31;
      CSR61  at 16#1EC# range 0 .. 31;
      CSR62  at 16#1F0# range 0 .. 31;
      CSR63  at 16#1F4# range 0 .. 31;
      CSR64  at 16#1F8# range 0 .. 31;
      CSR65  at 16#1FC# range 0 .. 31;
      CSR66  at 16#200# range 0 .. 31;
      CSR67  at 16#204# range 0 .. 31;
      CSR68  at 16#208# range 0 .. 31;
      CSR69  at 16#20C# range 0 .. 31;
      CSR70  at 16#210# range 0 .. 31;
      CSR71  at 16#214# range 0 .. 31;
      CSR72  at 16#218# range 0 .. 31;
      CSR73  at 16#21C# range 0 .. 31;
      CSR74  at 16#220# range 0 .. 31;
      CSR75  at 16#224# range 0 .. 31;
      CSR76  at 16#228# range 0 .. 31;
      CSR77  at 16#22C# range 0 .. 31;
      CSR78  at 16#230# range 0 .. 31;
      CSR79  at 16#234# range 0 .. 31;
      CSR80  at 16#238# range 0 .. 31;
      CSR81  at 16#23C# range 0 .. 31;
      CSR82  at 16#240# range 0 .. 31;
      CSR83  at 16#244# range 0 .. 31;
      CSR84  at 16#248# range 0 .. 31;
      CSR85  at 16#24C# range 0 .. 31;
      CSR86  at 16#250# range 0 .. 31;
      CSR87  at 16#254# range 0 .. 31;
      CSR88  at 16#258# range 0 .. 31;
      CSR89  at 16#25C# range 0 .. 31;
      CSR90  at 16#260# range 0 .. 31;
      CSR91  at 16#264# range 0 .. 31;
      CSR92  at 16#268# range 0 .. 31;
      CSR93  at 16#26C# range 0 .. 31;
      CSR94  at 16#270# range 0 .. 31;
      CSR95  at 16#274# range 0 .. 31;
      CSR96  at 16#278# range 0 .. 31;
      CSR97  at 16#27C# range 0 .. 31;
      CSR98  at 16#280# range 0 .. 31;
      CSR99  at 16#284# range 0 .. 31;
      CSR100 at 16#288# range 0 .. 31;
      CSR101 at 16#28C# range 0 .. 31;
      CSR102 at 16#290# range 0 .. 31;
      HR0    at 16#310# range 0 .. 31;
      HR1    at 16#314# range 0 .. 31;
      HR2    at 16#318# range 0 .. 31;
      HR3    at 16#31C# range 0 .. 31;
      HR4    at 16#320# range 0 .. 31;
      HR5    at 16#324# range 0 .. 31;
      HR6    at 16#328# range 0 .. 31;
      HR7    at 16#32C# range 0 .. 31;
      HR8    at 16#330# range 0 .. 31;
      HR9    at 16#334# range 0 .. 31;
      HR10   at 16#338# range 0 .. 31;
      HR11   at 16#33C# range 0 .. 31;
      HR12   at 16#340# range 0 .. 31;
      HR13   at 16#344# range 0 .. 31;
      HR14   at 16#348# range 0 .. 31;
      HR15   at 16#34C# range 0 .. 31;
   end record;

   --  HASH register bank (full SHA-2/SHA-3)
   HASH_Periph : aliased HASH_Peripheral
     with Import, Address => HASH_Base;

   --  HASH register bank (full SHA-2/SHA-3)
   HASH_S_Periph : aliased HASH_Peripheral
     with Import, Address => HASH_S_Base;

end Interfaces.STM32.HASH;
