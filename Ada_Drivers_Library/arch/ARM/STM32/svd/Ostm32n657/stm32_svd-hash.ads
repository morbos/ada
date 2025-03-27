--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.HASH is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype HASH_CR_DATATYPE_Field is HAL.UInt2;
   subtype HASH_CR_NBW_Field is HAL.UInt4;
   subtype HASH_CR_ALGO_Field is HAL.UInt4;

   --  HASH control register
   type HASH_CR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Initialize message digest calculation
      INIT           : Boolean := False;
      --  DMA enable
      DMAE           : Boolean := False;
      --  Data type selection
      DATATYPE       : HASH_CR_DATATYPE_Field := 16#0#;
      --  Mode selection
      MODE           : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Read-only. Number of words already pushed
      NBW            : HASH_CR_NBW_Field := 16#0#;
      --  Read-only. DIN not empty
      DINNE          : Boolean := False;
      --  Multiple DMA transfers
      MDMAT          : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Long key selection
      LKEY           : Boolean := False;
      --  Algorithm selection
      ALGO           : HASH_CR_ALGO_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HASH_CR_Register use record
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

   subtype HASH_STR_NBLW_Field is HAL.UInt5;

   --  HASH start register
   type HASH_STR_Register is record
      --  Number of valid bits in the last word
      NBLW          : HASH_STR_NBLW_Field := 16#0#;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  Digest calculation
      DCAL          : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HASH_STR_Register use record
      NBLW          at 0 range 0 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      DCAL          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  HASH interrupt enable register
   type HASH_IMR_Register is record
      --  Data input interrupt enable
      DINIE         : Boolean := False;
      --  Digest calculation completion interrupt enable
      DCIE          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HASH_IMR_Register use record
      DINIE         at 0 range 0 .. 0;
      DCIE          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype HASH_SR_NBWP_Field is HAL.UInt5;
   subtype HASH_SR_NBWE_Field is HAL.UInt5;

   --  HASH status register
   type HASH_SR_Register is record
      --  Data input interrupt status
      DINIS          : Boolean := True;
      --  Digest calculation completion interrupt status
      DCIS           : Boolean := False;
      --  Read-only. DMA Status
      DMAS           : Boolean := False;
      --  Read-only. Busy bit
      BUSY           : Boolean := False;
      --  unspecified
      Reserved_4_8   : HAL.UInt5 := 16#0#;
      --  Read-only. Number of words already pushed
      NBWP           : HASH_SR_NBWP_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Read-only. DIN not empty
      DINNE          : Boolean := False;
      --  Read-only. Number of words expected
      NBWE           : HASH_SR_NBWE_Field := 16#11#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HASH_SR_Register use record
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
      HASH_CR     : aliased HASH_CR_Register;
      --  HASH data input register
      HASH_DIN    : aliased HAL.UInt32;
      --  HASH start register
      HASH_STR    : aliased HASH_STR_Register;
      --  HASH aliased digest register 0
      HASH_HRA0   : aliased HAL.UInt32;
      --  HASH aliased digest register 1
      HASH_HRA1   : aliased HAL.UInt32;
      --  HASH aliased digest register 2
      HASH_HRA2   : aliased HAL.UInt32;
      --  HASH aliased digest register 3
      HASH_HRA3   : aliased HAL.UInt32;
      --  HASH aliased digest register 4
      HASH_HRA4   : aliased HAL.UInt32;
      --  HASH interrupt enable register
      HASH_IMR    : aliased HASH_IMR_Register;
      --  HASH status register
      HASH_SR     : aliased HASH_SR_Register;
      --  HASH context swap register 0
      HASH_CSR0   : aliased HAL.UInt32;
      --  HASH context swap register 1
      HASH_CSR1   : aliased HAL.UInt32;
      --  HASH context swap register 2
      HASH_CSR2   : aliased HAL.UInt32;
      --  HASH context swap register 3
      HASH_CSR3   : aliased HAL.UInt32;
      --  HASH context swap register 4
      HASH_CSR4   : aliased HAL.UInt32;
      --  HASH context swap register 5
      HASH_CSR5   : aliased HAL.UInt32;
      --  HASH context swap register 6
      HASH_CSR6   : aliased HAL.UInt32;
      --  HASH context swap register 7
      HASH_CSR7   : aliased HAL.UInt32;
      --  HASH context swap register 8
      HASH_CSR8   : aliased HAL.UInt32;
      --  HASH context swap register 9
      HASH_CSR9   : aliased HAL.UInt32;
      --  HASH context swap register 10
      HASH_CSR10  : aliased HAL.UInt32;
      --  HASH context swap register 11
      HASH_CSR11  : aliased HAL.UInt32;
      --  HASH context swap register 12
      HASH_CSR12  : aliased HAL.UInt32;
      --  HASH context swap register 13
      HASH_CSR13  : aliased HAL.UInt32;
      --  HASH context swap register 14
      HASH_CSR14  : aliased HAL.UInt32;
      --  HASH context swap register 15
      HASH_CSR15  : aliased HAL.UInt32;
      --  HASH context swap register 16
      HASH_CSR16  : aliased HAL.UInt32;
      --  HASH context swap register 17
      HASH_CSR17  : aliased HAL.UInt32;
      --  HASH context swap register 18
      HASH_CSR18  : aliased HAL.UInt32;
      --  HASH context swap register 19
      HASH_CSR19  : aliased HAL.UInt32;
      --  HASH context swap register 20
      HASH_CSR20  : aliased HAL.UInt32;
      --  HASH context swap register 21
      HASH_CSR21  : aliased HAL.UInt32;
      --  HASH context swap register 22
      HASH_CSR22  : aliased HAL.UInt32;
      --  HASH context swap register 23
      HASH_CSR23  : aliased HAL.UInt32;
      --  HASH context swap register 24
      HASH_CSR24  : aliased HAL.UInt32;
      --  HASH context swap register 25
      HASH_CSR25  : aliased HAL.UInt32;
      --  HASH context swap register 26
      HASH_CSR26  : aliased HAL.UInt32;
      --  HASH context swap register 27
      HASH_CSR27  : aliased HAL.UInt32;
      --  HASH context swap register 28
      HASH_CSR28  : aliased HAL.UInt32;
      --  HASH context swap register 29
      HASH_CSR29  : aliased HAL.UInt32;
      --  HASH context swap register 30
      HASH_CSR30  : aliased HAL.UInt32;
      --  HASH context swap register 31
      HASH_CSR31  : aliased HAL.UInt32;
      --  HASH context swap register 32
      HASH_CSR32  : aliased HAL.UInt32;
      --  HASH context swap register 33
      HASH_CSR33  : aliased HAL.UInt32;
      --  HASH context swap register 34
      HASH_CSR34  : aliased HAL.UInt32;
      --  HASH context swap register 35
      HASH_CSR35  : aliased HAL.UInt32;
      --  HASH context swap register 36
      HASH_CSR36  : aliased HAL.UInt32;
      --  HASH context swap register 37
      HASH_CSR37  : aliased HAL.UInt32;
      --  HASH context swap register 38
      HASH_CSR38  : aliased HAL.UInt32;
      --  HASH context swap register 39
      HASH_CSR39  : aliased HAL.UInt32;
      --  HASH context swap register 40
      HASH_CSR40  : aliased HAL.UInt32;
      --  HASH context swap register 41
      HASH_CSR41  : aliased HAL.UInt32;
      --  HASH context swap register 42
      HASH_CSR42  : aliased HAL.UInt32;
      --  HASH context swap register 43
      HASH_CSR43  : aliased HAL.UInt32;
      --  HASH context swap register 44
      HASH_CSR44  : aliased HAL.UInt32;
      --  HASH context swap register 45
      HASH_CSR45  : aliased HAL.UInt32;
      --  HASH context swap register 46
      HASH_CSR46  : aliased HAL.UInt32;
      --  HASH context swap register 47
      HASH_CSR47  : aliased HAL.UInt32;
      --  HASH context swap register 48
      HASH_CSR48  : aliased HAL.UInt32;
      --  HASH context swap register 49
      HASH_CSR49  : aliased HAL.UInt32;
      --  HASH context swap register 50
      HASH_CSR50  : aliased HAL.UInt32;
      --  HASH context swap register 51
      HASH_CSR51  : aliased HAL.UInt32;
      --  HASH context swap register 52
      HASH_CSR52  : aliased HAL.UInt32;
      --  HASH context swap register 53
      HASH_CSR53  : aliased HAL.UInt32;
      --  HASH context swap register 54
      HASH_CSR54  : aliased HAL.UInt32;
      --  HASH context swap register 55
      HASH_CSR55  : aliased HAL.UInt32;
      --  HASH context swap register 56
      HASH_CSR56  : aliased HAL.UInt32;
      --  HASH context swap register 57
      HASH_CSR57  : aliased HAL.UInt32;
      --  HASH context swap register 58
      HASH_CSR58  : aliased HAL.UInt32;
      --  HASH context swap register 59
      HASH_CSR59  : aliased HAL.UInt32;
      --  HASH context swap register 60
      HASH_CSR60  : aliased HAL.UInt32;
      --  HASH context swap register 61
      HASH_CSR61  : aliased HAL.UInt32;
      --  HASH context swap register 62
      HASH_CSR62  : aliased HAL.UInt32;
      --  HASH context swap register 63
      HASH_CSR63  : aliased HAL.UInt32;
      --  HASH context swap register 64
      HASH_CSR64  : aliased HAL.UInt32;
      --  HASH context swap register 65
      HASH_CSR65  : aliased HAL.UInt32;
      --  HASH context swap register 66
      HASH_CSR66  : aliased HAL.UInt32;
      --  HASH context swap register 67
      HASH_CSR67  : aliased HAL.UInt32;
      --  HASH context swap register 68
      HASH_CSR68  : aliased HAL.UInt32;
      --  HASH context swap register 69
      HASH_CSR69  : aliased HAL.UInt32;
      --  HASH context swap register 70
      HASH_CSR70  : aliased HAL.UInt32;
      --  HASH context swap register 71
      HASH_CSR71  : aliased HAL.UInt32;
      --  HASH context swap register 72
      HASH_CSR72  : aliased HAL.UInt32;
      --  HASH context swap register 73
      HASH_CSR73  : aliased HAL.UInt32;
      --  HASH context swap register 74
      HASH_CSR74  : aliased HAL.UInt32;
      --  HASH context swap register 75
      HASH_CSR75  : aliased HAL.UInt32;
      --  HASH context swap register 76
      HASH_CSR76  : aliased HAL.UInt32;
      --  HASH context swap register 77
      HASH_CSR77  : aliased HAL.UInt32;
      --  HASH context swap register 78
      HASH_CSR78  : aliased HAL.UInt32;
      --  HASH context swap register 79
      HASH_CSR79  : aliased HAL.UInt32;
      --  HASH context swap register 80
      HASH_CSR80  : aliased HAL.UInt32;
      --  HASH context swap register 81
      HASH_CSR81  : aliased HAL.UInt32;
      --  HASH context swap register 82
      HASH_CSR82  : aliased HAL.UInt32;
      --  HASH context swap register 83
      HASH_CSR83  : aliased HAL.UInt32;
      --  HASH context swap register 84
      HASH_CSR84  : aliased HAL.UInt32;
      --  HASH context swap register 85
      HASH_CSR85  : aliased HAL.UInt32;
      --  HASH context swap register 86
      HASH_CSR86  : aliased HAL.UInt32;
      --  HASH context swap register 87
      HASH_CSR87  : aliased HAL.UInt32;
      --  HASH context swap register 88
      HASH_CSR88  : aliased HAL.UInt32;
      --  HASH context swap register 89
      HASH_CSR89  : aliased HAL.UInt32;
      --  HASH context swap register 90
      HASH_CSR90  : aliased HAL.UInt32;
      --  HASH context swap register 91
      HASH_CSR91  : aliased HAL.UInt32;
      --  HASH context swap register 92
      HASH_CSR92  : aliased HAL.UInt32;
      --  HASH context swap register 93
      HASH_CSR93  : aliased HAL.UInt32;
      --  HASH context swap register 94
      HASH_CSR94  : aliased HAL.UInt32;
      --  HASH context swap register 95
      HASH_CSR95  : aliased HAL.UInt32;
      --  HASH context swap register 96
      HASH_CSR96  : aliased HAL.UInt32;
      --  HASH context swap register 97
      HASH_CSR97  : aliased HAL.UInt32;
      --  HASH context swap register 98
      HASH_CSR98  : aliased HAL.UInt32;
      --  HASH context swap register 99
      HASH_CSR99  : aliased HAL.UInt32;
      --  HASH context swap register 100
      HASH_CSR100 : aliased HAL.UInt32;
      --  HASH context swap register 101
      HASH_CSR101 : aliased HAL.UInt32;
      --  HASH context swap register 102
      HASH_CSR102 : aliased HAL.UInt32;
      --  HASH digest register 0
      HASH_HR0    : aliased HAL.UInt32;
      --  HASH digest register 1
      HASH_HR1    : aliased HAL.UInt32;
      --  HASH digest register 2
      HASH_HR2    : aliased HAL.UInt32;
      --  HASH digest register 3
      HASH_HR3    : aliased HAL.UInt32;
      --  HASH digest register 4
      HASH_HR4    : aliased HAL.UInt32;
      --  HASH supplementary digest register 5
      HASH_HR5    : aliased HAL.UInt32;
      --  HASH supplementary digest register 6
      HASH_HR6    : aliased HAL.UInt32;
      --  HASH supplementary digest register 7
      HASH_HR7    : aliased HAL.UInt32;
      --  HASH supplementary digest register 8
      HASH_HR8    : aliased HAL.UInt32;
      --  HASH supplementary digest register 9
      HASH_HR9    : aliased HAL.UInt32;
      --  HASH supplementary digest register 10
      HASH_HR10   : aliased HAL.UInt32;
      --  HASH supplementary digest register 11
      HASH_HR11   : aliased HAL.UInt32;
      --  HASH supplementary digest register 12
      HASH_HR12   : aliased HAL.UInt32;
      --  HASH supplementary digest register 13
      HASH_HR13   : aliased HAL.UInt32;
      --  HASH supplementary digest register 14
      HASH_HR14   : aliased HAL.UInt32;
      --  HASH supplementary digest register 15
      HASH_HR15   : aliased HAL.UInt32;
   end record
     with Volatile;

   for HASH_Peripheral use record
      HASH_CR     at 16#0# range 0 .. 31;
      HASH_DIN    at 16#4# range 0 .. 31;
      HASH_STR    at 16#8# range 0 .. 31;
      HASH_HRA0   at 16#C# range 0 .. 31;
      HASH_HRA1   at 16#10# range 0 .. 31;
      HASH_HRA2   at 16#14# range 0 .. 31;
      HASH_HRA3   at 16#18# range 0 .. 31;
      HASH_HRA4   at 16#1C# range 0 .. 31;
      HASH_IMR    at 16#20# range 0 .. 31;
      HASH_SR     at 16#24# range 0 .. 31;
      HASH_CSR0   at 16#F8# range 0 .. 31;
      HASH_CSR1   at 16#FC# range 0 .. 31;
      HASH_CSR2   at 16#100# range 0 .. 31;
      HASH_CSR3   at 16#104# range 0 .. 31;
      HASH_CSR4   at 16#108# range 0 .. 31;
      HASH_CSR5   at 16#10C# range 0 .. 31;
      HASH_CSR6   at 16#110# range 0 .. 31;
      HASH_CSR7   at 16#114# range 0 .. 31;
      HASH_CSR8   at 16#118# range 0 .. 31;
      HASH_CSR9   at 16#11C# range 0 .. 31;
      HASH_CSR10  at 16#120# range 0 .. 31;
      HASH_CSR11  at 16#124# range 0 .. 31;
      HASH_CSR12  at 16#128# range 0 .. 31;
      HASH_CSR13  at 16#12C# range 0 .. 31;
      HASH_CSR14  at 16#130# range 0 .. 31;
      HASH_CSR15  at 16#134# range 0 .. 31;
      HASH_CSR16  at 16#138# range 0 .. 31;
      HASH_CSR17  at 16#13C# range 0 .. 31;
      HASH_CSR18  at 16#140# range 0 .. 31;
      HASH_CSR19  at 16#144# range 0 .. 31;
      HASH_CSR20  at 16#148# range 0 .. 31;
      HASH_CSR21  at 16#14C# range 0 .. 31;
      HASH_CSR22  at 16#150# range 0 .. 31;
      HASH_CSR23  at 16#154# range 0 .. 31;
      HASH_CSR24  at 16#158# range 0 .. 31;
      HASH_CSR25  at 16#15C# range 0 .. 31;
      HASH_CSR26  at 16#160# range 0 .. 31;
      HASH_CSR27  at 16#164# range 0 .. 31;
      HASH_CSR28  at 16#168# range 0 .. 31;
      HASH_CSR29  at 16#16C# range 0 .. 31;
      HASH_CSR30  at 16#170# range 0 .. 31;
      HASH_CSR31  at 16#174# range 0 .. 31;
      HASH_CSR32  at 16#178# range 0 .. 31;
      HASH_CSR33  at 16#17C# range 0 .. 31;
      HASH_CSR34  at 16#180# range 0 .. 31;
      HASH_CSR35  at 16#184# range 0 .. 31;
      HASH_CSR36  at 16#188# range 0 .. 31;
      HASH_CSR37  at 16#18C# range 0 .. 31;
      HASH_CSR38  at 16#190# range 0 .. 31;
      HASH_CSR39  at 16#194# range 0 .. 31;
      HASH_CSR40  at 16#198# range 0 .. 31;
      HASH_CSR41  at 16#19C# range 0 .. 31;
      HASH_CSR42  at 16#1A0# range 0 .. 31;
      HASH_CSR43  at 16#1A4# range 0 .. 31;
      HASH_CSR44  at 16#1A8# range 0 .. 31;
      HASH_CSR45  at 16#1AC# range 0 .. 31;
      HASH_CSR46  at 16#1B0# range 0 .. 31;
      HASH_CSR47  at 16#1B4# range 0 .. 31;
      HASH_CSR48  at 16#1B8# range 0 .. 31;
      HASH_CSR49  at 16#1BC# range 0 .. 31;
      HASH_CSR50  at 16#1C0# range 0 .. 31;
      HASH_CSR51  at 16#1C4# range 0 .. 31;
      HASH_CSR52  at 16#1C8# range 0 .. 31;
      HASH_CSR53  at 16#1CC# range 0 .. 31;
      HASH_CSR54  at 16#1D0# range 0 .. 31;
      HASH_CSR55  at 16#1D4# range 0 .. 31;
      HASH_CSR56  at 16#1D8# range 0 .. 31;
      HASH_CSR57  at 16#1DC# range 0 .. 31;
      HASH_CSR58  at 16#1E0# range 0 .. 31;
      HASH_CSR59  at 16#1E4# range 0 .. 31;
      HASH_CSR60  at 16#1E8# range 0 .. 31;
      HASH_CSR61  at 16#1EC# range 0 .. 31;
      HASH_CSR62  at 16#1F0# range 0 .. 31;
      HASH_CSR63  at 16#1F4# range 0 .. 31;
      HASH_CSR64  at 16#1F8# range 0 .. 31;
      HASH_CSR65  at 16#1FC# range 0 .. 31;
      HASH_CSR66  at 16#200# range 0 .. 31;
      HASH_CSR67  at 16#204# range 0 .. 31;
      HASH_CSR68  at 16#208# range 0 .. 31;
      HASH_CSR69  at 16#20C# range 0 .. 31;
      HASH_CSR70  at 16#210# range 0 .. 31;
      HASH_CSR71  at 16#214# range 0 .. 31;
      HASH_CSR72  at 16#218# range 0 .. 31;
      HASH_CSR73  at 16#21C# range 0 .. 31;
      HASH_CSR74  at 16#220# range 0 .. 31;
      HASH_CSR75  at 16#224# range 0 .. 31;
      HASH_CSR76  at 16#228# range 0 .. 31;
      HASH_CSR77  at 16#22C# range 0 .. 31;
      HASH_CSR78  at 16#230# range 0 .. 31;
      HASH_CSR79  at 16#234# range 0 .. 31;
      HASH_CSR80  at 16#238# range 0 .. 31;
      HASH_CSR81  at 16#23C# range 0 .. 31;
      HASH_CSR82  at 16#240# range 0 .. 31;
      HASH_CSR83  at 16#244# range 0 .. 31;
      HASH_CSR84  at 16#248# range 0 .. 31;
      HASH_CSR85  at 16#24C# range 0 .. 31;
      HASH_CSR86  at 16#250# range 0 .. 31;
      HASH_CSR87  at 16#254# range 0 .. 31;
      HASH_CSR88  at 16#258# range 0 .. 31;
      HASH_CSR89  at 16#25C# range 0 .. 31;
      HASH_CSR90  at 16#260# range 0 .. 31;
      HASH_CSR91  at 16#264# range 0 .. 31;
      HASH_CSR92  at 16#268# range 0 .. 31;
      HASH_CSR93  at 16#26C# range 0 .. 31;
      HASH_CSR94  at 16#270# range 0 .. 31;
      HASH_CSR95  at 16#274# range 0 .. 31;
      HASH_CSR96  at 16#278# range 0 .. 31;
      HASH_CSR97  at 16#27C# range 0 .. 31;
      HASH_CSR98  at 16#280# range 0 .. 31;
      HASH_CSR99  at 16#284# range 0 .. 31;
      HASH_CSR100 at 16#288# range 0 .. 31;
      HASH_CSR101 at 16#28C# range 0 .. 31;
      HASH_CSR102 at 16#290# range 0 .. 31;
      HASH_HR0    at 16#310# range 0 .. 31;
      HASH_HR1    at 16#314# range 0 .. 31;
      HASH_HR2    at 16#318# range 0 .. 31;
      HASH_HR3    at 16#31C# range 0 .. 31;
      HASH_HR4    at 16#320# range 0 .. 31;
      HASH_HR5    at 16#324# range 0 .. 31;
      HASH_HR6    at 16#328# range 0 .. 31;
      HASH_HR7    at 16#32C# range 0 .. 31;
      HASH_HR8    at 16#330# range 0 .. 31;
      HASH_HR9    at 16#334# range 0 .. 31;
      HASH_HR10   at 16#338# range 0 .. 31;
      HASH_HR11   at 16#33C# range 0 .. 31;
      HASH_HR12   at 16#340# range 0 .. 31;
      HASH_HR13   at 16#344# range 0 .. 31;
      HASH_HR14   at 16#348# range 0 .. 31;
      HASH_HR15   at 16#34C# range 0 .. 31;
   end record;

   --  HASH register bank (full SHA-2/SHA-3)
   HASH_Periph : aliased HASH_Peripheral
     with Import, Address => HASH_Base;

   --  HASH register bank (full SHA-2/SHA-3)
   HASH_S_Periph : aliased HASH_Peripheral
     with Import, Address => HASH_S_Base;

end STM32_SVD.HASH;
