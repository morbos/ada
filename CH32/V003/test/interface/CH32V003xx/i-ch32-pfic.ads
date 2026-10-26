--
--  Copyright (C) 2026, AdaCore
--

--  This spec has been automatically generated from CH32V003xx.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.CH32.PFIC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype ISR1_INTENSTA2_3_Field is Interfaces.Bit_Types.UInt2;
   subtype ISR1_INTENSTA12_31_Field is Interfaces.Bit_Types.UInt20;

   --  Interrupt Status Register
   type ISR1_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2;
      --  Read-only. Interrupt ID Status
      INTENSTA2_3   : ISR1_INTENSTA2_3_Field;
      --  unspecified
      Reserved_4_11 : Interfaces.Bit_Types.Byte;
      --  Read-only. Interrupt ID Status
      INTENSTA12_31 : ISR1_INTENSTA12_31_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR1_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      INTENSTA2_3   at 0 range 2 .. 3;
      Reserved_4_11 at 0 range 4 .. 11;
      INTENSTA12_31 at 0 range 12 .. 31;
   end record;

   subtype ISR4_INTENSTA_Field is Interfaces.Bit_Types.Byte;

   --  Interrupt Status Register
   type ISR4_Register is record
      --  Read-only. Interrupt ID Status
      INTENSTA      : ISR4_INTENSTA_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR4_Register use record
      INTENSTA      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype IPR1_PENDSTA2_3_Field is Interfaces.Bit_Types.UInt2;
   subtype IPR1_PENDSTA12_31_Field is Interfaces.Bit_Types.UInt20;

   --  Interrupt Pending Register
   type IPR1_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2;
      --  Read-only. PENDSTA
      PENDSTA2_3    : IPR1_PENDSTA2_3_Field;
      --  unspecified
      Reserved_4_11 : Interfaces.Bit_Types.Byte;
      --  Read-only. PENDSTA
      PENDSTA12_31  : IPR1_PENDSTA12_31_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPR1_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      PENDSTA2_3    at 0 range 2 .. 3;
      Reserved_4_11 at 0 range 4 .. 11;
      PENDSTA12_31  at 0 range 12 .. 31;
   end record;

   subtype IPR4_PENDSTA_Field is Interfaces.Bit_Types.Byte;

   --  Interrupt Pending Register
   type IPR4_Register is record
      --  Read-only. PENDSTA
      PENDSTA       : IPR4_PENDSTA_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPR4_Register use record
      PENDSTA       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ITHRESDR_THRESHOLD_Field is Interfaces.Bit_Types.Byte;

   --  Interrupt Priority Register
   type ITHRESDR_Register is record
      --  THRESHOLD
      THRESHOLD     : ITHRESDR_THRESHOLD_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITHRESDR_Register use record
      THRESHOLD     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CFGR_KEYCODE_Field is Interfaces.Bit_Types.UInt16;

   --  Interrupt Config Register
   type CFGR_Register is record
      --  unspecified
      Reserved_0_6  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. RESETSYS
      RESETSYS      : Boolean := False;
      --  unspecified
      Reserved_8_15 : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. KEYCODE
      KEYCODE       : CFGR_KEYCODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      Reserved_0_6  at 0 range 0 .. 6;
      RESETSYS      at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      KEYCODE       at 0 range 16 .. 31;
   end record;

   subtype GISR_NESTSTA_Field is Interfaces.Bit_Types.Byte;

   --  Interrupt Global Register
   type GISR_Register is record
      --  Read-only. NESTSTA
      NESTSTA        : GISR_NESTSTA_Field;
      --  Read-only. GACTSTA
      GACTSTA        : Boolean;
      --  Read-only. GPENDSTA
      GPENDSTA       : Boolean;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GISR_Register use record
      NESTSTA        at 0 range 0 .. 7;
      GACTSTA        at 0 range 8 .. 8;
      GPENDSTA       at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  VTFIDR_VTFID array element
   subtype VTFIDR_VTFID_Element is Interfaces.Bit_Types.Byte;

   --  VTFIDR_VTFID array
   type VTFIDR_VTFID_Field_Array is array (0 .. 3) of VTFIDR_VTFID_Element
     with Component_Size => 8, Size => 32;

   --  ID Config Register
   type VTFIDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VTFID as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  VTFID as an array
            Arr : VTFIDR_VTFID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VTFIDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype VTFADDRR0_ADDR0_Field is Interfaces.Bit_Types.UInt31;

   --  Interrupt 0 address Register
   type VTFADDRR0_Register is record
      --  VTF0EN
      VTF0EN : Boolean := False;
      --  ADDR0
      ADDR0  : VTFADDRR0_ADDR0_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VTFADDRR0_Register use record
      VTF0EN at 0 range 0 .. 0;
      ADDR0  at 0 range 1 .. 31;
   end record;

   subtype VTFADDRR1_ADDR1_Field is Interfaces.Bit_Types.UInt31;

   --  Interrupt 1 address Register
   type VTFADDRR1_Register is record
      --  VTF1EN
      VTF1EN : Boolean := False;
      --  ADDR1
      ADDR1  : VTFADDRR1_ADDR1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VTFADDRR1_Register use record
      VTF1EN at 0 range 0 .. 0;
      ADDR1  at 0 range 1 .. 31;
   end record;

   subtype VTFADDRR2_ADDR2_Field is Interfaces.Bit_Types.UInt31;

   --  Interrupt 2 address Register
   type VTFADDRR2_Register is record
      --  VTF2EN
      VTF2EN : Boolean := False;
      --  ADDR2
      ADDR2  : VTFADDRR2_ADDR2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VTFADDRR2_Register use record
      VTF2EN at 0 range 0 .. 0;
      ADDR2  at 0 range 1 .. 31;
   end record;

   subtype VTFADDRR3_ADDR3_Field is Interfaces.Bit_Types.UInt31;

   --  Interrupt 3 address Register
   type VTFADDRR3_Register is record
      --  VTF3EN
      VTF3EN : Boolean := False;
      --  ADDR3
      ADDR3  : VTFADDRR3_ADDR3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VTFADDRR3_Register use record
      VTF3EN at 0 range 0 .. 0;
      ADDR3  at 0 range 1 .. 31;
   end record;

   subtype IENR1_INTEN_Field is Interfaces.Bit_Types.UInt20;

   --  Interrupt Setting Register
   type IENR1_Register is record
      --  unspecified
      Reserved_0_11 : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Write-only. INTEN
      INTEN         : IENR1_INTEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IENR1_Register use record
      Reserved_0_11 at 0 range 0 .. 11;
      INTEN         at 0 range 12 .. 31;
   end record;

   subtype IENR4_INTEN_Field is Interfaces.Bit_Types.Byte;

   --  Interrupt Setting Register
   type IENR4_Register is record
      --  Write-only. INTEN
      INTEN         : IENR4_INTEN_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IENR4_Register use record
      INTEN         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype IRER1_INTRSET_Field is Interfaces.Bit_Types.UInt20;

   --  Interrupt Clear Register
   type IRER1_Register is record
      --  unspecified
      Reserved_0_11 : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Write-only. INTRSET
      INTRSET       : IRER1_INTRSET_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IRER1_Register use record
      Reserved_0_11 at 0 range 0 .. 11;
      INTRSET       at 0 range 12 .. 31;
   end record;

   subtype IRER4_INTRSET_Field is Interfaces.Bit_Types.Byte;

   --  Interrupt Clear Register
   type IRER4_Register is record
      --  Write-only. INTRSET
      INTRSET       : IRER4_INTRSET_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IRER4_Register use record
      INTRSET       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype IPSR1_PENDSET2_3_Field is Interfaces.Bit_Types.UInt2;
   subtype IPSR1_PENDSET12_31_Field is Interfaces.Bit_Types.UInt20;

   --  Interrupt Pending Register
   type IPSR1_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PENDSET
      PENDSET2_3    : IPSR1_PENDSET2_3_Field := 16#0#;
      --  unspecified
      Reserved_4_11 : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. PENDSET
      PENDSET12_31  : IPSR1_PENDSET12_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPSR1_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      PENDSET2_3    at 0 range 2 .. 3;
      Reserved_4_11 at 0 range 4 .. 11;
      PENDSET12_31  at 0 range 12 .. 31;
   end record;

   subtype IPSR4_PENDSET_Field is Interfaces.Bit_Types.Byte;

   --  Interrupt Pending Register
   type IPSR4_Register is record
      --  Write-only. PENDSET
      PENDSET       : IPSR4_PENDSET_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPSR4_Register use record
      PENDSET       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype IPRR1_PENDRESET2_3_Field is Interfaces.Bit_Types.UInt2;
   subtype IPRR1_PENDRESET12_31_Field is Interfaces.Bit_Types.UInt20;

   --  Interrupt Pending Clear Register
   type IPRR1_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PENDRESET
      PENDRESET2_3   : IPRR1_PENDRESET2_3_Field := 16#0#;
      --  unspecified
      Reserved_4_11  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. PENDRESET
      PENDRESET12_31 : IPRR1_PENDRESET12_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPRR1_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      PENDRESET2_3   at 0 range 2 .. 3;
      Reserved_4_11  at 0 range 4 .. 11;
      PENDRESET12_31 at 0 range 12 .. 31;
   end record;

   subtype IPRR4_PENDRESET_Field is Interfaces.Bit_Types.Byte;

   --  Interrupt Pending Clear Register
   type IPRR4_Register is record
      --  Write-only. PENDRESET
      PENDRESET     : IPRR4_PENDRESET_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPRR4_Register use record
      PENDRESET     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype IACTR1_IACTS2_3_Field is Interfaces.Bit_Types.UInt2;
   subtype IACTR1_IACTS12_31_Field is Interfaces.Bit_Types.UInt20;

   --  Interrupt ACTIVE Register
   type IACTR1_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. IACTS
      IACTS2_3      : IACTR1_IACTS2_3_Field := 16#0#;
      --  unspecified
      Reserved_4_11 : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. IACTS
      IACTS12_31    : IACTR1_IACTS12_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IACTR1_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      IACTS2_3      at 0 range 2 .. 3;
      Reserved_4_11 at 0 range 4 .. 11;
      IACTS12_31    at 0 range 12 .. 31;
   end record;

   subtype IACTR4_IACTS_Field is Interfaces.Bit_Types.Byte;

   --  Interrupt ACTIVE Register
   type IACTR4_Register is record
      --  Write-only. IACTS
      IACTS         : IACTR4_IACTS_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IACTR4_Register use record
      IACTS         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  System Control Register
   type SCTLR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  SLEEPONEXIT
      SLEEPONEXIT   : Boolean := False;
      --  SLEEPDEEP
      SLEEPDEEP     : Boolean := False;
      --  WFITOWFE
      WFITOWFE      : Boolean := False;
      --  SEVONPEND
      SEVONPEND     : Boolean := False;
      --  SETEVENT
      SETEVENT      : Boolean := False;
      --  unspecified
      Reserved_6_30 : Interfaces.Bit_Types.UInt25 := 16#0#;
      --  SYSRESET
      SYSRESET      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCTLR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      SLEEPONEXIT   at 0 range 1 .. 1;
      SLEEPDEEP     at 0 range 2 .. 2;
      WFITOWFE      at 0 range 3 .. 3;
      SEVONPEND     at 0 range 4 .. 4;
      SETEVENT      at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      SYSRESET      at 0 range 31 .. 31;
   end record;

   --  System counter control register
   type STK_CTLR_Register is record
      --  System counter enable
      STE           : Boolean := False;
      --  System counter interrupt enable
      STIE          : Boolean := False;
      --  System selects the clock source
      STCLK         : Boolean := False;
      --  System reload register
      STRE          : Boolean := False;
      --  System Mode
      MODE          : Boolean := False;
      --  System Initialization update
      INIT          : Boolean := False;
      --  unspecified
      Reserved_6_30 : Interfaces.Bit_Types.UInt25 := 16#0#;
      --  System software triggered interrupts enable
      SWIE          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STK_CTLR_Register use record
      STE           at 0 range 0 .. 0;
      STIE          at 0 range 1 .. 1;
      STCLK         at 0 range 2 .. 2;
      STRE          at 0 range 3 .. 3;
      MODE          at 0 range 4 .. 4;
      INIT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      SWIE          at 0 range 31 .. 31;
   end record;

   --  System START
   type STK_SR_Register is record
      --  CNTIF
      CNTIF         : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STK_SR_Register use record
      CNTIF         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Programmable Fast Interrupt Controller
   type PFIC_Peripheral is record
      --  Interrupt Status Register
      ISR1      : aliased ISR1_Register;
      --  Interrupt Status Register
      ISR2      : aliased Interfaces.Bit_Types.UInt32;
      --  Interrupt Status Register
      ISR3      : aliased Interfaces.Bit_Types.UInt32;
      --  Interrupt Status Register
      ISR4      : aliased ISR4_Register;
      --  Interrupt Pending Register
      IPR1      : aliased IPR1_Register;
      --  Interrupt Pending Register
      IPR2      : aliased Interfaces.Bit_Types.UInt32;
      --  Interrupt Pending Register
      IPR3      : aliased Interfaces.Bit_Types.UInt32;
      --  Interrupt Pending Register
      IPR4      : aliased IPR4_Register;
      --  Interrupt Priority Register
      ITHRESDR  : aliased ITHRESDR_Register;
      --  Interrupt Config Register
      CFGR      : aliased CFGR_Register;
      --  Interrupt Global Register
      GISR      : aliased GISR_Register;
      --  ID Config Register
      VTFIDR    : aliased VTFIDR_Register;
      --  Interrupt 0 address Register
      VTFADDRR0 : aliased VTFADDRR0_Register;
      --  Interrupt 1 address Register
      VTFADDRR1 : aliased VTFADDRR1_Register;
      --  Interrupt 2 address Register
      VTFADDRR2 : aliased VTFADDRR2_Register;
      --  Interrupt 3 address Register
      VTFADDRR3 : aliased VTFADDRR3_Register;
      --  Interrupt Setting Register
      IENR1     : aliased IENR1_Register;
      --  Interrupt Setting Register
      IENR2     : aliased Interfaces.Bit_Types.UInt32;
      --  Interrupt Setting Register
      IENR3     : aliased Interfaces.Bit_Types.UInt32;
      --  Interrupt Setting Register
      IENR4     : aliased IENR4_Register;
      --  Interrupt Clear Register
      IRER1     : aliased IRER1_Register;
      --  Interrupt Clear Register
      IRER2     : aliased Interfaces.Bit_Types.UInt32;
      --  Interrupt Clear Register
      IRER3     : aliased Interfaces.Bit_Types.UInt32;
      --  Interrupt Clear Register
      IRER4     : aliased IRER4_Register;
      --  Interrupt Pending Register
      IPSR1     : aliased IPSR1_Register;
      --  Interrupt Pending Register
      IPSR2     : aliased Interfaces.Bit_Types.UInt32;
      --  Interrupt Pending Register
      IPSR3     : aliased Interfaces.Bit_Types.UInt32;
      --  Interrupt Pending Register
      IPSR4     : aliased IPSR4_Register;
      --  Interrupt Pending Clear Register
      IPRR1     : aliased IPRR1_Register;
      --  Interrupt Pending Clear Register
      IPRR2     : aliased Interfaces.Bit_Types.UInt32;
      --  Interrupt Pending Clear Register
      IPRR3     : aliased Interfaces.Bit_Types.UInt32;
      --  Interrupt Pending Clear Register
      IPRR4     : aliased IPRR4_Register;
      --  Interrupt ACTIVE Register
      IACTR1    : aliased IACTR1_Register;
      --  Interrupt ACTIVE Register
      IACTR2    : aliased Interfaces.Bit_Types.UInt32;
      --  Interrupt ACTIVE Register
      IACTR3    : aliased Interfaces.Bit_Types.UInt32;
      --  Interrupt ACTIVE Register
      IACTR4    : aliased IACTR4_Register;
      --  Interrupt Priority Register
      IPRIOR0   : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR1   : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR2   : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR3   : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR4   : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR5   : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR6   : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR7   : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR8   : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR9   : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR10  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR11  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR12  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR13  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR14  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR15  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR16  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR17  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR18  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR19  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR20  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR21  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR22  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR23  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR24  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR25  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR26  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR27  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR28  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR29  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR30  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR31  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR32  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR33  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR34  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR35  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR36  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR37  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR38  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR39  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR40  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR41  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR42  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR43  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR44  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR45  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR46  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR47  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR48  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR49  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR50  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR51  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR52  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR53  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR54  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR55  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR56  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR57  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR58  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR59  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR60  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR61  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR62  : aliased Interfaces.Bit_Types.Byte;
      --  Interrupt Priority Register
      IPRIOR63  : aliased Interfaces.Bit_Types.Byte;
      --  System Control Register
      SCTLR     : aliased SCTLR_Register;
      --  System counter control register
      STK_CTLR  : aliased STK_CTLR_Register;
      --  System START
      STK_SR    : aliased STK_SR_Register;
      --  System counter low register
      STK_CNTL  : aliased Interfaces.Bit_Types.UInt32;
      --  System compare low register
      STK_CMPLR : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for PFIC_Peripheral use record
      ISR1      at 16#0# range 0 .. 31;
      ISR2      at 16#4# range 0 .. 31;
      ISR3      at 16#8# range 0 .. 31;
      ISR4      at 16#C# range 0 .. 31;
      IPR1      at 16#20# range 0 .. 31;
      IPR2      at 16#24# range 0 .. 31;
      IPR3      at 16#28# range 0 .. 31;
      IPR4      at 16#2C# range 0 .. 31;
      ITHRESDR  at 16#40# range 0 .. 31;
      CFGR      at 16#48# range 0 .. 31;
      GISR      at 16#4C# range 0 .. 31;
      VTFIDR    at 16#50# range 0 .. 31;
      VTFADDRR0 at 16#60# range 0 .. 31;
      VTFADDRR1 at 16#64# range 0 .. 31;
      VTFADDRR2 at 16#68# range 0 .. 31;
      VTFADDRR3 at 16#6C# range 0 .. 31;
      IENR1     at 16#100# range 0 .. 31;
      IENR2     at 16#104# range 0 .. 31;
      IENR3     at 16#108# range 0 .. 31;
      IENR4     at 16#10C# range 0 .. 31;
      IRER1     at 16#180# range 0 .. 31;
      IRER2     at 16#184# range 0 .. 31;
      IRER3     at 16#188# range 0 .. 31;
      IRER4     at 16#18C# range 0 .. 31;
      IPSR1     at 16#200# range 0 .. 31;
      IPSR2     at 16#204# range 0 .. 31;
      IPSR3     at 16#208# range 0 .. 31;
      IPSR4     at 16#20C# range 0 .. 31;
      IPRR1     at 16#280# range 0 .. 31;
      IPRR2     at 16#284# range 0 .. 31;
      IPRR3     at 16#288# range 0 .. 31;
      IPRR4     at 16#28C# range 0 .. 31;
      IACTR1    at 16#300# range 0 .. 31;
      IACTR2    at 16#304# range 0 .. 31;
      IACTR3    at 16#308# range 0 .. 31;
      IACTR4    at 16#30C# range 0 .. 31;
      IPRIOR0   at 16#400# range 0 .. 7;
      IPRIOR1   at 16#401# range 0 .. 7;
      IPRIOR2   at 16#402# range 0 .. 7;
      IPRIOR3   at 16#403# range 0 .. 7;
      IPRIOR4   at 16#404# range 0 .. 7;
      IPRIOR5   at 16#405# range 0 .. 7;
      IPRIOR6   at 16#406# range 0 .. 7;
      IPRIOR7   at 16#407# range 0 .. 7;
      IPRIOR8   at 16#408# range 0 .. 7;
      IPRIOR9   at 16#409# range 0 .. 7;
      IPRIOR10  at 16#40A# range 0 .. 7;
      IPRIOR11  at 16#40B# range 0 .. 7;
      IPRIOR12  at 16#40C# range 0 .. 7;
      IPRIOR13  at 16#40D# range 0 .. 7;
      IPRIOR14  at 16#40E# range 0 .. 7;
      IPRIOR15  at 16#40F# range 0 .. 7;
      IPRIOR16  at 16#410# range 0 .. 7;
      IPRIOR17  at 16#411# range 0 .. 7;
      IPRIOR18  at 16#412# range 0 .. 7;
      IPRIOR19  at 16#413# range 0 .. 7;
      IPRIOR20  at 16#414# range 0 .. 7;
      IPRIOR21  at 16#415# range 0 .. 7;
      IPRIOR22  at 16#416# range 0 .. 7;
      IPRIOR23  at 16#417# range 0 .. 7;
      IPRIOR24  at 16#418# range 0 .. 7;
      IPRIOR25  at 16#419# range 0 .. 7;
      IPRIOR26  at 16#41A# range 0 .. 7;
      IPRIOR27  at 16#41B# range 0 .. 7;
      IPRIOR28  at 16#41C# range 0 .. 7;
      IPRIOR29  at 16#41D# range 0 .. 7;
      IPRIOR30  at 16#41E# range 0 .. 7;
      IPRIOR31  at 16#41F# range 0 .. 7;
      IPRIOR32  at 16#420# range 0 .. 7;
      IPRIOR33  at 16#421# range 0 .. 7;
      IPRIOR34  at 16#422# range 0 .. 7;
      IPRIOR35  at 16#423# range 0 .. 7;
      IPRIOR36  at 16#424# range 0 .. 7;
      IPRIOR37  at 16#425# range 0 .. 7;
      IPRIOR38  at 16#426# range 0 .. 7;
      IPRIOR39  at 16#427# range 0 .. 7;
      IPRIOR40  at 16#428# range 0 .. 7;
      IPRIOR41  at 16#429# range 0 .. 7;
      IPRIOR42  at 16#42A# range 0 .. 7;
      IPRIOR43  at 16#42B# range 0 .. 7;
      IPRIOR44  at 16#42C# range 0 .. 7;
      IPRIOR45  at 16#42D# range 0 .. 7;
      IPRIOR46  at 16#42E# range 0 .. 7;
      IPRIOR47  at 16#42F# range 0 .. 7;
      IPRIOR48  at 16#430# range 0 .. 7;
      IPRIOR49  at 16#431# range 0 .. 7;
      IPRIOR50  at 16#432# range 0 .. 7;
      IPRIOR51  at 16#433# range 0 .. 7;
      IPRIOR52  at 16#434# range 0 .. 7;
      IPRIOR53  at 16#435# range 0 .. 7;
      IPRIOR54  at 16#436# range 0 .. 7;
      IPRIOR55  at 16#437# range 0 .. 7;
      IPRIOR56  at 16#438# range 0 .. 7;
      IPRIOR57  at 16#439# range 0 .. 7;
      IPRIOR58  at 16#43A# range 0 .. 7;
      IPRIOR59  at 16#43B# range 0 .. 7;
      IPRIOR60  at 16#43C# range 0 .. 7;
      IPRIOR61  at 16#43D# range 0 .. 7;
      IPRIOR62  at 16#43E# range 0 .. 7;
      IPRIOR63  at 16#43F# range 0 .. 7;
      SCTLR     at 16#D10# range 0 .. 31;
      STK_CTLR  at 16#1000# range 0 .. 31;
      STK_SR    at 16#1004# range 0 .. 31;
      STK_CNTL  at 16#1008# range 0 .. 31;
      STK_CMPLR at 16#1010# range 0 .. 31;
   end record;

   --  Programmable Fast Interrupt Controller
   PFIC_Periph : aliased PFIC_Peripheral
     with Import, Address => PFIC_Base;

end Interfaces.CH32.PFIC;
