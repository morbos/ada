--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32L4x6.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.FMC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype BCR1_MTYP_Field is Interfaces.Bit_Types.UInt2;
   subtype BCR1_MWID_Field is Interfaces.Bit_Types.UInt2;

   --  SRAM/NOR-Flash chip-select control register 1
   type BCR1_Register is record
      --  MBKEN
      MBKEN          : Boolean := False;
      --  MUXEN
      MUXEN          : Boolean := False;
      --  MTYP
      MTYP           : BCR1_MTYP_Field := 16#0#;
      --  MWID
      MWID           : BCR1_MWID_Field := 16#1#;
      --  FACCEN
      FACCEN         : Boolean := True;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#1#;
      --  BURSTEN
      BURSTEN        : Boolean := False;
      --  WAITPOL
      WAITPOL        : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  WAITCFG
      WAITCFG        : Boolean := False;
      --  WREN
      WREN           : Boolean := True;
      --  WAITEN
      WAITEN         : Boolean := True;
      --  EXTMOD
      EXTMOD         : Boolean := False;
      --  ASYNCWAIT
      ASYNCWAIT      : Boolean := False;
      --  unspecified
      Reserved_16_18 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  CBURSTRW
      CBURSTRW       : Boolean := False;
      --  CCLKEN
      CCLKEN         : Boolean := False;
      --  Write FIFO Disable
      WFDIS          : Boolean := False;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCR1_Register use record
      MBKEN          at 0 range 0 .. 0;
      MUXEN          at 0 range 1 .. 1;
      MTYP           at 0 range 2 .. 3;
      MWID           at 0 range 4 .. 5;
      FACCEN         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      BURSTEN        at 0 range 8 .. 8;
      WAITPOL        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WAITCFG        at 0 range 11 .. 11;
      WREN           at 0 range 12 .. 12;
      WAITEN         at 0 range 13 .. 13;
      EXTMOD         at 0 range 14 .. 14;
      ASYNCWAIT      at 0 range 15 .. 15;
      Reserved_16_18 at 0 range 16 .. 18;
      CBURSTRW       at 0 range 19 .. 19;
      CCLKEN         at 0 range 20 .. 20;
      WFDIS          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype BTR_ADDSET_Field is Interfaces.Bit_Types.UInt4;
   subtype BTR_ADDHLD_Field is Interfaces.Bit_Types.UInt4;
   subtype BTR_DATAST_Field is Interfaces.Bit_Types.Byte;
   subtype BTR_BUSTURN_Field is Interfaces.Bit_Types.UInt4;
   subtype BTR_CLKDIV_Field is Interfaces.Bit_Types.UInt4;
   subtype BTR_DATLAT_Field is Interfaces.Bit_Types.UInt4;
   subtype BTR_ACCMOD_Field is Interfaces.Bit_Types.UInt2;

   --  SRAM/NOR-Flash chip-select timing register 1
   type BTR_Register is record
      --  ADDSET
      ADDSET         : BTR_ADDSET_Field := 16#F#;
      --  ADDHLD
      ADDHLD         : BTR_ADDHLD_Field := 16#F#;
      --  DATAST
      DATAST         : BTR_DATAST_Field := 16#FF#;
      --  BUSTURN
      BUSTURN        : BTR_BUSTURN_Field := 16#F#;
      --  CLKDIV
      CLKDIV         : BTR_CLKDIV_Field := 16#F#;
      --  DATLAT
      DATLAT         : BTR_DATLAT_Field := 16#F#;
      --  ACCMOD
      ACCMOD         : BTR_ACCMOD_Field := 16#3#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#3#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BTR_Register use record
      ADDSET         at 0 range 0 .. 3;
      ADDHLD         at 0 range 4 .. 7;
      DATAST         at 0 range 8 .. 15;
      BUSTURN        at 0 range 16 .. 19;
      CLKDIV         at 0 range 20 .. 23;
      DATLAT         at 0 range 24 .. 27;
      ACCMOD         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype BCR_MTYP_Field is Interfaces.Bit_Types.UInt2;
   subtype BCR_MWID_Field is Interfaces.Bit_Types.UInt2;

   --  SRAM/NOR-Flash chip-select control register 2
   type BCR_Register is record
      --  MBKEN
      MBKEN          : Boolean := False;
      --  MUXEN
      MUXEN          : Boolean := False;
      --  MTYP
      MTYP           : BCR_MTYP_Field := 16#0#;
      --  MWID
      MWID           : BCR_MWID_Field := 16#1#;
      --  FACCEN
      FACCEN         : Boolean := True;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#1#;
      --  BURSTEN
      BURSTEN        : Boolean := False;
      --  WAITPOL
      WAITPOL        : Boolean := False;
      --  WRAPMOD
      WRAPMOD        : Boolean := False;
      --  WAITCFG
      WAITCFG        : Boolean := False;
      --  WREN
      WREN           : Boolean := True;
      --  WAITEN
      WAITEN         : Boolean := True;
      --  EXTMOD
      EXTMOD         : Boolean := False;
      --  ASYNCWAIT
      ASYNCWAIT      : Boolean := False;
      --  unspecified
      Reserved_16_18 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  CBURSTRW
      CBURSTRW       : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCR_Register use record
      MBKEN          at 0 range 0 .. 0;
      MUXEN          at 0 range 1 .. 1;
      MTYP           at 0 range 2 .. 3;
      MWID           at 0 range 4 .. 5;
      FACCEN         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      BURSTEN        at 0 range 8 .. 8;
      WAITPOL        at 0 range 9 .. 9;
      WRAPMOD        at 0 range 10 .. 10;
      WAITCFG        at 0 range 11 .. 11;
      WREN           at 0 range 12 .. 12;
      WAITEN         at 0 range 13 .. 13;
      EXTMOD         at 0 range 14 .. 14;
      ASYNCWAIT      at 0 range 15 .. 15;
      Reserved_16_18 at 0 range 16 .. 18;
      CBURSTRW       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype PCR_PWID_Field is Interfaces.Bit_Types.UInt2;
   subtype PCR_TCLR_Field is Interfaces.Bit_Types.UInt4;
   subtype PCR_TAR_Field is Interfaces.Bit_Types.UInt4;
   subtype PCR_ECCPS_Field is Interfaces.Bit_Types.UInt3;

   --  PC Card/NAND Flash control register 3
   type PCR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  PWAITEN
      PWAITEN        : Boolean := False;
      --  PBKEN
      PBKEN          : Boolean := False;
      --  PTYP
      PTYP           : Boolean := True;
      --  PWID
      PWID           : PCR_PWID_Field := 16#1#;
      --  ECCEN
      ECCEN          : Boolean := False;
      --  unspecified
      Reserved_7_8   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  TCLR
      TCLR           : PCR_TCLR_Field := 16#0#;
      --  TAR
      TAR            : PCR_TAR_Field := 16#0#;
      --  ECCPS
      ECCPS          : PCR_ECCPS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      PWAITEN        at 0 range 1 .. 1;
      PBKEN          at 0 range 2 .. 2;
      PTYP           at 0 range 3 .. 3;
      PWID           at 0 range 4 .. 5;
      ECCEN          at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      TCLR           at 0 range 9 .. 12;
      TAR            at 0 range 13 .. 16;
      ECCPS          at 0 range 17 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  FIFO status and interrupt register 3
   type SR_Register is record
      --  IRS
      IRS           : Boolean := False;
      --  ILS
      ILS           : Boolean := False;
      --  IFS
      IFS           : Boolean := False;
      --  IREN
      IREN          : Boolean := False;
      --  ILEN
      ILEN          : Boolean := False;
      --  IFEN
      IFEN          : Boolean := False;
      --  Read-only. FEMPT
      FEMPT         : Boolean := True;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      IRS           at 0 range 0 .. 0;
      ILS           at 0 range 1 .. 1;
      IFS           at 0 range 2 .. 2;
      IREN          at 0 range 3 .. 3;
      ILEN          at 0 range 4 .. 4;
      IFEN          at 0 range 5 .. 5;
      FEMPT         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PMEM_MEMSETx_Field is Interfaces.Bit_Types.Byte;
   subtype PMEM_MEMWAITx_Field is Interfaces.Bit_Types.Byte;
   subtype PMEM_MEMHOLDx_Field is Interfaces.Bit_Types.Byte;
   subtype PMEM_MEMHIZx_Field is Interfaces.Bit_Types.Byte;

   --  Common memory space timing register 3
   type PMEM_Register is record
      --  MEMSETx
      MEMSETx  : PMEM_MEMSETx_Field := 16#FC#;
      --  MEMWAITx
      MEMWAITx : PMEM_MEMWAITx_Field := 16#FC#;
      --  MEMHOLDx
      MEMHOLDx : PMEM_MEMHOLDx_Field := 16#FC#;
      --  MEMHIZx
      MEMHIZx  : PMEM_MEMHIZx_Field := 16#FC#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMEM_Register use record
      MEMSETx  at 0 range 0 .. 7;
      MEMWAITx at 0 range 8 .. 15;
      MEMHOLDx at 0 range 16 .. 23;
      MEMHIZx  at 0 range 24 .. 31;
   end record;

   subtype PATT_ATTSETx_Field is Interfaces.Bit_Types.Byte;
   subtype PATT_ATTWAITx_Field is Interfaces.Bit_Types.Byte;
   subtype PATT_ATTHOLDx_Field is Interfaces.Bit_Types.Byte;
   subtype PATT_ATTHIZx_Field is Interfaces.Bit_Types.Byte;

   --  Attribute memory space timing register 3
   type PATT_Register is record
      --  ATTSETx
      ATTSETx  : PATT_ATTSETx_Field := 16#FC#;
      --  ATTWAITx
      ATTWAITx : PATT_ATTWAITx_Field := 16#FC#;
      --  ATTHOLDx
      ATTHOLDx : PATT_ATTHOLDx_Field := 16#FC#;
      --  ATTHIZx
      ATTHIZx  : PATT_ATTHIZx_Field := 16#FC#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PATT_Register use record
      ATTSETx  at 0 range 0 .. 7;
      ATTWAITx at 0 range 8 .. 15;
      ATTHOLDx at 0 range 16 .. 23;
      ATTHIZx  at 0 range 24 .. 31;
   end record;

   subtype BWTR_ADDSET_Field is Interfaces.Bit_Types.UInt4;
   subtype BWTR_ADDHLD_Field is Interfaces.Bit_Types.UInt4;
   subtype BWTR_DATAST_Field is Interfaces.Bit_Types.Byte;
   subtype BWTR_CLKDIV_Field is Interfaces.Bit_Types.UInt4;
   subtype BWTR_DATLAT_Field is Interfaces.Bit_Types.UInt4;
   subtype BWTR_ACCMOD_Field is Interfaces.Bit_Types.UInt2;

   --  SRAM/NOR-Flash write timing registers 1
   type BWTR_Register is record
      --  ADDSET
      ADDSET         : BWTR_ADDSET_Field := 16#F#;
      --  ADDHLD
      ADDHLD         : BWTR_ADDHLD_Field := 16#F#;
      --  DATAST
      DATAST         : BWTR_DATAST_Field := 16#FF#;
      --  unspecified
      Reserved_16_19 : Interfaces.Bit_Types.UInt4 := 16#F#;
      --  CLKDIV
      CLKDIV         : BWTR_CLKDIV_Field := 16#F#;
      --  DATLAT
      DATLAT         : BWTR_DATLAT_Field := 16#F#;
      --  ACCMOD
      ACCMOD         : BWTR_ACCMOD_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BWTR_Register use record
      ADDSET         at 0 range 0 .. 3;
      ADDHLD         at 0 range 4 .. 7;
      DATAST         at 0 range 8 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      CLKDIV         at 0 range 20 .. 23;
      DATLAT         at 0 range 24 .. 27;
      ACCMOD         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flexible memory controller
   type FMC_Peripheral is record
      --  SRAM/NOR-Flash chip-select control register 1
      BCR1  : aliased BCR1_Register;
      --  SRAM/NOR-Flash chip-select timing register 1
      BTR1  : aliased BTR_Register;
      --  SRAM/NOR-Flash chip-select control register 2
      BCR2  : aliased BCR_Register;
      --  SRAM/NOR-Flash chip-select timing register 2
      BTR2  : aliased BTR_Register;
      --  SRAM/NOR-Flash chip-select control register 3
      BCR3  : aliased BCR_Register;
      --  SRAM/NOR-Flash chip-select timing register 3
      BTR3  : aliased BTR_Register;
      --  SRAM/NOR-Flash chip-select control register 4
      BCR4  : aliased BCR_Register;
      --  SRAM/NOR-Flash chip-select timing register 4
      BTR4  : aliased BTR_Register;
      --  PC Card/NAND Flash control register 3
      PCR   : aliased PCR_Register;
      --  FIFO status and interrupt register 3
      SR    : aliased SR_Register;
      --  Common memory space timing register 3
      PMEM  : aliased PMEM_Register;
      --  Attribute memory space timing register 3
      PATT  : aliased PATT_Register;
      --  ECC result register 3
      ECCR  : aliased Interfaces.Bit_Types.UInt32;
      --  SRAM/NOR-Flash write timing registers 1
      BWTR1 : aliased BWTR_Register;
      --  SRAM/NOR-Flash write timing registers 2
      BWTR2 : aliased BWTR_Register;
      --  SRAM/NOR-Flash write timing registers 3
      BWTR3 : aliased BWTR_Register;
      --  SRAM/NOR-Flash write timing registers 4
      BWTR4 : aliased BWTR_Register;
   end record
     with Volatile;

   for FMC_Peripheral use record
      BCR1  at 16#0# range 0 .. 31;
      BTR1  at 16#4# range 0 .. 31;
      BCR2  at 16#8# range 0 .. 31;
      BTR2  at 16#C# range 0 .. 31;
      BCR3  at 16#10# range 0 .. 31;
      BTR3  at 16#14# range 0 .. 31;
      BCR4  at 16#18# range 0 .. 31;
      BTR4  at 16#1C# range 0 .. 31;
      PCR   at 16#80# range 0 .. 31;
      SR    at 16#84# range 0 .. 31;
      PMEM  at 16#88# range 0 .. 31;
      PATT  at 16#8C# range 0 .. 31;
      ECCR  at 16#94# range 0 .. 31;
      BWTR1 at 16#104# range 0 .. 31;
      BWTR2 at 16#10C# range 0 .. 31;
      BWTR3 at 16#114# range 0 .. 31;
      BWTR4 at 16#11C# range 0 .. 31;
   end record;

   --  Flexible memory controller
   FMC_Periph : aliased FMC_Peripheral
     with Import, Address => FMC_Base;

end Interfaces.STM32.FMC;
